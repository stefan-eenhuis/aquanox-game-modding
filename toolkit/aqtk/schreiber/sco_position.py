"""Objektpositionen im Missionsskript aendern -- ohne Neuuebersetzung.

*** DAS IST KEIN BYTECODE-SCHREIBER. *** Es wird eine Zahl an den
Konstantenpool angehaengt und ein Operand darauf gezeigt. Die Zahl
der Befehle bleibt gleich, der Stapel bleibt gleich.

WARUM DAS GEHT (gemessen):
  - lua4dis.loads/save laeuft bei allen 74 Missionsskripten
    BYTE-IDENTISCH durch (1h1: 361.828 B rein wie raus).
  - Alle 7.372 Body_SetCS-Stellen legen ihre Position als genau drei
    Konstantenbefehle ab -- 100,00 %. Die Drehung in 99,23 %.

DAS MUSTER, an 1h1 nachgesehen:

    211  GETGLOBAL  "Body_SetCS"
    212  GETGLOBAL  "node8"          <- der Knoten
    213  GETGLOBAL  "MAT_Vector3"
    214  PUSHNUM    3617.00142       <- Position x
    215  PUSHNUM    2176.211592      <- y
    216  PUSHNUM    533.981452       <- z
    217  CALL       A=2 B=1
    218  GETGLOBAL  "MAT_Vector3"
    219  PUSHNUM    70.20015         <- Drehung 0
    220  PUSHINT                     <- 1  (ganze Zahl!)
    221  PUSHINT                     <- 2
    222  CALL       A=3 B=255
    223  CALL       A=0 B=0

DAS ZWEITE MUSTER: Body_SetPosition. Wegpunkte (nod_waypoint,
1h1.lua:2286-2304) setzen ihre Lage NICHT ueber Body_SetCS, sondern

    GETGLOBAL  "Body_SetPosition"
    GETGLOBAL  "node297"            <- der Knoten
    GETGLOBAL  "MAT_Vector3"
    PUSHNUM/PUSHINT x, y, z         <- drei Zahl-Slots
    CALL       A=2 B=1
    CALL       A=0 B=0

Also derselbe Kopf, dieselben drei Positions-Slots -- nur OHNE den
zweiten Vektor. Eine Drehung gibt es hier nicht; wer eine mitgibt,
bekommt sie stillschweigend nicht geschrieben (rot_slots fehlen).

DAS DRITTE MUSTER: WayPoint_SetRadius. Der Schaltradius der
Wegpunkte, direkt hinter dem Body_SetPosition (1h1.sco, main.f1,
pc 11121 nachgesehen -- alle drei Wegpunkte identisch gebaut):

    GETGLOBAL  "WayPoint_SetRadius"
    GETGLOBAL  "node297"            <- der Knoten
    PUSHINT    350                  <- EIN Zahl-Slot
    CALL       A=0 B=0

Vier Befehle, eine Zahl. Die Fundstelle wird dem Eintrag des
Knotens ZUGEMISCHT (radius_slot/alt_radius) -- ein Wegpunkt ist
EIN Objekt, auch wenn er zwei Aufrufe im Skript hat.

*** IMMER ANHAENGEN, NIE UEBERSCHREIBEN. *** In main.f1 von 1h1
werden 52 von 1.103 Zahlkonstanten von mehreren Stellen benutzt --
ein Ueberschreiben verschoebe fremde Objekte mit.

Dieses Modul schreibt selbst KEINE Datei. Es liefert Bytes; wohin
die duerfen, entscheidet aqtk.schreiber.ziel_pruefen().
"""
import os
import sys


def _lua4dis():
    """Das Disassemblermodul aus mod_docu\\tools nachladen."""
    hier = os.path.dirname(os.path.abspath(__file__))
    tools = os.path.join(
        os.path.dirname(os.path.dirname(os.path.dirname(hier))), "tools")
    if tools not in sys.path:
        sys.path.insert(0, tools)
    import lua4dis
    return lua4dis


# Befehle, die eine Zahl auf den Stapel legen.
_ZAHLBEFEHLE = ("PUSHNUM", "PUSHNEGNUM", "PUSHINT")

