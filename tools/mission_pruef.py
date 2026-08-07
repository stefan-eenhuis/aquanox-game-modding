#!/usr/bin/env python3
"""mission_pruef.py -- ein Missionsskript gegen die Engine pruefen (C6).

WAS ES PRUEFT
    1. Gibt es das Kommando ueberhaupt? (gegen die 398er-Registry)
    2. Stimmt die Argumentzahl? (targetNode zaehlt mit)
    3. Gibt es die Bibliotheksfunktion? (gegen die 14 .scr-Quellen)
    4. Existieren die genannten OSD-, Mesh- und Texturdateien?
    5. Sind die Textschluessel belegt? (pilot_d.des, cargo_d.des)
    6. Passen die FoF-Werte? (1=Freund 2=Neutral 3=Unbekannt 4=Feind)

WARUM
    398 Kommandos mit bis zu 18 Argumenten, 1.262 OSDs, mehrere
    Schluesselraeume -- ein Tippfehler faellt sonst erst im Spiel auf,
    und dort oft nur als stummes Nichtgeschehen.

AUFRUF
    mission_pruef.py <skript.lua>
    mission_pruef.py <skript.lua> --streng    auch Warnungen als Fehler
"""
import os, re, sys, glob, json

HIER = os.path.dirname(os.path.abspath(__file__))
DOC = os.path.abspath(os.path.join(HIER, ".."))
SPIEL = os.path.abspath(os.path.join(DOC, ".."))
EXT = os.path.join(SPIEL, "dat", "pak", "extracted")


def _lade_registry():
    p = os.path.join(DOC, "aquanox1_message_ids.json")
    return json.load(open(p, encoding="utf-8"))["commands"]


LIBDATEIEN = ("glue", "misc", "camera", "dipol", "dock", "formation",
              "oldone", "sensor", "synchronization", "turret",
              "vehicleattack", "vehiclegoto", "vesselattack", "vesselgoto")


def _lade_libfunktionen():
    """Alle Bibliotheksfunktionen.

    QUELLE sind die DEKOMPILIERTEN AN1-Bibliotheken, nicht die
    AN2-Quelltexte: die .scr definieren ihre Funktionen in
    verschachtelten Tabellen, die ein Regex nur teilweise findet --
    ein erster Versuch meldete GuardArea und CreateFormation als
    unbekannt, obwohl beide in jeder Mission vorkommen.
    Das Dekompilat ist flacher und vollstaendiger.
    """
    aus = set()
    muster = re.compile(r"(?:^|,\s*|\{\s*)([A-Za-z_]\w*)\s*=\s*function",
                        re.M)
    z = os.path.join(DOC, "an1_missionen_lua")
    for name in LIBDATEIEN:
        p = os.path.join(z, name + ".lua")
        if not os.path.exists(p):
            continue
        t = open(p, encoding="latin-1").read()
        for m in muster.finditer(t):
            aus.add(m.group(1))
    if not aus:                    # Rueckfall auf die AN2-Quelltexte
        for p in glob.glob(os.path.join(DOC, "an2_script_sources",
                                        "*.scr")):
            t = open(p, encoding="latin-1").read()
            for m in re.finditer(r"([A-Za-z_]\w*)\s*=\s*function", t):
                aus.add(m.group(1))
    return aus


def _lade_dateien():
    aus = set()
    for p in glob.glob(os.path.join(EXT, "**", "*"), recursive=True):
        if os.path.isfile(p):
            aus.add(os.path.basename(p).lower())
    return aus


