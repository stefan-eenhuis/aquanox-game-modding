#!/usr/bin/env python3
"""osd_tool.py -- AquaNox-OSD-Dateien lesen und schreiben (C1, C2).

DAS FORMAT
    OSDs sind die Objektdefinitionen: Mesh, Kollision, Steuerung,
    Bewaffnung, Kindknoten. 1.262 Dateien in AquaNox 1.

    Aufbau: eine Folge von EINTRAEGEN, jeder mit acht Byte Vorspann.

        u8   typ        0 = int32, 1 = float32, 2 = String,
                        3 = Vektor3 (3x float), 4 = acht Byte
        u8   nlen       Laenge des Namens EINSCHLIESSLICH Null
        u8   vlen       Laenge des Werts
        u8   flag       meist 0
        u32  naechster  Offset des naechsten Eintrags,
                        0xFFFFFFFF = keiner
        char name[nlen]
        byte wert[vlen]

    Verifiziert an 300 Dateien: 43.438 Eintraege gelesen.
    Die Typverteilung bestaetigt die Deutung --
        typ 0 mit vlen 4   19.806x   int32
        typ 1 mit vlen 4   12.142x   float32
        typ 3 mit vlen 12   5.308x   Vektor3
        typ 2 mit vlen n            String, vlen passt zum Text
        typ 4 mit vlen 8      559x   Doppelwort oder Doppelfloat

    Abschnittsnamen ([visual], [collision], [control], [emitter] ...)
    und Kindknoten (child0..child7) stehen als eigene Eintraege ohne
    Wert dazwischen. Sie tragen abweichende Vorspannbytes und werden
    hier als Marke behandelt.

AUFRUF
    osd_tool.py <datei.osd>              alles anzeigen
    osd_tool.py <datei.osd> --json       als JSON
    osd_tool.py <verzeichnis> --feld <name>   ein Feld ueber viele
"""
import os, re, sys, glob, json, struct

TYP_INT, TYP_FLOAT, TYP_STR, TYP_VEC3, TYP_ACHT = 0, 1, 2, 3, 4


def _wert(typ, roh):
    try:
        if typ == TYP_STR:
            return roh.rstrip(b"\x00").decode("latin-1", "replace")
        if typ == TYP_INT and len(roh) == 4:
            return struct.unpack("<i", roh)[0]
        if typ == TYP_FLOAT and len(roh) == 4:
            return round(struct.unpack("<f", roh)[0], 6)
        if typ == TYP_VEC3 and len(roh) == 12:
            return [round(x, 6) for x in struct.unpack("<3f", roh)]
        if typ == TYP_ACHT and len(roh) == 8:
            return list(struct.unpack("<2f", roh))
    except Exception:
        pass
    return roh.hex(" ") if roh else None


def lies(pfad_oder_bytes):
    """Alle Eintraege einer OSD als Liste von dicts.

    Gelesen wird ueber die Namensmuster; die acht Byte davor liefern
    Typ und Laengen. Das ist robuster als der Kette der naechster-
    Offsets zu folgen, denn die Abschnittsmarken durchbrechen sie.
    """
    d = (open(pfad_oder_bytes, "rb").read()
         if isinstance(pfad_oder_bytes, str) else pfad_oder_bytes)
    aus = []
    for m in re.finditer(rb"[a-z][a-z0-9_]{2,30}\x00", d):
        a = m.start()
        if a < 8:
            continue
        typ, nlen, vlen, flag = d[a-8:a-4]
        if nlen != len(m.group()):
            continue                      # ein Wert, kein Feldname
        roh = d[m.end():m.end()+vlen]
        aus.append({
            "offset": a - 8,
            "name": m.group()[:-1].decode("latin-1"),
            "typ": typ,
            "wert": _wert(typ, roh) if vlen else None,
            "roh": roh.hex(" ") if vlen and typ > 4 else None,
        })
    return aus


def als_dict(pfad):
    """Nur Name -> Wert, fuer den schnellen Zugriff. Bei doppelten
    Namen (mehrere Kindknoten) gewinnt der erste."""
    aus = {}
    for e in lies(pfad):
        if e["wert"] is not None:
            aus.setdefault(e["name"], e["wert"])
    return aus


