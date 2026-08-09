"""Vierter Anlauf: die beiden oPos-Faelle reparieren.

Befund aus Lauf 3: 77 von 79 gelingen. Die zwei Fehlschlaege
(rep_terrainprelit_vs_copy, rep_terrainprelit_vs_lm) schreiben nur
oPos.xy. Der vs_1_1-Assembler verlangt X5350: alle vier Komponenten
von oPos muessen geschrieben werden. In vs_1_0 war das erlaubt.

Loesungsversuch: eine freie Konstante mit (0,0,0,1) definieren und
oPos.zw daraus setzen. c95 ist frei -- das hoechste in irgendeinem
Shader benutzte Konstantenregister ist c71 (Handoff 497.7).
"""
import ctypes
import ctypes.wintypes as wt
import os
import re
import struct
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


def release(p):
    _vt(p, 2, ctypes.c_ulong)(p)


d3dx.D3DXDisassembleShader.argtypes = [
    ctypes.c_void_p, wt.BOOL, ctypes.c_char_p, ctypes.POINTER(LPBUF)]
d3dx.D3DXDisassembleShader.restype = ctypes.c_long
d3dx.D3DXAssembleShader.argtypes = [
    ctypes.c_char_p, ctypes.c_uint, ctypes.c_void_p, ctypes.c_void_p,
    ctypes.c_ulong, ctypes.POINTER(LPBUF), ctypes.POINTER(LPBUF)]
d3dx.D3DXAssembleShader.restype = ctypes.c_long

DCL = {0: "dcl_position", 1: "dcl_normal", 2: "dcl_color",
       3: "dcl_texcoord0", 4: "dcl_texcoord1"}

b = open(EXE, "rb").read()
vs = [s for s in sh.bloecke(EXE) if s["art"] == "vs"]


def dis(s):
    d = LPBUF()
    roh = b[s["versatz"]:s["versatz"] + s["byte"]]
    if d3dx.D3DXDisassembleShader(roh, False, None, ctypes.byref(d)) != 0:
        return None
    t = buf_bytes(d).split(b"\x00")[0].decode("latin-1")
    release(d)
    return t


def umbauen(text, opos_ergaenzen=False):
    benutzt = sorted({int(m) for m in re.findall(r"\bv(\d+)\b", text)})
    zeilen = [z.rstrip() for z in text.split("\n")]
    for i, z in enumerate(zeilen):
        if "vs_1_" in z:
            zeilen[i] = z.replace("vs_1_0", "vs_1_1")
            ein = i + 1
            break
    else:
        return None
    kopf = ["    %s v%d" % (DCL.get(n, "dcl_texcoord%d" % n), n)
            for n in benutzt]
    if opos_ergaenzen:
        kopf.append("    def c95, 0, 0, 0, 1")
    rumpf = zeilen[ein:]
    if opos_ergaenzen:
        # Nach der letzten oPos-Zuweisung zw ergaenzen.
        letzte = max((k for k, z in enumerate(rumpf) if "oPos" in z),
                     default=None)
        if letzte is not None:
            rumpf.insert(letzte + 1, "    mov oPos.zw, c95")
    return "\n".join(zeilen[:ein] + kopf + rumpf)


def asm(text):
    out, err = LPBUF(), LPBUF()
    hr = d3dx.D3DXAssembleShader(text.encode("latin-1"), len(text), None,
                                 None, 0, ctypes.byref(out),
                                 ctypes.byref(err))
    msg = ""
    if err:
        msg = buf_bytes(err).split(b"\x00")[0].decode("latin-1",
                                                     "replace")
        release(err)
    ver = ln = None
    if hr == 0 and out:
        d = buf_bytes(out)
        ln = len(d)
        ver = struct.unpack_from("<I", d, 0)[0] if ln >= 4 else None
        release(out)
    return hr, ver, ln, msg


print("=" * 70)
print("DIE ZWEI FAELLE MIT ERGAENZTEM oPos.zw")
print("=" * 70)
for name in ("rep_terrainprelit_vs_copy.vsa", "rep_terrainprelit_vs_lm.vsa"):
    s = [x for x in vs if x["name"] == name][0]
    t = umbauen(dis(s), opos_ergaenzen=True)
    hr, ver, ln, msg = asm(t)
    print("\n%s" % name)
    for z in t.split("\n")[:11]:
        print("    " + z)
    print("  -> hr=0x%08x  Version=%s  %d Byte  %s"
          % (hr & 0xFFFFFFFF, ("0x%08x" % ver) if ver else "-", ln or 0,
             msg.strip()[:80]))

# Gesamtlauf: erst ohne, bei X5350 mit Ergaenzung
print()
print("=" * 70)
print("GESAMTLAUF -- Ergaenzung nur wo noetig")
print("=" * 70)
ok = ok_mit = 0
rest = []
for s in vs:
    t = dis(s)
    hr, ver, ln, msg = asm(umbauen(t))
    if hr == 0 and ver == 0xFFFE0101:
        ok += 1
        continue
    hr, ver, ln, msg = asm(umbauen(t, opos_ergaenzen=True))
    if hr == 0 and ver == 0xFFFE0101:
        ok_mit += 1
    else:
        rest.append((s["name"], msg.strip()[:70]))
print("  ohne Ergaenzung gelungen:  %3d" % ok)
print("  mit oPos-Ergaenzung:       %3d" % ok_mit)
print("  weiterhin gescheitert:     %3d" % len(rest))
for n, m in rest[:6]:
    print("     %-38s %s" % (n, m))
print()
print("  ZUSAMMEN: %d von %d" % (ok + ok_mit, len(vs)))
