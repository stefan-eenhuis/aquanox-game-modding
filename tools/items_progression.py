"""Kommen die Geraete spaeter als Upgrade -- oder fehlen sie einfach?

Der Nutzer sagt: die Vergabe ohne Ziffer ist Absicht, bestimmte
Gegenstaende sind erst spaeter verfuegbar. Das ist pruefbar: wenn es
Fortschritt ist, muessen die ZIFFERNVARIANTEN in SPAETEREN Missionen
vorkommen, und zwar mit steigender Stufe.

Kampagnenreihenfolge von AquaNox 1: 1h1..1h4, 2h1..2h3, 3h1.. usw.
Die Nummer vor dem h ist das Kapitel.
"""
import collections
import os
import re

DOC = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu"

quellen = []
for unter in ("an1_missionen_lua", "an1_stationen_lua"):
    p = os.path.join(DOC, unter)
    if os.path.isdir(p):
        for w, _, ns in os.walk(p):
            for n in ns:
                quellen.append(os.path.join(w, n))
print("Skriptquellen gefunden: %d" % len(quellen))

muster = re.compile(r'Body_AddItem\s*\(\s*[^,]+,\s*"([^"]+)"\s*,\s*(\d+)',
                    re.I)
je_karte = collections.defaultdict(collections.Counter)
for p in quellen:
    try:
        t = open(p, encoding="latin-1", errors="replace").read()
    except Exception:
        continue
    karte = os.path.splitext(os.path.basename(p))[0].lower()
    for m in muster.finditer(t):
        je_karte[karte][m.group(1).lower()] += 1

print("Karten mit Body_AddItem: %d" % len(je_karte))
print()


def kapitel(k):
    m = re.match(r"(\d+)([hn])(\d+)", k)
    return (int(m.group(1)), m.group(2), int(m.group(3))) if m else (99, "z", 0)


karten = sorted(je_karte, key=kapitel)

print("=" * 74)
print("REPARATURGERAET UND GENERATOR IM KAMPAGNENVERLAUF")
print("=" * 74)
print("%-10s %-34s %s" % ("Karte", "device_repair*", "device_generator*"))
for k in karten:
    c = je_karte[k]
    rep = [n for n in c if n.startswith("device_repair")]
    gen = [n for n in c if n.startswith("device_generator")]
    if not rep and not gen:
        continue
    print("%-10s %-34s %s" % (k, ", ".join(sorted(rep)) or "-",
                              ", ".join(sorted(gen)) or "-"))

print()
print("=" * 74)
print("ZUSAMMENFASSUNG: welche Fassung wo")
print("=" * 74)
for praefix in ("device_repair", "device_generator"):
    zaehler = collections.Counter()
    karten_je = collections.defaultdict(list)
    for k in karten:
        for n, anz in je_karte[k].items():
            if n.startswith(praefix):
                zaehler[n] += anz
                karten_je[n].append(k)
    print("\n  %s:" % praefix)
    for n in sorted(zaehler):
        ks = karten_je[n]
        print("    %-24s %2d Aufrufe in %2d Karten: %s"
              % (n, zaehler[n], len(ks), ", ".join(ks[:9])))
