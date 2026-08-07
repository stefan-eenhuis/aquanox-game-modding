#!/usr/bin/env python3
"""trigger_netz.py -- das SED-Triggernetz aus einer Mission holen (C12).

DER GEDANKE
    Der urspruengliche Plan war ein Parser fuer die .sed-Dateien des
    Editors. Die gibt es aber nicht mehr -- ausgeliefert wurde nur
    das Erzeugnis. Das Dekompilat zeigt das Netz dafuer VOLLSTAENDIG:
    jeder SED-Knoten wird zu einer Lua-Tabelle

        oNNN = { [nil] = {},
                 GetCalculated = function() ... end,
                 ReCalculate   = function() ... end,
                 StartCalculate= function() ... end,
                 CheckCondition= function() ... end,
                 Code0 .. Code16 = function() ... end,
                 ProcesseStateChange = function() ... end,
                 SetStateValue = function(L0) ... end }

    Das ist ein Datenflussnetz, keine Zustandsmaschine mit GotoState.
    Ein Knoten rechnet einen Wert aus (GetCalculated), und wenn der
    sich aendert, laufen die CodeN-Bloecke -- das sind die Aktionen.

    Statt eines .sed-Parsers liefert dieses Werkzeug also das, was
    ein .sed-Parser geliefert haette: das Netz als Graph.

AUFRUF
    trigger_netz.py <mission.lua>              Uebersicht
    trigger_netz.py <mission.lua> --json       als JSON
    trigger_netz.py <mission.lua> --knoten o42 einen Knoten zeigen
"""
import os, re, sys, json, collections


def netz(pfad):
    t = open(pfad, encoding="latin-1").read()
    zeilen = t.splitlines()
    knoten = {}

    # Jede Objekttabelle finden: oNNN = { [nil] = {}, ...
    for m in re.finditer(r"^(o\d+)\s*=\s*\{\s*\[nil\]", t, re.M):
        name = m.group(1)
        start = m.start()
        zeile = t[:start].count("\n") + 1
        # bis zum naechsten oNNN = { am Zeilenanfang
        n = re.search(r"^o\d+\s*=\s*\{", t[m.end():], re.M)
        ende = m.end() + (n.start() if n else len(t) - m.end())
        koerper = t[start:ende]
        eintrag = {
            "zeile": zeile,
            "methoden": sorted(set(re.findall(r"(\w+)\s*=\s*function",
                                              koerper))),
            "ruft_knoten": sorted(set(re.findall(r"\b(o\d+)\.", koerper))
                                  - {name}),
            "kommandos": sorted(set(re.findall(
                r"\b([A-Z]\w+_\w+|\w+Lib\.\w+)\s*\(", koerper))),
            "funk": [int(x) for x in re.findall(
                r"SendRadioMessageTake\([^,]+,[^,]+,\s*(\d+)", koerper)],
            "texte": re.findall(r'Script_Log\(\s*"([^"]*)"', koerper),
            "groesse": len(koerper),
        }
        # Endet die Mission hier?
        e = re.search(r"Game_MissionEnd\s*\([^,]+,\s*(-?\d+)", koerper)
        if e:
            eintrag["missionsende"] = int(e.group(1))
        knoten[name] = eintrag
    return knoten


def _zeig(pfad):
    k = netz(pfad)
    print(f"# {os.path.basename(pfad)}")
    print(f"  {len(k)} Triggerknoten\n")

    # Wer ruft wen? Eingangsgrade zaehlen
    ein = collections.Counter()
    for n, v in k.items():
        for z in v["ruft_knoten"]:
            ein[z] += 1
    wurzeln = [n for n in k if ein[n] == 0]
    print(f"  {len(wurzeln)} Knoten ruft niemand auf (Einstiegspunkte):")
    for n in wurzeln[:12]:
        print(f"     {n:<8} Zeile {k[n]['zeile']:>6}  "
              f"{len(k[n]['methoden'])} Methoden")

    enden = {n: v["missionsende"] for n, v in k.items()
             if "missionsende" in v}
    if enden:
        print(f"\n  {len(enden)} Knoten beenden die Mission:")
        for n, w in enden.items():
            wie = {0: "GEWONNEN", 1: "verloren (Art 1)",
                   2: "verloren (Art 2)"}.get(w, f"Wert {w}")
            print(f"     {n:<8} Zeile {k[n]['zeile']:>6}  -> {wie}")

    # Die dicksten Knoten
    print("\n  Die umfangreichsten Knoten:")
    for n in sorted(k, key=lambda x: -k[x]["groesse"])[:8]:
        v = k[n]
        print(f"     {n:<8} {v['groesse']:>7,} Zeichen, "
              f"{len(v['kommandos'])} versch. Kommandos, "
              f"{len(v['funk'])} Funksprueche")

    # Welche Kommandos kommen ueberhaupt vor?
    alle = collections.Counter()
    for v in k.values():
        for c in v["kommandos"]:
            alle[c] += 1
    print(f"\n  {len(alle)} verschiedene Kommandos im Netz, die haeufigsten:")
    for c, n in alle.most_common(14):
        print(f"     {c:<40} in {n:>4} Knoten")


def _cli():
    if len(sys.argv) < 2:
        print(__doc__); sys.exit(1)
    pfad = sys.argv[1]
    if "--json" in sys.argv:
        print(json.dumps(netz(pfad), ensure_ascii=False, indent=1))
    elif "--knoten" in sys.argv:
        wunsch = sys.argv[sys.argv.index("--knoten") + 1]
        k = netz(pfad)
        if wunsch in k:
            print(json.dumps(k[wunsch], ensure_ascii=False, indent=1))
        else:
            print(f"{wunsch} nicht gefunden. Vorhanden: "
                  f"{sorted(k)[:20]} ...")
    else:
        _zeig(pfad)


if __name__ == "__main__":
    _cli()
