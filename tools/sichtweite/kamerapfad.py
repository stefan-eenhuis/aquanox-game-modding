# Welchen Szenenbaum-Pfad hat der Kameraknoten? Ohne ihn kann ein
# live.lua Camera_SetBackPlane nicht adressieren.
import sys, os
sys.path.insert(0, r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\tools")
sys.path.insert(0, r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\toolkit")
import lua4dis as L
from aqtk.parser import aufrufe as A
EXTR = r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\dat\pak\extracted"

for lvl in ("1h1", "mp_13"):
    sco = os.path.join(EXTR, "map", lvl, "script", lvl + ".sco")
    ruf = A.lies(L.loads(open(sco, "rb").read()), "main", L)
    # Alle Node_CreateNode -> Variablenname merken
    name_von = {}
    for a in ruf:
        if a.funktion == "Node_CreateNode" and a.zuweisung:
            name_von[a.zuweisung] = tuple(x for x in a.argumente)
    kam = [a for a in ruf if a.funktion == "Camera_SetBackPlane"]
    if not kam:
        continue
    var = kam[0].argumente[0]
    print(f"\n### {lvl} ### Kameravariable {var}  angelegt als {name_von.get(var)}")
    # Wer ist Vater?
    for a in ruf:
        if a.funktion == "Node_AddSon" and len(a.argumente) >= 2 and a.argumente[1] == var:
            v = a.argumente[0]
            print(f"   Node_AddSon({v}, {var})   Vater angelegt als {name_von.get(v)}")
    # Auch: Node_Find-Aufrufe mit 'amera'
    for a in ruf:
        if a.funktion == "Node_Find":
            for x in a.argumente:
                if isinstance(x, str) and ("amera" in x or x == "/"):
                    print(f"   Node_Find({x!r}) -> {a.zuweisung}")
    # Die ersten Node_CreateNode zeigen die Baumwurzel
    print("   erste 8 Knoten:")
    n = 0
    for a in ruf:
        if a.funktion in ("Node_CreateNode", "Node_AddSon", "Node_Find"):
            print(f"      {a}  -> {a.zuweisung}")
            n += 1
            if n >= 12:
                break