# --------------------------------------------------------- schreiben (C2)
def eintrag(name, typ, wert):
    """Einen einzelnen Eintrag bauen."""
    nb = name.encode("latin-1") + b"\x00"
    if typ == TYP_STR:
        vb = (wert.encode("latin-1") + b"\x00") if wert else b"\x00"
    elif typ == TYP_INT:
        vb = struct.pack("<i", int(wert))
    elif typ == TYP_FLOAT:
        vb = struct.pack("<f", float(wert))
    elif typ == TYP_VEC3:
        vb = struct.pack("<3f", *[float(x) for x in wert])
    elif typ == TYP_ACHT:
        vb = struct.pack("<2f", *[float(x) for x in wert])
    else:
        vb = bytes(wert)
    if len(nb) > 255 or len(vb) > 255:
        raise ValueError(f"{name}: Name oder Wert laenger als 255 Byte")
    return bytes([typ, len(nb), len(vb), 0]) + b"\xff\xff\xff\xff" + nb + vb


def aendere(pfad, aenderungen, ziel=None):
    """Werte in einer vorhandenen OSD ersetzen, ohne die Struktur
    anzutasten. NUR gleich lange Werte -- Strings muessen also gleich
    viele Zeichen haben, Zahlen sind immer gleich lang.

    Das ist der sichere Weg: eine OSD von Grund auf zu schreiben
    verlangt die Abschnittsmarken, die noch nicht vollstaendig
    verstanden sind (siehe Kopf).
    """
    d = bytearray(open(pfad, "rb").read())
    getan = {}
    for e in lies(bytes(d)):
        if e["name"] not in aenderungen:
            continue
        neu = aenderungen[e["name"]]
        a = e["offset"]
        typ, nlen, vlen = d[a], d[a+1], d[a+2]
        vpos = a + 8 + nlen
        if typ == TYP_STR:
            nb = str(neu).encode("latin-1") + b"\x00"
            if len(nb) != vlen:
                raise ValueError(
                    f"{e['name']}: '{neu}' braucht {len(nb)} B, "
                    f"vorhanden sind {vlen}. Nur gleich lange Werte.")
            d[vpos:vpos+vlen] = nb
        elif typ == TYP_INT:
            d[vpos:vpos+4] = struct.pack("<i", int(neu))
        elif typ == TYP_FLOAT:
            d[vpos:vpos+4] = struct.pack("<f", float(neu))
        elif typ == TYP_VEC3:
            d[vpos:vpos+12] = struct.pack("<3f", *[float(x) for x in neu])
        else:
            raise ValueError(f"{e['name']}: Typ {typ} nicht unterstuetzt")
        getan[e["name"]] = neu
    if ziel:
        open(ziel, "wb").write(bytes(d))
    return bytes(d), getan


TYPNAME = {0: "int", 1: "float", 2: "str", 3: "vec3", 4: "8byte"}


def _cli():
    if len(sys.argv) < 2:
        print(__doc__); sys.exit(1)
    ziel = sys.argv[1]
    rest = sys.argv[2:]

    if os.path.isdir(ziel) and "--feld" in rest:
        feld = rest[rest.index("--feld") + 1]
        for p in sorted(glob.glob(os.path.join(ziel, "**", "*.osd"),
                                  recursive=True)):
            w = als_dict(p).get(feld)
            if w is not None:
                print(f"{os.path.basename(p):<40} {w}")
        return

    eintraege = lies(ziel)
    if "--json" in rest:
        print(json.dumps(eintraege, ensure_ascii=False, indent=1))
        return
    print(f"# {os.path.basename(ziel)}   {len(eintraege)} Eintraege")
    for e in eintraege:
        t = TYPNAME.get(e["typ"], str(e["typ"]))
        w = e["wert"]
        if isinstance(w, str):
            w = f'"{w}"'
        print(f"  {e['offset']:>6}  {t:<6} {e['name']:<30} {w}")


if __name__ == "__main__":
    _cli()
