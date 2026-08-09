# PRUEFMASS (527.9): Wenn der fog.fog-Kopf-Float wirklich die Sichtweite
# kodiert, muss er mit der Kamera-Fernebene der Mission zusammenpassen --
# eine Kamera, die weiter sieht als der Nebel reicht, waere sinnlos.
# Dieses Mass kann den Befund BRECHEN: gaebe es keine Korrelation,
# waere die Deutung "Kopf[12] = Sichtweite/64" falsch.
import sys, os, struct, glob
sys.path.insert(0, r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\tools")
sys.path.insert(0, r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\toolkit")
import lua4dis as L
from aqtk.parser import aufrufe as A

ROOT = r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\dat\pak\extracted\map"

def fogkopf(p):
    with open(p, "rb") as f:
        d = f.read(20)
    a, b, c = struct.unpack_from("<III", d, 0)
    e, g = struct.unpack_from("<ff", d, 12)
    return a, b, c, e, g

def fogdes_sicht(p):
    if not os.path.isfile(p):
        return None
    for z in open(p, "r", errors="replace"):
        z = z.strip()
        if z.startswith("//"):
            continue
        if "ViewingDistance" in z:
            return float(z.split("=")[1].strip())
    return None

print(f"{'Karte':16} {'BackPlane':>9} {'fogPfad':22} {'kopf*64':>8} {'tiefe*64':>9} {'fog.des VD':>10} {'passt?':>7}")
treffer = 0
gesamt = 0
for d in sorted(os.listdir(ROOT)):
    sco = os.path.join(ROOT, d, "script", d + ".sco")
    if not os.path.isfile(sco):
        continue
    ruf = A.lies(L.loads(open(sco, "rb").read()), "main", L)
    bp = None; fogpfad = None
    for a in ruf:
        if a.funktion == "Camera_SetBackPlane" and a.zahlen:
            bp = a.zahlen[0]
        if a.funktion == "Game_LoadFog":
            for x in a.argumente:
                if isinstance(x, str) and x.lower().endswith(".fog"):
                    fogpfad = x
    if not fogpfad:
        continue
    real = os.path.join(r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\dat\pak\extracted",
                        fogpfad.replace("/", os.sep))
    if not os.path.isfile(real):
        print(f"{d:16} {bp!s:>9} {fogpfad:22} FEHLT")
        continue
    a1, b1, c1, e1, g1 = fogkopf(real)
    vd = fogdes_sicht(os.path.join(os.path.dirname(real), "fog.des"))
    sicht = e1 * 64
    ok = "JA" if bp is not None and abs(sicht - bp) < 0.5 else ("~" if bp and sicht <= bp else "NEIN")
    gesamt += 1
    if ok == "JA":
        treffer += 1
    print(f"{d:16} {bp!s:>9} {os.path.basename(os.path.dirname(fogpfad))+'/'+os.path.basename(fogpfad):22} "
          f"{sicht:8.1f} {g1*64:9.1f} {vd!s:>10} {ok:>7}")

print(f"\nfog.fog-Sicht == Camera_SetBackPlane bei {treffer} von {gesamt} Karten")
