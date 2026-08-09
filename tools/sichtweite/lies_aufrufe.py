# Liest aus allen Missions-.sco die Aufrufe, die mit Sichtweite/Nebel/Terrain
# zu tun haben. Geltungsbereich: nur konstante Argumente sind belegbar,
# alles Berechnete erscheint als None (siehe aqtk/parser/aufrufe.py).
import sys, os, glob
TOOLS = r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\tools"
TK    = r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\toolkit"
sys.path.insert(0, TOOLS); sys.path.insert(0, TK)
import lua4dis as L
from aqtk.parser import aufrufe as A

ROOT = r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\dat\pak\extracted\map"
GESUCHT = ("Camera_SetBackPlane", "Camera_SetFrontPlane", "Game_SetFog",
           "Game_LoadFog", "Terrain_LoadTerrain", "Game_SetLightCache")

zus = {}
for d in sorted(os.listdir(ROOT)):
    p = os.path.join(ROOT, d, "script", d + ".sco")
    if not os.path.isfile(p):
        continue
    try:
        top = L.loads(open(p, "rb").read())
        ruf = A.lies(top, "main", L)
    except Exception as e:
        print(f"{d}: FEHLER {e}")
        continue
    for a in ruf:
        if a.funktion in GESUCHT:
            args = ", ".join("?" if x is None else (repr(x) if not isinstance(x, float) else f"{x:g}") for x in a.argumente)
            print(f"{d:16} {a.funktion}({args})")
            zus.setdefault(a.funktion, []).append((d, tuple(a.zahlen)))

print("\n=== Zusammenfassung ===")
for k, v in zus.items():
    werte = {}
    for d, z in v:
        werte.setdefault(z, []).append(d)
    print(f"{k}: {len(v)} Aufrufe")
    for z, ds in sorted(werte.items(), key=lambda t: str(t[0])):
        print(f"   {z} -> {len(ds)} Karten: {', '.join(ds[:8])}{' ...' if len(ds)>8 else ''}")
