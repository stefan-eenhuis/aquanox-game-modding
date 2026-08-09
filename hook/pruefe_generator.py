"""Assembliert die Pixelshader, die der Wrapper fuer die 19 GEMESSENEN
Kombinationen erzeugen wird -- nach denselben Regeln wie AqBaueQuelltext.

Zweck: Syntax- und Haushaltsfehler finden, BEVOR das Spiel gestartet wird.
Ein Testlauf kostet mehr als dieses Skript.
"""
import ctypes, ctypes.wintypes as wt, re, os

LOG = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox\AquaNox_Messlauf_d3d8.log"

d3dx = ctypes.WinDLL("d3dx9_43.dll")


class B(ctypes.Structure):
    pass


LP = ctypes.POINTER(B)


def vt(p, i, r, *a):
    v = ctypes.cast(p, ctypes.POINTER(ctypes.c_void_p)).contents.value
    f = ctypes.cast(v, ctypes.POINTER(ctypes.c_void_p))
    return ctypes.WINFUNCTYPE(r, LP, *a)(f[i])


d3dx.D3DXAssembleShader.argtypes = [ctypes.c_char_p, ctypes.c_uint,
                                    ctypes.c_void_p, ctypes.c_void_p,
                                    ctypes.c_ulong,
                                    ctypes.POINTER(LP), ctypes.POINTER(LP)]
d3dx.D3DXAssembleShader.restype = ctypes.c_long

SELECTARG1, SELECTARG2, MODULATE, MODULATE2X = 2, 3, 4, 5
ADD, BLENDTEXTUREALPHA, MODALPHA_ADDCOLOR = 7, 13, 18


def arg(a, s):
    return {0: "r2", 1: ("r2" if s == 0 else "r3"), 2: "r6"}[a]


def baue(modus, lichter, hemi, additiv, stufen):
    """Nachbau von Direct3DDevice8::AqBaueQuelltext."""
    r = []
    if modus == 2:
        r.append("    mov r2, v0")
    else:
        r += ["    dp3 r0.w, t5, t5", "    max r0.w, r0.w, c31.x",
              "    rsq r0.w, r0.w", "    mul r0.xyz, t5, r0.w"]
        if hemi:
            r += ["    dp3 r1.w, r0, c13", "    mov_sat r1.x, r1.w",
                  "    mov_sat r1.y, -r1.w", "    mov r2, c9",
                  "    mad r2.xyz, c11, r1.x, r2",
                  "    mad r2.xyz, c12, r1.y, r2"]
        else:
            r.append("    mov r2, c31.x")
        for i in range(lichter):
            cF, cD, cP = 14 + 4 * i, 16 + 4 * i, 17 + 4 * i
            r += ["    add r4.xyz, c%d, -t6" % cP,
                  "    dp3 r4.w, r4, r4",
                  "    max r4.w, r4.w, c31.x",
                  "    rsq r5.w, r4.w",
                  "    mul r4.xyz, r4, r5.w",
                  "    mul r5.x, r4.w, r5.w",
                  "    mad r5.y, c%d.y, r5.x, c%d.x" % (cD, cD),
                  "    mad_sat r5.y, c%d.z, r4.w, r5.y" % cD,
                  "    dp3 r5.z, r4, r0",
                  "    mul r5.z, r5.z, r5.y",
                  "    mov_sat r5.z, r5.z",
                  "    mad r2.xyz, c%d, r5.z, r2" % cF]
        r.append("    mul_sat r2.xyz, r2, t7")
        if additiv:
            r.append("    add_sat r2.xyz, r2, c8")

    r.append("    mov r2.w, v0.w")

    tex = [False] * 4
    for s, (COp, CA1, CA2, AOp, AA1, AA2, T) in enumerate(stufen):
        if T == 1:
            r.append("    texld r6, t%d, s%d" % (s, s))
            tex[s] = True
        A1, A2 = arg(CA1, s), arg(CA2, s)
        B1, B2 = arg(AA1, s), arg(AA2, s)
        if COp == SELECTARG1:
            r.append("    mov r3.xyz, %s" % A1)
        elif COp == SELECTARG2:
            r.append("    mov r3.xyz, %s" % A2)
        elif COp == MODULATE:
            r.append("    mul r3.xyz, %s, %s" % (A1, A2))
        elif COp == MODULATE2X:
            r += ["    mul r3.xyz, %s, %s" % (A1, A2), "    add r3.xyz, r3, r3"]
        elif COp == ADD:
            r.append("    add r3.xyz, %s, %s" % (A1, A2))
        elif COp == BLENDTEXTUREALPHA:
            r += ["    lrp r10, r6.w, %s, %s" % (A1, A2), "    mov r3.xyz, r10"]
        elif COp == MODALPHA_ADDCOLOR:
            r.append("    mad r3.xyz, %s.w, %s, %s" % (A1, A2, A1))
        else:
            return None
        if AOp == SELECTARG1:
            r.append("    mov r3.w, %s.w" % B1)
        elif AOp == SELECTARG2:
            r.append("    mov r3.w, %s.w" % B2)
        elif AOp == MODULATE:
            r.append("    mul r3.w, %s.w, %s.w" % (B1, B2))
        else:
            return None

    r.append("    mov oC0, r3")

    k = ["ps_2_0", "    def c31, 0.000001, 0.5, 2.0, 1.0", "    dcl v0"]
    if modus != 2:
        k.append("    dcl t5")
        if modus >= 4:
            k += ["    dcl t6", "    dcl t7"]
    for s in range(4):
        if tex[s]:
            k += ["    dcl t%d" % s, "    dcl_2d s%d" % s]
    return "\n".join(k + r) + "\n"


