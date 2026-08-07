#!/usr/bin/env python3
"""Ein AquaNox-1-Level fuer AquaNox 2 verpacken.

GRUNDLAGE (siehe aquanox2_analyse_handoff_v2.txt, Abschnitt 4):
AN2 laedt AN1-Dateien unveraendert. Belegt durch 426 byte-identische Dateien
in beiden Spielen, darunter 57 .msb-Meshes und 7 der 14 Skriptbibliotheken.
Alle gemeinsamen Meshes tragen den AN1-Trailer -- AN2 versteht ihn also.

UND: AN2.dat enthaelt bereits eine fest eingebaute Multiplayer-Kartenliste,
die exakt AN1s MP-Level adressiert:
    map/mp_05_ctf/script/ctf_liberty      map/mp_10/script/ctf_stream
    map/mp_06_dm/script/dm_narrow         map/mp_11/script/dm_isolation
    map/mp_07_ctf/script/ctf_vulcano      map/mp_12/script/ctf_canyon
    map/mp_08/script/dm_vertical          map/mp_13/script/dm_sightless
    map/mp_09/script/dm_nightfall
Diese Verzeichnisse fehlen in den AN2-PAKs vollstaendig. AN2 sucht also nach
Leveln, die es nicht mitbringt -- AN1 hat sie.

Dieses Skript packt ein AN1-Levelverzeichnis in eine AN2-taugliche PAK.

ACHTUNG: schreibt in den AquaNox-2-Ordner. Vorher sichern.
Aufruf:
    level_an1_to_an2.py check   mp_06_dm
    level_an1_to_an2.py build   mp_06_dm  <ziel.pak>
"""
import os, sys, struct, shutil

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import pak_tool
import msb_an2_to_an1 as M

GAME = os.path.abspath(os.path.join(HERE, "..", ".."))
EXT1 = os.path.join(GAME, "dat", "pak", "extracted")
AN2 = os.path.join(GAME, "Aquanox2Relevation")

# Welche AN1-MP-Level AN2 bereits kennt (Pfad -> erwarteter Skriptname)
AN2_KNOWN_MP = {
    "mp_05_ctf": "ctf_liberty",
    "mp_06_dm":  "dm_narrow",
    "mp_07_ctf": "ctf_vulcano",
    "mp_08":     "dm_vertical",
    "mp_09":     "dm_nightfall",
    "mp_10":     "ctf_stream",
    "mp_11":     "dm_isolation",
    "mp_12":     "ctf_canyon",
    "mp_13":     "dm_sightless",
}


def collect(level):
    """Alle Dateien eines AN1-Levels als (archivname, quellpfad)."""
    root = os.path.join(EXT1, "map", level)
    if not os.path.isdir(root):
        raise SystemExit(f"Level nicht gefunden: {root}")
    out = []
    for r, _, files in os.walk(root):
        for f in sorted(files):
            p = os.path.join(r, f)
            rel = os.path.relpath(p, EXT1).replace(os.sep, "\\")
            out.append((rel, p))
    return sorted(out)


def check(level):
    ents = collect(level)
    print(f"AN1-Level {level}: {len(ents)} Dateien")
    import collections
    c = collections.Counter(os.path.splitext(a)[1].lower() for a, _ in ents)
    tot = sum(os.path.getsize(b) for _, b in ents)
    print(f"   Typen: {dict(c.most_common())}")
    print(f"   Gesamt: {tot/1024/1024:.1f} MB")

    print(f"\nKennt AN2 dieses Level? ", end="")
    if level in AN2_KNOWN_MP:
        print(f"JA -- als Multiplayer-Karte '{AN2_KNOWN_MP[level]}'")
        exp = f"map\\{level}\\script\\{AN2_KNOWN_MP[level]}.sco"
        have = any(a.lower() == exp.lower() for a, _ in ents)
        print(f"   erwartetes Skript {exp}: {'vorhanden' if have else 'FEHLT'}")
    else:
        print("nein -- muesste ueber dat/sty/mission.des eingetragen werden")

    print("\nMesh-Trailer (AN2 versteht beide, AN1-Form ist die sichere):")
    import collections as C
    st = C.Counter()
    for a, b in ents:
        if not a.lower().endswith(".msb"):
            continue
        d = open(b, "rb").read()
        try:
            blocks = M.parse_blocks(d)
            for i, blk in enumerate(blocks):
                if i == len(blocks) - 1:
                    continue
                st["AN1" if d[blk[6]-8:blk[6]] == M.AN1_TRAILER else "AN2"] += 1
        except Exception:
            st["unlesbar"] += 1
    print(f"   {dict(st)}")

    print("\nWas AN2 zusaetzlich haette, dem Level aber fehlt:")
    print("   .vc  (Vertexfarben)  -- optional, 89 AN2-lmsh-Meshes haben keine")
    print("   cubemap/envcubemap.dds -- optional, 15 von 42 AN2-Leveln ohne")
    return ents


def build(level, out_path):
    ents = collect(level)
    if os.path.exists(out_path):
        raise SystemExit(f"Zieldatei existiert bereits: {out_path}")
    pak_tool.pack(ents, out_path, an2=True)
    size = os.path.getsize(out_path)
    with open(out_path, "rb") as f:
        ver, cr, back = pak_tool.read_directory(f)
    ds = 84 + len(back) * 132
    ok = ds + sum(s for _, _, s in back) == size
    print(f"geschrieben: {out_path}")
    print(f"   {len(back)} Dateien, {size:,} B, Version {ver}, Pruefsumme ok={ok}")
    print(f"\nZum Ausprobieren nach {AN2}\\pak\\ kopieren")
    print("   (eine hoehere Nummer als data4.pak waehlen, z.B. data5.pak)")
    print("   und vorher den Ordner sichern.")


def _cli():
    if len(sys.argv) < 3:
        print(__doc__)
        return
    cmd, level = sys.argv[1], sys.argv[2]
    if cmd == "check":
        check(level)
    elif cmd == "build":
        if len(sys.argv) < 4:
            raise SystemExit("Zielpfad fehlt")
        check(level)
        print()
        build(level, sys.argv[3])
    else:
        print(__doc__)


if __name__ == "__main__":
    _cli()
