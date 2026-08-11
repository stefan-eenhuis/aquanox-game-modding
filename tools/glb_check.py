#!/usr/bin/env python3
# -*- coding: latin-1 -*-
"""glb_check.py -- eine .glb-Datei GEGEN DIE SPEZIFIKATION nachrechnen.

Verifiziert am ERGEBNIS, nicht an der Erfolgsmeldung des Erzeugers:

    1. Header: Magic 'glTF', Version 2, Gesamtlaenge == Dateigroesse
    2. Chunks: JSON- und BIN-Chunk, Laengen passen in die Datei,
       4-Byte-Ausrichtung
    3. JSON parsebar; buffers[0].byteLength == BIN-Chunk-Laenge
    4. Jede bufferView liegt ganz im BIN-Chunk
    5. Jeder Accessor passt in seine bufferView (count * Elementgroesse)
    6. POSITION-Accessoren: deklariertes min/max wird aus den BIN-Daten
       NACHGERECHNET und verglichen
    7. Indizes: hoechster Index < Vertexzahl des Primitives
    8. Bilder: PNG-Signatur im BIN, Groesse via PIL
    9. Kennzahlen: Dreiecke, Vertices, UV-Bereich je Primitive

Aufruf: glb_check.py <datei.glb>
Exit-Code 0 = alles bestanden, 1 = mindestens ein Fehler.
"""
import json
import struct
import sys

FEHLER = []


def fehler(text):
    FEHLER.append(text)
    print("FEHLER:", text)


def ok(text):
    print("ok:", text)


