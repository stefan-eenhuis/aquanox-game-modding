# FALLE 527.5: Gross-/Kleinschreibung. Die gekochten OSD-Dateien schreiben
# klein ("maxdistance"), die Exe womoeglich gross ("MaxDistance").
# Darum hier UNABHAENGIG VON DER SCHREIBWEISE ueber das gesamte Image suchen.
import sys, re
sys.path.insert(0, r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\tools")
from exe_tool import Exe
e = Exe()
img = bytes(e.img)

def suche(s):
    out = []
    for m in re.finditer(re.escape(s.lower()).encode(), img.lower()):
        va = e.base + m.start()
        # Nur echte Strings: davor Null/nicht-druckbar, dahinter Null
        vor = img[m.start()-1] if m.start() else 0
        nach = img[m.end()] if m.end() < len(img) else 0
        seg = ".text" if e.is_text(va) else (".rdata/.data" if e.is_data(va) else "?")
        out.append((va, seg, e.cstr(va - (1 if 32 <= vor < 127 else 0), 64), vor, nach))
    return out

felder = ["ViewingDistance", "WaterDepth", "ClosingBarrier", "MaximalAlpha",
          "WaterBase", "InputFile", "Opacity",
          "MaxDistance", "RenderFast", "NumOfSprites", "PlantMap", "NameMesh",
          "MinimumResolution", "MaximumD2"]
for f in felder:
    t = suche(f)
    print(f"{f:20} {len(t):3} x", end="  ")
    for va, seg, txt, vor, nach in t[:5]:
        print(f"{va:#x}{seg}<{e.cstr(va,48)!r}>", end=" ")
    print()
