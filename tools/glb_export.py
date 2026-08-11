#!/usr/bin/env python3
# -*- coding: latin-1 -*-
"""glb_export.py -- AquaNox-1-.msb-Mesh als glTF-2.0-Binaerdatei (.glb).

Liest ein .msb mit dem vorhandenen Leser aqtk.parser.msb und schreibt
EINE .glb-Datei: Geometrie, Normalen, UVs, Dreiecksindizes und die
Texturen als eingebettete PNGs -- ohne Fremdbibliotheken, nur
json/struct/PIL.

AUFBAU DER AUSGABE
    Je TEXTUR ein Primitive (Bloecke mit gleicher Textur werden
    vereinigt) mit eigenem Material. BaseColor ist die Spieltextur;
    Metallic 0, Roughness 0.9 -- die Engine von 2001 kennt kein PBR,
    das ist eine neutrale Setzung fuer heutige Viewer.

KOORDINATEN (dokumentierte Wahl)
    AquaNox modelliert mit Z nach oben (Handoff v180, "DER WEG AUS
    BLENDER"; die .msh sind 3ds-Max-Exporte, 3ds Max ist rechtshaendig
    mit Z oben). Gemessen am Skipjack passt das: die Turmkanone zeigt
    nach +Y (vorn), die kleinste Ausdehnung liegt auf Z (Hochachse).
    glTF verlangt rechtshaendig mit +Y oben. Umrechnung ist die REINE
    DREHUNG -90 Grad um X:
        (x, y, z)  ->  (x, z, -y)
    Determinante +1: Haendigkeit und Dreieckswicklung bleiben erhalten.
    Die Front des Schiffs zeigt danach nach -Z (uebliche
    Viewer-Konvention: Kamera blickt entlang -Z).

UV
    DirectX (Engine) und glTF legen den Texturursprung beide OBEN
    LINKS -- die UVs werden deshalb UNVERAENDERT uebernommen und die
    PNGs unveraendert eingebettet. Wer es doch gespiegelt braucht:
    --flip-v.

WICKLUNG
    Vor dem Schreiben wird gemessen, ob die Dreiecke im Quellsystem
    gegen den Uhrzeigersinn (CCW, glTF-Vorderseite) laufen: Vorzeichen
    von (B-A)x(C-A) gegen die gespeicherten Vertexnormalen. Laeuft die
    Mehrheit falsch herum, werden ALLE Indizes gedreht (i0,i2,i1) und
    das gemeldet.

ALPHA
    Texturen ohne durchsichtige Pixel werden als RGB eingebettet
    (alphaMode OPAQUE). Harte Freisteller (Pflanzen, Gitter) werden
    MASK mit Cutoff 0.5, weiche Verlaeufe BLEND -- die Klassifikation
    stammt aus aqtk/parser/textur.py (dort an 154 Texturen gemessen).

AUFRUF
    glb_export.py <quelle.msb> <ziel.glb> [--root <extracted>] [--flip-v]

    --root  Wurzel des entpackten Bestands, Standard:
            <Spielordner>\\dat\\pak\\extracted (aus der Lage dieses
            Skripts abgeleitet). Texturen werden unter vfx\\tex\\
            gesucht (.dds, .tga, auch vfx\\tex\\fx\\).
"""
import io
import json
import math
import os
import struct
import sys

_HIER = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(_HIER, "..", "toolkit"))
from aqtk.parser import msb          # der vorhandene, geprueft Leser

try:
    from PIL import Image
except ImportError:
    Image = None

# glTF-Konstanten
ARRAY_BUFFER = 34962
ELEMENT_ARRAY_BUFFER = 34963
FLOAT = 5126
UINT16 = 5123
UINT32 = 5125
REPEAT = 10497
LINEAR = 9729
LINEAR_MIPMAP_LINEAR = 9987


# --------------------------------------------------------------- Geometrie --
def _drehe(p):
    """Z-oben -> Y-oben: Drehung -90 Grad um X. Determinante +1."""
    x, y, z = p
    return (x, z, -y)


def _normiere(n):
    l = math.sqrt(n[0] * n[0] + n[1] * n[1] + n[2] * n[2])
    if l < 1e-12:
        return (0.0, 1.0, 0.0)      # Notnagel fuer Nullnormalen
    return (n[0] / l, n[1] / l, n[2] / l)


