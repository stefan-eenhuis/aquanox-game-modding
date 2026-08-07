#!/usr/bin/env python3
"""des_tool.py -- gekochte .des-Dateien lesen, aendern und ERWEITERN.

DAS FORMAT (G2, vollstaendig entschluesselt)

    Es gibt ZWEI Satzarten. Das war der Knoten: wer nur eine kennt,
    kommt bis etwa 30 % durch die Datei und haelt den Rest fuer Muell.

    BLOCKSATZ -- 20 Byte Kopf, traegt keine Daten, nur Struktur:

        +0   u16   nlen        Namenslaenge MIT Null
        +2   6 B   Stempel     unveraendert uebernehmen (s.u.)
        +8   u32   kindblock   erster untergeordneter BLOCK
        +12  u32   next        naechster Block DERSELBEN Ebene
        +16  u32   kindfeld    erstes untergeordnetes FELD
        +20  ...   name        nullterminiert

    FELDSATZ -- 8 Byte Kopf, traegt den eigentlichen Wert:

        +0   u8    typ
        +1   u8    nlen        Namenslaenge MIT Null
        +2   u16   vlen        Wertlaenge
        +4   u32   next        naechstes Feld derselben Ebene
        +8   ...   name        nullterminiert
        +8+nlen    wert

    0xFFFFFFFF beendet eine Kette.

    *** DER KERNPUNKT: ein Block haelt seine Kinder in ZWEI
    getrennten Ketten -- Bloecke ueber kindblock, Felder ueber
    kindfeld. *** Wer beide verwechselt, verliert den halben Baum.

DIE TYPEN (wie beim OSD, Handoff Abschnitt 143)
    0  int32     4 B        3  Vec3      12 B
    1  float32   4 B        4  Vec2       8 B
    2  String    nullterminiert

DIE SECHS STEMPEL-BYTES bei +2 sind nicht entschluesselt. Sie
aendern sich von Block zu Block leicht (0x0066be8c, 0x0066bea5,
0x0066bf4b ...) und sehen nach einem Zeitstempel oder einer
Pruefsumme aus. Fuer das Lesen und Schreiben spielen sie keine
Rolle -- sie werden unveraendert uebernommen.

NACHWEIS
    Rundlauf ueber ALLE 100 gekochten .des-Dateien des Spiels:
    *** 100 von 100 byte-identisch. ***

WAS KLARTEXT IST UND WAS NICHT
    Von 270 .des-Dateien sind 170 Klartext, 100 gekocht.
    Klartext erkennt man NICHT an "[Table]" allein -- es gibt auch
    [MENU], [HUD], [Parameter], [Wrapping], [Locale], [Joystick],
    [Property], [Text], Dateien mit fuehrendem //-Kommentar und
    solche mit fuehrendem \\r\\n. Die zuverlaessige Probe ist:
    steht irgendwo in den ersten 16 Byte eine eckige Klammer oder
    ein //, ist es Klartext.
    Dateien MIT Tilde im Namen sind immer gekocht.

AUFRUF
    des_tool.py lies  <datei.des>              alle Saetze
    des_tool.py baum  <datei.des>              als Baum
    des_tool.py json  <datei.des>              als JSON
    des_tool.py setz  <datei> <feld> <wert>    Wert aendern
    des_tool.py pruef <datei.des>              Rundlaufprobe
"""
import os, re, sys, json, struct

TYPEN = {0: "int", 1: "float", 2: "str", 3: "vec3", 4: "vec2"}
ENDE = 0xFFFFFFFF


def ist_klartext(pfad):
    d = open(pfad, "rb").read(16)
    return bool(re.search(rb"[\[/]", d))


def _block(d, o):
    if o + 20 > len(d):
        return None
    nlen = struct.unpack("<H", d[o:o + 2])[0]
    if not 2 <= nlen <= 64:
        return None
    name = d[o + 20:o + 20 + nlen]
    if not name.endswith(b"\x00"):
        return None
    kb, nx, kf = struct.unpack("<3I", d[o + 8:o + 20])
    return {"art": "block", "offset": o, "nlen": nlen,
            "name": name[:-1].decode("latin-1"),
            "kindblock": kb, "next": nx, "kindfeld": kf,
            "stempel": bytes(d[o + 2:o + 8]),
            "laenge": 20 + nlen}


def _feld(d, o):
    if o + 8 > len(d):
        return None
    typ, nlen = d[o], d[o + 1]
    if typ > 6 or not 2 <= nlen <= 64:
        return None
    vlen = struct.unpack("<H", d[o + 2:o + 4])[0]
    nxt = struct.unpack("<I", d[o + 4:o + 8])[0]
    name = d[o + 8:o + 8 + nlen]
    if not name.endswith(b"\x00"):
        return None
    return {"art": "feld", "offset": o, "typ": typ, "nlen": nlen,
            "vlen": vlen, "name": name[:-1].decode("latin-1"),
            "next": nxt, "roh": bytes(d[o + 8 + nlen:o + 8 + nlen + vlen]),
            "laenge": 8 + nlen + vlen}


