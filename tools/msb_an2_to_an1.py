#!/usr/bin/env python3
"""AquaNox-2-Meshes (.msb) in die AquaNox-1-Konvention bringen.

BEFUND (Handoff aquanox2_analyse_handoff, Abschnitt Mesh-Portierung):
Das .msb-Format ist zwischen AN1 und AN2 bis auf EIN Feld identisch --
Kopf, Blockstruktur, Vertexlayout (40 B) und Dreiecke (8 B) stimmen exakt.

Blockstruktur:
    Datei : 00 02 | nBlocks(u16) | 00 00 | <Block>*
    Block : 00 02 | vCount(u32) | tCount(u32)
            | Vertex[vCount * 40]        (Pos3f, Normal3f, Farbe u32, UV2f, u32)
            | Tri[tCount * 8]            (3x u16 Index + u16 Flags)
            | Material 2x 80 B           (16 B Kopf + 64 B Texturname)
            | Trailer 46 B               (14 B + BBox 6x f32 + ACHTFELD)

Das ACHTFELD (die letzten 8 B vor dem naechsten Blockkopf):
    AN1 : 00 00 00 00 00 00 f0 3f   -- ein double 1.0, ausnahmslos
                                       (101 von 101 Bloecken in 25 Meshes)
    AN2 : 00 00 80 3f XX 00 00 00   -- float 1.0 + neues uint32 (10..80)

AN2 hat den double auf float verkuerzt und die frei gewordenen 4 B fuer ein
neues Feld benutzt. AN1 liest die AN2-Bytes als double und bekommt ~1e-312,
also praktisch 0 -- daraus folgt die kaputte Darstellung.

Der letzte Block hat keinen nachfolgenden Kopf und damit kein Achtfeld;
er bleibt unangetastet.
"""
import struct, sys, os, glob

AN1_TRAILER = bytes.fromhex("000000000000f03f")   # double 1.0


def parse_blocks(d):
    """[(hdr_off, vCount, tCount, vOff, tOff, matOff, endOff)] in Dateireihenfolge."""
    if len(d) < 6 or d[0:2] != b"\x00\x02":
        raise ValueError("kein MSB (Magic 00 02 fehlt)")
    n = struct.unpack_from("<H", d, 2)[0]
    blocks, off = [], 6
    for _ in range(n):
        if off + 10 > len(d):
            break
        vc, tc = struct.unpack_from("<II", d, off + 2)
        if not (1 <= vc <= 20000 and 1 <= tc <= 20000):
            break
        vOff = off + 10
        tOff = vOff + vc * 40
        mOff = tOff + tc * 8
        # naechsten plausiblen Blockkopf suchen
        p, nxt = mOff, None
        while p + 10 < len(d):
            if d[p] == 0x00 and d[p + 1] == 0x02:
                vc2, tc2 = struct.unpack_from("<II", d, p + 2)
                if 1 <= vc2 <= 20000 and 1 <= tc2 <= 20000 and p + 10 + vc2 * 40 <= len(d):
                    nxt = p
                    break
            p += 1
        end = nxt if nxt is not None else len(d)
        blocks.append((off, vc, tc, vOff, tOff, mOff, end))
        if nxt is None:
            break
        off = nxt
    return blocks


def convert(data):
    """Gibt (neue_bytes, anzahl_geaenderter_bloecke) zurueck. Laenge bleibt gleich."""
    blocks = parse_blocks(data)
    out = bytearray(data)
    n = 0
    for i, (_, _, _, _, _, _, end) in enumerate(blocks):
        if i == len(blocks) - 1:
            continue                      # letzter Block: kein Achtfeld
        t = bytes(out[end - 8:end])
        if t == AN1_TRAILER:
            continue                      # schon AN1-Konvention
        # Plausibilitaet: AN2 schreibt dort float 1.0 gefolgt von u32
        f = struct.unpack_from("<f", t, 0)[0]
        if abs(f - 1.0) > 1e-6:
            raise ValueError(f"Block {i}: unerwartetes Achtfeld {t.hex(' ')}")
        out[end - 8:end] = AN1_TRAILER
        n += 1
    return bytes(out), n


def analyse(data):
    b = parse_blocks(data)
    an1 = an2 = other = 0
    for i, blk in enumerate(b):
        if i == len(b) - 1:
            continue
        t = data[blk[6] - 8: blk[6]]
        if t == AN1_TRAILER:
            an1 += 1
        elif len(t) == 8 and abs(struct.unpack_from("<f", t, 0)[0] - 1.0) < 1e-6:
            an2 += 1
        else:
            other += 1
    return len(b), an1, an2, other


def _cli():
    if len(sys.argv) < 2:
        print(__doc__)
        print("Aufruf:\n"
              "  msb_an2_to_an1.py check <datei|glob> ...\n"
              "  msb_an2_to_an1.py convert <quelle.msb> <ziel.msb>")
        return
    if sys.argv[1] == "check":
        files = []
        for p in sys.argv[2:]:
            files.extend(glob.glob(p, recursive=True))
        for p in sorted(files):
            try:
                nb, a1, a2, o = analyse(open(p, "rb").read())
                tag = "AN1" if a2 == 0 else ("AN2" if a1 == 0 else "GEMISCHT")
                print(f"   {os.path.basename(p):<34} {nb:>3} Bloecke  "
                      f"AN1-Trailer {a1:>3}  AN2-Trailer {a2:>3}  sonst {o:>2}   {tag}")
            except Exception as ex:
                print(f"   {os.path.basename(p):<34} FEHLER: {ex}")
    elif sys.argv[1] == "convert":
        src, dst = sys.argv[2], sys.argv[3]
        data = open(src, "rb").read()
        out, n = convert(data)
        assert len(out) == len(data), "Laenge veraendert"
        open(dst, "wb").write(out)
        print(f"   {os.path.basename(src)} -> {os.path.basename(dst)}: "
              f"{n} Bloecke umgestellt, {len(out):,} B")


if __name__ == "__main__":
    _cli()