def _wicklung_messen(bloecke):
    """Anteil der Dreiecke, deren CCW-Geometrienormale mit den
    gespeicherten Vertexnormalen uebereinstimmt (im QUELLsystem)."""
    passt, total = 0, 0
    for b in bloecke:
        pos, nor, idx = b["position"], b["normale"], b["indizes"]
        for t in range(0, len(idx), 3):
            i0, i1, i2 = idx[t], idx[t + 1], idx[t + 2]
            ax, ay, az = pos[3*i0], pos[3*i0+1], pos[3*i0+2]
            bx, by, bz = pos[3*i1], pos[3*i1+1], pos[3*i1+2]
            cx, cy, cz = pos[3*i2], pos[3*i2+1], pos[3*i2+2]
            ux, uy, uz = bx - ax, by - ay, bz - az
            vx, vy, vz = cx - ax, cy - ay, cz - az
            gx, gy, gz = uy*vz - uz*vy, uz*vx - ux*vz, ux*vy - uy*vx
            nx = nor[3*i0] + nor[3*i1] + nor[3*i2]
            ny = nor[3*i0+1] + nor[3*i1+1] + nor[3*i2+1]
            nz = nor[3*i0+2] + nor[3*i1+2] + nor[3*i2+2]
            d = gx*nx + gy*ny + gz*nz
            if d != 0.0:
                total += 1
                if d > 0.0:
                    passt += 1
    return (passt / total) if total else 1.0


# ---------------------------------------------------------------- Texturen --
def _textur_finden(root, name):
    """Texturname aus dem Mesh (ohne Endung, ohne Ordner) -> Dateipfad.
    Suchreihenfolge wie aqtk/parser/textur.aufloesen()."""
    n = name.strip().lower()
    for rel in (f"vfx/tex/{n}.dds", f"vfx/tex/{n}.tga",
                f"vfx/tex/fx/{n}.dds", f"vfx/tex/fx/{n}.tga"):
        p = os.path.join(root, rel.replace("/", os.sep))
        if os.path.isfile(p):
            return p
    return None


def _textur_als_png(pfad):
    """DDS/TGA -> (png_bytes, alphamode, breite, hoehe).
    alphamode: 'OPAQUE' | 'MASK' | 'BLEND' (Klassifikation wie
    aqtk/parser/textur.objekttextur)."""
    im = Image.open(pfad)
    im.load()
    modus = "OPAQUE"
    if im.mode == "RGBA":
        werte = list(im.split()[3].getdata())
        durchsichtig = sum(1 for v in werte if v < 250)
        if not durchsichtig:
            im = im.convert("RGB")
        else:
            zwischen = sum(1 for v in werte if 8 < v < 247)
            modus = "BLEND" if zwischen > len(werte) * 0.01 else "MASK"
    elif im.mode != "RGB":
        im = im.convert("RGB")
    puffer = io.BytesIO()
    im.save(puffer, format="PNG", optimize=True)
    return puffer.getvalue(), modus, im.size[0], im.size[1]


# -------------------------------------------------------------- GLB bauen --
def _pad(b, n, fuellung=b"\x00"):
    rest = (-len(b)) % n
    return b + fuellung * rest


