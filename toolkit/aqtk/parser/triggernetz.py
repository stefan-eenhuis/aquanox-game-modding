"""Das Triggernetz einer Mission als Graph.

*** WARUM AUS DEM DEKOMPILAT UND NICHT AUS DEM BYTECODE: ***
In mod_docu\\an1_missionen_lua\\ liegen 88 fertige Dekompilate, mit
tools\\lua4dec.py erzeugt. Sie enthalten dieselbe Information
vollstaendig und in lesbarer Form. Der eigene Bytecode-Aufrufleser
(parser/aufrufe.py) findet dagegen nur 86 bis 92 Prozent der
CALL-Opcodes -- er belegt den Stapel nicht mit den Parametern vor und
ignoriert die Sprungbefehle, die ihre Operanden abraeumen. Dadurch
verliert er DelayedFunction und StopAllActiveBehaviours_AndCall
vollstaendig und rund die Haelfte der CallFunction-Aufrufe.

WAS EINE MISSION IST (Handoff 145, hier bestaetigt): ein
DATENFLUSSNETZ, keine Zustandsmaschine. Jeder Knoten des
Missionseditors wurde zu einer Lua-Tabelle:

    o1697 = { [nil] = {},
      GetCalculated  = function() ... o1655.Value ... end,
      ReCalculate    = function() o1697.SetStateValue(...) end,
      StartCalculate = function() o1697["Value"] = ... end,
      ChangeTo1      = function() SendRadioMessageTake(...) end,
      SetStateValue  = function(L0) ... end }

Ein Knoten rechnet einen Wert aus; aendert der sich, laufen seine
CodeN-Bloecke. Das sind die Aktionen.

DREI KANTENARTEN, alle gerichtet:
    daten   A.GetCalculated / CheckCondition liest B.Value      B -> A
    melde   A.SetStateValue ruft B.ReCalculate / StartCalculate  A -> B
    ruf     CallFunction(B, "Methode") ueber Knotengrenze        A -> B

*** DIE VERZOEGERUNG IST KEINE KANTE, SONDERN EINE EIGENSCHAFT. ***
DelayedFunction(sekunden, oN, "SetDelayedStateValue", L0) wurde
zuerst als vierte Kantenart gefuehrt und lieferte null Treffer. Der
Regex war richtig -- die MODELLIERUNG war falsch:

    1h1   5 von  5 DelayedFunction zeigen auf den eigenen Knoten
    6h3  60 von 60 ebenso

Ein Knoten verzoegert also seine EIGENE Zustandsaenderung, er
schickt nichts an einen anderen. Deshalb steht die Verzoegerung
jetzt am Knoten (Feld "verzoegerung", in Sekunden).
Gemessene Spanne: 1e-06 bis 73,13 Sekunden.

*** DIE BRUECKE ZUM SZENENGRAPH: ***
    BindEasy(Node_Find("/Scenario_Static/Object"), "elt_asylum_1", S_o30)
haengt eine Befehlstabelle an einen benannten Szenenknoten. oN und
S_oN sind DERSELBE Knoten -- die Namensgleichheit gilt in ueber 99
Prozent der Faelle (Ausnahme je Karte: G_ScriptTimerThread).

Dieses Modul liest NUR. Es schreibt nichts und aendert nichts.
"""
import collections
import os
import re


# ---------------------------------------------------------------- Fundort
def _kandidaten(toolkit_ordner):
    """Wo die Dekompilate liegen koennten."""
    mod_docu = os.path.dirname(toolkit_ordner)
    return [
        os.path.join(mod_docu, "an1_missionen_lua"),
        os.path.join(toolkit_ordner, "an1_missionen_lua"),
        os.path.join(mod_docu, "lua"),
    ]


_HIER = os.path.dirname(os.path.abspath(__file__))
_TOOLKIT = os.path.dirname(os.path.dirname(_HIER))


def dekompilat_finden(level, ordner=None):
    """Den Pfad zum Dekompilat einer Karte finden, sonst None."""
    n = (level or "").strip().lower()
    if not n:
        return None
    ordner_liste = [ordner] if ordner else _kandidaten(_TOOLKIT)
    for o in ordner_liste:
        if not o or not os.path.isdir(o):
            continue
        for name in (f"{n}.lua", f"{n}.LUA"):
            p = os.path.join(o, name)
            if os.path.isfile(p):
                return p
        # Gross-/Kleinschreibung des Dateisystems umgehen
        try:
            for datei in os.listdir(o):
                if datei.lower() == f"{n}.lua":
                    return os.path.join(o, datei)
        except OSError:
            pass
    return None


