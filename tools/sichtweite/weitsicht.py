#!/usr/bin/env python3
"""weitsicht.py -- Sichtweite und Detailreichweite von AquaNox 1 anheben.

*** OHNE JEDEN EINGRIFF IN DEN MASCHINENCODE. *** Geaendert werden nur
Datendateien, und zwar als LOSE Dateien im Spielordner (Handoff 483:
drei fopen-Stellen 0x5219e0 / 0x521ab0 / 0x521950 pruefen erst den
Spielordner und greifen nur im Fehlschlag zum PAK). Aqua.exe und alle
aquanoxN.pak bleiben unangetastet.

RUECKNAHME: die angelegten losen Dateien loeschen -- Schalter "zurueck".
Dieses Skript legt zusaetzlich eine Liste aller angelegten Dateien unter
mod_docu\\weitsicht\\angelegt.txt ab, damit nichts uebersehen wird.

AUFRUF
    weitsicht.py                      Trockenlauf: zeigt nur, was geschaehe
    weitsicht.py --stufe 1 --tun      Stufe 1 anwenden
    weitsicht.py --stufe 2 --tun      Stufe 2
    weitsicht.py --stufe 3 --tun      Stufe 3
    weitsicht.py --zurueck --tun      alles zuruecknehmen

DIE DREI STUFEN (Sichtweite / Pflanzen / Gelaende)
    Stufe 1  1000 Einheiten   vorsichtig, doppelte Kampagnensicht
    Stufe 2  2000 Einheiten   entspricht dem Original-Hoechstwert (mp_09/mp_11)
    Stufe 3  4000 Einheiten   ganze Karte (Kante ist 4096)

GEMESSENE GRUNDLAGEN
  * Camera_SetBackPlane klemmt intern auf [10.0, 100000.0]
    (0x00444aa2..0x00444ac6, Konstanten [0x5f3388]=10, [0x5f4320]=100000).
    Werte bis 100000 sind also zulaessig; 2048 nutzt das Original selbst.
  * Der Wert steht in der Missions-.sco als PUSHINT-Operand, nicht im
    Konstantenpool. Geaendert wird genau eine Instruktion je Karte.
  * fog.des wird NICHT gelesen (alle sechs Schluessel fehlen in Aqua.exe,
    waehrend die terrain.des- und OSD-Schluessel gefunden werden).
    Wirksam ist der Kopf von fog.fog, Byte 12..15 = Sichtweite/64.
  * MaxDistance in vfx\\osd\\fx_plant\\*.osd ist die Sichtweite der Pflanze;
    stone_01 steht auf 80, grass_01 auf 150 -- daher verschwinden Steine
    zuerst.
"""
import argparse, os, shutil, struct, sys, glob, datetime

SPIEL = r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox"
TOOLS = os.path.join(SPIEL, "mod_docu", "tools")
TK    = os.path.join(SPIEL, "mod_docu", "toolkit")
sys.path.insert(0, TOOLS); sys.path.insert(0, TK)
import lua4dis as L, osd_tool
from aqtk.parser import aufrufe as A

EXTR   = os.path.join(SPIEL, "dat", "pak", "extracted")
STAND  = os.path.join(SPIEL, "mod_docu", "weitsicht")
LISTE  = os.path.join(STAND, "angelegt.txt")

STUFEN = {
    1: dict(sicht=1000, pflanze=600,  minres=20.0, maxd2=100.0),
    2: dict(sicht=2000, pflanze=1200, minres=15.0, maxd2=100.0),
    3: dict(sicht=4000, pflanze=2000, minres=10.0, maxd2=100.0),
}

OSD_DATEIEN = [
    r"vfx\osd\fx_plant\stone_01~.osd",
    r"vfx\osd\fx_plant\grass_01~.osd",
    r"vfx\osd\fx_plant\coral_01~.osd",
    r"vfx\osd\fx_plant\coral_03~.osd",
    r"vfx\osd\fx_plant\coral_04~.osd",
    r"vfx\osd\fx_plant\fungus_01~.osd",
    r"vfx\osd\fx_plant\fungus_02~.osd",
    r"vfx\osd\fx_stone1~.osd",
    r"vfx\osd\fx_plant1~.osd",
    r"vfx\osd\fx_plant2~.osd",
    r"vfx\osd\fx_plant4~.osd",
    r"vfx\osd\fx_plant5~.osd",
]


def melde(tun, ziel, was):
    print(f"   {'SCHREIBE' if tun else 'wuerde  '}  {was:<34} {ziel}")


