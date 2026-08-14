"""Die Wegpunkt-Verkettung einer Mission -- aus dem SED-Triggernetz.

*** ES GIBT KEIN "naechster Wegpunkt"-FELD. *** Weder die Wegpunkt-
OSDs (vfx\\osd\\nav\\nav_waypoint_*~.osd, Klasse nod_waypoint_v3:
der [waypoint]-Block hat nur TakeKey-Slots fuer Funk-Takes, keine
Folge-Verweise) noch das Missionsskript verketten die Punkte. Die
Reihenfolge steht AUSSCHLIESSLICH im Triggernetz der Dekompilate
(mod_docu\\an1_missionen_lua\\*.lua):

    AKTIVIEREN   Game_SetWayPoint(GetGameNode(), oN.Node)
                 in CodeN-Bloecken von S_-Zustandsmaschinen oder im
                 ChangeTo1 von Wert-Knoten. Es ist immer nur EIN
                 Wegpunkt aktiv; NOD_NodeRef() als Ziel loescht ihn
                 (125 Aufrufe in 31 von ~90 Dateien; inst_asylum hat
                 keine -- reine Arena-Karte).
    ERREICHT     drei Mechanismen:
                 (a) Engine-Callback SetStateValue_Entered an der
                     S-Tabelle des Wegpunkts selbst -> Flag-Knoten
                     (2h1.lua Z. 10829/10861);
                 (b) Triggervolumen mit SetStateValue_Triggered, in
                     dogfight sprechend benannt SetWaypointN_Trg
                     (Z. 3286-3293) -> echte Reihum-Kette;
                 (c) gar nicht -- in 1h1 haengt der naechste Punkt an
                     Missionszielen (SetStateValue_Destroyed-Ketten).

DREI KANTENARTEN entstehen daraus:
    erreicht   das Erreicht-Flag von Wegpunkt W steht (transitiv
               ueber Wert-Knoten) in der Gate-Menge des Setzers von
               X  =>  harte Kante W -> X. Beleg 2h1: o7238 im Gate
               von o6447 => wp02 -> wp03.
    folge      Setzer ohne Erreicht-Gate werden zeitlich geordnet:
               primaer aufsteigende SED_SetTaskTextKey-Nummern im
               selben Block (validiert an 1h1: 1266->1267 und 2h1:
               1275->1280), sekundaer die BFS-Ebene des Setzer-
               knotens, tertiaer der CodeN-Index. *** Das ist eine
               HEURISTIK, kein Beweis *** -- deshalb heisst die
               Kante "folge", nicht "erreicht".
    (keine)    Ziel NOD_NodeRef() = Loeschung: das Kettensegment
               ENDET dort (2h1 Z. 8587/9034). Loeschungen erzeugen
               keine Kante, sie schneiden die Zeitachse.

SONDERFAELLE, alle am Material belegt:
    - Halbordnung: zwei Setzer auf derselben Stufe (gleicher Task-
      Key bzw. gleiche Ebene) bekommen BEIDE eine Kante von der
      Vorstufe -- eine Reihenfolge zu erfinden waere gelogen.
    - Wiederholung: dasselbe Ziel mehrfach gesetzt (4h3 o8116,
      Z. 7009+8100) => Kante wird als wiederholt markiert, der
      Knoten NICHT gedoppelt.
    - WayPoint_Attach(L0.Node, oN.Node) mit echtem Ziel (1h1
      Z. 9160): der Punkt haengt an einem BEWEGLICHEN Objekt; seine
      Skript-Position ist nur der Startwert -> Kanten werden als
      beweglich gekennzeichnet.
    - dogfight bindet unter "/Scenario_Dynamic/Navigation" mit
      Namen "Waypoint_N" -- deshalb wird NICHT nach "nav_"-Namen
      gefiltert.

Dieses Modul setzt auf parser/triggernetz.py auf (Tabellenab-
grenzung, Kanonisierung S_oN = oN, BindEasy-Karte, BFS-Ebenen)
und liest NUR. Es schreibt nichts und aendert nichts.
"""
import os
import re

