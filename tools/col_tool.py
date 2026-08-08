#!/usr/bin/env python3
"""col_tool.py -- AquaNox 1 .col-Kollisionsnetze LESEN und SCHREIBEN.

Das Format ist vollstaendig aus der Exe abgeleitet (kein Raten):
    Cache      COS_OBBS_Tree_Cache::AllocateTree  0x4d11c0 / 0x4d1370
    Datei oeffnen                                 0x521a80  (fopen bzw. PAK)
    u32 lesen                                     0x521f10
    u16 lesen                                     0x521ec0
    NETZ lesen                                    0x4da950
    BAUM lesen                                    0x4dcb80
    KNOTEN lesen                                  0x4dafe0
    Wurzel-AABB berechnen                         0x4dc730
Gegenprobe: alle 508 nicht-leeren Originaldateien lassen sich mit
diesem Modul byte-genau wieder herstellen (Unterbefehl "rundlauf").

DATEIAUFBAU (alles little endian)
    u32   nTri
    nTri x { u16 i0, u16 i1, u16 i2, u16 typ }         je 8 B
    u32   nVert
    nVert x { f32 x, f32 y, f32 z }                    je 12 B
    u32   nIdx                     -- Laenge der Dreiecksliste des Baums
    nIdx x u32                     -- Dreiecksnummern, Blaetter zeigen
                                      auf zusammenhaengende Abschnitte
    u32   A                        -- Kennzahl des Erzeugers, s. u.
    u32   N                        -- Zahl der Baumknoten
    N x KNOTEN
    u32   B                        -- ist in allen 508 Dateien 2*N
    N x { u32 links, u32 rechts }  -- 0xFFFFFFFF/0xFFFFFFFF = Blatt

    KNOTEN (68 B, bei einem Blatt 76 B)
        f32      radius            -- Kugel um den ganzen Teilbaum
        f32[3]   kugelmittelpunkt
        f32[3]   halbmasse         -- des OBB, in Richtung der Achsen
        f32[3]   obb_mittelpunkt
        f32[3]   achse0            -- Einheitsvektoren
        f32[3]   achse1
        f32[3]   achse2
        u32      blatt             -- 0 = innerer Knoten, 1 = Blatt
        u32      erster            -- nur wenn blatt: Index in die
        u32      letzter              Dreiecksliste, EINSCHLIESSLICH

    Wurzel ist immer Knoten 0. Die Engine legt 4 + N*0x70 Byte an;
    im Speicher hat ein Knoten 0x70 B (Zeiger statt Indizes).

WAS DIE ENGINE PRUEFT UND WAS NICHT
    * Nichts wird auf Plausibilitaet geprueft. Auch N=1 ist erlaubt
      (cra_turret_gun.col, gen_extra_werbung20.col, atl_dock1_block1.col).
    * radius geht als 1.0/radius in den Knoten -- NIE 0 schreiben.
    * Der Typ im Dreieck ist in den Originalen das HOHE Byte des
      .msb-Flagworts (belegt an 440 von 469 Paaren). COS_LIST_
      BoxAttributes laesst hoechstens 32 Typen zu.
    * A ist eine Kennzahl des Erzeugungswerkzeugs: 0,1,2,3,4,5,10,30,100
      kommen vor, 100 in 372 Dateien. Da 0 in 12 ausgelieferten Dateien
      steht, ist der Wert offenbar unschaedlich. Wir schreiben 100.

AUFRUF
    col_tool.py info    <datei.col> [...]
    col_tool.py baum    <datei.col>            Baum ausgeben
    col_tool.py rundlauf <ordner>              Byte-Gegenprobe
    col_tool.py aus_msb <quelle.msb> <ziel.col> [max_blatt]
    col_tool.py wuerfel <ziel.col> [kante]     Testwuerfel
    col_tool.py pruefe  <datei.col>            Selbsttest der Bezuege
"""
import os, sys, glob, struct, math

# ----------------------------------------------------------------- lesen

class _Leser:
    def __init__(self, b):
        self.b = b; self.o = 0
    def u32(self):
        v = struct.unpack_from("<I", self.b, self.o)[0]; self.o += 4; return v
    def f32(self):
        v = struct.unpack_from("<f", self.b, self.o)[0]; self.o += 4; return v
    def v3(self):
        v = struct.unpack_from("<3f", self.b, self.o); self.o += 12; return v


