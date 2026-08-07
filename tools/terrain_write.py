#!/usr/bin/env python3
"""terrain_write.py -- ein AquaNox-Terrain von Grund auf erzeugen (A9).

WAS EIN TERRAIN BRAUCHT (map\\<level>\\terrain\\)
    hmap.tga          1025 x 1025, 24 bpp, unkomprimiert  die Hoehen
    material_s.tga     256 x  256, 32 bpp                 die Selektormap
    material_0.dds    256er oder 512er DXT1               Grundmaterial
    material_1.dds    optional, bis material_3
    material.des      die Kachelungsfaktoren W0..W3
    terrain.des       Offset, Scale, Triangulierung
    lightmap.dds      2048 x 2048 DXT3                    Beleuchtung
    radar_color.dds   1024 x 1024                         Radarbild
    dazu Detailtexturen 64x64 (coral, grass, stone, fungus)

WAS DIESES WERKZEUG KANN
    hmap.tga, material_s.tga, material.des und terrain.des erzeugen --
    also alles, was reine Struktur ist. Die Texturen und die Lightmap
    muessen aus einem vorhandenen Level kopiert werden; wie SED die
    Lightmap BERECHNET, ist unbekannt (aquanox_levelwelt.txt).

AUFRUF
    terrain_write.py <zielordner> <levelname> [hoehe] [--flach|--rampe]
"""
import os, sys, struct


# Die Originale tragen einen TGA-2.0-Footer: 4 B Extension-Offset,
# 4 B Developer-Offset, dann "TRUEVISION-XFILE." und ein Nullbyte.
# Ohne ihn ist die Datei 26 Byte kuerzer als das Original -- gemessen
# an map\1h1\terrain\hmap.tga.
FOOTER = struct.pack("<II", 0, 0) + b"TRUEVISION-XFILE." + b"\x00"


def tga_grau(breite, hoehe, werte):
    """Unkomprimiertes 24-bpp-TGA, wie hmap.tga der Originale."""
    kopf = bytes([0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0]) + \
           struct.pack("<HH", breite, hoehe) + bytes([24, 0])
    daten = bytearray()
    for y in range(hoehe):
        for x in range(breite):
            v = werte(x, y) & 0xFF
            daten += bytes([v, v, v])        # BGR
    return kopf + bytes(daten) + FOOTER


def tga_bgra(breite, hoehe, werte):
    """32-bpp-TGA, wie material_s.tga."""
    kopf = bytes([0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0]) + \
           struct.pack("<HH", breite, hoehe) + bytes([32, 0])
    daten = bytearray()
    for y in range(hoehe):
        for x in range(breite):
            b, g, r, a = werte(x, y)
            daten += bytes([b & 255, g & 255, r & 255, a & 255])
    return kopf + bytes(daten) + FOOTER


MATERIAL_DES = """[Wrapping]
{
\tW0 = %s
\tW1 = 32.0
\tW2 = 256.0
\tW3 = 8.0
}
"""

TERRAIN_DES = """[Parameter]
{
\tOffset   = -4096.0, -4096.0, 0.0
\tScale = 4.0, 4.0, 4.0
\tMinimumResolution = 30.0
\tMaximumD2  = 100.0
\tRestrictedQuadTree = 1
\tTriangulationMode  = 2
}

[Tile]
{
\tNumOfTriangulationMaps = 8
\tNumOfTiles = 1
\t[Tile0]
\t{
\t\tHeightField = "map\\%(lvl)s\\Terrain\\hmap.tga"
\t\tType = 0
\t\tTransition = 2
\t\tTexture = "map\\%(lvl)s\\Terrain\\tmap_l10.tga"
\t\tSED_CanChange = 1
\t}

}

[Grid]
{
\tNumOfLines = 3
\tLine0 = "0,0,0"
\tLine1 = "0,0,0"
\tLine2 = "0,0,0"
}
"""


def baue(ordner, level, hoehe=128, form="flach", w0=64.0):
    os.makedirs(ordner, exist_ok=True)
    N = 1025

    if form == "rampe":
        def h(x, y): return int(hoehe * x / (N - 1))
    elif form == "senke":
        mx, my = (N - 1) / 2, (N - 1) / 2
        def h(x, y):
            d = ((x - mx) ** 2 + (y - my) ** 2) ** 0.5 / mx
            return int(hoehe * min(1.0, d))
    else:
        def h(x, y): return hoehe

    p = os.path.join(ordner, "hmap.tga")
    open(p, "wb").write(tga_grau(N, N, h))
    print(f"   hmap.tga         {os.path.getsize(p):>10,} B   "
          f"{N}x{N}, {form}, Hoehe {hoehe}")

    # Selektormap: Material 0 voll, die uebrigen neutral (128)
    def sel(x, y): return (255, 128, 128, 32)
    p = os.path.join(ordner, "material_s.tga")
    open(p, "wb").write(tga_bgra(256, 256, sel))
    print(f"   material_s.tga   {os.path.getsize(p):>10,} B   256x256 BGRA")

    p = os.path.join(ordner, "material.des")
    open(p, "w", newline="\n").write(MATERIAL_DES % f"{w0:.1f}")
    print(f"   material.des     {os.path.getsize(p):>10,} B   W0={w0}")

    p = os.path.join(ordner, "terrain.des")
    open(p, "w", newline="\n").write(TERRAIN_DES % {"lvl": level.upper()})
    print(f"   terrain.des      {os.path.getsize(p):>10,} B")

    print("\n   NOCH ZU KOPIEREN aus einem vorhandenen Level:")
    for f in ("material_0.dds", "material_1.dds", "material_3.dds",
              "lightmap.dds", "radar_color.dds", "radar_height_fin.tga",
              "coral_01.tga", "grass_01.tga", "stone_01.tga",
              "fungus_01.tga"):
        print(f"       {f}")


