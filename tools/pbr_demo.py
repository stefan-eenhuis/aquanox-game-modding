"""PBR-Materialien (647): je Flaechentyp ein EIGENES Material statt
der Einheits-Demoplatte. Jedes Material entsteht aus EINEM Hoehen-
feld -> kohaerent Albedo (ersatz\\), Normalen (normal\\) und ORM
(orm\\; R=Hoehe fuer Parallax 643, G=Rauheit, B=Metall).
Zuordnung je Hash in ZUORDNUNG. Zurueck: normalkarten.py --alle,
orm_karten.py --alle, ersatz-Ordner loeschen (zerstoert die Demo!).
Regel 621: Fern-Kennzahl (Albedo-Streuung bei 16x16) wird gedruckt.
"""
import glob
import os

import numpy as np
from PIL import Image

TEX = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\texturen"
ERSATZ = os.path.join(TEX, "ersatz")
os.makedirs(ERSATZ, exist_ok=True)

S = 512
y, x = np.mgrid[0:S, 0:S].astype(np.float32)


# ---------------- Bausteine ----------------

def wertrauschen(freq, seed):
    """Kachelbares Value-Noise: periodisches Gitter, smoothstep-bilinear."""
    r = np.random.RandomState(seed)
    g = r.rand(freq, freq).astype(np.float32)
    gx = x * freq / S
    gy = y * freq / S
    x0 = np.floor(gx).astype(int) % freq
    y0 = np.floor(gy).astype(int) % freq
    x1 = (x0 + 1) % freq
    y1 = (y0 + 1) % freq
    fx = gx - np.floor(gx)
    fy = gy - np.floor(gy)
    fx = fx * fx * (3.0 - 2.0 * fx)
    fy = fy * fy * (3.0 - 2.0 * fy)
    a = g[y0, x0]
    b = g[y0, x1]
    c = g[y1, x0]
    d = g[y1, x1]
    return a + (b - a) * fx + (c - a) * fy + (a - b - c + d) * fx * fy


def fbm(oktaven, grundfreq, seed):
    summe = np.zeros((S, S), np.float32)
    amp, gesamt = 1.0, 0.0
    for o in range(oktaven):
        summe += amp * wertrauschen(min(grundfreq << o, 256), seed + o)
        gesamt += amp
        amp *= 0.5
    return summe / gesamt


def normalen(hoehe, staerke):
    dx = (np.roll(hoehe, -1, 1) - np.roll(hoehe, 1, 1)) * staerke
    dy = (np.roll(hoehe, -1, 0) - np.roll(hoehe, 1, 0)) * staerke
    nz = np.ones_like(hoehe)
    l = np.sqrt(dx * dx + dy * dy + nz * nz)
    return np.stack([(-dx / l) * 0.5 + 0.5, (-dy / l) * 0.5 + 0.5,
                     (nz / l) * 0.5 + 0.5], -1)


# ---------------- Materialien ----------------
# Jede Funktion liefert (albedo[S,S,3], normal[S,S,3], orm[S,S,3]),
# alles float 0..1. ORM: R=Hoehe, G=Rauheit, B=Metall.

def m_stahl():
    """Kissen-Stahlplatten (644, von Stefan bestaetigt): P=128,
    breite Fase, Woelbung, Nieten, Kratzer."""
    rng = np.random.RandomState(7)
    P = 128
    xm = x % P
    ym = y % P
    fase = 20.0
    h = np.minimum(np.minimum(xm, P - 1 - xm), np.minimum(ym, P - 1 - ym))
    rampe = np.clip(h / fase, 0.0, 1.0)
    woelb = np.sin(np.pi * xm / P) * np.sin(np.pi * ym / P)
    hoehe = rampe * (0.55 + 0.45 * np.sqrt(np.clip(woelb, 0.0, 1.0)))

    for ny_ in (16, P - 16):
        for nx_ in (16, P - 16):
            d2 = (xm - nx_) ** 2 + (ym - ny_) ** 2
            hoehe += np.clip(1.0 - d2 / 36.0, 0.0, 1.0) * 0.35

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

    grund = 0.55 + (rng.rand(S, S).astype(np.float32) - 0.5) * 0.06
    buerste = np.sin(x * 0.7 + rng.rand() * 9) * 0.02
    stahl = np.clip(grund + buerste, 0, 1)
    albedo = np.stack([stahl * 0.62, stahl * 0.66, stahl * 0.72], -1)
    albedo *= (0.55 + 0.45 * hoehe.clip(0, 1))[..., None]
    kante = np.clip(1.0 - np.abs(h - fase) / 2.0, 0, 1) * 0.25
    albedo = np.clip(albedo + kante[..., None], 0, 1)
    albedo[kratzer > 0.5] = np.clip(albedo[kratzer > 0.5] + 0.18, 0, 1)

    rough = np.clip(0.45 - 0.25 * hoehe + kratzer * 0.2, 0.15, 0.8)
    orm = np.stack([hoehe.clip(0, 1), rough, np.full_like(rough, 0.35)], -1)
    return albedo, normalen(hoehe, 4.0), orm


