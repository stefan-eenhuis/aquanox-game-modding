"""Das .msb-Meshformat lesen.

GRUNDLAGE: mod_docu\\aquanox_binaerformate.txt Abschnitt 1 und der
Kopf von mod_docu\\tools\\msb_write.py (einem SCHREIBER, der das
Format erzeugt -- die beste denkbare Quelle).

    Datei   00 02 | nBloecke (uint16) | 00 00
    Block   00 02 | vAnzahl (uint32) | tAnzahl (uint32)
            | Vertex[vAnzahl]  je 40 B
            | Dreieck[tAnzahl] je  8 B
            | Material 206 B  -- beim LETZTEN Block 230 B

    Vertex (40 B)
        3f Position | 3f Normale | uint32 Farbe | 2f UV | uint32 Index
    Dreieck (8 B)
        3x uint16 Eckpunktindex | uint16 Flagwort
        (unteres Byte Block-ID, oberes Byte Glaettungsgruppe)
    Material (206 B)
        Slot 1     80 B = 18 B Kopf + 62 B Texturname (nullterminiert)
        Slot 2     80 B = dito, meist mit leerem Namen
        Abschluss  46 B = 14 B Kopf + 6 Floats Bounding Box + 8 B
                   (double 1.0, in AquaNox 1 ausnahmslos)
    Beim letzten Block folgen 24 B mehr: 6 Floats, die Bounding Box
    der ganzen Datei.

GRENZEN (aus dem Format):
    65.536 Eckpunkte je Block   -- die Indizes sind uint16
    65.535 Bloecke je Datei
    61 Zeichen Texturname
    2 Materialien je Block

*** LESEN NUR. ***
"""
import struct


class MsbFehler(Exception):
    pass


VERTEX = struct.Struct("<3f3fI2fI")     # 40 B
DREIECK = struct.Struct("<4H")          # 8 B
MAT_NORMAL = 206
MAT_LETZTER = 230


def _texturname(roh):
    """62 Byte Name, nullterminiert."""
    return roh.split(b"\x00")[0].decode("latin-1", "replace").strip()