def lies(pfad):
    b = open(pfad, "rb").read()
    if not b:
        return None                      # 0-Byte-Datei, gibt es 3 Stueck
    r = _Leser(b)
    nTri = r.u32()
    tris = [struct.unpack_from("<4H", b, r.o + 8 * i) for i in range(nTri)]
    r.o += 8 * nTri
    nVert = r.u32()
    verts = [struct.unpack_from("<3f", b, r.o + 12 * i) for i in range(nVert)]
    r.o += 12 * nVert
    nIdx = r.u32()
    idx = list(struct.unpack_from("<%dI" % nIdx, b, r.o)) if nIdx else []
    r.o += 4 * nIdx
    A = r.u32(); N = r.u32()
    knoten = []
    for _ in range(N):
        k = {"radius": r.f32(), "kugel": r.v3(), "halb": r.v3(),
             "mitte": r.v3(), "ax": [r.v3(), r.v3(), r.v3()]}
        k["blatt"] = r.u32()
        if k["blatt"]:
            k["erster"] = r.u32(); k["letzter"] = r.u32()
        knoten.append(k)
    B = r.u32()
    kinder = [(r.u32(), r.u32()) for _ in range(N)]
    return {"nTri": nTri, "tris": tris, "nVert": nVert, "verts": verts,
            "nIdx": nIdx, "idx": idx, "A": A, "N": N, "knoten": knoten,
            "B": B, "kinder": kinder, "rest": len(b) - r.o, "groesse": len(b)}


def schreibe_bytes(c):
    b = bytearray()
    b += struct.pack("<I", c["nTri"])
    for t in c["tris"]:
        b += struct.pack("<4H", *t)
    b += struct.pack("<I", c["nVert"])
    for v in c["verts"]:
        b += struct.pack("<3f", *v)
    b += struct.pack("<I", c["nIdx"])
    for i in c["idx"]:
        b += struct.pack("<I", i)
    b += struct.pack("<II", c["A"], c["N"])
    for k in c["knoten"]:
        b += struct.pack("<f", k["radius"])
        b += struct.pack("<3f", *k["kugel"])
        b += struct.pack("<3f", *k["halb"])
        b += struct.pack("<3f", *k["mitte"])
        for a in k["ax"]:
            b += struct.pack("<3f", *a)
        b += struct.pack("<I", k["blatt"])
        if k["blatt"]:
            b += struct.pack("<II", k["erster"], k["letzter"])
    b += struct.pack("<I", c["B"])
    for l, r in c["kinder"]:
        b += struct.pack("<II", l, r)
    return bytes(b)

# ------------------------------------------------------------ baumbau

MAX_BLATT = 10          # so gross sind die Blaetter in den Originalen

def _mitte(t, verts):
    a, b, c = verts[t[0]], verts[t[1]], verts[t[2]]
    return ((a[0]+b[0]+c[0])/3.0, (a[1]+b[1]+c[1])/3.0, (a[2]+b[2]+c[2])/3.0)


def baue_baum(tris, verts, max_blatt=MAX_BLATT):
    """Achsparalleler OBB-Baum. Die drei Achsen bleiben die Einheits-
    achsen -- das ist erlaubt (sie muessen nur orthonormal sein) und
    macht den Bau unempfindlich gegen entartete Geometrie."""
    knoten = []; kinder = []; reihenfolge = []
    mitten = [_mitte(t, verts) for t in tris]

    def kasten(menge):
        lo = [1e30]*3; hi = [-1e30]*3
        for ti in menge:
            for vi in tris[ti][:3]:
                v = verts[vi]
                for k in range(3):
                    if v[k] < lo[k]: lo[k] = v[k]
                    if v[k] > hi[k]: hi[k] = v[k]
        m = tuple((lo[k]+hi[k])/2.0 for k in range(3))
        h = tuple(max((hi[k]-lo[k])/2.0, 0.0) for k in range(3))
        r = 0.0
        for ti in menge:
            for vi in tris[ti][:3]:
                v = verts[vi]
                d = math.sqrt(sum((v[k]-m[k])**2 for k in range(3)))
                if d > r: r = d
        return m, h, max(r, 1e-4)        # nie 0: die Engine rechnet 1/r

    def teile(menge):
        eigen = len(knoten)
        m, h, r = kasten(menge)
        k = {"radius": r, "kugel": m, "halb": h, "mitte": m,
             "ax": [(1.0, 0.0, 0.0), (0.0, 1.0, 0.0), (0.0, 0.0, 1.0)]}
        knoten.append(k); kinder.append(None)
        if len(menge) <= max_blatt:
            k["blatt"] = 1
            k["erster"] = len(reihenfolge)
            reihenfolge.extend(menge)
            k["letzter"] = len(reihenfolge) - 1
            kinder[eigen] = (0xFFFFFFFF, 0xFFFFFFFF)
            return eigen
        achse = max(range(3), key=lambda a: h[a])
        menge = sorted(menge, key=lambda ti: mitten[ti][achse])
        halb = len(menge)//2
        k["blatt"] = 0
        li = teile(menge[:halb])
        re = teile(menge[halb:])
        kinder[eigen] = (li, re)
        return eigen

    sys.setrecursionlimit(100000)
    teile(list(range(len(tris))))
    return knoten, kinder, reihenfolge