# Die beiden Aufrufe, die eine Objektlage als Konstanten tragen.
# Body_SetCS bringt Position UND Drehung, Body_SetPosition nur die
# Position (Wegpunkte).
_LAGE_AUFRUFE = ("Body_SetCS", "Body_SetPosition")

# Das dritte Muster: der Schaltradius der Wegpunkte -- EIN Zahl-Slot,
# wird dem Eintrag des Knotens zugemischt statt ihn zu ueberschreiben.
_RADIUS_AUFRUF = "WayPoint_SetRadius"

# Schluessel, die beim Zusammenfuehren zweier Fundstellen desselben
# Knotens (Lage + Radius) erhalten bleiben muessen.
_RADIUS_FELDER = ("radius_proto", "radius_slot", "alt_radius",
                  "radius_grund")


def _ablegen(aus, name, eintrag):
    """Einen Lage-Eintrag ablegen, ohne Radius-Funde zu verlieren.

    Kommt WayPoint_SetRadius im Code VOR der Lage (gibt es in den
    Originalen nicht, aber verlassen wollen wir uns darauf nicht),
    steht unter dem Namen schon ein Radius-Teil-Eintrag -- der wird
    uebernommen statt ueberschrieben.
    """
    alt = aus.get(name)
    if alt:
        for k in _RADIUS_FELDER:
            if k in alt and k not in eintrag:
                eintrag[k] = alt[k]
    aus[name] = eintrag


class PatchFehler(Exception):
    pass


def stellen_finden(top, lua4dis=None):
    """Alle Body_SetCS-, Body_SetPosition- UND WayPoint_SetRadius-
    Stellen mit ihren Konstantenplaetzen.

    Rueckgabe: {variablenname: {...}} mit proto, pc, funktion,
    pos_slots, rot_slots, alt_position, alt_drehung. Bei
    Body_SetPosition gibt es keine rot_slots -- der Aufruf kennt
    keine Drehung. Wegpunkte tragen ZUSAETZLICH radius_proto,
    radius_slot und alt_radius aus ihrem WayPoint_SetRadius --
    im SELBEN Eintrag, denn der Knoten ist derselbe. Stellen,
    deren Muster nicht passt, kommen mit "grund" (bzw.
    "radius_grund") statt Slots -- gemeldet, nicht verschwiegen.
    """
    l = lua4dis or _lua4dis()
    op, argU, argA = l.op, l.argU, l.argA
    aus = {}

    for weg, pr in l.walk(top):
        kstr = pr.kstr or []
        knum = pr.knum or []
        code = pr.code
        for i, befehl in enumerate(code):
            if op(befehl) != "GETGLOBAL":
                continue
            u = argU(befehl)
            if u >= len(kstr):
                continue
            funktion = kstr[u]

            # --- Drittes Muster: WayPoint_SetRadius, 4 Befehle ---
            # GETGLOBAL fn / GETGLOBAL node / Zahl / CALL. Der Fund
            # wird dem (meist schon vorhandenen) Lage-Eintrag des
            # Knotens zugemischt.
            if funktion == _RADIUS_AUFRUF:
                if i + 3 >= len(code):
                    continue
                b2 = code[i + 1]
                if op(b2) != "GETGLOBAL":
                    continue
                name = kstr[argU(b2)] if argU(b2) < len(kstr) else None
                if not name:
                    continue
                zb = code[i + 2]
                n = op(zb)
                if n not in _ZAHLBEFEHLE or op(code[i + 3]) != "CALL":
                    aus.setdefault(name, {})["radius_grund"] = (
                        "Radius nicht als einzelne Konstante")
                    continue
                if n == "PUSHINT":
                    wert = float(l.argS(zb))
                else:
                    w = knum[argU(zb)] if argU(zb) < len(knum) else 0.0
                    wert = -w if n == "PUSHNEGNUM" else w
                ziel = aus.setdefault(name, {})
                ziel["radius_proto"] = pr
                ziel["radius_slot"] = i + 2
                ziel["alt_radius"] = wert
                ziel.pop("radius_grund", None)
                continue

            if funktion not in _LAGE_AUFRUFE:
                continue
            # Body_SetPosition endet frueher (kein zweiter Vektor);
            # fuer die drei Positions-Slots plus die beiden CALLs
            # genuegen 8 Befehle, Body_SetCS braucht wie gehabt 13.
            if i + (12 if funktion == "Body_SetCS" else 7) >= len(code):
                continue

            eintrag = {"proto": pr, "weg": weg, "pc": i,
                       "funktion": funktion}
            # Der Knotenname steht unmittelbar dahinter.
            b2 = code[i + 1]
            if op(b2) != "GETGLOBAL":
                eintrag["grund"] = f"kein GETGLOBAL nach {funktion}"
                aus[f"?{weg}:{i}"] = eintrag
                continue
            name = kstr[argU(b2)] if argU(b2) < len(kstr) else None
            if not name:
                continue

            def zahlen(ab):
                """Drei aufeinanderfolgende Zahlbefehle ab Platz ab."""
                slots, werte = [], []
                for k in range(ab, ab + 3):
                    if k >= len(code):
                        return None, None
                    n = op(code[k])
                    if n not in _ZAHLBEFEHLE:
                        return None, None
                    slots.append(k)
                    if n == "PUSHINT":
                        werte.append(float(l.argS(code[k])))
                    else:
                        v = knum[argU(code[k])] if argU(code[k]) < len(knum) \
                            else 0.0
                        werte.append(-v if n == "PUSHNEGNUM" else v)
                return slots, werte

            ps, pw = zahlen(i + 3)
            if ps is None:
                eintrag["grund"] = "Position nicht als drei Konstanten"
                _ablegen(aus, name, eintrag)
                continue
            eintrag["pos_slots"], eintrag["alt_position"] = ps, pw

            # Drehungs-Slots gibt es nur beim CS-Muster. Hinter einem
            # Body_SetPosition an i+8 zu suchen faende die Zahlen des
            # NAECHSTEN Befehls (etwa den Radius eines
            # WayPoint_SetRadius) und patchte Fremdes.
            if funktion == "Body_SetCS":
                rs, rw = zahlen(i + 8)
                if rs is not None:
                    eintrag["rot_slots"], eintrag["alt_drehung"] = rs, rw
            _ablegen(aus, name, eintrag)
    return aus


