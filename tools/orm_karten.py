"""Erzeugt ORM-Karten (Occlusion/Roughness/Metal) aus den Albedo-Texturen.

*** ALLES HIER IST HEURISTIK, KEINE MESSUNG. *** Aus einer Farbkarte
laesst sich keine echte Materialeigenschaft ableiten. Die Annahmen:

  R (Occlusion) : 1.0 -- kein AO-Schaetzwert, der Kanal ist Platzhalter.
  G (Rauheit)   : dunkel = rau, hell = glatter. Unter Wasser plausibel:
                  blankgescheuertes Metall ist hell UND glatt, Rost und
                  Bewuchs sind dunkel UND rau. Bereich 0.35..0.9;
                  Metallflaechen werden zusaetzlich geglaettet.
  B (Metall)    : entsaettigt UND nicht zu dunkel = Metall (584).
                  Grau + hell liest sich als blankes Metall; Rost
                  (orange, gesaettigt) und Bewuchs (gruen, gesaettigt)
                  fallen ueber die Saettigung heraus. Konservativ auf
                  hoechstens 0.9 skaliert und mit Exponent 1.5
                  entschaerft -- lieber zu wenig Metall als Chrom auf
                  Beton. Der Shader (584) toent damit die Cubemap-
                  Spiegelung mit der Eigenfarbe und loest ihr Gewicht
                  vom Fresnel-Winkel.

Der Shader liest G (Rauheit, 571) und B (Metall, 584) von s9.

Seit 584 werden Karten fuer ALLE Nicht-Normalkarten erzeugt, nicht
mehr nur fuer "farbige" Texturen: gerade die grauen, entsaettigten
Texturen sind die Metallkandidaten, und die alte Farbigkeitsschwelle
(Kanaldifferenz >= 6) schloss genau sie aus.

Aufruf:  orm_karten.py            Probe (3 Karten in den Scratchpad)
         orm_karten.py --alle     alle Texturen ausser Normalkarten
"""
import os, sys, glob
import numpy as np
from PIL import Image

TEX = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\texturen"
ZIEL = os.path.join(TEX, "orm")


def istNormalkarte(pfad):
    a = np.asarray(Image.open(pfad).convert("RGB").resize((64, 64)), dtype=np.float32)
    r, g, b = a[..., 0].mean(), a[..., 1].mean(), a[..., 2].mean()
    return b > 150 and b > r + 25 and b > g + 25 and abs(r - g) < 30 and 90 < r < 190


def glatt(k):
    """2x2-Mittel gegen Pixelflirren, ohne scipy."""
    return (k + np.roll(k, 1, 0) + np.roll(k, 1, 1)
            + np.roll(np.roll(k, 1, 0), 1, 1)) * 0.25


def orm(pfad):
    im = Image.open(pfad).convert("RGB")
    a = np.asarray(im, dtype=np.float32) / 255.0
    luma = 0.299 * a[..., 0] + 0.587 * a[..., 1] + 0.114 * a[..., 2]
    l2 = glatt(luma)

    rough = np.clip(0.9 - 0.55 * l2, 0.35, 0.9)

    # Metall: Saettigung (max-min)/max klein UND Helligkeit ausreichend.
    mx = a.max(axis=-1)
    mn = a.min(axis=-1)
    s2 = glatt((mx - mn) / (mx + 1e-4))
    metall = (np.clip((0.30 - s2) / 0.30, 0.0, 1.0)
              * np.clip((l2 - 0.20) / 0.30, 0.0, 1.0))
    metall = np.clip(metall, 0.0, 1.0) ** 1.5 * 0.9

    # *** ZWEI KORREKTUREN AUS DER GEGENPRUEFUNG (584b). ***
    # 1. Einfarbige Quellen sind Hilfs-/Platzhaltertexturen, kein
    #    Metall -- 9 rein weisse Texturen bekamen sonst 0.90.
    if float(a.std(axis=(0, 1)).max()) < 1.0 / 255.0:
        metall[:] = 0.0

    # 2. Fels ist genauso grau und hell wie Metall -- Saettigung und
    #    Helligkeit KOENNEN die beiden nicht trennen (gemessen: Fels
    #    0.65, echtes Maschinenteil 0.23). Was sie trennt, ist der
    #    LOKALKONTRAST: Geroell flirrt (0.077..0.082), bearbeitete
    #    Flaechen sind glatt (unter 0.035). Rampe 0.035..0.06 -> 1..0,
    #    je Textur (nicht je Pixel: eine Textur ist EIN Material).
    lk = float(np.abs(luma - l2).mean())
    metall *= np.clip((0.06 - lk) / 0.025, 0.0, 1.0)

    # Metallische Flaechen sind glatter als ihre Helligkeit vermuten
    # laesst -- sonst frisst die Rauheitsdaempfung (1 - Rauheit^2) im
    # Shader den frisch gewonnenen Spiegelanteil gleich wieder auf.
    rough = rough * (1.0 - 0.35 * metall)

    aus = np.stack([np.ones_like(rough),       # R: Occlusion = 1
                    rough,                     # G: Rauheit
                    metall],                   # B: Metall (584)
                   axis=-1)
    return Image.fromarray((aus * 255.0 + 0.5).astype(np.uint8), "RGB")


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
quellen = [q for q in sorted(glob.glob(os.path.join(TEX, "*.png")))
           if not istNormalkarte(q)
           and os.path.basename(q).replace(".png", "") not in _lm]

if not alle:
    quellen = sorted(quellen, key=os.path.getsize, reverse=True)[:3]
    ziel = os.path.dirname(os.path.abspath(__file__))
else:
    ziel = ZIEL
    os.makedirs(ziel, exist_ok=True)

n = 0
werte = []
for q in quellen:
    name = os.path.basename(q).replace(".png", "_orm.png")
    try:
        bild = orm(q)
        bild.save(os.path.join(ziel, name))
        werte.append((name, np.asarray(bild)[..., 2].mean() / 255.0))
        n += 1
    except Exception as e:
        print("FEHLER %s: %s" % (name, e))

print("%d ORM-Karten erzeugt in %s" % (n, ziel))
werte.sort(key=lambda x: -x[1])
print("Hoechste Metall-Mittelwerte:")
for name, m in werte[:10]:
    print("  %.3f  %s" % (m, name))

# Manuelle Vorgaben IMMER nach der Erzeugung anwenden (587b) --
# sonst wuerde jede Neuerzeugung die Handarbeit ueberschreiben.
if alle:
    import orm_override
    orm_override.anwenden(ziel)
