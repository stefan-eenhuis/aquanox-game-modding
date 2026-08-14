// AquaNox Level-Ansicht -- three.js im QWebEngineView.
//
// Die Szene kommt fertig aus Python (modell/level.py -> szene()).
// Hier wird NUR dargestellt; es wird nichts nachgerechnet, was die
// Datenschicht nicht geliefert hat.

import * as THREE from './lib/three.module.js';
import { OrbitControls } from './lib/OrbitControls.js';

const buehne  = document.getElementById('buehne');
const kopf    = document.getElementById('kopf');
const fuss    = document.getElementById('fuss');
const warnung = document.getElementById('warnung');
const laden   = document.getElementById('laden');

let renderer, szene, kamera, steuerung;
let terrainNetz = null, objektGruppe = null, gitter = null, achsen = null;
let marken = [];
let letzteSzene = null;
let zeigeTextur = 'farbe';   // 'farbe' | 'neigung' | false
let zeigeLicht = true;       // Lightmap darueber
let nebelAn = false;         // Nebel -- siehe stimmungSetzen()
let nebelWeite = 0;          // 0 = Wert aus fog.des
let letzteWeite = 1000;      // Kantenlaenge der geladenen Karte
let flug = null;             // laufende Kamerafahrt
let wasserNetz = null;       // Wasseroberflaeche aus fog.des
let wasserAn = true;
let drehungAn = true;        // alle drei Drehachsen -- siehe unten
let zeigeMeshtextur = true;  // Objekttexturen auf den Modellen
let letzteMitTextur = 0;     // wie viele Objekte eine Textur bekamen
let letzteMitAlpha = 0;      // davon mit ausgewertetem Alphakanal
let detailAn = true;         // Materialschichten -- siehe detailEinbauen()
let detailStaerke = 1.0;     // 0 = nur Farbkarte, 1 = volle Mischung
let aktiveUniforms = null;   // Zugriff auf die Shader-Uniforms
let wegpunktGruppe = null;   // Verbindungslinien der Wegpunkt-Kette
let wegpunktLinien = [];     // { linie, von, nach } -- Objektindizes
let nativGruppe = null;      // native OSD-Lichter (nod_fx_light)
let nativDaten = [];         // wie Python sie lieferte -- READ-ONLY

// ------------------------------------------------------------------ Aufbau
function aufbauen() {
  renderer = new THREE.WebGLRenderer({ antialias: true });
  renderer.setPixelRatio(Math.min(window.devicePixelRatio, 2));
  renderer.setSize(window.innerWidth, window.innerHeight);
  buehne.appendChild(renderer.domElement);

  szene = new THREE.Scene();
  szene.background = new THREE.Color('#10171d');

  kamera = new THREE.PerspectiveCamera(
    55, window.innerWidth / window.innerHeight, 1, 100000);
  kamera.position.set(600, 420, 600);

  steuerung = new OrbitControls(kamera, renderer.domElement);
  steuerung.enableDamping = true;
  steuerung.dampingFactor = 0.08;
  steuerung.maxPolarAngle = Math.PI * 0.495;   // nicht unter den Boden
  steuerung.screenSpacePanning = false;

  window.addEventListener('resize', () => {
    kamera.aspect = window.innerWidth / window.innerHeight;
    kamera.updateProjectionMatrix();
    renderer.setSize(window.innerWidth, window.innerHeight);
  });

  achsen = new THREE.AxesHelper(200);
  szene.add(achsen);

  zeichnen();
}

function zeichnen() {
  requestAnimationFrame(zeichnen);
  flugFortsetzen();
  lichterAnimieren();
  nativAnimieren();
  steuerung.update();
  renderer.render(szene, kamera);
  markenNachfuehren();
  const p = kamera.position;
  fuss.textContent =
    `Kamera  x ${p.x.toFixed(0)}   y ${p.y.toFixed(0)}   z ${p.z.toFixed(0)}` +
    (letzteSzene ? `   |   Raster ${letzteSzene.terrain.breite}x${letzteSzene.terrain.hoehe}` +
                   ` (jeder ${letzteSzene.terrain.schritt}. Punkt)` : '');
}

// ------------------------------------------------------------- Terrain
function terrainBauen(t, bilder) {
  if (terrainNetz) {
    szene.remove(terrainNetz);
    terrainNetz.geometry.dispose();
    terrainNetz.material.dispose();
    terrainNetz = null;
  }
  // Zeigt sonst auf den Shader der vorigen Karte.
  aktiveUniforms = null;
  if (!t.breite || !t.hoehe || !t.werte.length) return null;

  const b = t.breite, h = t.hoehe;
  // Weltmass aus terrain.des: welt = index * scale + offset.
  // Ein Punkt des ausgeduennten Rasters entspricht schritt Punkten
  // der Originalkarte, also schritt * scale Welteinheiten.
  const welt = t.welt || { ursprung: [0, 0], scale: [1, 1, 1] };
  const abstand = t.schritt * (welt.scale[0] || 1);
  const geo = new THREE.PlaneGeometry(
    (b - 1) * abstand, (h - 1) * abstand, b - 1, h - 1);
  geo.rotateX(-Math.PI / 2);
  // PlaneGeometry liegt um den Ursprung; die Karte beginnt aber am
  // Rasterursprung. Der Mittelpunkt liegt demnach bei
  // ursprung + weite/2.
  //
  // *** NICHT das Offset-Feld aus terrain.des benutzen. *** Damit
  // laege die Karte bei -4096..0, die Objekte liegen aber bei
  // 0..4096 -- Terrain und Objekte staenden nebeneinander statt
  // uebereinander. Der Beleg steht in parser/terrain.py, welt().
  const urs = welt.ursprung || [0, 0];
  geo.translate(
    (urs[0] || 0) + ((b - 1) * abstand) / 2, 0,
    (urs[1] || 0) + ((h - 1) * abstand) / 2);

  // *** DIE TEXTUREN MUESSEN MITDREHEN. ***
  // terrain.raster() gibt die Hoehen in WELTreihenfolge aus (Zeile 0
  // bei welt_y = 0). Farbkarte, Lightmap und Selektormap kommen
  // dagegen ueber Pillow und liegen in BILDreihenfolge, also
  // andersherum. Ohne diese Spiegelung liegt die Faerbung spiegel-
  // verkehrt auf dem Gelaende -- Sand auf den Felsen.
  // Hier statt an vier Ladepfaden: eine Zeile, gilt fuer alle
  // Texturen, die diese Geometrie benutzt.
  {
    const uv = geo.attributes.uv;
    for (let i = 0; i < uv.count; i++) uv.setY(i, 1 - uv.getY(i));
    uv.needsUpdate = true;
  }

  const skal = (t.skalierung && t.skalierung.wert) || 1.0;
  const vers = (t.versatz && t.versatz.wert) || 0.0;
  const ueber = t.ueberhoehung || 1.0;

  const pos = geo.attributes.position;
  let min = Infinity, max = -Infinity;
  for (let i = 0; i < t.werte.length && i < pos.count; i++) {
    const y = (t.werte[i] * skal + vers) * ueber;
    pos.setY(i, y);
    if (y < min) min = y;
    if (y > max) max = y;
  }
  pos.needsUpdate = true;
  geo.computeVertexNormals();

  // Faerbung nach Hoehe -- dient als Rueckfall, wenn keine
  // Farbkarte vorliegt, und als zweite Schicht darunter.
  const farben = new Float32Array(pos.count * 3);
  const spanne = (max - min) || 1;
  const tief = new THREE.Color('#1b3a4a');
  const hoch = new THREE.Color('#7a8a6a');
  const c = new THREE.Color();
  for (let i = 0; i < pos.count; i++) {
    c.copy(tief).lerp(hoch, (pos.getY(i) - min) / spanne);
    farben[i * 3] = c.r; farben[i * 3 + 1] = c.g; farben[i * 3 + 2] = c.b;
  }
  geo.setAttribute('color', new THREE.BufferAttribute(farben, 3));

  const mat = new THREE.MeshLambertMaterial({
    vertexColors: true, side: THREE.DoubleSide, wireframe: false });

  // Die Farbkarte aus material_s.tga (RGB). PlaneGeometry hat
  // bereits Texturkoordinaten von 0..1 ueber die ganze Flaeche --
  // genau das, was eine Karte ueber das ganze Terrain braucht.
  bilder = bilder || {};
  // "farbe" = material_s.tga RGB, "neigung" = dessen Alphakanal als
  // Falschfarbe (belegt: er misst die Gelaenderauheit), "aus" = die
  // Hoehenfaerbung als Rueckfall.
  const quelle = zeigeTextur === 'neigung'
    ? bilder.neigungskarte
    : (zeigeTextur ? bilder.farbkarte : null);
  if (quelle) {
    const lader = new THREE.TextureLoader();
    mat.map = lader.load(quelle, () => { mat.needsUpdate = true; });
    mat.map.colorSpace = THREE.SRGBColorSpace;
    mat.map.wrapS = mat.map.wrapT = THREE.ClampToEdgeWrapping;
    scharfStellen(mat.map);
    mat.vertexColors = false;
    if (bilder.lightmap && zeigeLicht) {
      // Die Lightmap braucht einen zweiten Satz Texturkoordinaten;
      // three.js erwartet ihn unter "uv1". Er ist mit dem ersten
      // identisch, weil beide Karten das ganze Terrain abdecken.
      geo.setAttribute('uv1', geo.attributes.uv.clone());
      mat.lightMap = lader.load(bilder.lightmap,
                                () => { mat.needsUpdate = true; });
      mat.lightMapIntensity = 1.0;
    }
    // Die Materialschichten des Spiels darueberlegen.
    if (zeigeTextur === 'farbe' && detailAn) {
      detailEinbauen(mat, bilder, lader);
    }
  }

  terrainNetz = new THREE.Mesh(geo, mat);
  szene.add(terrainNetz);
  const w = (b - 1) * abstand;
  return { min, max, weite: w,
           mitte: [(urs[0] || 0) + w / 2, (urs[1] || 0) + w / 2] };
}

// ------------------------------------------------- Wasseroberflaeche
//
// waterdepth aus fog.des ist die Hoehe, bis zu der das Gelaende
// reichen KANN: 65535 * Scale[2] / 256 = 1024, und genau 1024 steht
// in fog.des. mp_13 hat 512 -- und dort ist auch die Hoehenkarte nur
// halb ausgesteuert. Die Ebene liegt also auf dem hoechsten
// moeglichen Gelaendepunkt, nicht darueber.
//
// Sie ist von unten wie von oben sichtbar (DoubleSide) und leicht
// durchscheinend, damit sie die Sicht auf die Karte nicht nimmt.
function wasserBauen(w, masse) {
  if (wasserNetz) {
    szene.remove(wasserNetz);
    wasserNetz.geometry.dispose();
    wasserNetz.material.dispose();
    wasserNetz = null;
  }
  if (!wasserAn || !w || !w.tiefe || !masse) return;
  const weite = masse.weite || 4096;
  const [mx, mz] = masse.mitte || [weite / 2, weite / 2];
  const geo = new THREE.PlaneGeometry(weite, weite);
  geo.rotateX(-Math.PI / 2);
  const mat = new THREE.MeshBasicMaterial({
    color: 0x2e6a8c, transparent: true, opacity: 0.22,
    side: THREE.DoubleSide, depthWrite: false,
  });
  wasserNetz = new THREE.Mesh(geo, mat);
  wasserNetz.position.set(mx, w.tiefe, mz);
  wasserNetz.renderOrder = 2;
  szene.add(wasserNetz);
}

