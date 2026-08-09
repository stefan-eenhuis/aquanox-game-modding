"""Den Widerspruch aus 521.2 aufloesen.

Die Kachel ist 0x7c = 124 Byte gross, FUN_004fe780 greift aber auf
+0xf4 und +0xf8 zu (244, 248). Eines von beiden ist falsch gedeutet.

ENTSCHEIDENDE FRAGE: welches REGISTER bildet an den +0xf4/+0xf8-
Stellen die Basis? Ist es der this-Zeiger (der in [ebp-0x14] liegt,
siehe Prolog), oder ein anderes Objekt?
"""
import re
import struct

EXE = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox\Aqua.exe"
b = open(EXE, "rb").read()
BASE = 0x400000
REG = ["eax", "ecx", "edx", "ebx", "esp", "ebp", "esi", "edi"]

VON, BIS = 0x004FE780, 0x004FEA61


def modrm_text(op, o):
    """Gibt (text, laenge) fuer mov/lea mit ModRM zurueck."""
    modrm = b[o + 1]
    mod, reg, rm = modrm >> 6, (modrm >> 3) & 7, modrm & 7
    sib = ""
    p = o + 2
    if rm == 4:                       # SIB-Byte
        s = b[p]
        basis = REG[s & 7]
        idx = (s >> 3) & 7
        skala = 1 << (s >> 6)
        sib = basis if idx == 4 else "%s+%s*%d" % (basis, REG[idx], skala)
        p += 1
    else:
        sib = REG[rm]
    if mod == 0:
        if rm == 5:
            d = struct.unpack_from("<I", b, p)[0]
            return "[0x%08x]" % d, reg, p + 4 - o
        disp = ""
    elif mod == 1:
        d = struct.unpack_from("<b", b, p)[0]
        disp = "%+#x" % d
        p += 1
    elif mod == 2:
        d = struct.unpack_from("<i", b, p)[0]
        disp = "%+#x" % d
        p += 4
    else:
        return REG[rm], reg, 2
    return "[%s%s]" % (sib, disp), reg, p - o


print("=" * 74)
print("FUN_004fe780 -- alle Zugriffe mit Versatz 0xf4 / 0xf8 / 0x64")
print("=" * 74)
o = VON - BASE
ende = BIS - BASE
gefunden = []
while o < ende:
    op = b[o]
    if op in (0x8B, 0x89, 0x8D):
        try:
            ziel, reg, n = modrm_text(op, o)
        except Exception:
            o += 1
            continue
        if any(x in ziel for x in ("+0xf4", "+0xf8", "+0x64", "0xf4]", "0xf8]")):
            name = {0x8B: "mov %s, %s", 0x89: "mov %s, %s",
                    0x8D: "lea %s, %s"}[op]
            if op == 0x89:
                text = "mov %s, %s" % (ziel, REG[reg])
            else:
                text = name % (REG[reg], ziel)
            print("  0x%08x  %-16s %s"
                  % (o + BASE, b[o:o + n].hex(), text))
            gefunden.append((o + BASE, ziel, text))
        o += n if n > 0 else 1
        continue
    o += 1

print()
print("=" * 74)
print("Wo kommt die Basis her? Prolog und this-Sicherung")
print("=" * 74)
o = VON - BASE
while o < VON - BASE + 0x30:
    op = b[o]
    if op == 0x89 and b[o + 1] == 0x4D:        # mov [ebp+disp8], ecx
        print("  0x%08x  %-16s mov [ebp%+#x], ecx   <- this gesichert"
              % (o + BASE, b[o:o + 3].hex(),
                 struct.unpack_from("<b", b, o + 2)[0]))
    if op == 0x8B and b[o + 1] in (0x45, 0x4D, 0x55, 0x5D, 0x75, 0x7D):
        d = struct.unpack_from("<b", b, o + 2)[0]
        print("  0x%08x  %-16s mov %s, [ebp%+#x]"
              % (o + BASE, b[o:o + 3].hex(),
                 REG[(b[o + 1] >> 3) & 7], d))
    o += 1

print()
print("=" * 74)
print("operator_new-Aufrufe in MRT_Terrain::LoadTerrain (Kachelgroesse?)")
print("=" * 74)
# push imm32 direkt vor einem call -- typisch fuer operator_new(n)
for m in re.finditer(rb"\x68(....)\xe8(....)", b[0x102f30:0x104000]):
    o = 0x102f30 + m.start()
    groesse = struct.unpack("<I", m.group(1))[0]
    rel = struct.unpack("<i", m.group(2))[0]
    ziel = o + 10 + rel + BASE
    if groesse < 0x100000:
        print("  0x%08x  push 0x%x ; call 0x%08x"
              % (o + BASE, groesse, ziel))
