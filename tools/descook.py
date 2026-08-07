#!/usr/bin/env python3
"""AquaNox 1 "gekochte" ~.des / ~.osd - Parser + byte-treuer Serializer.

Baum-Layout in der Datei = Pre-Order: Header, dann seine Entry-Kette,
dann Kind-Header (rekursiv). Unbekannte Bytes werden verbatim erhalten.

  Header: uint16 key_len | 6 B unbekannt | int32 first_child | int32 next_sibling
          | int32 first_entry | key bytes (inkl. NUL)
  Entry : 4 B (vtype, key_len, val_len, pad) | int32 next_entry | key | value
          (Werte sind ROHBYTES: Strings mit NUL, ints als LE-int32!)

Neue Knoten: orig_off = None setzen -> werden ans Dateiende angehaengt,
alle Offsetketten werden neu verdrahtet.
"""
import struct, sys, os, glob


class Entry:
    __slots__ = ("vtype", "pad", "key", "value", "orig_off")

    def __init__(self, vtype, pad, key, value, orig_off=None):
        self.vtype, self.pad, self.key, self.value = vtype, pad, key, value
        self.orig_off = orig_off

    def name(self):
        return self.key.decode("latin-1").rstrip("\x00")

    # --- typisierte Sichten auf den Rohwert ---
    def as_str(self):
        return self.value.split(b"\x00")[0].decode("latin-1")

    def as_int(self):
        return struct.unpack("<i", self.value[:4])[0]

    def as_float(self):
        return struct.unpack("<f", self.value[:4])[0]

    def set_str(self, s):
        self.value = s.encode("latin-1") + b"\x00"

    def set_int(self, v):
        self.value = struct.pack("<i", int(v))

    def set_float(self, v):
        self.value = struct.pack("<f", float(v))

    def __repr__(self):
        return f"<Entry {self.name()} vtype={self.vtype} val={self.value[:24]!r}>"


class Header:
    __slots__ = ("unk", "key", "entries", "children", "orig_off")

    def __init__(self, unk, key, orig_off=None):
        self.unk, self.key = unk, key
        self.entries, self.children = [], []
        self.orig_off = orig_off

    def name(self):
        return self.key.decode("latin-1").rstrip("\x00")

    def __repr__(self):
        return f"<Header {self.name()} entries={len(self.entries)} kids={len(self.children)}>"


def parse(data):
    def parse_entry(off):
        vt, sk, sv, pad = struct.unpack_from("<4B", data, off)
        (nxt,) = struct.unpack_from("<i", data, off + 4)
        key = data[off + 8: off + 8 + sk]
        val = data[off + 8 + sk: off + 8 + sk + sv]
        return Entry(vt, pad, key, val, off), nxt

    def parse_header(off):
        (key_len,) = struct.unpack_from("<H", data, off)
        unk = data[off + 2: off + 8]
        vh, eh, ve = struct.unpack_from("<3i", data, off + 8)
        h = Header(unk, data[off + 20: off + 20 + key_len], off)
        o = ve
        while o != -1:
            e, o = parse_entry(o)
            h.entries.append(e)
        o = vh
        while o != -1:
            c, o = parse_header(o)
            h.children.append(c)
        return h, eh

    roots = []
    o = 0
    while o != -1 and o < len(data):
        h, o = parse_header(o)
        roots.append(h)
    return roots