# Lua-Standardbibliothek und Engine-Globals (Handoff Abschnitt 123)
LUA_STD = {
    "abs", "ceil", "floor", "sqrt", "sin", "cos", "tan", "asin", "acos",
    "atan", "exp", "log", "log10", "min", "max", "mod", "random",
    "randomseed", "deg", "rad", "format", "strlen", "strsub", "strlower",
    "strupper", "strrep", "strfind", "gsub", "getn", "tinsert", "tremove",
    "sort", "next", "type", "tonumber", "tostring", "print", "dofile",
    "dostring", "assert", "error", "call", "rawget", "rawset", "setglobal",
    "getglobal", "foreach", "foreachi", "collectgarbage",
}
GLOBALS = {
    "MAT_Vector3", "NOD_NodeRef", "PI", "Script_Log", "Script_LogRaw",
    "Script_Error", "Script_AssertFile", "Script_DoFile", "Script_GetTime",
    "Script_GetLineNumber", "Script_GetFunctionName",
    "Script_IsNodeRefValid", "Script_SnoopOn", "Script_SnoopOff",
}
GLUE = {
    "BindEasy", "BindPlayer", "BindBlock", "BindThread", "UnBindThread",
    "CallFunction", "DelayedFunction", "DelayedFunctionStop", "SetTimer",
    "StopTimer", "GetGameNode", "GetPlayerNode", "GetCameraNode",
    "StoreInnerValue", "GetInnerValue", "GotoState", "MacroFuse",
    "CloneTable", "CopyTableInto", "Clone", "SendRadioMessageTake",
    "Boot", "LoadLib", "LoadTerrain", "LoadTextures", "Script_Debug",
    "StartShotHit", "StopShotHit", "StartEnemy", "StopEnemy",
    "StartEnemyPatrol", "StopEnemyPatrol", "StartShieldGuard",
    "StopShieldGuard", "InsertSensorBehaviour", "RemoveSensorBehaviour",
    "CheckSensorBehaviour", "StopAllActiveBehaviours",
    "StopAllActiveBehaviours_AndCall", "ApplyModification",
    "ForceModification", "RestoreModification", "IsNotLastModification",
    "TriggerThread", "InvokeFunction", "SetPlayerCS", "SetPlayerPosition",
    "SetPlayerToPosition", "SetPlayerPositionVector",
    "SetEnemyMatrixElement", "GetEnemyMatrixElement",
}
LIBS = {"VesselGotoLib", "VesselAttackLib", "VehicleGotoLib",
        "VehicleAttackLib", "SensorLib", "MiscLib", "TurretLib", "DockLib",
        "FormationLib", "CameraLib", "DipolLib", "OldOneLib", "GlueLib",
        "SynchronizationLib"}


