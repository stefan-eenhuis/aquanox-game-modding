"""PAK-Archive lesen und nach Override-Logik zusammenfuehren.

GRUNDLAGE (Handoff, PAK-Abschnitt): Die Engine laedt dat\\pak\\aquanox%d.pak
der Reihe nach; hoehere Nummern ueberschreiben niedrigere. aquanox7.pak
wird gelesen -- im Spiel bestaetigt.

Diese Datei benutzt pak_tool.py aus mod_docu/tools und liest NUR.
"""
import os
import re

from . import werkzeuge_pfad


class Eintrag:
    """Eine Datei im zusammengefuehrten Bestand."""

    __slots__ = ("pfad", "quelle", "groesse", "offset", "ueberschreibt")

    def __init__(self, pfad, quelle, groesse, offset=0):
        self.pfad = pfad              # "dat/menu/text.des", immer klein, /
        self.quelle = quelle          # Dateiname des PAK oder "<lose>"
        self.groesse = groesse
        self.offset = offset
        self.ueberschreibt = None     # Quelle, die dadurch verdeckt wird

    @property
    def endung(self):
        return os.path.splitext(self.pfad)[1].lower().lstrip(".")

    def __repr__(self):
        return f"Eintrag({self.pfad!r}, {self.quelle}, {self.groesse} B)"


# Grobe Einordnung fuer den Asset-Browser.
KATEGORIEN = {
    "map":      {"hint": "Karten"},
    "script":   {"endungen": {"sco", "scr", "ssc", "lua"}},
    "des":      {"endungen": {"des", "osd"}},
    "textur":   {"endungen": {"tga", "dds", "bmp", "jpg"}},
    "mesh":     {"endungen": {"msb", "msh", "col", "boa"}},
    "audio":    {"endungen": {"mp3", "wav", "sam", "bik"}},
    "sonstige": {"endungen": set()},
}


def kategorie(pfad):
    e = os.path.splitext(pfad)[1].lower().lstrip(".")
    p = pfad.replace("\\", "/").lower()
    if e in ("sco", "scr", "ssc", "lua"):
        return "script"
    if e in ("des", "osd"):
        return "des"
    if e in ("tga", "dds", "bmp", "jpg"):
        return "textur"
    if e in ("msb", "msh", "col", "boa"):
        return "mesh"
    if e in ("mp3", "wav", "sam", "bik"):
        return "audio"
    if p.startswith("map/"):
        return "map"
    return "sonstige"


