"""Erzeugt ORM-Karten (Occlusion/Roughness/Metal) aus den Albedo-Texturen.

*** ALLES HIER IST HEURISTIK, KEINE MESSUNG. *** Aus einer Farbkarte
laesst sich keine echte Materialeigenschaft ableiten. Die Annahmen:

  R (Occlusion) : 1.0 -- kein AO-Schaetzwert, der Kanal ist Platzhalter.
  G (Rauheit)   : dunkel = rau, hell = glatter. Unter Wasser plausibel:
                  blankgescheuertes Metall ist hell UND glatt, Rost und
                  Bewuchs sind dunkel UND rau. Bereich 0.35..0.9.
  B (Metall)    : 0.0 -- Metallizitaet aus Farbe zu raten erzeugt
                  schwarze Flecken (Metall ohne Spiegelumgebung ist in
                  PBR schwarz, siehe Cubemap-Diskussion). Bewusst aus.

Der Shader (571) liest derzeit NUR den G-Kanal.

Aufruf:  orm_karten.py            Probe (3 Karten in den Scratchpad)
         orm_karten.py --alle     alle farbigen Texturen
"""
import os, sys, glob
import numpy as np
from PIL import Image

TEX = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\texturen"
ZIEL = os.path.join(TEX, "orm")


def istFarbig(pfad):
    a = np.asarray(Image.open(pfad).convert("RGB").resize((64, 64)), dtype=np.float32)
    r, g, b = a[..., 0].mean(), a[..., 1].mean(), a[..., 2].mean()
    if b > 150 and b > r + 25 and b > g + 25 and abs(r - g) < 30 and 90 < r < 190:
        return False   # Normalenkarte
    d = float(np.abs(a[..., 0] - a[..., 1]).mean() + np.abs(a[..., 1] - a[..., 2]).mean())
    return d >= 6


def orm(pfad):
    im = Image.open(pfad).convert("RGB")
    a = np.asarray(im, dtype=np.float32) / 255.0
    luma = 0.299 * a[..., 0] + 0.587 * a[..., 1] + 0.114 * a[..., 2]

    # Leicht geglaettet, damit die Rauheit nicht pixelig flirrt:
    # 2x2-Mittel reicht und braucht kein scipy.
    l2 = (luma + np.roll(luma, 1, 0) + np.roll(luma, 1, 1)
          + np.roll(np.roll(luma, 1, 0), 1, 1)) * 0.25

    rough = np.clip(0.9 - 0.55 * l2, 0.35, 0.9)

    aus = np.stack([np.ones_like(rough),       # R: Occlusion = 1
                    rough,                     # G: Rauheit
                    np.zeros_like(rough)],     # B: Metall = 0
                   axis=-1)
    return Image.fromarray((aus * 255.0 + 0.5).astype(np.uint8), "RGB")


alle = "--alle" in sys.argv
quellen = [q for q in sorted(glob.glob(os.path.join(TEX, "*.png"))) if istFarbig(q)]

if not alle:
    quellen = sorted(quellen, key=os.path.getsize, reverse=True)[:3]
    ziel = os.path.dirname(os.path.abspath(__file__))
else:
    ziel = ZIEL
    os.makedirs(ziel, exist_ok=True)

n = 0
for q in quellen:
    name = os.path.basename(q).replace(".png", "_orm.png")
    try:
        orm(q).save(os.path.join(ziel, name))
        n += 1
    except Exception as e:
        print("FEHLER %s: %s" % (name, e))

print("%d ORM-Karten erzeugt in %s" % (n, ziel))
