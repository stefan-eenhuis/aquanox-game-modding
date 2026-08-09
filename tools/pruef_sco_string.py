"""sco_string.py erproben -- NUR IM ARBEITSSPEICHER.

Es wird keine Spieldatei geschrieben. Gelesen wird 1h1.sco aus dem
Bestand, gepatcht wird eine Kopie im Speicher.
"""
import os
import sys

SPIEL = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox"
sys.path.insert(0, os.path.join(SPIEL, "mod_docu", "toolkit"))
from aqtk.modell import Projekt
from aqtk.schreiber import sco_string

fehler = []


def pruefe(b, t):
    print(("  ok   " if b else "  FEHL ") + t)
    if not b:
        fehler.append(t)


p = Projekt(SPIEL)
p.oeffnen()
roh = p.bestand.lesen("map/1h1/script/1h1.sco")
print("1h1.sco: %d Byte\n" % len(roh))

# --- Stellen finden --------------------------------------------------
import lua4dis as l
top = l.loads(roh)
stellen = sco_string.stellen_finden(top, l)
patchbar = [s for s in stellen if not s.get("grund")]
unpatchbar = [s for s in stellen if s.get("grund")]

print("=== GEFUNDENE STELLEN ===")
import collections
nach_fn = collections.Counter(s["funktion"] for s in patchbar)
for k, v in nach_fn.most_common():
    print("  %-22s %4d patchbar" % (k, v))
print("  %-22s %4d NICHT patchbar (Wert nicht als Konstante)"
      % ("", len(unpatchbar)))
pruefe(len(patchbar) > 0, "es wurden patchbare Stellen gefunden")

# Die Spielerstelle
spieler = [s for s in patchbar
           if s["art"] == "osd" and s["wert"]
           and "/pla/" in s["wert"].replace("\\", "/")]
print("\n  Spielerschiff-Stellen: %d" % len(spieler))
for s in spieler[:3]:
    print("    %s  Knoten %s -> %r  (kstr[%d], pc %d)"
          % (s["weg"], s["knoten"], s["wert"], s["kindex"], s["pc"]))
pruefe(len(spieler) >= 1, "die Spielerschiff-Stelle ist auffindbar")

# --- Schiff wechseln -------------------------------------------------
print("\n=== SCHIFF WECHSELN ===")
neu, bericht = sco_string.schiff_wechseln(
    roh, "osd/pla/pla_vortex.osd", melder=print)
pruefe(len(bericht["geaendert"]) >= 1, "mindestens eine Stelle getauscht")
for g in bericht["geaendert"]:
    print("    %s: %r -> %r" % (g["knoten"], g["alt"], g["neu"]))

# Gegenprobe: steht es wirklich drin?
top2 = l.loads(neu)
nach = [s for s in sco_string.stellen_finden(top2, l)
        if not s.get("grund") and s["art"] == "osd"
        and s["wert"] == "osd/pla/pla_vortex.osd"]
pruefe(len(nach) >= 1, "der neue Pfad steht im Ergebnis")

# --- Der Pool waechst, nichts wird ueberschrieben ---------------------
print("\n=== WIRD WIRKLICH ANGEHAENGT? ===")
alt_pools = {w: len(pr.kstr or []) for w, pr in l.walk(l.loads(roh))}
neu_pools = {w: len(pr.kstr or []) for w, pr in l.walk(top2)}
gewachsen = [w for w in alt_pools if neu_pools.get(w, 0) > alt_pools[w]]
geschrumpft = [w for w in alt_pools if neu_pools.get(w, 0) < alt_pools[w]]
print("  Pools gewachsen: %d, geschrumpft: %d" % (len(gewachsen),
                                                  len(geschrumpft)))
pruefe(len(gewachsen) >= 1, "mindestens ein Pool ist gewachsen")
pruefe(not geschrumpft, "kein Pool ist geschrumpft")

# Alle alten Eintraege muessen unveraendert am selben Platz stehen.
alt_map = {w: list(pr.kstr or []) for w, pr in l.walk(l.loads(roh))}
heil = True
for w, pr in l.walk(top2):
    a = alt_map.get(w)
    if a is None:
        continue
    if (pr.kstr or [])[:len(a)] != a:
        heil = False
        print("    VERAENDERT in %s" % w)
        break
pruefe(heil, "*** kein vorhandener kstr-Eintrag wurde veraendert ***")

# --- Bewaffnung ------------------------------------------------------
print("\n=== BEWAFFNUNG TAUSCHEN ===")
items = [s for s in patchbar if s["funktion"] == "Body_AddItem"]
print("  Body_AddItem-Stellen: %d" % len(items))
if items:
    ziel = items[0]["wert"]
    neu2, b2 = sco_string.anwenden(
        roh, [{"funktion": "Body_AddItem", "alt": ziel,
               "neu": "gun_lasergatlin"}], melder=print)
    pruefe(len(b2["geaendert"]) >= 1, "Item %r getauscht" % ziel)

# --- Laenge ist gleichgueltig ----------------------------------------
print("\n=== LANGER UND KURZER NAME ===")
for probe in ("osd/pla/pla_x.osd",
              "osd/pla/" + "z" * 50 + ".osd"):
    try:
        n3, b3 = sco_string.schiff_wechseln(roh, probe)
        pruefe(len(b3["geaendert"]) >= 1,
               "Name mit %2d Zeichen angenommen (%d Byte Ergebnis)"
               % (len(probe), len(n3)))
    except Exception as e:
        pruefe(False, "Name mit %d Zeichen: %s" % (len(probe), e))

print("\n" + ("ALLES OK" if not fehler
              else "%d FEHLER: %s" % (len(fehler), "; ".join(fehler))))