def merke(pfade):
    os.makedirs(STAND, exist_ok=True)
    alt = set()
    if os.path.isfile(LISTE):
        alt = {z.strip() for z in open(LISTE, encoding="utf-8") if z.strip()}
    alt |= set(pfade)
    with open(LISTE, "w", encoding="utf-8") as f:
        f.write(f"# angelegt {datetime.datetime.now():%Y-%m-%d %H:%M:%S}\n")
        for p in sorted(alt):
            f.write(p + "\n")


def quelle_sco(lvl):
    """Die .sco, von der ausgegangen wird. *** WICHTIG: liegt bereits eine
    eigene Fassung in einem Mod-PAK oder lose, MUSS von der ausgegangen
    werden, sonst gehen frühere Aenderungen verloren. ***"""
    lose = os.path.join(SPIEL, "map", lvl, "script", lvl + ".sco")
    if os.path.isfile(lose):
        return lose, "lose Datei im Spielordner"
    modbau = os.path.join(SPIEL, "mod", "map", lvl, "script", lvl + ".sco")
    if os.path.isfile(modbau):
        return modbau, "mod\\map (Bauordner, steckt in aquanox8.pak)"
    return os.path.join(EXTR, "map", lvl, "script", lvl + ".sco"), "Original"


# ---------------------------------------------------------------- Teil 1
def teil_kamera(sicht, tun, angelegt):
    print(f"\n[1/4] Kamera-Fernebene -> {sicht}")
    for d in sorted(os.listdir(os.path.join(EXTR, "map"))):
        q, herkunft = quelle_sco(d)
        if not os.path.isfile(q):
            continue
        top = L.loads(open(q, "rb").read())
        ruf = A.lies(top, "main", L)
        ziele = [a for a in ruf if a.funktion == "Camera_SetBackPlane"]
        if not ziele:
            continue

        def proto(weg):
            p = top
            if weg == "main":
                return p
            for t in weg.split("/")[1:]:
                p = (getattr(p, "kproto", []) or [])[int(t)]
            return p

        n, alt = 0, None
        for a in ziele:
            p = proto(a.proto)
            for j in range(a.stelle - 1, max(-1, a.stelle - 8), -1):
                ins = p.code[j]
                if L.op(ins) == "PUSHINT":
                    alt = L.argS(ins)
                    p.code[j] = L.i_s("PUSHINT", sicht)
                    n += 1
                    break
                if L.op(ins) in ("CALL", "TAILCALL"):
                    break
        if n == 0:
            print(f"   {d}: KEINE PUSHINT-Stelle gefunden -- uebersprungen")
            continue
        neu = L.save(top)
        # Rueckleseprobe VOR dem Schreiben
        kontrolle = [x.zahlen[0] for x in A.lies(L.loads(neu), "main", L)
                     if x.funktion == "Camera_SetBackPlane"]
        if kontrolle != [float(sicht)] * n:
            print(f"   {d}: RUECKLESEPROBE FEHLGESCHLAGEN {kontrolle} -- nicht geschrieben")
            continue
        ziel = os.path.join(SPIEL, "map", d, "script", d + ".sco")
        melde(tun, ziel, f"{alt} -> {sicht}  (aus: {herkunft})")
        if tun:
            os.makedirs(os.path.dirname(ziel), exist_ok=True)
            open(ziel, "wb").write(neu)
        angelegt.append(ziel)


# ---------------------------------------------------------------- Teil 2
def teil_nebel(sicht, tun, angelegt):
    print(f"\n[2/4] Nebel-Sichtweite (fog.fog Kopf, Byte 12..15) -> {sicht}")
    for q in sorted(glob.glob(os.path.join(EXTR, "map", "*", "fog", "fog.fog"))):
        lvl = q.split(os.sep)[-3]
        lose = os.path.join(SPIEL, "map", lvl, "fog", "fog.fog")
        basis = lose if os.path.isfile(lose) else q
        d = bytearray(open(basis, "rb").read())
        alt = struct.unpack_from("<f", d, 12)[0] * 64
        struct.pack_into("<f", d, 12, sicht / 64.0)
        ziel = lose
        melde(tun, ziel, f"{alt:.0f} -> {sicht}")
        if tun:
            os.makedirs(os.path.dirname(ziel), exist_ok=True)
            open(ziel, "wb").write(bytes(d))
        angelegt.append(ziel)


