import sys, re, struct, collections, bisect, csv
sys.path.insert(0, r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\tools")
from exe_tool import Exe
from capstone import Cs, CS_ARCH_X86, CS_MODE_32
e = Exe()

print("=== Klemmkonstanten Camera_Set*Plane ===")
for va in (0x5f3388, 0x5f4320, 0x5f4324):
    print(f"  [{va:#x}] = {e.f32(va):.6g}   (u32 {e.u32(va):#x})")
print(f"  Untergrenze-Ersatz BackPlane  0x41200000 = {struct.unpack('<f', struct.pack('<I',0x41200000))[0]}")
print(f"  Obergrenze-Ersatz beide       0x47c35000 = {struct.unpack('<f', struct.pack('<I',0x47c35000))[0]}")
print(f"  Untergrenze-Ersatz FrontPlane 0x3a83126f = {struct.unpack('<f', struct.pack('<I',0x3a83126f))[0]}")

print("\n=== Wer fasst Renderer+0x18354 / +0x18358 an? ===")
md = Cs(CS_ARCH_X86, CS_MODE_32)
lo, hi = e.text_lo, e.text_hi
code = bytes(e.img[e.rva(lo):e.rva(hi)])
starts = []
with open(r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\ghidra_ausgabe\funktionen.csv",
          encoding="utf-8", errors="replace") as f:
    for r in csv.DictReader(f, delimiter=";"):
        try: starts.append(int(r["adresse"], 16))
        except Exception: pass
starts.sort()
def fkt(a):
    i = bisect.bisect_right(starts, a) - 1
    return starts[i] if i >= 0 else None

ziel = re.compile(r"\+ 0x1835[048c]\]")
pos = 0; treffer = []
while pos < len(code):
    n = 0
    for ins in md.disasm(code[pos:], lo + pos):
        if ziel.search(ins.op_str):
            treffer.append((ins.address, ins.mnemonic, ins.op_str))
        n += ins.size
    if n == 0: pos += 1
    else: pos += n
for a, m, o in treffer:
    print(f"  {a:#010x}  (in FUN_{fkt(a):08x})  {m} {o}")
