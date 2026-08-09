"""Zeichenketten im Missionsskript austauschen -- ohne Neuuebersetzung.

Schwestermodul zu sco_position.py (Zahlen) und sco_neu.py
(Quelltext anhaengen). Damit lassen sich SCHIFF und BEWAFFNUNG vor
dem Levelstart aendern:

    Node_ParseIniFile(node225, "osd/pla/pla_toiler.osd")
                               ^^^^^^^^^^^^^^^^^^^^^^^  Schiff
    Body_AddItem(node225, "gun_vendetta1", 1)
                          ^^^^^^^^^^^^^^^          Bewaffnung

*** DAS IST KEIN BYTECODE-SCHREIBER. *** Es wird eine Zeichenkette an
den Konstantenpool ANGEHAENGT und der Operand eines vorhandenen
PUSHSTRING darauf gezeigt. Befehlszahl und Stapeltiefe bleiben
unveraendert.

--------------------------------------------------------------------
WARUM NUR ANHAENGEN -- UND WARUM HIER NOCH STRENGER ALS BEI ZAHLEN
--------------------------------------------------------------------
Der Konstantenpool ist JE PROTO, nicht global (1h1.sco: 1.487 Protos;
ueber alle 74 Skripte 40.326 Protos mit 251.342 kstr-Eintraegen).
Innerhalb eines Pools ist jeder String EINDEUTIG -- der Lua-Compiler
dedupliziert. Daraus folgt: *** Teilen ist die Regel, nicht die
Ausnahme. ***

    18,4 %  aller benutzten kstr-Indizes werden von mehr als einem
            Befehl gelesen
    81,2 %  bei den Pfaden von Node_ParseIniFile (6.455 von 7.953)

*** UND DER SCHLIMMERE FALL: *** derselbe Pool traegt Globalnamen UND
Werte. In 1h1.sco allein werden 485 kstr-Indizes in MEHR ALS EINER
Rolle benutzt -- mal als GETGLOBAL (Name einer Variablen oder
Funktion), mal als PUSHSTRING (Wert). Befehlszahlen dort:

    GETGLOBAL  10.308      PUSHSTRING  4.925
    GETDOTTED   2.537      SETGLOBAL     920

Wer einen kstr-Eintrag AENDERT statt anzuhaengen, benennt im
schlimmsten Fall eine Funktion um. Deshalb aendert dieses Modul
NIEMALS einen vorhandenen Eintrag.

--------------------------------------------------------------------
WARUM ANHAENGEN GEFAHRLOS IST
--------------------------------------------------------------------
lua4dis.save() schreibt den Pool als Anzahl + je (uint32 Laenge +
Bytes einschliesslich NUL) NEU. Es gibt keine Offsettabelle, die
nachgefuehrt werden muesste. Die Instruktion traegt nur den INDEX in
argU -- 26 Bit, also Platz fuer 67.108.863 Eintraege; der groesste
echte Pool hat 1.208.

*** DIE LAENGE DER NEUEN ZEICHENKETTE IST DAHER VOELLIG
GLEICHGUELTIG. *** Gemessen mit 59 Zeichen statt 13 und ebenso mit
einem kuerzeren Namen.

--------------------------------------------------------------------
GEMESSENE ERPROBUNG (Handoff 529.5)
--------------------------------------------------------------------
An einer Kopie von 1h1.sco: "osd/pla/pla_toiler.osd" auf pla_vortex
getauscht (main.f1, pc 8559, Knoten node225 = nod_player "player1")
und vier Body_AddItem-Namen in main.f430. Alle drei Pflichtproben
bestanden. Durchlauf ueber alle 74 Skripte: 38 von 38
Missionsskripten mit Spielerknoten fehlerfrei gepatcht.

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


class PatchFehler(Exception):
    pass


# Welche Aufrufe interessieren.
#
# *** KEIN FESTER VERSATZ. *** Die erste Fassung dieses Moduls nahm
# an, die Zeichenkette stehe immer zwei Befehle hinter dem
# Funktionsnamen:
#     GETGLOBAL "Node_ParseIniFile" | GETGLOBAL "node225" | PUSHSTRING
# Das gilt fuer Node_ParseIniFile, aber NICHT allgemein. Body_AddItem
# uebergibt den Knoten haeufig als Feld einer lokalen Variablen:
#     GETGLOBAL "Body_AddItem" | GETLOCAL | GETDOTTED "Node" | PUSHSTRING
# also mit Versatz DREI. Mit festem Versatz 2 fand das Modul in
# 3h1.sco null Body_AddItem-Stellen, obwohl das Dekompilat sie zeigt.
#
# Gesucht wird deshalb der ERSTE PUSHSTRING im Fenster hinter dem
# Funktionsnamen, abgebrochen beim CALL -- so bleibt das Muster
# unabhaengig davon, wie der Knoten beschafft wird.
FENSTER = 6

AUFRUFE = {
    "Node_ParseIniFile": {"art": "osd"},
    "Body_AddItem": {"art": "item"},
    "Node_CreateNode": {"art": "klasse"},
    "Body_SetName": {"art": "name"},
}

# Befehle, die einen Knoten beschaffen -- sie duerfen zwischen dem
# Funktionsnamen und der Zeichenkette stehen.
_HOLBEFEHLE = ("GETGLOBAL", "GETLOCAL", "GETDOTTED", "GETINDEXED",
               "GETTABLE", "SELF", "PUSHSELF")


def stellen_finden(top, lua4dis=None, aufrufe=None):
    """Alle austauschbaren Zeichenketten im Skript.

    Rueckgabe: Liste von Eintraegen
        {proto, weg, pc, slot, art, funktion, knoten, wert, kindex}
    slot   = Platz des PUSHSTRING im Code (dort wird gepatcht)
    kindex = der bisherige Index im kstr-Pool (nur zur Anzeige --
             er wird NICHT ueberschrieben)

    *** Gefunden wird ueber den FUNKTIONSNAMEN, nicht ueber den
    Zeichenkettenwert. *** Eine Suche nach dem Wert wuerde die 485
    doppelt benutzten Eintraege mitfangen und Globalnamen treffen.
    """
    l = lua4dis or _lua4dis()
    op, argU = l.op, l.argU
    muster = aufrufe or AUFRUFE
    aus = []

    for weg, pr in l.walk(top):
        kstr = pr.kstr or []
        code = pr.code
        for i, befehl in enumerate(code):
            if op(befehl) != "GETGLOBAL":
                continue
            u = argU(befehl)
            if u >= len(kstr):
                continue
            fn = kstr[u]
            regel = muster.get(fn)
            if not regel:
                continue

            # Den ersten PUSHSTRING im Fenster suchen; beim CALL
            # abbrechen, damit kein fremder Aufruf angeschnitten wird.
            slot = None
            grund = None
            for k in range(i + 1, min(i + 1 + FENSTER, len(code))):
                o = op(code[k])
                if o == "PUSHSTRING":
                    slot = k
                    break
                if o in ("CALL", "TAILCALL", "RETURN"):
                    grund = ("kein PUSHSTRING vor dem CALL -- der Wert "
                             "steht wohl in einer Variablen")
                    break
                if o not in _HOLBEFEHLE:
                    grund = ("unerwarteter Befehl %s vor dem Wert" % o)
                    break
            if slot is None:
                aus.append({"proto": pr, "weg": weg, "pc": i,
                            "slot": None, "art": regel["art"],
                            "funktion": fn, "knoten": None, "wert": None,
                            "grund": grund or "kein PUSHSTRING im Fenster"})
                continue

            # Der Knotenname, sofern er als Globale kommt. Bei
            # GETLOCAL/GETDOTTED ist er zur Uebersetzungszeit nicht
            # bekannt -- dann bleibt das Feld None.
            knoten = None
            if op(code[i + 1]) == "GETGLOBAL":
                ku = argU(code[i + 1])
                if ku < len(kstr):
                    knoten = kstr[ku]
            elif op(code[i + 1]) in ("GETLOCAL", "GETDOTTED"):
                for k in range(i + 1, slot):
                    if op(code[k]) == "GETDOTTED":
                        du = argU(code[k])
                        if du < len(kstr):
                            knoten = "." + kstr[du]
                        break

            kidx = argU(code[slot])
            aus.append({"proto": pr, "weg": weg, "pc": i, "slot": slot,
                        "art": regel["art"], "funktion": fn,
                        "knoten": knoten,
                        "wert": kstr[kidx] if kidx < len(kstr) else None,
                        "kindex": kidx})
    return aus


def _string_ablegen(pr, slot, wert, l):
    """Eine Zeichenkette ANHAENGEN und den Operanden zeigen lassen.

    *** NIEMALS pr.kstr[index] = wert. *** Siehe Modulkopf: 485
    Eintraege in 1h1 tragen zwei Rollen.

    *** ES GIBT ZWEI POOLS, UND GESCHRIEBEN WIRD DER ROHE. ***
    lua4dis fuehrt kstr (lesbar) und kstr_raw (Bytes MIT
    Nullterminator). Gespeichert wird kstr_raw; beim Laden entsteht
    kstr daraus per k[:-1], das Nullbyte wird also abgeschnitten.
    Wer nur kstr ergaenzt, aendert gar nichts; wer kstr_raw OHNE das
    Nullbyte ergaenzt, verliert beim naechsten Laden das letzte
    Zeichen -- aus "pla_vortex.osd" wird "pla_vortex.os".
    *** Genau das ist beim ersten Versuch passiert und nur von der
    Rueckleseprobe in anwenden() gefangen worden. ***

    Proto.K(s) erledigt beides richtig und dedupliziert nebenbei --
    dasselbe Verhalten wie der Lua-Uebersetzer. Deduplizieren ist
    hier gefahrlos: der Wert ist identisch, es entsteht also kein
    neuer Bezug, nur ein geteilter auf denselben Text.
    """
    if hasattr(pr, "K"):
        k = pr.K(wert)
    else:                       # aeltere lua4dis-Fassung
        pr.kstr.append(wert)
        pr.kstr_raw.append(wert.encode("latin-1") + b"\x00")
        k = len(pr.kstr) - 1
    pr.code[slot] = l.i_k("PUSHSTRING", k)
    return k


def anwenden(roh_sco, aenderungen, melder=None):
    """Zeichenketten austauschen und die neuen Bytes liefern.

    aenderungen: Liste von
        {funktion, knoten, alt, neu}      -- alle Felder ausser neu
                                             sind Filter, alle optional
    Beispiel:
        {"funktion": "Node_ParseIniFile", "knoten": "node225",
         "neu": "osd/pla/pla_vortex.osd"}
        {"funktion": "Body_AddItem", "alt": "gun_vendetta1",
         "neu": "gun_vendetta2"}

    Gibt (bytes, bericht) zurueck. *** Drei Proben muessen bestehen ***,
    sonst wird nichts geliefert.
    """
    l = _lua4dis()
    for name in ("i_k", "walk", "loads", "save"):
        if not hasattr(l, name):
            raise PatchFehler(
                f"lua4dis kann kein {name}() -- der Patcher braucht "
                f"eine Fassung, die Befehle bauen und speichern kann.")

    top = l.loads(roh_sco)

    # Probe 1: Rundlauf ohne Aenderung. Ohne sie ist jeder Patch
    # unverantwortlich -- ein Schreiber, der die Datei nicht
    # unveraendert zurueckgibt, veraendert sie auch sonst.
    if l.save(top) != roh_sco:
        raise PatchFehler(
            "lua4dis.save() liefert die Datei nicht byte-identisch "
            "zurueck -- ohne diesen Rundlauf ist ein Patch nicht "
            "verantwortbar.")

    stellen = stellen_finden(top, l)
    bericht = {"geaendert": [], "uebersprungen": [], "unpatchbar":
               [s for s in stellen if s.get("grund")]}

    for a in aenderungen:
        neu = a.get("neu")
        if not isinstance(neu, str):
            bericht["uebersprungen"].append(
                {"aenderung": a, "grund": "kein Zielwert"})
            continue
        treffer = []
        for s in stellen:
            if s.get("grund") or s["slot"] is None:
                continue
            if a.get("funktion") and s["funktion"] != a["funktion"]:
                continue
            if a.get("knoten") and s["knoten"] != a["knoten"]:
                continue
            # *** Der alt-Filter vergleicht OHNE Ruecksicht auf
            # Gross- und Kleinschreibung. *** Die Engine tut es auch
            # (stricmp bei 0x00433760, Faltung 0x0043378a), und die
            # Originalskripte schreiben denselben Gegenstand mal so,
            # mal so: in 3h1.sco steht DEVICE_REPAIR gross, in 3n1.sco
            # device_repair klein. Ein exakter Vergleich uebersieht
            # die Haelfte der Stellen, ohne es zu melden.
            if a.get("alt") and (s["wert"] or "").lower() != \
                    a["alt"].lower():
                continue
            treffer.append(s)
        if not treffer:
            bericht["uebersprungen"].append(
                {"aenderung": a, "grund": "keine passende Stelle"})
            continue
        for s in treffer:
            _string_ablegen(s["proto"], s["slot"], neu, l)
            bericht["geaendert"].append(
                {"funktion": s["funktion"], "knoten": s["knoten"],
                 "alt": s["wert"], "neu": neu, "weg": s["weg"],
                 "pc": s["pc"]})

    ergebnis = l.save(top)

    # Probe 2: Das Ergebnis laesst sich wieder lesen.
    try:
        zurueck = l.loads(ergebnis)
    except Exception as e:
        raise PatchFehler(f"Das Ergebnis ist nicht lesbar: {e}")

    # Probe 3: Die neuen Werte stehen wirklich an ihrem Platz.
    nach = stellen_finden(zurueck, l)
    nach_index = {(s["weg"], s["pc"]): s for s in nach
                  if not s.get("grund")}
    for g in bericht["geaendert"]:
        s = nach_index.get((g["weg"], g["pc"]))
        if not s:
            raise PatchFehler(
                f"{g['funktion']} bei {g['weg']}:{g['pc']} ist nach dem "
                f"Patch nicht mehr auffindbar")
        if s["wert"] != g["neu"]:
            raise PatchFehler(
                f"Rueckleseprobe fehlgeschlagen bei {g['weg']}:{g['pc']} "
                f"-- steht {s['wert']!r}, erwartet {g['neu']!r}")

    if melder:
        melder(f"{len(bericht['geaendert'])} Zeichenkette(n) getauscht, "
               f"{len(bericht['uebersprungen'])} uebersprungen, "
               f"{len(ergebnis)} Byte")
    return ergebnis, bericht


def schiff_wechseln(roh_sco, osd_pfad, knoten=None, melder=None):
    """Bequemlichkeit: das Spielerschiff austauschen.

    osd_pfad z.B. "osd/pla/pla_vortex.osd". Ohne knoten werden ALLE
    Node_ParseIniFile-Stellen getroffen -- das ist selten gewollt,
    deshalb wird der Spielerknoten bevorzugt, wenn er sich finden
    laesst.
    """
    l = _lua4dis()
    if knoten is None:
        top = l.loads(roh_sco)
        for s in stellen_finden(top, l):
            if s.get("grund") or s["art"] != "osd":
                continue
            if s["wert"] and "/pla/" in s["wert"].replace("\\", "/"):
                knoten = s["knoten"]
                break
    return anwenden(roh_sco,
                    [{"funktion": "Node_ParseIniFile", "knoten": knoten,
                      "neu": osd_pfad}], melder=melder)