# ---------------------------------------------------------------- Muster
_TABELLE = re.compile(r"^(o\d+|[A-Za-z_]\w*)\s*=\s*\{\s*\[nil\]", re.M)
_NAECHSTE = re.compile(r"^(?:o\d+|[A-Za-z_]\w*)\s*=\s*\{\s*\[nil\]", re.M)
_METHODE = re.compile(r"(\w+)\s*=\s*function")
_LIEST_WERT = re.compile(r"\b(o\d+)\s*\.\s*Value\b")
_MELDET = re.compile(r"\b(o\d+)\s*\.\s*(ReCalculate|StartCalculate)\s*\(")
_RUFT = re.compile(r"CallFunction\s*\(\s*(o\d+)\s*,\s*\"([^\"]*)\"")
_ZEIT = re.compile(r"DelayedFunction\s*\(\s*([-\d.eE+]+)\s*,\s*(o\d+)")
_FUNK = re.compile(
    r"SendRadioMessageTake\s*\(\s*([^,]+?)\s*,\s*([^,]+?)\s*,\s*(\d+)\s*\)")
_ENDE = re.compile(r"Game_MissionEnd\s*\([^,]+,\s*(-?\d+)")
_BEFEHL = re.compile(r"\b([A-Z]\w*_\w+|\w+Lib\.\w+)\s*\(")
_BINDEASY = re.compile(
    r"BindEasy\s*\(\s*Node_Find\s*\(\s*\"([^\"]*)\"\s*\)\s*,\s*"
    r"\"([^\"]*)\"\s*,\s*(\w+)\s*\)")
_START = re.compile(r"^\s*(o\d+)\s*\.\s*Start\s*\(\s*\)", re.M)
_CODEBLOCK = re.compile(r"\bCode(\d+)\s*=\s*function")
_KETTE = re.compile(r"CallFunction\s*\(\s*(?:L0\.Thread|self)\s*,\s*"
                    r"\"Code(\d+)\"")
_DYNSPRUNG = re.compile(r"StopAllActiveBehaviours_AndCall")


def _kanonisch(name):
    """S_o30 und o30 sind derselbe Knoten."""
    if name.startswith("S_o"):
        return name[2:]
    return name


class Netz:
    """Das Triggernetz einer Karte."""

    def __init__(self, level, quelle):
        self.level = level
        self.quelle = quelle
        self.knoten = {}          # id -> dict
        self.kanten = []          # dicts mit von/nach/art/...
        self.hinweise = []

    # ------------------------------------------------------------------
    def kennzahlen(self):
        nach_art = collections.Counter(k["art"] for k in self.kanten)
        funk = sum(len(n["funk"]) for n in self.knoten.values())
        return {
            "knoten": len(self.knoten),
            "kanten": len(self.kanten),
            "kanten_nach_art": dict(nach_art),
            "funksprueche": funk,
            "startknoten": sum(1 for n in self.knoten.values()
                               if n["ist_start"]),
            "verzoegert": sum(1 for n in self.knoten.values()
                              if n.get("verzoegerung") is not None),
            "endknoten": sum(1 for n in self.knoten.values()
                             if n["missionsende"] is not None),
            "gebunden": sum(1 for n in self.knoten.values()
                            if n["szenenknoten"]),
            "vereinzelt": sum(1 for n in self.knoten.values()
                              if not n["grad_ein"] and not n["grad_aus"]),
        }