def lies(rohdaten, nur_kopf=False):
    """Liest eine .msb. Gibt ein dict zurueck.

    {'bloecke': [{'position': [...], 'normale': [...], 'uv': [...],
                  'indizes': [...], 'textur': str, 'textur2': str,
                  'bbox': [minx,miny,minz,maxx,maxy,maxz]}],
     'bbox': [...], 'hinweise': [...]}

    Die Zahlenfelder sind FLACH (x,y,z,x,y,z,...) -- so lassen sie
    sich ohne Umbau an three.js weiterreichen.
    """
    if not rohdaten or len(rohdaten) < 6:
        raise MsbFehler("Datei zu kurz")

    kennung, n_bloecke, fuell = struct.unpack_from("<HHH", rohdaten, 0)
    if kennung != 0x0200:
        raise MsbFehler(f"unerwartete Kennung 0x{kennung:04x} "
                        f"(erwartet 0x0200)")
    p = 6
    ergebnis = {"bloecke": [], "bbox": None, "hinweise": [],
                "anzahl_bloecke": n_bloecke}
    if nur_kopf:
        return ergebnis

    for nr in range(n_bloecke):
        if p + 10 > len(rohdaten):
            ergebnis["hinweise"].append(
                f"Block {nr}: Datei endet vorzeitig")
            break
        bkennung, v_anzahl, t_anzahl = struct.unpack_from("<HII", rohdaten, p)
        p += 10
        if bkennung != 0x0200:
            ergebnis["hinweise"].append(
                f"Block {nr}: Kennung 0x{bkennung:04x} statt 0x0200")

        noetig = v_anzahl * 40 + t_anzahl * 8
        if p + noetig > len(rohdaten):
            ergebnis["hinweise"].append(
                f"Block {nr}: {v_anzahl} Eckpunkte und {t_anzahl} "
                f"Dreiecke passen nicht mehr in die Datei")
            break

        pos, nor, uv = [], [], []
        for i in range(v_anzahl):
            (x, y, z, nx, ny, nz, _farbe,
             u, v, _idx) = VERTEX.unpack_from(rohdaten, p + i * 40)
            pos.extend((x, y, z))
            nor.extend((nx, ny, nz))
            uv.extend((u, v))
        p += v_anzahl * 40

        idx = []
        for i in range(t_anzahl):
            a, b, c, _flag = DREIECK.unpack_from(rohdaten, p + i * 8)
            idx.extend((a, b, c))
        p += t_anzahl * 8

        letzter = (nr == n_bloecke - 1)
        mat_groesse = MAT_LETZTER if letzter else MAT_NORMAL
        if p + mat_groesse > len(rohdaten):
            ergebnis["hinweise"].append(
                f"Block {nr}: Materialblock unvollstaendig "
                f"({len(rohdaten) - p} statt {mat_groesse} Byte)")
            mat = rohdaten[p:]
        else:
            mat = rohdaten[p:p + mat_groesse]
        p += mat_groesse

        block = {
            "position": pos, "normale": nor, "uv": uv, "indizes": idx,
            "eckpunkte": v_anzahl, "dreiecke": t_anzahl,
            "textur": _texturname(mat[18:80]) if len(mat) >= 80 else "",
            "textur2": _texturname(mat[98:160]) if len(mat) >= 160 else "",
            "bbox": None,
        }
        # Abschluss: 14 B Kopf, dann 6 Floats Bounding Box
        if len(mat) >= 160 + 14 + 24:
            try:
                block["bbox"] = list(
                    struct.unpack_from("<6f", mat, 160 + 14))
            except struct.error:
                pass
        if letzter and len(mat) >= MAT_LETZTER:
            try:
                ergebnis["bbox"] = list(
                    struct.unpack_from("<6f", mat, MAT_LETZTER - 24))
            except struct.error:
                pass
        ergebnis["bloecke"].append(block)

    if p < len(rohdaten):
        ergebnis["hinweise"].append(
            f"{len(rohdaten) - p} Byte am Dateiende nicht gedeutet")
    return ergebnis


def kennzahlen(m):
    """Kurzfassung fuer Anzeige und Prüfung."""
    v = sum(b["eckpunkte"] for b in m["bloecke"])
    d = sum(b["dreiecke"] for b in m["bloecke"])
    tex = sorted({b["textur"] for b in m["bloecke"] if b["textur"]})
    return {"bloecke": len(m["bloecke"]), "eckpunkte": v, "dreiecke": d,
            "texturen": tex, "bbox": m.get("bbox"),
            "hinweise": len(m.get("hinweise", []))}


def zusammenfassen(m, hoechstens=60000):
    """Alle Bloecke zu EINEM Netz vereinigen -- fuer die Anzeige.

    Ein Netz mit GRUPPEN: three.js kann je Indexbereich ein eigenes
    Material zeichnen (geometry.addGroup). Das ist noetig, weil ein
    Mesh je Block eine andere Textur traegt -- ent_jumpstar.msb hat
    zwoelf verschiedene, die Levelgeometrie je eine Lightmap.

    Die Indizes der Folgebloecke werden verschoben; je Block
    entsteht eine Gruppe (start, anzahl, textur).
    """
    pos, nor, uv, idx = [], [], [], []
    gruppen = []
    versatz = 0
    for b in m["bloecke"]:
        if versatz + b["eckpunkte"] > hoechstens:
            break
        if not b["indizes"]:
            continue
        start = len(idx)
        pos.extend(b["position"])
        nor.extend(b["normale"])
        uv.extend(b["uv"])
        idx.extend(i + versatz for i in b["indizes"])
        gruppen.append({"start": start, "anzahl": len(idx) - start,
                        "textur": b["textur"]})
        versatz += b["eckpunkte"]
    return {"position": pos, "normale": nor, "uv": uv, "indizes": idx,
            "gruppen": gruppen,
            "eckpunkte": versatz, "dreiecke": len(idx) // 3,
            "textur": next((b["textur"] for b in m["bloecke"]
                            if b["textur"]), ""),
            "bbox": m.get("bbox")}