def exportiere(msb_pfad, glb_pfad, root, flip_v=False, name=None):
    if Image is None:
        raise SystemExit("PIL (Pillow) wird gebraucht, ist aber nicht da.")
    roh = open(msb_pfad, "rb").read()
    m = msb.lies(roh)
    if m["hinweise"]:
        for h in m["hinweise"]:
            print("HINWEIS Leser:", h)
    if not m["bloecke"]:
        raise SystemExit("keine Bloecke im Mesh")
    name = name or os.path.splitext(os.path.basename(msb_pfad))[0]

    # Wicklung messen und ggf. drehen
    anteil = _wicklung_messen(m["bloecke"])
    drehen = anteil < 0.5
    print(f"Wicklung: {anteil*100:.1f}% der Dreiecke CCW zur Normalen"
          + ("  -> Indizes werden gedreht" if drehen else "  -> bleibt"))

    # Bloecke nach Textur gruppieren -> je Textur ein Primitive
    gruppen = {}          # texname -> {pos, nor, uv, idx}
    reihenfolge = []
    for b in m["bloecke"]:
        tex = b["textur"]
        if tex not in gruppen:
            gruppen[tex] = {"pos": [], "nor": [], "uv": [], "idx": []}
            reihenfolge.append(tex)
        g = gruppen[tex]
        versatz = len(g["pos"])
        for i in range(b["eckpunkte"]):
            g["pos"].append(_drehe(b["position"][3*i:3*i+3]))
            g["nor"].append(_normiere(_drehe(b["normale"][3*i:3*i+3])))
            u, v = b["uv"][2*i], b["uv"][2*i+1]
            g["uv"].append((u, 1.0 - v) if flip_v else (u, v))
        idx = b["indizes"]
        for t in range(0, len(idx), 3):
            i0, i1, i2 = idx[t], idx[t+1], idx[t+2]
            if drehen:
                i1, i2 = i2, i1
            g["idx"].extend((i0 + versatz, i1 + versatz, i2 + versatz))

    # Texturen laden (dedupliziert)
    bilder = {}           # texname -> (png, alphamode, b, h) oder None
    for tex in reihenfolge:
        if not tex:
            bilder[tex] = None
            continue
        p = _textur_finden(root, tex)
        if p is None:
            print(f"WARNUNG: Textur '{tex}' nicht gefunden -- "
                  f"Material bleibt untexturiert")
            bilder[tex] = None
        else:
            bilder[tex] = _textur_als_png(p)
            png, modus, bw, bh = bilder[tex]
            print(f"Textur {tex}: {bw}x{bh} {modus}, "
                  f"PNG {len(png):,} B  ({os.path.relpath(p, root)})")

    # BIN-Chunk und JSON zusammensetzen
    bin_teile = []
    bin_len = 0
    buffer_views = []
    accessors = []
    images_json = []
    textures_json = []
    materials = []
    primitives = []

    def _view(daten, target=None):
        nonlocal bin_len
        # glTF verlangt 4-Byte-Ausrichtung der byteOffsets
        rest = (-bin_len) % 4
        if rest:
            bin_teile.append(b"\x00" * rest)
            bin_len += rest
        off = bin_len
        bin_teile.append(daten)
        bin_len += len(daten)
        bv = {"buffer": 0, "byteOffset": off, "byteLength": len(daten)}
        if target:
            bv["target"] = target
        buffer_views.append(bv)
        return len(buffer_views) - 1

    tex_index = {}        # texname -> Index in textures[]
    sampler_noetig = False
    for tex in reihenfolge:
        if tex and bilder[tex] is not None and tex not in tex_index:
            png, modus, bw, bh = bilder[tex]
            bv = _view(png)
            images_json.append({"name": tex, "mimeType": "image/png",
                                "bufferView": bv})
            textures_json.append({"sampler": 0,
                                  "source": len(images_json) - 1,
                                  "name": tex})
            tex_index[tex] = len(textures_json) - 1
            sampler_noetig = True

    for tex in reihenfolge:
        g = gruppen[tex]
        n_v = len(g["pos"])
        pos_flach = [k for p in g["pos"] for k in p]
        nor_flach = [k for p in g["nor"] for k in p]
        uv_flach = [k for p in g["uv"] for k in p]

        bv_pos = _view(struct.pack(f"<{len(pos_flach)}f", *pos_flach),
                       ARRAY_BUFFER)
        bv_nor = _view(struct.pack(f"<{len(nor_flach)}f", *nor_flach),
                       ARRAY_BUFFER)
        bv_uv = _view(struct.pack(f"<{len(uv_flach)}f", *uv_flach),
                      ARRAY_BUFFER)
        if max(g["idx"]) > 0xFFFF:
            idx_daten = struct.pack(f"<{len(g['idx'])}I", *g["idx"])
            idx_typ = UINT32
        else:
            idx_daten = struct.pack(f"<{len(g['idx'])}H", *g["idx"])
            idx_typ = UINT16
        bv_idx = _view(idx_daten, ELEMENT_ARRAY_BUFFER)

        xs = pos_flach[0::3]; ys = pos_flach[1::3]; zs = pos_flach[2::3]
        accessors.append({"bufferView": bv_pos, "componentType": FLOAT,
                          "count": n_v, "type": "VEC3",
                          "min": [min(xs), min(ys), min(zs)],
                          "max": [max(xs), max(ys), max(zs)]})
        a_pos = len(accessors) - 1
        accessors.append({"bufferView": bv_nor, "componentType": FLOAT,
                          "count": n_v, "type": "VEC3"})
        a_nor = len(accessors) - 1
        accessors.append({"bufferView": bv_uv, "componentType": FLOAT,
                          "count": n_v, "type": "VEC2"})
        a_uv = len(accessors) - 1
        accessors.append({"bufferView": bv_idx, "componentType": idx_typ,
                          "count": len(g["idx"]), "type": "SCALAR"})
        a_idx = len(accessors) - 1

        mat = {"name": tex or "ohne_textur",
               "pbrMetallicRoughness": {"metallicFactor": 0.0,
                                        "roughnessFactor": 0.9}}
        if tex in tex_index:
            mat["pbrMetallicRoughness"]["baseColorTexture"] = {
                "index": tex_index[tex]}
            modus = bilder[tex][1]
            if modus == "MASK":
                mat["alphaMode"] = "MASK"
                mat["alphaCutoff"] = 0.5
            elif modus == "BLEND":
                mat["alphaMode"] = "BLEND"
        materials.append(mat)

        primitives.append({"attributes": {"POSITION": a_pos,
                                          "NORMAL": a_nor,
                                          "TEXCOORD_0": a_uv},
                           "indices": a_idx, "mode": 4,
                           "material": len(materials) - 1})

    gltf = {
        "asset": {"version": "2.0",
                  "generator": "glb_export.py (AquaNox-1-Werkzeugkette)"},
        "scene": 0,
        "scenes": [{"nodes": [0], "name": name}],
        "nodes": [{"mesh": 0, "name": name}],
        "meshes": [{"primitives": primitives, "name": name}],
        "materials": materials,
        "accessors": accessors,
        "bufferViews": buffer_views,
        "buffers": [{"byteLength": 0}],       # wird unten gesetzt
    }
    if images_json:
        gltf["images"] = images_json
        gltf["textures"] = textures_json
    if sampler_noetig:
        gltf["samplers"] = [{"magFilter": LINEAR,
                             "minFilter": LINEAR_MIPMAP_LINEAR,
                             "wrapS": REPEAT, "wrapT": REPEAT}]

    bin_chunk = _pad(b"".join(bin_teile), 4)
    gltf["buffers"][0]["byteLength"] = len(bin_chunk)

    json_chunk = _pad(json.dumps(gltf, separators=(",", ":"))
                      .encode("utf-8"), 4, b" ")
    gesamt = 12 + 8 + len(json_chunk) + 8 + len(bin_chunk)
    with open(glb_pfad, "wb") as f:
        f.write(struct.pack("<III", 0x46546C67, 2, gesamt))     # 'glTF'
        f.write(struct.pack("<II", len(json_chunk), 0x4E4F534A))  # 'JSON'
        f.write(json_chunk)
        f.write(struct.pack("<II", len(bin_chunk), 0x004E4942))   # 'BIN'
        f.write(bin_chunk)

    n_tris = sum(len(g["idx"]) for g in gruppen.values()) // 3
    n_verts = sum(len(g["pos"]) for g in gruppen.values())
    print(f"-> {glb_pfad}")
    print(f"   {gesamt:,} B | {len(primitives)} Primitives | "
          f"{n_verts} Vertices | {n_tris} Dreiecke | "
          f"{len(images_json)} Texturen eingebettet")
    return glb_pfad


def _cli():
    rest = sys.argv[1:]
    root, flip_v, args = None, False, []
    while rest:
        a = rest.pop(0)
        if a == "--root":
            if not rest:
                raise SystemExit("--root braucht einen Pfad")
            root = rest.pop(0)
        elif a == "--flip-v":
            flip_v = True
        else:
            args.append(a)
    if len(args) < 2:
        print(__doc__)
        sys.exit(1)
    if root is None:
        root = os.path.normpath(os.path.join(
            _HIER, "..", "..", "dat", "pak", "extracted"))
    exportiere(args[0], args[1], root, flip_v=flip_v)


if __name__ == "__main__":
    _cli()