def lies(pfad, level=None):
    """Ein Dekompilat lesen und das Netz aufbauen."""
    with open(pfad, encoding="latin-1") as f:
        text = f.read()

    netz = Netz(level or os.path.splitext(os.path.basename(pfad))[0], pfad)

    # --- Die Bindungen an Szenenknoten. Sie stehen ausserhalb der
    #     Tabellen, meist in __InitLayout, und werden zuerst gelesen.
    bindungen = {}
    for m in _BINDEASY.finditer(text):
        pfad_szene, name, tabelle = m.group(1), m.group(2), m.group(3)
        bindungen[_kanonisch(tabelle)] = {"pfad": pfad_szene, "name": name}

    startmenge = {m.group(1) for m in _START.finditer(text)}

    # --- Die Tabellen abgrenzen. Eine Tabelle reicht bis zur naechsten.
    treffer = list(_TABELLE.finditer(text))
    for i, m in enumerate(treffer):
        roh_name = m.group(1)
        name = _kanonisch(roh_name)
        anfang = m.start()
        ende = treffer[i + 1].start() if i + 1 < len(treffer) else len(text)
        koerper = text[anfang:ende]
        zeile = text.count("\n", 0, anfang) + 1

        eintrag = netz.knoten.get(name)
        if eintrag is None:
            eintrag = {
                "id": name, "zeile": zeile, "quelle": [],
                "methoden": [], "befehle": [], "funk": [],
                "missionsende": None, "szenenknoten": None,
                "verzoegerung": None,
                "ist_start": name in startmenge,
                "codebloecke": [], "dyn_sprung": False,
                "grad_ein": 0, "grad_aus": 0, "art": "wert",
            }
            netz.knoten[name] = eintrag
        eintrag["quelle"].append({"tabelle": roh_name, "zeile": zeile,
                                  "zeichen": len(koerper)})

        methoden = sorted(set(_METHODE.findall(koerper)))
        eintrag["methoden"] = sorted(set(eintrag["methoden"]) | set(methoden))
        eintrag["befehle"] = sorted(
            set(eintrag["befehle"]) | set(_BEFEHL.findall(koerper)))

        bloecke = sorted({int(x) for x in _CODEBLOCK.findall(koerper)})
        if bloecke:
            eintrag["codebloecke"] = sorted(
                set(eintrag["codebloecke"]) | set(bloecke))
        if _DYNSPRUNG.search(koerper):
            eintrag["dyn_sprung"] = True

        # Die Art des Knotens ergibt sich aus seinen Methoden.
        if bloecke or roh_name.startswith("S_"):
            eintrag["art"] = "befehl"
        elif "CheckCondition" in methoden:
            eintrag["art"] = "bedingung"

        e = _ENDE.search(koerper)
        if e:
            eintrag["missionsende"] = int(e.group(1))

        for f in _FUNK.finditer(koerper):
            eintrag["funk"].append({
                "key": int(f.group(3)),
                "sender": f.group(1).strip(),
                "empfaenger": f.group(2).strip(),
                "zeile": zeile + koerper.count("\n", 0, f.start()),
            })

        if name in bindungen:
            eintrag["szenenknoten"] = bindungen[name]

        # --- Kanten
        gesehen = set()

        def kante(ziel, art, **rest):
            z = _kanonisch(ziel)
            if z == name or z not in ("", None):
                pass
            if z == name:
                return
            schluessel = (name, z, art)
            if schluessel in gesehen:
                return
            gesehen.add(schluessel)
            netz.kanten.append(dict(von=name, nach=z, art=art, **rest))

        # daten: dieser Knoten LIEST den Wert eines anderen -> B nach A
        for b in set(_LIEST_WERT.findall(koerper)):
            if _kanonisch(b) != name:
                s = (_kanonisch(b), name, "daten")
                if s not in gesehen:
                    gesehen.add(s)
                    netz.kanten.append(
                        {"von": _kanonisch(b), "nach": name, "art": "daten"})

        for b, wie in set(_MELDET.findall(koerper)):
            kante(b, "melde", methode=wie)
        for b, wie in set(_RUFT.findall(koerper)):
            kante(b, "ruf", methode=wie)

        # Verzoegerung: gehoert an den Knoten, nicht zwischen zwei.
        for t, b in _ZEIT.findall(koerper):
            try:
                sek = float(t)
            except ValueError:
                continue
            if _kanonisch(b) == name:
                alt = eintrag.get("verzoegerung")
                eintrag["verzoegerung"] = sek if alt is None else max(alt, sek)
            else:
                # Bisher nie vorgekommen (0 von 65 geprueften). Falls
                # doch, ist es eine echte Kante.
                kante(b, "zeit", verzoegerung=sek)

    # --- Knoten, die nur als Kantenziel auftauchen, nachtragen
    for k in netz.kanten:
        for seite in ("von", "nach"):
            if k[seite] not in netz.knoten:
                netz.knoten[k[seite]] = {
                    "id": k[seite], "zeile": 0, "quelle": [],
                    "methoden": [], "befehle": [], "funk": [],
                    "missionsende": None, "szenenknoten": None,
                    "verzoegerung": None,
                    "ist_start": False, "codebloecke": [],
                    "dyn_sprung": False, "grad_ein": 0, "grad_aus": 0,
                    "art": "unbekannt",
                }

    for k in netz.kanten:
        netz.knoten[k["von"]]["grad_aus"] += 1
        netz.knoten[k["nach"]]["grad_ein"] += 1

    if not netz.knoten:
        netz.hinweise.append(
            "keine Triggertabellen gefunden -- ist das ein Dekompilat?")
    return netz


