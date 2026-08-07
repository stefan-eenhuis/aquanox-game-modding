#!/usr/bin/env python3
"""AquaNox 1 - Analyse-Werkzeugkasten fuer die GOG-Aqua.exe (DRM-frei).

Ersetzt das, was der Handoff (Abschnitt 67) bisher jede Session neu aufbauen
musste. Braucht: pip install pefile capstone

    from exe_tool import Exe
    e = Exe()                       # findet Aqua.exe automatisch
    e.find_str("MASSIVEFILE")       # -> [(va, text), ...]
    e.refs(0x60f97c)                # wer zeigt auf diese Adresse?
    e.callers(0x442090)             # wer ruft diese Funktion? (E8 rel32)
    print(e.dis(0x48ff30, 40))      # disassemblieren
    e.switch_at(0x4675f0)           # Sprungtabelle dekodieren

Merksatz aus Abschnitt 67: eine schnelle Heuristik, die "aufloest", ist NICHT
dasselbe wie eine richtige. Jede abgeleitete Tabelle gegen bekannte
Grundwahrheit pruefen und auf Code-Naehe testen.
"""
import os, re, struct, sys

import pefile
from capstone import Cs, CS_ARCH_X86, CS_MODE_32

DEFAULT_EXE = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox\Aqua.exe"


