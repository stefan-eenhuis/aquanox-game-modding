#!/usr/bin/env python3
"""Mini-x86-Interpreter fuer die Metadaten-Stubs der Message-Prototypen.

Die Stubs vt[4] GetArgCount / vt[5] GetReturnCount / vt[6] GetParamType(i) /
vt[7] GetReturnType(i) sind winzige Funktionen in genau zwei Formen:

  (a) branchlos:   mov eax,[esp+4] ; neg eax ; sbb eax,eax ; and eax,K ; add eax,C ; ret 4
                   -> f(0) = C , f(i!=0) = K+C
  (b) Vergleichskette: sub eax,0 ; je L0 ; dec eax ; je L1 ; ... ; xor eax,eax ; ret 4
                   mit  Lk: mov eax,<typcode> ; ret 4
  (c) Sprungtabelle: cmp eax,N ; ja default ; jmp [eax*4 + <tbl>]
                   (ab ~4 Argumenten laesst MSVC die Kette fallen; kostet sonst
                    264 unaufgeloeste Parametertypen)

Statt Unicorn genuegt ein Interpreter fuer die ~12 vorkommenden Befehle. Er
liefert exakte Werte oder None (dann kam ein unbekannter Befehl vor - lieber
ehrlich nichts sagen als raten, siehe Handoff Abschnitt 67).
"""
import re

M32 = 0xFFFFFFFF


def _sx(v):
    return v - 0x100000000 if v > 0x7FFFFFFF else v


def eval_stub(exe, va, arg=0, maxsteps=120, maxbytes=256):
    """Wertet einen Metadaten-Stub fuer ein Argument aus. -> int oder None."""
    ins_at = {}
    for ins in exe.md.disasm(exe.read(va, maxbytes), va):
        ins_at[ins.address] = ins
    eax = 0
    ecx = 0
    zf = None
    cf = None
    pc = va
    for _ in range(maxsteps):
        ins = ins_at.get(pc)
        if ins is None:
            return None
        m, o = ins.mnemonic, ins.op_str
        nxt = ins.address + ins.size

        if m == "mov" and o.startswith("eax, dword ptr [esp"):
            eax = arg & M32
        elif m == "mov" and o.startswith("ecx, dword ptr [esp"):
            ecx = arg & M32
        elif m == "mov" and re.fullmatch(r"eax, (0x[0-9a-f]+|\d+)", o):
            eax = int(o.split(", ")[1], 0) & M32
        elif m == "test" and o == "ecx, ecx":
            zf = (ecx == 0)
        # sete/setne al: die 19 Bool-Flag-Kommandos (Light_Switch,
        # Vessel_CollisionTerrain, ...) melden so "arg0 = int8, sonst none"
        elif m in ("sete", "setz") and o == "al":
            if zf is None:
                return None
            eax = (eax & ~0xFF) | (1 if zf else 0)
        elif m in ("setne", "setnz") and o == "al":
            if zf is None:
                return None
            eax = (eax & ~0xFF) | (0 if zf else 1)
        elif m == "xor" and o == "eax, eax":
            eax, zf = 0, True
        elif m == "neg" and o == "eax":
            cf = (eax != 0)
            eax = (-_sx(eax)) & M32
            zf = (eax == 0)
        elif m == "sbb" and o == "eax, eax":
            eax = (0 - (1 if cf else 0)) & M32
            zf = (eax == 0)
        elif m == "dec" and o == "eax":
            eax = (eax - 1) & M32
            zf = (eax == 0)
        elif m == "inc" and o == "eax":
            eax = (eax + 1) & M32
            zf = (eax == 0)
        elif m in ("sub", "add", "and", "or") and o.startswith("eax, "):
            try:
                imm = int(o.split(", ")[1], 0) & M32
            except ValueError:
                return None
            if m == "sub":
                cf = eax < imm
                eax = (eax - imm) & M32
            elif m == "add":
                eax = (eax + imm) & M32
            elif m == "and":
                eax &= imm
            else:
                eax |= imm
            zf = (eax == 0)
        elif m == "cmp" and o.startswith("eax, "):
            try:
                imm = int(o.split(", ")[1], 0) & M32
            except ValueError:
                return None
            zf = (eax == imm)
            cf = eax < imm
        elif m == "test" and o == "eax, eax":
            zf = (eax == 0)
        elif m == "nop":
            pass
        elif m == "jmp":
            if o.startswith("0x"):
                pc = int(o, 16)
                continue
            # Sprungtabelle:  jmp dword ptr [eax*4 + 0x481ef0]
            mt = re.fullmatch(r"dword ptr \[eax\*4 \+ (0x[0-9a-f]+)\]", o)
            if not mt:
                return None
            tbl = int(mt.group(1), 16)
            tgt = exe.u32(tbl + eax * 4)
            if not exe.is_text(tgt):
                return None
            for ins2 in exe.md.disasm(exe.read(tgt, 64), tgt):
                ins_at.setdefault(ins2.address, ins2)
            pc = tgt
            continue
        elif m in ("je", "jz"):
            if zf is None:
                return None
            if zf:
                pc = int(o, 16)
                continue
        elif m in ("jne", "jnz"):
            if zf is None:
                return None
            if not zf:
                pc = int(o, 16)
                continue
        elif m in ("ja", "jnbe"):
            if zf is None or cf is None:
                return None
            if not cf and not zf:
                pc = int(o, 16)
                continue
        elif m in ("jbe", "jna"):
            if zf is None or cf is None:
                return None
            if cf or zf:
                pc = int(o, 16)
                continue
        elif m in ("jb", "jc"):
            if cf is None:
                return None
            if cf:
                pc = int(o, 16)
                continue
        elif m in ("jae", "jnc"):
            if cf is None:
                return None
            if not cf:
                pc = int(o, 16)
                continue
        elif m == "ret":
            return _sx(eax)
        else:
            return None                     # unbekannt -> ehrlich aufgeben
        pc = nxt
    return None


# Typcodes aus Handoff Abschnitt 31 (C-Speicherbreiten, KEINE semantischen Labels)
TYPE_NAMES = {
    0x0: "none", 0x1: "int8", 0x2: "int16", 0x3: "uint16", 0x4: "int16b",
    0x5: "int32", 0x6: "uint32", 0x7: "float", 0x8: "floatb",
    0x9: "MAT_Vector3", 0xa: "string", 0xb: "string", 0xc: "string",
    0xd: "node",
}


def type_name(code):
    if code is None:
        return "?"
    return TYPE_NAMES.get(code, f"0x{code:x}")


def signature(exe, vtable, max_args=16):
    """-> dict(argc, retc, params[], returns[])  aus vt[4..7]."""
    argc = eval_stub(exe, exe.u32(vtable + 4 * 4))
    retc = eval_stub(exe, exe.u32(vtable + 5 * 4))
    pt_fn = exe.u32(vtable + 6 * 4)
    rt_fn = exe.u32(vtable + 7 * 4)
    params, returns = [], []
    if argc is not None and 0 <= argc <= max_args:
        params = [eval_stub(exe, pt_fn, i) for i in range(argc)]
    if retc is not None and 0 <= retc <= max_args:
        returns = [eval_stub(exe, rt_fn, i) for i in range(retc)]
    return {"argc": argc, "retc": retc, "params": params, "returns": returns}


def pretty(name, sig):
    ps = ", ".join(type_name(p) for p in sig["params"])
    rs = ", ".join(type_name(r) for r in sig["returns"])
    return f"{name}({ps})" + (f" -> {rs}" if rs else "")
