#!/usr/bin/env python3
"""Lua 4.0 Bytecode (AquaNox .sco) - Loader, Disassembler, byte-treuer Writer.

Header (16 B): "\\x1bLua\\x40" + bytes(1,4,4,4,0x20,6,9,8) + Testzahl
               3.14159265358979323846e8 als LE-double.
Instruktion (32 Bit): opcode = Bits [0..5]; U = [6..31]; A = [15..31] (POS_A=15);
               B = [6..14] (POS_B=6, 9 Bit); S = U - MAXARG_S.

WICHTIG (kostet sonst Stunden):
  * CLOSURE-Operand steht im A-Feld  ((i >> POS_A)), NICHT in argU.
  * CALL ist "A B": A = Stackslot der Funktion (= numparams des umgebenden
    Protos bei Statement-Calls), B = Anzahl Rueckgabewerte (255 = MULTRET).
  * Strings serialisieren als uint32 Laenge + Bytes INKLUSIVE NUL.
"""
import struct, sys

OPS = ["END", "RETURN", "CALL", "TAILCALL", "PUSHNIL", "POP", "PUSHINT", "PUSHSTRING",
       "PUSHNUM", "PUSHNEGNUM", "PUSHUPVALUE", "GETLOCAL", "GETGLOBAL", "GETTABLE",
       "GETDOTTED", "GETINDEXED", "PUSHSELF", "CREATETABLE", "SETLOCAL", "SETGLOBAL",
       "SETTABLE", "SETLIST", "SETMAP", "ADD", "ADDI", "SUB", "MULT", "DIV", "POW",
       "CONCAT", "MINUS", "NOT", "JMPNE", "JMPEQ", "JMPLT", "JMPLE", "JMPGT", "JMPGE",
       "JMPT", "JMPF", "JMPONT", "JMPONF", "JMP", "PUSHNILJMP", "FORPREP", "FORLOOP",
       "LFORPREP", "LFORLOOP", "CLOSURE"]
OPI = {n: i for i, n in enumerate(OPS)}

K_OPS = {"PUSHSTRING", "GETGLOBAL", "GETDOTTED", "PUSHSELF", "SETGLOBAL"}
S_OPS = {"PUSHINT", "ADDI", "JMPNE", "JMPEQ", "JMPLT", "JMPLE", "JMPGT", "JMPGE",
         "JMPT", "JMPF", "JMPONT", "JMPONF", "JMP", "FORPREP", "FORLOOP",
         "LFORPREP", "LFORLOOP"}
AB_OPS = {"CALL", "TAILCALL", "SETTABLE", "SETLIST", "CLOSURE"}
N_OPS = {"PUSHNUM", "PUSHNEGNUM"}
L_OPS = {"GETLOCAL", "GETINDEXED", "SETLOCAL"}
U_OPS = {"POP", "PUSHNIL", "PUSHUPVALUE", "CREATETABLE", "SETMAP", "CONCAT"}

SIZE_OP, SIZE_B, SIZE_INSTR = 6, 9, 32
POS_U = POS_B = SIZE_OP
POS_A = SIZE_OP + SIZE_B                      # 15
MAXARG_S = ((1 << (SIZE_INSTR - SIZE_OP)) - 1) >> 1

HEADER = b"\x1bLua\x40" + bytes([1, 4, 4, 4, 0x20, 6, 9, 8]) + \
         struct.pack("<d", 3.14159265358979323846e8)


def op(i):
    return OPS[i & 0x3F]


def argU(i):
    return i >> POS_U


def argA(i):
    return i >> POS_A


def argB(i):
    return (i >> POS_B) & ((1 << SIZE_B) - 1)


def argS(i):
    return (i >> POS_U) - MAXARG_S


# --------------------------------------------------------------- Bausteine ---
def i_op(name):                       return OPI[name]
def i_k(name, k):                     return OPI[name] | (k << POS_U)
def i_s(name, s):                     return OPI[name] | ((s + MAXARG_S) << POS_U)
def i_u(name, u):                     return OPI[name] | (u << POS_U)
def i_ab(name, a, b):                 return OPI[name] | (a << POS_A) | (b << POS_B)


class Proto:
    def __init__(self):
        self.source = self.line = None
        self.source_raw = None
        self.numparams = 0
        self.is_vararg = 0
        self.maxstack = 0
        self.kstr, self.knum, self.kproto, self.code = [], [], [], []
        self.kstr_raw, self.locals, self.lineinfo = [], [], b""

    # --- Konstanten-Pools erweitern (fuer eigenen/gegrafteten Code) ---
    def K(self, s):
        """String-Konstante -> Index (haengt an, falls neu)."""
        if s in self.kstr:
            return self.kstr.index(s)
        self.kstr.append(s)
        self.kstr_raw.append(s.encode("latin-1") + b"\x00")
        return len(self.kstr) - 1

    def N(self, x):
        x = float(x)
        if x in self.knum:
            return self.knum.index(x)
        self.knum.append(x)
        return len(self.knum) - 1


class Reader:
    def __init__(self, data):
        self.d, self.o = data, 0

    def bytes(self, n):
        b = self.d[self.o:self.o + n]; self.o += n; return b

    def byte(self):
        return self.bytes(1)[0]

    def i32(self):
        return struct.unpack("<i", self.bytes(4))[0]

    def num(self):
        return struct.unpack("<d", self.bytes(8))[0]

    def sraw(self):
        n, = struct.unpack("<I", self.bytes(4))
        return None if n == 0 else self.bytes(n)


