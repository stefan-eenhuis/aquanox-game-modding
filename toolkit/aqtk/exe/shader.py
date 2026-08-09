"""Das Shader-Inventar aus Aqua.exe.

*** WAS HIER DRIN STECKT UND WARUM ES ZAEHLT: ***
Die 84 Shader liegen nicht als Datei im Spiel, sondern als Bytecode
IN DER EXE -- mitsamt der Debug-Information des Assemblers. Vor jedem
Programm steht ein Block

    FILE <name>.vsa   LINE <nr> ... LINE <nr>

also der Quelldateiname und die Zeilennummern. Damit ist jeder
Bytecode einem Namen zuzuordnen, ohne Raterei.

*** DIE VERSIONSFRAGE, entscheidend fuer d3d8to9: ***
Alle Vertexshader tragen das Versionswort 0xFFFE0100, also vs.1.0.
Direct3D 9 kennt vs_1_0 NICHT MEHR -- die niedrigste dort gueltige
Fassung ist vs_1_1. Ein Wrapper, der D3D8 auf D3D9 abbildet, muss
das Versionswort also anheben, sonst lehnt CreateVertexShader ab.
Die Pixelshader tragen 0xFFFF0101 (ps.1.1) und sind unbedenklich.

*** WAS "KEIN VERWEIS AUS CODE" HIER NICHT BEDEUTET: ***
Ghidra findet auf keinen Shadernamen einen Codeverweis. Das heisst
NICHT, dass die Shader tot sind -- sie werden ueber Tabellen und
Namenssuche erreicht. Wer aus "kein Verweis" auf "ungenutzt"
schliesst, irrt sich; bei CreateNormalMap ist mir genau das
passiert, weil der gesuchte Text nur ein Stueck des wirklichen
Strings war.
"""
import os
import re
import struct

# Die Versionswoerter, wie sie little-endian in der Datei stehen.
VERSIONEN = {
    0xFFFE0100: "vs.1.0",
    0xFFFE0101: "vs.1.1",
    0xFFFE0200: "vs.2.0",
    0xFFFF0100: "ps.1.0",
    0xFFFF0101: "ps.1.1",
    0xFFFF0104: "ps.1.4",
}

# D3D8-Befehlsschluessel, soweit fuer die Inventur gebraucht.
BEFEHLE = {
    0x00: "nop", 0x01: "mov", 0x02: "add", 0x03: "sub", 0x04: "mad",
    0x05: "mul", 0x06: "rcp", 0x07: "rsq", 0x08: "dp3", 0x09: "dp4",
    0x0A: "min", 0x0B: "max", 0x0C: "slt", 0x0D: "sge", 0x0E: "exp",
    0x0F: "log", 0x10: "lit", 0x11: "dst", 0x12: "lrp", 0x13: "frc",
    0x14: "m4x4", 0x15: "m4x3", 0x16: "m3x4", 0x17: "m3x3",
    0x18: "m3x2", 0x24: "expp", 0x25: "logp", 0x26: "cnd",
    0x40: "texcoord", 0x41: "texkill", 0x42: "tex", 0x43: "texbem",
    0x51: "def", 0x1F: "dcl",
}

ENDE = 0x0000FFFF


def _lies(pfad):
    with open(pfad, "rb") as f:
        return f.read()


def bloecke(exe_pfad):
    """Alle Shaderprogramme in der Exe, mit Namen und Befehlszaehlung.

    Rueckgabe: Liste von Woerterbuechern mit
      name, art (vs/ps), fassung, va, byte, befehle, quelle
    """
    b = _lies(exe_pfad)
    aus = []
    for wort, bez in VERSIONEN.items():
        muster = struct.pack("<I", wort)
        for m in re.finditer(re.escape(muster), b):
            anf = m.start()
            # Das Versionswort muss auf einer 4er-Grenze stehen; sonst
            # ist es ein Zufallstreffer mitten im Code.
            if anf % 4:
                continue
            ende = _ende_finden(b, anf)
            if ende is None:
                continue
            zaehler, anzahl, unbekannt = _befehle_zaehlen(b, anf + 4, ende)
            aus.append({
                "name": _name_darin(b, anf, ende),
                "art": bez.split(".")[0],
                "fassung": bez,
                "va": anf + 0x400000,
                "versatz": anf,
                "byte": ende - anf,
                "befehle": zaehler,
                "anzahl": anzahl,
                "unbekannt": unbekannt,
            })
    aus.sort(key=lambda x: x["versatz"])
    return aus


