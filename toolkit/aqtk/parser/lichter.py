"""Die Wrapper-Lichtquellen aus mod_docu\\lichter.txt lesen.

Die Datei gehoert zum d3d8-Wrapper (Handoff 649/652), NICHT zur
Engine. Je Zeile ein Licht:

    x y z  r g b  intensitaet  radius  modus  periode_ms

    modus: 0 = fest, 1 = pulsierend (Sinus), 2 = blinkend (an/aus)
    Position in AquaNox-Weltkoordinaten (Z ist die Hochachse)

#-Zeilen sind Kommentar, Leerzeilen erlaubt. Der Wrapper liest
hoechstens 16 Zeilen, und er liest sie NUR, wenn das Spiel mit
AQUANOX_LICHTER=1 laeuft (AquaNox_PBRDemo.cmd).

*** LEVELGEBUNDEN SEIT 655: *** massgeblich ist
mod_docu\\lichter\\<karte>.txt; die alte globale lichter.txt bleibt
als Rueckfall (der Wrapper sucht in derselben Reihenfolge -- er
nimmt den Kartennamen aus der Startkommandozeile).

Der Pfad haengt am Spielordner (projekt.ordner), so wie auch die
Wissensdatenbank unter <spielordner>\\mod_docu liegt
(modell/metadaten.py).

Dieses Modul liest nur ("r"). Geschrieben wird ausschliesslich ueber
aqtk.schreiber.lichter -- und damit ueber sicher_schreiben().
"""
import os

# Mehr Zeilen liest der Wrapper nicht (Mehrslot 652).
MAX_LICHTER = 16

# Die zehn Felder einer Zeile, in Dateireihenfolge.
FELDER = ("x", "y", "z", "r", "g", "b", "intensitaet", "radius",
          "modus", "periode_ms")


def pfad(spielordner, karte=None, zum_schreiben=False):
    """Die massgebliche Lichtdatei (655: levelgebunden).

    Mit Karte: mod_docu\\lichter\\<karte>.txt -- beim LESEN nur,
    wenn sie existiert (sonst Rueckfall auf die alte globale
    lichter.txt, exakt wie der Wrapper); beim SCHREIBEN immer die
    Kartendatei, damit der Bestand von selbst umzieht.
    """
    global_ = os.path.join(spielordner, "mod_docu", "lichter.txt")
    if not karte:
        return global_
    je_karte = os.path.join(spielordner, "mod_docu", "lichter",
                            f"{karte}.txt")
    if zum_schreiben or os.path.isfile(je_karte):
        return je_karte
    return global_


def lies(spielordner, karte=None):
    """Die Lichtliste lesen. Gibt (lichter, kommentare, hinweise).

    lichter:    Liste von dicts mit den FELDER-Schluesseln; modus und
                periode_ms als int, alles andere float.
    kommentare: die #-Zeilen WOERTLICH (samt '#'), damit der
                Schreiber den Kopf der Datei erhalten kann -- dort
                steht die Herkunft der elf Signalstab-Lichter.
    hinweise:   was beim Lesen auffiel; unlesbare Zeilen werden
                gemeldet, nicht verschwiegen.
    """
    p = pfad(spielordner, karte)
    lichter, kommentare, hinweise = [], [], []
    if not os.path.isfile(p):
        hinweise.append(f"keine Lichtdatei: {p}")
        return lichter, kommentare, hinweise

    # utf-8-sig: die Datei liegt seit 649 mit BOM vor, und der
    # Wrapper kommt damit zurecht -- also nicht daran ruetteln.
    with open(p, encoding="utf-8-sig") as f:
        for nr, zeile in enumerate(f, 1):
            t = zeile.strip()
            if not t:
                continue
            if t.startswith("#"):
                kommentare.append(t)
                continue
            teile = t.split()
            if len(teile) < len(FELDER):
                hinweise.append(f"Zeile {nr}: nur {len(teile)} von "
                                f"{len(FELDER)} Werten -- uebersprungen")
                continue
            try:
                werte = [float(x) for x in teile[:len(FELDER)]]
            except ValueError:
                hinweise.append(f"Zeile {nr}: keine Zahl -- uebersprungen")
                continue
            licht = dict(zip(FELDER, werte))
            licht["modus"] = int(licht["modus"])
            licht["periode_ms"] = int(licht["periode_ms"])
            lichter.append(licht)

    if len(lichter) > MAX_LICHTER:
        hinweise.append(f"{len(lichter)} Lichtzeilen -- der Wrapper "
                        f"nimmt nur die ersten {MAX_LICHTER}")
    return lichter, kommentare, hinweise
