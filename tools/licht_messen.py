"""Die Beleuchtung aller Karten vermessen.

Die drei Lichtfunktionen stehen als Zahlen im Missionsskript:
    Game_SetAmbientLight(node, r, g, b)     Grundhelligkeit
    Game_SetParallelLightT(node, r, g, b)   Parallellicht von oben
    Game_SetParallelLightB(node, r, g, b)   Parallellicht von unten

*** Alle Werte sind N/255 *** -- sie stammen aus 8-Bit-Farbwerten.
Das ist die Grundlage fuer jede Aenderung: rechnet man in 0..255,
trifft man genau die Zahlen, die die Entwickler gesetzt haben.
"""
import collections
import glob
import os
import re

DOC = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu"

MUSTER = re.compile(
    r"Game_Set(AmbientLight|ParallelLightT|ParallelLightB)\s*\("
    r"\s*\w+\s*,\s*([-\d.]+)\s*,\s*([-\d.]+)\s*,\s*([-\d.]+)")


def b255(x):
    """Gleitkommawert als 8-Bit-Zahl, wenn er eine ist."""
    n = x * 255.0
    return round(n) if abs(n - round(n)) < 0.02 else None


karten = {}
for p in sorted(glob.glob(os.path.join(DOC, "an1_missionen_lua", "*.lua"))):
    t = open(p, encoding="latin-1", errors="replace").read()
    k = os.path.splitext(os.path.basename(p))[0]
    for m in MUSTER.finditer(t):
        art = m.group(1)
        w = [float(m.group(i)) for i in (2, 3, 4)]
        karten.setdefault(k, {})[art] = w

print("Karten mit Lichtangaben: %d\n" % len(karten))


def kap(k):
    m = re.match(r"(\d+)([hn])(\d+)", k)
    return (int(m.group(1)), m.group(2), int(m.group(3))) if m else (99, "z", 0)


print("%-9s %-22s %-22s %s" % ("Karte", "Ambient (0..255)",
                               "ParallelT (0..255)", "ParallelB (0..255)"))
print("-" * 78)
zaehl = collections.Counter()
for k in sorted(karten, key=kap):
    z = karten[k]
    zeile = "%-9s" % k
    for art in ("AmbientLight", "ParallelLightT", "ParallelLightB"):
        w = z.get(art)
        if not w:
            zeile += " %-22s" % "-"
            continue
        acht = [b255(x) for x in w]
        if all(a is not None for a in acht):
            zeile += " %-22s" % ("%3d %3d %3d" % tuple(acht))
            zaehl["8bit"] += 1
        else:
            zeile += " %-22s" % ("%.3f %.3f %.3f" % tuple(w))
            zaehl["krumm"] += 1
    print(zeile)

print("\n  Werte als glatte 8-Bit-Zahl: %d, krumm: %d"
      % (zaehl["8bit"], zaehl["krumm"]))

# Helligkeit je Karte (Summe Ambient) -- zeigt die dunkelsten
print("\n=== Die dunkelsten und hellsten Karten (Ambient-Summe) ===")
sum_amb = {}
for k, z in karten.items():
    a = z.get("AmbientLight")
    if a:
        sum_amb[k] = sum(a) * 255 / 3
for k in sorted(sum_amb, key=lambda x: sum_amb[x])[:5]:
    print("  dunkel  %-9s %5.1f" % (k, sum_amb[k]))
for k in sorted(sum_amb, key=lambda x: -sum_amb[x])[:5]:
    print("  hell    %-9s %5.1f" % (k, sum_amb[k]))
