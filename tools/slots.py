"""Die Lichtergrenze mit SLOTZAHLEN neu rechnen.

Befund aus 523.5: D3DX meldet "approximately N instruction slots
used" -- eine andere Zahl als die eigene Befehlszaehlung, weil
Makrobefehle wie m4x4 mehrere Slots belegen. Gegen die 128er-Grenze
von vs.1.0 zaehlen SLOTS, nicht Befehle. Die Aussage aus 490
("Platz fuer rund neun Lichter") stuetzte sich auf Befehle und ist
damit zu pruefen.
"""
import ctypes
import ctypes.wintypes as wt
import os
import re
import sys

DOC = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu"
EXE = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox\Aqua.exe"
sys.path.insert(0, os.path.join(DOC, "toolkit"))
from aqtk.exe import shader as sh

d3dx = ctypes.WinDLL("d3dx9_43.dll")


class Buffer(ctypes.Structure):
    pass


LPBUF = ctypes.POINTER(Buffer)


def _vt(p, i, r, *a):
    v = ctypes.cast(p, ctypes.POINTER(ctypes.c_void_p)).contents.value
    f = ctypes.cast(v, ctypes.POINTER(ctypes.c_void_p))
    return ctypes.WINFUNCTYPE(r, LPBUF, *a)(f[i])


def buf_bytes(p):
    return ctypes.string_at(_vt(p, 3, ctypes.c_void_p)(p),
                            _vt(p, 4, ctypes.c_ulong)(p))


d3dx.D3DXDisassembleShader.argtypes = [
    ctypes.c_void_p, wt.BOOL, ctypes.c_char_p, ctypes.POINTER(LPBUF)]
d3dx.D3DXDisassembleShader.restype = ctypes.c_long

b = open(EXE, "rb").read()
bl = {s["name"]: s for s in sh.bloecke(EXE)}


def slots(s):
    d = LPBUF()
    roh = b[s["versatz"]:s["versatz"] + s["byte"]]
    if d3dx.D3DXDisassembleShader(roh, False, None, ctypes.byref(d)) != 0:
        return None
    t = buf_bytes(d).split(b"\x00")[0].decode("latin-1")
    _vt(d, 2, ctypes.c_ulong)(d)
    m = re.search(r"approximately (\d+) instruction slots used", t)
    return int(m.group(1)) if m else None


FAMILIEN = ["rep_object_vs_cm", "rep_object_vs_cmdm",
            "rep_object_vs_cmdmfm", "rep_objectprelit_vs_lmcs",
            "rep_objectprelit_vs_lmcsa"]

print("=" * 74)
print("SLOTS gegen BEFEHLE -- die Lichtreihen")
print("=" * 74)
print("%-26s %-28s %s" % ("Familie", "Slots 0..4", "Zuwachs/Licht"))
zuwachs_slots = set()
for fam in FAMILIEN:
    reihe, bef = [], []
    for i in range(5):
        s = bl.get("%s%d.vsa" % (fam, i))
        if not s:
            reihe.append(None)
            bef.append(None)
            continue
        reihe.append(slots(s))
        bef.append(s["anzahl"])
    if all(x is not None for x in reihe):
        d = {reihe[i + 1] - reihe[i] for i in range(4)}
        zuwachs_slots |= d
        print("%-26s %-28s %s" % (fam.replace("rep_", ""),
                                  str(reihe), sorted(d)))

print()
print("  Befehlszahlen zum Vergleich (aus shader.py):")
for fam in FAMILIEN:
    r = [bl["%s%d.vsa" % (fam, i)]["anzahl"] for i in range(5)
         if "%s%d.vsa" % (fam, i) in bl]
    print("    %-26s %s" % (fam.replace("rep_", ""), r))

print()
print("=" * 74)
print("DIE NEUE RECHNUNG")
print("=" * 74)
teuerster = max(
    (bl["%s4.vsa" % f] for f in FAMILIEN if "%s4.vsa" % f in bl),
    key=lambda s: slots(s) or 0)
ts = slots(teuerster)
zs = sorted(zuwachs_slots)
print("  Teuerster Lichtshader: %s" % teuerster["name"])
print("     %d Slots (Befehle laut shader.py: %d)"
      % (ts, teuerster["anzahl"]))
print("  Zuwachs je Licht in Slots: %s" % zs)
if zs:
    je = max(zs)
    frei = 128 - ts
    print("  Frei bis zur vs.1.0-Grenze: 128 - %d = %d Slots" % (ts, frei))
    print("  *** Platz fuer %d weitere Lichter (%d / %d) ***"
          % (frei // je, frei, je))
    print("  Gesamt also hoechstens %d Lichter je Objekt." % (4 + frei // je))
print()
print("  Groesster Shader ueberhaupt:")
gross = max(bl.values(), key=lambda s: (slots(s) or 0) if s["art"] == "vs" else 0)
print("     %-38s %s Slots" % (gross["name"], slots(gross)))
