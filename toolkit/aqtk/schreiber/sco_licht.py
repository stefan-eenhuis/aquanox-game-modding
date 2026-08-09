"""Die Beleuchtung einer Karte aendern -- ohne Neuuebersetzung.

Vierter Schreiber neben sco_position (Zahlen), sco_neu (Quelltext)
und sco_string (Zeichenketten). Er aendert dieselben Zahlen wie
sco_position, sucht sie aber an den drei Lichtaufrufen:

    Game_SetAmbientLight(node, r, g, b)     Grundhelligkeit
    Game_SetParallelLightT(node, r, g, b)   Parallellicht von OBEN
    Game_SetParallelLightB(node, r, g, b)   Parallellicht von UNTEN

--------------------------------------------------------------------
WAS DIE MESSUNG UEBER ALLE 74 KARTEN ERGAB
--------------------------------------------------------------------
*** ALLE WERTE SIND N/255. *** Sie stammen aus 8-Bit-Farbwerten;
0.019608 ist 5/255, 0.086275 ist 22/255. Wer aendert, rechnet
deshalb am besten in 0..255 -- dann trifft man dieselbe Art Zahl,
die die Entwickler gesetzt haben. Einzige Ausnahme im ganzen Spiel:
dm_sightless, dort stehen krumme Werte (0.100 / 0.500 / 0.800).

*** ParallelLightT IST MEIST GENAU DAS DOPPELTE VON Ambient. ***
    1h1  Ambient  5  22  36   ->  ParallelT 10  44  72
    2h1  Ambient  5  36  36   ->  ParallelT 10  72  72
    3h1  Ambient 26  36   5   ->  ParallelT 52  72  10
Ausnahmen gibt es (1h4 hat beide gleich, 3h2 und cft_vulcano weichen
ganz ab), aber die Regel traegt bei der Mehrzahl. Wer Ambient
anhebt, sollte ParallelT mitziehen, sonst kippt das Verhaeltnis.

*** DIE GRUNDHELLIGKEIT IST SEHR DUNKEL. *** 26 der 74 Karten haben
Ambient (5, 22, 36) -- also 2 %, 8 %, 14 %. Das ist Absicht
(Tiefsee), begrenzt aber die Sichtbarkeit von Objektdetails stark:
was die vier dynamischen Lichter nicht treffen, bleibt nahezu
schwarz.
    dunkelste: dm_nightfall (3, 15, 25)
    hellste:   dm_isolation (90, 70, 20)

--------------------------------------------------------------------
WIE GEPATCHT WIRD
--------------------------------------------------------------------
Wie bei sco_position: die Zahl wird an den Konstantenpool
ANGEHAENGT und der Operand darauf gezeigt. *** Nie ueberschreiben ***
-- Zahlkonstanten werden geteilt (52 von 1.103 allein in 1h1.main.f1),
und Lichtwerte wie 0.5 oder 1.0 stehen garantiert auch anderswo.

Dieses Modul schreibt selbst KEINE Datei. Es liefert Bytes; wohin
die duerfen, entscheidet aqtk.schreiber.ziel_pruefen().
"""
import os
import sys

from . import sco_position


def _lua4dis():
    hier = os.path.dirname(os.path.abspath(__file__))
    tools = os.path.join(
        os.path.dirname(os.path.dirname(os.path.dirname(hier))), "tools")
    if tools not in sys.path:
        sys.path.insert(0, tools)
    import lua4dis
    return lua4dis


class PatchFehler(Exception):
    pass


AUFRUFE = ("Game_SetAmbientLight", "Game_SetParallelLightT",
           "Game_SetParallelLightB")

_ZAHLBEFEHLE = ("PUSHNUM", "PUSHNEGNUM", "PUSHINT")


def stellen_finden(top, lua4dis=None):
    """Alle drei Lichtaufrufe mit ihren Konstantenplaetzen.

    Rueckgabe: {funktionsname: {proto, weg, pc, slots, alt}}
    Die Suche laeuft wie in sco_position ueber GETGLOBAL <name>,
    danach drei Zahlbefehle -- hier aber mit Versatz 2, weil der
    Knoten als einzelnes GETGLOBAL dazwischensteht.
    """
    l = lua4dis or _lua4dis()
    op, argU = l.op, l.argU
    aus = {}
    for weg, pr in l.walk(top):
        kstr = pr.kstr or []
        knum = pr.knum or []
        code = pr.code
        for i, befehl in enumerate(code):
            if op(befehl) != "GETGLOBAL":
                continue
            u = argU(befehl)
            if u >= len(kstr) or kstr[u] not in AUFRUFE:
                continue
            name = kstr[u]
            # Der erste Zahlbefehl nach dem Knoten -- Fenster, kein
            # fester Versatz (die Lehre aus 532.2).
            start = None
            for k in range(i + 1, min(i + 5, len(code))):
                if op(code[k]) in _ZAHLBEFEHLE:
                    start = k
                    break
                if op(code[k]) in ("CALL", "TAILCALL", "RETURN"):
                    break
            if start is None or start + 2 >= len(code):
                aus.setdefault(name, []).append(
                    {"weg": weg, "pc": i, "slots": None,
                     "grund": "keine drei Zahlkonstanten gefunden"})
                continue
            slots, werte = [], []
            gut = True
            for k in range(start, start + 3):
                n = op(code[k])
                if n not in _ZAHLBEFEHLE:
                    gut = False
                    break
                slots.append(k)
                if n == "PUSHINT":
                    werte.append(float(l.argS(code[k])))
                else:
                    v = knum[argU(code[k])] if argU(code[k]) < len(knum) \
                        else 0.0
                    werte.append(-v if n == "PUSHNEGNUM" else v)
            if not gut:
                aus.setdefault(name, []).append(
                    {"weg": weg, "pc": i, "slots": None,
                     "grund": "Werte stehen nicht als Konstanten"})
                continue
            aus.setdefault(name, []).append(
                {"proto": pr, "weg": weg, "pc": i, "slots": slots,
                 "alt": werte, "alt255": [round(x * 255, 1) for x in werte]})
    return aus


