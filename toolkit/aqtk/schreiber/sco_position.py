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


class PatchFehler(Exception):
    pass


def stellen_finden(top, lua4dis=None):
    """Alle Body_SetCS-Stellen mit ihren Konstantenplaetzen.

    Rueckgabe: {variablenname: {...}} mit proto, pc, pos_slots,
    rot_slots, alt_position, alt_drehung. Stellen, deren Muster
    nicht passt, kommen mit "grund" statt Slots -- sie werden
    gemeldet, nicht verschwiegen.
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
            if u >= len(kstr) or kstr[u] != "Body_SetCS":
                continue
            if i + 12 >= len(code):
                continue

            eintrag = {"proto": pr, "weg": weg, "pc": i}
            # Der Knotenname steht unmittelbar dahinter.
            b2 = code[i + 1]
            if op(b2) != "GETGLOBAL":
                eintrag["grund"] = "kein GETGLOBAL nach Body_SetCS"
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
                aus[name] = eintrag
                continue
            eintrag["pos_slots"], eintrag["alt_position"] = ps, pw

            rs, rw = zahlen(i + 8)
            if rs is not None:
                eintrag["rot_slots"], eintrag["alt_drehung"] = rs, rw
            aus[name] = eintrag
            break_außen = False
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
    """Positionen aendern und die neuen Bytes liefern.

    aenderungen: [{variable, position, drehung}]
    Gibt (bytes, bericht) zurueck. *** Drei Proben muessen bestehen ***,
    sonst wird nichts geliefert.
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
        pr = st["proto"]
        if a.get("position") and st.get("pos_slots"):
            for k, slot in enumerate(st["pos_slots"]):
                _zahl_ablegen(pr, slot, a["position"][k], l)
        if a.get("drehung") and st.get("rot_slots"):
            for k, slot in enumerate(st["rot_slots"]):
                _zahl_ablegen(pr, slot, a["drehung"][k], l)
        bericht["geaendert"].append(
            {"variable": v, "alt": st.get("alt_position"),
             "neu": a.get("position")})

    ergebnis = l.save(top)

    # Probe 2: Das Ergebnis laesst sich wieder lesen.
    try:
        zurueck = l.loads(ergebnis)
    except Exception as e:
        raise PatchFehler(f"Das Ergebnis ist nicht lesbar: {e}")

    # Probe 3: Die neuen Werte stehen wirklich drin.
    nach = stellen_finden(zurueck, l)
    for g in bericht["geaendert"]:
        st = nach.get(g["variable"])
        if not st or not st.get("alt_position"):
            raise PatchFehler(
                f"{g['variable']}: nach dem Patch nicht mehr auffindbar")
        ist = st["alt_position"]
        soll = g["neu"]
        if soll and any(abs(ist[k] - soll[k]) > 0.01 for k in range(3)):
            raise PatchFehler(
                f"{g['variable']}: Rueckleseprobe fehlgeschlagen -- "
                f"steht {ist}, erwartet {soll}")
    if melder:
        melder(f"{len(bericht['geaendert'])} Position(en) gepatcht, "
               f"{len(bericht['uebersprungen'])} uebersprungen, "
               f"{len(ergebnis)} Byte")
    return ergebnis, bericht