def _ende_finden(b, anf, grenze=8192):
    """Bis zur Marke 0x0000FFFF suchen -- das Ende eines Programms."""
    p = anf + 4
    letzte = min(anf + grenze, len(b) - 4)
    while p < letzte:
        if struct.unpack_from("<I", b, p)[0] == ENDE:
            return p + 4
        p += 4
    return None


def _name_darin(b, anf, ende):
    """Der FILE-Eintrag INNERHALB des Programms.

    *** HIER LAG EIN FEHLER, und er ist lehrreich. *** Zuerst suchte
    diese Funktion RUECKWAERTS vor dem Versionswort, weil ich die
    Debug-Information vor dem Bytecode vermutete. Sie steht aber
    darin: D3DX legt sie als Kommentar-Token gleich hinter das
    Versionswort. Die Rueckwaertssuche fand deshalb immer den Namen
    des VORGAENGERS -- das gesamte Inventar war um eins verschoben.

    Aufgefallen ist es nur, weil die Laengen der Lichtfassungen
    linear um 612 Byte wuchsen und ausgerechnet die letzte aus der
    Reihe fiel. Ohne diese Gegenprobe waere die Verschiebung
    unbemerkt geblieben -- jede Angabe haette plausibel ausgesehen.
    """
    stueck = b[anf:ende]
    m = re.search(rb"FILE([\x20-\x7e]{3,80}?)\x00", stueck)
    return m.group(1).decode("latin-1") if m else None


# Wieviele Token FOLGEN dem Befehlstoken: Ziel plus Quellen.
# Ohne diese Tabelle laesst sich der Strom nicht zerlegen, denn
# vs.1.0-Befehle tragen KEINE Laengenangabe -- die kam erst mit
# Fassung 2.0. Wer einfach jedes Wort prueft, zaehlt Operanden als
# Befehle mit und bekommt Unsinn.
_OPERANDEN = {
    0x00: 0,                                        # nop
    0x01: 2, 0x06: 2, 0x07: 2, 0x0E: 2, 0x0F: 2,    # mov rcp rsq exp log
    0x10: 2, 0x13: 2, 0x24: 2, 0x25: 2,             # lit frc expp logp
    0x02: 3, 0x03: 3, 0x05: 3, 0x08: 3, 0x09: 3,    # add sub mul dp3 dp4
    0x0A: 3, 0x0B: 3, 0x0C: 3, 0x0D: 3, 0x11: 3,    # min max slt sge dst
    0x14: 3, 0x15: 3, 0x16: 3, 0x17: 3, 0x18: 3,    # m4x4 m4x3 m3x4 m3x3 m3x2
    0x04: 4, 0x12: 4,                               # mad lrp
    0x51: 5,                                        # def: Ziel + vier Zahlen
}

# Kommentarblock: unteres Wort 0xFFFE, oberes Wort die Laenge.
_KOMMENTAR = 0xFFFE


def _befehle_zaehlen(b, von, bis):
    """Der Befehlsstrom, sauber zerlegt.

    Kommentarbloecke werden uebersprungen -- in ihnen steckt die
    Debug-Information (FILE/LINE), und die macht bei diesen Shadern
    den GROESSTEN Teil der Bytes aus. Wer die Groesse in Byte fuer
    ein Mass der Rechenlast haelt, misst ueberwiegend Debug-Text.

    Rueckgabe: (zaehler, anzahl_befehle, unbekannt)
    """
    zaehler = {}
    anzahl = 0
    unbekannt = 0
    p = von
    while p + 4 <= bis:
        wort = struct.unpack_from("<I", b, p)[0]
        if wort == ENDE:
            break
        opcode = wort & 0xFFFF
        if opcode == _KOMMENTAR:
            laenge = (wort >> 16) & 0x7FFF
            p += 4 + laenge * 4
            continue
        if opcode not in _OPERANDEN:
            unbekannt += 1
            p += 4
            continue
        name = BEFEHLE.get(opcode, "op%02x" % opcode)
        zaehler[name] = zaehler.get(name, 0) + 1
        # def zaehlt in D3D nicht gegen die Befehlsgrenze.
        if opcode != 0x51:
            anzahl += 1
        p += 4 + _OPERANDEN[opcode] * 4
    return zaehler, anzahl, unbekannt