def baue_col(tris, verts, max_blatt=MAX_BLATT, A=100):
    knoten, kinder, reihenfolge = baue_baum(tris, verts, max_blatt)
    return {"nTri": len(tris), "tris": tris, "nVert": len(verts),
            "verts": verts, "nIdx": len(reihenfolge), "idx": reihenfolge,
            "A": A, "N": len(knoten), "knoten": knoten,
            "B": 2*len(knoten), "kinder": kinder}

# ------------------------------------------------------------ msb lesen

def msb_netz(pfad):
    """Positionen und Dreiecke aus einem .msb ziehen.
    In 435 von 469 Faellen ist das Netz im .col damit Byte fuer Byte
    dasselbe wie im .msb -- die Kollision benutzt das Sichtnetz."""
    b = open(pfad, "rb").read()
    if b[0:2] != b"\x00\x02":
        raise ValueError("kein .msb")
    n = struct.unpack_from("<H", b, 2)[0]
    o = 6; verts = []; tris = []
    for i in range(n):
        if b[o:o+2] != b"\x00\x02":
            raise ValueError("Blockkopf %d falsch" % i)
        vc, tc = struct.unpack_from("<II", b, o+2); o += 10
        basis = len(verts)
        for k in range(vc):
            verts.append(struct.unpack_from("<3f", b, o + 40*k))
        o += 40*vc
        for k in range(tc):
            a, bb, c, fl = struct.unpack_from("<4H", b, o + 8*k)
            tris.append((a+basis, bb+basis, c+basis, fl >> 8))
        o += 8*tc
        o += 230 if i == n-1 else 206
    if len(verts) > 65535:
        raise ValueError("mehr als 65535 Vertices -- u16-Indizes reichen nicht")
    return verts, tris

# ------------------------------------------------------------ pruefen

def pruefe(c):
    """Alle Bezuege nachrechnen, die die Engine voraussetzt."""
    fehler = []
    if c["N"] < 1: fehler.append("N < 1")
    if c["B"] != 2*c["N"]: fehler.append("B != 2*N (in den Originalen immer 2*N)")
    for i, t in enumerate(c["tris"]):
        if max(t[:3]) >= c["nVert"]: fehler.append("Dreieck %d zeigt ins Leere" % i)
        if t[3] > 31: fehler.append("Dreieck %d: Typ %d > 31" % (i, t[3]))
    for i in c["idx"]:
        if i >= c["nTri"]: fehler.append("Dreiecksliste zeigt auf %d" % i)
    belegt = 0
    kindmenge = set()
    for i, k in enumerate(c["knoten"]):
        l, r = c["kinder"][i]
        blatt = (l == 0xFFFFFFFF)
        if blatt != bool(k["blatt"]):
            fehler.append("Knoten %d: Blattkennung passt nicht zu den Kindern" % i)
        if k["radius"] <= 0.0:
            fehler.append("Knoten %d: radius 0 -> Division durch 0 in der Engine" % i)
        for a in k["ax"]:
            l2 = math.sqrt(sum(x*x for x in a))
            if abs(l2-1.0) > 1e-3:
                fehler.append("Knoten %d: Achse nicht normiert (%.4f)" % (i, l2))
        if blatt:
            belegt += k["letzter"] - k["erster"] + 1
            if k["letzter"] < k["erster"] or k["letzter"] >= c["nIdx"]:
                fehler.append("Knoten %d: Bereich %d..%d unzulaessig"
                              % (i, k["erster"], k["letzter"]))
        else:
            if l >= c["N"] or r >= c["N"]:
                fehler.append("Knoten %d: Kind ausserhalb" % i)
            kindmenge.add(l); kindmenge.add(r)
    if belegt != c["nIdx"]:
        fehler.append("Blaetter decken %d von %d Listenplaetzen ab" % (belegt, c["nIdx"]))
    frei = [i for i in range(c["N"]) if i not in kindmenge]
    if frei != [0]:
        fehler.append("Wurzel ist nicht eindeutig Knoten 0: %s" % frei[:5])
    return fehler

