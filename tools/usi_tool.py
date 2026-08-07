#!/usr/bin/env python3
"""AquaNox 2 -- .usi.bin lesen (das kompilierte Oberflaechenformat).

BEFUND (aquanox2_analyse_handoff_v9.txt):
Die 131 .usi.bin-Dateien sind kompilierte Fassungen der .usi-Quelltexte
(AN2 erzeugt sie mit dem Startschalter -compileusi). Sie beschreiben einen
Baum aus typisierten Oberflaechenknoten.

FORMAT
    +0   uint32  Version, in allen Dateien 5
    dann Knoten in Vorordnung. Jeder Textwert liegt als
        uint32 laenge_in_zeichen | UTF-16-LE, laenge einschliesslich
        des abschliessenden 0x0000
    Dazwischen stehen Zahlenfelder (uint32 und float), u.a. Farben und
    Skalierungen -- typisch acht Floats 1.0 hintereinander.

    Die Knotentypen entsprechen den USI_Node_*-Klassen aus AN2.dat
    (siehe aquanox2_engine_classes.json):
        Window Group Animation Bitmap Text Reference Sound Switch
        Video Button Choice Slider ListBox ListBoxItem ShowHideButton
        Anchor3D Movie Action Control Primitive

    Ein Knoten vom Typ Reference verweist ueber einen Pfad auf eine
    andere .usi-Datei -- so baut AN2 seine Oberflaeche aus Vorlagen.

    Bezeichner, die mit AUI_ beginnen (AUI_ComplexText, AUI_InputMapperButton
    usw.), binden einen Knoten an eine Behandlungsroutine im Programm.

Aufruf:
    usi_tool.py list                      alle .usi.bin auflisten
    usi_tool.py strings <archivpfad>      die Textwerte in Reihenfolge
    usi_tool.py refs                      das Vorlagengeflecht
    usi_tool.py types                     Haeufigkeit der Knotentypen
"""
import os, re, struct, sys, collections

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import pak_tool

GAME = os.path.abspath(os.path.join(HERE, "..", ".."))
AN2D = os.path.join(GAME, "Aquanox2Relevation", "pak")

_index = None


def index():
    global _index
    if _index is None:
        _index = {}
        for name in sorted(os.listdir(AN2D)):
            if name.lower().endswith(".pak"):
                p = os.path.join(AN2D, name)
                with open(p, "rb") as f:
                    for n, off, sz in pak_tool.read_directory(f)[2]:
                        _index[n.lower()] = (p, off, sz)
    return _index


def read(archivname):
    p, off, sz = index()[archivname.lower()]
    with open(p, "rb") as f:
        f.seek(off)
        return f.read(sz)


def utf16_at(d, off):
    """(text, neuer_offset) oder (None, off)."""
    if off + 4 > len(d):
        return None, off
    n = struct.unpack_from("<I", d, off)[0]
    if not (1 <= n <= 512):
        return None, off
    end = off + 4 + n * 2
    if end > len(d):
        return None, off
    raw = d[off + 4:end]
    if raw[-2:] != b"\x00\x00":
        return None, off
    try:
        s = raw[:-2].decode("utf-16-le")
    except Exception:
        return None, off
    if s and all(0x20 <= ord(c) < 0x2000 for c in s):
        return s, end
    return None, off


def strings_of(data):
    """Alle Textwerte in Dateireihenfolge als [(offset, text)]."""
    out, off = [], 0
    while off < len(data) - 4:
        s, neu = utf16_at(data, off)
        if s is not None:
            out.append((off, s))
            off = neu
        else:
            off += 4
    return out


def alle_usi():
    return sorted(k for k in index() if k.endswith(".usi.bin"))


def _cli():
    if len(sys.argv) < 2:
        print(__doc__)
        return
    cmd = sys.argv[1]
    if cmd == "list":
        ges = 0
        for k in alle_usi():
            sz = index()[k][2]
            ges += sz
            print(f"{sz:>9,} B  {k}")
        print(f"---- {len(alle_usi())} Dateien, {ges/1024:.0f} KB")
    elif cmd == "strings":
        d = read(sys.argv[2])
        print(f"# {sys.argv[2]}  ({len(d):,} B, Version "
              f"{struct.unpack_from('<I', d, 0)[0]})")
        for o, s in strings_of(d):
            print(f"{o:>7}  {s}")
    elif cmd == "refs":
        g = collections.Counter()
        for k in alle_usi():
            for _, s in strings_of(read(k)):
                if s.lower().endswith(".usi"):
                    g[s] += 1
        print(f"{len(g)} verschiedene Vorlagen:")
        for s, n in g.most_common():
            print(f"{n:>5}x  {s}")
    elif cmd == "types":
        g = collections.Counter()
        for k in alle_usi():
            for _, s in strings_of(read(k)):
                if re.fullmatch(r"[A-Za-z_][A-Za-z0-9_]*", s):
                    g[s] += 1
        for s, n in g.most_common(60):
            print(f"{n:>6}x  {s}")
    else:
        print(__doc__)


if __name__ == "__main__":
    _cli()