// ------------------------------------------- Materialschichten (Splat)
//
// *** WAS HIER GEDEUTET WIRD -- und was gemessen ist. ***
//
// GEMESSEN (sechs Karten, je 64.516 Punkte): der Alphakanal von
// material_s.tga steigt monoton mit der Gelaendesteigung, Korrelation
// +0,61 bis +0,79, Wertebereich 0..32.
//
// GEDEUTET (nicht an der Engine geprueft):
//   1. A mischt zwischen material_0 (Sand, flach) und material_1
//      (geschichteter Fels, steil). Die Bilder passen dazu.
//   2. Die Grundfarbe wird mit Faktor 2 moduliert -- (128,128,128)
//      waere dann neutral, und genau dieser Wert kommt in 28 bis 43
//      Prozent der Punkte vor.
//   3. W0..W3 aus material.des sind die Zahl der Wiederholungen
//      ueber die ganze Karte.
//
// Deshalb ist die ganze Schicht abschaltbar: ohne sie sieht man die
// reine Farbkarte, also nur Gemessenes.
function detailEinbauen(mat, bilder, lader) {
  const d = bilder.detail || {};
  const t0 = d['0'], t1 = d['1'];
  if (!t0 && !t1) return;              // nichts zu mischen

  const kachel = bilder.kachelung || {};
  const laden = (uri) => {
    if (!uri) return null;
    const t = lader.load(uri, () => { mat.needsUpdate = true; });
    t.colorSpace = THREE.SRGBColorSpace;
    t.wrapS = t.wrapT = THREE.RepeatWrapping;
    // Die Detailschichten sind zig-fach gekachelt und werden fast
    // immer flach gesehen -- ohne anisotrope Filterung matschen sie.
    scharfStellen(t);
    return t;
  };
  const tex0 = laden(t0) || laden(t1);
  const tex1 = laden(t1) || tex0;
  const sel = bilder.selektormap ? laden(bilder.selektormap) : null;
  if (!sel) return;                    // ohne Alphakanal keine Mischung

  mat.onBeforeCompile = (shader) => {
    shader.uniforms.aqDetail0 = { value: tex0 };
    shader.uniforms.aqDetail1 = { value: tex1 };
    shader.uniforms.aqSelektor = { value: sel };
    shader.uniforms.aqKachel = { value: new THREE.Vector2(
      (kachel['0'] !== undefined ? kachel['0'] : kachel[0]) || 32,
      (kachel['1'] !== undefined ? kachel['1'] : kachel[1]) || 32) };
    shader.uniforms.aqStaerke = { value: detailStaerke };
    aktiveUniforms = shader.uniforms;

    shader.fragmentShader = shader.fragmentShader
      .replace('#include <common>', `#include <common>
        uniform sampler2D aqDetail0;
        uniform sampler2D aqDetail1;
        uniform sampler2D aqSelektor;
        uniform vec2 aqKachel;
        uniform float aqStaerke;`)
      .replace('#include <map_fragment>', `#include <map_fragment>
        {
          // Der Alphakanal ist schon auf 0..1 gestreckt (textur.py).
          float steil = texture2D(aqSelektor, vMapUv).a;
          vec3 sand = texture2D(aqDetail0, vMapUv * aqKachel.x).rgb;
          vec3 fels = texture2D(aqDetail1, vMapUv * aqKachel.y).rgb;
          vec3 detail = mix(sand, fels, steil);
          // MODULATE2X: 0,5 ist neutral, heller hellt auf.
          diffuseColor.rgb = mix(diffuseColor.rgb,
                                 diffuseColor.rgb * detail * 2.0,
                                 aqStaerke);
        }`);
  };
  mat.needsUpdate = true;
}

// ------------------------------------------------------------- Objekte
const ARTFARBEN = {
  spawn: '#40ff90', gegner: '#ff5050', schiff: '#60c0ff',
  gebaeude: '#ffd070', trigger: '#ff70ff', patrouille: '#ffa040',
  wegpunkt: '#a0a0ff', geschuetz: '#ff9090', licht: '#ffffa0',
  kamera: '#c0c0c0', effekt: '#90ffd0', objekt: '#a0b0c0',
};

// *** ACHSEN: AquaNox rechnet mit Z als Hochachse, three.js mit Y. ***
// Eine Weltkoordinate (x, y, z) wird deshalb zu (x, z, y). Dieselbe
// Zuordnung benutzt das Terrain: Kartenachsen x/y auf three.js x/z,
// die Hoehe aus hmap auf three.js y.
function ausAquanox(v) {
  return new THREE.Vector3(v[0], v[2], v[1]);
}

// *** SCHAERFE. ***
// Zwei Dinge kosten Bildschaerfe, und beide sind billig zu beheben:
//
//   1. ANISOTROPE FILTERUNG. Ohne sie verwaschen Flaechen, die flach
//      angeschnitten sind -- also gerade Boden und Rohre, auf die man
//      der Laenge nach schaut. Die Karte hat 4096 Einheiten Kante;
//      der Boden wird fast immer flach gesehen. Das ist der groesste
//      sichtbare Gewinn und kostet fast nichts.
//   2. MIPMAPS mit linearer Ueberblendung, sonst flimmert die
//      Kachelung in der Ferne.
function scharfStellen(t) {
  if (!t || !renderer) return t;
  const max = renderer.capabilities.getMaxAnisotropy
    ? renderer.capabilities.getMaxAnisotropy() : 1;
  t.anisotropy = Math.min(16, max || 1);
  t.generateMipmaps = true;
  t.minFilter = THREE.LinearMipmapLinearFilter;
  t.magFilter = THREE.LinearFilter;
  // *** needsUpdate NICHT hier setzen. *** Die Textur wird
  // asynchron geladen; ein needsUpdate auf einem noch leeren Bild
  // erzeugt je Bild eine Warnung
  //   "Texture marked for update but no image data found"
  // und flutet das Protokoll. three.js setzt das Flag selbst,
  // sobald das Bild da ist.
  return t;
}

// Dieselbe Abbildung als Matrix: vertauscht y und z.
// Sie ist ihre eigene Umkehrung.
const ACHSTAUSCH = new THREE.Matrix4().set(
  1, 0, 0, 0,
  0, 0, 1, 0,
  0, 1, 0, 0,
  0, 0, 0, 1);

// *** DIE DREHUNG AUS Body_SetCS -- an 161 Rohrpaaren gemessen. ***
//
// Ein Rohrsegment ist laenglich; seine gedrehte Laengsachse muss zum
// anstossenden Nachbarn zeigen. Gewertet wurden nur Paare, deren
// Abstand auf 12 Prozent zur Rohrlaenge passt (161 Paare aus neun
// Karten). Von allen 288 Deutungen (6 Zuordnungen x 6 Reihenfolgen
// x 8 Vorzeichen) gewinnt:
//
//     M = Rz(Wert0) * Rx(Wert1) * Ry(Wert2)      in AquaNox-Achsen
//
//     Deutung                          Median   unter 3 Grad
//     z(W0) * x(W1) * y(W2)             4,99       32,3 %
//     x(-W1) * z(W0) * y(W2)            5,61       29,8 %
//     nur W0 um die Hochachse (alt)     6,82       26,7 %
//
// *** Das Vorzeichen von Wert2 ist gleichgueltig *** -- beide
// Varianten liefern exakt dasselbe. Das bestaetigt die Deutung:
// Wert2 dreht um die Rohrachse selbst und aendert die Richtung
// nicht. Bei rundem Querschnitt sieht man ihn ueberhaupt nicht.
//
// *** WAS DAMIT NICHT BEHAUPTET IST: *** 4,99 Grad Restfehler sind
// nicht null. Ob die Rohre im Original wirklich nahtlos sitzen, ist
// nicht geprueft -- moeglicherweise stossen sie auch im Spiel nur
// ungefaehr aneinander. Die Reihenfolge ZXY ist damit gut gestuetzt,
// aber nicht bewiesen.
function drehungAusAquanox(d) {
  const r = (g) => (g || 0) * Math.PI / 180;
  const m = new THREE.Matrix4().makeRotationFromEuler(
    new THREE.Euler(r(d[1]), r(d[2]), r(d[0]), 'ZXY'));
  // In three.js-Achsen bringen: T * M * T
  return new THREE.Matrix4()
    .multiplyMatrices(ACHSTAUSCH, m).multiply(ACHSTAUSCH);
}