from . import triggernetz as _tn


# ---------------------------------------------------------------- Muster
_SETZER = re.compile(
    r"Game_SetWayPoint\(\s*GetGameNode\(\)\s*,\s*"
    r"(?:(o\d+)\.Node|NOD_NodeRef\(\))\s*\)")
_METHODE = re.compile(r"(\w+)\s*=\s*function")
_TASK = re.compile(r"SED_SetTaskTextKey\(\s*(\d+)")
_FUNKKEY = re.compile(r"SendRadioMessageTake\s*\([^)]*?,\s*(\d+)\s*\)")
_LIEST = re.compile(r"\b(o\d+)\s*\.\s*Value\b")
_FLAG = re.compile(r"\b(o\d+)\s*\.\s*SetStateValue\s*\(")
_ATTACH = re.compile(r"WayPoint_Attach\(\s*L0\.Node\s*,\s*(o\d+)\.Node")
_TRG_NAME = re.compile(r"SetWaypoint(\d+)_Trg$", re.I)
_ZAHL_AM_ENDE = re.compile(r"^(.*?)(\d+)$")


def _methoden_segmente(koerper):
    """Den Tabellenkoerper in (methodenname, rumpf)-Segmente teilen.

    Ein Segment reicht bis zum naechsten "name = function" -- exakt
    zu parsen lohnt nicht, weil nur Vorkommen GEZAEHLT werden, nie
    Struktur. Der Vorspann vor der ersten Methode faellt weg.
    """
    treffer = list(_METHODE.finditer(koerper))
    aus = []
    for i, m in enumerate(treffer):
        ende = treffer[i + 1].start() if i + 1 < len(treffer) else len(koerper)
        aus.append((m.group(1), koerper[m.start():ende], m.start()))
    return aus