def load_function(r):
    p = Proto()
    p.source_raw = r.sraw()
    p.source = None if p.source_raw is None else p.source_raw[:-1].decode("latin-1")
    p.line = r.i32()
    p.numparams = r.i32()
    p.is_vararg = r.byte()
    p.maxstack = r.i32()
    for _ in range(r.i32()):
        p.locals.append((r.sraw(), r.i32(), r.i32()))
    p.lineinfo = r.bytes(4 * r.i32())
    for _ in range(r.i32()):
        p.kstr_raw.append(r.sraw())
    p.kstr = [(k[:-1].decode("latin-1") if k else "") for k in p.kstr_raw]
    for _ in range(r.i32()):
        p.knum.append(r.num())
    for _ in range(r.i32()):
        p.kproto.append(load_function(r))
    n = r.i32()
    p.code = list(struct.unpack(f"<{n}I", r.bytes(4 * n)))
    return p


def _wstr(out, raw):
    if raw is None:
        out.extend(struct.pack("<I", 0))
    else:
        out.extend(struct.pack("<I", len(raw))); out.extend(raw)


def write_function(out, p):
    _wstr(out, p.source_raw)
    out.extend(struct.pack("<iiBi", p.line, p.numparams, p.is_vararg, p.maxstack))
    out.extend(struct.pack("<i", len(p.locals)))
    for name, s0, e0 in p.locals:
        _wstr(out, name); out.extend(struct.pack("<ii", s0, e0))
    assert len(p.lineinfo) % 4 == 0
    out.extend(struct.pack("<i", len(p.lineinfo) // 4)); out.extend(p.lineinfo)
    out.extend(struct.pack("<i", len(p.kstr_raw)))
    for kraw in p.kstr_raw:
        _wstr(out, kraw)
    out.extend(struct.pack("<i", len(p.knum)))
    for n in p.knum:
        out.extend(struct.pack("<d", n))
    out.extend(struct.pack("<i", len(p.kproto)))
    for c in p.kproto:
        write_function(out, c)
    out.extend(struct.pack("<i", len(p.code)))
    out.extend(struct.pack(f"<{len(p.code)}I", *p.code))


def save(top):
    out = bytearray(HEADER)
    write_function(out, top)
    return bytes(out)


def load(path):
    r = Reader(open(path, "rb").read())
    hdr = r.bytes(len(HEADER))
    assert hdr[:5] == b"\x1bLua\x40", "kein Lua-4.0-Chunk"
    return load_function(r)


def loads(data):
    r = Reader(data)
    r.bytes(len(HEADER))
    return load_function(r)


def disasm(p, name="main"):
    lines = [f"; {name} (source={p.source}, line={p.line}, params={p.numparams}, "
             f"stack={p.maxstack}, kstr={len(p.kstr)}, knum={len(p.knum)}, "
             f"kproto={len(p.kproto)})"]
    for pc, i in enumerate(p.code):
        o = OPS[i & 0x3F] if (i & 0x3F) < len(OPS) else f"OP{i & 0x3F}"
        u, a, b = argU(i), argA(i), argB(i)
        arg = ""
        if o in K_OPS:
            arg = f'{u} ; "{p.kstr[u]}"' if u < len(p.kstr) else str(u)
        elif o in N_OPS:
            arg = f"{u} ; {p.knum[u]:g}" if u < len(p.knum) else str(u)
        elif o in S_OPS:
            arg = str(argS(i))
        elif o == "CLOSURE":
            arg = f"proto {a} (upvals {b})"
        elif o in AB_OPS:
            arg = f"A={a} B={b}"
        elif o in L_OPS or o in U_OPS:
            arg = str(u)
        lines.append(f"  [{pc:5}] {o:12} {arg}")
    return "\n".join(lines)


def walk(p, path="main"):
    yield path, p
    for i, c in enumerate(p.kproto):
        yield from walk(c, f"{path}.f{i}")


def stack_check(p, name="?"):
    """Grobe Stack-Simulation: prueft, ob jedes CALL A auf einer plausiblen
    Tiefe steht. Meldet Verdachtsfaelle (der klassische CALL-Base-Bug)."""
    depth = p.numparams
    probs = []
    for pc, i in enumerate(p.code):
        o = op(i)
        if o in ("GETGLOBAL", "PUSHSTRING", "PUSHINT", "PUSHNUM", "PUSHNEGNUM",
                 "PUSHNIL", "GETLOCAL", "CREATETABLE", "PUSHUPVALUE"):
            depth += 1
        elif o in ("GETDOTTED", "GETTABLE", "GETINDEXED"):
            pass
        elif o == "PUSHSELF":
            depth += 1
        elif o == "SETGLOBAL" or o == "SETLOCAL":
            depth -= 1
        elif o == "SETTABLE":
            depth -= argB(i)
        elif o == "POP":
            depth -= argU(i)
        elif o == "CALL":
            a, b = argA(i), argB(i)
            if a != depth - (depth - a):  # nur Info
                pass
            nres = 0 if b == 255 else b
            if a > depth:
                probs.append((pc, a, depth))
            depth = a + nres
    return probs


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print(__doc__); sys.exit()
    top = load(sys.argv[1])
    mode = sys.argv[2] if len(sys.argv) > 2 else "main"
    if mode == "--list":
        for path, p in walk(top):
            print(f"{path}: line={p.line} params={p.numparams} code={len(p.code)} "
                  f"kstr={len(p.kstr)} kproto={len(p.kproto)}")
    elif mode == "--grep":
        needle = sys.argv[3]
        for path, p in walk(top):
            if any(needle in (s or "") for s in p.kstr):
                print(f"{path} (line {p.line}, {len(p.code)} instr) enthaelt '{needle}'")
    elif mode == "--strings":
        seen = set()
        for path, p in walk(top):
            for s in p.kstr:
                if s not in seen:
                    seen.add(s); print(s)
    else:
        for path, p in walk(top):
            if path == mode:
                print(disasm(p, path))
