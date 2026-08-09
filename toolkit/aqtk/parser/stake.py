"""Die Stationsdialoge als Knotengraph -- im Format von triggernetz.py.

*** ZWEI EBENEN VON VERKNUEPFUNGEN, beide gemessen: ***

    dat\\sty\\sdialog~.des    211 [dialogN] mit
                             key, type (story|substory), name, station,
                             room, numoftake, take0..takeN
        Die takeN sind stake-Keys IN REIHENFOLGE -- das ist der
        Gespraechsverlauf. 1.269 Referenzen, alle 1.269 Takes
        getroffen, keiner verwaist, keiner doppelt: eine exakte
        1:1-Partition. Kuerzester Dialog 1 Take, Median 5,
        laengster 19.

    dat\\sty\\option~.des     309 [optionN] mit
                             key, type, typekey, numofcommand,
                             commandN { command, key }
        type ist eines von dialog (206), briefing (40), mission (32),
        station (23), movie (6), clip (1), quitgame (1).
        Die Kommandos AddOption / SubOption / ActivateOption /
        DeactivateOption tragen einen Ziel-key -- das sind die
        gerichteten KANTEN zwischen Dialogen, Missionen, Stationen
        und Filmen.

    dat\\sty\\stake_d.des     1.269 Takes, Felder wie beim Funk:
                             Key, Person, Text, Wav, Mood
        *** Vollstaendiger als die Funksprueche: *** alle vier Felder
        in 1.269 von 1.269 belegt, und Portrait wie Audiodatei sind
        zu 100 Prozent vorhanden.

DER TAKE SELBST TRAEGT KEIN Next/Antwort/Goto-Feld -- die Reihenfolge
steht allein in sdialog. Wer im Take nach einer Verkettung sucht,
findet nichts und koennte faelschlich schliessen, es gebe keine.

Dieses Modul liest NUR.
"""
import collections
import os


def _bloecke(wurzeln, praefix):
    """Alle Knoten, deren Name mit praefix beginnt, samt Feldern.

    Der Baum aus desbaum ist verschachtelt; gesucht wird ueberall.
    """
    aus = []

    def geh(kn):
        name = str(kn.name).lower()
        if kn.art != "feld" and name.startswith(praefix):
            felder = {}
            unter = []
            for f in kn.kinder:
                if f.art == "feld":
                    felder[str(f.name).lower()] = f.wert
                else:
                    unter.append(f)
            aus.append((kn, felder, unter))
        for k in kn.kinder:
            geh(k)

    for w in wurzeln:
        geh(w)
    return aus


def _zahl(w, standard=None):
    try:
        return int(str(w).strip())
    except (TypeError, ValueError):
        return standard


# Die Kommandos, die eine Kante zwischen zwei Optionen ziehen.
_KANTENBEFEHLE = {
    "addoption": ("fuegt_hinzu", "#6ac47a"),
    "suboption": ("entfernt", "#d9564a"),
    "activateoption": ("aktiviert", "#4a90d9"),
    "deactivateoption": ("deaktiviert", "#d9a24a"),
}


class Dialognetz:

    def __init__(self):
        self.knoten = {}
        self.kanten = []
        self.dialoge = {}        # sdialog-key -> dict
        self.hinweise = []

    def kennzahlen(self):
        arten = collections.Counter(k["art"] for k in self.knoten.values())
        kanten = collections.Counter(k["art"] for k in self.kanten)
        return {
            "knoten": len(self.knoten),
            "kanten": len(self.kanten),
            "knoten_nach_art": dict(arten),
            "kanten_nach_art": dict(kanten),
            "dialoge": len(self.dialoge),
            "funksprueche": sum(len(n["funk"]) for n in self.knoten.values()),
            "startknoten": sum(1 for n in self.knoten.values()
                               if n["ist_start"]),
            "endknoten": sum(1 for n in self.knoten.values()
                             if n["missionsende"] is not None),
        }


