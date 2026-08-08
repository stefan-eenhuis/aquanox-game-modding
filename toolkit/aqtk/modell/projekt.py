"""Das geoeffnete Projekt: ein AquaNox-Ordner mit seinem Bestand."""
import os

from ..parser import werkzeuge_anmelden, werkzeuge_pfad
from ..parser.pak import Bestand, kategorie


class Projekt:
    """Ein geoeffneter AquaNox-Ordner.

    READ-ONLY: Diese Klasse oeffnet Dateien nur zum Lesen. Sie legt
    nichts an, aendert nichts und loescht nichts.
    """

    def __init__(self, ordner):
        self.ordner = os.path.abspath(ordner)
        self.bestand = None
        self.werkzeuge = None
        self.meldungen = []

    # ------------------------------------------------------------------
    @property
    def gueltig(self):
        """Sieht der Ordner nach einer AquaNox-Installation aus?"""
        return (os.path.isdir(os.path.join(self.ordner, "dat")) or
                os.path.isfile(os.path.join(self.ordner, "Aqua.exe")))

    def oeffnen(self, fortschritt=None):
        if not os.path.isdir(self.ordner):
            self.meldungen.append(f"Ordner nicht gefunden: {self.ordner}")
            return False
        self.werkzeuge = werkzeuge_anmelden(self.ordner)
        if self.werkzeuge is None:
            self.meldungen.append(
                "mod_docu\\tools nicht gefunden -- ohne die Werkzeugkette "
                "koennen PAKs und gekochte Dateien nicht gelesen werden.")
        if fortschritt:
            fortschritt("Bestand wird eingelesen ...")
        self.bestand = Bestand(self.ordner).einlesen(fortschritt=fortschritt)
        self.meldungen.extend(self.bestand.fehler)
        return True

    # ------------------------------------------------------------------
    def uebersicht(self):
        if self.bestand is None:
            return {}
        nach_kat = {}
        for pfad in self.bestand.eintraege:
            k = kategorie(pfad)
            nach_kat[k] = nach_kat.get(k, 0) + 1
        ueberschrieben = sum(1 for e in self.bestand.eintraege.values()
                             if e.ueberschreibt)
        return {
            "ordner": self.ordner,
            "dateien": len(self.bestand),
            "paks": self.bestand.paks,
            "ueberschrieben": ueberschrieben,
            "kategorien": dict(sorted(nach_kat.items())),
            "werkzeuge": self.werkzeuge,
            "meldungen": self.meldungen,
        }

    def karten(self):
        return self.bestand.karten() if self.bestand else {}

    def liste(self, kat=None, muster="", grenze=2000):
        """Eintraege fuer den Asset-Browser."""
        if self.bestand is None:
            return []
        m = muster.lower().strip()
        aus = []
        for pfad, e in sorted(self.bestand.eintraege.items()):
            if kat and kategorie(pfad) != kat:
                continue
            if m and m not in pfad:
                continue
            aus.append({
                "pfad": pfad,
                "quelle": e.quelle,
                "groesse": e.groesse,
                "typ": e.endung,
                "kategorie": kategorie(pfad),
                "ueberschreibt": e.ueberschreibt or "",
            })
            if len(aus) >= grenze:
                break
        return aus