function objekteBauen(liste, meshes, bilder) {
  if (objektGruppe) { szene.remove(objektGruppe); objektGruppe = null; }
  marken.forEach(m => m.el.remove());
  marken = [];
  // Die Drahtkugel haengt an einem Netz der alten Gruppe.
  radiusKugelZeigen(null, null);
  if (!liste || !liste.length) return;

  meshes = meshes || {};
  bilder = bilder || {};
  objektGruppe = new THREE.Group();
  const wuerfel = new THREE.BoxGeometry(14, 14, 14);
  const geoSpeicher = new Map();     // Meshpfad -> {geo, materialien}
  const texSpeicher = new Map();     // Texturname -> THREE.Texture
  const lader = new THREE.TextureLoader();

  // Eine Textur wird EINMAL geladen, auch wenn zwanzig Modelle sie
  // benutzen -- sonst liegt dasselbe Bild vielfach im Speicher.
  // Liefert {textur, alpha}. alpha ist "keine", "hart" oder "weich"
  // -- siehe parser/textur.py, objekttextur().
  function texturFuer(name) {
    if (texSpeicher.has(name)) return texSpeicher.get(name);
    const e = bilder[name];
    // Aeltere Daten lieferten hier nur die URI als Zeichenkette.
    const uri = (e && typeof e === 'object') ? e.bild : e;
    const alpha = (e && typeof e === 'object') ? (e.alpha || 'keine')
                                               : 'keine';
    let t = null;
    if (uri) {
      t = lader.load(uri);
      t.colorSpace = THREE.SRGBColorSpace;
      t.wrapS = t.wrapT = THREE.RepeatWrapping;
      t.flipY = false;    // .msb-UVs haben den Ursprung oben links
      scharfStellen(t);
    }
    const paar = { textur: t, alpha };
    texSpeicher.set(name, paar);
    return paar;
  }

  const ersatzMaterial = new THREE.MeshLambertMaterial({
    color: 0x9aa8b4, side: THREE.DoubleSide, flatShading: false });

  function geometrieFuer(pfad) {
    if (geoSpeicher.has(pfad)) return geoSpeicher.get(pfad);
    const m = meshes[pfad];
    if (!m) { geoSpeicher.set(pfad, null); return null; }
    const g = new THREE.BufferGeometry();
    g.setAttribute('position',
      new THREE.Float32BufferAttribute(m.position, 3));
    if (m.normale && m.normale.length === m.position.length) {
      g.setAttribute('normal',
        new THREE.Float32BufferAttribute(m.normale, 3));
    }
    if (m.uv && m.uv.length * 3 === m.position.length * 2) {
      g.setAttribute('uv', new THREE.Float32BufferAttribute(m.uv, 2));
    }
    if (m.indizes && m.indizes.length) g.setIndex(m.indizes);
    if (!m.normale || m.normale.length !== m.position.length) {
      g.computeVertexNormals();
    }
    // Das Modell steht in AquaNox-Achsen. Die Vertices werden mit
    // DERSELBEN Abbildung umgerechnet wie die Positionen, naemlich
    // (x,y,z) -> (x,z,y). Frueher stand hier rotateX(-90 Grad); das
    // ist (x,y,z) -> (x,z,-y), also etwas ANDERES als ausAquanox().
    // Solange nur um die Hochachse gedreht wurde, fiel der
    // Unterschied nicht auf -- bei drei Achsen sehr wohl.
    g.applyMatrix4(ACHSTAUSCH);
    // Der Tausch spiegelt (Determinante -1), also stimmen die
    // mitgelieferten Normalen nicht mehr.
    g.computeVertexNormals();

    // Je Materialgruppe ein eigenes Material. Die Gruppen kommen
    // aus msb.zusammenfassen() und nennen den Texturnamen des
    // jeweiligen Blocks.
    let materialien = ersatzMaterial;
    const gr = (m.gruppen || []).filter((x) => x.anzahl > 0);
    if (gr.length && zeigeMeshtextur) {
      materialien = [];
      g.clearGroups();
      gr.forEach((x, i) => {
        g.addGroup(x.start, x.anzahl, i);
        const { textur: t, alpha } = texturFuer((x.textur || '').trim());
        const m2 = new THREE.MeshLambertMaterial({
          map: t || null,
          color: t ? 0xffffff : 0x9aa8b4,
          side: THREE.DoubleSide,
        });
        // *** DER ALPHAKANAL. *** Ohne ihn steht jede Pflanze in
        // einem schwarzen Rechteck -- die freigestellten Stellen
        // wurden als Schwarz gezeichnet.
        if (alpha === 'hart') {
          // Freisteller (Pflanzen, Gitter): harte Kante genuegt.
          // alphaTest braucht KEINE Sortierung und schreibt weiter
          // in den Tiefenpuffer -- deshalb keine Artefakte, wenn
          // zwei Pflanzen hintereinander stehen.
          m2.alphaTest = 0.5;
          m2.transparent = false;
        } else if (alpha === 'weich') {
          // Glas und Fenster: echte Zwischenwerte. Hier muss
          // gemischt werden, und depthWrite bleibt aus, sonst
          // verdeckt die Scheibe, was hinter ihr liegt.
          m2.transparent = true;
          m2.depthWrite = false;
        }
        materialien.push(m2);
      });
      if (!materialien.length) materialien = ersatzMaterial;
    }
    const eintrag = { geo: g, materialien };
    geoSpeicher.set(pfad, eintrag);
    return eintrag;
  }

  let mitModell = 0;
  let mitTextur = 0;
  let mitAlpha = 0;
  for (const o of liste) {
    const farbe = ARTFARBEN[o.art] || ARTFARBEN.objekt;
    let netz;
    const eintrag = o.mesh ? geometrieFuer(o.mesh) : null;
    const g = eintrag ? eintrag.geo : null;
    if (g) {
      netz = new THREE.Mesh(g, eintrag.materialien);
      mitModell++;
      if (Array.isArray(eintrag.materialien)
          && eintrag.materialien.some((m2) => m2.map)) mitTextur++;
      if (Array.isArray(eintrag.materialien)
          && eintrag.materialien.some(
            (m2) => m2.alphaTest > 0 || m2.transparent)) mitAlpha++;
    } else {
      netz = new THREE.Mesh(wuerfel, new THREE.MeshBasicMaterial({
        color: farbe, wireframe: true }));
    }
    // Lage und Drehung in einem: siehe drehungAusAquanox().
    // Achse 0 ist bei 65,5 % der Objekte belegt, Achse 1 bei 13,2 %,
    // Achse 2 bei 13,0 % -- alle drei in Grad, Bereich -180..180.
    netz.position.copy(ausAquanox(o.position));
    if (o.drehung && drehungAn) {
      // Als Quaternion setzen, NICHT die Matrix direkt: bei
      // matrixAutoUpdate = false bliebe netz.position auf (0,0,0)
      // stehen, und alles, was die Position ausliest -- Bodenprobe,
      // Kamerafahrt, Marken -- bekaeme Unsinn.
      // T * M * T hat Determinante +1, ist also eine echte Drehung.
      netz.quaternion.setFromRotationMatrix(
        drehungAusAquanox(o.drehung));
    }
    // *** WEITERE TEILE DESSELBEN OBJEKTS. ***
    // Ein Geschuetzturm besteht aus Sockel, Drehteil und Kanone --
    // jedes ein eigenes Mesh mit eigenem Versatz aus der OSD.
    // Sie haengen am Objekt, drehen und wandern also mit.
    for (const t of (o.teile || [])) {
      const te = geometrieFuer(t.mesh);
      if (!te || !te.geo) continue;
      const kind = new THREE.Mesh(te.geo, te.materialien);
      // Der Versatz steht in AquaNox-Achsen und muss dieselbe
      // Umrechnung durchlaufen wie jede andere Lage.
      kind.position.copy(ausAquanox(t.versatz || [0, 0, 0]));
      if (t.drehung && drehungAn) {
        kind.quaternion.setFromRotationMatrix(
          drehungAusAquanox(t.drehung));
      }
      netz.add(kind);
    }

    objektGruppe.add(netz);
    if (marken.length < 200) {
      const el = document.createElement('div');
      el.className = 'marke';
      el.textContent = o.name;
      el.style.color = g ? '#c8d8e8' : farbe;
      el.title = `${o.name}\n${o.mesh || 'kein Modell'}\n` +
                 `(${o.position.map((v) => v.toFixed(0)).join(', ')})\n` +
                 `Klick: hinfliegen`;
      // Anklickbar: die Kamera faehrt zum Objekt.
      el.addEventListener('click', () => hinfliegen(netz));
      document.body.appendChild(el);
      marken.push({ el, netz, name: o.name });
    }
  }
  szene.add(objektGruppe);
  letzteMitTextur = mitTextur;
  letzteMitAlpha = mitAlpha;
  return mitModell;
}

// ------------------------------------------- Wegpunkt-Verbindungslinien
//
// *** DIE KETTE STEHT NIRGENDS ALS FELD. *** Weder die Wegpunkt-OSDs
// noch das Missionsskript verketten die Punkte -- die Reihenfolge
// steckt allein im Triggernetz des Dekompilats (parser/wegpunkte.py:
// Game_SetWayPoint, Erreicht-Flags, Taskkey-Folge). Hier wird NUR
// gezeichnet, was Python als wegpunkt_kanten liefert: je Kante eine
// Linie zwischen den beiden Positionen. Dezentes Gelb passend zu den
// Rauten, leicht durchscheinend; harte "erreicht"-Kanten etwas
// kraeftiger als die heuristischen "folge"-Kanten. Eigene Gruppe,
// die die Mesh-Einzelansicht wie die Lichter ausblendet.
function wegpunktLinienBauen(daten) {
  if (wegpunktGruppe) {
    szene.remove(wegpunktGruppe);
    wegpunktGruppe.traverse((k) => {
      if (k.geometry) k.geometry.dispose();
      if (k.material) k.material.dispose();
    });
    wegpunktGruppe = null;
  }
  wegpunktLinien = [];
  const kanten = (daten && daten.wegpunkt_kanten) || [];
  if (!kanten.length || !objektGruppe) return;

  // var ist die eindeutige Kennung (Skriptvariable); der Name nur
  // Rueckfall -- wie ueberall sonst in der Auswahl.
  const nachVar = new Map();
  const nachName = new Map();
  (daten.objekte || []).forEach((o, i) => {
    if (o.var && !nachVar.has(o.var)) nachVar.set(o.var, i);
    if (o.name && !nachName.has(o.name)) nachName.set(o.name, i);
  });

  wegpunktGruppe = new THREE.Group();
  for (const k of kanten) {
    const von = nachVar.has(k.von.var) ? nachVar.get(k.von.var)
                                       : nachName.get(k.von.name);
    const nach = nachVar.has(k.nach.var) ? nachVar.get(k.nach.var)
                                         : nachName.get(k.nach.name);
    if (von === undefined || nach === undefined) continue;
    const a = objektGruppe.children[von].position;
    const b = objektGruppe.children[nach].position;
    const geo = new THREE.BufferGeometry();
    geo.setAttribute('position', new THREE.Float32BufferAttribute(
      [a.x, a.y, a.z, b.x, b.y, b.z], 3));
    const linie = new THREE.Line(geo, new THREE.LineBasicMaterial({
      color: 0xf0d060, transparent: true,
      // "erreicht" ist am Triggernetz hart belegt, "folge" nur eine
      // Taskkey-/Ebenen-Heuristik -- die weiche Kante ist blasser.
      opacity: k.art === 'erreicht' ? 0.6 : 0.35,
      depthWrite: false }));
    linie.renderOrder = 3;
    wegpunktGruppe.add(linie);
    wegpunktLinien.push({ linie, von, nach });
  }
  szene.add(wegpunktGruppe);
}

// Beim Verschieben ziehen die anliegenden Linien live nach --
// gerufen aus objektSetzen(), demselben Pfad, der auch die Raute
// versetzt. Ohne Index werden alle Linien nachgezogen (Verwerfen).
function wegpunktLinienNachfuehren(index) {
  if (!objektGruppe) return;
  for (const l of wegpunktLinien) {
    if (index !== undefined && l.von !== index && l.nach !== index) {
      continue;
    }
    const a = objektGruppe.children[l.von];
    const b = objektGruppe.children[l.nach];
    if (!a || !b) continue;
    const p = l.linie.geometry.attributes.position;
    p.setXYZ(0, a.position.x, a.position.y, a.position.z);
    p.setXYZ(1, b.position.x, b.position.y, b.position.z);
    p.needsUpdate = true;
    l.linie.geometry.computeBoundingSphere();
  }
}

// ------------------------------------------------------- Kamerafahrt
function hinfliegen(ziel, dauer = 700) {
  if (!ziel) return;
  // Der Abstand richtet sich nach der Groesse des Objekts, damit
  // ein Pfeiler nicht genauso weit weg steht wie eine Station.
  const box = new THREE.Box3().setFromObject(ziel);
  const mitte = box.getCenter(new THREE.Vector3());
  const groesse = box.getSize(new THREE.Vector3());
  const spanne = Math.max(groesse.x, groesse.y, groesse.z, 20);
  const abstand = spanne * 2.4;

  // Die Blickrichtung beibehalten, nur naeher heran -- so bleibt
  // die Orientierung erhalten.
  const richtung = kamera.position.clone()
    .sub(steuerung.target).normalize();
  if (richtung.lengthSq() < 0.001) richtung.set(1, 0.7, 1).normalize();

  flug = {
    vonKamera: kamera.position.clone(),
    vonZiel: steuerung.target.clone(),
    nachKamera: mitte.clone().add(
      richtung.multiplyScalar(abstand).add(
        new THREE.Vector3(0, spanne * 0.35, 0))),
    nachZiel: mitte,
    start: performance.now(),
    dauer,
  };
  marken.forEach((m) => {
    m.el.style.textDecoration = (m.netz === ziel) ? 'underline' : 'none';
  });
}

function flugFortsetzen() {
  if (!flug) return;
  const t = Math.min(1, (performance.now() - flug.start) / flug.dauer);
  // Weiche Ein- und Ausblendung, damit die Fahrt nicht ruckt.
  const s = t < 0.5 ? 2 * t * t : 1 - Math.pow(-2 * t + 2, 2) / 2;
  kamera.position.lerpVectors(flug.vonKamera, flug.nachKamera, s);
  steuerung.target.lerpVectors(flug.vonZiel, flug.nachZiel, s);
  steuerung.update();
  if (t >= 1) flug = null;
}

