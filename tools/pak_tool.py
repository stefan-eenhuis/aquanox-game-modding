#!/usr/bin/env python3
"""AquaNox 1 PAK ("MASSIVEFILE") - Lesen + Schreiben.

Format (Abschnitt 2.1 im Handoff):
  Header : "MASSIVEFILE\\0" (12 B) | uint32 version(=3) | uint32 file_count
           | 60 B Copyright | "LPT\\0"
  Directory: file_count Eintraege a 0x84 Byte (128 B Name verschluesselt + 4 B Groesse)
  Daten  : alle Dateiinhalte direkt hintereinander

  Name-Entschluesselung (j = Eintragsindex): dec[i] = enc[i] - KEY[(j+i) % 64]
  Groesse                                  : size = abs(LE_u32(KEY[j%60..+3]) - size_enc)
  Verschluesseln ist die exakte Umkehrung.

Verifiziert: Repack aus entpackten Dateien ist BYTE-IDENTISCH.
"""
import os, struct, sys, glob

KEY = bytes.fromhex(
    "683c61374c6cc44f6f727848334a2b78"
    "dcdf61624b6e296a736c6e446f4a4466"
    "684433376655674f6fd67848335832783541613551376e2af66c2bfc6f4a2340"
)
assert len(KEY) == 64

MAGIC = b"MASSIVEFILE\x00"
COPYRIGHT = b"Copyright by Massive Development GmbH. All rights reserved."
FOURCC = b"LPT\x00"


def read_directory(f):
    """-> (version, copyright_str, [(name, offset, size), ...])

    Erkennt AN1 und AN2 automatisch. Der Kopf ist bei beiden 12 B Magic + 4 B,
    aber AN2 teilt diese 4 B in version(uint16)=3 + subversion(uint16)=2, waehrend
    AN1 dort eine glatte uint32=3 stehen hat. Unterschiede in AN2 (Handoff 11b):
        Namenschiffre : dec[i] = enc[i] - KEY[((n-3)+i) % 64]   (AN1: (n+i))
        Groessenchiffre: size = size_enc - u32(KEY[((n-3)+0x68) % 60])
                                          (AN1: abs(u32(KEY[n%60]) - size_enc))
    """
    magic = f.read(12)
    if magic != MAGIC:
        raise ValueError(f"keine MASSIVEFILE-PAK: {magic!r}")
    version, subversion = struct.unpack("<HH", f.read(4))
    (file_count,) = struct.unpack("<I", f.read(4))
    copyright = f.read(60).split(b"\x00")[0].decode("latin-1")
    f.read(4)  # AN1: "LPT\0" | AN2: Nullbytes
    an2 = (subversion != 0)

    entries = []
    offset = 12 + 8 + 60 + 4 + 0x84 * file_count
    for j in range(file_count):
        enc_name = f.read(128)
        (size_enc,) = struct.unpack("<I", f.read(4))
        shift = (j - 3) if an2 else j
        name = bytearray()
        k = shift
        for i in range(128):
            if enc_name[i] == 0:
                break
            name.append((enc_name[i] - KEY[k % 64]) & 0xFF)
            k += 1
        if an2:
            key_uint = struct.unpack_from("<I", KEY, (shift + 0x68) % 60)[0]
            size = (size_enc - key_uint) & 0xFFFFFFFF
        else:
            key_uint = struct.unpack_from("<I", KEY, j % 60)[0]
            size = abs(key_uint - size_enc)
        entries.append((name.decode("latin-1"), offset, size))
        offset += size
    return (f"{version}.{subversion}" if an2 else version), copyright, entries


def list_pak(path):
    with open(path, "rb") as f:
        return read_directory(f)[2]


def extract(pak_path, out_dir):
    with open(pak_path, "rb") as f:
        _, _, entries = read_directory(f)
        for name, off, size in entries:
            dest = os.path.join(out_dir, name.replace("\\", os.sep))
            os.makedirs(os.path.dirname(dest), exist_ok=True)
            f.seek(off)
            with open(dest, "wb") as o:
                o.write(f.read(size))
    return len(entries)


