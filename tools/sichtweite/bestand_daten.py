import sys, os, glob, collections, struct
sys.path.insert(0, r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\tools")
import osd_tool
EXTR = r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\dat\pak\extracted"

print("=== Alle OSD mit maxdistance (vfx\\osd) ===")
tr = []
for p in sorted(glob.glob(os.path.join(EXTR, "vfx", "osd", "**", "*.osd"), recursive=True)):
    d = osd_tool.als_dict(p)
    if "maxdistance" in d:
        rel = os.path.relpath(p, EXTR).replace("/", "\\")
        tr.append((d["maxdistance"], rel, d.get("renderfast"),
                   d.get("d0"), d.get("d1"), d.get("d2"), d.get("numofsprites")))
for md, rel, rf, d0, d1, d2, ns in sorted(tr):
    print(f"   {md:>8}  rf={rf!s:<5} d0={d0!s:<6} d1={d1!s:<6} d2={d2!s:<6} "
          f"sprites={ns!s:<7} {rel}")

print("\n=== terrain.des: MinimumResolution / MaximumD2 / Scale / Offset ===")
werte = collections.Counter()
for p in sorted(glob.glob(os.path.join(EXTR, "map", "*", "terrain", "terrain.des"))):
    lvl = p.split(os.sep)[-3]
    mr = md2 = sc = off = tri = rq = None
    for z in open(p, "r", errors="replace"):
        t = z.strip()
        if t.startswith("//"):
            continue
        if "MinimumResolution" in t: mr = t.split("=")[1].strip()
        elif "MaximumD2" in t:       md2 = t.split("=")[1].strip()
        elif t.startswith("Scale"):  sc = t.split("=")[1].strip()
        elif t.startswith("Offset"): off = t.split("=")[1].strip()
        elif "TriangulationMode" in t: tri = t.split("=")[1].strip()
        elif "RestrictedQuadTree" in t: rq = t.split("=")[1].strip()
    werte[(mr, md2, sc, tri, rq)] += 1
    print(f"   {lvl:16} MinRes={mr!s:<7} MaxD2={md2!s:<7} Scale={sc!s:<18} "
          f"Offset={off!s:<24} Tri={tri} RQT={rq}")
print("\n   Verteilung:")
for k, n in werte.most_common():
    print(f"     {n:3} x  MinRes={k[0]} MaxD2={k[1]} Scale={k[2]} Tri={k[3]} RQT={k[4]}")

print("\n=== Groesse der Hoehenfelder (Kartenausdehnung) ===")
for p in sorted(glob.glob(os.path.join(EXTR, "map", "1h1", "terrain", "hmap.tga")))[:1]:
    d = open(p, "rb").read(20)
    w, h, bpp = struct.unpack_from("<HHB", d, 12)
    print(f"   1h1/hmap.tga  {w} x {h} x {bpp} bpp  -> mit Scale 4.0 = "
          f"{(w-1)*4} Welteinheiten Kantenlaenge")
