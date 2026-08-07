#!/usr/bin/env python3
"""AquaNox 1 -- .msb-Meshes SCHREIBEN (Import aus Blender & Co).

Gegenstueck zu msb_an2_to_an1.py, das nur liest. Das Format ist in
mod_docu\\aquanox_binaerformate.txt Abschnitt 1 beschrieben; hier die
Punkte, auf die es beim Schreiben ankommt:

    Datei  : 00 02 | nBlocks(uint16) | 00 00
    Block  : 00 02 | vCount(uint32) | tCount(uint32)
             | Vertex[vCount] je 40 B
             | Tri[tCount]    je  8 B
             | Material       206 B, beim LETZTEN Block 230 B

    Material (206 B):
        Slot 1   80 B = 18 B Kopf + 62 B Texturname (nullterminiert)
        Slot 2   80 B = dito, in aller Regel mit leerem Namen
        Abschluss 46 B = 14 B Kopf + 6 Floats Bounding Box + 8 B Achtfeld
    Beim letzten Block folgen weitere 24 B: nochmals 6 Floats, die
    Bounding Box der ganzen Datei. Das ist in allen 249 geprueften Meshes
    so und der einzige Unterschied zu 206 B.

    Achtfeld: der double 1.0 (00 00 00 00 00 00 f0 3f). In AquaNox 1
    steht dort ausnahmslos dieser Wert.

GRENZEN (aus dem Format, nicht aus der Engine):
    Vertices je Block   65.536   -- die Dreiecksindizes sind uint16
    Bloecke je Datei    65.535
    Texturname          61 Zeichen + Nullterminator
    Materialien je Block 2       -- feste Struktur
Zum Vergleich: das groesste Original-Mesh hat 3.269 Vertices in 23
Bloecken, der groesste einzelne Block 807 Vertices.

Aufruf:
    msb_write.py cube <ziel.msb> [kantenlaenge] [texturname]
    msb_write.py obj  <quelle.obj> <ziel.msb> [texturname]
"""
import os, struct, sys

AN1_TRAILER = bytes.fromhex("000000000000f03f")   # double 1.0
MAX_VERTS_PER_BLOCK = 65536


def vertex(px, py, pz, nx, ny, nz, u, v, idx, farbe=0xFFFFFFFF):
    """40 Byte: Position, Normale, Diffusfarbe, UV, Positionsindex."""
    return struct.pack("<3f3fI2fI", px, py, pz, nx, ny, nz, farbe, u, v, idx)


def triangle(i0, i1, i2, block_id=0, glaettung=1):
    """8 Byte: drei uint16-Indizes und das Flagwort.
    lo-Byte = Block-ID (pro Block konstant), hi-Byte = Glaettungsgruppe."""
    return struct.pack("<4H", i0, i1, i2,
                       (block_id & 0xFF) | ((glaettung & 0xFF) << 8))


def _slot(flags, name):
    """80 B Materialslot."""
    kopf = (struct.pack("<H", flags)
            + b"\xff\xff\xff\xff"
            + struct.pack("<H", 0)
            + struct.pack("<H", 0)
            + b"\x00\xff"
            + struct.pack("<H", 7)
            + struct.pack("<f", 1.0))
    assert len(kopf) == 18
    roh = name.encode("latin-1")[:61]
    return kopf + roh + b"\x00" * (62 - len(roh))


def _material(texname, bbox, letzter, datei_bbox=None):
    out = _slot(0x0200, texname) + _slot(0x0000, "")
    out += b"\x00\x00" + b"\xff\xff\xff" + b"\x00" * 9      # 14 B
    out += struct.pack("<6f", *bbox)                        # 24 B
    out += AN1_TRAILER                                      #  8 B
    if letzter:
        out += struct.pack("<6f", *(datei_bbox or bbox))    # 24 B
    return out


def bounds(positionen):
    xs = [p[0] for p in positionen]
    ys = [p[1] for p in positionen]
    zs = [p[2] for p in positionen]
    return (min(xs), min(ys), min(zs), max(xs), max(ys), max(zs))


def build(bloecke):
    """bloecke: Liste von dicts mit
         verts : [(px,py,pz, nx,ny,nz, u,v)]
         tris  : [(i0,i1,i2)]  oder [(i0,i1,i2,glaettung)]
         tex   : Texturname ohne Endung
    """
    if not bloecke:
        raise ValueError("keine Bloecke")
    if len(bloecke) > 65535:
        raise ValueError("mehr als 65535 Bloecke")
    out = bytearray()
    out += struct.pack("<HHH", 0x0200, len(bloecke), 0)
    alle_pos = []
    for b in bloecke:
        alle_pos.extend((v[0], v[1], v[2]) for v in b["verts"])
    dbbox = bounds(alle_pos)

    for bi, b in enumerate(bloecke):
        vs, ts = b["verts"], b["tris"]
        if len(vs) > MAX_VERTS_PER_BLOCK:
            raise ValueError(f"Block {bi}: {len(vs)} Vertices, "
                             f"hoechstens {MAX_VERTS_PER_BLOCK}")
        for t in ts:
            if max(t[0], t[1], t[2]) >= len(vs):
                raise ValueError(f"Block {bi}: Index {max(t[:3])} "
                                 f"ausserhalb von {len(vs)} Vertices")
        out += struct.pack("<HII", 0x0200, len(vs), len(ts))
        for i, v in enumerate(vs):
            out += vertex(v[0], v[1], v[2], v[3], v[4], v[5],
                          v[6], v[7], i)
        for t in ts:
            g = t[3] if len(t) > 3 else 1
            out += triangle(t[0], t[1], t[2], bi, g)
        pos = [(v[0], v[1], v[2]) for v in vs]
        out += _material(b.get("tex", ""), bounds(pos),
                         bi == len(bloecke) - 1, dbbox)
    return bytes(out)


