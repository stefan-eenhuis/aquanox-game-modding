"""Ermittelt, welche Textur-Dumps LIGHTMAP-Atlanten sind (591).

Lightmaps sind eingebackene Beleuchtung (map\\*\\ltex\\*.dds). Fuer sie
sind Normalen-/ORM-Karten sinnfrei -- schlimmer: haengen sie auf
Stufe 0 (Schuessel-Fall, Handoff 590), bekam das Objekt die
Materialkarte seiner LIGHTMAP. Dieses Skript vergleicht alle Dumps
inhaltlich gegen alle Level-Lightmaps und schreibt die Trefferliste
nach mod_docu\\texturen\\lightmap_hashes.txt; orm_karten.py und
normalkarten.py schliessen diese Hashes aus, vorhandene Karten dazu
werden GELOESCHT.

Aufruf: lightmap_hashes.py
"""
import glob
import os

import numpy as np
from PIL import Image

SPIEL = os.path.normpath(os.path.join(
    os.path.dirname(os.path.abspath(__file__)), "..", ".."))
TEX = os.path.join(SPIEL, "mod_docu", "texturen")
LISTE = os.path.join(TEX, "lightmap_hashes.txt")

def klein(pfad):
    im = Image.open(pfad).convert("RGB").resize((32, 32))
    return np.asarray(im, dtype=np.float32)

# Alle Level-Lightmaps einlesen (ltex-Ordner aller Karten).
lm = []
for p in glob.glob(os.path.join(SPIEL, "dat", "pak", "extracted",
                                "map", "*", "ltex", "*.dds")):
    try:
        lm.append((p, klein(p)))
    except Exception as e:
        print("UNLESBAR %s: %s" % (p, e))
print("%d Level-Lightmaps gelesen" % len(lm))

treffer = []
for d in sorted(glob.glob(os.path.join(TEX, "*.png"))):
    try:
        a = klein(d)
    except Exception:
        continue
    beste = 1e9
    wo = ""
    for p, b in lm:
        m = float(np.abs(a - b).mean())
        if m < beste:
            beste = m
            wo = p
    if beste < 5.0:
        name = os.path.basename(d).replace(".png", "")
        treffer.append((name, beste, os.path.relpath(wo, SPIEL)))
        print("LIGHTMAP: %s  (MAD %.2f, %s)" % (name, beste, treffer[-1][2]))

with open(LISTE, "w", encoding="utf-8") as f:
    f.write("# Dumps, die Level-Lightmaps sind (591); MAD-Schwelle 5.0\n")
    for name, m, wo in treffer:
        f.write("%s\t%.2f\t%s\n" % (name, m, wo))
print("%d Lightmap-Dumps -> %s" % (len(treffer), LISTE))

# Vorhandene Karten dieser Hashes loeschen.
n = 0
for name, _, _ in treffer:
    h = name.split("_")[0]
    for ordner in ("orm", "normal"):
        for k in glob.glob(os.path.join(TEX, ordner, h + "_*")):
            os.remove(k)
            n += 1
print("%d veraltete Karten geloescht" % n)
