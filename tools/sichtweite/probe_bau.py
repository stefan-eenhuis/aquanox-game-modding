# TROCKENPROBE -- schreibt AUSSCHLIESSLICH in den Scratchpad, nie ins Spiel.
# Belegt, dass die drei Datenaenderungen technisch durchfuehrbar und
# rueckleseprobenfest sind.
import sys, os, struct, shutil
TOOLS = r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\tools"
TK    = r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\mod_docu\toolkit"
sys.path.insert(0, TOOLS); sys.path.insert(0, TK)
import lua4dis as L, osd_tool
from aqtk.parser import aufrufe as A

EXTR = r"C:\Program Files (x86)\GOG Galaxy\Games\AquaNox\dat\pak\extracted"
OUT  = os.path.join(os.path.dirname(os.path.abspath(__file__)), "probe")
shutil.rmtree(OUT, ignore_errors=True)
os.makedirs(OUT, exist_ok=True)

# ---------------------------------------------------------------- 1) fog.fog
print("=== 1) fog.fog Kopf strecken ===")
src = os.path.join(EXTR, "map", "1h1", "fog", "fog.fog")
d = bytearray(open(src, "rb").read())
alt_s, alt_t = struct.unpack_from("<ff", d, 12)
NEU = 4000.0
struct.pack_into("<f", d, 12, NEU / 64.0)
p = os.path.join(OUT, "fog.fog"); open(p, "wb").write(bytes(d))
neu_s, neu_t = struct.unpack_from("<ff", open(p, "rb").read(20), 12)
print(f"   alt Sicht {alt_s*64:.1f} / Tiefe {alt_t*64:.1f}")
print(f"   neu Sicht {neu_s*64:.1f} / Tiefe {neu_t*64:.1f}")
print(f"   Groesse {os.path.getsize(src)} -> {os.path.getsize(p)}  "
      f"{'GLEICH' if os.path.getsize(src)==os.path.getsize(p) else 'ABWEICHEND!'}")
print(f"   geaenderte Bytes: {sum(1 for a,b in zip(open(src,'rb').read(), open(p,'rb').read()) if a!=b)}")

# ---------------------------------------------------------------- 2) OSD
print("\n=== 2) fx_plant *.osd MaxDistance ===")
ZIELE = {"stone_01~.osd": 1200, "grass_01~.osd": 1200, "coral_01~.osd": 1200,
         "coral_04~.osd": 1200, "coral_03~.osd": 1200, "fungus_01~.osd": 1200,
         "fungus_02~.osd": 1200}
for name, wert in ZIELE.items():
    q = os.path.join(EXTR, "vfx", "osd", "fx_plant", name)
    alt = osd_tool.als_dict(q).get("maxdistance")
    roh, getan = osd_tool.aendere(q, {"maxdistance": float(wert)},
                                  ziel=os.path.join(OUT, name))
    zurueck = osd_tool.als_dict(os.path.join(OUT, name)).get("maxdistance")
    gl = os.path.getsize(q) == os.path.getsize(os.path.join(OUT, name))
    print(f"   {name:16} {alt!s:>7} -> {zurueck!s:<8} "
          f"Groesse {'gleich' if gl else 'ABWEICHEND'}")

# ------------------------------------------------------ 3) Lua-Konstante 512
print("\n=== 3) Camera_SetBackPlane in 1h1.sco ===")
sco = os.path.join(EXTR, "map", "1h1", "script", "1h1.sco")
top = L.loads(open(sco, "rb").read())

def zaehle(proto, wert, tiefe=0, treffer=None):
    if treffer is None: treffer = []
    for i, k in enumerate(getattr(proto, "knum", []) or []):
        if abs(k - wert) < 1e-6:
            treffer.append((proto, i))
    for kind in getattr(proto, "kproto", []) or []:
        zaehle(kind, wert, tiefe + 1, treffer)
    return treffer

t = zaehle(top, 512.0)
print(f"   512.0 kommt in {len(t)} Konstantenpools vor")
# Welcher Pool gehoert zum BackPlane-Aufruf?
ruf = A.lies(top, "main", L)
for a in ruf:
    if a.funktion == "Camera_SetBackPlane":
        print(f"   Aufruf im Proto '{a.proto}' an Befehlsstelle {a.stelle}: {a}")

def hole(proto, weg):
    if weg == "main":
        return proto
    for teil in weg.split("/")[1:]:
        proto = (getattr(proto, "kproto", []) or [])[int(teil)]
    return proto

for a in ruf:
    if a.funktion != "Camera_SetBackPlane":
        continue
    p = hole(top, a.proto)
    idx = [i for i, k in enumerate(p.knum) if abs(k - 512.0) < 1e-6]
    print(f"   Proto {a.proto}: knum hat {len(p.knum)} Zahlen, "
          f"512.0 an Index {idx}")
    # Wie oft wird dieser Index im Bytecode benutzt?
    benutzt = 0
    for ins in p.code:
        if L.op(ins) in ("PUSHNUM", "PUSHNEGNUM") and L.argU(ins) in idx:
            benutzt += 1
    print(f"   dieser Konstanteneintrag wird {benutzt} x per PUSHNUM benutzt")
    if benutzt == 1:
        p.knum[idx[0]] = 4000.0
        neu = L.save(top)
        pp = os.path.join(OUT, "1h1.sco"); open(pp, "wb").write(neu)
        top2 = L.loads(open(pp, "rb").read())
        ruf2 = A.lies(top2, "main", L)
        for b in ruf2:
            if b.funktion == "Camera_SetBackPlane":
                print(f"   RUECKLESEPROBE: {b}")
        print(f"   Groesse {os.path.getsize(sco)} -> {os.path.getsize(pp)}")
        # Gegenprobe: sonst nichts veraendert?
        u1 = {(x.funktion, tuple(x.zahlen)) for x in ruf}
        u2 = {(x.funktion, tuple(x.zahlen)) for x in ruf2}
        print(f"   Aufrufe gesamt {len(ruf)} / {len(ruf2)}; "
              f"Unterschiede: {sorted(u1 ^ u2)}")
print("\nAlles nach:", OUT)
