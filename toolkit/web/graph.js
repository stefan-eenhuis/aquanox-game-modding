// Der Missionsgraph als Knotenleinwand.
//
// KEIN FRAMEWORK, KEIN BUNDLER -- alles laeuft offline aus lokalen
// Dateien. Das Layout ist absichtlich schlicht: Ebenen von links nach
// rechts, innerhalb einer Ebene untereinander. Ein kraeftebasiertes
// Verfahren waere fuer 300 bis 700 Knoten weder schneller noch
// lesbarer, und es waere nicht reproduzierbar.
//
// DIE EBENE kommt aus parser/triggernetz.py: Breitensuche ab den
// Knoten ohne Eingang. *** Das Netz hat Zyklen ***, deshalb kein
// topologisches Sortieren -- jeder Knoten bekommt die Ebene seines
// ersten Erreichens.

'use strict';

const SPALTE = 264;        // Abstand der Ebenen
const ZEILE = 20;          // Luft zwischen zwei Knoten
const RAND = 60;

let daten = null;
let stellen = new Map();   // id -> {x, y, h, el}
let zoom = 1, versatzX = 0, versatzY = 0;
let gewaehlt = null;
let tonSpieler = null;

const leinwand = document.getElementById('leinwand');
const welt = document.getElementById('welt');
const svg = document.getElementById('kanten');
const kopf = document.getElementById('kopfleiste');
const hinweis = document.getElementById('hinweis');
const legende = document.getElementById('legende');

const KANTENFARBE = {
  daten: '#4a90d9', melde: '#6ac47a', ruf: '#d9a24a', zeit: '#c07ad9',
};

// ------------------------------------------------------------ Aufbau
function entschaerfen(t) {
  return String(t == null ? '' : t)
    .replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
}

function knotenBauen(k) {
  const el = document.createElement('div');
  el.className = 'knoten ' + (k.art || 'unbekannt')
    + (k.ist_start ? ' start' : '')
    + (k.missionsende !== null && k.missionsende !== undefined ? ' ende' : '');
  el.dataset.id = k.id;

  let s = '<div class="kopf"><span class="kennung">' + entschaerfen(k.id)
        + '</span><span class="art">' + entschaerfen(k.art) + '</span></div>';

  if (k.ist_start) s += '<span class="fahne start">Start</span>';
  if (k.missionsende !== null && k.missionsende !== undefined) {
    const wie = k.missionsende === 0 ? 'gewonnen' : 'verloren';
    s += '<span class="fahne ende">Mission ' + wie + '</span>';
  }
  // Die Verzoegerung ist eine Eigenschaft des Knotens, keine Kante:
  // DelayedFunction zeigt ausnahmslos auf den eigenen Knoten.
  if (k.verzoegerung !== null && k.verzoegerung !== undefined) {
    const s2 = k.verzoegerung < 0.01
      ? '&lt;0,01' : String(k.verzoegerung).replace('.', ',');
    s += '<span class="fahne zeit">&#9201; ' + s2 + ' s</span>';
  }

  if (k.szenenknoten) {
    s += '<div class="szene">&#9679; ' + entschaerfen(k.szenenknoten.name)
       + '</div>';
  }

  if (k.befehle && k.befehle.length) {
    s += '<div class="befehle">' + k.befehle.slice(0, 5)
      .map(entschaerfen).join(', ')
      + (k.befehle.length > 5 ? ' …' : '') + '</div>';
  }

  // *** DIE FUNKSPRUCH-KACHEL: Bild, Text und Ton zusammen. ***
  // Bild und Ton kommen ueber das aqua:-Schema aus dem Bestand --
  // eingebettet waere der Ton einer Karte ueber ein Megabyte.
  for (const f of (k.funk || [])) {
    s += '<div class="funk">';
    s += f.bild
      ? '<img src="' + entschaerfen(f.bild) + '" alt="">'
      : '<div class="leer">?</div>';
    s += '<div class="inhalt">';
    s += '<div class="wer">' + entschaerfen(f.sprecher || '—')
       + (f.stimmung ? ' <span class="stimmung">'
          + entschaerfen(f.stimmung) + '</span>' : '') + '</div>';
    s += '<div class="text">' + (f.text
      ? entschaerfen(f.text)
      : '<i style="color:#8a7a5a">kein Text in den mtake-Tabellen</i>')
      + '</div>';
    s += '<div class="knopf">';
    if (f.ton) {
      s += '<button data-ton="' + entschaerfen(f.ton) + '">&#9654; anhoeren</button>';
    }
    s += '<span class="key">Key ' + entschaerfen(f.key) + '</span>';
    s += '</div></div></div>';
  }

  el.innerHTML = s;
  el.addEventListener('click', (e) => {
    if (e.target.tagName === 'BUTTON') return;
    waehlen(k.id);
  });
  return el;
}

