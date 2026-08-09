# Wer benutzt die aus fog.fog gelesenen Kopffelder?
# LoadFromFile 0x004fa4d0 legt ab (Reihenfolge der read(4)-Aufrufe):
#   Datei  0..3  -> [this+0x18]   (64)
#   Datei  4..7  -> [this+0x14]   (64)
#   Datei  8..11 -> [this+0x08]   (0.0)
#   Datei 12..15 -> [this+0x04]   (Sicht/64)
#   Datei 16..19 -> [this+0x00]   (Tiefe/64)
# Gesucht: Funktionen, die [reg+4] als FLOAT anfassen UND in derselben
# Funktion [reg+0x14] oder [reg+0x18] als Zaehler nutzen.
# GELTUNGSBEREICH: capstone bricht am ersten unguelt. Byte ab (Falle 527.7),
# darum wird nach jedem Abbruch neu aufgesetzt und die Abdeckung gemeldet.
import sys, re, collections
sys.path.insert(0, r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\tools")
from exe_tool import Exe
from capstone import Cs, CS_ARCH_X86, CS_MODE_32

e = Exe()
md = Cs(CS_ARCH_X86, CS_MODE_32)
lo, hi = e.text_lo, e.text_hi
code = bytes(e.img[e.rva(lo):e.rva(hi)])

befehle = []      # (adr, mnem, opstr)
pos = 0
abbrueche = 0
while pos < len(code):
    n = 0
    for ins in md.disasm(code[pos:], lo + pos):
        befehle.append((ins.address, ins.mnemonic, ins.op_str))
        n += ins.size
    if n == 0:
        pos += 1
        abbrueche += 1
    else:
        pos += n
print(f"Abdeckung: {len(befehle)} Befehle, {abbrueche} Wiederaufsetzer, "
      f"{hi-lo} Byte .text")

# Funktionsgrenzen grob: eine Funktion beginnt nach ret/jmp + Auffuellung.
# Statt dessen: gleitendes Fenster von 400 Befehlen ist zu grob --
# darum Funktionsstarts aus funktionen.csv holen.
import csv, os
starts = []
p = r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\ghidra_ausgabe\funktionen.csv"
with open(p, encoding="utf-8", errors="replace") as f:
    for r in csv.DictReader(f, delimiter=";"):
        try:
            starts.append(int(r["adresse"], 16))
        except Exception:
            pass
starts.sort()
import bisect
def fkt(adr):
    i = bisect.bisect_right(starts, adr) - 1
    return starts[i] if i >= 0 else None

RE4  = re.compile(r"\[(e[a-z]{2}) \+ 4\]")
RE14 = re.compile(r"\[(e[a-z]{2}) \+ 0x14\]")
RE18 = re.compile(r"\[(e[a-z]{2}) \+ 0x18\]")

nach_fkt = collections.defaultdict(lambda: {"f4": [], "i14": [], "i18": []})
for adr, m, o in befehle:
    f = fkt(adr)
    if f is None:
        continue
    if m.startswith("f") and RE4.search(o):
        nach_fkt[f]["f4"].append((adr, m, o))
    if RE14.search(o):
        nach_fkt[f]["i14"].append((adr, m, o))
    if RE18.search(o):
        nach_fkt[f]["i18"].append((adr, m, o))

kand = [(f, v) for f, v in nach_fkt.items()
        if v["f4"] and (v["i14"] or v["i18"])]
kand.sort()
print(f"\n{len(kand)} Funktionen fassen [reg+4] als x87-Float UND [reg+0x14]/[reg+0x18] an:")
for f, v in kand:
    print(f"\n=== FUN_{f:08x} ===")
    for a, m, o in v["f4"][:6]:
        print(f"   {a:#010x}  {m} {o}")
    for a, m, o in (v["i14"] + v["i18"])[:6]:
        print(f"   {a:#010x}  {m} {o}")
