# Wieviele Pflanzen stehen ueberhaupt auf einer Karte, und wieviele
# davon liegen bei welcher Sichtweite im Blickfeld?
# GEMESSEN aus der Verteilungskarte map\<lvl>\terrain\<art>_01.tga (64x64).
# Der Pflanzencode teilt einen Byte-Zaehler [esi+0x30] durch (10 - Stufe);
# bei Stufe 9 (Ist-Zustand des Nutzers) faellt die Teilung weg.
import sys, os, glob, struct
sys.path.insert(0, r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\tools")
EXTR = r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\dat\pak\extracted"

def tga(p):
    d = open(p, "rb").read()
    idlen = d[0]; typ = d[2]
    w, h, bpp = struct.unpack_from("<HHB", d, 12)
    desc = d[17]
    off = 18 + idlen
    if typ != 2:
        return w, h, bpp, None
    px = d[off:off + w*h*(bpp//8)]
    return w, h, bpp, px

KANTE = 4096.0        # Welteinheiten (1025 Punkte x Scale 4.0, gemessen)
for lvl in ("1h1", "2h1", "4h1"):
    print(f"\n### {lvl} ###")
    for art in ("stone_01", "grass_01", "coral_01", "fungus_01"):
        p = os.path.join(EXTR, "map", lvl, "terrain", art + ".tga")
        if not os.path.isfile(p):
            continue
        w, h, bpp, px = tga(p)
        if px is None:
            print(f"   {art}: TGA-Typ nicht unkomprimiert"); continue
        n = bpp // 8
        kanal = [0]*4
        summe = [0]*4
        for i in range(0, len(px), n):
            for k in range(min(n, 4)):
                summe[k] += px[i+k]
        print(f"   {art:10} {w}x{h}x{bpp}  Kanalsummen B/G/R/A = "
              f"{summe[0]:,} / {summe[1]:,} / {summe[2]:,} / {summe[3]:,}")

print("\n=== Flaechenrechnung: Anteil der Karte im Sichtkegel ===")
print("   Karte 4096 x 4096 Welteinheiten = 16.777.216 Flaecheneinheiten")
for r in (80, 150, 200, 400, 500, 600, 1000, 2000, 4000):
    kreis = 3.14159 * r * r
    print(f"   Radius {r:>5}: Kreisflaeche {kreis:>14,.0f}  "
          f"= {min(100, 100*kreis/16777216):>6.1f} % der Karte   "
          f"(Faktor gegen r=80: {(r/80.0)**2:>8.1f} x)")