# ------------------------------------------------------------ befehle

def _info(p):
    c = lies(p)
    if c is None:
        print("%-32s LEER (0 Byte)" % os.path.basename(p)); return
    tiefe = _tiefe(c)
    print("%-32s %8d B  nTri=%-6d nVert=%-6d nIdx=%-6d A=%-4d N=%-6d Tiefe=%-3d Rest=%d"
          % (os.path.basename(p), c["groesse"], c["nTri"], c["nVert"],
             c["nIdx"], c["A"], c["N"], tiefe, c["rest"]))


def _tiefe(c):
    best = 0; stapel = [(0, 1)]
    while stapel:
        i, d = stapel.pop()
        if d > best: best = d
        l, r = c["kinder"][i]
        if l != 0xFFFFFFFF:
            stapel.append((l, d+1)); stapel.append((r, d+1))
    return best


def _baum(p):
    c = lies(p)
    def geh(i, t):
        k = c["knoten"][i]; l, r = c["kinder"][i]
        art = ("Blatt %d..%d" % (k["erster"], k["letzter"])) if k["blatt"] else "Knoten"
        print("  "*t + "%-4d %s  m=(%.2f %.2f %.2f) h=(%.2f %.2f %.2f) r=%.2f"
              % (i, art, k["mitte"][0], k["mitte"][1], k["mitte"][2],
                 k["halb"][0], k["halb"][1], k["halb"][2], k["radius"]))
        if l != 0xFFFFFFFF and t < 6:
            geh(l, t+1); geh(r, t+1)
    geh(0, 0)


def _rundlauf(ordner):
    gut = schlecht = leer = 0
    for p in sorted(glob.glob(os.path.join(ordner, "*.col"))):
        c = lies(p)
        if c is None: leer += 1; continue
        if schreibe_bytes(c) == open(p, "rb").read(): gut += 1
        else: schlecht += 1; print("  abweichend:", os.path.basename(p))
    print("byte-genau: %d   abweichend: %d   leer: %d" % (gut, schlecht, leer))


def _wuerfel(ziel, kante=10.0):
    h = kante/2.0
    verts = [(x*h, y*h, z*h) for x in (-1, 1) for y in (-1, 1) for z in (-1, 1)]
    F = [(0,1,3),(0,3,2),(4,6,7),(4,7,5),(0,4,5),(0,5,1),
         (2,3,7),(2,7,6),(0,2,6),(0,6,4),(1,5,7),(1,7,3)]
    tris = [(a, b, c, 0) for a, b, c in F]
    c = baue_col(tris, verts, max_blatt=4)
    open(ziel, "wb").write(schreibe_bytes(c))
    print("geschrieben:", ziel, os.path.getsize(ziel), "B  N =", c["N"])


def _aus_msb(quelle, ziel, max_blatt=MAX_BLATT):
    verts, tris = msb_netz(quelle)
    c = baue_col(tris, verts, max_blatt)
    f = pruefe(c)
    if f:
        print("SELBSTTEST GESCHEITERT:"); [print("  ", x) for x in f]; return
    open(ziel, "wb").write(schreibe_bytes(c))
    print("geschrieben: %s  %d B  nTri=%d nVert=%d N=%d Tiefe=%d"
          % (ziel, os.path.getsize(ziel), c["nTri"], c["nVert"], c["N"], _tiefe(c)))


def _cli():
    if len(sys.argv) < 2:
        print(__doc__); return
    b = sys.argv[1]
    if b == "info":
        for p in sys.argv[2:]: _info(p)
    elif b == "baum":
        _baum(sys.argv[2])
    elif b == "rundlauf":
        _rundlauf(sys.argv[2])
    elif b == "wuerfel":
        _wuerfel(sys.argv[2], float(sys.argv[3]) if len(sys.argv) > 3 else 10.0)
    elif b == "aus_msb":
        _aus_msb(sys.argv[2], sys.argv[3],
                 int(sys.argv[4]) if len(sys.argv) > 4 else MAX_BLATT)
    elif b == "pruefe":
        f = pruefe(lies(sys.argv[2]))
        print("in Ordnung" if not f else "\n".join(f))
    else:
        print(__doc__)


if __name__ == "__main__":
    _cli()
