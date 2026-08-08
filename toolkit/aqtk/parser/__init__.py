"""Parser-Schicht -- liest AquaNox-Dateien, schreibt NIE.

Diese Schicht ist bewusst duenn: Die eigentliche Formatarbeit steckt in
den erprobten Werkzeugen unter mod_docu/tools. Hier wird nur angepasst,
zusammengefasst und mit Unsicherheitsangaben versehen.

*** READ-ONLY IST EINE HARTE GRENZE. *** In diesem Paket wird keine
Datei mit "w", "a" oder "+" geoeffnet. Wer das aendert, bricht die
Zusage aus der Aufgabenstellung.
"""
import os
import sys

# Die Werkzeugkette liegt im Spielordner (siehe Handoff, Abschnitt 355).
# Der Pfad wird beim Oeffnen eines Projekts gesetzt.
_WERKZEUGE = None


def werkzeuge_anmelden(spielordner):
    """Macht mod_docu/tools importierbar. Gibt den Pfad zurueck oder None."""
    global _WERKZEUGE
    p = os.path.join(spielordner, "mod_docu", "tools")
    if os.path.isdir(p):
        if p not in sys.path:
            sys.path.insert(0, p)
        _WERKZEUGE = p
        return p
    return None


def werkzeuge_pfad():
    return _WERKZEUGE


class Unsicher:
    """Ein Wert mit Angabe, wie gut er belegt ist.

    Die Aufgabenstellung verlangt: Unbekanntes klar markieren, nichts
    erraten. Statt einen Zweifelsfall stillschweigend zu einem Wert zu
    machen, wird er hier eingepackt.
    """

    SICHER = "sicher"
    WAHRSCHEINLICH = "wahrscheinlich"
    MOEGLICH = "moeglich"
    UNBEKANNT = "unbekannt"

    def __init__(self, wert, guete=SICHER, grund=""):
        self.wert = wert
        self.guete = guete
        self.grund = grund

    def __repr__(self):
        return f"Unsicher({self.wert!r}, {self.guete}{', ' + self.grund if self.grund else ''})"

    def as_dict(self):
        return {"wert": self.wert, "guete": self.guete, "grund": self.grund}