class Exe:
    def __init__(self, path=None):
        self.path = path or DEFAULT_EXE
        self.pe = pefile.PE(self.path, fast_load=True)
        self.base = self.pe.OPTIONAL_HEADER.ImageBase
        self.img = self.pe.get_memory_mapped_image()   # RVA-indiziert
        self.md = Cs(CS_ARCH_X86, CS_MODE_32)
        self.md.detail = False
        self.sections = {}
        for s in self.pe.sections:
            name = s.Name.rstrip(b"\x00").decode("latin-1")
            self.sections[name] = (self.base + s.VirtualAddress,
                                   self.base + s.VirtualAddress + max(s.Misc_VirtualSize,
                                                                      s.SizeOfRawData))
        self.text_lo, self.text_hi = self.sections.get(".text", (0, 0))
        self.rdata = self.sections.get(".rdata", (0, 0))
        self.data = self.sections.get(".data", (0, 0))

    # ------------------------------------------------------------ Basics ---
    def rva(self, va):
        return va - self.base

    def ok(self, va):
        return 0 <= self.rva(va) < len(self.img)

    def read(self, va, n):
        r = self.rva(va)
        return self.img[r:r + n]

    def u8(self, va):  return self.img[self.rva(va)]
    def u16(self, va): return struct.unpack_from("<H", self.img, self.rva(va))[0]
    def u32(self, va): return struct.unpack_from("<I", self.img, self.rva(va))[0]
    def i32(self, va): return struct.unpack_from("<i", self.img, self.rva(va))[0]
    def f32(self, va): return struct.unpack_from("<f", self.img, self.rva(va))[0]

    def is_text(self, va):
        return self.text_lo <= va < self.text_hi

    def is_data(self, va):
        return self.rdata[0] <= va < self.data[1]

    # ----------------------------------------------------------- Strings ---
    def cstr(self, va, maxlen=512):
        r = self.rva(va)
        end = self.img.find(b"\x00", r, r + maxlen)
        if end < 0:
            end = r + maxlen
        return self.img[r:end].decode("latin-1", "replace")

    def find_bytes(self, needle, start=0, limit=None):
        """Alle Vorkommen im gesamten gemappten Image -> Liste VAs."""
        if isinstance(needle, str):
            needle = needle.encode("latin-1")
        out, i = [], start
        while True:
            i = self.img.find(needle, i)
            if i < 0:
                break
            out.append(self.base + i)
            i += 1
            if limit and len(out) >= limit:
                break
        return out

    def find_str(self, sub, limit=None):
        """Substring suchen; gibt (start_va_des_strings, voller_string) zurueck."""
        out = []
        for va in self.find_bytes(sub, limit=None):
            r = self.rva(va)
            s = self.img.rfind(b"\x00", max(0, r - 400), r)
            start = self.base + (s + 1 if s >= 0 else r)
            out.append((start, self.cstr(start)))
            if limit and len(out) >= limit:
                break
        # Duplikate (mehrere Treffer im selben String) entfernen
        seen, uniq = set(), []
        for va, s in out:
            if va not in seen:
                seen.add(va); uniq.append((va, s))
        return uniq

    def strings(self, lo=None, hi=None, minlen=5):
        """Alle druckbaren C-Strings in einem Bereich -> [(va, text)]."""
        lo = lo if lo is not None else self.rdata[0]
        hi = hi if hi is not None else self.data[1]
        blob = self.img[self.rva(lo):self.rva(hi)]
        out = []
        for m in re.finditer(rb"[\x20-\x7e]{%d,}\x00" % minlen, blob):
            out.append((lo + m.start(), m.group()[:-1].decode("latin-1")))
        return out

    # -------------------------------------------------------------- Refs ---
    def refs(self, va, lo=None, hi=None):
        """4-Byte-Zeiger auf va (absolute Referenzen), standardmaessig in .text."""
        pat = struct.pack("<I", va)
        lo = lo if lo is not None else self.text_lo
        hi = hi if hi is not None else self.text_hi
        out, i = [], self.rva(lo)
        end = self.rva(hi)
        while True:
            i = self.img.find(pat, i, end)
            if i < 0:
                break
            out.append(self.base + i)
            i += 1
        return out

    def data_refs(self, va):
        return self.refs(va, self.rdata[0], self.data[1])

    def callers(self, target):
        """E8 rel32 Aufrufstellen: dst = site + 5 + rel32."""
        out = []
        lo, hi = self.rva(self.text_lo), self.rva(self.text_hi)
        i = lo
        img = self.img
        while i < hi - 5:
            i = img.find(b"\xe8", i, hi)
            if i < 0:
                break
            rel = struct.unpack_from("<i", img, i + 1)[0]
            if self.base + i + 5 + rel == target:
                out.append(self.base + i)
            i += 1
        return out

    def jmp_callers(self, target):
        """E9 rel32 (jmp) auf target."""
        out = []
        lo, hi = self.rva(self.text_lo), self.rva(self.text_hi)
        i = lo
        while i < hi - 5:
            i = self.img.find(b"\xe9", i, hi)
            if i < 0:
                break
            rel = struct.unpack_from("<i", self.img, i + 1)[0]
            if self.base + i + 5 + rel == target:
                out.append(self.base + i)
            i += 1
        return out

    # -------------------------------------------------------- Disassembly ---
    def dis(self, va, count=30, annotate=True):
        code = self.read(va, count * 8 + 32)
        lines = []
        for k, ins in enumerate(self.md.disasm(code, va)):
            if k >= count:
                break
            txt = f"0x{ins.address:08x}  {ins.mnemonic:<7} {ins.op_str}"
            if annotate:
                note = self._annotate(ins)
                if note:
                    txt += f"   ; {note}"
            lines.append(txt)
        return "\n".join(lines)

    def dis_until_ret(self, va, maxins=400, annotate=True):
        code = self.read(va, maxins * 8 + 64)
        lines = []
        for ins in self.md.disasm(code, va):
            txt = f"0x{ins.address:08x}  {ins.mnemonic:<7} {ins.op_str}"
            if annotate:
                note = self._annotate(ins)
                if note:
                    txt += f"   ; {note}"
            lines.append(txt)
            if ins.mnemonic in ("ret", "jmp") and len(lines) > 3:
                break
            if len(lines) >= maxins:
                break
        return "\n".join(lines)

    def _annotate(self, ins):
        notes = []
        for m in re.finditer(r"0x([0-9a-f]{6,8})", ins.op_str):
            va = int(m.group(1), 16)
            if not self.ok(va):
                continue
            if self.is_data(va):
                s = self.cstr(va, 120)
                if len(s) >= 3 and all(32 <= ord(c) < 127 for c in s):
                    notes.append(f'"{s}"')
                    continue
                # evtl. Zeiger auf String?
                try:
                    p = self.u32(va)
                    if self.is_data(p):
                        s2 = self.cstr(p, 120)
                        if len(s2) >= 4 and all(32 <= ord(c) < 127 for c in s2):
                            notes.append(f'-> "{s2}"')
                except Exception:
                    pass
        if ins.mnemonic == "call" and ins.op_str.startswith("0x"):
            pass
        return " ".join(notes[:2])

    def disasm_all(self, lo=None, hi=None):
        """Lineare Volldisassemblierung von .text, die an ungueltigen Bytes
        NICHT abbricht, sondern ein Byte weiterspringt und neu ansetzt.

        Wichtig: capstone.disasm() haelt beim ersten ungueltigen Opcode an.
        In .text stehen aber Sprungtabellen und Padding -> ohne Neuansatz
        bekommt man nur einen Bruchteil (hier: 43k statt ~500k Instruktionen)
        und zieht daraus falsche Nullbefunde.
        """
        lo = lo if lo is not None else self.text_lo
        hi = hi if hi is not None else self.text_hi
        blob = self.img[self.rva(lo):self.rva(hi)]
        out = []
        pos = 0
        n = len(blob)
        while pos < n:
            got = 0
            for ins in self.md.disasm(blob[pos:], lo + pos):
                out.append(ins)
                got = ins.address + ins.size - (lo + pos)
            pos += got if got else 1
        return out

    def dis_back(self, va, maxback=128):
        """Instruktionen VOR va, korrekt ausgerichtet.

        x86 ist nicht rueckwaerts dekodierbar: startet man einfach va-N, laeuft
        man mitten in eine Instruktion und bekommt Phantasie-Code (genau die
        Falle aus Handoff Abschnitt 67). Deshalb: alle Startversaetze probieren
        und nur den akzeptieren, dessen Dekodierkette EXAKT auf va endet.
        Rueckgabe: laengste gueltige Kette (Liste von Instruktionen).
        """
        best = []
        for off in range(4, maxback):
            start = va - off
            chain = []
            hit = False
            for ins in self.md.disasm(self.read(start, off), start):
                if ins.address >= va:
                    break
                if ins.address + ins.size == va:
                    hit = True
                chain.append(ins)
            if hit and len(chain) > len(best):
                best = chain
        return best

    def func_bounds(self, va, maxlen=0x4000):
        """Grobes Funktionsende: erstes ret, dem Padding (cc/90) oder ein
        Standardprolog folgt."""
        end = va
        for ins in self.md.disasm(self.read(va, maxlen), va):
            end = ins.address + ins.size
            if ins.mnemonic == "ret":
                nxt = self.read(end, 4)
                if nxt[:1] in (b"\xcc", b"\x90") or nxt[:3] == b"\x55\x8b\xec" \
                        or nxt[:1] == b"\x55" or nxt[:2] == b"\x8b\xff":
                    return va, end
        return va, end

    # ------------------------------------------------------------ Switch ---
    def switch_at(self, func_va, window=0x400):
        """Sucht in einer Funktion nach `jmp [reg*4 + imm32]` und dekodiert die
        Sprungtabelle (inkl. zweistufiger MSVC-Variante mit Byte-Indextabelle).
        Rueckgabe: Liste von dicts."""
        out = []
        code = self.read(func_va, window)
        prev = []
        for ins in self.md.disasm(code, func_va):
            prev.append(ins)
            if ins.mnemonic == "jmp" and "*4" in ins.op_str and "[" in ins.op_str:
                m = re.search(r"\+ (0x[0-9a-f]+)\]", ins.op_str)
                if not m:
                    continue
                tbl = int(m.group(1), 16)
                info = {"jmp": ins.address, "table": tbl, "base": None,
                        "count": None, "idxtable": None, "targets": []}
                for p in prev[-25:]:
                    if p.mnemonic == "add" and p.op_str.count(",") == 1:
                        try:
                            v = int(p.op_str.split(",")[1].strip(), 16)
                            if v > 0x7fffffff:
                                v -= 0x100000000
                            if -60000 < v < 0:
                                info["base"] = -v
                        except ValueError:
                            pass
                    if p.mnemonic == "sub":
                        try:
                            v = int(p.op_str.split(",")[1].strip(), 16)
                            if 0 < v < 60000:
                                info["base"] = v
                        except ValueError:
                            pass
                    if p.mnemonic == "cmp":
                        try:
                            info["count"] = int(p.op_str.split(",")[1].strip(), 16) + 1
                        except ValueError:
                            pass
                    if p.mnemonic == "movzx" and "*1" not in p.op_str:
                        m2 = re.search(r"\+ (0x[0-9a-f]+)\]", p.op_str)
                        if m2:
                            info["idxtable"] = int(m2.group(1), 16)
                n = info["count"] or 64
                if info["idxtable"]:
                    seen = []
                    for i in range(n):
                        idx = self.u8(info["idxtable"] + i)
                        t = self.u32(tbl + idx * 4)
                        seen.append(t if self.is_text(t) else None)
                    info["targets"] = seen
                else:
                    for i in range(n):
                        t = self.u32(tbl + i * 4)
                        if not self.is_text(t):
                            break
                        info["targets"].append(t)
                out.append(info)
        return out


