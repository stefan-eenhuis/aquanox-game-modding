"""Manuelle Vorgaben fuer ORM-Karten (587b) -- wo die Heuristik nur
raten kann, tragen wir Wissen ein ("der Parabolspiegel IST Metall").

Jeder Eintrag in VORGABEN wirkt auf EINE erzeugte Karte
(mod_docu\\texturen\\orm\\<karte>_orm.png):

  karte    Dump-Name ohne Endung, z. B. "0123abcd..._256x256"
  metall   0..1  -> B-Kanal          (optional)
  rauheit  0..1  -> G-Kanal          (optional)
  maske    optional: {"msb": Pfad relativ zu dat\\pak\\extracted,
                      "bloecke": [Indizes]}
           Dann gelten metall/rauheit NUR innerhalb der UV-Flaechen
           dieser Mesh-Bloecke (Dreiecke werden in Kartengroesse
           gerastert); der Rest der Karte bleibt unveraendert.
           Ohne maske gilt der Wert fuer die GANZE Karte.

orm_karten.py --alle ruft anwenden() automatisch NACH der Erzeugung
auf -- Neuerzeugung ueberschreibt Handarbeit also nie dauerhaft.
Einzelstart: python orm_override.py
"""
import os
import sys

import numpy as np
from PIL import Image, ImageDraw

_HIER = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(_HIER, "..", "toolkit"))

SPIEL = os.path.normpath(os.path.join(_HIER, "..", ".."))
EXTRACTED = os.path.join(SPIEL, "dat", "pak", "extracted")
ORM = os.path.join(SPIEL, "mod_docu", "texturen", "orm")

VORGABEN = [
    # gen_parabolic (587b): Parabolspiegel auf Sockel. Stefans Wissen:
    # "Der Spiegel ist aus Metall, der Sockel nicht." Eine gemeinsame
    # 512er-Textur (gen_parabolic_0.dds -> Dump 583813ab6be30325),
    # die Teile liegen als getrennte UV-Inseln. Blockbefund (Agent,
    # Handoff 588): 4 = Spiegel-Innenseite, 2 = Aussenschale,
    # 3 = Sockelturm, 1 = Stuetzbeine, 0 = Feedhorn, 5 = Lagerboecke.
    # Die gen_parabo_*/des_parabolic-Level-Instanzen teilen Mesh und
    # Textur -- eine Vorgabe deckt sie alle ab.
    {"karte": "583813ab6be30325_512x512", "metall": 1.0, "rauheit": 0.15,
     "maske": {"msb": r"vfx\msh\gen_parabolic.msb", "bloecke": [4]}},
    {"karte": "583813ab6be30325_512x512", "metall": 1.0, "rauheit": 0.35,
     "maske": {"msb": r"vfx\msh\gen_parabolic.msb", "bloecke": [2]}},
    {"karte": "583813ab6be30325_512x512", "metall": 0.0,
     "maske": {"msb": r"vfx\msh\gen_parabolic.msb", "bloecke": [3]}},
]


def _uv_maske(msb_rel, bloecke, breite, hoehe):
    """Rastert die UV-Dreiecke der genannten Bloecke als 0/255-Maske."""
    from aqtk.parser import msb as msb_leser
    roh = open(os.path.join(EXTRACTED, msb_rel), "rb").read()
    m = msb_leser.lies(roh)
    bild = Image.new("L", (breite, hoehe), 0)
    mal = ImageDraw.Draw(bild)
    for bi in bloecke:
        b = m["bloecke"][bi]
        uv, idx = b["uv"], b["indizes"]
        for t in range(0, len(idx), 3):
            ecken = []
            us = [uv[2 * idx[t + k]] for k in range(3)]
            vs = [uv[2 * idx[t + k] + 1] for k in range(3)]
            # Kachelnde UVs auf die Kachel des Dreiecks schieben --
            # je Dreieck gemeinsam, damit es nicht zerreisst.
            du = float(np.floor(min(us)))
            dv = float(np.floor(min(vs)))
            for k in range(3):
                ecken.append(((us[k] - du) * (breite - 1),
                              (vs[k] - dv) * (hoehe - 1)))
            mal.polygon(ecken, fill=255)
    return np.asarray(bild, dtype=np.float32) / 255.0


def anwenden(orm_ordner=ORM, laut=True):
    n = 0
    for v in VORGABEN:
        pfad = os.path.join(orm_ordner, v["karte"] + "_orm.png")
        if not os.path.isfile(pfad):
            if laut:
                print("VORGABE UEBERSPRUNGEN, Karte fehlt: %s" % pfad)
            continue
        a = np.asarray(Image.open(pfad).convert("RGB"),
                       dtype=np.float32) / 255.0
        h, b = a.shape[0], a.shape[1]

        if "maske" in v:
            m = _uv_maske(v["maske"]["msb"], v["maske"]["bloecke"], b, h)
        else:
            m = np.ones((h, b), dtype=np.float32)

        if "metall" in v:
            a[..., 2] = a[..., 2] * (1.0 - m) + float(v["metall"]) * m
        if "rauheit" in v:
            a[..., 1] = a[..., 1] * (1.0 - m) + float(v["rauheit"]) * m

        Image.fromarray((a * 255.0 + 0.5).astype(np.uint8),
                        "RGB").save(pfad)
        n += 1
        if laut:
            anteil = float(m.mean()) * 100.0
            print("Vorgabe angewandt: %s  (%.0f%% der Flaeche)"
                  % (v["karte"], anteil))
    if laut:
        print("%d Vorgabe(n) angewandt" % n)
    return n


if __name__ == "__main__":
    anwenden()