function markenNachfuehren() {
  if (!marken.length) return;
  const v = new THREE.Vector3();
  for (const m of marken) {
    v.setFromMatrixPosition(m.netz.matrixWorld);
    v.project(kamera);
    const sichtbar = v.z < 1;
    m.el.style.display = sichtbar ? 'block' : 'none';
    if (!sichtbar) continue;
    m.el.style.left = ((v.x * 0.5 + 0.5) * window.innerWidth) + 'px';
    m.el.style.top  = ((-v.y * 0.5 + 0.5) * window.innerHeight) + 'px';
  }
}

// ------------------------------------------------------------ Stimmung
function stimmungSetzen(s, weite) {
  const nebel = new THREE.Color(s.nebel || '#5a6a78');
  szene.background = nebel;

  // *** Der Nebel ist standardmaessig AUS. ***
  // fog.des nennt fuer 1h1 eine Sichtweite von 500 Einheiten -- im
  // Spiel richtig, fuer eine Uebersicht aber unbrauchbar: die Karte
  // ist 8192 Einheiten breit, es waere also fast alles verdeckt.
  // Wer die Stimmung sehen will, schaltet ihn zu; der Regler geht
  // dann von der echten Sichtweite bis zur ganzen Karte.
  if (nebelAn) {
    const w = nebelWeite || (s.sicht || 900);
    szene.fog = new THREE.Fog(nebel, w * 0.25, w);
  } else {
    szene.fog = null;
  }

  szene.children
    .filter(k => k.isLight)
    .forEach(k => szene.remove(k));
  szene.add(new THREE.AmbientLight(new THREE.Color(s.ambient || '#8899aa'), 1.6));
  const sonne = new THREE.DirectionalLight(
    new THREE.Color(s.sonne || '#ffffff'), 1.1);
  sonne.position.set(1, 2, 1).multiplyScalar(weite || 1000);
  szene.add(sonne);
}

// -------------------------------------------------------------- Gitter
function gitterSetzen(weite) {
  if (gitter) { szene.remove(gitter); gitter = null; }
  const n = Math.max(400, Math.round(weite || 1000));
  gitter = new THREE.GridHelper(n, 20, 0x445566, 0x223344);
  gitter.position.y = -0.5;
  szene.add(gitter);
  if (achsen) achsen.scale.setScalar(Math.max(1, n / 400));
}

// ------------------------------------------------------------ Anzeigen
function szeneSetzen(daten) {
  letzteSzene = daten;
  laden.style.display = 'none';
  const t = daten.terrain;

  const masse = terrainBauen(t, daten.textur);
  const weite = masse ? masse.weite : 1000;
  letzteWeite = weite;
  stimmungSetzen(daten.stimmung, weite);
  gitterSetzen(weite);
  const mitModell = objekteBauen(daten.objekte, daten.meshes,
                                 daten.meshbilder);
  // Die Verbindungslinien der Wegpunkt-Kette -- nach den Objekten,
  // weil sie deren Positionen brauchen. Karten ohne erkennbare
  // Kette liefern eine leere Liste: dann gibt es KEINE Linien.
  wegpunktLinienBauen(daten);
  // Die nativen OSD-Lichter der Karte -- read-only, siehe
  // nativLichterBauen(). Neu gebaut je Karte, also frisch sichtbar.
  nativLichterBauen(daten.nativ_lichter);
  wasserBauen(daten.wasser, masse);
  // Die Wrapper-Lichter sind kartenunabhaengig und bleiben beim
  // Kartenwechsel stehen -- nur die Mesh-Einzelansicht blendet sie
  // aus, hier kommen sie wieder.
  if (lichterGruppe) lichterGruppe.visible = true;

  if (masse) {
    // Auf die MITTE der Karte blicken, nicht auf den Nullpunkt --
    // die Karte liegt bei 0..weite, ihre Mitte also bei weite/2.
    const [mx, mz] = masse.mitte || [0, 0];
    steuerung.target.set(mx, (masse.min + masse.max) / 2, mz);
    kamera.position.set(mx + weite * 0.55,
                        masse.max + weite * 0.45,
                        mz + weite * 0.55);
    steuerung.update();
  }

  const k = t.kennzahlen || {};
  kopf.innerHTML =
    `<h1>${daten.level}</h1><div class="z">` +
    (t.originalbreite
      ? `Hoehenkarte ${t.originalbreite} x ${t.originalhoehe}, ` +
        `Werte ${k.min}..${k.max}<br>` +
        `dargestellt ${t.breite} x ${t.hoehe} (jeder ${t.schritt}. Punkt)<br>`
      : 'kein Terrain gefunden<br>') +
    (daten.terrainordner && daten.terrainordner !== daten.level
      ? `Terrain geliehen von <b>${daten.terrainordner}</b><br>` : '') +
    `Objekte: ${daten.objekte.length}` +
    (mitModell ? `, davon ${mitModell} mit Modell` : '') + `<br>` +
    `Stimmung: ${daten.stimmung.quelle === 'fog.des'
        ? 'aus fog.des' : 'Vorschau (nicht gemessen)'}` +
    `</div>`;

  const zweifel = [];
  if (t.skalierung && t.skalierung.guete !== 'sicher')
    zweifel.push(`Hoehenskalierung: ${t.skalierung.guete} â€” ${t.skalierung.grund}`);
  if (daten.stimmung.quelle !== 'fog.des')
    zweifel.push('Lichtstimmung ist eine Vorschau, keine Messung.');
  (daten.hinweise || []).forEach(h => zweifel.push(h));
  (daten.offen || []).forEach(h => zweifel.push(h));

  if (zweifel.length) {
    warnung.style.display = 'block';
    warnung.innerHTML = '<b>Unsicher oder offen</b><ul>' +
      zweifel.map(z => `<li>${z}</li>`).join('') + '</ul>';
  } else {
    warnung.style.display = 'none';
  }
}

function meldung(text) {
  laden.style.display = 'flex';
  laden.textContent = text;
}

// ------------------------------------------------------- Einzelmesh
let meshNetz = null;

function meshZeigen(daten) {
  // Alles Bisherige raeumen -- hier wird ein einzelnes Modell
  // betrachtet, keine Karte.
  [terrainNetz, objektGruppe, gitter, meshNetz].forEach((o) => {
    if (o) szene.remove(o);
  });
  terrainNetz = objektGruppe = null;
  marken.forEach((m) => m.el.remove());
  marken = [];
  laden.style.display = 'none';
  // Unsichtbare Lichter leuchten in three.js auch nicht -- das
  // Einzelmesh soll seine eigene Studiobeleuchtung behalten.
  if (lichterGruppe) lichterGruppe.visible = false;
  // Die Wegpunkt-Linien gehoeren zur Karte, nicht zum Einzelmesh.
  if (wegpunktGruppe) wegpunktGruppe.visible = false;
  // Ebenso die nativen OSD-Lichter -- sie haengen an den
  // Objektinstanzen der Karte, nicht am einzelnen Modell.
  if (nativGruppe) nativGruppe.visible = false;

  if (daten.fehler) {
    kopf.innerHTML = `<h1>Fehler</h1><div class="z">${daten.fehler}</div>`;
    return;
  }
  const m = daten.mesh;
  const geo = new THREE.BufferGeometry();
  geo.setAttribute('position',
    new THREE.Float32BufferAttribute(m.position, 3));
  if (m.normale && m.normale.length === m.position.length) {
    geo.setAttribute('normal',
      new THREE.Float32BufferAttribute(m.normale, 3));
  }
  if (m.uv && m.uv.length) {
    geo.setAttribute('uv', new THREE.Float32BufferAttribute(m.uv, 2));
  }
  if (m.indizes && m.indizes.length) geo.setIndex(m.indizes);
  if (!m.normale || m.normale.length !== m.position.length) {
    geo.computeVertexNormals();
  }

  // Je Block ein eigenes Material: ein .msb traegt je Block eine
  // andere Textur (ent_jumpstar.msb hat zwoelf). three.js zeichnet
  // das ueber Gruppen -- geometry.addGroup(start, anzahl, index).
  const lader = new THREE.TextureLoader();
  const bilder = daten.bilder || {};
  const materialien = [];
  const nachName = new Map();

  function materialFuer(name) {
    if (nachName.has(name)) return nachName.get(name);
    const m = new THREE.MeshLambertMaterial({
      color: 0xb8c4cc, side: THREE.DoubleSide });
    const b = bilder[name];
    if (b && b.bild) {
      m.map = lader.load(b.bild, () => { m.needsUpdate = true; });
      m.map.colorSpace = THREE.SRGBColorSpace;
      // Meshtexturen kacheln immer -- das Byte fuer den Adressmodus
      // setzt die Engine auf WRAP und aendert es nie (Handoff v124).
      m.map.wrapS = m.map.wrapT = THREE.RepeatWrapping;
      m.color.set(0xffffff);
    }
    const i = materialien.length;
    materialien.push(m);
    nachName.set(name, i);
    return i;
  }

  const gruppen = m.gruppen || [];
  if (gruppen.length) {
    for (const g of gruppen) {
      geo.addGroup(g.start, g.anzahl, materialFuer(g.textur || ''));
    }
  } else {
    materialFuer('');
  }

  meshNetz = new THREE.Mesh(geo, materialien.length === 1
    ? materialien[0] : materialien);
  szene.add(meshNetz);

  const bb = daten.bbox;
  const mitte = new THREE.Vector3((bb[0] + bb[3]) / 2,
                                  (bb[1] + bb[4]) / 2,
                                  (bb[2] + bb[5]) / 2);
  const w = daten.weite || 100;
  szene.background = new THREE.Color('#141c22');
  szene.fog = null;
  szene.children.filter((k) => k.isLight).forEach((k) => szene.remove(k));
  szene.add(new THREE.AmbientLight(0x8090a0, 1.8));
  const l1 = new THREE.DirectionalLight(0xffffff, 1.4);
  l1.position.set(w, w * 1.5, w);
  szene.add(l1);
  const l2 = new THREE.DirectionalLight(0x6080a0, 0.7);
  l2.position.set(-w, -w * 0.5, -w);
  szene.add(l2);

  gitter = new THREE.GridHelper(Math.max(20, w * 2), 20, 0x445566, 0x223344);
  gitter.position.y = bb[1];
  szene.add(gitter);
  if (achsen) achsen.scale.setScalar(Math.max(0.05, w / 200));

  kamera.position.set(mitte.x + w, mitte.y + w * 0.7, mitte.z + w);
  steuerung.target.copy(mitte);
  steuerung.update();

  const k = daten.kennzahlen;
  kopf.innerHTML =
    `<h1>${daten.pfad.split('/').pop()}</h1><div class="z">` +
    `${k.bloecke} Bloecke, ${k.eckpunkte} Eckpunkte, ` +
    `${k.dreiecke} Dreiecke<br>` +
    `Masse ${(bb[3] - bb[0]).toFixed(1)} x ${(bb[4] - bb[1]).toFixed(1)}` +
    ` x ${(bb[5] - bb[2]).toFixed(1)}<br>` +
    `${k.texturen.length} Texturen, ${Object.keys(bilder).length} ` +
    `aufgelegt<br>` +
    `${(m.gruppen || []).length} Materialgruppen` +
    `</div>`;

  const zweifel = (daten.hinweise || []).concat(daten.offen || []);
  warnung.style.display = zweifel.length ? 'block' : 'none';
  warnung.innerHTML = '<b>Hinweise</b><ul>' +
    zweifel.map((z) => `<li>${z}</li>`).join('') + '</ul>';
  letzteSzene = null;
}