def _wert(typ, roh):
    try:
        if typ == 0:
            return struct.unpack("<i", roh[:4])[0]
        if typ == 1:
            return round(struct.unpack("<f", roh[:4])[0], 6)
        if typ == 2:
            return roh.rstrip(b"\x00").decode("latin-1")
        if typ == 3:
            return [round(x, 6) for x in struct.unpack("<3f", roh[:12])]
        if typ == 4:
            return [round(x, 6) for x in struct.unpack("<2f", roh[:8])]
    except Exception:
        pass
    return roh.hex()


def lies(pfad_oder_bytes):
    """Alle Saetze, in Baumreihenfolge, ueber die Zeigerketten."""
    d = (open(pfad_oder_bytes, "rb").read()
         if isinstance(pfad_oder_bytes, str) else pfad_oder_bytes)
    aus, gesehen = [], set()

    def lauf(o, tiefe, art):
        while o is not None and o != ENDE and o < len(d) \
                and o not in gesehen:
            gesehen.add(o)
            s = _feld(d, o) if art == "feld" else _block(d, o)
            if not s:
                return
            s["tiefe"] = tiefe
            if s["art"] == "feld":
                s["wert"] = _wert(s["typ"], s["roh"])
                s["typname"] = TYPEN.get(s["typ"], s["typ"])
            aus.append(s)
            if s["art"] == "block":
                if s["kindfeld"] != ENDE:
                    lauf(s["kindfeld"], tiefe + 1, "feld")
                if s["kindblock"] != ENDE:
                    lauf(s["kindblock"], tiefe + 1, "block")
            o = s["next"]

    lauf(0, 0, "block")
    return aus


def schreibe(saetze, laenge):
    """Die Satzliste an ihre Offsets zurueckschreiben."""
    aus = bytearray(laenge)
    for s in saetze:
        o = s["offset"]
        name = s["name"].encode("latin-1") + b"\x00"
        if s["art"] == "block":
            aus[o:o + 2] = struct.pack("<H", s["nlen"])
            aus[o + 2:o + 8] = s["stempel"]
            aus[o + 8:o + 20] = struct.pack(
                "<3I", s["kindblock"], s["next"], s["kindfeld"])
            aus[o + 20:o + 20 + s["nlen"]] = name
        else:
            aus[o:o + 4] = (bytes([s["typ"], s["nlen"]])
                            + struct.pack("<H", s["vlen"]))
            aus[o + 4:o + 8] = struct.pack("<I", s["next"])
            aus[o + 8:o + 8 + s["nlen"]] = name
            a = o + 8 + s["nlen"]
            aus[a:a + s["vlen"]] = s["roh"]
    return bytes(aus)


def pruef(pfad):
    """Rundlaufprobe: lesen, unveraendert schreiben, vergleichen."""
    orig = open(pfad, "rb").read()
    s = lies(orig)
    neu = schreibe(s, len(orig))
    erfasst = sum(x["laenge"] for x in s)
    return {"saetze": len(s),
            "bloecke": sum(1 for x in s if x["art"] == "block"),
            "felder": sum(1 for x in s if x["art"] == "feld"),
            "erfasst": erfasst, "groesse": len(orig),
            "identisch": neu == orig}


def setz(pfad, name, neu, index=0):
    """Einen Wert an Ort und Stelle aendern.

    Nur fuer Werte, die nicht laenger werden. Zahlen sind immer
    gleich lang, Text muss hineinpassen.
    """
    d = bytearray(open(pfad, "rb").read())
    treffer = [s for s in lies(bytes(d))
               if s["art"] == "feld" and s["name"] == name]
    if not treffer:
        raise KeyError(f"{name} nicht gefunden")
    s = treffer[index]
    a = s["offset"] + 8 + s["nlen"]
    if s["typ"] == 0:
        d[a:a + 4] = struct.pack("<i", int(neu))
    elif s["typ"] == 1:
        d[a:a + 4] = struct.pack("<f", float(neu))
    elif s["typ"] == 2:
        roh = str(neu).encode("latin-1")
        if len(roh) + 1 > s["vlen"]:
            raise ValueError(f"'{neu}' braucht {len(roh)+1} B, "
                             f"es passen {s['vlen']}")
        d[a:a + s["vlen"]] = roh + b"\x00" * (s["vlen"] - len(roh))
    else:
        raise ValueError(f"Typ {s['typ']} wird von setz nicht bedient")
    open(pfad, "wb").write(bytes(d))
    return s