def assembliere(q):
    kode, fehler = LP(), LP()
    hr = d3dx.D3DXAssembleShader(q.encode("ascii"), len(q), None, None, 0,
                                 ctypes.byref(kode), ctypes.byref(fehler))
    txt = ""
    if fehler:
        txt = ctypes.string_at(vt(fehler, 3, ctypes.c_void_p)(fehler)).decode("latin-1", "replace")
        vt(fehler, 2, ctypes.c_ulong)(fehler)
    n = 0
    if hr == 0 and kode:
        n = vt(kode, 4, ctypes.c_ulong)(kode) // 4
        vt(kode, 2, ctypes.c_ulong)(kode)
    return hr, txt, n


# --- die gemessenen Kombinationen einlesen ---
roh = open(LOG, "r", errors="replace").read()
zeilen = re.findall(r"> AquaNox-Messung: ([^\r\n]*)", roh)
print("Kombinationen im Messlauf: %d\n" % len(zeilen))

fehlerhaft = 0
for zl in zeilen:
    m = re.match(r"Licht=(\d+) Hemi=(\d+) Additiv=(\d+) \|(.*)", zl)
    lichter, hemi, additiv = int(m.group(1)), int(m.group(2)), int(m.group(3))
    stufen = []
    for st in re.findall(r"S\d\[COp=(\d+) CA1=0x([0-9A-F]+) CA2=0x([0-9A-F]+) "
                         r"AOp=(\d+) AA1=0x([0-9A-F]+) AA2=0x([0-9A-F]+) "
                         r"Tex=(\d+)", m.group(4)):
        stufen.append((int(st[0]), int(st[1], 16), int(st[2], 16),
                       int(st[3]), int(st[4], 16), int(st[5], 16), int(st[6])))

    for modus in (2, 4):
        q = baue(modus, lichter, hemi, additiv, stufen)
        if q is None:
            print("  Modus %d: nicht nachbaubar -- %s" % (modus, zl[:60]))
            continue
        hr, txt, n = assembliere(q)
        arith = len([x for x in q.split("\n")
                     if x.strip() and not x.strip().startswith(("ps_", "def", "dcl", "texld"))])
        marke = "OK " if hr == 0 else "*** FEHLER ***"
        print("  Modus %d  L=%d H=%d A=%d St=%d  Anweisungen=%2d  %s"
              % (modus, lichter, hemi, additiv, len(stufen), arith, marke))
        if hr != 0:
            fehlerhaft += 1
            print("      " + txt.strip().replace("\n", "\n      "))
            print("      ---- Quelltext ----")
            print("      " + q.replace("\n", "\n      "))

print("\n=== %d von %d fehlerhaft ===" % (fehlerhaft, len(zeilen) * 2))
