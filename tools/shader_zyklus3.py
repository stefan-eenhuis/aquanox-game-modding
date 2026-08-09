"""Dritter Anlauf: mit dcl-Deklarationen.

Befund aus Lauf 2: das Disassemblat ist sauber, aber der
vs_1_1-Assembler meldet X5326 "Read of uninitialized component" beim
ersten Befehl, der ein v-Register liest.

*** DER GRUND: *** in vs_1_0 (D3D8) kamen die Eingaberegister aus der
separat uebergebenen Vertexdeklaration; im Shader stand nichts
darueber. Ab vs_1_1 muessen sie im Shader mit dcl_<semantik>
deklariert werden. Wer nur das Versionswort anhebt, bekommt einen
Shader, der seine Eingaben nicht kennt.

Die Deklaration von AquaNox ist bekannt (Handoff 497.6, fest in
DSP_Display::VertexShader_CreateFromFile 0x0050b7a0):
    v0 FLOAT3   Position
    v1 FLOAT3   Normale
    v2 D3DCOLOR Farbe
    v3 FLOAT2   Texturkoordinate
    v4 FLOAT1   (im .msb der Index)
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


def _vt(pbuf, idx, restype, *a):
    vtbl = ctypes.cast(pbuf, ctypes.POINTER(ctypes.c_void_p)).contents.value
    fns = ctypes.cast(vtbl, ctypes.POINTER(ctypes.c_void_p))
    return ctypes.WINFUNCTYPE(restype, LPBUF, *a)(fns[idx])


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

# Semantik je Eingaberegister, aus der Vertexdeklaration der Engine.
DCL = {0: "dcl_position", 1: "dcl_normal", 2: "dcl_color",
       3: "dcl_texcoord0", 4: "dcl_texcoord1"}

b = open(EXE, "rb").read()
vs = [s for s in sh.bloecke(EXE) if s["art"] == "vs"]


def disassemblat(s):
    roh = b[s["versatz"]:s["versatz"] + s["byte"]]
    d = LPBUF()
    if d3dx.D3DXDisassembleShader(roh, False, None, ctypes.byref(d)) != 0:
        return None
    t = buf_bytes(d).split(b"\x00")[0].decode("latin-1")
    release(d)
    return t


def mit_dcl(text):
    """vs_1_1 setzen und die benutzten v-Register deklarieren."""
    benutzt = sorted({int(m) for m in re.findall(r"\bv(\d+)\b", text)})
    zeilen = text.split("\n")
    # Versionszeile finden
    for i, z in enumerate(zeilen):
        if "vs_1_" in z:
            zeilen[i] = z.replace("vs_1_0", "vs_1_1")
            einfuege = i + 1
            break
    else:
        return None, benutzt
    dcl = ["    %s v%d" % (DCL.get(n, "dcl_texcoord%d" % n), n)
           for n in benutzt]
    return "\n".join(zeilen[:einfuege] + dcl + zeilen[einfuege:]), benutzt


def assemble(text, flags=0):
    out, err = LPBUF(), LPBUF()
    hr = d3dx.D3DXAssembleShader(text.encode("latin-1"), len(text), None,
                                 None, flags, ctypes.byref(out),
                                 ctypes.byref(err))
    msg = ""
    if err:
        msg = buf_bytes(err).split(b"\x00")[0].decode("latin-1",
                                                     "replace")[:100]
        release(err)
    ver = laenge = None
    if hr == 0 and out:
        d = buf_bytes(out)
        laenge = len(d)
        if laenge >= 4:
            ver = struct.unpack_from("<I", d, 0)[0]
        release(out)
    return hr, ver, laenge, msg


# --- Beispiel zeigen --------------------------------------------------
klein = min(vs, key=lambda x: x["anzahl"])
t = disassemblat(klein)
neu, benutzt = mit_dcl(t)
print("=" * 70)
print("BEISPIEL: %s   benutzte Eingaberegister: %s"
      % (klein["name"], benutzt))
print("=" * 70)
for z in neu.split("\n")[:8]:
    print("  " + z.rstrip())
print()

# --- Alle 79 ----------------------------------------------------------
ok = 0
groesser = 0
fehler = []
for s in vs:
    t = disassemblat(s)
    if t is None:
        fehler.append((s["name"], "Disassemble"))
        continue
    neu, benutzt = mit_dcl(t)
    if neu is None:
        fehler.append((s["name"], "keine Versionszeile"))
        continue
    hr, ver, laenge, msg = assemble(neu)
    if hr == 0 and ver == 0xFFFE0101:
        ok += 1
        if laenge and laenge > s["byte"]:
            groesser += 1
    else:
        fehler.append((s["name"], "hr=0x%08x %s" % (hr & 0xFFFFFFFF, msg)))

print("=" * 70)
print("ERGEBNIS  Disassemble -> vs_1_1 + dcl -> Assemble")
print("=" * 70)
print("  erfolgreich:  %3d von %d" % (ok, len(vs)))
print("  gescheitert:  %3d" % len(fehler))
for n, m in fehler[:8]:
    print("     %-38s %s" % (n, m))