class Bestand:
    """Der zusammengefuehrte Dateibestand eines AquaNox-Ordners.

    Beruecksichtigt beides: die PAK-Archive (mit Override nach Nummer)
    und lose Dateien im Spielordner, die die Engine ebenfalls findet --
    darunter der bereits entpackte Bestand unter dat/pak/extracted.
    """

    def __init__(self, spielordner):
        self.spielordner = spielordner
        self.eintraege = {}        # pfad -> Eintrag
        self.paks = []             # (nummer, dateiname, anzahl)
        self.fehler = []

    # ------------------------------------------------------------------
    def einlesen(self, mit_extracted=True, fortschritt=None):
        """Liest alle PAKs und optional den entpackten Bestand."""
        self._paks_einlesen(fortschritt)
        if mit_extracted:
            self._extracted_einlesen(fortschritt)
        return self

    def _paks_einlesen(self, fortschritt=None):
        pakordner = os.path.join(self.spielordner, "dat", "pak")
        if not os.path.isdir(pakordner):
            self.fehler.append(f"kein Ordner dat\\pak in {self.spielordner}")
            return
        try:
            import pak_tool
        except ImportError as e:
            self.fehler.append(f"pak_tool nicht ladbar: {e}")
            return

        dateien = []
        for n in sorted(os.listdir(pakordner)):
            if not n.lower().endswith(".pak"):
                continue
            m = re.search(r"(\d+)", n)
            dateien.append((int(m.group(1)) if m else 0, n))
        dateien.sort()                      # niedrige zuerst -> hohe gewinnen

        for nummer, name in dateien:
            voll = os.path.join(pakordner, name)
            try:
                liste = pak_tool.list_pak(voll)
            except Exception as e:
                self.fehler.append(f"{name}: {e}")
                continue
            anzahl = 0
            for datei in liste:
                pfad, groesse, offset = self._eintrag_zerlegen(datei)
                if pfad is None:
                    continue
                self._aufnehmen(Eintrag(pfad, name, groesse, offset))
                anzahl += 1
            self.paks.append((nummer, name, anzahl))
            if fortschritt:
                fortschritt(f"{name}: {anzahl} Dateien")

    @staticmethod
    def _eintrag_zerlegen(datei):
        """pak_tool liefert je nach Fassung Tupel oder Objekte."""
        try:
            if isinstance(datei, (tuple, list)):
                pfad = str(datei[0])
                groesse = int(datei[1]) if len(datei) > 1 else 0
                offset = int(datei[2]) if len(datei) > 2 else 0
            elif isinstance(datei, dict):
                pfad = str(datei.get("name") or datei.get("pfad"))
                groesse = int(datei.get("size") or datei.get("groesse") or 0)
                offset = int(datei.get("offset") or 0)
            else:
                pfad = str(getattr(datei, "name", datei))
                groesse = int(getattr(datei, "size", 0))
                offset = int(getattr(datei, "offset", 0))
        except Exception:
            return None, 0, 0
        return pfad.replace("\\", "/").lower(), groesse, offset

    def _extracted_einlesen(self, fortschritt=None):
        wurzel = os.path.join(self.spielordner, "dat", "pak", "extracted")
        if not os.path.isdir(wurzel):
            return
        anzahl = 0
        for ordner, _, namen in os.walk(wurzel):
            for n in namen:
                voll = os.path.join(ordner, n)
                rel = os.path.relpath(voll, wurzel).replace("\\", "/").lower()
                try:
                    groesse = os.path.getsize(voll)
                except OSError:
                    continue
                self._aufnehmen(Eintrag(rel, "<entpackt>", groesse))
                anzahl += 1
        self.paks.append((99, "<entpackt>", anzahl))
        if fortschritt:
            fortschritt(f"entpackter Bestand: {anzahl} Dateien")

    def _aufnehmen(self, e):
        alt = self.eintraege.get(e.pfad)
        if alt is not None:
            e.ueberschreibt = alt.quelle
        self.eintraege[e.pfad] = e

    # ------------------------------------------------------------------
    def lesen(self, pfad):
        """Gibt den Inhalt einer Datei zurueck (bytes) oder None.

        Bevorzugt die entpackte Fassung, weil sie ohne PAK-Zugriff
        auskommt; sonst wird aus dem PAK gelesen.
        """
        pfad = pfad.replace("\\", "/").lower()
        e = self.eintraege.get(pfad)
        if e is None:
            return None
        if e.quelle == "<entpackt>":
            voll = os.path.join(self.spielordner, "dat", "pak", "extracted",
                                *pfad.split("/"))
            try:
                with open(voll, "rb") as f:       # nur lesen
                    return f.read()
            except OSError:
                return None
        try:
            import pak_tool
            voll = os.path.join(self.spielordner, "dat", "pak", e.quelle)
            return pak_tool.read_file(voll, pfad)
        except Exception:
            return None

    def dateipfad(self, pfad):
        """Ein echter Dateipfad, falls die Datei entpackt vorliegt."""
        pfad = pfad.replace("\\", "/").lower()
        e = self.eintraege.get(pfad)
        if e is None or e.quelle != "<entpackt>":
            return None
        return os.path.join(self.spielordner, "dat", "pak", "extracted",
                            *pfad.split("/"))

    # ------------------------------------------------------------------
    def karten(self):
        """Alle Level, erkannt an map/<name>/terrain/hmap.tga."""
        gefunden = {}
        for pfad in self.eintraege:
            teile = pfad.split("/")
            if len(teile) >= 3 and teile[0] == "map":
                gefunden.setdefault(teile[1], {"name": teile[1],
                                               "hat_terrain": False,
                                               "skripte": []})
                if teile[-1] == "hmap.tga":
                    gefunden[teile[1]]["hat_terrain"] = True
                if pfad.endswith(".sco"):
                    gefunden[teile[1]]["skripte"].append(pfad)
        return dict(sorted(gefunden.items()))

    def nach_kategorie(self):
        z = {}
        for pfad, e in self.eintraege.items():
            z.setdefault(kategorie(pfad), []).append(e)
        return z

    def __len__(self):
        return len(self.eintraege)