// ----------------------------------------------------------- Auswahl
//
// *** DIE OBJEKTIDENTITAET IST DER VARIABLENNAME. *** Nicht der
// Knotenname -- in 1h1 gibt es 349 Node_CreateNode, aber nur 258
// verschiedene Namen. Body_SetCS adressiert ueber die Variable
// (node8), und genau die muss eine Aenderung spaeter nennen.
let gewaehltesObjekt = null;      // { index, netz, daten }
const aenderungen = new Map();    // Variable -> {position, drehung}
let rahmen = null;

const strahlwerfer = new THREE.Raycaster();
const mausNdc = new THREE.Vector2();

function objektUnterMaus(ereignis) {
  if (!objektGruppe) return null;
  const r = renderer.domElement.getBoundingClientRect();
  mausNdc.x = ((ereignis.clientX - r.left) / r.width) * 2 - 1;
  mausNdc.y = -((ereignis.clientY - r.top) / r.height) * 2 + 1;
  strahlwerfer.setFromCamera(mausNdc, kamera);
  // true = auch Kinderteile treffen (ein Geschuetzturm besteht aus
  // mehreren Meshes); von dort zum Elternobjekt hochlaufen.
  const treffer = strahlwerfer.intersectObjects(
    objektGruppe.children, true);
  if (!treffer.length) return null;
  let n = treffer[0].object;
  while (n && n.parent !== objektGruppe) n = n.parent;
  if (!n) return null;
  const i = objektGruppe.children.indexOf(n);
  return i < 0 ? null : i;
}

// Hervorhebung ueber einen RAHMEN, nicht ueber Materialtausch: die
// Materialien sind zwischen Objekten geteilt, ein Tausch faerbte
// alle Vorkommen desselben Modells ein.
function hervorheben(netz) {
  if (rahmen) { szene.remove(rahmen); rahmen = null; }
  if (!netz) return;
  rahmen = new THREE.BoxHelper(netz, 0x7fd0ff);
  rahmen.renderOrder = 5;
  szene.add(rahmen);
}

function zustandDesObjekts() {
  if (!gewaehltesObjekt) return null;
  const { index, daten } = gewaehltesObjekt;
  const kennung = daten.var || daten.name;
  const ae = aenderungen.get(kennung);
  return {
    index,
    name: daten.name,
    variable: daten.var || null,
    art: daten.art,
    osd: daten.osd || '',
    mesh: daten.mesh || '',
    // Werte in AQUANOX-Achsen, wie sie im Skript stehen.
    position: daten.position,
    drehung: daten.drehung,
    // Nur Wegpunkte haben einen (WayPoint_SetRadius).
    radius: (daten.radius === undefined) ? null : daten.radius,
    ursprung: ae ? ae.ursprung : null,
    geaendert: !!ae,
    teile: (daten.teile || []).length,
  };
}

// ------------------------------------------- Wegpunkt-Schaltradius
//
// Die Drahtkugel zeigt den Radius aus WayPoint_SetRadius am gerade
// GEWAEHLTEN Wegpunkt -- staendig eingeblendet laege sie bei drei
// Wegpunkten mit 350er-Radius wie ein Vorhang ueber der Karte.
let radiusKugel = null;

function radiusKugelZeigen(netz, daten) {
  if (radiusKugel) {
    szene.remove(radiusKugel);
    radiusKugel.geometry.dispose();
    radiusKugel.material.dispose();
    radiusKugel = null;
  }
  if (!netz || !daten || daten.art !== 'wegpunkt' || !daten.radius) {
    return;
  }
  radiusKugel = new THREE.Mesh(
    new THREE.SphereGeometry(daten.radius, 24, 16),
    new THREE.MeshBasicMaterial({
      color: 0xa0a0ff, wireframe: true,
      transparent: true, opacity: 0.35 }));
  radiusKugel.position.copy(netz.position);
  szene.add(radiusKugel);
}

function auswaehlen(index) {
  gewaehltesObjekt = null;
  // Objekt- und Lichtauswahl schliessen einander aus -- Rahmen und
  // Anfasser gibt es nur einmal.
  gewaehltesLicht = null;
  hervorheben(null);
  if (index !== null && index !== undefined && objektGruppe
      && letzteSzene) {
    const netz = objektGruppe.children[index];
    const daten = letzteSzene.objekte[index];
    if (netz && daten) {
      gewaehltesObjekt = { index, netz, daten };
      hervorheben(netz);
    }
  }
  radiusKugelZeigen(gewaehltesObjekt ? gewaehltesObjekt.netz : null,
                    gewaehltesObjekt ? gewaehltesObjekt.daten : null);
  anfasserZeigen(gewaehltesObjekt ? gewaehltesObjekt.netz : null);
  if (typeof window.aqtkAuswahl === 'function') {
    window.aqtkAuswahl(JSON.stringify(zustandDesObjekts()));
  }
}

// Position/Drehung setzen -- in AquaNox-Achsen, wie im Skript.
// radius (optional) gilt nur fuer Wegpunkte und laeuft seit dem
// dritten Suchmuster (WayPoint_SetRadius in sco_position.py) wie
// die Position durch die Aenderungs-Map -- er wird also wirklich
// zurueckgeschrieben, nicht nur angezeigt.
function objektSetzen(index, position, drehung, radius) {
  if (!objektGruppe || !letzteSzene) return false;
  const netz = objektGruppe.children[index];
  const daten = letzteSzene.objekte[index];
  if (!netz || !daten) return false;

  const kennung = daten.var || daten.name;
  if (!aenderungen.has(kennung)) {
    // Den Ursprungszustand EINMAL sichern, bevor er ueberschrieben
    // wird -- sonst laesst sich nicht mehr sagen, was sich geaendert
    // hat. Der Radius gehoert dazu (null = Objekt hat keinen).
    aenderungen.set(kennung, {
      variable: daten.var || null, name: daten.name,
      ursprung: { position: daten.position.slice(),
                  drehung: (daten.drehung || [0, 0, 0]).slice(),
                  radius: (daten.radius === undefined)
                    ? null : daten.radius },
    });
  }
  if (position) {
    daten.position = position.slice(0, 3).map(Number);
    netz.position.copy(ausAquanox(daten.position));
  }
  if (drehung) {
    daten.drehung = drehung.slice(0, 3).map(Number);
    if (drehungAn) {
      netz.quaternion.setFromRotationMatrix(
        drehungAusAquanox(daten.drehung));
    }
  }
  if (radius !== undefined && radius !== null) {
    daten.radius = Number(radius);
  }
  const e = aenderungen.get(kennung);
  e.position = daten.position.slice();
  e.drehung = (daten.drehung || [0, 0, 0]).slice();
  e.radius = (daten.radius === undefined) ? null : daten.radius;
  if (gewaehltesObjekt && gewaehltesObjekt.index === index) {
    if (rahmen) {
      rahmen.setFromObject(netz);
      anfasserNachfuehren();
    }
    // Drahtkugel nachziehen -- neu bauen ist billiger als die
    // Geometrie zu skalieren, und es passiert nur beim Editieren.
    radiusKugelZeigen(netz, daten);
  }
  // Anliegende Wegpunkt-Linien ziehen live mit -- derselbe Pfad,
  // der auch die Raute versetzt.
  wegpunktLinienNachfuehren(index);
  markenNachfuehren();
  return true;
}

// Klick waehlt aus. Ein Klick ins Leere hebt die Auswahl auf.
// *** Nur wenn nicht geschwenkt wurde *** -- sonst waehlt jedes
// Drehen der Kamera versehentlich etwas aus.
let klickStart = null;
renderer_bereit(() => {
  const el = renderer.domElement;
  el.addEventListener('mousedown', (e) => {
    if (e.button !== 0) return;
    // *** Der Anfasser hat Vorrang vor der Auswahl. *** Sonst waehlt
    // ein Griff auf den Pfeil das Objekt dahinter aus.
    if (zugStarten(e)) { e.preventDefault(); return; }
    klickStart = { x: e.clientX, y: e.clientY };
  });
  window.addEventListener('mousemove', (e) => {
    if (ziehen) { zugFortsetzen(e); return; }
    // Zeigerform aendern, wenn ein Griff unter der Maus liegt.
    if (anfasser) el.style.cursor = anfasserGetroffen(e) ? 'move' : '';
  });
  window.addEventListener('mouseup', (e) => {
    if (ziehen) { zugBeenden(); return; }
    if (e.button !== 0 || !klickStart) return;
    const weit = Math.abs(e.clientX - klickStart.x)
               + Math.abs(e.clientY - klickStart.y);
    klickStart = null;
    if (weit > 4) return;              // war ein Schwenk
    // Die Lichtkugeln haben Vorrang: sie sind klein, und ein Licht
    // steht oft mitten in einem grossen Objekt.
    const li = lichtUnterMaus(e);
    if (li !== null) { lichtAuswaehlen(li); return; }
    auswaehlen(objektUnterMaus(e));
  });
});

function renderer_bereit(f) {
  if (renderer && renderer.domElement) f();
  else setTimeout(() => renderer_bereit(f), 50);
}

// ----------------------------------------------------------- Anfasser
//
// *** SELBST GESCHRIEBEN, weil TransformControls nicht im Bundle
// liegt *** -- three.module.js r169 bringt BoxHelper, Raycaster und
// ArrowHelper mit, aber keine Transform- oder DragControls. Ein
// eigener Anfasser braucht rund 120 Zeilen und hat den Vorteil, dass
// er die AquaNox-Achsen beschriften kann statt der von three.js.
//
// DIE ACHSEN SIND VERTAUSCHT: three.js y ist die Hoehe, in AquaNox
// ist es z. Die Pfeile heissen deshalb nach AquaNox (X, Y, Z=Hoehe),
// zeigen aber in three.js-Richtungen.
const ANFASSER_ACHSEN = [
  // [three.js-Richtung, AquaNox-Index, Farbe, Beschriftung]
  [new THREE.Vector3(1, 0, 0), 0, 0xff5555, 'X'],
  [new THREE.Vector3(0, 0, 1), 1, 0x55ff55, 'Y'],
  [new THREE.Vector3(0, 1, 0), 2, 0x5599ff, 'Z'],
];

let anfasser = null;          // THREE.Group mit den drei Pfeilen
let ziehen = null;            // laufende Zugbewegung

function anfasserZeigen(netz) {
  if (anfasser) { szene.remove(anfasser); anfasser = null; }
  if (!netz) return;
  const box = new THREE.Box3().setFromObject(netz);
  const g = box.getSize(new THREE.Vector3());
  // Die Pfeile sollen zum Objekt passen, aber nie winzig werden.
  const laenge = Math.max(40, Math.max(g.x, g.y, g.z) * 0.9);

  anfasser = new THREE.Group();
  ANFASSER_ACHSEN.forEach(([richtung, achse, farbe], i) => {
    const pfeil = new THREE.ArrowHelper(
      richtung, new THREE.Vector3(0, 0, 0), laenge, farbe,
      laenge * 0.22, laenge * 0.12);
    // Der duenne Schaft ist kaum zu treffen -- ein unsichtbarer
    // Zylinder daneben faengt die Klicks.
    const griff = new THREE.Mesh(
      new THREE.CylinderGeometry(laenge * 0.09, laenge * 0.09, laenge, 6),
      new THREE.MeshBasicMaterial({ visible: false }));
    griff.position.copy(richtung).multiplyScalar(laenge / 2);
    if (achse === 0) griff.rotation.z = -Math.PI / 2;
    if (achse === 1) griff.rotation.x = Math.PI / 2;
    griff.userData.achse = achse;
    griff.userData.richtung = richtung;
    anfasser.add(pfeil);
    anfasser.add(griff);
  });
  anfasser.position.copy(netz.position);
  anfasser.renderOrder = 6;
  szene.add(anfasser);
}