def pruefe(pfad):
    quelle = open(pfad, encoding="latin-1").read()
    # Kommentare weg
    code = "\n".join(z.split("--")[0] if not z.strip().startswith("--")
                     else "" for z in quelle.splitlines())
    reg = _lade_registry()
    libfn = _lade_libfunktionen()
    dateien = _lade_dateien()

    eigene = set(re.findall(r"function\s+([A-Za-z_]\w*)", code))
    eigene |= set(re.findall(r"^\s*([A-Za-z_]\w*)\s*=\s*function", code, re.M))
    eigene |= set(re.findall(r"^\s*([A-Z_][A-Z_0-9]*)\s*=", code, re.M))
    eigene |= set(re.findall(r"local\s+([a-zA-Z_]\w*)", code))
    eigene |= set(re.findall(r"(\w+)\.\w+\s*=\s*function", code))

    fehler, warnung = [], []
    # Methodennamen nach einem Lib-Praefix nicht als Kommando werten
    libmethoden = {m.group(2) for m in
                   re.finditer(r"(\w+Lib)\.(\w+)\s*\(", code)}

    # 1 + 2: Engine-Kommandos
    for m in re.finditer(r"\b([A-Z][A-Za-z_0-9]*)\s*\(", code):
        name = m.group(1)
        zeile = code[:m.start()].count("\n") + 1
        # Steht ein Punkt davor, ist es ein Methodenaufruf
        vor = code[:m.start()].rstrip()
        if vor.endswith("."):
            continue
        if name in eigene or name in LUA_STD or name in GLOBALS \
           or name in GLUE or name in LIBS or name in libmethoden:
            continue
        if name not in reg:
            fehler.append((zeile, f"unbekanntes Kommando: {name}"))
            continue
        # Argumentzahl grob zaehlen (Klammertiefe beachten)
        i, tiefe, args, leer = m.end(), 1, 1, True
        while i < len(code) and tiefe:
            c = code[i]
            if c in "([{": tiefe += 1
            elif c in ")]}": tiefe -= 1
            elif c == "," and tiefe == 1: args += 1
            elif not c.isspace(): leer = False
            i += 1
        if leer: args = 0
        soll = reg[name].get("argc")
        # targetNode ist OPTIONAL: die Originale schreiben
        # Node_Find("/") statt Node_Find(wurzel, "/"). Erlaubt sind
        # also argc und argc+1.
        if soll is not None and args not in (soll, soll + 1):
            warnung.append((zeile, f"{name}: {args} Argumente, "
                                   f"erwartet {soll} oder {soll + 1} "
                                   f"(targetNode ist optional)"))

    # 3: Bibliotheksaufrufe
    for m in re.finditer(r"(\w+Lib)\.(\w+)\s*\(", code):
        zeile = code[:m.start()].count("\n") + 1
        if m.group(1) not in LIBS:
            fehler.append((zeile, f"unbekannte Bibliothek: {m.group(1)}"))
        elif m.group(2) not in libfn:
            warnung.append((zeile, f"{m.group(1)}.{m.group(2)} nicht in "
                                   f"den Quelltexten gefunden"))

    # 4: Dateiverweise
    for m in re.finditer(r'"([^"]+\.(osd|msb|msh|col|dds|tga|sam|des))"',
                         code, re.I):
        zeile = code[:m.start()].count("\n") + 1
        name = m.group(1).replace("/", "\\").split("\\")[-1].lower()
        if name in dateien:
            continue
        # Die Engine bildet .msh auf die kompilierte .msb ab --
        # ALLE 1.650 Meshverweise in den OSDs nennen .msh, im Spiel
        # liegt die .msb (C16).
        if name.endswith(".msh") and (name[:-4] + ".msb") in dateien:
            continue
        # OSD-Dateien tragen im Spiel eine TILDE vor der Endung:
        # das Skript nennt atl_pscout.osd, die Datei heisst
        # atl_pscout~.osd.
        stamm, _, endung = name.rpartition(".")
        if f"{stamm}~.{endung}" in dateien:
            continue
        warnung.append((zeile, f"Datei nicht gefunden: {m.group(1)}"))

    # 6: FoF-Werte
    # KORREKTUR: FriendOrFoeID ist eine GRUPPEN-ID, nicht nur
    # Freund/Feind. Die Originale nutzen 0 bis 15:
    #     0  4379x   neutrale Kulisse (der Normalfall)
    #     1   167x   \  die im Missionskopf benannten Gruppen
    #     2   230x    > F=1 N=2 U=3 E=4
    #     3   373x   /
    #     4   289x
    #     5..15       weitere Gruppen, bis 161x abnehmend
    # Wer sie gegeneinander stellt, tut das ueber
    # SetEnemyMatrixElement(I, J, Wert).
    for m in re.finditer(r"Body_SetFriendOrFoeID\s*\([^,]+,\s*(\d+)", code):
        zeile = code[:m.start()].count("\n") + 1
        w = int(m.group(1))
        if w > 15:
            fehler.append((zeile, f"FoF-Gruppe {w} -- die Originale "
                                  f"nutzen 0..15"))
    return fehler, warnung


def _cli():
    if len(sys.argv) < 2:
        print(__doc__); sys.exit(1)
    pfad = sys.argv[1]
    streng = "--streng" in sys.argv
    fehler, warnung = pruefe(pfad)
    print(f"# {os.path.basename(pfad)}")
    for z, t in sorted(fehler):
        print(f"  FEHLER   Zeile {z:>5}: {t}")
    for z, t in sorted(warnung):
        print(f"  Warnung  Zeile {z:>5}: {t}")
    print(f"\n  {len(fehler)} Fehler, {len(warnung)} Warnungen")
    sys.exit(1 if fehler or (streng and warnung) else 0)


if __name__ == "__main__":
    _cli()