def _cli():
    e = Exe(sys.argv[2] if len(sys.argv) > 2 and sys.argv[1] == "-f" else None)
    args = sys.argv[3:] if (len(sys.argv) > 2 and sys.argv[1] == "-f") else sys.argv[1:]
    if not args:
        print(__doc__)
        print(f"geladen: {e.path}")
        print(f"  ImageBase 0x{e.base:x}")
        for n, (lo, hi) in e.sections.items():
            print(f"  {n:<8} 0x{lo:08x}..0x{hi:08x}  ({hi-lo} B)")
        return
    cmd = args[0]
    if cmd == "str":
        for va, s in e.find_str(args[1], limit=40):
            print(f"0x{va:08x}  {s[:150]}")
    elif cmd == "dis":
        print(e.dis(int(args[1], 16), int(args[2]) if len(args) > 2 else 40))
    elif cmd == "fn":
        print(e.dis_until_ret(int(args[1], 16)))
    elif cmd == "refs":
        for va in e.refs(int(args[1], 16)):
            print(f"0x{va:08x}")
    elif cmd == "callers":
        for va in e.callers(int(args[1], 16)):
            print(f"0x{va:08x}")
    elif cmd == "switch":
        for s in e.switch_at(int(args[1], 16)):
            print(s)


if __name__ == "__main__":
    _cli()
