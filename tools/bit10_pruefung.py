"""Wie sieht die Pruefung von Bit 0x10 im Maschinencode wirklich aus?

Lehre aus 527.1: nicht dem Dekompilat glauben, wenn ein Befund an
einem Versatz haengt. Ghidra sagt

    byte *param_1 ... if ((*param_1 & 0x10) != 0)

Zu pruefen: welches Register, welcher Versatz, welche Breite.
"""
import re
import struct

EXE = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox\Aqua.exe"
b = open(EXE, "rb").read()
BASE = 0x400000
REG = ["eax", "ecx", "edx", "ebx", "esp", "ebp", "esi", "edi"]
REG8 = ["al", "cl", "dl", "bl", "ah", "ch", "dh", "bh"]

VON, BIS = 0x004FE780, 0x004FEA61


def modrm(o):
    """(text, reg, laenge) fuer ein ModRM ab Versatz o (nach Opcode)."""
    m = b[o]
    mod, reg, rm = m >> 6, (m >> 3) & 7, m & 7
    p = o + 1
    basis = REG[rm]
    if rm == 4:
        s = b[p]
        idx = (s >> 3) & 7
        basis = REG[s & 7] if idx == 4 else "%s+%s*%d" % (
            REG[s & 7], REG[idx], 1 << (s >> 6))
        p += 1
    if mod == 0:
        if rm == 5:
            d = struct.unpack_from("<I", b, p)[0]
            return "[0x%08x]" % d, reg, p + 4 - o
        return "[%s]" % basis, reg, p - o
    if mod == 1:
        d = struct.unpack_from("<b", b, p)[0]
        return "[%s%+#x]" % (basis, d), reg, p + 1 - o
    if mod == 2:
        d = struct.unpack_from("<i", b, p)[0]
        return "[%s%+#x]" % (basis, d), reg, p + 4 - o
    return REG[rm], reg, p - o


print("=" * 72)
print("Alle Bit-Pruefungen (test/and mit 0x10) in FUN_004fe780")
print("=" * 72)
o = VON - BASE
while o < BIS - BASE:
    op = b[o]
    # F6 /0 ib = test r/m8, imm8
    if op == 0xF6:
        ziel, reg, n = modrm(o + 1)
        if reg == 0 and b[o + 1 + n] == 0x10:
            print("  0x%08x  %-18s test byte ptr %s, 0x10"
                  % (o + BASE, b[o:o + 2 + n].hex(), ziel))
        o += 1
        continue
    # 84 /r = test r/m8, r8   |  A8 ib = test al, imm8
    if op == 0xA8 and b[o + 1] == 0x10:
        print("  0x%08x  %-18s test al, 0x10" % (o + BASE, b[o:o + 2].hex()))
        o += 2
        continue
    # 24 ib = and al, imm8
    if op == 0x24 and b[o + 1] == 0x10:
        print("  0x%08x  %-18s and al, 0x10" % (o + BASE, b[o:o + 2].hex()))
        o += 2
        continue
    # 80 /4 ib = and r/m8, imm8
    if op == 0x80:
        ziel, reg, n = modrm(o + 1)
        if b[o + 1 + n] == 0x10:
            nam = {0: "add", 1: "or", 4: "and", 5: "sub", 7: "cmp"}.get(
                reg, "op%d" % reg)
            print("  0x%08x  %-18s %s byte ptr %s, 0x10"
                  % (o + BASE, b[o:o + 2 + n].hex(), nam, ziel))
        o += 1
        continue
    o += 1

print()
print("=" * 72)
print("Womit wird das Register vorher geladen? Erste 0x40 Byte")
print("=" * 72)
o = VON - BASE
while o < VON - BASE + 0x40:
    op = b[o]
    if op in (0x8A, 0x8B, 0x0F):          # mov r8/r32, movzx
        if op == 0x0F and b[o + 1] in (0xB6, 0xB7):
            ziel, reg, n = modrm(o + 2)
            print("  0x%08x  %-18s movzx %s, %s"
                  % (o + BASE, b[o:o + 2 + n].hex(), REG[reg], ziel))
            o += 2 + n
            continue
        if op in (0x8A, 0x8B):
            ziel, reg, n = modrm(o + 1)
            r = REG8[reg] if op == 0x8A else REG[reg]
            print("  0x%08x  %-18s mov %s, %s"
                  % (o + BASE, b[o:o + 1 + n].hex(), r, ziel))
            o += 1 + n
            continue
    o += 1
