#!/usr/bin/env python3
"""msh_write.py -- schreibt Massives Klartext-Meshformat .msh

DAS FORMAT
    .msh ist der 3ds-Max-Export, den Massives Editor SED eingelesen hat.
    Die Engine liest ihn DIREKT, ohne Kompilierung -- belegt fuer HUD
    und Menue (41 Dateien, referenziert aus vfx\\hud\\hud.des und
    vfx\\menu\\menu.des). Ob sie ihn auch fuer Objekte annimmt, ist
    UNGEPRUEFT: das ist Test T7 in mod_docu\\OFFENE_TESTS.txt.

    Aufbau, aus allen 41 Originaldateien abgeleitet:

        [Vertex]   NumOfV, dann V0..Vn = x, y, z
        [Material] NumOfM, [SortOrder] mit M0..Mn,
                   dann [M0..Mn] mit den 3ds-Max-Materialfeldern
                   und je einem [Map_Diffuse]
        [Polygon]  NumOfP, dann [P0..Pn] mit
                     G  = Glaettungsgruppe
                     M  = Materialindex
                     V0/V1/V2 = Vertexindizes
                     P0/P1/P2 = UV je ECKE (nicht je Vertex!)

ZWEI VORTEILE GEGENUEBER .msb
    - lesbarer Text, mit jedem Editor zu bearbeiten
    - mehr Materialdaten: Specular, Shine, Opacity, Transparenzart,
      Schattierungsmodell. Im kompilierten .msb bleiben davon nur zwei
      Texturslots je Block.
    - UV je Ecke: UV-Naehte brauchen KEINE doppelten Vertices.
      (atl_pscout.msb hat 716 Vertices fuer nur 304 Positionen.)

VERWENDUNG
    msh_write.py cube <ziel.msh> [kantenlaenge] [textur]
    msh_write.py obj  <quelle.obj> <ziel.msh> [textur]

    Als Bibliothek:
        import msh_write as W
        d = W.build(vertices, polygone, materialien)
        open("ziel.msh", "w").write(d)
"""
import os, sys, math

# --- Materialvorgaben, wie sie in den Originalen stehen ---------------
STANDARD_MATERIAL = {
    "Diffuse":          "1.000000, 1.000000, 1.000000",
    "Specular":         "1.000000, 1.000000, 1.000000",
    "Shine":            "0.000000",
    "ShineStrength":    "0.000000",
    "Opacity":          "1.000000",
    "ShadingType":      '"Blinn"',
    "FalloffType":      '"In"',
    "FalloffFactor":    "0.000000",
    "OneSided":         "1",
    "SelfIllumination": "1.000000",
    "TrancparencyType": '"Filter"',      # Tippfehler steht so im Original
    "DepthBias":        "0",
    "DepthBuffered":    "1",
}
# TrancparencyType kennt laut Originalen: "Filter", "Additive",
# "DESTCOLOR_ZERO"


def material(name, bitmap, **abweichung):
    """Ein Materialeintrag. abweichung ueberschreibt einzelne Felder."""
    m = dict(STANDARD_MATERIAL)
    m.update({k: str(v) for k, v in abweichung.items()})
    m["_name"] = name
    m["_bitmap"] = bitmap
    return m


def _material_block(nr, m):
    z = [f"  [M{nr}] ", "  { ", f'    Name = "{m["_name"]}" ', "",
         "    _SED_NewVersion = 1 "]
    for k in ("Diffuse", "Specular", "Shine", "ShineStrength", "Opacity",
              "ShadingType", "FalloffType", "FalloffFactor", "OneSided",
              "SelfIllumination", "TrancparencyType", "DepthBias",
              "DepthBuffered"):
        z.append(f"    {k} = {m[k]} ")
    z += ["    [Map_Diffuse] ", "    { ",
          f'      Name = "Map #{nr + 1}" ',
          "      Amount = 1.000000 ",
          f'      Bitmap = "{m["_bitmap"]}" ',
          '      MappingType = "Explicit" ',
          "      TilingU = 1.000000 ",
          "      TilingV = 1.000000 ",
          '      Filter = "Pyramidal" ',
          "    } ",
          "    _SED_ShowColorRed = 0 ",
          "    _SED_ShowColorGreen = 0 ",
          "    _SED_ShowColorBlue = 0 ",
          "  } ", ""]
    return "\n".join(z)


