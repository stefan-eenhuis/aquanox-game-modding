"""Assembliert die erzeugten Pixelshader -- Stand nach den Korrekturen
F1..F8 aus der Verifikation.

Geprueft werden:
  a) die 19 GEMESSENEN Kombinationen, in Modus 2 und 4
  b) die SCHLIMMSTEN DENKBAREN Faelle, die im Messlauf nicht
     vorkamen, aber deren Vertexshader in der Exe existieren:
     4 Punktlichter + Hemisphaere + Glanz + 3 Texturstufen
"""
import ctypes, ctypes.wintypes as wt, re

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


def baue(modus, lichter, hemi, additiv, glanz, stufen):
    r = []
    if modus == 2:
        r.append("    mov r2, v0")
    elif modus == 3:
        r += ["    dp3 r0.w, t5, t5", "    max r0.w, r0.w, c31.x",
              "    rsq r0.w, r0.w", "    mul r0.xyz, t5, r0.w",
              "    mad r2.xyz, r0, c31.y, c31.y"]
    else:
        r += ["    dp3 r0.w, t5, t5", "    max r0.w, r0.w, c31.x",
              "    rsq r0.w, r0.w", "    mul r0.xyz, t5, r0.w"]
        if hemi:                                    # F4: kein mov_sat
            r += ["    dp3 r1.w, r0, c13",
                  "    max r1.x, r1.w, c31.x",
                  "    max r1.y, -r1.w, c31.x",
                  "    mov r2, c9",
                  "    mad r2.xyz, c11, r1.x, r2",
                  "    mad r2.xyz, c12, r1.y, r2"]
        else:
            r.append("    mov r2, c31.x")
        for i in range(lichter):                    # F6a: mul_sat
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
                  "    mul_sat r5.z, r5.z, r5.y",
                  "    mad r2.xyz, c%d, r5.z, r2" % cF]
        if additiv:                                 # F5: eine Klemmung
            r.append("    mad_sat r2.xyz, r2, t7, c8")
        else:
            r.append("    mul_sat r2.xyz, r2, t7")

    r.append("    mov r2.w, v0.w")

    tex = [False] * 4
    for s, (COp, CA1, CA2, AOp, AA1, AA2, T) in enumerate(stufen):
        if T == 1:
            r.append("    texld r6, t%d, s%d" % (s, s))
            tex[s] = True
        A1, A2 = arg(CA1, s), arg(CA2, s)
        B1, B2 = arg(AA1, s), arg(AA2, s)
        if COp == SELECTARG1:                       # F1: _sat ueberall
            r.append("    mov r3.xyz, %s" % A1)
        elif COp == SELECTARG2:
            r.append("    mov r3.xyz, %s" % A2)
        elif COp == MODULATE:
            r.append("    mul_sat r3.xyz, %s, %s" % (A1, A2))
        elif COp == MODULATE2X:
            r += ["    mul r3.xyz, %s, %s" % (A1, A2), "    add_sat r3.xyz, r3, r3"]
        elif COp == ADD:
            r.append("    add_sat r3.xyz, %s, %s" % (A1, A2))
        elif COp == BLENDTEXTUREALPHA:
            r += ["    lrp r10, r6.w, %s, %s" % (A1, A2), "    mov_sat r3.xyz, r10"]
        elif COp == MODALPHA_ADDCOLOR:
            r.append("    mad_sat r3.xyz, %s.w, %s, %s" % (A1, A2, A1))
        else:
            return None
        q = None                                    # F6b: kein mov r3.w,r3.w
        if AOp == SELECTARG1:
            q = B1
        elif AOp == SELECTARG2:
            q = B2
        elif AOp == MODULATE:
            r.append("    mul r3.w, %s.w, %s.w" % (B1, B2))
        else:
            return None
        if q is not None and q != "r3":
            r.append("    mov r3.w, %s.w" % q)

    if glanz:                                       # F3
        r.append("    add_sat r3.xyz, r3, v1")
    r.append("    mov oC0, r3")

    k = ["ps_2_0", "    def c31, 0.000001, 0.5, 2.0, 1.0", "    dcl v0"]
    if glanz:
        k.append("    dcl v1")
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
    if hr == 0 and kode:
        vt(kode, 2, ctypes.c_ulong)(kode)
    return hr, txt


def arith(q):
    return len([x for x in q.split("\n") if x.strip()
                and not x.strip().startswith(("ps_", "def", "dcl", "texld"))])


kombis = []
roh = open(LOG, "r", errors="replace").read()
for zl in re.findall(r"> AquaNox-Messung: ([^\r\n]*)", roh):
    m = re.match(r"Licht=(\d+) Hemi=(\d+) Additiv=(\d+) \|(.*)", zl)
    st = []
    for g in re.findall(r"S\d\[COp=(\d+) CA1=0x([0-9A-F]+) CA2=0x([0-9A-F]+) "
                        r"AOp=(\d+) AA1=0x([0-9A-F]+) AA2=0x([0-9A-F]+) Tex=(\d+)", m.group(4)):
        st.append((int(g[0]), int(g[1], 16), int(g[2], 16),
                   int(g[3]), int(g[4], 16), int(g[5], 16), int(g[6])))
    kombis.append((int(m.group(1)), int(m.group(2)), int(m.group(3)), st, "gemessen"))

# Die drei laengsten gemessenen Ketten, jetzt mit 4 Lichtern, Hemisphaere,
# Additiv und Glanz -- der schlimmste Fall, den die Exe hergibt.
laengste = max(kombis, key=lambda k: len(k[3]))[3]
for L in (3, 4):
    kombis.append((L, 1, 1, laengste, "SCHLIMMSTFALL"))

print("Faelle: %d\n" % len(kombis))
fehler = 0
maxi = 0
for (L, H, A, st, art) in kombis:
    for modus in (2, 4):
        for glanz in ((0, 1) if modus == 4 else (0,)):
            q = baue(modus, L, H, A, glanz, st)
            if q is None:
                continue
            hr, txt = assembliere(q)
            n = arith(q)
            maxi = max(maxi, n)
            ok = "OK" if hr == 0 else "*** FEHLER ***"
            marke = "  <<<" if art == "SCHLIMMSTFALL" else ""
            if hr != 0 or art == "SCHLIMMSTFALL":
                print("  M%d L=%d H=%d A=%d G=%d St=%d  Anw=%2d  %s%s"
                      % (modus, L, H, A, glanz, len(st), n, ok, marke))
            if hr != 0:
                fehler += 1
                print("      " + txt.strip().replace("\n", "\n      "))

print("\n=== %d fehlerhaft, hoechste Anweisungszahl: %d von 64 ===" % (fehler, maxi))
