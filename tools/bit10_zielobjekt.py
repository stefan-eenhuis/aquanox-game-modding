"""Bit 0x10, dritter Anlauf: ueber die Feldsignatur des Zielobjekts.

FUN_004fe780 bekommt ein Objekt, von dem drei Dinge bekannt sind:
    *(byte*)(obj + 0)      Flagbyte, Bit 0x10 entscheidet
    obj[0x19]              float, als Skalierung benutzt
    *(obj + 0xf4)          Zeiger auf die Normal-Map-Textur
    *(obj + 0xf8)          Zeiger auf die Blob-Textur

Wer sonst noch auf +0xf4 und +0xf8 schreibt, arbeitet mit demselben
Objekttyp -- und fuellt vermutlich auch das Flagbyte.
"""
import re
import struct
import os

EXE = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox\Aqua.exe"
b = open(EXE, "rb").read()
BASE = 0x400000
DOC = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu"


def funktionsliste():
    p = [os.path.join(w, n)
         for w, _, ns in os.walk(os.path.join(DOC, "ghidra_ausgabe"))
         for n in ns if n.lower() == "funktionen.csv"][0]
    f = []
    for l in open(p, encoding="utf-8", errors="replace").read().split("\n")[1:]:
        t = l.split(";")
        if len(t) >= 3:
            try:
                f.append((int(t[0], 16), int(t[2]), t[1]))
            except ValueError:
                pass
    f.sort()
    return f


FUNK = funktionsliste()


def funktion_bei(va):
    for a, gr, n in FUNK:
        if a <= va < a + gr:
            return a, n
    return None, None


def stellen(disp):
    """Alle mov-artigen Zugriffe mit diesem disp32."""
    muster = struct.pack("<I", disp)
    aus = []
    for m in re.finditer(re.escape(muster), b):
        o = m.start()
        # ModRM mit disp32 steht 1-2 Byte davor, Opcode davor
        for zurueck in (2, 3):
            if o - zurueck < 0:
                continue
            op = b[o - zurueck]
            if op in (0x8B, 0x89, 0x8D, 0xC7):
                aus.append((o - zurueck + BASE, op))
                break
    return aus


s_f4 = stellen(0xF4)
s_f8 = stellen(0xF8)
print("Zugriffe mit disp32 0xf4: %d,  0xf8: %d" % (len(s_f4), len(s_f8)))

# Funktionen, die BEIDE Versaetze benutzen -- das ist die Signatur.
von_f4 = {}
for va, op in s_f4:
    a, n = funktion_bei(va)
    if a:
        von_f4.setdefault(a, (n, []))[1].append((va, op))
von_f8 = {}
for va, op in s_f8:
    a, n = funktion_bei(va)
    if a:
        von_f8.setdefault(a, (n, []))[1].append((va, op))

beide = sorted(set(von_f4) & set(von_f8))
print()
print("*** Funktionen, die BEIDE Versaetze (+0xf4 und +0xf8) benutzen: %d ***"
      % len(beide))
OPN = {0x8B: "mov r,[..]", 0x89: "mov [..],r", 0x8D: "lea", 0xC7: "mov [..],imm"}
for a in beide:
    n = von_f4[a][0]
    schreibt = [v for v, op in von_f4[a][1] + von_f8[a][1]
                if op in (0x89, 0xC7)]
    print("  0x%08x  %-40s  %d Zugriffe, davon %d schreibend"
          % (a, n, len(von_f4[a][1]) + len(von_f8[a][1]), len(schreibt)))
    for va, op in sorted(von_f4[a][1] + von_f8[a][1]):
        print("        0x%08x  %s" % (va, OPN.get(op, hex(op))))
