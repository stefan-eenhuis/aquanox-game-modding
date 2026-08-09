"""Warum scheitert das Reassemblieren -- und laesst es sich umgehen?

Erster Lauf: alle 79 Shader scheitern mit X5326 "Read of
uninitialized component". Zwei Erklaerungen sind zu pruefen, BEVOR
daraus ein Urteil ueber d3d8to9 wird:

  1. Der moderne Assembler prueft strenger als der von 2001. D3DX
     kennt das Flag D3DXSHADER_SKIPVALIDATION (0x1) -- damit koennte
     genau diese Pruefung entfallen.
  2. Das Disassemblat selbst koennte unvollstaendig sein.

Ausserdem: wie sieht das Disassemblat ueberhaupt aus?
"""
import ctypes
import ctypes.wintypes as wt
import os
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


def _vt(pbuf, idx, restype, *args):
    vtbl = ctypes.cast(pbuf, ctypes.POINTER(ctypes.c_void_p)).contents.value
    fns = ctypes.cast(vtbl, ctypes.POINTER(ctypes.c_void_p))
    return ctypes.WINFUNCTYPE(restype, LPBUF, *args)(fns[idx])


def buf_bytes(pbuf):
    p = _vt(pbuf, 3, ctypes.c_void_p)(pbuf)
    n = _vt(pbuf, 4, ctypes.c_ulong)(pbuf)
    return ctypes.string_at(p, n)


def release(pbuf):
    _vt(pbuf, 2, ctypes.c_ulong)(pbuf)


d3dx.D3DXDisassembleShader.argtypes = [
    ctypes.c_void_p, wt.BOOL, ctypes.c_char_p, ctypes.POINTER(LPBUF)]
d3dx.D3DXDisassembleShader.restype = ctypes.c_long
d3dx.D3DXAssembleShader.argtypes = [
    ctypes.c_char_p, ctypes.c_uint, ctypes.c_void_p, ctypes.c_void_p,
    ctypes.c_ulong, ctypes.POINTER(LPBUF), ctypes.POINTER(LPBUF)]
d3dx.D3DXAssembleShader.restype = ctypes.c_long

D3DXSHADER_SKIPVALIDATION = 0x00000001
D3DXSHADER_SKIPOPTIMIZATION = 0x00000004

b = open(EXE, "rb").read()
vs = [s for s in sh.bloecke(EXE) if s["art"] == "vs"]


def disassemblat(s):
    roh = b[s["versatz"]:s["versatz"] + s["byte"]]
    dis = LPBUF()
    hr = d3dx.D3DXDisassembleShader(roh, False, None, ctypes.byref(dis))
    if hr != 0 or not dis:
        return None
    t = buf_bytes(dis).split(b"\x00")[0].decode("latin-1")
    release(dis)
    return t


# --- 1) Wie sieht ein Disassemblat aus? ------------------------------
klein = min(vs, key=lambda x: x["anzahl"])
t = disassemblat(klein)
print("=" * 70)
print("DISASSEMBLAT von %s  (%d Befehle)" % (klein["name"], klein["anzahl"]))
print("=" * 70)
for i, z in enumerate(t.split("\n")[:22], 1):
    print("  %2d | %s" % (i, z.rstrip()))
print()

# --- 2) Mit SKIPVALIDATION erneut ------------------------------------
def versuch(text, flags):
    out, err = LPBUF(), LPBUF()
    hr = d3dx.D3DXAssembleShader(text.encode("latin-1"), len(text), None,
                                 None, flags, ctypes.byref(out),
                                 ctypes.byref(err))
    msg = ""
    if err:
        msg = buf_bytes(err).split(b"\x00")[0].decode("latin-1",
                                                     "replace")[:90]
        release(err)
    ver = None
    if hr == 0 and out:
        d = buf_bytes(out)
        if len(d) >= 4:
            ver = struct.unpack_from("<I", d, 0)[0]
        release(out)
    return hr, ver, msg


print("=" * 70)
print("ZWEITER VERSUCH -- mit D3DXSHADER_SKIPVALIDATION")
print("=" * 70)
for flags, name in ((0, "ohne Flags"),
                    (D3DXSHADER_SKIPVALIDATION, "SKIPVALIDATION"),
                    (D3DXSHADER_SKIPVALIDATION | D3DXSHADER_SKIPOPTIMIZATION,
                     "SKIPVALIDATION|SKIPOPT")):
    ok = 0
    beispiel = ""
    for s in vs:
        t = disassemblat(s)
        if t is None:
            continue
        hr, ver, msg = versuch(t.replace("vs_1_0", "vs_1_1", 1), flags)
        if hr == 0 and ver == 0xFFFE0101:
            ok += 1
        elif not beispiel:
            beispiel = "%s: hr=0x%08x ver=%s %s" % (
                s["name"], hr & 0xFFFFFFFF,
                ("0x%08x" % ver) if ver else "-", msg)
    print("  %-24s  %3d von %d erfolgreich" % (name, ok, len(vs)))
    if beispiel:
        print("      erster Fehlschlag: %s" % beispiel)