# Registertyp steckt in den Bits 28..30 eines Operandentokens.
_TYP = {0: "r", 1: "v", 2: "c", 3: "a", 4: "t"}


def register(b, von, bis):
    """Welche Register benutzt ein Programm, und bis zu welcher Nummer?

    *** NUR FUER VERTEXSHADER (vs.1.0) GUELTIG. ***
    Die Operandentabelle und die Registertyp-Bits dieser Funktion
    beschreiben den Vertexshader-Befehlssatz. Auf einen ps.1.1
    angewandt liefert sie Unsinn -- in einer ersten Fassung der
    Referenztabelle stand deshalb "maxR = 2046" bei allen fuenf
    Pixelshadern, obwohl ps.1.1 nur r0 und r1 kennt. 2046 ist 0x7fe
    und damit reine Fehldeutung eines Texturkoordinaten-Tokens.
    Wer Pixelshader vermessen will, braucht eine eigene Tabelle.

    *** WOFUER DAS GEBRAUCHT WIRD: *** vs.1.0 hat 96 Konstanten-
    register (c0..c95) und 12 Temporaerregister. Wer wissen will, ob
    ein fuenftes, sechstes Licht ueberhaupt Platz haette, muss die
    Belegung kennen -- die Befehlsgrenze allein sagt es nicht.
    """
    hoechste = {}
    p = von
    while p + 4 <= bis:
        wort = struct.unpack_from("<I", b, p)[0]
        if wort == ENDE:
            break
        opcode = wort & 0xFFFF
        if opcode == _KOMMENTAR:
            p += 4 + ((wort >> 16) & 0x7FFF) * 4
            continue
        if opcode not in _OPERANDEN:
            p += 4
            continue
        anzahl = _OPERANDEN[opcode]
        # def traegt vier rohe Gleitkommazahlen, keine Register.
        felder = 1 if opcode == 0x51 else anzahl
        for k in range(felder):
            q = p + 4 + k * 4
            if q + 4 > bis:
                break
            tok = struct.unpack_from("<I", b, q)[0]
            typ = _TYP.get((tok >> 28) & 7)
            nr = tok & 0x7FF
            if typ:
                hoechste[typ] = max(hoechste.get(typ, -1), nr)
        p += 4 + anzahl * 4
    return hoechste


def namensliste(exe_pfad):
    """Alle Shadernamen, die als .vsa/.psa in der Exe stehen.

    Auch die ohne eigenen Bytecodeblock -- die Namensliste ist
    laenger als die Programmliste, weil manche Namen nur
    Sammeleintraege sind.
    """
    b = _lies(exe_pfad)
    return sorted(set(
        m.group(1).decode("latin-1")
        for m in re.finditer(rb"FILE([\x20-\x7e]{3,80}?)\x00", b)))


def uebersicht(exe_pfad):
    """Eine Zusammenfassung, wie man sie fuer den Handoff braucht."""
    bl = bloecke(exe_pfad)
    nach_fassung = {}
    for s in bl:
        nach_fassung.setdefault(s["fassung"], []).append(s)
    return {
        "programme": len(bl),
        "nach_fassung": {k: len(v) for k, v in sorted(nach_fassung.items())},
        "namen": len(namensliste(exe_pfad)),
        "ohne_namen": sum(1 for s in bl if not s["name"]),
        # *** Der Punkt, an dem d3d8to9 ansetzen muss. ***
        "vs10": sum(1 for s in bl if s["fassung"] == "vs.1.0"),
    }