function anfasserNachfuehren() {
  if (anfasser && gewaehltesObjekt) {
    anfasser.position.copy(gewaehltesObjekt.netz.position);
  }
}

function anfasserGetroffen(ereignis) {
  if (!anfasser) return null;
  const r = renderer.domElement.getBoundingClientRect();
  mausNdc.x = ((ereignis.clientX - r.left) / r.width) * 2 - 1;
  mausNdc.y = -((ereignis.clientY - r.top) / r.height) * 2 + 1;
  strahlwerfer.setFromCamera(mausNdc, kamera);
  const t = strahlwerfer.intersectObjects(anfasser.children, false);
  for (const x of t) {
    if (x.object.userData.achse !== undefined) return x.object.userData;
  }
  return null;
}

// Die Mausbewegung auf die gewaehlte Achse projizieren: eine Ebene
// durch das Objekt legen, die moeglichst senkrecht zur Kamera steht,
// den Strahl darauf schneiden und den Anteil entlang der Achse nehmen.
function zugPunkt(ereignis, richtung, ursprung) {
  const r = renderer.domElement.getBoundingClientRect();
  mausNdc.x = ((ereignis.clientX - r.left) / r.width) * 2 - 1;
  mausNdc.y = -((ereignis.clientY - r.top) / r.height) * 2 + 1;
  strahlwerfer.setFromCamera(mausNdc, kamera);

  const blick = new THREE.Vector3();
  kamera.getWorldDirection(blick);
  // Normale der Zugebene: senkrecht zur Achse, so gut es geht zur
  // Kamera gewandt.
  const n = new THREE.Vector3().crossVectors(
    richtung, new THREE.Vector3().crossVectors(blick, richtung));
  if (n.lengthSq() < 1e-8) n.copy(blick);
  n.normalize();

  const ebene = new THREE.Plane().setFromNormalAndCoplanarPoint(
    n, ursprung);
  const treffer = new THREE.Vector3();
  if (!strahlwerfer.ray.intersectPlane(ebene, treffer)) return null;
  // Nur der Anteil entlang der Achse zaehlt.
  return treffer.sub(ursprung).dot(richtung);
}

function zugStarten(ereignis) {
  const griff = anfasserGetroffen(ereignis);
  // Der Anfasser gehoert entweder einem Objekt oder einem Licht --
  // beide ziehen ueber dieselben Pfeile.
  const ziel = gewaehltesLicht || gewaehltesObjekt;
  if (!griff || !ziel) return false;
  const ursprung = ziel.netz.position.clone();
  const t = zugPunkt(ereignis, griff.richtung, ursprung);
  if (t === null) return false;
  const licht = !!gewaehltesLicht;
  ziehen = {
    achse: griff.achse, richtung: griff.richtung.clone(),
    ursprung, anfang: t,
    licht,
    startwert: licht
      ? [lichterDaten[ziel.index].x, lichterDaten[ziel.index].y,
         lichterDaten[ziel.index].z]
      : gewaehltesObjekt.daten.position.slice(),
    index: ziel.index,
  };
  steuerung.enabled = false;      // sonst dreht die Kamera mit
  return true;
}

function zugFortsetzen(ereignis) {
  if (!ziehen) return;
  const t = zugPunkt(ereignis, ziehen.richtung, ziehen.ursprung);
  if (t === null) return;
  const delta = t - ziehen.anfang;
  const neu = ziehen.startwert.slice();
  neu[ziehen.achse] = ziehen.startwert[ziehen.achse] + delta;
  if (ziehen.licht) {
    lichtSetzen(ziehen.index, { position: neu });
  } else {
    objektSetzen(ziehen.index, neu, null);
    anfasserNachfuehren();
  }
}

function zugBeenden() {
  if (!ziehen) return;
  ziehen = null;
  steuerung.enabled = true;
  if (typeof window.aqtkAuswahl === 'function') {
    window.aqtkAuswahl(JSON.stringify(zustandDesObjekts()));
  }
}

// ------------------------------------------- Wrapper-Lichtquellen
//
// mod_docu\lichter.txt -- EINE Datei fuers ganze Spiel, gelesen vom
// d3d8-Wrapper (nur mit AQUANOX_LICHTER=1). Je Zeile ein PointLight
// (Distanz = Radius, decay 2) plus eine kleine Leuchtkugel als
// Anfasser. *** Aenderungen laufen in eine EIGENE Map
// (lichtAenderungen), NICHT in aenderungen: *** dort wuerden sie
// beim Einspielen sco_position als angebliche Skriptvariablen
// begegnen -- und Lichter stehen in keinem Skript.
let lichterGruppe = null;             // je Licht ein Group(Punkt, Kugel)
let lichterDaten = [];                // die Liste, wie sie Python schickte
const lichtAenderungen = new Map();   // Index -> {ursprung, neu}
let gewaehltesLicht = null;           // { index, netz }

function lichterBauen(liste) {
  if (lichterGruppe) {
    szene.remove(lichterGruppe);
    lichterGruppe.traverse((k) => {
      if (k.geometry) k.geometry.dispose();
      if (k.material) k.material.dispose();
    });
    lichterGruppe = null;
  }
  if (gewaehltesLicht) {
    gewaehltesLicht = null;
    hervorheben(null);
    anfasserZeigen(null);
  }
  lichterDaten = liste || [];
  lichtAenderungen.clear();
  if (!lichterDaten.length) return;

  lichterGruppe = new THREE.Group();
  lichterDaten.forEach((l, i) => {
    const traeger = new THREE.Group();
    const farbe = new THREE.Color(l.r, l.g, l.b);
    // decay 2 wie ein physisches Punktlicht; distance kappt bei
    // seinem Radius -- dasselbe Modell wie 1/R^2 im Wrapper.
    const punkt = new THREE.PointLight(farbe, l.intensitaet || 1,
                                       l.radius || 0, 2);
    traeger.add(punkt);
    // Die Kugel ist der Anfasser; MeshBasic leuchtet von selbst,
    // ein eigenes Material je Licht, damit das Pulsieren nicht
    // alle faerbt.
    const kugel = new THREE.Mesh(
      new THREE.SphereGeometry(8, 12, 8),
      new THREE.MeshBasicMaterial({ color: farbe.clone() }));
    kugel.userData.lichtIndex = i;
    kugel.userData.basisfarbe = farbe.clone();
    traeger.add(kugel);
    traeger.position.copy(ausAquanox([l.x, l.y, l.z]));
    lichterGruppe.add(traeger);
  });
  szene.add(lichterGruppe);
}

// Puls und Blinken -- je Frame aus zeichnen() gerufen. Der
// Phasenversatz ist der des Wrappers: index * 357 ms.
function lichterAnimieren() {
  if (!lichterGruppe) return;
  const t = performance.now();
  lichterDaten.forEach((l, i) => {
    const traeger = lichterGruppe.children[i];
    if (!traeger) return;
    const punkt = traeger.children[0];
    const kugel = traeger.children[1];
    let f = 1;
    if (l.modus === 1 || l.modus === 2) {
      const periode = Math.max(50, l.periode_ms || 1500);
      const ph = (t + i * 357) / periode;
      // modus 1: Sinus zwischen 0 und 1; modus 2: halbe Periode an,
      // halbe aus (die Kugel bleibt schwach sichtbar, sonst ist das
      // Licht beim Aus nicht mehr anklickbar).
      f = (l.modus === 1)
        ? 0.5 + 0.5 * Math.sin(ph * 2 * Math.PI)
        : ((ph % 1) < 0.5 ? 1 : 0);
    }
    punkt.intensity = (l.intensitaet || 1) * f;
    if (kugel.userData.basisfarbe) {
      kugel.material.color.copy(kugel.userData.basisfarbe)
        .multiplyScalar(0.25 + 0.75 * f);
    }
  });
}

function lichtUnterMaus(ereignis) {
  if (!lichterGruppe) return null;
  const r = renderer.domElement.getBoundingClientRect();
  mausNdc.x = ((ereignis.clientX - r.left) / r.width) * 2 - 1;
  mausNdc.y = -((ereignis.clientY - r.top) / r.height) * 2 + 1;
  strahlwerfer.setFromCamera(mausNdc, kamera);
  const treffer = strahlwerfer.intersectObjects(
    lichterGruppe.children, true);
  for (const x of treffer) {
    if (x.object.userData.lichtIndex !== undefined) {
      return x.object.userData.lichtIndex;
    }
  }
  return null;
}

function lichtAuswaehlen(index) {
  // Objekt abwaehlen -- Rahmen und Anfasser gehoeren dann dem Licht.
  auswaehlen(null);
  gewaehltesLicht = null;
  if (index !== null && index !== undefined && lichterGruppe
      && lichterGruppe.children[index]) {
    const netz = lichterGruppe.children[index];
    gewaehltesLicht = { index, netz };
    hervorheben(netz);
    anfasserZeigen(netz);
  }
}

// Werte eines Lichts aendern -- Position in AquaNox-Achsen, alle
// uebrigen Felder wie in der Datei (r, g, b, intensitaet, radius,
// modus, periode_ms). Der Ursprung wird EINMAL gesichert.
function lichtSetzen(index, werte) {
  const l = lichterDaten[index];
  const traeger = lichterGruppe ? lichterGruppe.children[index] : null;
  if (!l || !traeger || !werte) return false;
  if (!lichtAenderungen.has(index)) {
    lichtAenderungen.set(index, { ursprung: Object.assign({}, l) });
  }
  if (werte.position) {
    l.x = Number(werte.position[0]);
    l.y = Number(werte.position[1]);
    l.z = Number(werte.position[2]);
    traeger.position.copy(ausAquanox([l.x, l.y, l.z]));
  }
  for (const k of ['r', 'g', 'b', 'intensitaet', 'radius',
                   'modus', 'periode_ms']) {
    if (werte[k] !== undefined && werte[k] !== null) l[k] = werte[k];
  }
  const punkt = traeger.children[0];
  const kugel = traeger.children[1];
  punkt.color.setRGB(l.r, l.g, l.b);
  punkt.intensity = l.intensitaet || 1;
  punkt.distance = l.radius || 0;
  kugel.userData.basisfarbe = new THREE.Color(l.r, l.g, l.b);
  const e = lichtAenderungen.get(index);
  e.neu = Object.assign({}, l);
  if (gewaehltesLicht && gewaehltesLicht.index === index) {
    if (rahmen) rahmen.setFromObject(traeger);
    if (anfasser) anfasser.position.copy(traeger.position);
  }
  return true;
}

function lichtZustand() {
  if (!gewaehltesLicht) return null;
  const i = gewaehltesLicht.index;
  const l = lichterDaten[i];
  if (!l) return null;
  return Object.assign({ index: i,
                         geaendert: lichtAenderungen.has(i) }, l);
}