def pruefe(pfad):
    roh = open(pfad, "rb").read()
    print(f"Datei: {pfad}  ({len(roh):,} B)")

    # 1. Header
    if len(roh) < 12:
        fehler("Datei kuerzer als der GLB-Header"); return
    magic, version, laenge = struct.unpack_from("<III", roh, 0)
    if magic != 0x46546C67:
        fehler(f"Magic 0x{magic:08x} statt 0x46546C67 ('glTF')")
    else:
        ok("Magic 'glTF'")
    if version != 2:
        fehler(f"Version {version} statt 2")
    else:
        ok("Version 2")
    if laenge != len(roh):
        fehler(f"Header-Gesamtlaenge {laenge} != Dateigroesse {len(roh)}")
    else:
        ok(f"Gesamtlaenge {laenge:,} B == Dateigroesse")

    # 2. Chunks
    p, chunks = 12, []
    while p + 8 <= len(roh):
        clen, ctyp = struct.unpack_from("<II", roh, p)
        if p + 8 + clen > len(roh):
            fehler(f"Chunk bei {p}: Laenge {clen} ragt ueber das Dateiende")
            return
        chunks.append((ctyp, roh[p + 8:p + 8 + clen]))
        if clen % 4:
            fehler(f"Chunk bei {p}: Laenge {clen} nicht 4-Byte-ausgerichtet")
        p += 8 + clen
    if p != len(roh):
        fehler(f"{len(roh) - p} Byte hinter dem letzten Chunk")
    typen = [c[0] for c in chunks]
    if not typen or typen[0] != 0x4E4F534A:
        fehler("erster Chunk ist kein JSON-Chunk"); return
    ok(f"{len(chunks)} Chunks, JSON zuerst")
    js = chunks[0][1]
    binc = chunks[1][1] if len(chunks) > 1 and typen[1] == 0x004E4942 else b""

    # 3. JSON
    try:
        g = json.loads(js.decode("utf-8"))
    except Exception as e:
        fehler(f"JSON nicht parsebar: {e}"); return
    ok(f"JSON parsebar ({len(js):,} B)")
    for b in g.get("buffers", []):
        if "uri" not in b and b.get("byteLength") != len(binc):
            fehler(f"buffers.byteLength {b.get('byteLength')} != "
                   f"BIN-Chunk {len(binc)}")
        else:
            ok(f"buffer.byteLength {b.get('byteLength'):,} == BIN-Chunk")

    # 4. bufferViews
    bvs = g.get("bufferViews", [])
    for i, bv in enumerate(bvs):
        ende = bv.get("byteOffset", 0) + bv["byteLength"]
        if ende > len(binc):
            fehler(f"bufferView {i}: Ende {ende} > BIN {len(binc)}")
    ok(f"{len(bvs)} bufferViews innerhalb des BIN-Chunks")

    # 5. Accessoren
    GROESSE = {5120: 1, 5121: 1, 5122: 2, 5123: 2, 5125: 4, 5126: 4}
    KOMP = {"SCALAR": 1, "VEC2": 2, "VEC3": 3, "VEC4": 4,
            "MAT2": 4, "MAT3": 9, "MAT4": 16}
    accs = g.get("accessors", [])
    for i, a in enumerate(accs):
        bv = bvs[a["bufferView"]]
        el = GROESSE[a["componentType"]] * KOMP[a["type"]]
        noetig = a.get("byteOffset", 0) + a["count"] * el
        if noetig > bv["byteLength"]:
            fehler(f"Accessor {i}: braucht {noetig} B, bufferView hat "
                   f"{bv['byteLength']}")
    ok(f"{len(accs)} Accessoren passen in ihre bufferViews")

    def _lese(acc_i):
        a = accs[acc_i]
        bv = bvs[a["bufferView"]]
        start = bv.get("byteOffset", 0) + a.get("byteOffset", 0)
        n = a["count"] * KOMP[a["type"]]
        fmt = {5126: "f", 5123: "H", 5125: "I"}[a["componentType"]]
        return struct.unpack_from(f"<{n}{fmt}", binc, start), a

    # 6.-9. je Primitive
    gesamt_tris, gesamt_verts = 0, 0
    for mi, mesh in enumerate(g.get("meshes", [])):
        for pi, prim in enumerate(mesh["primitives"]):
            attr = prim["attributes"]
            pos, a_pos = _lese(attr["POSITION"])
            n_v = a_pos["count"]
            gesamt_verts += n_v
            xs, ys, zs = pos[0::3], pos[1::3], pos[2::3]
            echt_min = [min(xs), min(ys), min(zs)]
            echt_max = [max(xs), max(ys), max(zs)]
            dmin, dmax = a_pos.get("min"), a_pos.get("max")
            if dmin is None or dmax is None:
                fehler(f"Primitive {mi}/{pi}: POSITION ohne min/max "
                       f"(Pflicht in glTF)")
            else:
                dx = max(abs(a - b) for a, b in
                         zip(echt_min + echt_max, dmin + dmax))
                if dx > 1e-5:
                    fehler(f"Primitive {mi}/{pi}: min/max weicht um "
                           f"{dx} von den BIN-Daten ab")
                else:
                    ok(f"Primitive {mi}/{pi}: POSITION min/max stimmt "
                       f"mit BIN ueberein")
            if "indices" in prim:
                idx, a_idx = _lese(prim["indices"])
                gesamt_tris += a_idx["count"] // 3
                if a_idx["count"] % 3:
                    fehler(f"Primitive {mi}/{pi}: Indexzahl "
                           f"{a_idx['count']} nicht durch 3 teilbar")
                if max(idx) >= n_v:
                    fehler(f"Primitive {mi}/{pi}: Index {max(idx)} >= "
                           f"Vertexzahl {n_v}")
                else:
                    ok(f"Primitive {mi}/{pi}: {a_idx['count']//3} "
                       f"Dreiecke, Indizes 0..{max(idx)} < {n_v}")
            if "TEXCOORD_0" in attr:
                uv, _ = _lese(attr["TEXCOORD_0"])
                us, vs = uv[0::2], uv[1::2]
                print(f"    UV-Bereich: U {min(us):.3f}..{max(us):.3f}  "
                      f"V {min(vs):.3f}..{max(vs):.3f}")
            mat_i = prim.get("material")
            if mat_i is not None:
                print(f"    Material: {g['materials'][mat_i].get('name')}")

    # 8. Bilder
    try:
        from PIL import Image
        import io
    except ImportError:
        Image = None
    for i, im in enumerate(g.get("images", [])):
        bv = bvs[im["bufferView"]]
        daten = binc[bv.get("byteOffset", 0):
                     bv.get("byteOffset", 0) + bv["byteLength"]]
        if daten[:8] != b"\x89PNG\r\n\x1a\n":
            fehler(f"Bild {i} ({im.get('name')}): keine PNG-Signatur")
            continue
        if Image:
            bild = Image.open(io.BytesIO(daten)); bild.load()
            ok(f"Bild {i} '{im.get('name')}': PNG {bild.size[0]}x"
               f"{bild.size[1]} {bild.mode}, {len(daten):,} B")
        else:
            ok(f"Bild {i} '{im.get('name')}': PNG-Signatur, "
               f"{len(daten):,} B")

    print(f"\nKENNZAHLEN: {gesamt_verts} Vertices, {gesamt_tris} Dreiecke, "
          f"{len(g.get('meshes',[{}])[0].get('primitives',[]))} Primitives, "
          f"{len(g.get('images',[]))} Bilder, "
          f"{len(g.get('materials',[]))} Materialien")
    print("ERGEBNIS:", "BESTANDEN" if not FEHLER
          else f"{len(FEHLER)} FEHLER")
    return not FEHLER


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print(__doc__)
        sys.exit(1)
    sys.exit(0 if pruefe(sys.argv[1]) else 1)
