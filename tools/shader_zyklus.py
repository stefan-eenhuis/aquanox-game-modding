"""Der entscheidende Test fuer den d3d8to9-Weg.

d3d8to9 hebt vs_1_0 auf vs_1_1 an, indem es den Bytecode
DISASSEMBLIERT, im Text "vs_1_0" durch "vs_1_1" ersetzt und NEU
ASSEMBLIERT (Handoff 505).

AquaNox' Shader tragen im Bytecode die Debuginformation des
Assemblers (Kommentar-Token mit FILE<name>.vsa und LINE-Eintraegen).
Die meisten Spiele entfernen die vor der Auslieferung. Ob der
Disassemble-Reassemble-Zyklus damit sauber durchlaeuft, ist die
offene Frage -- und sie laesst sich hier beantworten, OHNE etwas zu
installieren.

*** ES WIRD NICHTS AM SPIEL VERAENDERT. *** Die Shader werden aus
der Exe GELESEN und im Arbeitsspeicher durch D3DX geschickt.
"""
import ctypes
import ctypes.wintypes as wt
import os
import sys

DOC = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu"
EXE = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox\Aqua.exe"
sys.path.insert(0, os.path.join(DOC, "toolkit"))
from aqtk.exe import shader as sh

# --- D3DX laden -------------------------------------------------------
d3dx = None
for name in ("d3dx9_43.dll", "d3dx9_42.dll", "d3dx9_41.dll",
             "d3dx9_40.dll", "d3dx9_39.dll", "d3dx9_36.dll",
             "d3dx9_33.dll", "d3dx9_28.dll", "d3dx9_27.dll",
             "d3dx9_26.dll", "d3dx9_25.dll", "d3dx9_24.dll"):
    try:
        d3dx = ctypes.WinDLL(name)
        print("D3DX geladen: %s" % name)
        break
    except OSError:
        continue
if d3dx is None:
    print("KEIN D3DX gefunden -- Test nicht moeglich.")
    sys.exit(1)


class Buffer(ctypes.Structure):
    pass


LPBUF = ctypes.POINTER(Buffer)

# ID3DXBuffer: QueryInterface, AddRef, Release, GetBufferPointer,
#              GetBufferSize
def buf_bytes(pbuf):
    vtbl = ctypes.cast(pbuf, ctypes.POINTER(ctypes.c_void_p)).contents.value
    fns = ctypes.cast(vtbl, ctypes.POINTER(ctypes.c_void_p))
    GetPtr = ctypes.WINFUNCTYPE(ctypes.c_void_p, LPBUF)(fns[3])
    GetSize = ctypes.WINFUNCTYPE(ctypes.c_ulong, LPBUF)(fns[4])
    p, n = GetPtr(pbuf), GetSize(pbuf)
    return ctypes.string_at(p, n)


def release(pbuf):
    vtbl = ctypes.cast(pbuf, ctypes.POINTER(ctypes.c_void_p)).contents.value
    fns = ctypes.cast(vtbl, ctypes.POINTER(ctypes.c_void_p))
    ctypes.WINFUNCTYPE(ctypes.c_ulong, LPBUF)(fns[2])(pbuf)


d3dx.D3DXDisassembleShader.argtypes = [
    ctypes.c_void_p, wt.BOOL, ctypes.c_char_p, ctypes.POINTER(LPBUF)]
d3dx.D3DXDisassembleShader.restype = ctypes.c_long
d3dx.D3DXAssembleShader.argtypes = [
    ctypes.c_char_p, ctypes.c_uint, ctypes.c_void_p, ctypes.c_void_p,
    ctypes.c_ulong, ctypes.POINTER(LPBUF), ctypes.POINTER(LPBUF)]
d3dx.D3DXAssembleShader.restype = ctypes.c_long

# --- Shader aus der Exe holen ----------------------------------------
b = open(EXE, "rb").read()
bloecke = sh.bloecke(EXE)
vs = [s for s in bloecke if s["art"] == "vs"]
print("%d Vertexshader in der Exe\n" % len(vs))

ok = fehl_dis = fehl_asm = 0
fehler = []

for s in vs:
    roh = b[s["versatz"]:s["versatz"] + s["byte"]]
    dis = LPBUF()
    hr = d3dx.D3DXDisassembleShader(roh, False, None, ctypes.byref(dis))
    if hr != 0 or not dis:
        fehl_dis += 1
        fehler.append((s["name"], "Disassemble 0x%08x" % (hr & 0xFFFFFFFF)))
        continue
    text = buf_bytes(dis).split(b"\x00")[0].decode("latin-1")
    release(dis)

    if "vs_1_0" not in text:
        fehler.append((s["name"], "kein vs_1_0 im Disassemblat"))
    neu = text.replace("vs_1_0", "vs_1_1", 1)

    out, err = LPBUF(), LPBUF()
    hr = d3dx.D3DXAssembleShader(neu.encode("latin-1"), len(neu), None,
                                 None, 0, ctypes.byref(out),
                                 ctypes.byref(err))
    if hr != 0 or not out:
        fehl_asm += 1
        msg = ""
        if err:
            msg = buf_bytes(err).split(b"\x00")[0].decode(
                "latin-1", "replace")[:120]
            release(err)
        fehler.append((s["name"], "Assemble 0x%08x %s"
                       % (hr & 0xFFFFFFFF, msg)))
        continue
    neu_bytes = buf_bytes(out)
    release(out)
    if err:
        release(err)

    # Traegt das Ergebnis wirklich vs_1_1?
    import struct
    ver = struct.unpack_from("<I", neu_bytes, 0)[0]
    if ver != 0xFFFE0101:
        fehler.append((s["name"], "Ergebnis-Version 0x%08x" % ver))
        continue
    ok += 1

print("=" * 66)
print("ERGEBNIS DES ZYKLUS  Disassemble -> vs_1_1 -> Assemble")
print("=" * 66)
print("  erfolgreich:            %3d von %d" % (ok, len(vs)))
print("  Disassemble gescheitert:%3d" % fehl_dis)
print("  Assemble gescheitert:   %3d" % fehl_asm)
if fehler:
    print("\n  Auffaelligkeiten (erste 12):")
    for n, m in fehler[:12]:
        print("    %-38s %s" % (n, m))
