"""option~.des: Optionsebene und Kommandoebene sauber trennen.

Befund aus Lauf 2: die Spielstand-Keys (2004, 1008, 1007, 144, 12)
liegen in /HEAD/table/optionN/commandM/key -- also in KOMMANDOS,
nicht in den Optionen selbst. Zu klaeren: gibt es Optionen mit diesen
Keys, und was tun die Kommandos?
"""
import collections
import os
import re
import sys

SPIEL = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox"
sys.path.insert(0, os.path.join(SPIEL, "mod_docu", "tools"))
sys.path.insert(0, os.path.join(SPIEL, "mod_docu", "toolkit"))
from aqtk.parser import desbaum

STY = os.path.join(SPIEL, "dat", "pak", "extracted", "dat", "sty")
wurzeln, _ = desbaum.lies(open(os.path.join(STY, "option~.des"), "rb").read())


def baum(kn, weg=""):
    p = weg + "/" + (kn.name or "?")
    kinder = getattr(kn, "kinder", None) or []
    if not kinder:
        yield p, kn.name, kn.wert
    for k in kinder:
        yield from baum(k, p)


alle = [x for w in wurzeln for x in baum(w)]

# Optionen sammeln: /HEAD/table/optionN/...
optionen = {}
for pfad, name, wert in alle:
    m = re.match(r"/HEAD/table/(option\d+)/(?:(command\d+)/)?(\w+)$", pfad)
    if not m:
        continue
    opt, cmd, feld = m.group(1), m.group(2), m.group(3)
    o = optionen.setdefault(opt, {"felder": {}, "cmds": {}})
    if cmd:
        o["cmds"].setdefault(cmd, {})[feld] = wert
    else:
        o["felder"][feld] = wert

print("Optionen: %d" % len(optionen))
okeys = {o["felder"].get("key"): n for n, o in optionen.items()
         if "key" in o["felder"]}
print("Options-Keys: %d verschieden, %d .. %d"
      % (len(okeys), min(k for k in okeys if k is not None),
         max(k for k in okeys if k is not None)))

kbefehle = collections.Counter()
kkeys = collections.Counter()
for n, o in optionen.items():
    for c in o["cmds"].values():
        kbefehle[c.get("command")] += 1
        if "key" in c:
            kkeys[c["key"]] += 1
print("\nKommandoarten:", kbefehle.most_common())

print("\n" + "=" * 66)
print("DIE FUENF SPIELSTAND-KEYS")
print("=" * 66)
for g in (2004, 1008, 1007, 144, 12):
    print("\n  Key %d:" % g)
    ist_opt = g in okeys
    print("    als OPTION definiert: %s" % (okeys[g] if ist_opt else "NEIN"))
    if ist_opt:
        f = optionen[okeys[g]]["felder"]
        print("      type=%s  typekey=%s  numofcommand=%s"
              % (f.get("type"), f.get("typekey"), f.get("numofcommand")))
        for cn, c in sorted(optionen[okeys[g]]["cmds"].items()):
            print("      %s: %s key=%s" % (cn, c.get("command"), c.get("key")))
    quellen = []
    for n, o in optionen.items():
        for cn, c in o["cmds"].items():
            if c.get("key") == g:
                quellen.append("%s/%s (%s)" % (n, cn, c.get("command")))
    print("    von Kommandos gesetzt: %s" % (", ".join(quellen[:4]) or "-"))

print("\n" + "=" * 66)
print("TYPKEY-AUFLOESUNG der Startoptionen (type -> Zieldatei)")
print("=" * 66)
for n in ("option17", "option18", "option34"):
    if n not in optionen:
        continue
    f = optionen[n]["felder"]
    print("  %-10s key=%-5s type=%-9s typekey=%s"
          % (n, f.get("key"), f.get("type"), f.get("typekey")))