def lies(bestand):
    """Baut das Dialognetz aus sdialog~.des und option~.des."""
    from . import desbaum as _db

    netz = Dialognetz()

    # --- Die Dialoge mit ihrer Take-Reihenfolge
    roh = bestand.lesen("dat/sty/sdialog~.des")
    if roh is None:
        netz.hinweise.append("dat/sty/sdialog~.des nicht gefunden")
    else:
        wurzeln, _ = _db.lies(roh, "dat/sty/sdialog~.des")
        for _kn, f, _u in _bloecke(wurzeln, "dialog"):
            key = _zahl(f.get("key"))
            if key is None:
                continue
            n = _zahl(f.get("numoftake"), 0) or 0
            takes = []
            for i in range(max(n, 40)):
                w = f.get(f"take{i}")
                if w is None:
                    continue
                t = _zahl(w)
                if t is not None:
                    takes.append(t)
            netz.dialoge[key] = {
                "key": key,
                "art": str(f.get("type") or "").strip(),
                "name": str(f.get("name") or "").strip(),
                "station": _zahl(f.get("station")),
                "raum": _zahl(f.get("room")),
                "takes": takes,
            }

    # --- Die Optionen: Knoten und Kanten
    roh = bestand.lesen("dat/sty/option~.des")
    if roh is None:
        netz.hinweise.append("dat/sty/option~.des nicht gefunden")
        return netz
    wurzeln, _ = _db.lies(roh, "dat/sty/option~.des")

    for _kn, f, unter in _bloecke(wurzeln, "option"):
        key = _zahl(f.get("key"))
        if key is None:
            continue
        art = str(f.get("type") or "").strip().lower()
        kennung = str(key)
        # Doppelte Keys kommen vor (gemessen: Key 175 zweimal, beide
        # leer). Der zweite ueberschreibt den ersten nicht.
        if kennung in netz.knoten:
            netz.hinweise.append(f"Options-Key {key} kommt mehrfach vor")
            continue

        befehle = []
        for u in unter:
            uf = {str(x.name).lower(): x.wert
                  for x in u.kinder if x.art == "feld"}
            b = str(uf.get("command") or "").strip()
            ziel = _zahl(uf.get("key"))
            if b:
                befehle.append(f"{b}"
                               + (f" {ziel}" if ziel is not None else ""))
            kb = _KANTENBEFEHLE.get(b.lower())
            if kb and ziel is not None:
                netz.kanten.append({"von": kennung, "nach": str(ziel),
                                    "art": kb[0], "methode": b})

        netz.knoten[kennung] = {
            "id": kennung, "art": art or "unbekannt",
            "typkey": _zahl(f.get("typekey")),
            "name": "", "befehle": befehle,
            "funk": [], "missionsende": None, "verzoegerung": None,
            "szenenknoten": None, "ist_start": (key == 1),
            "codebloecke": [], "dyn_sprung": False,
            "grad_ein": 0, "grad_aus": 0, "zeile": 0,
        }
        if art == "quitgame":
            # Nutzt die vorhandene "Ende"-Fahne der Anzeige.
            netz.knoten[kennung]["missionsende"] = 0

    # Kanten, deren Ziel es nicht gibt, ausdruecklich melden
    fehl = [k for k in netz.kanten if k["nach"] not in netz.knoten]
    if fehl:
        netz.hinweise.append(
            f"{len(fehl)} Kanten zeigen auf eine Option, die es nicht gibt")
    netz.kanten = [k for k in netz.kanten if k["nach"] in netz.knoten]

    for k in netz.kanten:
        netz.knoten[k["von"]]["grad_aus"] += 1
        netz.knoten[k["nach"]]["grad_ein"] += 1
    return netz


def takes_anhaengen(netz, bestand, stationen=None):
    """Die Gespraechs-Takes an die dialog-Knoten haengen.

    Nutzt mtake.Funk fuer Personen und Stimmungen -- dieselben
    Tabellen -- aber stake_d.des statt der mtake-Dateien.
    Die Kacheln bekommen dasselbe Format wie beim Funk, damit
    graph.js sie ohne Umbau zeigt.
    """
    from . import mtake as _mt

    funk = _mt.Funk.laden(bestand)          # Personen + Stimmungen
    funk.takes = {}                          # die mtake-Takes weg
    for t in _mt._des_bloecke(bestand.lesen("dat/sty/stake_d.des"), "Take"):
        k = _zahl(t.get("key"))
        if k is None:
            continue
        funk.takes[k] = {
            "key": k, "text": t.get("text") or "",
            "person": _zahl(t.get("person"), 0),
            "mood": _zahl(t.get("mood"), 0),
            "wav": (t.get("wav") or "").strip(),
            "quelle": "dat/sty/stake_d.des",
        }

    # dialog-Option -> sdialog ueber typkey
    ohne_dialog = 0
    for kn in netz.knoten.values():
        if kn["art"] != "dialog":
            continue
        d = netz.dialoge.get(kn["typkey"])
        if not d:
            ohne_dialog += 1
            continue
        kn["name"] = d["name"]
        if stationen and d["station"] in stationen:
            kn["szenenknoten"] = {"name": stationen[d["station"]],
                                  "pfad": ""}
        for key in d["takes"]:
            a = funk.auf(key, bestand)
            kn["funk"].append({
                "key": key, "text": a["text"], "sprecher": a["sprecher"],
                "stimmung": a["stimmung"], "person": a["person"],
                "bild": (f"aqua:/bild/{a['bild']}?h=64" if a["bild"]
                         else None),
                "ton": f"aqua:/ton/{a['audio']}" if a["audio"] else None,
                "gefunden": a["gefunden"],
            })
    if ohne_dialog:
        netz.hinweise.append(
            f"{ohne_dialog} dialog-Optionen ohne Eintrag in sdialog~.des")

    # Dialoge, die keine Option auf sich zeigen hat
    benutzt = {kn["typkey"] for kn in netz.knoten.values()
               if kn["art"] == "dialog"}
    verwaist = [d for k, d in netz.dialoge.items() if k not in benutzt]
    if verwaist:
        netz.hinweise.append(
            f"{len(verwaist)} Dialoge werden von keiner Option aufgerufen "
            f"(alle vom Typ substory) -- sie fehlen im Graph")
    return netz


def ebenen(netz):
    """Wie triggernetz.ebenen(): Breitensuche, zyklenfest."""
    nachfolger = collections.defaultdict(list)
    for k in netz.kanten:
        nachfolger[k["von"]].append(k["nach"])
    ebene = {}
    start = [n for n, v in netz.knoten.items()
             if v["ist_start"] or v["grad_ein"] == 0]
    if not start:
        start = sorted(netz.knoten)[:1]
    rand = list(dict.fromkeys(start))
    for n in rand:
        ebene[n] = 0
    tiefe = 0
    while rand and tiefe < 200:
        tiefe += 1
        weiter = []
        for n in rand:
            for z in nachfolger.get(n, ()):
                if z not in ebene:
                    ebene[z] = tiefe
                    weiter.append(z)
        rand = weiter
    for n in netz.knoten:
        ebene.setdefault(n, tiefe + 1)
    return ebene