def _zahl_ablegen(pr, slot, wert, l):
    """Eine Zahl an den Pool ANHAENGEN und den Operanden zeigen lassen.

    Ganze Zahlen im Bereich von PUSHINT kommen als PUSHINT -- so
    macht es der Uebersetzer auch, und der Pool bleibt kleiner.
    """
    wert = float(wert)
    if wert == int(wert) and abs(wert) <= l.MAXARG_S:
        pr.code[slot] = l.i_s("PUSHINT", int(wert))
        return "PUSHINT"
    if wert < 0:
        pr.knum.append(abs(wert))
        pr.code[slot] = l.i_k("PUSHNEGNUM", len(pr.knum) - 1)
        return "PUSHNEGNUM"
    pr.knum.append(wert)
    pr.code[slot] = l.i_k("PUSHNUM", len(pr.knum) - 1)
    return "PUSHNUM"


def anwenden(roh_sco, aenderungen, melder=None):
    """Positionen (und Wegpunkt-Radien) aendern, neue Bytes liefern.

    aenderungen: [{variable, position, drehung, radius}]
    Gibt (bytes, bericht) zurueck. *** Drei Proben muessen bestehen ***,
    sonst wird nichts geliefert.

    Das Muster waehlt die Fundlage: stellen_finden() liefert je
    Variable entweder eine Body_SetCS-Stelle (Position + Drehung)
    oder eine Body_SetPosition-Stelle (nur Position, Wegpunkte).
    Eine Drehung wird nur geschrieben, wo es rot_slots gibt; ein
    radius (Zahl oder None) nur, wo ein WayPoint_SetRadius gefunden
    wurde -- sonst wird die Radius-Aenderung als uebersprungen
    gemeldet, die Position des Objekts aber trotzdem gepatcht.
    """
    l = _lua4dis()
    for name in ("i_s", "i_k", "walk", "loads", "save"):
        if not hasattr(l, name):
            raise PatchFehler(
                f"lua4dis kann kein {name}() -- der Patcher braucht "
                f"eine Fassung, die Befehle bauen und speichern kann.")

    top = l.loads(roh_sco)

    # Probe 1: Rundlauf ohne Aenderung.
    if l.save(top) != roh_sco:
        raise PatchFehler(
            "lua4dis.save() liefert die Datei nicht byte-identisch "
            "zurueck -- ohne diesen Rundlauf ist ein Patch nicht "
            "verantwortbar.")

    stellen = stellen_finden(top, l)
    bericht = {"geaendert": [], "uebersprungen": []}

    for a in aenderungen:
        v = a.get("variable") or a.get("name")
        st = stellen.get(v)
        if not st:
            bericht["uebersprungen"].append(
                {"variable": v, "grund": "keine Body_SetCS-Stelle gefunden"})
            continue
        if st.get("grund"):
            bericht["uebersprungen"].append(
                {"variable": v, "grund": st["grund"]})
            continue
        eintrag = {"variable": v, "alt": st.get("alt_position"),
                   "neu": None}
        # pos_slots/rot_slots haengen am Lage-Proto, radius_slot am
        # eigenen radius_proto -- meist derselbe, aber verbuergt ist
        # das nirgends.
        if a.get("position") and st.get("pos_slots"):
            for k, slot in enumerate(st["pos_slots"]):
                _zahl_ablegen(st["proto"], slot, a["position"][k], l)
            eintrag["neu"] = a["position"]
        if a.get("drehung") and st.get("rot_slots"):
            for k, slot in enumerate(st["rot_slots"]):
                _zahl_ablegen(st["proto"], slot, a["drehung"][k], l)
            eintrag["drehung_gepatcht"] = True
        # Drittes Muster: der Wegpunkt-Radius. None heisst "nicht
        # angefasst" -- 0 waere ein gueltiger Wert.
        if a.get("radius") is not None:
            if st.get("radius_slot") is not None:
                _zahl_ablegen(st["radius_proto"], st["radius_slot"],
                              a["radius"], l)
                eintrag["neu_radius"] = float(a["radius"])
                eintrag["alt_radius"] = st.get("alt_radius")
            else:
                bericht["uebersprungen"].append(
                    {"variable": v,
                     "grund": st.get("radius_grund")
                     or "keine WayPoint_SetRadius-Stelle gefunden"})
        if (eintrag["neu"] is not None
                or eintrag.get("drehung_gepatcht")
                or eintrag.get("neu_radius") is not None):
            bericht["geaendert"].append(eintrag)

    ergebnis = l.save(top)

    # Probe 2: Das Ergebnis laesst sich wieder lesen.
    try:
        zurueck = l.loads(ergebnis)
    except Exception as e:
        raise PatchFehler(f"Das Ergebnis ist nicht lesbar: {e}")

    # Probe 3: Die neuen Werte stehen wirklich drin -- Position UND
    # Radius, jeweils nur wo etwas geschrieben wurde.
    nach = stellen_finden(zurueck, l)
    for g in bericht["geaendert"]:
        st = nach.get(g["variable"])
        if not st:
            raise PatchFehler(
                f"{g['variable']}: nach dem Patch nicht mehr auffindbar")
        soll = g.get("neu")
        if soll:
            ist = st.get("alt_position")
            if not ist:
                raise PatchFehler(
                    f"{g['variable']}: Position nach dem Patch nicht "
                    f"mehr auffindbar")
            if any(abs(ist[k] - soll[k]) > 0.01 for k in range(3)):
                raise PatchFehler(
                    f"{g['variable']}: Rueckleseprobe fehlgeschlagen -- "
                    f"steht {ist}, erwartet {soll}")
        soll_r = g.get("neu_radius")
        if soll_r is not None:
            ist_r = st.get("alt_radius")
            if ist_r is None or abs(ist_r - soll_r) > 0.01:
                raise PatchFehler(
                    f"{g['variable']}: Radius-Rueckleseprobe "
                    f"fehlgeschlagen -- steht {ist_r}, erwartet {soll_r}")
    if melder:
        radien = sum(1 for g in bericht["geaendert"]
                     if g.get("neu_radius") is not None)
        melder(f"{len(bericht['geaendert'])} Objekt(e) gepatcht "
               f"(davon {radien} mit Radius), "
               f"{len(bericht['uebersprungen'])} uebersprungen, "
               f"{len(ergebnis)} Byte")
    return ergebnis, bericht