function tonSpielen(url) {
  if (tonSpieler) { tonSpieler.pause(); tonSpieler = null; }
  tonSpieler = new Audio(url);
  tonSpieler.play().catch((e) => {
    melden('Ton laesst sich nicht abspielen: ' + e.message);
  });
}

// ------------------------------------------------------------ Layout
function anordnen() {
  welt.querySelectorAll('.knoten').forEach((n) => n.remove());
  stellen.clear();
  if (!daten || !daten.knoten.length) return;

  // Nach Ebenen gruppieren
  const nachEbene = new Map();
  for (const k of daten.knoten) {
    const e = k.ebene || 0;
    if (!nachEbene.has(e)) nachEbene.set(e, []);
    nachEbene.get(e).push(k);
  }

  // Innerhalb einer Ebene: erst die mit Funkspruch und Fahnen, dann
  // nach Verbindungsgrad -- das Wichtige landet oben.
  let breiteste = 0;
  for (const [e, liste] of nachEbene) {
    liste.sort((a, b) => {
      const wa = (a.funk.length ? 0 : 1) + (a.ist_start ? 0 : 1);
      const wb = (b.funk.length ? 0 : 1) + (b.ist_start ? 0 : 1);
      if (wa !== wb) return wa - wb;
      return (b.grad_ein + b.grad_aus) - (a.grad_ein + a.grad_aus);
    });
    breiteste = Math.max(breiteste, liste.length);
  }

  const ebenen = [...nachEbene.keys()].sort((a, b) => a - b);
  for (const e of ebenen) {
    const liste = nachEbene.get(e);
    let y = RAND;
    const x = RAND + ebenen.indexOf(e) * SPALTE;
    for (const k of liste) {
      const el = knotenBauen(k);
      el.style.left = x + 'px';
      el.style.top = y + 'px';
      welt.appendChild(el);
      const h = el.offsetHeight;
      stellen.set(k.id, { x, y, h, el, breite: el.offsetWidth });
      y += h + ZEILE;
    }
  }
  kantenZeichnen();
}

function kantenZeichnen() {
  while (svg.firstChild) svg.removeChild(svg.firstChild);
  if (!daten) return;

  let maxX = 0, maxY = 0;
  for (const s of stellen.values()) {
    maxX = Math.max(maxX, s.x + s.breite);
    maxY = Math.max(maxY, s.y + s.h);
  }
  svg.setAttribute('width', maxX + RAND);
  svg.setAttribute('height', maxY + RAND);

  for (const kante of daten.kanten) {
    const a = stellen.get(kante.von), b = stellen.get(kante.nach);
    if (!a || !b) continue;
    const x1 = a.x + a.breite, y1 = a.y + a.h / 2;
    const x2 = b.x, y2 = b.y + b.h / 2;
    // Bezier nach rechts -- bei Rueckkanten weit ausholen, damit
    // man sie von den Vorwaertskanten unterscheiden kann.
    const rueck = x2 < x1;
    const knick = rueck ? Math.max(60, (x1 - x2) * 0.35) : (x2 - x1) * 0.5;
    const pfad = document.createElementNS('http://www.w3.org/2000/svg', 'path');
    pfad.setAttribute('d',
      `M ${x1} ${y1} C ${x1 + knick} ${y1}, ${x2 - knick} ${y2}, ${x2} ${y2}`);
    pfad.setAttribute('fill', 'none');
    pfad.setAttribute('stroke', KANTENFARBE[kante.art] || '#667');
    pfad.setAttribute('stroke-width', rueck ? '1' : '1.4');
    pfad.setAttribute('opacity', rueck ? '0.35' : '0.6');
    if (kante.art === 'zeit') pfad.setAttribute('stroke-dasharray', '5 4');
    pfad.dataset.von = kante.von;
    pfad.dataset.nach = kante.nach;
    svg.appendChild(pfad);
  }
}

function waehlen(id) {
  gewaehlt = (gewaehlt === id) ? null : id;
  for (const [k, s] of stellen) {
    s.el.classList.toggle('gewaehlt', k === gewaehlt);
  }
  // Die Kanten des gewaehlten Knotens hervorheben
  svg.querySelectorAll('path').forEach((p) => {
    const dran = gewaehlt
      && (p.dataset.von === gewaehlt || p.dataset.nach === gewaehlt);
    p.setAttribute('opacity', gewaehlt ? (dran ? '0.95' : '0.08')
                                       : '0.6');
    p.setAttribute('stroke-width', dran ? '2.4' : '1.4');
  });
  if (gewaehlt && window.aqgraph.beiAuswahl) {
    window.aqgraph.beiAuswahl(gewaehlt);
  }
}