# ----------------------------------------------------------------- Wuerfel --
def cube(size=5.0, tex="gen_metal1_0"):
    s = size / 2.0
    seiten = [
        ((0, 0, 1),  [(-s, -s, s), (s, -s, s), (s, s, s), (-s, s, s)]),
        ((0, 0, -1), [(s, -s, -s), (-s, -s, -s), (-s, s, -s), (s, s, -s)]),
        ((1, 0, 0),  [(s, -s, s), (s, -s, -s), (s, s, -s), (s, s, s)]),
        ((-1, 0, 0), [(-s, -s, -s), (-s, -s, s), (-s, s, s), (-s, s, -s)]),
        ((0, 1, 0),  [(-s, s, s), (s, s, s), (s, s, -s), (-s, s, -s)]),
        ((0, -1, 0), [(-s, -s, -s), (s, -s, -s), (s, -s, s), (-s, -s, s)]),
    ]
    uv = [(0.0, 0.0), (1.0, 0.0), (1.0, 1.0), (0.0, 1.0)]
    verts, tris = [], []
    for si, (n, ecken) in enumerate(seiten):
        basis = len(verts)
        for k, (x, y, z) in enumerate(ecken):
            verts.append((x, y, z, n[0], n[1], n[2], uv[k][0], uv[k][1]))
        tris.append((basis, basis + 1, basis + 2, si + 1))
        tris.append((basis, basis + 2, basis + 3, si + 1))
    return build([{"verts": verts, "tris": tris, "tex": tex}])


# --------------------------------------------------------------- OBJ-Import --
def from_obj(pfad, tex=""):
    """Sehr einfacher Wavefront-OBJ-Leser: v, vn, vt, f.
    Blender exportiert das mit 'Wavefront (.obj)'.
    Achtung: AquaNox benutzt Z nach oben."""
    P, N, T = [], [], []
    ecken, tris = [], []
    schl = {}
    for zeile in open(pfad, "r", encoding="utf-8", errors="replace"):
        w = zeile.split()
        if not w:
            continue
        if w[0] == "v":
            P.append(tuple(float(x) for x in w[1:4]))
        elif w[0] == "vn":
            N.append(tuple(float(x) for x in w[1:4]))
        elif w[0] == "vt":
            T.append(tuple(float(x) for x in w[1:3]))
        elif w[0] == "f":
            idx = []
            for teil in w[1:]:
                if teil not in schl:
                    a = teil.split("/")
                    vi = int(a[0]) - 1
                    ti = int(a[1]) - 1 if len(a) > 1 and a[1] else None
                    ni = int(a[2]) - 1 if len(a) > 2 and a[2] else None
                    p = P[vi]
                    n = N[ni] if ni is not None and ni < len(N) else (0.0, 0.0, 1.0)
                    t = T[ti] if ti is not None and ti < len(T) else (0.0, 0.0)
                    schl[teil] = len(ecken)
                    ecken.append((p[0], p[1], p[2], n[0], n[1], n[2],
                                  t[0], t[1]))
                idx.append(schl[teil])
            for k in range(1, len(idx) - 1):        # Faecher-Triangulierung
                tris.append((idx[0], idx[k], idx[k + 1], 1))
    if len(ecken) > MAX_VERTS_PER_BLOCK:
        raise ValueError(f"{len(ecken)} Vertices -- hoechstens "
                         f"{MAX_VERTS_PER_BLOCK} je Block. Das Modell muss "
                         f"auf mehrere Bloecke aufgeteilt werden.")
    return build([{"verts": ecken, "tris": tris, "tex": tex}])


def _cli():
    if len(sys.argv) < 3:
        print(__doc__)
        return
    cmd = sys.argv[1]
    if cmd == "cube":
        ziel = sys.argv[2]
        size = float(sys.argv[3]) if len(sys.argv) > 3 else 5.0
        tex = sys.argv[4] if len(sys.argv) > 4 else "gen_metal1_0"
        d = cube(size, tex)
        open(ziel, "wb").write(d)
        print(f"{ziel}: {len(d):,} B, Kantenlaenge {size}, Textur {tex!r}")
    elif cmd == "obj":
        d = from_obj(sys.argv[2], sys.argv[4] if len(sys.argv) > 4 else "")
        open(sys.argv[3], "wb").write(d)
        print(f"{sys.argv[3]}: {len(d):,} B")
    else:
        print(__doc__)


if __name__ == "__main__":
    _cli()
