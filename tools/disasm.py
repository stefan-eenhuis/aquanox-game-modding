#!/usr/bin/env python3
"""disasm.py -- Aqua.exe richtig disassemblieren (mit Capstone).

WARUM ES DAS BRAUCHT
    Die bisherige Funktionssuche im Handoff sammelte jedes \\xe8 als
    'call'. Das unterscheidet CODE NICHT VON DATEN. In Abschnitt 236
    steht der Fall, an dem es aufflog:

        c7 05 e8 d0 66 00 ...   mov [0x66d0e8], ...
                ^^
    Das \\xe8 gehoert zur ADRESSE, nicht zu einem Opcode. Die Suche
    hat daraus einen Aufruf erfunden, den es nicht gibt.

    Dieses Werkzeug folgt stattdessen dem KONTROLLFLUSS: es beginnt
    an einem bekannten Einstiegspunkt und disassembliert nur, was
    tatsaechlich erreichbar ist. Was nie angesprungen wird, ist auch
    kein Code.

AUFRUF
    disasm.py fkt   <adresse>          eine Funktion ausgeben
    disasm.py ruft  <adresse>          wer ruft diese Adresse auf?
    disasm.py folge <adresse> [tiefe]  Aufrufbaum ab hier
    disasm.py suche <adresse>          in welcher Funktion liegt das?

    Adressen als 0x41dc90 oder 41dc90.
"""
import os, re, sys, struct, collections

try:
    from capstone import Cs, CS_ARCH_X86, CS_MODE_32
    from capstone.x86 import X86_OP_IMM, X86_OP_MEM
except ImportError:
    print("capstone fehlt:  pip install capstone")
    sys.exit(1)

HIER = os.path.dirname(os.path.abspath(__file__))
SPIEL = os.path.abspath(os.path.join(HIER, "..", ".."))
EXE = os.path.join(SPIEL, "Aqua.exe")
BASE = 0x400000

_d = None
def daten():
    global _d
    if _d is None:
        _d = open(EXE, "rb").read()
    return _d

def v2o(va): return va - BASE
def o2v(o):  return o + BASE

_md = None
def md():
    global _md
    if _md is None:
        _md = Cs(CS_ARCH_X86, CS_MODE_32)
        _md.detail = True
    return _md


def ist_ende(ins):
    """Beendet diese Anweisung den geradlinigen Fluss?"""
    return ins.mnemonic in ("ret", "retf", "jmp", "int3") or \
           ins.mnemonic.startswith("iret")


def funktion(start, max_bytes=0x4000):
    """Eine Funktion ab start disassemblieren.

    Folgt bedingten Spruengen INNERHALB der Funktion, damit auch
    Zweige hinter einem 'ret' erfasst werden. Endet, wenn keine
    offene Stelle mehr da ist.
    """
    d = daten()
    offen = [start]
    gesehen = set()
    anweisungen = {}
    grenze = start + max_bytes
    while offen:
        adr = offen.pop()
        while adr not in gesehen and start <= adr < grenze:
            o = v2o(adr)
            if o < 0 or o + 16 > len(d):
                break
            paar = list(md().disasm(d[o:o + 16], adr, count=1))
            if not paar:
                break
            ins = paar[0]
            gesehen.add(adr)
            anweisungen[adr] = ins
            # bedingte Spruenge: das Ziel merken, dann weiterlaufen
            if ins.mnemonic.startswith("j") and ins.mnemonic != "jmp":
                for op in ins.operands:
                    if op.type == X86_OP_IMM:
                        z = op.imm
                        if start <= z < grenze and z not in gesehen:
                            offen.append(z)
            if ins.mnemonic == "jmp":
                for op in ins.operands:
                    if op.type == X86_OP_IMM and start <= op.imm < grenze:
                        offen.append(op.imm)
                break
            if ist_ende(ins):
                break
            adr += ins.size
    return [anweisungen[a] for a in sorted(anweisungen)]


def calls_in(start):
    """Alle call-Ziele einer Funktion -- echte, disassemblierte."""
    aus = []
    for ins in funktion(start):
        if ins.mnemonic == "call":
            for op in ins.operands:
                if op.type == X86_OP_IMM:
                    aus.append((ins.address, op.imm))
                elif op.type == X86_OP_MEM and op.mem.base == 0 \
                        and op.mem.index == 0:
                    aus.append((ins.address, ("indirekt", op.mem.disp)))
    return aus


def wer_ruft(ziel, von=0x401000, bis=0x5f0000):
    """Wer ruft diese Adresse auf?

    Sucht das call-Byte, PRUEFT es aber durch Disassemblieren --
    so fallen Datenbytes heraus, die zufaellig wie ein call aussehen.
    """
    d = daten()
    aus = []
    muster = re.compile(rb"\xe8(....)", re.S)
    for m in muster.finditer(d, v2o(von), v2o(bis)):
        va = o2v(m.start())
        rel = struct.unpack("<i", m.group(1))[0]
        if va + 5 + rel != ziel:
            continue
        # Gegenprobe: sitzt hier wirklich eine Anweisungsgrenze?
        # Wir disassemblieren 24 Byte davor und schauen, ob eine
        # Anweisung GENAU auf unserem call endet.
        o = v2o(va)
        echt = False
        for zurueck in range(1, 24):
            p = va - zurueck
            fluss = list(md().disasm(d[v2o(p):v2o(p) + 32], p))
            for i, ins in enumerate(fluss):
                if ins.address == va and ins.mnemonic == "call":
                    echt = True
                    break
                if ins.address > va:
                    break
            if echt:
                break
        aus.append((va, echt))
    return aus


def _adr(s):
    return int(s, 16) if not s.startswith("0x") else int(s, 16)


def _cli():
    if len(sys.argv) < 3:
        print(__doc__); sys.exit(1)
    was, arg = sys.argv[1], _adr(sys.argv[2])
    if was == "fkt":
        ins = funktion(arg)
        print(f"# Funktion 0x{arg:x} -- {len(ins)} Anweisungen")
        for i in ins:
            b = " ".join(f"{x:02x}" for x in i.bytes)
            print(f"  0x{i.address:08x}  {b:<26} {i.mnemonic:<7} {i.op_str}")
    elif was == "ruft":
        tr = wer_ruft(arg)
        echt = [a for a, e in tr if e]
        falsch = [a for a, e in tr if not e]
        print(f"# Aufrufer von 0x{arg:x}")
        print(f"  bestaetigt: {len(echt)}")
        for a in echt:
            print(f"    0x{a:x}")
        if falsch:
            print(f"  VERWORFEN (Datenbytes, kein echter call): "
                  f"{len(falsch)}")
            for a in falsch:
                print(f"    0x{a:x}")
    elif was == "folge":
        tiefe = int(sys.argv[3]) if len(sys.argv) > 3 else 1
        def geh(a, t, pfad):
            if t > tiefe or a in pfad:
                return
            print("  " * t + f"0x{a:x}")
            for _, z in calls_in(a):
                if isinstance(z, int):
                    geh(z, t + 1, pfad | {a})
        geh(arg, 0, set())
    else:
        print(__doc__)


if __name__ == "__main__":
    _cli()
