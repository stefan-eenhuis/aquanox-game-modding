"""Erzeugt Normalenkarten aus den Albedo-Texturen.

*** DAS ERGEBNIS IST GESCHAETZT, NICHT GEMESSEN. *** Aus einer Farbkarte
laesst sich keine echte Oberflaechenform ableiten -- was hier entsteht,
ist eine Naeherung aus der Helligkeit: hell = hoch, dunkel = tief. Fuer
Stein, Rost und Beton traegt das gut, bei aufgemalten Details (Schrift,
Symbole, Lichter) erzeugt es Struktur, die es in Wirklichkeit nicht gibt.

Geeicht an der EINEN echten Normalenkarte im Spiel
(e9808ff6fd4ddfd7, Mittelwert 128/128/227): so soll das Ergebnis
aussehen.

Aufruf:
    normalkarten.py            Probe: drei Karten in den Scratchpad
    normalkarten.py --alle     alle farbigen Texturen
"""
import os, sys, glob
import numpy as np
from PIL import Image

TEX = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\texturen"
ZIEL = os.path.join(TEX, "normal")
# *** 30 IST AM BILD GEEICHT, NICHT GERATEN. *** Bei 4 blieb die Karte
# fast einfarbig (der Gradient ueber zwei Pixel ist bei normalisierten
# Werten winzig), bei 80 ueberzeichnet sie sichtbar. Drei Staerken
# wurden nebeneinander geprueft, bevor dieser Wert feststand.
STAERKE = 30.0


def normalkarte(pfad, staerke=STAERKE):
    im = Image.open(pfad).convert("RGB")
    a = np.asarray(im, dtype=np.float32) / 255.0

    # Hoehenfeld aus der wahrgenommenen Helligkeit
    h = 0.299 * a[..., 0] + 0.587 * a[..., 1] + 0.114 * a[..., 2]

    # *** GEGLAETTET UND ZWEISKALIG (575). *** Die erste Fassung nahm
    # die rohe Pixelhelligkeit -- das Relief las sich im Spiel als
    # RAUSCHEN statt als Tiefe (Modus-16-Probe: Sprenkel statt Formen).
    # Ein Kastenfilter (zweimal 3x3 = naeherungsweise Gauss) plus eine
    # grobe Ebene (8x-Mittel) machen aus Koernung Flaechenformen.
    def kasten(x):
        s = x.copy()
        for dy in (-1, 0, 1):
            for dx in (-1, 0, 1):
                if dy or dx:
                    s = s + np.roll(np.roll(x, dy, 0), dx, 1)
        return s / 9.0

    fein = kasten(kasten(h))
    grob = fein
    for _ in range(3):
        grob = kasten(grob)          # ~8 Pixel Reichweite
    # *** BANDPASS STATT TIEFPASS (600). *** Die alte Mischung
    # (fein+grob) machte aus breiten Helligkeitsflecken -- also aus
    # SCHMUTZ und EINGEBACKENEM LICHT -- grosse Buckel: im Spiel
    # las sich das als dunkle Fleckenmuster, nicht als Relief.
    # fein MINUS grob behaelt nur die Strukturkanten (Fugen, Platten,
    # Nieten) und wirft die Flecken weg.
    h = fein - grob

    # *** RANDBEHANDLUNG PER WRAP. *** Texturen kacheln; mit
    # abgeschnittenen Raendern entstuende an jeder Kachelgrenze eine
    # sichtbare Naht.
    dx = (np.roll(h, -1, axis=1) - np.roll(h, 1, axis=1)) * staerke
    dy = (np.roll(h, -1, axis=0) - np.roll(h, 1, axis=0)) * staerke

    nx, ny, nz = -dx, -dy, np.ones_like(h)
    laenge = np.sqrt(nx * nx + ny * ny + nz * nz)
    nx, ny, nz = nx / laenge, ny / laenge, nz / laenge

    # (-1..1) -> (0..255)
    aus = np.stack([(nx * 0.5 + 0.5), (ny * 0.5 + 0.5), (nz * 0.5 + 0.5)], axis=-1)
    return Image.fromarray((aus * 255.0 + 0.5).astype(np.uint8), "RGB")


def istFarbig(pfad):
    # Seit 594 nur noch der Normalkarten-Ausschluss: die alte
    # Farbigkeitsschwelle (Kanaldifferenz >= 6) uebersprang gerade die
    # GRAUEN Wand-/Panel-Texturen -- die haeufigsten Flaechen des
    # Spiels hatten deshalb gar keine Reliefkarte ("komplett flach").
    a = np.asarray(Image.open(pfad).convert("RGB").resize((64, 64)), dtype=np.float32)
    r, g, b = a[..., 0].mean(), a[..., 1].mean(), a[..., 2].mean()
    if b > 150 and b > r + 25 and b > g + 25 and abs(r - g) < 30 and 90 < r < 190:
        return False   # ist schon eine Normalenkarte
    return True


def lightmapHashes():
    """Dumps, die Level-Lightmaps sind (591) -- keine Karten dafuer."""
    liste = os.path.join(TEX, "lightmap_hashes.txt")
    if not os.path.isfile(liste):
        return set()
    aus = set()
    for zeile in open(liste, encoding="utf-8"):
        if zeile.strip() and not zeile.startswith("#"):
            aus.add(zeile.split("\t")[0].strip())
    return aus


alle = "--alle" in sys.argv
_lm = lightmapHashes()
quellen = sorted(glob.glob(os.path.join(TEX, "*.png")))
quellen = [q for q in quellen if istFarbig(q)
           and os.path.basename(q).replace(".png", "") not in _lm]

if not alle:
    quellen = sorted(quellen, key=os.path.getsize, reverse=True)[:3]
    ziel = os.path.dirname(os.path.abspath(__file__))
else:
    ziel = ZIEL
    os.makedirs(ziel, exist_ok=True)

n = 0
for q in quellen:
    name = os.path.basename(q)
    aus = os.path.join(ziel, name.replace(".png", "_n.png"))
    try:
        normalkarte(q).save(aus)
        n += 1
    except Exception as e:
        print("FEHLER %s: %s" % (name, e))

print("%d Normalenkarten erzeugt in %s" % (n, ziel))
if not alle:
    print("(Probe. Mit --alle ueber alle %d farbigen Texturen.)"
          % len([q for q in sorted(glob.glob(os.path.join(TEX, '*.png'))) if istFarbig(q)]))