// ------------------------------------------------------- Schwenken
function anwenden() {
  welt.style.transform =
    `translate(${versatzX}px, ${versatzY}px) scale(${zoom})`;
}

let zieht = false, startX = 0, startY = 0;
leinwand.addEventListener('mousedown', (e) => {
  if (e.target.closest('.knoten')) return;
  zieht = true; startX = e.clientX - versatzX; startY = e.clientY - versatzY;
  leinwand.classList.add('zieht');
});
window.addEventListener('mousemove', (e) => {
  if (!zieht) return;
  versatzX = e.clientX - startX; versatzY = e.clientY - startY;
  anwenden();
});
window.addEventListener('mouseup', () => {
  zieht = false; leinwand.classList.remove('zieht');
});
leinwand.addEventListener('wheel', (e) => {
  e.preventDefault();
  const alt = zoom;
  zoom = Math.max(0.12, Math.min(2.5, zoom * (e.deltaY < 0 ? 1.12 : 0.893)));
  // Zum Mauszeiger hin zoomen
  versatzX = e.clientX - (e.clientX - versatzX) * (zoom / alt);
  versatzY = e.clientY - (e.clientY - versatzY) * (zoom / alt);
  anwenden();
}, { passive: false });

leinwand.addEventListener('click', (e) => {
  const b = e.target.closest('button[data-ton]');
  if (b) { tonSpielen(b.dataset.ton); e.stopPropagation(); }
});

function melden(t) { console.log('[graph] ' + t); }

// --------------------------------------------------------- Aussen
window.aqgraph = {
  setzen: (d) => {
    daten = d;
    if (d.fehler) {
      kopf.innerHTML = '<h1>' + entschaerfen(d.level) + '</h1>'
        + '<div class="z" style="color:#e0a0a0">'
        + entschaerfen(d.fehler) + '</div>';
      welt.querySelectorAll('.knoten').forEach((n) => n.remove());
      while (svg.firstChild) svg.removeChild(svg.firstChild);
      return;
    }
    anordnen();
    const z = d.kennzahlen || {};
    const arten = Object.entries(z.kanten_nach_art || {})
      .map(([a, n]) => a + ' ' + n).join(', ');
    kopf.innerHTML = '<h1>' + entschaerfen(d.level) + ' — Missionsgraph</h1>'
      + '<div class="z">' + z.knoten + ' Knoten, ' + z.kanten + ' Kanten ('
      + entschaerfen(arten) + ')<br>'
      + z.funksprueche + ' Funkstellen, ' + z.startknoten + ' Einstiege, '
      + z.endknoten + ' Missionsenden'
      + (z.verzoegert ? ', ' + z.verzoegert + ' mit Verzoegerung' : '')
      + '<br>'
      + 'Quelle: ' + entschaerfen(d.quelle) + '</div>';

    hinweis.style.display = (d.hinweise && d.hinweise.length) ? 'block' : 'none';
    if (d.hinweise && d.hinweise.length) {
      hinweis.innerHTML = '<b>Unsicher oder offen</b><ul>'
        + d.hinweise.map((h) => '<li>' + entschaerfen(h) + '</li>').join('')
        + '</ul>';
    }
    legende.innerHTML =
      '<span><i style="background:#4a90d9"></i>Datenfluss</span>'
      + '<span><i style="background:#6ac47a"></i>Meldung</span>'
      + '<span><i style="background:#d9a24a"></i>Aufruf</span>'
      + '<span><i style="background:#d9b0ff"></i>&#9201; Verzoegerung</span>'
      + '<span style="color:#8fa4b2">— Ziehen zum Schwenken, Rad zum Zoomen</span>';
    // Auf den Anfang stellen
    zoom = 0.62; versatzX = 20; versatzY = 20; anwenden();
  },

  // Zu einem Knoten springen
  zuKnoten: (id) => {
    const s = stellen.get(id);
    if (!s) return false;
    zoom = 1;
    versatzX = window.innerWidth / 2 - (s.x + s.breite / 2) * zoom;
    versatzY = window.innerHeight / 2 - (s.y + s.h / 2) * zoom;
    anwenden();
    waehlen(id);
    return true;
  },

  zustand: () => ({
    geladen: !!daten,
    level: daten ? daten.level : null,
    knoten: stellen.size,
    kanten: svg.querySelectorAll('path').length,
    funkkacheln: document.querySelectorAll('.funk').length,
    mitBild: document.querySelectorAll('.funk img').length,
    mitTon: document.querySelectorAll('button[data-ton]').length,
    zoom: Math.round(zoom * 100) / 100,
  }),

  beiAuswahl: null,
};