# ---------------------------------------------------------------- Teil 3
def teil_pflanzen(weite, tun, angelegt):
    print(f"\n[3/4] Pflanzen/Steine MaxDistance -> {weite}")
    for rel in OSD_DATEIEN:
        q = os.path.join(EXTR, rel)
        if not os.path.isfile(q):
            print(f"   {rel}: nicht vorhanden -- uebersprungen")
            continue
        lose = os.path.join(SPIEL, rel)
        basis = lose if os.path.isfile(lose) else q
        alt = osd_tool.als_dict(basis).get("maxdistance")
        roh, getan = osd_tool.aendere(basis, {"maxdistance": float(weite)})
        if "maxdistance" not in getan:
            print(f"   {rel}: kein maxdistance-Feld -- uebersprungen")
            continue
        melde(tun, lose, f"{alt} -> {weite}")
        if tun:
            os.makedirs(os.path.dirname(lose), exist_ok=True)
            open(lose, "wb").write(roh)
            zurueck = osd_tool.als_dict(lose).get("maxdistance")
            if abs(zurueck - weite) > 0.01:
                print(f"      RUECKLESEPROBE FEHLGESCHLAGEN: {zurueck}")
        angelegt.append(lose)


# ---------------------------------------------------------------- Teil 4
def teil_gelaende(minres, maxd2, tun, angelegt):
    print(f"\n[4/4] Gelaendedetail terrain.des MinimumResolution -> {minres}")
    for q in sorted(glob.glob(os.path.join(EXTR, "map", "*", "terrain", "terrain.des"))):
        lvl = q.split(os.sep)[-3]
        lose = os.path.join(SPIEL, "map", lvl, "terrain", "terrain.des")
        basis = lose if os.path.isfile(lose) else q
        zeilen = open(basis, "r", errors="replace").read().split("\n")
        alt = None
        aus = []
        for z in zeilen:
            t = z.strip()
            if t.startswith("//"):
                aus.append(z); continue
            if t.startswith("MinimumResolution"):
                alt = t.split("=")[1].strip()
                aus.append(f"\tMinimumResolution = {minres}")
            elif t.startswith("MaximumD2"):
                aus.append(f"\tMaximumD2  = {maxd2}")
            else:
                aus.append(z)
        melde(tun, lose, f"MinRes {alt} -> {minres}")
        if tun:
            os.makedirs(os.path.dirname(lose), exist_ok=True)
            open(lose, "w", newline="\n").write("\n".join(aus))
        angelegt.append(lose)


# ---------------------------------------------------------------- zurueck
def zuruecknehmen(tun):
    if not os.path.isfile(LISTE):
        print("Keine Liste angelegter Dateien -- nichts zurueckzunehmen.")
        return
    n = 0
    for z in open(LISTE, encoding="utf-8"):
        p = z.strip()
        if not p or p.startswith("#"):
            continue
        if os.path.isfile(p):
            print(f"   {'LOESCHE ' if tun else 'wuerde  '} {p}")
            if tun:
                os.remove(p)
            n += 1
    # leere Ordner raeumen
    if tun:
        for wurzel in (os.path.join(SPIEL, "map"), os.path.join(SPIEL, "vfx", "osd")):
            for pfad, dirs, files in os.walk(wurzel, topdown=False):
                if not os.listdir(pfad):
                    os.rmdir(pfad)
        os.remove(LISTE)
    print(f"{n} Dateien betroffen.")


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--stufe", type=int, choices=(1, 2, 3))
    ap.add_argument("--zurueck", action="store_true")
    ap.add_argument("--tun", action="store_true",
                    help="ohne diesen Schalter passiert NICHTS")
    ap.add_argument("--nur", choices=("kamera", "nebel", "pflanzen", "gelaende"),
                    help="nur einen Teil anwenden")
    a = ap.parse_args()

    if a.zurueck:
        zuruecknehmen(a.tun)
        return
    if not a.stufe:
        ap.print_help(); return

    s = STUFEN[a.stufe]
    print(f"=== Stufe {a.stufe}: Sicht {s['sicht']}, Pflanzen {s['pflanze']}, "
          f"MinRes {s['minres']} ===")
    if not a.tun:
        print("    (TROCKENLAUF -- es wird nichts geschrieben. Mit --tun anwenden.)")
    angelegt = []
    if a.nur in (None, "kamera"):   teil_kamera(s["sicht"], a.tun, angelegt)
    if a.nur in (None, "nebel"):    teil_nebel(s["sicht"], a.tun, angelegt)
    if a.nur in (None, "pflanzen"): teil_pflanzen(s["pflanze"], a.tun, angelegt)
    if a.nur in (None, "gelaende"): teil_gelaende(s["minres"], s["maxd2"], a.tun, angelegt)
    if a.tun:
        merke(angelegt)
        print(f"\nListe der angelegten Dateien: {LISTE}")
        print("Rueckgaengig mit:  weitsicht.py --zurueck --tun")
    else:
        print(f"\n{len(angelegt)} Dateien wuerden angelegt. Mit --tun anwenden.")


if __name__ == "__main__":
    main()