def build(vertices, polygone, materialien):
    """vertices  : [(x, y, z), ...]
       polygone  : [(v0, v1, v2, uv0, uv1, uv2, matindex, glaettung), ...]
                   uvN sind (u, v)-Paare
       materialien: [material(...), ...]"""
    for i, (v0, v1, v2, *rest) in enumerate(polygone):
        for v in (v0, v1, v2):
            if not 0 <= v < len(vertices):
                raise ValueError(
                    f"Polygon {i}: Vertexindex {v} ausserhalb von "
                    f"0..{len(vertices)-1}")
    for i, p in enumerate(polygone):
        if p[6] >= len(materialien):
            raise ValueError(
                f"Polygon {i}: Materialindex {p[6]} ausserhalb von "
                f"0..{len(materialien)-1}")

    t = ["[_SED_Detail] ", "{ ", "  DetailNumber = 0 ",
         "  DetailCount = 0 ", "}", "",
         "[Vertex]", "{", f"  NumOfV = {len(vertices)} "]
    for i, (x, y, z) in enumerate(vertices):
        t.append(f"  V{i} = {x:.6f}, {y:.6f}, {z:.6f} ")
    t += ["} ", "", "[Material] ", "{ ", f"  NumOfM = {len(materialien)} ",
          "", "  [SortOrder]", "  {"]
    for i in range(len(materialien)):
        t.append(f"    M{i} = {i}")
    t += ["  }"]
    for i, m in enumerate(materialien):
        t.append(_material_block(i, m))
    t += ["} ", "", "[Polygon] ", "{ ", f"  NumOfP = {len(polygone)} ",
          "  _SED_NewVersion = 1 "]
    for i, (v0, v1, v2, uv0, uv1, uv2, mat, glatt) in enumerate(polygone):
        t += [f"  [P{i}] ", "  { ",
              f"    G = {glatt} ", f"    M = {mat} ",
              "    _SED_Mark = 0 ",
              f"    V0 = {v0}    V1 = {v1}    V2 = {v2} ",
              f"    P0 = {uv0[0]:.6f}, {uv0[1]:.6f} ",
              f"    P1 = {uv1[0]:.6f}, {uv1[1]:.6f} ",
              f"    P2 = {uv2[0]:.6f}, {uv2[1]:.6f} ",
              "  } "]
    t += ["} ", ""]
    return "\n".join(t)


# ----------------------------------------------------------------- Wuerfel
def cube(kante=5.0, textur="gen_metal1_0"):
    h = kante / 2.0
    ecken = [(-h,-h,-h), ( h,-h,-h), ( h, h,-h), (-h, h,-h),
             (-h,-h, h), ( h,-h, h), ( h, h, h), (-h, h, h)]
    # je Seite zwei Dreiecke, eigene Glaettungsgruppe -> harte Kanten
    seiten = [((0,1,2),(0,2,3), 1), ((5,4,7),(5,7,6), 2),
              ((4,0,3),(4,3,7), 3), ((1,5,6),(1,6,2), 4),
              ((3,2,6),(3,6,7), 5), ((4,5,1),(4,1,0), 6)]
    uv = [(0.0,0.0), (1.0,0.0), (1.0,1.0)]
    uv2 = [(0.0,0.0), (1.0,1.0), (0.0,1.0)]
    poly = []
    for (a, b, g) in seiten:
        poly.append((a[0], a[1], a[2], uv[0], uv[1], uv[2], 0, g))
        poly.append((b[0], b[1], b[2], uv2[0], uv2[1], uv2[2], 0, g))
    return build(ecken, poly, [material("testcube_mat", textur)])


# --------------------------------------------------------------- OBJ-Import
def from_obj(pfad, textur="gen_metal1_0"):
    v, vt, poly = [], [], []
    for zeile in open(pfad, encoding="utf-8", errors="replace"):
        w = zeile.split()
        if not w: continue
        if w[0] == "v":  v.append(tuple(float(x) for x in w[1:4]))
        elif w[0] == "vt": vt.append((float(w[1]), float(w[2])))
        elif w[0] == "f":
            ecken = []
            for teil in w[1:]:
                st = teil.split("/")
                vi = int(st[0]) - 1
                ti = int(st[1]) - 1 if len(st) > 1 and st[1] else None
                ecken.append((vi, ti))
            for k in range(1, len(ecken) - 1):     # Faecher-Triangulierung
                tri = [ecken[0], ecken[k], ecken[k+1]]
                uvs = [vt[t] if t is not None and t < len(vt) else (0.0, 0.0)
                       for _, t in tri]
                poly.append((tri[0][0], tri[1][0], tri[2][0],
                             uvs[0], uvs[1], uvs[2], 0, 1))
    if not v:
        raise ValueError("keine Vertices im OBJ gefunden")
    return build(v, poly, [material("obj_mat", textur)])


def _hilfe():
    print(__doc__)
    sys.exit(1)

if __name__ == "__main__":
    if len(sys.argv) < 3: _hilfe()
    modus = sys.argv[1]
    if modus == "cube":
        ziel = sys.argv[2]
        kante = float(sys.argv[3]) if len(sys.argv) > 3 else 5.0
        tex = sys.argv[4] if len(sys.argv) > 4 else "gen_metal1_0"
        d = cube(kante, tex)
    elif modus == "obj":
        if len(sys.argv) < 4: _hilfe()
        quelle, ziel = sys.argv[2], sys.argv[3]
        tex = sys.argv[4] if len(sys.argv) > 4 else "gen_metal1_0"
        d = from_obj(quelle, tex)
    else:
        _hilfe()
    with open(ziel, "w", encoding="latin-1", newline="\n") as f:
        f.write(d)
    zeilen = d.count("\n")
    print(f"-> {ziel}   {len(d):,} B, {zeilen} Zeilen")
