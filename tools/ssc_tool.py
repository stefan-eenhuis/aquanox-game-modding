#!/usr/bin/env python3
"""AquaNox 2 -- .ssc lesen (der Szenengraph des Editors).

BEFUND (aquanox2_analyse_handoff_v9.txt):
map\\5h1\\script\\neopolis_neu.ssc, 5,56 MB, die einzige Datei dieser Art.
Es ist die Projektdatei eines Editors namens SED, aus der die Mission
neopolis_neu.scr (8.504 Zeilen Lua) erzeugt wurde.

FORMAT -- durchgehend laengenpraefixierte, nullterminierte ASCII-Strings:
    "BINARY\\0"                          Kennung, 7 Byte
    uint32 laenge | bytes[laenge]        Name des Wurzelknotens,
                                         laenge EINSCHLIESSLICH der 0
    uint32 n                             Anzahl folgender Schluessel/Wert-Paare
    (uint32 laenge | schluessel)         je Paar
    (uint32 laenge | wert)
    ...

Die Werte sind ebenfalls Text ("1", "Root", "NOD_Game"), auch Zahlen.
Zwischen den Bloecken stehen uint32-Felder, die noch nicht gedeutet sind --
dieser Leser sammelt daher nur die Zeichenketten in Dateireihenfolge, was
fuer eine Bestandsaufnahme reicht.

Aufruf:
    ssc_tool.py strings [n]     die ersten n Zeichenketten (Vorgabe 200)
    ssc_tool.py counts          Haeufigkeit aller Bezeichner
    ssc_tool.py nodes           die SED_-Knotentypen
    ssc_tool.py templates       die TMP_-Vorlagen
"""
import os, re, struct, sys, collections

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import pak_tool

GAME = os.path.abspath(os.path.join(HERE, "..", ".."))
AN2D = os.path.join(GAME, "Aquanox2Relevation", "pak")
DATEI = r"map\5h1\script\neopolis_neu.ssc"


def lade(name=DATEI):
    for f in sorted(os.listdir(AN2D)):
        if not f.lower().endswith(".pak"):
            continue
        p = os.path.join(AN2D, f)
        with open(p, "rb") as fh:
            for n, off, sz in pak_tool.read_directory(fh)[2]:
                if n.lower() == name.lower():
                    fh.seek(off)
                    return fh.read(sz)
    raise SystemExit(f"nicht gefunden: {name}")


def strings_of(d):
    """[(offset, text)] -- laengenpraefixierte nullterminierte Strings."""
    out = []
    off = 7 if d[:6] == b"BINARY" else 0
    while off + 4 <= len(d):
        n = struct.unpack_from("<I", d, off)[0]
        if 2 <= n <= 300 and off + 4 + n <= len(d):
            roh = d[off + 4: off + 4 + n]
            if roh[-1:] == b"\x00":
                s = roh[:-1]
                if s and all(32 <= c < 127 for c in s):
                    out.append((off, s.decode("latin-1")))
                    off += 4 + n
                    continue
        off += 4
    return out


def _cli():
    d = lade()
    args = sys.argv[1:]
    cmd = args[0] if args else "strings"
    ss = strings_of(d)
    if cmd == "strings":
        n = int(args[1]) if len(args) > 1 else 200
        print(f"# {DATEI}  ({len(d):,} B, {len(ss):,} Zeichenketten)")
        for o, s in ss[:n]:
            print(f"{o:>9}  {s}")
    elif cmd == "counts":
        c = collections.Counter(s for _, s in ss)
        print(f"{len(ss):,} Vorkommen, {len(c):,} verschiedene")
        for s, n in c.most_common(80):
            print(f"{n:>7}x  {s}")
    elif cmd == "nodes":
        c = collections.Counter(s for _, s in ss if s.startswith("SED_"))
        for s, n in c.most_common():
            print(f"{n:>7}x  {s}")
    elif cmd == "templates":
        c = collections.Counter(s for _, s in ss if s.startswith("TMP_"))
        for s, n in c.most_common():
            print(f"{n:>7}x  {s}")
    else:
        print(__doc__)


if __name__ == "__main__":
    _cli()
