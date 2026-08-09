"""Wer setzt das erste Byte einer Terrainkachel?

Bestaetigt: 0x004fe7e2 "mov al,[edx]" mit edx = this = Kachel,
danach "test al,0x10". Das Flagbyte liegt also an Kachelversatz 0.

Die Kacheln entstehen in MRT_Terrain::LoadTerrain mit
operator_new(anzahl * 0x7c + 4). Gesucht: Byte-Schreibzugriffe im
Terrainbereich, deren Wert Bit 0x10 traegt.
"""
import os
import re
import struct

EXE = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox\Aqua.exe"
DOC = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu"
b = open(EXE, "rb").read()
BASE = 0x400000
R32 = ["eax", "ecx", "edx", "ebx", "esp", "ebp", "esi", "edi"]
R8 = ["al", "cl", "dl", "bl", "ah", "ch", "dh", "bh"]

p = [os.path.join(w, n)
     for w, _, ns in os.walk(os.path.join(DOC, "ghidra_ausgabe"))
     for n in ns if n.lower() == "funktionen.csv"][0]
FUNK = []
for l in open(p, encoding="utf-8", errors="replace").read().split("\n")[1:]:
    t = l.split(";")
    if len(t) >= 3:
        try:
            FUNK.append((int(t[0], 16), int(t[2]), t[1]))
        except ValueError:
            pass
FUNK.sort()


def fn(va):
    for a, g, n in FUNK:
        if a <= va < a + g:
            return n
    return "?"


print("=" * 74)
print("C6 /0 ib  --  mov byte ptr [...], imm8  mit gesetztem Bit 0x10")
print("=" * 74)
treffer = []
for m in re.finditer(rb"\xc6", b):
    o = m.start()
    if o + 3 > len(b):
        continue
    mrm = b[o + 1]
    mod, reg, rm = mrm >> 6, (mrm >> 3) & 7, mrm & 7
    if reg != 0 or rm == 4:
        continue
    if mod == 0 and rm != 5:
        wert, laenge, ziel = b[o + 2], 3, "[%s]" % R32[rm]
    elif mod == 1:
        wert, laenge = b[o + 3], 4
        ziel = "[%s%+#x]" % (R32[rm], struct.unpack_from("<b", b, o + 2)[0])
    else:
        continue
    if not (wert & 0x10):
        continue
    va = o + BASE
    treffer.append((va, ziel, wert))

# Nur die im Grafik-/Terrainbereich
print("  im Bereich 0x00440000..0x00520000:")
for va, ziel, wert in treffer:
    if 0x440000 <= va <= 0x520000:
        print("    0x%08x  mov byte ptr %-14s, 0x%02x    %s"
              % (va, ziel, wert, fn(va)))
print("  (insgesamt %d solche Befehle in der ganzen Exe)" % len(treffer))

print()
print("=" * 74)
print("mov [reg], r8  auf Versatz 0 im Terrainbereich (88 /r, mod=0)")
print("=" * 74)
n = 0
for m in re.finditer(rb"\x88", b):
    o = m.start()
    va = o + BASE
    if not (0x4fe000 <= va <= 0x510000):
        continue
    mrm = b[o + 1]
    mod, reg, rm = mrm >> 6, (mrm >> 3) & 7, mrm & 7
    if mod == 0 and rm not in (4, 5):
        print("    0x%08x  mov byte ptr [%s], %s    %s"
              % (va, R32[rm], R8[reg], fn(va)))
        n += 1
    if n > 14:
        break

print()
print("=" * 74)
print("Wer ruft FUN_004fe780 -- und mit welcher Kachel?")
print("=" * 74)
for m in re.finditer(rb"\xe8", b):
    o = m.start()
    if o + 5 > len(b):
        continue
    rel = struct.unpack_from("<i", b, o + 1)[0]
    if o + 5 + rel + BASE == 0x004FE780:
        print("    call bei 0x%08x  in %s" % (o + BASE, fn(o + BASE)))
