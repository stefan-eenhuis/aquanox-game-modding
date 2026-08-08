"""Funksprueche aufloesen: Key -> Text, Sprecher, Portrait, Audio.

*** EIN KEY VERBINDET VIER DINGE (Handoff 42): ***

    dat\\sty\\mtake_<karte>_d.des     die Takes der Karte
    dat\\sty\\mtake_gen_d.des         80 kartenunabhaengige Takes
        [TakeN] { Key, Person, Text, Wav, Mood }

    dat\\sty\\person_d.des    85 Personen, je VIER Bilder
    dat\\sty\\mood_d.des      24 Stimmungen (nur Text, keine Bilder)

    Audio:  sfx\\sample\\<Wav>.mp3      -- das Wav-Feld nennt den Pfad
                                          OHNE Endung; die Dateien
                                          sind MP3, nicht WAV.

WELCHES PORTRAIT TAUGT WOFUER -- gemessen an allen 85 Personen:
    ImageSmall  64x64    rundes Portrait mit gelbem Ring   <== Kachel
    Image       256x256  freigestelltes Brustbild          <== gross
    ImageElf    128x128  *** UNBRAUCHBAR als Portrait. ***
                Alle 84 Alphakanaele sind BYTEIDENTISCH -- das ist
                eine feste HUD-Schablone, kein Freisteller.
    ImageButton 128x128  *** UNBRAUCHBAR. *** Nur ein waagerechter
                Augenstreifen, der Rest hart transparent.

*** SPRECHER-KEY 0 HAT KEINEN EINTRAG in person_d.des. *** Er kommt
in 109 Takes und 34 Karten vor und ist nach Sally der zweithaeufigste
"Sprecher": die Systemstimme des Bordrechners (Texte in
Grossbuchstaben). Die Personen-Keys laufen 1..92, es fehlen
0, 7, 21, 27, 54, 87, 88, 89.

Dieses Modul liest nur.
"""
import re


def _des_bloecke(rohdaten, praefix):
    """Bloecke der Form [Praefix<N>] { Feld = Wert ... } lesen.

    Eigener Leser statt desbaum, weil hier nur flache Bloecke mit
    Schluessel-Wert-Paaren gebraucht werden und die Dateien Klartext
    sind.
    """
    if rohdaten is None:
        return []
    text = rohdaten.decode("latin-1", "replace")
    aus = []
    muster = re.compile(
        r"\[" + praefix + r"\d*\]\s*\{(.*?)\}", re.S | re.I)
    for m in muster.finditer(text):
        felder = {}
        for f in re.finditer(r"(\w+)\s*=\s*(\"[^\"]*\"|[^\s\r\n}]+)",
                             m.group(1)):
            wert = f.group(2).strip()
            if wert.startswith("\""):
                wert = wert[1:-1]
            felder[f.group(1).strip().lower()] = wert
        if felder:
            aus.append(felder)
    return aus


def _stimmungen_lesen(rohdaten):
    """Mood-Key -> Bezeichnung, aus den Kommentaren von mood_d.des.

    Die deutsche Bezeichnung steht vor dem Bindestrich:
        // sarkastisch - sarcastical   ->  "sarkastisch"
        // neutral                     ->  "neutral"
    """
    if rohdaten is None:
        return {}
    text = rohdaten.decode("latin-1", "replace")
    aus = {}
    for m in re.finditer(
            r"\[Mood\d+\]\s*\{\s*//\s*([^\r\n]*?)\s*\r?\n\s*Key\s*=\s*(\d+)",
            text):
        wort = m.group(1).split("-")[0].strip()
        aus[int(m.group(2))] = wort
    return aus


def _zahl(w, standard=None):
    try:
        return int(str(w).strip())
    except (TypeError, ValueError):
        return standard


