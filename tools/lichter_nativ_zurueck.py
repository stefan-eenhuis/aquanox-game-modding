#!/usr/bin/env python3
"""Rueckbau der nativen Stab-Lichter (Handoff 658b).

Loescht GENAU die in mod_docu\lichter_nativ_angelegt.txt gelisteten
losen OSDs (vfx\osd\gen\gen_pole*~.osd) und danach leere Ordner
vfx\osd\gen bzw. vfx\osd. dat\pak\extracted wird nie beruehrt.
"""
import os

HIER = os.path.dirname(os.path.abspath(__file__))
LISTE = os.path.join(os.path.dirname(HIER), "lichter_nativ_angelegt.txt")
SPIEL = os.path.dirname(os.path.dirname(HIER))

geloescht = 0
for zeile in open(LISTE, encoding="latin-1"):
    p = zeile.strip()
    if not p or p.startswith("#"):
        continue
    if os.sep + "extracted" + os.sep in p.lower():
        print("VERWEIGERT (extracted):", p)
        continue
    if os.path.isfile(p):
        os.remove(p)
        print("geloescht:", p)
        geloescht += 1
    else:
        print("fehlt schon:", p)

# leere Ordner aufraeumen (nur die von uns angelegten)
for rel in (r"vfx\osd\gen", r"vfx\osd"):
    d = os.path.join(SPIEL, rel)
    if os.path.isdir(d) and not os.listdir(d):
        os.rmdir(d)
        print("Ordner entfernt:", d)

print(f"Fertig, {geloescht} Datei(en) entfernt.")
