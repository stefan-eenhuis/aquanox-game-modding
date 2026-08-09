"""Woher kommen al und cl an den beiden Bit-0x10-Teststellen?

Gefunden (bit10_pruefung.py):
    0x004fe7ed   test al, 0x10
    0x004fe9f8   test cl, 0x10   (mod=3 -> Register cl, nicht [ecx])

Jetzt: die Befehle unmittelbar davor lesen. Gesucht ist die Ladung
von al bzw. cl -- sie sagt, WELCHES Objekt und welcher Versatz das
Flagbyte traegt.
"""
import struct

EXE = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox\Aqua.exe"
b = open(EXE, "rb").read()
BASE = 0x400000
R32 = ["eax", "ecx", "edx", "ebx", "esp", "ebp", "esi", "edi"]
R8 = ["al", "cl", "dl", "bl", "ah", "ch", "dh", "bh"]


def mrm(o, achtbit=False):
    m = b[o]
    mod, reg, rm = m >> 6, (m >> 3) & 7, m & 7
    p = o + 1
    if mod == 3:
        return (R8 if achtbit else R32)[rm], reg, p - o
    basis = R32[rm]
    if rm == 4:
        s = b[p]
        idx = (s >> 3) & 7
        basis = R32[s & 7] if idx == 4 else "%s+%s*%d" % (
            R32[s & 7], R32[idx], 1 << (s >> 6))
        p += 1
    if mod == 0:
        if rm == 5:
            return "[0x%08x]" % struct.unpack_from("<I", b, p)[0], reg, p + 4 - o
        return "[%s]" % basis, reg, p - o
    if mod == 1:
        return "[%s%+#x]" % (basis, struct.unpack_from("<b", b, p)[0]), reg, p + 1 - o
    return "[%s%+#x]" % (basis, struct.unpack_from("<i", b, p)[0]), reg, p + 4 - o


def zeile(o):
    """(text, laenge) fuer die hier vorkommenden Befehle."""
    op = b[o]
    if op == 0x8A:
        z, r, n = mrm(o + 1, True)
        return "mov %s, %s" % (R8[r], z), 1 + n
    if op == 0x8B:
        z, r, n = mrm(o + 1)
        return "mov %s, %s" % (R32[r], z), 1 + n
    if op == 0x0F and b[o + 1] in (0xB6, 0xB7):
        z, r, n = mrm(o + 2)
        return "movzx %s, %s" % (R32[r], z), 2 + n
    if op == 0x8D:
        z, r, n = mrm(o + 1)
        return "lea %s, %s" % (R32[r], z), 1 + n
    if op == 0xA8:
        return "test al, 0x%02x" % b[o + 1], 2
    if op == 0xF6:
        z, r, n = mrm(o + 1, True)
        nam = {0: "test", 4: "mul", 6: "div"}.get(r, "op%d" % r)
        return "%s %s, 0x%02x" % (nam, z, b[o + 1 + n]), 2 + n
    if op == 0x84:
        z, r, n = mrm(o + 1, True)
        return "test %s, %s" % (z, R8[r]), 1 + n
    if op == 0x85:
        z, r, n = mrm(o + 1)
        return "test %s, %s" % (z, R32[r]), 1 + n
    if 0x50 <= op <= 0x57:
        return "push %s" % R32[op - 0x50], 1
    if op == 0xE8:
        return "call 0x%08x" % (o + BASE + 5 +
                                struct.unpack_from("<i", b, o + 1)[0]), 5
    if op == 0x74:
        return "je  0x%08x" % (o + BASE + 2 +
                               struct.unpack_from("<b", b, o + 1)[0]), 2
    if op == 0x75:
        return "jne 0x%08x" % (o + BASE + 2 +
                               struct.unpack_from("<b", b, o + 1)[0]), 2
    if op == 0x0F and 0x80 <= b[o + 1] <= 0x8F:
        return "jcc 0x%08x" % (o + BASE + 6 +
                               struct.unpack_from("<i", b, o + 2)[0]), 6
    return "(%02x)" % op, 1


for stelle, name in ((0x004FE7ED, "test al, 0x10"),
                     (0x004FE9F8, "test cl, 0x10")):
    print("=" * 70)
    print("Umfeld von 0x%08x  (%s)" % (stelle, name))
    print("=" * 70)
    # 40 Byte davor linear durchlaufen, damit die Grenzen stimmen
    o = stelle - BASE - 40
    while o < stelle - BASE + 8:
        t, n = zeile(o)
        marke = "  <<<" if o + BASE == stelle else ""
        print("  0x%08x  %-14s %s%s"
              % (o + BASE, b[o:o + n].hex(), t, marke))
        o += n
    print()