# ------------------------------------------------------------- Anordnung
def ebenen(netz, hoechstens=400):
    """Die Knoten auf Ebenen verteilen -- fuer ein Blueprint-Layout.

    Ebene 0 sind die Knoten ohne Eingang (Einstiegspunkte), danach
    jeweils die, die von der vorigen Ebene erreicht werden.

    *** DAS NETZ HAT ZYKLEN *** (ein Knoten meldet an einen, der ihn
    wieder liest). Deshalb kein topologisches Sortieren, sondern eine
    Breitensuche mit Besuchsmarke: jeder Knoten bekommt die Ebene
    seines ERSTEN Erreichens. Das ist stabil und terminiert immer.
    """
    nachfolger = collections.defaultdict(list)
    for k in netz.kanten:
        nachfolger[k["von"]].append(k["nach"])

    ebene = {}
    # Einstiegspunkte: kein Eingang, oder ausdruecklich Start.
    start = [n for n, v in netz.knoten.items()
             if v["grad_ein"] == 0 or v["ist_start"]]
    if not start:
        start = sorted(netz.knoten)[:1]
    rand = list(dict.fromkeys(start))
    for n in rand:
        ebene[n] = 0
    tiefe = 0
    while rand and tiefe < 200:
        tiefe += 1
        naechster = []
        for n in rand:
            for z in nachfolger.get(n, ()):
                if z not in ebene:
                    ebene[z] = tiefe
                    naechster.append(z)
        rand = naechster
    # Was die Suche nicht erreicht hat (eigene Zyklen ohne Einstieg)
    for n in netz.knoten:
        ebene.setdefault(n, tiefe + 1)
    return ebene


def als_graph(netz, hoechstens=400, nur_verbundene=False):
    """Das Netz als schlichtes dict fuer die Anzeige.

    hoechstens begrenzt die Knotenzahl -- die groesste Karte hat 367.
    Was wegfaellt, wird ausdruecklich gemeldet statt still zu fehlen.
    """
    eb = ebenen(netz)
    alle = list(netz.knoten.values())

    if nur_verbundene:
        alle = [n for n in alle if n["grad_ein"] or n["grad_aus"]]

    # Wichtiges zuerst: Start- und Endknoten, dann viele Kanten,
    # dann Funksprueche.
    def rang(n):
        return (0 if n["ist_start"] or n["missionsende"] is not None else 1,
                -(n["grad_ein"] + n["grad_aus"]),
                -len(n["funk"]))

    alle.sort(key=rang)
    weggelassen = 0
    if len(alle) > hoechstens:
        weggelassen = len(alle) - hoechstens
        alle = alle[:hoechstens]
    behalten = {n["id"] for n in alle}

    knoten = []
    for n in alle:
        knoten.append({
            "id": n["id"], "art": n["art"], "ebene": eb.get(n["id"], 0),
            "zeile": n["zeile"],
            "methoden": n["methoden"], "befehle": n["befehle"][:14],
            "funk": n["funk"], "missionsende": n["missionsende"],
            "verzoegerung": n.get("verzoegerung"),
            "szenenknoten": n["szenenknoten"], "ist_start": n["ist_start"],
            "codebloecke": n["codebloecke"], "dyn_sprung": n["dyn_sprung"],
            "grad_ein": n["grad_ein"], "grad_aus": n["grad_aus"],
        })

    kanten = [k for k in netz.kanten
              if k["von"] in behalten and k["nach"] in behalten]

    return {
        "level": netz.level,
        "quelle": os.path.basename(netz.quelle),
        "knoten": knoten,
        "kanten": kanten,
        "kennzahlen": netz.kennzahlen(),
        "weggelassen": weggelassen,
        "hinweise": netz.hinweise + (
            [f"{weggelassen} Knoten nicht gezeigt (Grenze {hoechstens}) -- "
             f"die mit den wenigsten Verbindungen"] if weggelassen else []),
    }


