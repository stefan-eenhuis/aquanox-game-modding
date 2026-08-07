#!/usr/bin/env python3
"""an_diff.py -- AquaNox 1 gegen AquaNox 2 vergleichen (C18).

WOZU
    AN2 ist dieselbe Engine, zwei Jahre spaeter. Wo AN2 etwas kann,
    was AN1 nicht kann, steht die Frage im Raum, ob AN1 es doch
    kann und nur niemand es benutzt hat. Dieses Werkzeug macht den
    Unterschied sichtbar, statt ihn zu vermuten.

WAS ES VERGLEICHT
    kommandos   die Engine-Registry beider Spiele
    knoten      die RTI-Klassen (nod_*)
    dateien     welche Dateiarten es wo gibt
    strings     Zeichenketten in beiden .exe

AUFRUF
    an_diff.py kommandos
    an_diff.py knoten
    an_diff.py dateien
    an_diff.py strings <suchwort>
"""
import os, sys, re, glob, json, collections

HIER = os.path.dirname(os.path.abspath(__file__))
DOC = os.path.abspath(os.path.join(HIER, ".."))
AN1 = os.path.abspath(os.path.join(DOC, ".."))
# AN2 liegt als Schwesterordner -- Pfad aus dem Handoff
AN2_KAND = [
    os.path.join(AN1, "Aquanox2Relevation"),     # liegt IN AN1
    os.path.join(os.path.dirname(AN1), "AquaNox 2 Revelation"),
    os.path.join(os.path.dirname(AN1), "AquaNox2"),
    r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox 2 Revelation",
]
AN2 = next((p for p in AN2_KAND if os.path.isdir(p)), None)


def _reg(pfad):
    """Kommandoregistry eines Spiels."""
    p = os.path.join(pfad, "mod_docu", "aquanox1_message_ids.json")
    if os.path.exists(p):
        return set(json.load(open(p, encoding="utf-8"))["commands"])
    return set()


def _strings(exe, minlen=5):
    d = open(exe, "rb").read()
    return {m.group().decode("latin-1") for m in
            re.finditer(rb"[\x20-\x7e]{%d,}" % minlen, d)}


def _exe(pfad):
    """Die Programmdatei eines Spiels finden.

    ACHTUNG BEI AQUANOX 2: die GOG-Fassung hat im Hauptordner nur
    einen 40-KB-Starter. Die eigentliche Engine heisst AN2.dat und
    ist eine UMBENANNTE Programmdatei -- sie beginnt mit "MZ".
    Deshalb wird hier nicht nach der Endung gesucht, sondern nach
    dem MZ-Kennzeichen, und die groesste passende Datei gewinnt.
    """
    for n in ("Aqua.exe", "AquaNox.exe", "AN2.dat"):
        p = os.path.join(pfad, n)
        if os.path.exists(p) and _ist_programm(p):
            return p
    kand = []
    for m in ("*.exe", "*.dat", "*.bin"):
        for p in glob.glob(os.path.join(pfad, m)):
            if os.path.getsize(p) > 500_000 and _ist_programm(p):
                kand.append(p)
    return max(kand, key=os.path.getsize) if kand else None


def _ist_programm(p):
    """Faengt die Datei mit dem MZ-Kennzeichen an?"""
    try:
        with open(p, "rb") as f:
            return f.read(2) == b"MZ"
    except Exception:
        return False


def kommandos():
    a1 = _reg(AN1)
    print(f"AN1: {len(a1)} Kommandos in der Registry")
    if not AN2:
        print("AN2 nicht gefunden -- Vergleich ueber die .exe-Strings:")
        return strings("_")
    a2 = _reg(AN2)
    print(f"AN2: {len(a2)} Kommandos")
    if a2:
        print(f"\nNur in AN2 ({len(a2 - a1)}):")
        for k in sorted(a2 - a1)[:60]:
            print(f"   {k}")
        print(f"\nNur in AN1 ({len(a1 - a2)}):")
        for k in sorted(a1 - a2)[:40]:
            print(f"   {k}")


def strings(wort):
    e1 = _exe(AN1)
    print(f"AN1-Programmdatei: {os.path.basename(e1) if e1 else '?'}")
    s1 = _strings(e1) if e1 else set()
    t1 = sorted(x for x in s1 if wort.lower() in x.lower() and len(x) < 60)
    print(f"   {len(t1)} Treffer fuer '{wort}':")
    for x in t1[:40]:
        print(f"     {x}")
    if not AN2:
        print("\nAN2 nicht gefunden -- kein Vergleich moeglich.")
        print("Erwartete Orte:")
        for p in AN2_KAND:
            print(f"   {p}")
        return
    e2 = _exe(AN2)
    s2 = _strings(e2) if e2 else set()
    t2 = sorted(x for x in s2 if wort.lower() in x.lower() and len(x) < 60)
    print(f"\nAN2-Programmdatei: {os.path.basename(e2)}")
    print(f"   {len(t2)} Treffer:")
    for x in t2[:40]:
        print(f"     {x}")
    nur2 = set(t2) - set(t1)
    if nur2:
        print(f"\n   NUR IN AN2 ({len(nur2)}):")
        for x in sorted(nur2)[:40]:
            print(f"     {x}")


def knoten():
    """RTI-Klassen vergleichen -- die nod_*-Namen in der .exe."""
    for name, pfad in (("AN1", AN1), ("AN2", AN2)):
        if not pfad:
            print(f"{name}: nicht gefunden"); continue
        e = _exe(pfad)
        if not e:
            print(f"{name}: keine .exe"); continue
        s = _strings(e, 4)
        nod = sorted(x for x in s
                     if re.fullmatch(r"(?i)nod_[a-z0-9_]+", x))
        print(f"{name}: {len(nod)} Knotenklassen")
        globals().setdefault("_k", {})[name] = set(nod)
    k = globals().get("_k", {})
    if len(k) == 2:
        a, b = k["AN1"], k["AN2"]
        print(f"\nNur in AN2 ({len(b - a)}):")
        for x in sorted(b - a):
            print(f"   {x}")
        print(f"\nNur in AN1 ({len(a - b)}):")
        for x in sorted(a - b):
            print(f"   {x}")


def dateien():
    for name, pfad in (("AN1", AN1), ("AN2", AN2)):
        if not pfad:
            print(f"{name}: nicht gefunden"); continue
        c = collections.Counter()
        for p in glob.glob(os.path.join(pfad, "**", "*"), recursive=True):
            if os.path.isfile(p):
                c[os.path.splitext(p)[1].lower()] += 1
        print(f"\n{name}: {sum(c.values()):,} Dateien")
        for e, n in c.most_common(18):
            print(f"   {e or '(ohne)':<10} {n:>7,}")


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print(__doc__); sys.exit(1)
    was = sys.argv[1]
    if was == "kommandos": kommandos()
    elif was == "knoten": knoten()
    elif was == "dateien": dateien()
    elif was == "strings": strings(sys.argv[2] if len(sys.argv) > 2 else "_")
    else: print(__doc__)
