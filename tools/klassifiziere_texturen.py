"""Klassifiziert die ausgegebenen Texturen.

*** ANLASS: unter den ersten vier Stichproben war bereits eine
NORMALENKARTE. *** Wenn AquaNox welche mitbringt, muessen sie fuer PBR
nicht erzeugt, sondern nur zugeordnet werden -- das ist ein voellig
anderer Aufwand.

Erkennungsmerkmal einer Tangentenraum-Normalenkarte: der Mittelwert
liegt nahe (128, 128, 255), denn eine unveraenderte Flaeche zeigt
gerade nach oben -> (0,0,1) -> kodiert als (128,128,255). Blau ist
dabei fast immer deutlich groesser als Rot und Gruen, und Rot und
Gruen liegen dicht beieinander.
"""
import os, glob
import numpy as np
from PIL import Image

ORD = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\texturen"

normal, albedo, grau, sonstige = [], [], [], []

for p in sorted(glob.glob(os.path.join(ORD, "*.png"))):
    try:
        im = Image.open(p).convert("RGB")
    except Exception:
        continue
    a = np.asarray(im.resize((64, 64)), dtype=np.float32)
    r, g, b = a[..., 0].mean(), a[..., 1].mean(), a[..., 2].mean()
    name = os.path.basename(p)

    istNormal = (b > 150 and b > r + 25 and b > g + 25
                 and abs(r - g) < 30 and 90 < r < 190)
    # Graustufen: alle drei Kanaele fast gleich
    d = float(np.abs(a[..., 0] - a[..., 1]).mean() + np.abs(a[..., 1] - a[..., 2]).mean())

    if istNormal:
        normal.append((name, r, g, b))
    elif d < 6:
        grau.append((name, r, g, b))
    else:
        albedo.append((name, r, g, b))

print("=== VERDACHT NORMALENKARTE: %d ===" % len(normal))
for n, r, g, b in normal[:20]:
    print("   %-34s Mittel r=%3.0f g=%3.0f b=%3.0f" % (n, r, g, b))
if len(normal) > 20:
    print("   ... und %d weitere" % (len(normal) - 20))

print("\n=== Graustufen (Masken, Lichtkarten?): %d ===" % len(grau))
for n, r, g, b in grau[:8]:
    print("   %-34s Mittel %3.0f" % (n, r))

print("\n=== farbig (Albedo): %d ===" % len(albedo))
print("\nGesamt: %d" % (len(normal) + len(grau) + len(albedo)))
