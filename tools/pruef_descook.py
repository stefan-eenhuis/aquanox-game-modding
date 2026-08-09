"""Kann descook gekochte DES byte-treu zurueckschreiben?

Das ist die Pflichtprobe vor jedem Schreibversuch -- dieselbe, die
sco_position und sco_string fahren: wer die Datei nicht unveraendert
zurueckgibt, veraendert sie auch sonst.

*** ES WIRD NICHTS GESCHRIEBEN. *** Alles im Arbeitsspeicher.
"""
import os
import sys

SPIEL = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox"
sys.path.insert(0, os.path.join(SPIEL, "mod_docu", "tools"))
import descook

EXT = os.path.join(SPIEL, "dat", "pak", "extracted")
STY = os.path.join(EXT, "dat", "sty")

fehler = []


def pruefe(b, t):
    print(("  ok   " if b else "  FEHL ") + t)
    if not b:
        fehler.append(t)


# --- 1) Rundlauf an option~.des -------------------------------------
p = os.path.join(STY, "option~.des")
roh = open(p, "rb").read()
wurzeln = descook.parse(roh)
zurueck = descook.serialize(wurzeln)
print("option~.des: %d Byte rein, %d Byte raus" % (len(roh), len(zurueck)))
pruefe(zurueck == roh, "*** RUNDLAUF byte-identisch ***")

# --- 2) Rundlauf ueber ALLE gekochten Dateien -----------------------
print("\n=== Rundlauf ueber alle gekochten Dateien ===")
import glob
gekocht = []
for muster in ("*~.des", "*~.osd", "*~.sam"):
    for w, _, ns in os.walk(EXT):
        for n in ns:
            if n.endswith(muster[1:]) and "~" in n:
                gekocht.append(os.path.join(w, n))
gekocht = sorted(set(gekocht))
ok = schlecht = fehlerhaft = 0
beispiele = []
for f in gekocht:
    b = open(f, "rb").read()
    try:
        if descook.serialize(descook.parse(b)) == b:
            ok += 1
        else:
            schlecht += 1
            if len(beispiele) < 5:
                beispiele.append(os.path.basename(f))
    except Exception as e:
        fehlerhaft += 1
        if len(beispiele) < 5:
            beispiele.append("%s (%s)" % (os.path.basename(f),
                                          type(e).__name__))
print("  %d Dateien: %d byte-identisch, %d abweichend, %d Fehler"
      % (len(gekocht), ok, schlecht, fehlerhaft))
if beispiele:
    print("  Auffaellig:", ", ".join(beispiele))
pruefe(schlecht == 0 and fehlerhaft == 0,
       "alle gekochten Dateien laufen byte-identisch rund")

# --- 3) Eine Option ANHAENGEN ---------------------------------------
print("\n=== Probe: eine neue Option anhaengen ===")
wurzeln = descook.parse(roh)
tab = descook.find_path(wurzeln[0], "table") if hasattr(
    descook, "find_path") else None
print("  table gefunden:", tab is not None)
if tab is not None:
    vorher = len(getattr(tab, "children", []) or [])
    neu = descook.new_header("option309")
    neu.entries = [
        descook.new_entry("key", 2500),
        descook.new_entry("type", "dialog"),
        descook.new_entry("typekey", 1),
        descook.new_entry("numofcommand", 0),
    ]
    tab.children.append(neu)
    gebaut = descook.serialize(wurzeln)
    print("  neue Groesse: %d Byte (vorher %d, +%d)"
          % (len(gebaut), len(roh), len(gebaut) - len(roh)))
    pruefe(len(gebaut) > len(roh), "die Datei ist gewachsen")
    # Wieder einlesen
    w2 = descook.parse(gebaut)
    tab2 = descook.find_path(w2[0], "table")
    nachher = len(getattr(tab2, "children", []) or [])
    print("  Bloecke unter table: %d -> %d" % (vorher, nachher))
    pruefe(nachher == vorher + 1, "der neue Block ist wieder lesbar")
    # Steht der Wert drin?
    letzter = tab2.children[-1]
    kv = {e.key.decode("latin-1").rstrip("\x00") if isinstance(e.key, bytes)
          else e.key: e.value for e in (letzter.entries or [])}
    print("  neuer Block: name=%r Felder=%s"
          % (letzter.key, list(kv.keys())))

print("\n" + ("ALLES OK" if not fehler
              else "%d FEHLER: %s" % (len(fehler), "; ".join(fehler))))