def m_fels():
    """Basaltfels: ridged fBm-Grate ueber weichem Grund, Senken
    dunkler mit Gruenstich (Bewuchs), Grate hell abgerieben."""
    grund = fbm(6, 4, 11)
    grat = 1.0 - np.abs(2.0 * fbm(5, 8, 23) - 1.0)
    hoehe = np.clip(0.55 * grund + 0.45 * grat * grat, 0.0, 1.0)

    ton = 0.26 + 0.30 * hoehe          # basaltgrau, hoehenabhaengig
    algen = np.clip(0.6 - hoehe, 0, 1) * fbm(4, 8, 41) * 0.5
    albedo = np.stack([ton * 0.96,
                       ton * 1.00 + algen * 0.10,
                       ton * 0.92 + algen * 0.02], -1)
    albedo = np.clip(albedo, 0, 1)

    rough = np.clip(0.82 - 0.18 * hoehe, 0.5, 0.9)
    orm = np.stack([hoehe, rough, np.zeros_like(rough)], -1)
    return albedo, normalen(hoehe, 5.0), orm


def m_sediment():
    """Meeresboden-Sediment: Stroemungsrippel mit Rauschphase plus
    feines Korn; sandgrau-beige, matt."""
    # 648b: Stefans Wunsch praezisiert -- Muster 1.3x GROESSER
    # (weniger kleinteilig, Kachelung fiel auf), nicht dichter:
    # Rippel 24->18, fBm-Grundfrequenzen 4->3 bzw. 8->6 (ganzzahlig
    # wegen der Kachelbarkeit). Die 621er-Flecken bleiben.
    phase = 6.0 * fbm(4, 3, 31)
    rippel = 0.5 + 0.5 * np.sin(y * (2.0 * np.pi * 18.0 / S) + phase)
    hoehe = np.clip(0.60 * rippel + 0.40 * fbm(5, 6, 37), 0.0, 1.0)

    # 621: grossskalige Flecken, sonst mittelt sich das feine
    # Rippelmuster bei Spieldistanz zu Eintoenigkeit (Streuung war
    # 0.009 bei 16x16 -- unter der 0.02-Schwelle).
    flecken = fbm(3, 2, 53)
    ton = 0.30 + 0.16 * hoehe + 0.26 * flecken   # 648: Flecken +, s. 621
    albedo = np.stack([ton * 1.00, ton * 0.94, ton * 0.80], -1)
    albedo = np.clip(albedo, 0, 1)

    rough = np.full_like(hoehe, 0.85)
    orm = np.stack([hoehe, rough, np.zeros_like(rough)], -1)
    return albedo, normalen(hoehe, 3.0), orm


def m_metall():
    """Parabolspiegel: glattes gebuerstetes Metall, flache Hoehe,
    schmale Panelfugen, stark metallisch, niedrige Rauheit."""
    rng = np.random.RandomState(19)
    buerste = np.cumsum(rng.rand(S, S).astype(np.float32) - 0.5, axis=1)
    buerste = (buerste - buerste.min()) / max(float(np.ptp(buerste)), 1e-6)
    hoehe = 0.5 + (buerste - 0.5) * 0.08
    # 648: Fugen feiner (64er) und deutlich schwaecher -- das grobe
    # 128er-Raster machte die UV-Streckung der Schuessel-Elemente
    # sichtbar (Stefans Befund). Ganz ohne Fugen ginge auch; so
    # bleibt ein Hauch Panelcharakter.
    fuge = ((x % 64) < 2) | ((y % 64) < 2)
    hoehe[fuge] -= 0.10
    hoehe = hoehe.clip(0, 1)

    ton = 0.60 + (buerste - 0.5) * 0.10
    albedo = np.stack([ton * 0.92, ton * 0.96, ton * 1.00], -1)
    albedo[fuge] *= 0.75
    albedo = np.clip(albedo, 0, 1)

    rough = np.clip(0.22 + (1.0 - hoehe) * 0.2, 0.15, 0.5)
    orm = np.stack([hoehe, rough, np.full_like(rough, 0.9)], -1)
    return albedo, normalen(hoehe, 2.0), orm