// --------------------------------------------- Native OSD-Lichter
//
// nod_fx_light-Bloecke aus den Objekt-OSDs (662c) -- Python loest
// sie je INSTANZ auf und liefert sie als nativ_lichter mit fertiger
// Weltposition. *** READ-ONLY: *** eigene Gruppe, die KEIN
// Raycaster ansieht (objektUnterMaus prueft nur objektGruppe,
// lichtUnterMaus nur lichterGruppe) -- nicht anklickbar, nicht
// verschiebbar; Aendern geht nur in der OSD selbst. Der Marker ist
// ein kleiner DIAMANT mit flachem RING, damit er sich klar von den
// editierbaren Wrapper-Kugeln unterscheidet.
function nativLichterBauen(liste) {
  if (nativGruppe) {
    szene.remove(nativGruppe);
    nativGruppe.traverse((k) => {
      if (k.geometry) k.geometry.dispose();
      if (k.material) k.material.dispose();
    });
    nativGruppe = null;
  }
  nativDaten = liste || [];
  if (!nativDaten.length) return;

  nativGruppe = new THREE.Group();
  nativDaten.forEach((l) => {
    const traeger = new THREE.Group();
    const rgb = l.rgb || [1, 1, 1];
    const farbe = new THREE.Color(rgb[0], rgb[1], rgb[2]);
    // range = [r1, r2] aus [visual] -- r2 ist die Aussengrenze und
    // wird wie beim Wrapper als distance benutzt (decay 2).
    const weite = (l.range && l.range[1]) || 100;
    const punkt = new THREE.PointLight(farbe, 1.5, weite, 2);
    traeger.add(punkt);
    // Eigenes Material je Licht, damit das Blinken nicht alle
    // faerbt. KEIN userData.lichtIndex -- das ist der Marker der
    // editierbaren Lichter, und genau darueber waehlt
    // lichtUnterMaus aus.
    const diamant = new THREE.Mesh(
      new THREE.OctahedronGeometry(6),
      new THREE.MeshBasicMaterial({ color: farbe.clone() }));
    diamant.userData.basisfarbe = farbe.clone();
    traeger.add(diamant);
    const ring = new THREE.Mesh(
      new THREE.TorusGeometry(11, 0.9, 6, 24),
      new THREE.MeshBasicMaterial({ color: farbe.clone(),
        transparent: true, opacity: 0.7, depthWrite: false }));
    ring.rotation.x = Math.PI / 2;      // flach, wie ein Reifrock
    ring.userData.basisfarbe = farbe.clone();
    traeger.add(ring);
    traeger.position.copy(ausAquanox([l.x, l.y, l.z]));
    nativGruppe.add(traeger);
  });
  szene.add(nativGruppe);
}

// Blinken 0,5 s an / 0,5 s aus -- der Takt der OSD ([life] time 0.5
// am Vorlagen-Kind, spawn-delay 1.0). Je Frame aus zeichnen().
function nativAnimieren() {
  if (!nativGruppe) return;
  const f = (performance.now() % 1000) < 500 ? 1 : 0;
  nativDaten.forEach((l, i) => {
    const traeger = nativGruppe.children[i];
    if (!traeger || !l.blinkend) return;
    traeger.children[0].intensity = 1.5 * f;
    // Marker dimmen statt verstecken -- man soll ihn finden.
    for (const kind of [traeger.children[1], traeger.children[2]]) {
      if (kind && kind.userData.basisfarbe) {
        kind.material.color.copy(kind.userData.basisfarbe)
          .multiplyScalar(0.25 + 0.75 * f);
      }
    }
  });
}

