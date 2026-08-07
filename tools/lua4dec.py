#!/usr/bin/env python3
"""lua4dec.py -- Lua-4.0-Bytecode zurueck in lesbares Lua.

ZWECK
    AquaNox liefert seine 74 Missionen nur als kompilierte .sco aus.
    Genau EIN Missionsquelltext ist erhalten (neopolis_neu.scr, und der
    stammt aus AquaNox 2). Dieser Dekompiler macht aus einem Beispiel
    vierundsiebzig.

ANSATZ
    Lua 4.0 ist eine STACKMASCHINE. Der Dekompiler simuliert den Stack,
    aber mit AUSDRUECKEN statt Werten: PUSHSTRING legt '"text"' ab,
    GETGLOBAL legt 'name' ab, CALL nimmt Funktion und Argumente vom
    Stack und setzt 'name(arg1, arg2)' zusammen.
    Sobald ein Ausdruck verbraucht wird (SETGLOBAL, SETLOCAL, CALL mit
    null Rueckgabewerten), faellt eine Anweisung an.

WAS ER KANN
    Ausdruecke, Aufrufe, Zuweisungen, Tabellenkonstruktoren,
    Methodenaufrufe (obj:m), Arithmetik, Verkettung, verschachtelte
    Funktionen, if/then/else und while, numerische und generische
    for-Schleifen.

WAS ER NICHT KANN
    Lokale Namen sind im Bytecode nicht immer erhalten -- dann heissen
    sie L0, L1, ... Sehr verschachtelte Sprungmuster gibt er als
    Kommentar mit Sprungziel aus, statt zu raten. Das Ergebnis ist
    LESBARES, nicht wieder uebersetzbares Lua.

AUFRUF
    lua4dec.py <datei.sco>              alles
    lua4dec.py <datei.sco> --stats      nur Kennzahlen
    lua4dec.py <datei.sco> --func main.f3   eine Funktion
"""
import os, sys, struct

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import lua4dis as L


# ------------------------------------------------------------ Hilfsmittel ---
def lit(s):
    """Lua-Zeichenkette mit Anfuehrungszeichen und Maskierung."""
    out = s.replace("\\", "\\\\").replace('"', '\\"')
    out = out.replace("\n", "\\n").replace("\r", "\\r").replace("\t", "\\t")
    return '"' + out + '"'


def zahl(x):
    if x == int(x) and abs(x) < 1e15:
        return str(int(x))
    return repr(x)


NAME_OK = set("abcdefghijklmnopqrstuvwxyz"
              "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_")


def ist_name(s):
    return s and s[0] not in "0123456789" and all(c in NAME_OK for c in s)


class Ausdruck:
    """Ein Ausdruck mit Bindungsstaerke, damit Klammern nur dort stehen,
    wo sie noetig sind."""
    def __init__(self, text, staerke=99):
        self.text = text
        self.staerke = staerke

    def __call__(self, mindest):
        if self.staerke < mindest:
            return "(" + self.text + ")"
        return self.text

    def __str__(self):
        return self.text


# Bindungsstaerken wie in Lua 4.0
ST_ODER, ST_UND, ST_VGL, ST_KONK, ST_ADD, ST_MUL, ST_UNAER, ST_POT = \
    1, 2, 3, 4, 5, 6, 7, 8

BINAER = {
    "ADD": ("+", ST_ADD), "SUB": ("-", ST_ADD),
    "MULT": ("*", ST_MUL), "DIV": ("/", ST_MUL),
    "POW": ("^", ST_POT), "CONCAT": ("..", ST_KONK),
}
VERGLEICH = {
    "JMPNE": "~=", "JMPEQ": "==", "JMPLT": "<",
    "JMPLE": "<=", "JMPGT": ">", "JMPGE": ">=",
}