def anwenden(roh_sco, aenderungen, melder=None):
    """Beleuchtung aendern.

    aenderungen: {funktionsname: (r, g, b)} mit Werten in 0..1
        oder    {funktionsname: {"b255": (r, g, b)}} in 0..255

    Beispiel:
        {"Game_SetAmbientLight":   {"b255": (20, 60, 90)},
         "Game_SetParallelLightT": {"b255": (40, 120, 180)}}

    Gibt (bytes, bericht) zurueck. Drei Proben wie in sco_position.
    """
    l = _lua4dis()
    top = l.loads(roh_sco)

    # Probe 1: Rundlauf ohne Aenderung.
    if l.save(top) != roh_sco:
        raise PatchFehler(
            "lua4dis.save() liefert die Datei nicht byte-identisch "
            "zurueck -- ohne diesen Rundlauf ist ein Patch nicht "
            "verantwortbar.")

    stellen = stellen_finden(top, l)
    bericht = {"geaendert": [], "uebersprungen": []}

    for name, ziel in aenderungen.items():
        if isinstance(ziel, dict) and "b255" in ziel:
            werte = [x / 255.0 for x in ziel["b255"]]
        else:
            werte = list(ziel)
        treffer = [s for s in stellen.get(name, []) if s.get("slots")]
        if not treffer:
            bericht["uebersprungen"].append(
                {"funktion": name, "grund": "keine patchbare Stelle"})
            continue
        for s in treffer:
            for k, slot in enumerate(s["slots"]):
                sco_position._zahl_ablegen(s["proto"], slot, werte[k], l)
            bericht["geaendert"].append(
                {"funktion": name, "weg": s["weg"], "pc": s["pc"],
                 "alt255": s["alt255"],
                 "neu255": [round(x * 255, 1) for x in werte]})

    ergebnis = l.save(top)

    # Probe 2: wieder lesbar.
    try:
        zurueck = l.loads(ergebnis)
    except Exception as e:
        raise PatchFehler(f"Das Ergebnis ist nicht lesbar: {e}")

    # Probe 3: Rueckleseprobe an jeder gepatchten Stelle.
    nach = stellen_finden(zurueck, l)
    for g in bericht["geaendert"]:
        passend = [s for s in nach.get(g["funktion"], [])
                   if s.get("slots") and s["weg"] == g["weg"]
                   and s["pc"] == g["pc"]]
        if not passend:
            raise PatchFehler(
                f"{g['funktion']} bei {g['weg']}:{g['pc']} nach dem "
                f"Patch nicht mehr auffindbar")
        ist = passend[0]["alt"]
        soll = [x / 255.0 for x in g["neu255"]]
        if any(abs(ist[k] - soll[k]) > 0.002 for k in range(3)):
            raise PatchFehler(
                f"Rueckleseprobe fehlgeschlagen bei {g['funktion']}: "
                f"steht {ist}, erwartet {soll}")

    if melder:
        melder(f"{len(bericht['geaendert'])} Lichtangabe(n) geaendert, "
               f"{len(ergebnis)} Byte")
    return ergebnis, bericht


def aufhellen(roh_sco, faktor=2.0, melder=None):
    """Bequemlichkeit: alle drei Lichtangaben mit einem Faktor.

    *** ParallelLightT WIRD MITGEZOGEN *** -- bei den meisten Karten
    ist es genau das Doppelte von Ambient, und dieses Verhaeltnis
    soll erhalten bleiben.
    Werte werden bei 255 gekappt.
    """
    l = _lua4dis()
    stellen = stellen_finden(l.loads(roh_sco), l)
    aend = {}
    for name, liste in stellen.items():
        gut = [s for s in liste if s.get("slots")]
        if not gut:
            continue
        alt = gut[0]["alt255"]
        aend[name] = {"b255": [min(255, round(x * faktor)) for x in alt]}
    return anwenden(roh_sco, aend, melder=melder)
