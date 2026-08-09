# TROCKENPROBE -- schreibt nur in den Scratchpad.
# Camera_SetBackPlane bekommt seinen Wert per PUSHINT (Wert steckt IN der
# Instruktion, nicht im Konstantenpool). Geaendert wird genau diese eine
# Instruktion. Dateigroesse bleibt gleich (4 Byte gegen 4 Byte).
import sys, os, glob, shutil
TOOLS = r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\tools"
TK    = r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\toolkit"
sys.path.insert(0, TOOLS); sys.path.insert(0, TK)
import lua4dis as L
from aqtk.parser import aufrufe as A

EXTR = r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\dat\pak\extracted"
OUT  = os.path.join(os.path.dirname(os.path.abspath(__file__)), "probe_sco")
shutil.rmtree(OUT, ignore_errors=True); os.makedirs(OUT, exist_ok=True)
NEU = 4000

def proto_nach_weg(top, weg):
    p = top
    if weg == "main":
        return p
    for teil in weg.split("/")[1:]:
        p = (getattr(p, "kproto", []) or [])[int(teil)]
    return p

print(f"{'Karte':16} {'alt':>6} {'neu':>6} {'Stellen':>8} {'Groesse alt/neu':>20} Rueckleseprobe")
for d in sorted(os.listdir(os.path.join(EXTR, "map"))):
    sco = os.path.join(EXTR, "map", d, "script", d + ".sco")
    if not os.path.isfile(sco):
        continue
    roh = open(sco, "rb").read()
    top = L.loads(roh)
    ruf = A.lies(top, "main", L)
    ziele = [a for a in ruf if a.funktion == "Camera_SetBackPlane"]
    if not ziele:
        continue
    geaendert = 0
    alt = None
    for a in ziele:
        p = proto_nach_weg(top, a.proto)
        # Rueckwaerts vom CALL bis zum PUSHINT, das den Wert liefert.
        # Grenze hart am vorhergehenden CALL/GETGLOBAL ziehen (Falle 527.6).
        for j in range(a.stelle - 1, max(-1, a.stelle - 8), -1):
            ins = p.code[j]
            if L.op(ins) == "PUSHINT":
                alt = L.argS(ins)
                p.code[j] = L.i_s("PUSHINT", NEU)
                geaendert += 1
                break
            if L.op(ins) in ("CALL", "TAILCALL"):
                break
    neu_b = L.save(top)
    pp = os.path.join(OUT, d + ".sco"); open(pp, "wb").write(neu_b)
    ruf2 = A.lies(L.loads(neu_b), "main", L)
    zurueck = [x.zahlen[0] for x in ruf2 if x.funktion == "Camera_SetBackPlane"]
    # Gegenprobe: veraendert sich sonst irgendein Aufruf?
    u1 = [(x.funktion, tuple(x.zahlen)) for x in ruf]
    u2 = [(x.funktion, tuple(x.zahlen)) for x in ruf2]
    abw = sum(1 for x, y in zip(u1, u2) if x != y)
    print(f"{d:16} {alt!s:>6} {NEU:>6} {geaendert:>8} "
          f"{len(roh):>9}/{len(neu_b):<9} {zurueck}  "
          f"sonstige Abweichungen: {abw-geaendert}")
