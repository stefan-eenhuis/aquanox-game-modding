# Zwei Pruefungen:
# 1) Stehen die fog.des-Schluessel in Aqua.exe? (Positivprobe mit
#    terrain.des-Schluesseln, die nachweislich gelesen werden -- sonst
#    beweist ein Nulltreffer nichts, Falle 527.4)
# 2) Was macht REM_FogLayer::LoadFromFile mit dem Kopf-Float [12]?
import sys
sys.path.insert(0, r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\tools")
from exe_tool import Exe

e = Exe()
print("ImageBase", hex(e.base), ".text", hex(e.text_lo), hex(e.text_hi))

print("\n=== 1) Schluessel-Stringsuche (Teilstring, nicht Gleichheit) ===")
kandidaten = [
    # fog.des
    ("fog.des", "ViewingDistance"), ("fog.des", "WaterDepth"),
    ("fog.des", "ClosingBarrier"), ("fog.des", "MaximalAlpha"),
    ("fog.des", "WaterBase"), ("fog.des", "InputFile"),
    # Positivproben: nachweislich gelesene Schluessel
    ("terrain.des", "MinimumResolution"), ("terrain.des", "MaximumD2"),
    ("terrain.des", "RestrictedQuadTree"), ("terrain.des", "TriangulationMode"),
    ("terrain.des", "HeightField"),
    ("osd", "maxdistance"), ("osd", "renderfast"), ("osd", "numofsprites"),
    ("fog?", "Opacity"),
]
for herkunft, s in kandidaten:
    tr = e.find_bytes(s)
    orte = []
    for va in tr[:6]:
        seg = ".text" if e.is_text(va) else (".rdata/.data" if e.is_data(va) else "?")
        orte.append(f"{va:#x}{seg}")
    print(f"  {herkunft:12} {s:20} {len(tr):3} x   {' '.join(orte)}")

print("\n=== 2) REM_FogLayer::LoadFromFile ===")
for s in ("REM_FogLayer", "FogLayer", "LoadDensityFile"):
    for va, txt in e.find_str(s)[:12]:
        print(f"  {va:#x}  {txt!r}")

print("\n--- Disassemblat 0x004fa4d0 ---")
print(e.dis(0x004fa4d0, 90))