def read_file(pak_path, archive_name):
    """Eine einzelne Datei aus einer PAK lesen (Name mit Backslashes)."""
    key = archive_name.lower().replace("/", "\\")
    with open(pak_path, "rb") as f:
        _, _, entries = read_directory(f)
        for name, off, size in entries:
            if name.lower() == key:
                f.seek(off)
                return f.read(size)
    return None


def pack(entries, out_path, version=3, an2=False):
    """entries: Liste (archiv_name_mit_backslashes, quellpfad_auf_platte)

    an2=False -> AquaNox 1 (version uint32 = 3)
    an2=True  -> AquaNox 2 (version uint16 = 3, subversion uint16 = 2);
                 Namenschiffre um 3 verschoben, andere Groessenchiffre.

    Die AN2-Chiffre ist gegen alle fuenf Original-PAKs geprueft:
    16942/16942 Namen und Groessen byte-identisch reproduziert.
    Das Padding im 128-B-Namensfeld bleibt in beiden Faellen roh 0.
    """
    n = len(entries)
    with open(out_path, "wb") as o:
        o.write(MAGIC)
        if an2:
            o.write(struct.pack("<HHI", 3, 2, n))
        else:
            o.write(struct.pack("<II", version, n))
        o.write(COPYRIGHT.ljust(60, b"\x00"))
        o.write(FOURCC)
        for j, (name, src) in enumerate(entries):
            raw = name.encode("latin-1")
            if len(raw) >= 128:
                raise ValueError(f"Name zu lang: {name}")
            shift = (j - 3) if an2 else j
            enc = bytearray(128)
            for i, b in enumerate(raw):
                enc[i] = (b + KEY[(shift + i) % 64]) & 0xFF
            o.write(enc)
            size = os.path.getsize(src)
            if an2:
                key_uint = struct.unpack_from("<I", KEY, (shift + 0x68) % 60)[0]
                o.write(struct.pack("<I", (size + key_uint) & 0xFFFFFFFF))
            else:
                key_uint = struct.unpack_from("<I", KEY, j % 60)[0]
                o.write(struct.pack("<I", (key_uint + size) & 0xFFFFFFFF))
        for name, src in entries:
            with open(src, "rb") as f:
                o.write(f.read())
    return out_path


def _cli():
    if len(sys.argv) < 2:
        print(__doc__)
        print("Benutzung:")
        print("  pak_tool.py list   <pak>")
        print("  pak_tool.py x      <pak> <zielordner>")
        print("  pak_tool.py verify <pak> <entpackt-ordner>   (Repack-Byte-Vergleich)")
        return
    cmd = sys.argv[1]
    if cmd == "list":
        for name, off, size in list_pak(sys.argv[2]):
            print(f"{size:10d}  {name}")
    elif cmd == "x":
        n = extract(sys.argv[2], sys.argv[3])
        print(f"{n} Dateien entpackt nach {sys.argv[3]}")
    elif cmd == "verify":
        pak, root = sys.argv[2], sys.argv[3]
        orig = list_pak(pak)
        ent = [(n, os.path.join(root, n.replace("\\", os.sep))) for n, _, _ in orig]
        tmp = pak + ".rebuild"
        pack(ent, tmp)
        a = open(pak, "rb").read()
        b = open(tmp, "rb").read()
        os.remove(tmp)
        print(f"Original {len(a)} B, Rebuild {len(b)} B -> "
              + ("BYTE-IDENTISCH" if a == b else "ABWEICHUNG!"))
        if a != b:
            d = next(i for i in range(min(len(a), len(b))) if a[i] != b[i])
            print(f"  erste Abweichung @ {d}: {a[d-4:d+8].hex(' ')} vs {b[d-4:d+8].hex(' ')}")


if __name__ == "__main__":
    _cli()
