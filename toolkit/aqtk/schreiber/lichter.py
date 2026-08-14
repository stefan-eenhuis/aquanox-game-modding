"""Die Wrapper-Lichtquellen nach mod_docu\\lichter.txt schreiben.

Gegenstueck zu aqtk.parser.lichter -- der EINZIGE Ort, der diese
Datei anlegt. Geschrieben wird ueber sicher_schreiben(): das Ziel
liegt im Spielordner, aber ausserhalb von dat\\pak, und faellt damit
unter die "lose Datei"-Regel von ziel_pruefen().

ZAHLENFORMAT wie der Bestand (elf Signalstab-Lichter, 652):
    Position mit 2 Nachkommastellen     2561.22 2020.62 550.59
    Farben/Intensitaet kompakt          1.0 0.12 0.08   2.0
    Radius, Modus, Periode ganzzahlig   500  1  1500

Der Kommentarkopf wird ERHALTEN, wenn der Leser einen mitgebracht
hat (dort steht die Herkunft der Signalstab-Lichter) -- sonst wird
ein Standardkopf mit der Formatbeschreibung geschrieben. Die Datei
bekommt wieder ein BOM (utf-8-sig): so liegt sie seit 649 vor, und
der Wrapper liest sie so.
"""

import os

from . import sicher_schreiben, SchreibFehler
from ..parser.lichter import FELDER, MAX_LICHTER, pfad

_STANDARDKOPF = [
    "# Eigene Lichtquellen (649/652). Aktiv mit AQUANOX_LICHTER=1.",
    "# Je Zeile: x y z  r g b  intensitaet  radius  modus  periode_ms",
    "#   modus: 0 = fest, 1 = pulsierend (sinus), 2 = blinkend (an/aus)",
    "#   Position im WELTRAUM (Z ist oben); wirkt auf die "
    "Statics-Umgebung.",
    "# Bis 16 Zeilen aktiv (Mehrslot 652); Pulse laufen phasenversetzt.",
]


def _kompakt(w):
    """1.0, 0.12, 2.0 -- wie im Bestand: kurz, aber immer mit Punkt."""
    s = f"{float(w):g}"
    return s if ("." in s or "e" in s) else s + ".0"


def zeilen(lichter, kommentare=None):
    """Der Dateiinhalt als Zeilenliste -- getrennt testbar."""
    aus = []
    for k in (kommentare or _STANDARDKOPF):
        k = str(k)
        aus.append(k if k.startswith("#") else "# " + k)
    for l in lichter:
        aus.append(
            f"{float(l['x']):.2f} {float(l['y']):.2f} "
            f"{float(l['z']):.2f}  "
            f"{_kompakt(l['r'])} {_kompakt(l['g'])} {_kompakt(l['b'])}  "
            f"{_kompakt(l['intensitaet'])}  "
            f"{int(round(float(l['radius'])))}  "
            f"{int(l['modus'])}  {int(l['periode_ms'])}")
    return aus


def schreiben(spielordner, lichter, kommentare=None, melder=None,
              karte=None):
    """Die Lichtliste ablegen -- mit Karte levelgebunden (655) in
    mod_docu\\lichter\\<karte>.txt, sonst in die alte globale Datei.

    Wirft SchreibFehler bei mehr als MAX_LICHTER Zeilen -- der
    Wrapper laese die ueberzaehligen ohnehin nie, und stilles
    Abschneiden waere gelogen.
    Gibt den geschriebenen Pfad zurueck.
    """
    if len(lichter) > MAX_LICHTER:
        raise SchreibFehler(
            f"{len(lichter)} Lichter -- der Wrapper liest hoechstens "
            f"{MAX_LICHTER} Zeilen (Mehrslot 652). Erst welche "
            f"loeschen.")
    for nr, l in enumerate(lichter, 1):
        fehlt = [f for f in FELDER if f not in l]
        if fehlt:
            raise SchreibFehler(
                f"Licht {nr}: Felder fehlen: {', '.join(fehlt)}")

    # CRLF, nicht LF: so liegt die Datei im Bestand (Notepad-tauglich,
    # und der Rundlauf lesen->schreiben bleibt byte-identisch).
    text = "\r\n".join(zeilen(lichter, kommentare)) + "\r\n"
    ziel = pfad(spielordner, karte, zum_schreiben=True)
    # Der lichter-Unterordner existiert beim ersten levelgebundenen
    # Speichern noch nicht zwingend.
    os.makedirs(os.path.dirname(ziel), exist_ok=True)
    # Als Bytes mit BOM -- sicher_schreiben() schreibt str sonst
    # als utf-8 OHNE BOM, und die Datei laege anders da als zuvor.
    sicher_schreiben(ziel, text.encode("utf-8-sig"), spielordner,
                     melder=melder)
    return ziel