def _verschiebe(saetze, ab, um):
    """Alle Offsets und Zeiger ab einer Stelle verschieben."""
    for s in saetze:
        if s["offset"] >= ab:
            s["offset"] += um
        for feldname in ("next", "kindblock", "kindfeld"):
            if feldname in s and s[feldname] != ENDE \
                    and s[feldname] >= ab:
                s[feldname] += um


def fuege_feld_ein(pfad, blockname, name, typ, wert, ziel=None):
    """Ein neues Feld in einen Block einhaengen.

    blockname  in welchen Block (z.B. "option5")
    name/typ/wert  das neue Feld
    ziel       Ausgabedatei; None ueberschreibt das Original

    Das neue Feld wird ans ENDE der Feldkette des Blocks gehaengt.
    Alle Offsets dahinter verschieben sich, alle Zeiger, die
    dorthin zeigen, werden mitgezogen.
    """
    d = open(pfad, "rb").read()
    saetze = lies(d)
    block = next((s for s in saetze if s["art"] == "block"
                  and s["name"] == blockname), None)
    if not block:
        raise KeyError(f"Block '{blockname}' nicht gefunden")

    if typ == 0:
        roh = struct.pack("<i", int(wert))
    elif typ == 1:
        roh = struct.pack("<f", float(wert))
    elif typ == 2:
        roh = str(wert).encode("latin-1") + b"\x00"
    elif typ == 3:
        roh = struct.pack("<3f", *wert)
    elif typ == 4:
        roh = struct.pack("<2f", *wert)
    else:
        raise ValueError(f"Typ {typ} nicht unterstuetzt")

    nlen = len(name) + 1
    laenge = 8 + nlen + len(roh)

    # Das letzte Feld der Kette dieses Blocks finden
    if block["kindfeld"] == ENDE:
        vorher, einfuegeort = None, block["offset"] + block["laenge"]
    else:
        o = block["kindfeld"]
        vorher = next(s for s in saetze if s["offset"] == o)
        while vorher["next"] != ENDE:
            nx = vorher["next"]
            n2 = next((s for s in saetze if s["offset"] == nx), None)
            if not n2:
                break
            vorher = n2
        einfuegeort = vorher["offset"] + vorher["laenge"]

    _verschiebe(saetze, einfuegeort, laenge)
    neu = {"art": "feld", "offset": einfuegeort, "typ": typ,
           "nlen": nlen, "vlen": len(roh), "name": name,
           "next": ENDE, "roh": roh, "laenge": laenge, "tiefe": 0}
    if vorher is None:
        block["kindfeld"] = einfuegeort
    else:
        vorher["next"] = einfuegeort
    saetze.append(neu)
    saetze.sort(key=lambda s: s["offset"])
    aus = schreibe(saetze, len(d) + laenge)
    open(ziel or pfad, "wb").write(aus)
    return {"eingefuegt_bei": einfuegeort, "laenge": laenge,
            "neue_groesse": len(d) + laenge}


def _cli():
    if len(sys.argv) < 3:
        print(__doc__); sys.exit(1)
    was, pfad = sys.argv[1], sys.argv[2]
    if was == "lies":
        for s in lies(pfad):
            if s["art"] == "block":
                print(f"  {'  '*s['tiefe']}{s['offset']:>7} [B] "
                      f"{s['name']}")
            else:
                print(f"  {'  '*s['tiefe']}{s['offset']:>7} "
                      f"{s['typname']:<6} {s['name']} = {s['wert']!r}")
    elif was == "baum":
        for s in lies(pfad):
            k = "[B] " if s["art"] == "block" else ""
            w = "" if s["art"] == "block" else f" = {s['wert']!r}"
            print(f"  {'    '*s['tiefe']}{k}{s['name']}{w}")
    elif was == "json":
        print(json.dumps([{k: v for k, v in s.items() if k != "roh"}
                          for s in lies(pfad)],
                         ensure_ascii=False, indent=1, default=str))
    elif was == "setz":
        s = setz(pfad, sys.argv[3], sys.argv[4])
        print(f"  {s['name']} auf {sys.argv[4]} gesetzt")
    elif was == "pruef":
        r = pruef(pfad)
        mark = "BYTE-IDENTISCH" if r["identisch"] else "ABWEICHEND"
        print(f"  {os.path.basename(pfad)}: {r['saetze']} Saetze "
              f"({r['bloecke']} Bloecke, {r['felder']} Felder), "
              f"{r['erfasst']:,}/{r['groesse']:,} B -> {mark}")
        sys.exit(0 if r["identisch"] else 1)
    else:
        print(__doc__)


if __name__ == "__main__":
    _cli()