class Funk:
    """Die Nachschlagetabellen fuer eine Karte."""

    def __init__(self):
        self.takes = {}        # key -> dict
        self.personen = {}     # key -> dict
        self.stimmungen = {}   # key -> str
        self.hinweise = []

    # ------------------------------------------------------------------
    @classmethod
    def laden(cls, bestand, karte=None):
        f = cls()

        for p in _des_bloecke(bestand.lesen("dat/sty/person_d.des"),
                              "Person"):
            k = _zahl(p.get("key"))
            if k is None:
                continue
            f.personen[k] = {
                "key": k,
                "name": p.get("name") or "",
                "kurz": p.get("shortname") or "",
                "sex": p.get("sex") or "",
                "klein": p.get("imagesmall") or "",
                "gross": p.get("image") or "",
            }

        # *** DIE STIMMUNG STEHT NUR IM KOMMENTAR. ***
        # mood_d.des hat je Block nur Key, ImageM und ImageF -- und
        # die beiden Bildfelder sind in ALLEN 24 leer. Die
        # Bezeichnung haben die Entwickler als Kommentar
        # danebengeschrieben, meist zweisprachig:
        #     [Mood1] { // sarkastisch - sarcastical
        #               Key = 2  ImageM = ""  ImageF = "" }
        # Wer nur die Felder liest, bekommt 24 leere Eintraege.
        f.stimmungen = _stimmungen_lesen(bestand.lesen("dat/sty/mood_d.des"))

        # Erst die kartenweite Tabelle, dann die allgemeine. Bei
        # gleichem Key gewinnt die kartenweite.
        dateien = []
        if karte:
            dateien.append(f"dat/sty/mtake_{karte}_d.des")
        dateien += ["dat/sty/mtake_gen_d.des", "dat/sty/mtake_mp_d.des"]
        for d in reversed(dateien):
            roh = bestand.lesen(d)
            if roh is None:
                continue
            for t in _des_bloecke(roh, "Take"):
                k = _zahl(t.get("key"))
                if k is None:
                    continue
                f.takes[k] = {
                    "key": k,
                    "text": t.get("text") or "",
                    "person": _zahl(t.get("person"), 0),
                    "mood": _zahl(t.get("mood"), 0),
                    "wav": (t.get("wav") or "").strip(),
                    "quelle": d,
                }

        if not f.takes:
            f.hinweise.append(
                f"keine Takes gefunden (gesucht: {', '.join(dateien)})")
        return f

    # ------------------------------------------------------------------
    def auf(self, key, bestand=None):
        """Alles zu einem Take. Nie None -- fehlende Teile sind leer."""
        t = self.takes.get(key)
        if not t:
            return {"key": key, "gefunden": False, "text": "",
                    "sprecher": "", "stimmung": "", "bild": None,
                    "audio": None, "person": None}

        p = self.personen.get(t["person"])
        # Key 0 ist die Systemstimme des Bordrechners -- sie steht
        # nicht in person_d.des und braucht kein Portrait.
        if p is None and t["person"] == 0:
            sprecher = "Bordrechner"
        else:
            sprecher = (p or {}).get("name") or f"Person {t['person']}"

        audio = None
        if t["wav"] and bestand is not None:
            basis = "sfx/sample/" + t["wav"].replace("\\", "/")
            for endung in (".mp3", ".wav", ".sam"):
                if basis + endung in bestand.eintraege:
                    audio = basis + endung
                    break

        bild = (p or {}).get("klein") or None
        if bild:
            bild = bild.replace("\\", "/").lower()
            if bestand is not None and bild not in bestand.eintraege:
                bild = None

        gross = (p or {}).get("gross") or None
        if gross:
            gross = gross.replace("\\", "/").lower()
            if bestand is not None and gross not in bestand.eintraege:
                gross = None

        return {
            "key": key, "gefunden": True,
            "text": t["text"], "sprecher": sprecher,
            "person": t["person"],
            "stimmung": self.stimmungen.get(t["mood"], ""),
            "mood": t["mood"],
            "bild": bild, "bild_gross": gross,
            "audio": audio, "wav": t["wav"],
            "quelle": t["quelle"],
        }

    def kennzahlen(self):
        return {"takes": len(self.takes), "personen": len(self.personen),
                "stimmungen": len(self.stimmungen)}
