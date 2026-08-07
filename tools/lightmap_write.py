#!/usr/bin/env python3
"""lightmap_write.py -- eine Ersatz-Lightmap fuer eigenes Terrain (B9).

DIE LAGE
    Wie Massives Editor SED Lightmaps BERECHNET, ist unbekannt und wird
    es vermutlich bleiben. Fuer ein eigenes Terrain braucht man aber
    eine -- ohne sie hat die Engine keine Beleuchtungsdaten fuer das
    Gelaende.

    GUTE NACHRICHT: alle 31 Original-Lightmaps sind byte-gleich
    aufgebaut -- 2048 x 2048, DXT3, 12 Mipmapstufen, 5.592.560 B, und
    ALLE haben denselben 128-Byte-Kopf. Eine Ersatzkarte muss also nur
    diesen Kopf uebernehmen und die Bloecke fuellen.

    DIE ORIGINALE SIND DUNKEL. Mittlere Basisfarbe der DXT3-Bloecke:
        1h1        RGB   4,  20,  34   (kalter Blaustich)
        3h3        RGB  16,  29,  11   (gruenlich)
        mp_06_dm   RGB  36,  38,   4   (warm)
    Eine neutrale Ersatzkarte sollte in dieser Groessenordnung liegen,
    nicht bei 255 -- sonst ist das Gelaende ueberstrahlt.

DXT3 IN KUERZE
    16 Byte je 4x4-Block:
        8 B  Alpha, 4 Bit je Pixel (0xFF... = voll deckend)
        2 B  Farbe 0 als RGB565
        2 B  Farbe 1 als RGB565
        4 B  Indizes, 2 Bit je Pixel
    Fuer eine einfarbige Flaeche: beide Farben gleich, Indizes 0.

AUFRUF
    lightmap_write.py <ziel.dds> [r g b]      Vorgabe 20 30 40
    lightmap_write.py <ziel.dds> --wie <vorhandene.dds>
"""
import os, sys, struct

BREITE = HOEHE = 2048
MIPS = 12

# Der Kopf ist bei allen 31 Originalen BYTE-IDENTISCH. Statt ihn von
# Hand nachzubauen (ein Versuch geriet vier Byte zu lang), wird er aus
# einer vorhandenen Lightmap uebernommen. Das ist auch robuster gegen
# Felder, deren Bedeutung wir nicht kennen.
def _kopf_aus_spiel():
    import glob
    hier = os.path.dirname(os.path.abspath(__file__))
    spiel = os.path.abspath(os.path.join(hier, "..", ".."))
    muster = os.path.join(spiel, "dat", "pak", "extracted", "map", "*",
                          "terrain", "lightmap.dds")
    for p in sorted(glob.glob(muster)):
        return open(p, "rb").read(128)
    raise SystemExit("keine Original-Lightmap gefunden -- Kopf fehlt")

KOPF = None          # wird beim ersten Aufruf geladen


def rgb565(r, g, b):
    return ((r >> 3) << 11) | ((g >> 2) << 5) | (b >> 3)


def block(r, g, b):
    """Ein einfarbiger DXT3-Block: voll deckend, beide Farben gleich."""
    c = rgb565(r, g, b)
    return b"\xff" * 8 + struct.pack("<HH", c, c) + b"\x00" * 4


def baue(r=20, g=30, b=40):
    """Alle 12 Mipmapstufen mit derselben Farbe."""
    global KOPF
    if KOPF is None:
        KOPF = _kopf_aus_spiel()
    if len(KOPF) != 128:
        raise ValueError(f"Kopf ist {len(KOPF)} B, muss 128 sein")
    daten = bytearray(KOPF)
    blk = block(r, g, b)
    w = h = BREITE
    for stufe in range(MIPS):
        bloecke = max(1, w // 4) * max(1, h // 4)
        daten += blk * bloecke
        w = max(1, w // 2)
        h = max(1, h // 2)
    return bytes(daten)


def farbe_aus(pfad, stichprobe=4000):
    """Die mittlere Basisfarbe einer vorhandenen Lightmap."""
    d = open(pfad, "rb").read()
    s = [0, 0, 0]
    n = 0
    for k in range(stichprobe):
        o = 128 + k * 16
        if o + 16 > len(d): break
        c0, c1 = struct.unpack_from("<HH", d, o + 8)
        for c in (c0, c1):
            s[0] += ((c >> 11) & 0x1F) * 255 // 31
            s[1] += ((c >> 5) & 0x3F) * 255 // 63
            s[2] += (c & 0x1F) * 255 // 31
            n += 1
    return [x // max(1, n) for x in s]


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print(__doc__); sys.exit(1)
    ziel = sys.argv[1]
    if len(sys.argv) > 3 and sys.argv[2] == "--wie":
        r, g, b = farbe_aus(sys.argv[3])
        print(f"Farbe aus {os.path.basename(sys.argv[3])}: RGB {r},{g},{b}")
    elif len(sys.argv) >= 5:
        r, g, b = int(sys.argv[2]), int(sys.argv[3]), int(sys.argv[4])
    else:
        r, g, b = 20, 30, 40
    d = baue(r, g, b)
    open(ziel, "wb").write(d)
    print(f"-> {ziel}   {len(d):,} B   RGB {r},{g},{b}")
    print(f"   (Original: 5.592.560 B -- "
          f"{'PASST' if len(d) == 5592560 else 'ABWEICHUNG'})")