def m_kies():
    """Ueberall-Makroschicht (material_3): koerniger Kies/Schutt,
    neutralgrau und BEWUSST dezent -- das Original hat hier nur
    Std 51 Graustufen, und der 661er-Neigungsmix legt Sand/Fels
    halb darueber. Zu viel Charakter wuerde ueberall durchschlagen."""
    korn = fbm(6, 16, 61)
    brocken = fbm(4, 6, 67)
    hoehe = np.clip(0.55 * korn + 0.45 * brocken, 0.0, 1.0)

    ton = 0.42 + 0.16 * hoehe
    albedo = np.stack([ton, ton * 0.99, ton * 0.95], -1)
    albedo = np.clip(albedo, 0, 1)

    rough = np.full_like(hoehe, 0.8)
    orm = np.stack([hoehe, rough, np.zeros_like(rough)], -1)
    return albedo, normalen(hoehe, 3.0), orm


MATERIALIEN = {
    "stahl": m_stahl,
    "fels": m_fels,
    "sediment": m_sediment,
    "metall": m_metall,
    "kies": m_kies,
}

# Zuordnung je Weltflaechen-Hash. 661b-KORREKTUR: Die 647er-
# Zuordnung war VERTAUSCHT (unsichtbar, solange nur material_3
# den Detailzug fuellte) -- laut 660er-Bildanalyse ist material_0
# SAND/Schlick, material_1 GESCHICHTETER FELS, material_3 KIES.
ZUORDNUNG = {
    "3cbdae80574f3592": "kies",       # Terrain material_3 (ueberall)
    "dad3ebbdb4fafa8a": "sediment",   # Terrain material_0 (flach)
    "8a24b13143401faa": "fels",       # Terrain material_1 (steil)
    "0b64fc55f7026f10": "stahl",      # Station-Detail (Steg/Bunker)
    "583813ab6be30325": "metall",     # Parabolspiegel
}


def lightmapHashes():
    liste = os.path.join(TEX, "lightmap_hashes.txt")
    aus = set()
    if os.path.isfile(liste):
        for zeile in open(liste, encoding="utf-8"):
            if zeile.strip() and not zeile.startswith("#"):
                aus.add(zeile.split("\t")[0].strip())
    return aus


lm = lightmapHashes()

# Materialbilder einmal erzeugen, Fern-Kennzahl drucken (621):
# Streuung des 16x16-verkleinerten Albedo-Graubilds. Unter ~0.02
# wirkt die Flaeche aus Spieldistanz eintoenig.
fertig = {}
for name, fn in MATERIALIEN.items():
    albedo, normal, orm = fn()
    bA = Image.fromarray((albedo * 255 + 0.5).astype(np.uint8), "RGB")
    bN = Image.fromarray((normal * 255 + 0.5).astype(np.uint8), "RGB")
    bO = Image.fromarray((orm * 255 + 0.5).astype(np.uint8), "RGB")
    klein = np.asarray(bA.convert("L").resize((16, 16)), np.float32) / 255.0
    print("%-9s Fern-Streuung %.3f  (Albedo-Mittel %.2f)"
          % (name, float(klein.std()), float(albedo.mean())))
    fertig[name] = (bA, bN, bO)

n = 0
for q in sorted(glob.glob(os.path.join(TEX, "*.png"))):
    name = os.path.basename(q).replace(".png", "")
    if name in lm:
        continue
    mat = ZUORDNUNG.get(name.split("_")[0])
    if mat is None:
        continue
    try:
        w, hh = name.split("_")[1].split("x")
        w, hh = int(w), int(hh)
    except (IndexError, ValueError):
        continue
    bA, bN, bO = fertig[mat]
    bA.resize((w, hh)).save(os.path.join(ERSATZ, name + ".png"))
    bN.resize((w, hh)).save(os.path.join(TEX, "normal", name + "_n.png"))
    bO.resize((w, hh)).save(os.path.join(TEX, "orm", name + "_orm.png"))
    n += 1
    print("%s -> %s" % (name, mat))
print(n, "Texturen mit Material belegt")