class Dekompiler:
    def __init__(self, proto, pfad="main", tiefe=0):
        self.p = proto
        self.pfad = pfad
        self.tiefe = tiefe
        self.zeilen = []
        self.marken = set()          # Sprungziele
        self.lokale = self._lokale_namen()
        # WICHTIG: Lua 4.0 zaehlt Stackslots AB DER FUNKTIONSBASIS.
        # Slot 0..numparams-1 sind die Parameter, erst darueber liegt
        # der Auswertungsstack. Wer hier bei 0 anfaengt, verschiebt
        # jedes CALL um numparams -- der Fehler kostet Stunden.
        self.basis = proto.numparams
        self.stack = [Ausdruck(self.lokal(k)) for k in range(self.basis)]

    # -- lokale Namen aus der Debug-Information, sofern vorhanden ---------
    def _lokale_namen(self):
        namen = {}
        for eintrag in self.p.locals:
            roh, start, ende = eintrag
            if roh:
                namen.setdefault(len(namen), roh[:-1].decode("latin-1"))
        return namen

    def lokal(self, i):
        return self.lokale.get(i, f"L{i}")

    # -- Ausgabe ---------------------------------------------------------
    def schreib(self, text, einzug=0):
        self.zeilen.append(("  " * (self.tiefe + einzug)) + text)

    def push(self, text, staerke=99):
        self.stack.append(Ausdruck(text, staerke))

    def pop(self, n=1):
        if n == 0:
            return []
        raus = self.stack[-n:]
        del self.stack[-n:]
        while len(raus) < n:
            raus.insert(0, Ausdruck("nil"))
        return raus

    # -- Sprungziele vorab sammeln ---------------------------------------
    def _sammle_marken(self):
        for pc, i in enumerate(self.p.code):
            o = L.op(i)
            if o in ("JMP", "JMPT", "JMPF", "JMPONT", "JMPONF",
                     "FORPREP", "FORLOOP", "LFORPREP", "LFORLOOP") or \
               o in VERGLEICH:
                self.marken.add(pc + 1 + L.argS(i))

    # -- Hauptlauf --------------------------------------------------------
    def lauf(self):
        self._sammle_marken()
        p = self.p
        pc = 0
        # Blockverwaltung: (art, endziel, einzug)
        bloecke = []
        einzug = 0

        while pc < len(p.code):
            # Blockenden schliessen
            while bloecke and bloecke[-1][1] == pc:
                art, _, _ = bloecke.pop()
                einzug -= 1
                self.schreib("end", einzug)

            i = p.code[pc]
            o = L.op(i)
            u, a, b, s = L.argU(i), L.argA(i), L.argB(i), L.argS(i)

            if o == "END":
                break

            elif o == "RETURN":
                werte = self.stack[u:] if u < len(self.stack) else []
                del self.stack[u:]
                if werte:
                    self.schreib("return " + ", ".join(str(x) for x in werte),
                                 einzug)
                elif pc < len(p.code) - 2:
                    self.schreib("return", einzug)

            elif o == "CALL":
                # Funktion liegt auf Stack[a], Argumente darueber.
                if a < len(self.stack):
                    fn = self.stack[a]
                    args = self.stack[a + 1:]
                    del self.stack[a:]
                else:
                    fn, args = Ausdruck("?"), []
                ruf = f"{fn(ST_POT)}({', '.join(str(x) for x in args)})"
                if b == 0:
                    self.schreib(ruf, einzug)      # Anweisung
                else:
                    self.push(ruf)
                    for _ in range((b if b != 255 else 1) - 1):
                        self.push("nil")

            elif o == "TAILCALL":
                fn = self.stack[a] if a < len(self.stack) else Ausdruck("?")
                args = self.stack[a + 1:]
                del self.stack[a:]
                self.schreib(f"return {fn(ST_POT)}"
                             f"({', '.join(str(x) for x in args)})", einzug)

            elif o == "PUSHNIL":
                # *** PUSHNIL U legt U Nullwerte ab, NICHT U+1. ***
                # lopcodes.h sagt:  OP_PUSHNIL  U  -  nil_1...nil_u
                # Der Off-by-one hier verschiebt den ganzen Stack und
                # macht danach jedes CALL falsch -- er war die Ursache
                # von 107 der 173 ungeloesten Aufrufe im ersten
                # Durchlauf (Muster "x = nil(f, arg1, arg2)").
                for _ in range(max(1, u)):
                    self.push("nil")

            elif o == "POP":
                self.pop(u)

            elif o == "PUSHINT":
                self.push(str(s))
            elif o == "PUSHSTRING":
                self.push(lit(p.kstr[u]) if u < len(p.kstr) else "?")
            elif o == "PUSHNUM":
                self.push(zahl(p.knum[u]) if u < len(p.knum) else "?")
            elif o == "PUSHNEGNUM":
                self.push("-" + (zahl(p.knum[u]) if u < len(p.knum) else "?"),
                          ST_UNAER)
            elif o == "PUSHUPVALUE":
                self.push(f"%{u}")

            elif o == "GETLOCAL":
                self.push(self.lokal(u))
            elif o == "GETGLOBAL":
                self.push(p.kstr[u] if u < len(p.kstr) else "?")
            elif o == "GETTABLE":
                # Stack: [.. tabelle, schluessel] -> [.. wert]
                tab, schluessel = self.pop(2)
                st = schluessel.text
                if st.startswith('"') and st.endswith('"') \
                   and ist_name(st[1:-1]):
                    self.push(f"{tab(ST_POT)}.{st[1:-1]}")
                else:
                    self.push(f"{tab(ST_POT)}[{schluessel}]")
            elif o == "GETDOTTED":
                tab = self.pop(1)[0]
                feld = p.kstr[u] if u < len(p.kstr) else "?"
                self.push(f"{tab(ST_POT)}.{feld}"
                          if ist_name(feld)
                          else f"{tab(ST_POT)}[{lit(feld)}]")
            elif o == "GETINDEXED":
                tab = self.pop(1)[0]
                self.push(f"{tab(ST_POT)}[{self.lokal(u)}]")
            elif o == "PUSHSELF":
                obj = self.pop(1)[0]
                m = p.kstr[u] if u < len(p.kstr) else "?"
                self.push(f"{obj(ST_POT)}:{m}")

            elif o == "CREATETABLE":
                self.push("{}")

            elif o == "SETLOCAL":
                wert = self.pop(1)[0]
                if u < self.basis:
                    self.stack[u] = Ausdruck(self.lokal(u))
                self.schreib(f"{self.lokal(u)} = {wert}", einzug)
            elif o == "SETGLOBAL":
                wert = self.pop(1)[0]
                name = p.kstr[u] if u < len(p.kstr) else "?"
                self.schreib(f"{name} = {wert}", einzug)
            elif o == "SETTABLE":
                # A = Position der Tabelle von oben, B = Gesamtzahl zu poppen
                werte = self.pop(b)
                if len(werte) >= 3:
                    tab, schl, wert = werte[0], werte[1], werte[-1]
                    self.schreib(f"{tab(ST_POT)}[{schl}] = {wert}", einzug)

            elif o in ("SETLIST", "SETMAP"):
                anzahl = (b + 1) if o == "SETLIST" else (u + 1)
                if o == "SETMAP":
                    paare = self.pop(2 * anzahl)
                    tab = self.pop(1)[0] if self.stack else Ausdruck("{}")
                    teile = []
                    for k in range(0, len(paare), 2):
                        schl, wert = paare[k], paare[k + 1]
                        st = schl.text
                        if st.startswith('"') and ist_name(st[1:-1]):
                            teile.append(f"{st[1:-1]} = {wert}")
                        else:
                            teile.append(f"[{schl}] = {wert}")
                    self.push("{ " + ", ".join(teile) + " }")
                else:
                    werte = self.pop(anzahl)
                    tab = self.pop(1)[0] if self.stack else Ausdruck("{}")
                    self.push("{ " + ", ".join(str(x) for x in werte) + " }")

            elif o in BINAER:
                zeichen, staerke = BINAER[o]
                rechts, links = self.pop(1)[0], self.pop(1)[0]
                self.push(f"{links(staerke)} {zeichen} {rechts(staerke + 1)}",
                          staerke)
            elif o == "ADDI":
                x = self.pop(1)[0]
                self.push(f"{x(ST_ADD)} + {s}", ST_ADD)
            elif o == "MINUS":
                x = self.pop(1)[0]
                self.push(f"-{x(ST_UNAER)}", ST_UNAER)
            elif o == "NOT":
                x = self.pop(1)[0]
                self.push(f"not {x(ST_UNAER)}", ST_UNAER)

            elif o in VERGLEICH:
                rechts, links = self.pop(1)[0], self.pop(1)[0]
                # Sprung bei WAHR -> die Bedingung ist negiert
                bed = f"{links(ST_VGL)} {VERGLEICH[o]} {rechts(ST_VGL)}"
                ziel = pc + 1 + s
                if ziel > pc:
                    self.schreib(f"if not ({bed}) then", einzug)
                    bloecke.append(("if", ziel, einzug))
                    einzug += 1
                else:
                    self.schreib(f"-- Ruecksprung nach {ziel} wenn {bed}",
                                 einzug)

            elif o in ("JMPT", "JMPONT"):
                bed = self.pop(1)[0]
                ziel = pc + 1 + s
                if ziel > pc:
                    self.schreib(f"if not ({bed}) then", einzug)
                    bloecke.append(("if", ziel, einzug))
                    einzug += 1
                else:
                    self.schreib(f"-- while {bed} (Ruecksprung {ziel})", einzug)
            elif o in ("JMPF", "JMPONF"):
                bed = self.pop(1)[0]
                ziel = pc + 1 + s
                if ziel > pc:
                    self.schreib(f"if {bed} then", einzug)
                    bloecke.append(("if", ziel, einzug))
                    einzug += 1
                else:
                    self.schreib(f"-- while not {bed} (Ruecksprung {ziel})",
                                 einzug)

            elif o == "JMP":
                ziel = pc + 1 + s
                if ziel <= pc:
                    self.schreib(f"-- Schleifenende, zurueck nach {ziel}",
                                 einzug)
                elif bloecke and bloecke[-1][1] == pc + 1:
                    # else-Zweig
                    art, altziel, alteinzug = bloecke.pop()
                    einzug -= 1
                    self.schreib("else", einzug)
                    einzug += 1
                    bloecke.append(("else", ziel, alteinzug))
                else:
                    self.schreib(f"-- Sprung nach {ziel}", einzug)

            elif o == "PUSHNILJMP":
                self.push("nil")

            elif o == "FORPREP":
                schritt, ende, start = self.pop(3)
                self.schreib(f"for {self.lokal(len(self.lokale))} = "
                             f"{start}, {ende}, {schritt} do", einzug)
                bloecke.append(("for", pc + 1 + s + 1, einzug))
                einzug += 1
            elif o == "LFORPREP":
                tab = self.pop(1)[0]
                self.schreib(f"for k, v in {tab} do", einzug)
                bloecke.append(("for", pc + 1 + s + 1, einzug))
                einzug += 1
            elif o in ("FORLOOP", "LFORLOOP"):
                pass          # das Blockende schliesst oben

            elif o == "CLOSURE":
                unter = p.kproto[a] if a < len(p.kproto) else None
                if unter is None:
                    self.push("function() end")
                else:
                    d = Dekompiler(unter, f"{self.pfad}.f{a}", self.tiefe + 1)
                    innen = d.lauf()
                    params = ", ".join(d.lokal(k)
                                       for k in range(unter.numparams))
                    if unter.is_vararg:
                        params = (params + ", ...") if params else "..."
                    kopf = f"function({params})"
                    text = kopf + "\n" + "\n".join(innen) + \
                        "\n" + "  " * self.tiefe + "end"
                    self.push(text)
                    self.pop(b)          # Upvalues

            pc += 1

        while bloecke:
            bloecke.pop()
            einzug -= 1
            self.schreib("end", max(0, einzug))
        return self.zeilen


def dekompiliere(proto, pfad="main"):
    return "\n".join(Dekompiler(proto, pfad).lauf())


def _cli():
    if len(sys.argv) < 2:
        print(__doc__); sys.exit(1)
    pfad = sys.argv[1]
    top = L.load(pfad)
    modus = sys.argv[2] if len(sys.argv) > 2 else "--alles"

    if modus == "--stats":
        n_proto = n_code = n_kstr = 0
        for _, p in L.walk(top):
            n_proto += 1
            n_code += len(p.code)
            n_kstr += len(p.kstr)
        print(f"{os.path.basename(pfad)}: {n_proto} Funktionen, "
              f"{n_code:,} Instruktionen, {n_kstr:,} Zeichenketten")
    elif modus == "--func":
        ziel = sys.argv[3]
        for weg, p in L.walk(top):
            if weg == ziel:
                print(dekompiliere(p, weg))
                return
        print(f"nicht gefunden: {ziel}")
    else:
        print(f"-- dekompiliert aus {os.path.basename(pfad)}")
        print(f"-- Quelle laut Bytecode: {top.source}")
        print()
        print(dekompiliere(top))


if __name__ == "__main__":
    _cli()