# ============================================================ NEBEL (B5)
FOG_DES = """// DES file 'fog.des'.

[Fog]
{
\tInputFile  =  "fog"
\tOpacity  =  %(opac).2f
\tViewingDistance  =  %(sicht).1f
\tWaterDepth  =  %(tiefe).1f
\tWaterBase  =  0.0
\tClosingBarrier  =  0.70
\tMaximalAlpha = 0.36
}
"""


def baue_nebel(ordner, sicht=500.0, tiefe=1024.0, opazitaet=0.04,
               farbe=(20, 30, 45)):
    """Erzeugt fog.fog und fog.des.

    FORMAT (an allen 29 Originalen verifiziert, je 1.048.596 B):
        u32 64          Breite des Rasters
        u32 64          Hoehe
        u32 0
        f32 sicht/64    Schrittweite in der Entfernung
        f32 tiefe/64    Schrittweite in der Tiefe
        dann 64*64 Zellen a 256 B = je 64 RGBA-Werte
    Die Parameter stehen im Klartext in fog.des: ViewingDistance,
    WaterDepth, Opacity, ClosingBarrier, MaximalAlpha.
    """
    os.makedirs(ordner, exist_ok=True)
    kopf = struct.pack("<IIIff", 64, 64, 0, sicht / 64.0, tiefe / 64.0)
    r, g, b = farbe
    daten = bytearray(kopf)
    for zeile in range(64):            # Tiefe
        for spalte in range(64):       # Entfernung
            zelle = bytearray()
            for k in range(64):
                # Alpha waechst mit der Entfernung, Farbe dunkelt ab
                anteil = k / 63.0
                a = int(255 * min(1.0, anteil * opazitaet * 25))
                zelle += bytes([int(r * anteil), int(g * anteil),
                                int(b * anteil), a])
            daten += zelle
    p = os.path.join(ordner, "fog.fog")
    open(p, "wb").write(bytes(daten))
    print(f"   fog.fog          {os.path.getsize(p):>10,} B   "
          f"64x64, Sicht {sicht}, Tiefe {tiefe}")
    p = os.path.join(ordner, "fog.des")
    open(p, "w", newline="\n").write(FOG_DES % {
        "opac": opazitaet, "sicht": sicht, "tiefe": tiefe})
    print(f"   fog.des          {os.path.getsize(p):>10,} B")


# ============================================================ RADAR (B8)
def baue_radar(ordner, quelle_dds=None, farbe=(30, 50, 70)):
    """radar_color.dds (1024x1024 DXT3) und radar_height_fin.tga
    (256x256, 24 bpp). Der DDS-Kopf wird aus einem Original
    uebernommen -- alle 30 sind byte-gleich."""
    import glob as _g
    os.makedirs(ordner, exist_ok=True)
    if quelle_dds is None:
        hier = os.path.dirname(os.path.abspath(__file__))
        spiel = os.path.abspath(os.path.join(hier, "..", ".."))
        kand = sorted(_g.glob(os.path.join(
            spiel, "dat", "pak", "extracted", "map", "*", "terrain",
            "radar_color.dds")))
        quelle_dds = kand[0] if kand else None
    if quelle_dds and os.path.exists(quelle_dds):
        kopf = open(quelle_dds, "rb").read(128)
        r, g, b = farbe
        c = ((r >> 3) << 11) | ((g >> 2) << 5) | (b >> 3)
        blk = b"\xff" * 8 + struct.pack("<HH", c, c) + b"\x00" * 4
        daten = bytearray(kopf)
        w = h = 1024
        for _ in range(11):
            daten += blk * (max(1, w // 4) * max(1, h // 4))
            w = max(1, w // 2); h = max(1, h // 2)
        p = os.path.join(ordner, "radar_color.dds")
        open(p, "wb").write(bytes(daten))
        print(f"   radar_color.dds  {os.path.getsize(p):>10,} B   "
              f"1024x1024 DXT3")
    p = os.path.join(ordner, "radar_height_fin.tga")
    open(p, "wb").write(tga_grau(256, 256, lambda x, y: 64))
    print(f"   radar_height_fin {os.path.getsize(p):>10,} B   256x256")


if __name__ == "__main__":
    if len(sys.argv) < 3:
        print(__doc__); sys.exit(1)
    ordner, level = sys.argv[1], sys.argv[2]
    hoehe = int(sys.argv[3]) if len(sys.argv) > 3 else 128
    form = "flach"
    for a in sys.argv[4:]:
        if a.startswith("--"): form = a[2:]
    print(f"Terrain fuer '{level}' nach {ordner}")
    baue(ordner, level, hoehe, form)
    print()
    baue_nebel(os.path.join(os.path.dirname(ordner), "fog")
               if os.path.basename(ordner) == "terrain" else ordner)
    print()
    baue_radar(ordner)