def lies(pfad, level=None):
    """Ein Dekompilat lesen und die Wegpunkt-Kanten bauen.

    Rueckgabe: dict mit
        kanten       [{von, nach, art, stufe, wiederholt, beweglich,
                       zeile}]      von/nach sind SZENENNAMEN
        setzer       alle Aktivierungen (auch unaufgeloeste)
        loeschungen  [{knoten, zeile, wegpunkt|None}]
        beweglich    {wegpunktname: getragen-von-Knoten}
        hinweise     was fehlt oder unsicher ist
    """
    with open(pfad, encoding="latin-1") as f:
        text = f.read()
    name = level or os.path.splitext(os.path.basename(pfad))[0]

    # Bindungen Tabellenknoten -> Szenenname (BindEasy, kanonisch).
    bindungen = {}
    for m in _tn._BINDEASY.finditer(text):
        bindungen[_tn._kanonisch(m.group(3))] = {
            "pfad": m.group(1), "name": m.group(2)}

    setzer = []            # Aktivierungen mit Ziel
    loesch_roh = []        # Aktivierungen mit NOD_NodeRef() = Loeschen
    liest = {}             # knoten -> gelesene o-Werte (Gate-Quellen)
    erreicht_flag = {}     # flag-Knoten -> Wegpunkt-Knoten (Entered)
    trigger_flag = {}      # flag-Knoten -> Trigger-Knoten (Triggered)
    attach = {}            # Wegpunkt-Knoten -> getragen von oN

    tabellen = list(_tn._TABELLE.finditer(text))
    for i, m in enumerate(tabellen):
        knoten = _tn._kanonisch(m.group(1))
        anfang = m.start()
        ende = (tabellen[i + 1].start() if i + 1 < len(tabellen)
                else len(text))
        koerper = text[anfang:ende]
        zeile0 = text.count("\n", 0, anfang) + 1

        for mname, rumpf, versatz in _methoden_segmente(koerper):
            zeile = zeile0 + koerper.count("\n", 0, versatz)

            # Gate-Quellen: nur CheckCondition und GetCalculated
            # LESEN Bedingungswerte -- alles andere sind Aktionen.
            if mname in ("CheckCondition", "GetCalculated"):
                liest.setdefault(knoten, set()).update(
                    _tn._kanonisch(x) for x in _LIEST.findall(rumpf))

            # Erreicht-Flags (Mechanismus a und b).
            if mname == "SetStateValue_Entered":
                f_ = _FLAG.search(rumpf)
                if f_:
                    erreicht_flag[_tn._kanonisch(f_.group(1))] = knoten
            if mname == "SetStateValue_Triggered":
                f_ = _FLAG.search(rumpf)
                if f_:
                    trigger_flag[_tn._kanonisch(f_.group(1))] = knoten

            # Anheften an bewegliche Objekte (1h1 Z. 9160).
            a_ = _ATTACH.search(rumpf)
            if a_:
                attach[knoten] = _tn._kanonisch(a_.group(1))

            # Die Setzer selbst.
            for s in _SETZER.finditer(rumpf):
                eintrag = {
                    "knoten": knoten,
                    "ziel": _tn._kanonisch(s.group(1)) if s.group(1)
                            else None,
                    "zeile": zeile + rumpf.count("\n", 0, s.start()),
                    "block": mname,
                    "taskkeys": [int(t) for t in _TASK.findall(rumpf)],
                    "funk": [int(t) for t in _FUNKKEY.findall(rumpf)],
                }
                (setzer if eintrag["ziel"] else loesch_roh).append(eintrag)

    hinweise = []
    aus = {"level": name, "quelle": os.path.basename(pfad),
           "kanten": [], "setzer": setzer, "loeschungen": [],
           "beweglich": {}, "hinweise": hinweise}
    if not setzer and not loesch_roh:
        hinweise.append("keine Game_SetWayPoint-Aufrufe im Dekompilat "
                        "-- diese Karte kennt keine Wegpunkt-Kette")
        return aus

    # Szenenname eines Ziel-Knotens; ungebundene behalten die oN-Id.
    def ziel_name(oid):
        b = bindungen.get(oid)
        return b["name"] if b else oid

    for wp, traeger in attach.items():
        if wp in bindungen:
            aus["beweglich"][bindungen[wp]["name"]] = traeger

    # --- Gate-Mengen: transitiv ueber Wert-Knoten expandieren.
    #     Die Ketten sind kurz (Flag -> Vergleich -> Sammel-UND ->
    #     Verzoegerer -> Setzer); Tiefe 10 reicht weit darueber.
    def gates(knoten):
        menge = set()
        rand = set(liest.get(knoten, ()))
        for _ in range(10):
            neu = rand - menge
            if not neu:
                break
            menge |= neu
            rand = set()
            for g in neu:
                rand |= liest.get(g, set())
        return menge

    # --- Harte Kanten (erreicht): Flag von W im Gate des Setzers.
    kanten = []
    gesehen = set()
    erreicht_ziel = set()      # Ziele, die schon hart verankert sind

    def kante(von_id, nach_id, art, stufe, zeile, ueber=None):
        von_n, nach_n = ziel_name(von_id), ziel_name(nach_id)
        if von_n == nach_n:
            return False               # Wiederholung, kein Kreis an sich
        schluessel = (von_n, nach_n, art)
        if schluessel in gesehen:
            return False
        gesehen.add(schluessel)
        kanten.append({
            "von": von_n, "nach": nach_n, "art": art, "stufe": stufe,
            "zeile": zeile,
            "wiederholt": False,
            "beweglich": (von_n in aus["beweglich"]
                          or nach_n in aus["beweglich"]),
            **({"ueber": ueber} if ueber else {})})
        return True

    ziel_namen = {s["ziel"]: ziel_name(s["ziel"]) for s in setzer}

    for s in setzer:
        g = gates(s["knoten"])
        s["gates"] = sorted(g)
        s["erreicht_von"] = None
        # (a) Entered-Flag eines Wegpunkts im Gate.
        for flag in g:
            wp = erreicht_flag.get(flag)
            if wp is not None and wp != s["ziel"]:
                s["erreicht_von"] = wp
                if kante(wp, s["ziel"], "erreicht", None, s["zeile"]):
                    erreicht_ziel.add(s["ziel"])
                break
        if s["erreicht_von"]:
            continue
        # (b) Triggervolumen mit sprechendem Namen SetWaypointN_Trg:
        #     der Vorgaenger ist der Punkt mit der Nummer N-1 unter
        #     den Setzer-Zielen (dogfight-Reihum-Kette). Bei stummen
        #     Triggernamen bleibt es bei der weichen Folge-Kante.
        for flag in g:
            trg = trigger_flag.get(flag)
            if trg is None:
                continue
            tn_ = bindungen.get(trg)
            nr = _TRG_NAME.search(tn_["name"]) if tn_ else None
            if not nr:
                hinweise.append(
                    f"Triggervolumen {ziel_name(trg)} schaltet "
                    f"{ziel_name(s['ziel'])}, traegt aber keinen "
                    f"sprechenden SetWaypointN_Trg-Namen -- nur "
                    f"weiche Folge-Kante")
                continue
            vor_name = None
            zn = _ZAHL_AM_ENDE.match(ziel_name(s["ziel"]) or "")
            if zn and int(nr.group(1)) == int(zn.group(2)):
                kandidat = f"{zn.group(1)}{int(zn.group(2)) - 1}"
                if kandidat in ziel_namen.values():
                    vor_name = kandidat
            if vor_name:
                vor_id = next(k for k, v in ziel_namen.items()
                              if v == vor_name)
                s["erreicht_von"] = vor_id
                if kante(vor_id, s["ziel"], "erreicht", None,
                         s["zeile"], ueber=ziel_name(trg)):
                    erreicht_ziel.add(s["ziel"])
                break

    # --- Loeschungen: Endmarken. Erreicht-Gate sagt, WELCHER Punkt
    #     beim Erreichen verschwindet -- dort endet das Segment.
    for l in loesch_roh:
        g = gates(l["knoten"])
        wp = next((erreicht_flag[f] for f in g if f in erreicht_flag),
                  None)
        aus["loeschungen"].append({
            "knoten": l["knoten"], "zeile": l["zeile"],
            "wegpunkt": ziel_name(wp) if wp else None})

    # --- Zeitachse fuer die weichen Kanten. Rueckgrat sind die
    #     Taskkeys; Setzer ohne Taskkey werden nach ihrer BFS-Ebene
    #     im Triggernetz eingefuegt (1h1: der attack-Punkt hat
    #     keinen Taskkey und braucht genau diesen Rueckfall).
    try:
        netz = _tn.lies(pfad, name)
        ebene = _tn.ebenen(netz)
    except Exception as e:                       # Netz kaputt: nur Rueckgrat
        ebene = {}
        hinweise.append(f"Triggernetz nicht lesbar ({e}) -- "
                        f"Folge-Ordnung nur ueber Taskkeys")

    # *** Hart verankerte Setzer bleiben aus der Zeitachse heraus ***
    # -- ihre Stelle ist durch die Erreicht-Kante belegt. Nur wenn
    # sie einen Taskkey tragen, duerfen sie als ANKER dienen (Vor-
    # gaenger fuer weiche Kanten, dogfight: Waypoint_5 traegt 9001
    # und vor nav_waypoint_attack_1 liegt genau er). Weiche Kanten
    # IN sie hinein gibt es nie.
    mit_task = sorted([s for s in setzer if s["taskkeys"]],
                      key=lambda s: (min(s["taskkeys"]), s["zeile"]))
    ohne_task = sorted([s for s in setzer
                        if not s["taskkeys"] and not s["erreicht_von"]],
                       key=lambda s: (ebene.get(s["knoten"], 999),
                                      s["zeile"]))

    stufen = []            # {"task": n|None, "ebene": n, "setzer": [..]}
    for s in mit_task:
        k = min(s["taskkeys"])
        if stufen and stufen[-1]["task"] == k:
            stufen[-1]["setzer"].append(s)     # Halbordnung: selbe Stufe
        else:
            stufen.append({"task": k,
                           "ebene": ebene.get(s["knoten"], 999),
                           "setzer": [s]})
    for s in ohne_task:
        e = ebene.get(s["knoten"], 999)
        pos = 0
        for i, st in enumerate(stufen):
            if st["ebene"] <= e:
                pos = i + 1
        if (pos > 0 and stufen[pos - 1]["task"] is None
                and stufen[pos - 1]["ebene"] == e):
            stufen[pos - 1]["setzer"].append(s)  # Halbordnung
        else:
            stufen.insert(pos, {"task": None, "ebene": e, "setzer": [s]})

    # Schnitte: NACH der Stufe, deren Ziel geloescht wird, endet das
    # Segment -- die naechste Aktivierung beginnt eine neue Kette.
    schnitte = set()
    for l in aus["loeschungen"]:
        if not l["wegpunkt"]:
            continue
        for i, st in enumerate(stufen):
            if any(ziel_name(s["ziel"]) == l["wegpunkt"]
                   for s in st["setzer"]):
                schnitte.add(i)

    # Kreisschutz: eine weiche Kante darf der harten Kette nicht
    # entgegenlaufen (dogfight: Waypoint_5 -> Waypoint_1 waere ein
    # Kreis gegen die Trigger-Kette). Erreichbarkeit ueber die schon
    # angenommenen Kanten pruefen.
    def erreichbar(von_n, nach_n):
        rand, besucht = {von_n}, set()
        while rand:
            k_ = rand.pop()
            if k_ == nach_n:
                return True
            besucht.add(k_)
            rand |= {x["nach"] for x in kanten
                     if x["von"] == k_ and x["nach"] not in besucht}
        return False

    gesetzt = set()        # Zielnamen, die schon eine Stufe hatten
    for i, st in enumerate(stufen):
        namen_hier = {ziel_name(s["ziel"]) for s in st["setzer"]}
        if i > 0 and (i - 1) not in schnitte:
            for s in st["setzer"]:
                if s["ziel"] in erreicht_ziel or s["erreicht_von"]:
                    continue           # hart verankert, keine weiche Kante
                for v in stufen[i - 1]["setzer"]:
                    if erreichbar(ziel_name(s["ziel"]),
                                  ziel_name(v["ziel"])):
                        continue       # liefe der harten Kette entgegen
                    if kante(v["ziel"], s["ziel"], "folge", i,
                             s["zeile"]):
                        if ziel_name(s["ziel"]) in gesetzt:
                            kanten[-1]["wiederholt"] = True
        gesetzt |= namen_hier

    aus["kanten"] = kanten
    unaufgeloest = sorted({s["ziel"] for s in setzer
                           if s["ziel"] not in bindungen})
    if unaufgeloest:
        hinweise.append(
            f"{len(unaufgeloest)} Wegpunkt-Ziel(e) ohne BindEasy-"
            f"Bindung ({', '.join(unaufgeloest[:5])}) -- sie behalten "
            f"ihre o-Nummer statt eines Szenennamens")
    if aus["beweglich"]:
        hinweise.append(
            "an bewegliche Objekte geheftet (WayPoint_Attach): "
            + ", ".join(sorted(aus["beweglich"]))
            + " -- die Skript-Position ist nur der Startwert")
    if not kanten and setzer:
        hinweise.append(
            f"{len(setzer)} Wegpunkt-Aktivierung(en), aber keine "
            f"Kette ableitbar")
    return aus


def fuer_level(level, ordner=None):
    """Bequemer Einstieg: Dekompilat suchen und lesen."""
    pfad = _tn.dekompilat_finden(level, ordner)
    if not pfad:
        return {"level": level, "quelle": None, "kanten": [],
                "setzer": [], "loeschungen": [], "beweglich": {},
                "hinweise": [f"kein Dekompilat {level}.lua in "
                             f"mod_docu\\an1_missionen_lua -- keine "
                             f"Wegpunkt-Kanten"]}
    return lies(pfad, level)
