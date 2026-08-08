"""Die Wissensdatenbank aus mod_docu je Level verfuegbar machen.

WAS HIER PASSIERT: Neben dem Spiel liegen rund 30 JSON-Dateien aus
frueheren Analysen. Zwei davon beschreiben die Level inhaltlich:

    aquanox1_missions.json          30 Kampagnenmissionen (missions)
                                    + 13 weitere Level (other_levels_detail)
    aquanox1_kampagnenstruktur.json der Zustandsautomat aus option~.des,
                                    darin 25 Stationen mit Skriptpfad

*** DIE ZUORDNUNG IST EINDEUTIG. *** Das Feld "id" der Missions-JSON
ist der Kartenname in Grossbuchstaben: 1H1 -> 1h1, INST_ASYLUM ->
inst_asylum. Gemessen: 43 von 43 Karten des Spiels haben einen
Eintrag, und keine JSON-ID bleibt ohne Karte. Deshalb wird schlicht
auf Kleinschreibung verglichen und nicht geraten.

Die Stationen haengen ueber ihren Skriptpfad an einer Karte:
    map\\1n2\\script\\sta_entropointII  ->  Karte 1n2
Mehrere Stationen je Karte kommen vor (1n2 hat sechs Eintraege).

HERKUNFT DER TEXTE, damit niemand sie fuer Spieldaten haelt:
    ziele, hinweise, name_de   woertlich aus dat/sty/briefing_d.des
    funk                       woertlich aus dat/sty/mtake_<karte>_d.des
    technik                    im Lua-Bytecode gezaehlt
    summary_en                 *** NACHERZAEHLUNG. *** Geschrieben nach
                               den Briefings und Funkspruechen des
                               Spiels, abgeglichen mit Komplettloesungen
                               (kultloesungen.de, the-spoiler.com).
                               Kein Spieltext -- und auf Englisch.

Das Modul aendert nichts. Fehlt eine Datei, bleibt der Abschnitt
einfach leer; das ist kein Fehler.
"""
import io
import json
import os
import re


# Der Ordner mit den JSON-Datenbanken. Das Toolkit liegt in
# <irgendwo>\mod_docu\toolkit, die Dateien also eine Ebene darueber.
_HIER = os.path.dirname(os.path.abspath(__file__))
_TOOLKIT = os.path.dirname(os.path.dirname(_HIER))

DATEIEN = {
    "missionen": "aquanox1_missions.json",
    "kampagne": "aquanox1_kampagnenstruktur.json",
    "personen": "aquanox1_personen.json",
    "bausteine": "aquanox1_missionsbausteine.json",
}


def _ordner_kandidaten(projektpfad=None):
    """Wo die JSON-Dateien liegen koennten -- in dieser Reihenfolge."""
    aus = [
        os.path.dirname(_TOOLKIT),               # ...\mod_docu
        os.path.join(_TOOLKIT, "daten"),         # mitgeliefert
        _TOOLKIT,
    ]
    if projektpfad:
        aus.append(os.path.join(projektpfad, "mod_docu"))
        aus.append(projektpfad)
    return aus


