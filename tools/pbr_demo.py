"""PBR-Demo-Material (606): Stahlplatten, prozedural, EIN Hoehenfeld
-> daraus kohaerent Albedo (ersatz\\), Normalen (normal\\) und ORM
(orm\\) fuer alle Nicht-Lightmap-Dumps. Zurueck: normalkarten.py
--alle, orm_karten.py --alle, ersatz-Ordner loeschen.
"""
import glob
import os

import numpy as np
from PIL import Image

TEX = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\texturen"
ERSATZ = os.path.join(TEX, "ersatz")
os.makedirs(ERSATZ, exist_ok=True)

S = 512
rng = np.random.RandomState(7)
y, x = np.mgrid[0:S, 0:S].astype(np.float32)

# ---- Hoehenfeld: Platten 128er Raster, 6-px-Fase, Nieten, Kratzer ----
P = 128
xm = x % P
ym = y % P
fase = 6.0
h = np.minimum(np.minimum(xm, P - 1 - xm), np.minimum(ym, P - 1 - ym))
hoehe = np.clip(h / fase, 0.0, 1.0)          # 0 in der Fuge, 1 auf der Platte

# Nieten: Kuppen nahe den Plattenecken
for ny_ in (16, P - 16):
    for nx_ in (16, P - 16):
        d2 = (xm - nx_) ** 2 + (ym - ny_) ** 2
        hoehe += np.clip(1.0 - d2 / 36.0, 0.0, 1.0) * 0.35

# Kratzer: 40 duenne Linien mit zufaelliger Richtung
kratzer = np.zeros((S, S), np.float32)
for _ in range(40):
    x0, y0 = rng.rand(2) * S
    wink = rng.rand() * np.pi
    laenge = 60 + rng.rand() * 150
    t = np.arange(0, laenge, 0.5)
    xs = np.clip((x0 + np.cos(wink) * t).astype(int) % S, 0, S - 1)
    ys = np.clip((y0 + np.sin(wink) * t).astype(int) % S, 0, S - 1)
    kratzer[ys, xs] = 1.0
hoehe -= kratzer * 0.15

# Leichtes Rauschen fuer Oberflaechenkorn
hoehe += (rng.rand(S, S).astype(np.float32) - 0.5) * 0.0   # 611: Korn raus, rauschte unter Positions-UVs

# ---- Normalen aus dem Hoehenfeld (zentraler Differenzenquotient) ----
STAERKE = 2.5
dx = (np.roll(hoehe, -1, 1) - np.roll(hoehe, 1, 1)) * STAERKE
dy = (np.roll(hoehe, -1, 0) - np.roll(hoehe, 1, 0)) * STAERKE
nz = np.ones_like(hoehe)
l = np.sqrt(dx * dx + dy * dy + nz * nz)
normal = np.stack([(-dx / l) * 0.5 + 0.5, (-dy / l) * 0.5 + 0.5,
                   (nz / l) * 0.5 + 0.5], -1)

# ---- Albedo: gebuersteter Stahl, Fugen dunkel, Kantenverschleiss hell ----
grund = 0.55 + (rng.rand(S, S).astype(np.float32) - 0.5) * 0.06
buerste = np.sin(x * 0.7 + rng.rand() * 9) * 0.02
stahl = np.clip(grund + buerste, 0, 1)
albedo = np.stack([stahl * 0.62, stahl * 0.66, stahl * 0.72], -1)  # kuehler Stahlton
albedo *= (0.55 + 0.45 * hoehe.clip(0, 1))[..., None]              # Fugen dunkler
kante = np.clip(1.0 - np.abs(h - fase) / 2.0, 0, 1) * 0.25         # Fasenkante blank
albedo = np.clip(albedo + kante[..., None], 0, 1)
albedo[kratzer > 0.5] = np.clip(albedo[kratzer > 0.5] + 0.18, 0, 1)

# ---- ORM: Metall 1, Rauheit strukturiert ----
rough = np.clip(0.45 - 0.25 * hoehe + kratzer * 0.2, 0.15, 0.8)
orm = np.stack([np.ones_like(rough), rough, np.full_like(rough, 0.35)], -1)

bAlbedo = Image.fromarray((albedo * 255 + 0.5).astype(np.uint8), "RGB")
bNormal = Image.fromarray((normal * 255 + 0.5).astype(np.uint8), "RGB")
bOrm = Image.fromarray((orm * 255 + 0.5).astype(np.uint8), "RGB")

def lightmapHashes():
    liste = os.path.join(TEX, "lightmap_hashes.txt")
    aus = set()
    if os.path.isfile(liste):
        for zeile in open(liste, encoding="utf-8"):
            if zeile.strip() and not zeile.startswith("#"):
                aus.add(zeile.split("\t")[0].strip())
    return aus

lm = lightmapHashes()

# NUR die Weltflaechen (606b): die 46 Prelit-uebernommenen Hashes aus
# dem Protokoll. Der erste Wurf ersetzte ALLES -- auch HUD, Lade-
# bildschirm, Terrain, Pflanzen -- und zerlegte damit das ganze Bild.
welt = set()
wl = os.path.join(TEX, "welt_hashes.txt")
if os.path.isfile(wl):
    welt = {z.strip() for z in open(wl, encoding="ascii") if z.strip()}
print(len(welt), "Hashes in der Weltflaechen-Liste")

n = 0
for q in sorted(glob.glob(os.path.join(TEX, "*.png"))):
    name = os.path.basename(q).replace(".png", "")
    if name in lm:
        continue
    if name.split("_")[0] not in welt:
        continue
    try:
        w, hh = name.split("_")[1].split("x")
        w, hh = int(w), int(hh)
    except (IndexError, ValueError):
        continue
    bAlbedo.resize((w, hh)).save(os.path.join(ERSATZ, name + ".png"))
    bNormal.resize((w, hh)).save(os.path.join(TEX, "normal", name + "_n.png"))
    bOrm.resize((w, hh)).save(os.path.join(TEX, "orm", name + "_orm.png"))
    n += 1
print(n, "Texturen mit PBR-Demo-Material (Albedo+Normal+ORM)")