def serialize(roots):
    order = []

    def walk(h):
        order.append(("H", h))
        for e in h.entries:
            order.append(("E", e))
        for c in h.children:
            walk(c)

    for r in roots:
        walk(r)
    # originale physische Reihenfolge behalten, neue Knoten ans Ende
    order.sort(key=lambda kn: (kn[1].orig_off is None,
                               kn[1].orig_off if kn[1].orig_off is not None else 0))
    off_of, pos = {}, 0
    for kind, n in order:
        off_of[id(n)] = pos
        pos += (20 + len(n.key)) if kind == "H" else (8 + len(n.key) + len(n.value))

    next_of = {}

    def link(h, nxt):
        next_of[id(h)] = nxt
        for i, e in enumerate(h.entries):
            next_of[id(e)] = off_of[id(h.entries[i + 1])] if i + 1 < len(h.entries) else -1
        for i, c in enumerate(h.children):
            link(c, off_of[id(h.children[i + 1])] if i + 1 < len(h.children) else -1)

    for i, r in enumerate(roots):
        link(r, off_of[id(roots[i + 1])] if i + 1 < len(roots) else -1)

    out = bytearray()
    for kind, n in order:
        assert len(out) == off_of[id(n)]
        if kind == "H":
            vh = off_of[id(n.children[0])] if n.children else -1
            ve = off_of[id(n.entries[0])] if n.entries else -1
            out.extend(struct.pack("<H", len(n.key)))
            out.extend(n.unk)
            out.extend(struct.pack("<3i", vh, next_of[id(n)], ve))
            out.extend(n.key)
        else:
            out.extend(struct.pack("<4B", n.vtype, len(n.key), len(n.value), n.pad))
            out.extend(struct.pack("<i", next_of[id(n)]))
            out.extend(n.key)
            out.extend(n.value)
    return bytes(out)


# ---------------------------------------------------------------- Komfort ---
def find(h, key):
    """Kind-Header ODER Entry mit diesem Namen (case-insensitiv)."""
    k = key.lower()
    for c in h.children:
        if c.name().lower() == k:
            return c
    for e in h.entries:
        if e.name().lower() == k:
            return e
    return None


def find_path(root, *keys):
    n = root
    for k in keys:
        n = find(n, k)
        if n is None:
            return None
    return n


def clear_offsets(n):
    """Knoten (rekursiv) als NEU markieren -> wird beim Serialisieren angehaengt."""
    n.orig_off = None
    if isinstance(n, Header):
        for e in n.entries:
            e.orig_off = None
        for c in n.children:
            clear_offsets(c)


def new_header(name, unk=b"\x00" * 6):
    return Header(unk, name.encode("latin-1") + b"\x00", None)


def new_entry(name, value, vtype=0, pad=0):
    if isinstance(value, str):
        value = value.encode("latin-1") + b"\x00"
    elif isinstance(value, int):
        value = struct.pack("<i", value)
    elif isinstance(value, float):
        value = struct.pack("<f", value)
    return Entry(vtype, pad, name.encode("latin-1") + b"\x00", value, None)


def dump(h, indent=0, maxval=48):
    pad = "  " * indent
    print(f"{pad}[{h.name()}]")
    for e in h.entries:
        v = e.value
        # vtype 2 = String (endet auf NUL), vtype 0 = 4-Byte-Zahl
        if e.vtype == 2 or (v.endswith(b"\x00") and len(v) > 4
                            and all(32 <= c < 127 or c == 0 for c in v)):
            txt = f'"{e.as_str()}"'
        elif len(v) == 4:
            i = struct.unpack("<i", v)[0]
            fl = struct.unpack("<f", v)[0]
            txt = f"int={i}" + (f" float={fl:g}" if 1e-6 < abs(fl) < 1e9 else "")
        else:
            txt = v[:maxval].hex(" ")
        print(f"{pad}  {e.name()} (vt{e.vtype}) = {txt}")
    for c in h.children:
        dump(c, indent + 1, maxval)


def load(path):
    return parse(open(path, "rb").read())


def save(path, roots):
    open(path, "wb").write(serialize(roots))


if __name__ == "__main__":
    if len(sys.argv) > 2 and sys.argv[1] == "dump":
        for r in load(sys.argv[2]):
            dump(r)
    else:
        ok = bad = 0
        bad_files = []
        files = []
        for p in sys.argv[1:]:
            files.extend(glob.glob(p, recursive=True))
        for p in files:
            data = open(p, "rb").read()
            try:
                if serialize(parse(data)) == data:
                    ok += 1
                else:
                    bad += 1; bad_files.append((p, "DIFF"))
            except Exception as ex:
                bad += 1; bad_files.append((p, f"ERR {ex}"))
        print(f"Roundtrip: {ok} byte-identisch, {bad} abweichend")
        for p, why in bad_files[:10]:
            print(f"  {why}: {p}")