class Metadaten:
    """Die JSON-Datenbanken, einmal geladen und nach Karte sortiert."""

    def __init__(self, ordner=None):
        self.ordner = ordner
        self.roh = {}
        self.hinweise = []
        self._nach_karte = {}
        self._stationen = {}

    # ------------------------------------------------------------------
    @classmethod
    def laden(cls, projektpfad=None, ordner=None):
        m = cls()
        kandidaten = [ordner] if ordner else _ordner_kandidaten(projektpfad)
        for k in kandidaten:
            if not k or not os.path.isdir(k):
                continue
            if os.path.isfile(os.path.join(k, DATEIEN["missionen"])):
                m.ordner = k
                break
        if not m.ordner:
            m.hinweise.append(
                "keine Wissensdatenbank gefunden -- gesucht wurde nach "
                + DATEIEN["missionen"] + " in: "
                + ", ".join(str(x) for x in kandidaten if x))
            return m

        for name, datei in DATEIEN.items():
            pfad = os.path.join(m.ordner, datei)
            if not os.path.isfile(pfad):
                m.hinweise.append(f"{datei} fehlt")
                continue
            try:
                with io.open(pfad, encoding="utf-8") as f:
                    m.roh[name] = json.load(f)
            except Exception as e:
                m.hinweise.append(f"{datei} nicht lesbar: {e}")

        m._ordnen()
        return m

    # ------------------------------------------------------------------
    def _ordnen(self):
        """Die Eintraege nach Kartennamen (klein) ablegen."""
        miss = self.roh.get("missionen") or {}
        for feld in ("missions", "other_levels_detail"):
            for e in miss.get(feld) or []:
                kennung = (e.get("id") or "").strip().lower()
                if kennung:
                    self._nach_karte[kennung] = e

        # Stationen: der Skriptpfad nennt die Karte.
        kamp = self.roh.get("kampagne") or {}
        for s in kamp.get("stationen") or []:
            pfad = (s.get("script") or "").replace("/", "\\")
            t = re.match(r"map\\([^\\]+)\\", pfad)
            if t:
                self._stationen.setdefault(t.group(1).lower(), []).append(s)

    # ------------------------------------------------------------------
    @property
    def vorhanden(self):
        return bool(self._nach_karte)

    def karten(self):
        return sorted(self._nach_karte)

    def fuer(self, level):
        """Alles, was ueber diese Karte bekannt ist. Nie None.

        Der Rueckgabewert hat immer dieselben Schluessel, damit die
        Anzeige nicht bei jedem Feld nachfragen muss.
        """
        k = (level or "").strip().lower()
        e = self._nach_karte.get(k) or {}
        stationen = self._stationen.get(k) or []

        # Doppelte Stationsnamen kommen vor (3h3 nennt Atacama City
        # zweimal, 4n2 Neopolis dreimal) -- einmal reicht.
        gesehen, sauber = set(), []
        for s in stationen:
            n = s.get("name")
            if n in gesehen:
                continue
            gesehen.add(n)
            sauber.append(s)

        return {
            "gefunden": bool(e),
            "level": k,
            "id": e.get("id"),
            "name_de": e.get("name_de"),
            "typ": e.get("typ"),
            "kampagne": e.get("kampagne"),
            "kapitel": e.get("kapitel"),
            "kapitel_name": e.get("kapitel_name"),
            "briefing_key": e.get("briefing_key"),
            "ziele": e.get("ziele") or [],
            "hinweise": e.get("hinweise") or [],
            "prosa": e.get("summary_en"),
            "prosa_sprache": "en",
            "karte_bild": e.get("karte"),
            "technik": e.get("technik") or {},
            "funk": e.get("funk") or {},
            "stationen": sauber,
        }

    # ------------------------------------------------------------------
    def sprecher_bilder(self, projekt):
        """Sprechername -> Bildpfade, aus dat/sty/person_d.des.

        Wird fuer die Funkspruch-Kacheln gebraucht. Liest die Tabelle
        des Spiels, nicht die JSON -- die JSON fuehrt keine Bildpfade.
        """
        from ..parser import desbaum as _db

        roh = projekt.bestand.lesen("dat/sty/person_d.des")
        if roh is None:
            return {}
        try:
            wurzeln, _ = _db.lies(roh, "dat/sty/person_d.des")
        except Exception:
            return {}

        aus = {}
        for w in wurzeln:
            for k in getattr(w, "kinder", []):
                if not str(k.name).lower().startswith("person"):
                    continue
                felder = {}
                for f in getattr(k, "kinder", []):
                    if f.art == "feld":
                        felder[str(f.name).lower()] = f.wert
                name = felder.get("name")
                if not isinstance(name, str):
                    continue
                aus[name.strip()] = {
                    "key": felder.get("key"),
                    "name": name.strip(),
                    "kurz": felder.get("shortname"),
                    "sex": felder.get("sex"),
                    "elf": felder.get("imageelf"),
                    "gross": felder.get("image"),
                    "klein": felder.get("imagesmall"),
                    "knopf": felder.get("imagebutton"),
                }
        return aus

    def stimmungen(self, projekt):
        """Mood-Key -> Bezeichnung, aus dat/sty/mood_d.des.

        24 Eintraege. Die Bildfelder ImageM/ImageF sind in ALLEN
        LEER -- die Stimmung ist ein Wort, kein Bild (Handoff 189).
        """
        from ..parser import desbaum as _db

        roh = projekt.bestand.lesen("dat/sty/mood_d.des")
        if roh is None:
            return {}
        try:
            wurzeln, _ = _db.lies(roh, "dat/sty/mood_d.des")
        except Exception:
            return {}
        aus = {}
        for w in wurzeln:
            for k in getattr(w, "kinder", []):
                if not str(k.name).lower().startswith("mood"):
                    continue
                felder = {}
                for f in getattr(k, "kinder", []):
                    if f.art == "feld":
                        felder[str(f.name).lower()] = f.wert
                key = felder.get("key")
                text = (felder.get("text") or felder.get("name")
                        or felder.get("mood"))
                if key is not None:
                    try:
                        aus[int(key)] = str(text).strip() if text else ""
                    except (TypeError, ValueError):
                        pass
        return aus
