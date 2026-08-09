# Welche Pfade stehen WIRKLICH im PAK? Der lose Weg braucht den
# PAK-INTERNEN Pfad, nicht den des entpackten Abzugs.
import sys, os, glob
sys.path.insert(0, r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\tools")
import pak_tool

SPIEL = r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox"
suchen = ("fx_plant", "fog.fog", "terrain.des", "1h1.sco", "fog.des")
for pak in sorted(glob.glob(os.path.join(SPIEL, "dat", "pak", "aquanox?.pak"))):
    with open(pak, "rb") as f:
        ver, cr, eintraege = pak_tool.read_directory(f)
    tr = [e for e in eintraege if any(s.lower() in e[0].lower() for s in suchen)]
    if not tr:
        continue
    print(f"\n### {os.path.basename(pak)}  ({len(eintraege)} Eintraege) ###")
    for name, off, size in tr[:26]:
        print(f"   {name!r:70} {size:>10}")