// ------------------------------------------------- Bruecke nach Python
// QWebChannel wird von Qt eingespielt. Die Python-Seite ruft
// window.aqtk.szeneSetzen(...) ueber runJavaScript auf -- deshalb
// genuegt es, die Funktionen global bereitzustellen.
window.aqtk = {
  szeneSetzen,
  meshZeigen,
  meldung,
  drahtgitter: (an) => {
    if (terrainNetz) terrainNetz.material.wireframe = !!an;
    if (meshNetz) {
      const mm = Array.isArray(meshNetz.material)
        ? meshNetz.material : [meshNetz.material];
      mm.forEach((m) => { m.wireframe = !!an; });
    }
  },
  // 'farbe' | 'neigung' | 'aus'
  textur: (art) => {
    zeigeTextur = (art === 'aus') ? false : art;
    if (letzteSzene) szeneSetzen(letzteSzene);
  },
  licht: (an) => {
    zeigeLicht = !!an;
    if (letzteSzene) szeneSetzen(letzteSzene);
  },
  ueberhoehung: (faktor) => {
    if (letzteSzene) {
      letzteSzene.terrain.ueberhoehung = faktor;
      szeneSetzen(letzteSzene);
    }
  },
  stimmungWechseln: (s) => {
    if (letzteSzene) {
      letzteSzene.stimmung = Object.assign({}, letzteSzene.stimmung, s);
      szeneSetzen(letzteSzene);
    }
  },
  // --- Auswahl und Bearbeitung ---
  auswaehlen: (index) => { auswaehlen(index); },

  // *** DUPLIZIEREN LEGT NUR EINE ANSICHTSKOPIE AN. ***
  // Ein neuer Knoten braucht im Skript Node_CreateNode, Node_AddSon,
  // Body_SetCS und Node_ParseIniFile -- vier Zeilen, die der
  // Ausgabetext nennt. Die Kopie bekommt eine Kennung mit "neu",
  // damit sie sich von den vorhandenen unterscheidet.
  duplizieren: (index, versatz) => {
    if (!objektGruppe || !letzteSzene) return null;
    const netz = objektGruppe.children[index];
    const daten = letzteSzene.objekte[index];
    if (!netz || !daten) return null;
    const v = versatz || [50, 50, 0];
    const kopie = {
      ...daten,
      name: daten.name + '_kopie',
      var: null,                     // hat noch keine Skriptvariable
      neu: true,
      vorlage: daten.var || daten.name,
      // Parser-geladene Wegpunkte tragen KEIN klasse-Feld (nur
      // art='wegpunkt'). Ohne klasse schriebe sco_neu.quelltext()
      // das nod_generic-Muster (Body_SetCS) und verwuerfe den
      // Radius -- deshalb die Klasse hier aus der Art ableiten.
      klasse: daten.klasse ||
        (daten.art === 'wegpunkt' ? 'nod_waypoint' : null),
      position: [daten.position[0] + v[0], daten.position[1] + v[1],
                 daten.position[2] + v[2]],
      drehung: (daten.drehung || [0, 0, 0]).slice(),
    };
    letzteSzene.objekte.push(kopie);
    // Dieselbe Geometrie, dasselbe Material -- kein neuer Speicher.
    const n2 = new THREE.Mesh(netz.geometry, netz.material);
    n2.position.copy(ausAquanox(kopie.position));
    n2.quaternion.copy(netz.quaternion);
    for (const k of netz.children) {
      const kk = new THREE.Mesh(k.geometry, k.material);
      kk.position.copy(k.position);
      kk.quaternion.copy(k.quaternion);
      n2.add(kk);
    }
    objektGruppe.add(n2);
    const neuerIndex = objektGruppe.children.length - 1;
    auswaehlen(neuerIndex);
    return neuerIndex;
  },

  // *** EIN NEUES ASSET EINFUEGEN. ***
  // Python liefert Geometrie und Texturen fertig (level.py,
  // asset_geometrie); hier wird daraus ein Netz gebaut und an die
  // Stelle gesetzt, auf die die Kamera blickt.
  // extra: weitere Felder fuer den Szeneneintrag -- der Wegpunkt-
  // Knopf gibt hier {art, klasse, radius} mit, damit der Neuling
  // im Skripttext als nod_waypoint statt nod_generic erscheint.
  einfuegen: (paket, name, extra) => {
    if (!letzteSzene || !objektGruppe || !paket || paket.fehler) {
      return null;
    }
    // Die vorhandenen Meshes und Bilder ergaenzen, nicht ersetzen --
    // die Szene wird dabei nicht neu gebaut.
    Object.assign(letzteSzene.meshes, paket.meshes || {});
    letzteSzene.meshbilder = letzteSzene.meshbilder || {};
    Object.assign(letzteSzene.meshbilder, paket.bilder || {});

    // Vor der Kamera absetzen, auf Terrainhoehe wenn moeglich.
    const ziel = steuerung.target.clone();
    if (terrainNetz) {
      const s = new THREE.Raycaster(
        new THREE.Vector3(ziel.x, 100000, ziel.z),
        new THREE.Vector3(0, -1, 0));
      const t = s.intersectObject(terrainNetz, false);
      if (t.length) ziel.y = t[0].point.y;
    }
    // Zurueck in AquaNox-Achsen: three(x,y,z) -> aquanox(x,z,y)
    const position = [ziel.x, ziel.z, ziel.y];

    const eintrag = {
      name: name || (paket.osd || 'neu').split('/').pop()
                      .replace('.osd', '') + '_neu',
      var: null, neu: true, vorlage: null,
      art: 'objekt', osd: paket.osd || '',
      mesh: paket.mesh, teile: paket.teile || [],
      position, drehung: [0, 0, 0],
    };
    Object.assign(eintrag, extra || {});
    letzteSzene.objekte.push(eintrag);

    // *** Die Szene neu bauen. *** Ein Einzelnetz von Hand
    // zusammenzusetzen waere fehleranfaellig -- objekteBauen() kennt
    // Materialgruppen, Alphakanal und Kinderteile bereits.
    const merker = letzteSzene.objekte.length - 1;
    objekteBauen(letzteSzene.objekte, letzteSzene.meshes,
                 letzteSzene.meshbilder);
    auswaehlen(merker);
    return merker;
  },

  // Die neu angelegten Objekte -- getrennt von den verschobenen,
  // weil sie andere Skriptzeilen brauchen.
  neulinge: () => JSON.stringify(
    (letzteSzene ? letzteSzene.objekte : [])
      .map((o, i) => ({ ...o, index: i }))
      .filter((o) => o.neu)
      .map((o) => ({
        index: o.index, name: o.name, vorlage: o.vorlage,
        osd: o.osd || '', art: o.art,
        // Klasse und Radius braucht sco_neu.quelltext() -- ein
        // Wegpunkt bekommt sonst das nod_generic-Muster.
        klasse: o.klasse || null,
        radius: (o.radius === undefined) ? null : o.radius,
        position: o.position, drehung: o.drehung,
      }))),

  auswahl: () => JSON.stringify(zustandDesObjekts()),
  // Position und Drehung in AQUANOX-Achsen setzen; radius optional
  // (nur Wegpunkte) -- laeuft in die Aenderungs-Map und wird beim
  // Einspielen ueber das WayPoint_SetRadius-Muster gepatcht; die
  // Drahtkugel zieht sofort nach.
  setzen: (index, position, drehung, radius) =>
    objektSetzen(index, position, drehung, radius),

  // Alle Aenderungen als Liste -- Grundlage der Skriptausgabe.
  aenderungen: () => {
    const aus = [];
    for (const [kennung, e] of aenderungen) {
      // Nur melden, was sich wirklich unterscheidet.
      const gleich = (a, b) => a && b
        && Math.abs(a[0] - b[0]) < 1e-4 && Math.abs(a[1] - b[1]) < 1e-4
        && Math.abs(a[2] - b[2]) < 1e-4;
      // Der Radius zaehlt als eigene Aenderung (Wegpunkte). null im
      // Eintrag heisst fuer den Patcher "nicht anfassen" -- deshalb
      // wird er nur mitgegeben, wenn er sich wirklich unterscheidet.
      const rAlt = (e.ursprung.radius === undefined)
        ? null : e.ursprung.radius;
      const radiusAnders = (e.radius !== null && e.radius !== undefined
        && (rAlt === null || Math.abs(e.radius - rAlt) > 1e-4));
      if (gleich(e.position, e.ursprung.position)
          && gleich(e.drehung, e.ursprung.drehung)
          && !radiusAnders) continue;
      aus.push({
        kennung, variable: e.variable, name: e.name,
        position: e.position, drehung: e.drehung,
        alt_position: e.ursprung.position,
        alt_drehung: e.ursprung.drehung,
        radius: radiusAnders ? e.radius : null,
        alt_radius: rAlt,
      });
    }
    return JSON.stringify(aus);
  },
  aenderungenVerwerfen: () => {
    // Jedes geaenderte Objekt auf seinen Ursprung zuruecksetzen.
    for (const [, e] of aenderungen) {
      if (!letzteSzene) break;
      const i = letzteSzene.objekte.findIndex(
        (o) => (o.var || o.name) === (e.variable || e.name));
      if (i < 0) continue;
      const netz = objektGruppe.children[i];
      const daten = letzteSzene.objekte[i];
      daten.position = e.ursprung.position.slice();
      daten.drehung = e.ursprung.drehung.slice();
      // Auch den Radius zuruecknehmen -- null heisst: das Objekt
      // hatte nie einen, dann bleibt er unangetastet.
      if (e.ursprung.radius !== null && e.ursprung.radius !== undefined) {
        daten.radius = e.ursprung.radius;
      }
      if (netz) {
        netz.position.copy(ausAquanox(daten.position));
        if (drehungAn) {
          netz.quaternion.setFromRotationMatrix(
            drehungAusAquanox(daten.drehung));
        }
      }
    }
    aenderungen.clear();
    if (gewaehltesObjekt) auswaehlen(gewaehltesObjekt.index);
    wegpunktLinienNachfuehren();      // alle Linien zurueckziehen
    markenNachfuehren();
  },

  // Alle drei Drehachsen oder nur die Hochachse (zum Vergleichen).
  drehung: (an) => {
    drehungAn = !!an;
    if (letzteSzene) szeneSetzen(letzteSzene);
  },
  // Objekttexturen zu-/abschalten.
  meshtextur: (an) => {
    zeigeMeshtextur = !!an;
    if (letzteSzene) szeneSetzen(letzteSzene);
  },
  // Materialschichten zu-/abschalten und ihre Staerke regeln.
  detail: (an, staerke) => {
    detailAn = !!an;
    if (staerke !== undefined && staerke !== null) {
      detailStaerke = Math.max(0, Math.min(1, staerke));
    }
    // Die Staerke laesst sich ohne Neuaufbau aendern -- ein
    // Uniform genuegt. Das An/Aus baut den Shader neu, dafuer
    // muss die Szene noch einmal durch.
    if (aktiveUniforms && aktiveUniforms.aqStaerke && detailAn) {
      aktiveUniforms.aqStaerke.value = detailStaerke;
      return;
    }
    if (letzteSzene) szeneSetzen(letzteSzene);
  },
  wasser: (an) => {
    wasserAn = !!an;
    if (letzteSzene) szeneSetzen(letzteSzene);
  },
  nebel: (an, weite) => {
    nebelAn = !!an;
    // 0 heisst: viewingdistance aus fog.des nehmen -- die ECHTE
    // Sichtweite des Spiels (500 bei den meisten Karten, 128 bei
    // mp_13). stimmungSetzen() greift dafuer auf s.sicht zu.
    nebelWeite = weite || 0;
    if (letzteSzene) stimmungSetzen(letzteSzene.stimmung, letzteWeite);
  },
  // Zu einem Objekt fliegen -- ueber Variablenname ODER Anzeigenamen.
  // *** Die Variable zuerst: *** sie ist eindeutig (258 Namen auf
  // 349 Knoten in 1h1), der Name nur eine Beschriftung. Ausgewaehlt
  // wird mit, damit rechts gleich die Eigenschaften stehen -- so
  // springt der Knopf "Zum Player Start" direkt ins Bearbeiten.
  zuObjekt: (kennung) => {
    if (!objektGruppe || !letzteSzene) return false;
    let i = letzteSzene.objekte.findIndex((o) => o.var === kennung);
    if (i < 0) {
      i = letzteSzene.objekte.findIndex((o) => o.name === kennung);
    }
    if (i < 0 || !objektGruppe.children[i]) return false;
    auswaehlen(i);
    hinfliegen(objektGruppe.children[i]);
    return true;
  },
  // --- Wrapper-Lichtquellen (mod_docu\lichter.txt) ---
  // Die ganze Liste setzen (beim Laden, Einfuegen, Loeschen).
  lichterSetzen: (liste) => { lichterBauen(liste); },
  // Die Aenderungen aus dem Ziehen -- EIGENE Map, damit sie nie
  // mit den Skript-Objekten in einen Topf geraten. Python holt
  // sie vor dem Speichern ab und schreibt die Datei komplett neu.
  lichterAenderungen: () => {
    const aus = [];
    for (const [index, e] of lichtAenderungen) {
      aus.push({ index, ursprung: e.ursprung, neu: e.neu || null });
    }
    return JSON.stringify(aus);
  },
  // Der gewaehlte Lichteintrag fuer das Eigenschaftenfenster --
  // wird wie auswahl() im 200-ms-Takt abgefragt.
  lichtAuswahl: () => JSON.stringify(lichtZustand()),
  lichtAuswaehlen: (index) => { lichtAuswaehlen(index); },
  // Einzelne Felder eines Lichts setzen (Spinboxen, Farbdialog).
  lichtSetzen: (index, werte) => lichtSetzen(index, werte),

  // Pruefung: stehen die Objekte wirklich auf dem Terrain?
  // Von jedem Objekt aus ein Strahl nach unten und nach oben. Wer
  // die Weltabbildung aendert, sieht hier sofort, ob sie noch
  // stimmt -- daneben liegende Objekte treffen gar nicht erst.
  bodenprobe: () => {
    if (!terrainNetz || !objektGruppe) return { fehler: 'nichts geladen' };
    const strahl = new THREE.Raycaster();
    const runter = new THREE.Vector3(0, -1, 0);
    const rauf = new THREE.Vector3(0, 1, 0);
    const box = new THREE.Box3().setFromObject(terrainNetz);
    const abst = [];
    let treffer = 0, daneben = 0;
    for (const k of objektGruppe.children) {
      const p = k.position;
      let d = null;
      strahl.set(new THREE.Vector3(p.x, p.y, p.z), runter);
      let s = strahl.intersectObject(terrainNetz, false);
      if (s.length) d = s[0].distance;
      else {
        strahl.set(new THREE.Vector3(p.x, p.y, p.z), rauf);
        s = strahl.intersectObject(terrainNetz, false);
        if (s.length) d = -s[0].distance;
      }
      if (d === null) daneben++; else { treffer++; abst.push(d); }
    }
    abst.sort((a, b) => a - b);
    const betr = abst.map(Math.abs).sort((a, b) => a - b);
    return {
      objekte: objektGruppe.children.length,
      terrainGetroffen: treffer, danebenGelegen: daneben,
      ueberGrund: abst.filter((x) => x >= -5).length,
      median: abst.length ? Math.round(abst[abst.length >> 1]) : null,
      medianBetrag: betr.length ? Math.round(betr[betr.length >> 1]) : null,
      terrainVon: [Math.round(box.min.x), Math.round(box.min.z)],
      terrainBis: [Math.round(box.max.x), Math.round(box.max.z)],
    };
  },
  // Auf das ganze Level zurueckzoomen.
  uebersicht: () => {
    if (!letzteSzene || !terrainNetz) return;
    const box = new THREE.Box3().setFromObject(terrainNetz);
    const mitte = box.getCenter(new THREE.Vector3());
    const g = box.getSize(new THREE.Vector3());
    const w = Math.max(g.x, g.z, 100);
    flug = {
      vonKamera: kamera.position.clone(),
      vonZiel: steuerung.target.clone(),
      nachKamera: new THREE.Vector3(mitte.x + w * 0.5,
                                    mitte.y + w * 0.6,
                                    mitte.z + w * 0.5),
      nachZiel: mitte,
      start: performance.now(), dauer: 800,
    };
    marken.forEach((m) => { m.el.style.textDecoration = 'none'; });
  },
  // Fuer Selbsttest und Fehlersuche: In einem ES-Modul sind die
  // Variablen nicht global sichtbar, deshalb dieser Bericht.
  zustand: () => {
    if (!letzteSzene) return { geladen: false };
    const m = terrainNetz ? terrainNetz.material : null;
    return {
      geladen: true,
      level: letzteSzene.level,
      raster: [letzteSzene.terrain.breite, letzteSzene.terrain.hoehe],
      objekte: letzteSzene.objekte.length,
      mitModell: letzteSzene.objekte.filter((o) => o.mesh).length,
      modelle: Object.keys(letzteSzene.meshes || {}).length,
      objektDreiecke: objektGruppe
        ? objektGruppe.children.reduce((s, k) => s + (k.geometry.index
            ? k.geometry.index.count / 3
            : k.geometry.attributes.position.count / 3), 0)
        : 0,
      marken: marken.length,
      terrainNetz: !!terrainNetz,
      dreiecke: terrainNetz
        ? terrainNetz.geometry.index
          ? terrainNetz.geometry.index.count / 3
          : terrainNetz.geometry.attributes.position.count / 3
        : 0,
      farbkarte: !!(m && m.map),
      anfasser: !!anfasser,
      anfasserTeile: anfasser ? anfasser.children.length : 0,
      radiusKugel: !!radiusKugel,
      wegpunkte: letzteSzene.objekte.filter(
        (o) => o.art === 'wegpunkt').length,
      // Kanten = was Python lieferte, Linien = was davon gezeichnet
      // wurde -- weichen sie ab, fehlt einem Endpunkt das Objekt.
      wegpunktKanten: (letzteSzene.wegpunkt_kanten || []).length,
      wegpunktLinien: wegpunktLinien.length,
      wegpunktLinienSichtbar: !!wegpunktGruppe && wegpunktGruppe.visible,
      gewaehlt: gewaehltesObjekt ? gewaehltesObjekt.index : null,
      geaendert: aenderungen.size,
      meshtextur: zeigeMeshtextur,
      objekteMitTextur: letzteMitTextur,
      objekteMitAlpha: letzteMitAlpha,
      meshbilder: letzteSzene
        ? Object.keys(letzteSzene.meshbilder || {}).length : 0,
      detail: detailAn && !!aktiveUniforms,
      detailStaerke: detailStaerke,
      schichten: letzteSzene && letzteSzene.textur
        ? Object.keys(letzteSzene.textur.detail || {}) : [],
      lightmap: !!(m && m.lightMap),
      vertexfarben: !!(m && m.vertexColors),
      nebel: szene.fog ? Math.round(szene.fog.far) : null,

      wasser: !!wasserNetz,

      wassertiefe: wasserNetz ? wasserNetz.position.y : null,
      lichter: lichterDaten.length,
      lichtGewaehlt: gewaehltesLicht ? gewaehltesLicht.index : null,
      lichtGeaendert: lichtAenderungen.size,
      // Native OSD-Lichter: Anzahl, Sichtbarkeit, und der Beleg,
      // dass sie read-only sind -- kein Kind traegt einen
      // lichtIndex, also kann lichtUnterMaus sie nie treffen.
      nativLichter: nativDaten.length,
      nativBlinkend: nativDaten.filter((l) => l.blinkend).length,
      nativSichtbar: !!nativGruppe && nativGruppe.visible,
      nativReadOnly: !nativGruppe || !nativGruppe.children.some(
        (g) => g.children.some(
          (k) => k.userData && k.userData.lichtIndex !== undefined)),
      kamera: kamera
        ? [Math.round(kamera.position.x), Math.round(kamera.position.y),
           Math.round(kamera.position.z)]
        : null,
    };
  },
};

aufbauen();
meldung('bereit â€” links eine Karte waehlen');

