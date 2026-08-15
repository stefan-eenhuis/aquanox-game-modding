# 674: Offline-Assemblierprobe (Regel 599) fuer den v3-Selektor-Weg:
#   1. dmfm-ZWEITFASSUNG (vs_3_0) mit neuer oT4-Durchreichung der
#      Selektor-UV (mov o7.xy, v3) -- Text exakt wie ihn AqNachVS3 aus
#      dem Disassemblat + den vier mov-Zeilen erzeugt.
#   2. TerrainMix2-PS: Selektor direkt per texld r26, v9, s2 (t4->v9-
#      Tausch, dcl_texcoord4 v9) + neue Anti-Kachel-Basis
#      welt.xy = t4*c6.z (mul+add/add, c6.z = 4096; X5583: nur EIN
#      v-Register je Anweisung -- die mad-Fassung fiel durch) -- voll.
#   3. Kontrolle: Nicht-Terrain-Anti-Kachel roh (unveraendert).
# X5584 (EIN Konstantenregister je Anweisung) beruecksichtigt:
# mad nutzt nur c6, mul nur c5. hr=0 Pflicht fuer alle drei.
import ctypes

# --- 1: dmfm-Zweitfassung vs_3_0 (674) ------------------------------
# Original-dmfm: m4x4 oPos,v0,c3 / add r0.xy,v0,c19 / mul oT0.xy,r0,c20.
# Zweitfassung haengt an: oT4=v3 (NEU), oT5=v1, oT6=v0, oT7=v2.
# AqNachVS3: Eingaenge nach Registernummer-Semantik (v1=blendweight,
# v2=blendindices, v3=normal), Ausgaenge oPos->o0, oT0->o3, oT4->o7,
# oT5->o8, oT6->o9, oT7->o10.
VS_DMFM_674 = b"""vs_3_0
    dcl_position v0
    dcl_blendweight v1
    dcl_blendindices v2
    dcl_normal v3
    dcl_position o0
    dcl_texcoord0 o3
    dcl_texcoord4 o7
    dcl_texcoord5 o8
    dcl_texcoord6 o9
    dcl_texcoord7 o10
    m4x4 o0, v0, c3
    add r0.xy, v0, c19
    mul o3.xy, r0, c20
    mov o7.xy, v3
    mov o8, v1
    mov o9, v0
    mov o10, v2
"""

# --- 2: TerrainMix2-PS mit v3-Selektor + neuer Anti-Kachel-Basis ----
# (Modus 23, Stufen=1, SELECTARG2, KartenStufe 0; t4->v9, t6->v7)
TERRA_674 = b"""ps_3_0
    def c30, 24.0, 1.0, 5.0, 0.04
    def c31, 0.000001, 0.5, 2.0, 1.0
    def c1, 0.31830989, 1.0, 16384.0, 0.7
    def c3, 0.85, 0.57735, 0.57735, 0.57735
    def c6, 0.0727273, 0.25, 4096.0, 0.0
    dcl_color v0
    dcl_texcoord5 v6
    dcl_texcoord6 v7
    dcl_texcoord7 v8
    dcl_2d s1
    dcl_2d s3
    dcl_2d s2
    dcl_texcoord4 v9
    dcl_texcoord0 v2
    dcl_2d s0
    mov r2, v0
    texld r6, v2, s0
    mov r3.xyz, r6
    mov r3.w, r6.w
    mul r24.xy, v2, c6.x
    texld r24, r24, s1
    mul r25.xy, v2, c6.y
    texld r25, r25, s3
    texld r26, v9, s2
    mov r23.w, r26.w
    add r26.xyz, r25, -r24
    mad r26.xyz, r23.w, r26, r24
    mul r26.xyz, r26, c31.y
    mad r3.xyz, r3, c31.y, r26
    mul r24.xy, v9, c6.z
    add r24.x, r24.x, v7.z
    add r24.y, r24.y, -v7.z
    mul r24.xy, r24, c5.z
    texld r24, r24, s0
    dp3 r24.w, r24, c1.x
    dp3 r25.w, r6, c1.x
    add r24.w, r24.w, -r25.w
    mul r24.w, r24.w, c5.w
    add r24.w, r24.w, c31.w
    max r24.w, r24.w, c31.y
    mul r3.xyz, r3, r24.w
    mov oC0, r3
"""

# --- 3: Kontrolle Nicht-Terrain-Anti-Kachel (roh, unveraendert) -----
ROH_AK = b"""ps_3_0
    def c31, 0.000001, 0.5, 2.0, 1.0
    def c1, 0.31830989, 1.0, 16384.0, 0.7
    dcl_color v0
    dcl_texcoord6 v7
    dcl_texcoord0 v2
    dcl_2d s0
    mov r2, v0
    texld r6, v2, s0
    mov r3.xyz, r6
    mov r3.w, r6.w
    add r24.x, v7.x, v7.z
    add r24.y, v7.y, -v7.z
    mul r24.xy, r24, c5.z
    texld r24, r24, s0
    dp3 r24.w, r24, c1.x
    dp3 r25.w, r6, c1.x
    add r24.w, r24.w, -r25.w
    mul r24.w, r24.w, c5.w
    add r24.w, r24.w, c31.w
    max r24.w, r24.w, c31.y
    mul r3.xyz, r3, r24.w
    mov oC0, r3
"""

d3dx = ctypes.WinDLL("d3dx9_43.dll")


def puffer_text(p):
    if not p:
        return ""
    vt = ctypes.cast(p, ctypes.POINTER(ctypes.c_void_p))[0]
    fn = ctypes.cast(ctypes.cast(vt, ctypes.POINTER(ctypes.c_void_p))[3],
                     ctypes.CFUNCTYPE(ctypes.c_void_p, ctypes.c_void_p))
    return ctypes.string_at(fn(p)).decode("ascii", "replace")


def probe(name, quelle):
    code = ctypes.c_void_p()
    fehler = ctypes.c_void_p()
    hr = d3dx.D3DXAssembleShader(
        ctypes.c_char_p(quelle), len(quelle), None, None, 0,
        ctypes.byref(code), ctypes.byref(fehler))
    if hr == 0:
        print("%s: ASSEMBLIERT OK (hr=0)" % name)
        return True
    print("%s: FEHLER hr=0x%08X" % (name, hr & 0xFFFFFFFF))
    print(puffer_text(fehler))
    return False


ok = True
ok &= probe("VS-DMFM-674     ", VS_DMFM_674)
ok &= probe("TERRAINMIX2-674 ", TERRA_674)
ok &= probe("ANTIKACHEL-ROH  ", ROH_AK)
raise SystemExit(0 if ok else 1)
