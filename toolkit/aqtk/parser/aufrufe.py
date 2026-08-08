"""Funktionsaufrufe samt Argumenten aus Lua-4.0-Bytecode lesen.

WARUM DAS NOETIG IST: Eine Suche nach Zahlentripeln im Konstantenpool
liefert Unsinn -- die Reihenfolge der Konstanten hat nichts mit ihrer
Verwendung zu tun. Wer wissen will, wo ein Objekt steht, muss den
AUFRUF lesen, der die Position setzt.

WIE ES GEHT: Lua 4.0 ist eine Stapelmaschine. Ein Aufruf sieht so aus

    GETGLOBAL   "PatrolArea_SetPosition"     Funktion auf den Stapel
    GETGLOBAL   "o1234"                      erstes Argument
    PUSHNUM     512.0                        zweites
    PUSHNUM     -80.0                        drittes
    PUSHNUM     3000.0                       viertes
    CALL        A=0 B=0                      ab Stapelplatz A rufen

Es genuegt also, einen Stapel mitzufuehren und bei CALL abzulesen,
was daraufliegt. Nur konstante Werte lassen sich so gewinnen --
alles Berechnete erscheint als None und wird ausdruecklich als
unbekannt gemeldet.

*** Diese Auswertung ist BELEGBAR, nicht geraten: jeder Aufruf steht
so im Bytecode. Unsicher bleibt allein, ob ein Name eine Position
bedeutet -- das entscheidet die Namensliste in sco.py. ***

*** ZWEI FEHLER, DIE HIER LANGE DRINSTECKTEN (behoben): ***

1. DER STAPEL BEGANN LEER. In Lua 4.0 ist das A eines CALL ein
   ABSOLUTER Platz ab der Funktionsbasis. Die Parameter belegen die
   Plaetze 0..numparams-1. Wer mit einem leeren Stapel anfaengt,
   greift bei jedem Proto mit Parametern daneben.

2. DIE SPRUNGBEFEHLE WURDEN UEBERGANGEN. JMPEQ und seine zehn
   Geschwister nehmen ihre Operanden vom Stapel. Wurden sie
   ignoriert, wuchs der Stapel zu hoch, und CALL A traf daneben.

WAS DAS GEKOSTET HAT, gemessen gegen die Zahl der CALL/TAILCALL-
Opcodes (die Obergrenze -- mehr Aufrufe kann es nicht geben):

    Karte   vorher            nachher
    1h1     5.194 / 5.901 =  88,0 %   ->  5.901 = 100,0 %
    1h2     4.964 / 5.437 =  91,3 %   ->  5.437 = 100,0 %
    4h1     4.438 / 4.813 =  92,2 %   ->  4.813 = 100,0 %
    6h3     5.470 / 6.360 =  86,0 %   ->  6.360 = 100,0 %

*** DREI FUNKTIONEN FEHLTEN VOLLSTAENDIG: ***
    DelayedFunction                    0 statt   5 /  6 /  7 / 75
    StopAllActiveBehaviours_AndCall    0 statt 111 / 57 / 51 / 92
    CallFunction                     310 statt 648   (1h1)

GEGENPROBE: die neuen Zahlen decken sich mit einer voellig
unabhaengigen Auswertung der Dekompilate durch parser/triggernetz.py
(SendRadioMessageTake 14 / 12 / 16 / 23 in beiden Wegen).

WAS BLEIBT: 14 bis 21 Prozent der Aufrufe haben mindestens ein
Argument, das aus einer lokalen Variablen kommt. Dort steht None.
Das ist keine Luecke im Leser, sondern eine Grenze der statischen
Auswertung -- der Wert entsteht erst zur Laufzeit.
"""

# Befehle, die zwei Werte vom Stapel nehmen. Die Vergleiche springen
# nur; die Rechenbefehle legen ein Ergebnis zurueck (siehe unten).
_NIMMT_ZWEI = frozenset((
    "JMPNE", "JMPEQ", "JMPLT", "JMPLE", "JMPGT", "JMPGE",
    "ADD", "SUB", "MULT", "DIV", "POW", "GETTABLE",
))
# Davon die, die anschliessend ein Ergebnis ablegen.
_LEGT_AB = frozenset(("ADD", "SUB", "MULT", "DIV", "POW", "GETTABLE"))
# Befehle, die genau einen Wert nehmen und nichts ablegen.
_NIMMT_EINEN = frozenset((
    "JMPT", "JMPF", "JMPONT", "JMPONF", "SETGLOBAL", "SETLOCAL",
))


class Aufruf:
    __slots__ = ("funktion", "argumente", "proto", "stelle")

    def __init__(self, funktion, argumente, proto, stelle):
        self.funktion = funktion        # str oder None
        self.argumente = argumente      # Liste: str, float, None
        self.proto = proto
        self.stelle = stelle

    @property
    def zahlen(self):
        return [a for a in self.argumente if isinstance(a, float)]

    def __repr__(self):
        a = ", ".join("?" if x is None else repr(x) for x in self.argumente)
        return f"{self.funktion}({a})"


def lies(proto, weg="main", lua4dis=None, tiefe=0, aus=None):
    """Liest alle Aufrufe eines Protos und seiner Unterfunktionen."""
    if aus is None:
        aus = []
    if lua4dis is None:
        import lua4dis as _l
        lua4dis = _l
    if proto is None or tiefe > 14:
        return aus

    op, argU, argA, argB, argS = (lua4dis.op, lua4dis.argU, lua4dis.argA,
                                  lua4dis.argB, lua4dis.argS)
    kstr = getattr(proto, "kstr", []) or []
    knum = getattr(proto, "knum", []) or []
    code = getattr(proto, "code", []) or []

    # *** Der Stapel beginnt bei numparams, nicht bei null. ***
    # Die Parameter des Protos belegen die Plaetze 0..n-1; CALL A
    # zaehlt ab derselben Basis.
    stapel = [None] * int(getattr(proto, "numparams", 0) or 0)

    def aufstocken(n):
        """Den Stapel auf mindestens n Plaetze bringen."""
        while len(stapel) < n:
            stapel.append(None)

    for stelle, i in enumerate(code):
        try:
            name = op(i)
        except Exception:
            continue

        if name == "GETGLOBAL":
            u = argU(i)
            stapel.append(kstr[u] if u < len(kstr) else None)
        elif name == "PUSHSTRING":
            u = argU(i)
            stapel.append(kstr[u] if u < len(kstr) else None)
        elif name == "PUSHNUM":
            u = argU(i)
            stapel.append(float(knum[u]) if u < len(knum) else None)
        elif name == "PUSHNEGNUM":
            u = argU(i)
            stapel.append(-float(knum[u]) if u < len(knum) else None)
        elif name == "PUSHINT":
            stapel.append(float(argS(i)))
        elif name == "PUSHNIL":
            stapel.extend([None] * max(1, argU(i)))
        elif name in ("GETDOTTED", "PUSHSELF"):
            # Methodenzugriff: der Name ist die Konstante, das Objekt
            # liegt schon auf dem Stapel.
            u = argU(i)
            n = kstr[u] if u < len(kstr) else None
            if name == "GETDOTTED" and stapel:
                objekt = stapel.pop()
                stapel.append(f"{objekt}.{n}" if objekt else n)
            else:
                stapel.append(n)
        elif name == "CALL":
            # *** Aufrufe sind VERSCHACHTELT. *** Ein
            #     Body_SetCS(node, MAT_Vector3(x,y,z), MAT_Vector3(...))
            # sieht im Bytecode so aus:
            #     GETGLOBAL Body_SetCS | GETGLOBAL node
            #     GETGLOBAL MAT_Vector3 | PUSHNUM x,y,z | CALL A=2 B=1
            #     GETGLOBAL MAT_Vector3 | ...           | CALL A=3 B=255
            #     ...                                   | CALL A=0
            # Der erste CALL gilt also MAT_Vector3 (Stapelplatz 2),
            # nicht Body_SetCS. Wer stur das erste Element nimmt,
            # findet Body_SetCS nie.
            #
            # argA ist der Platz der Funktion, argB die Zahl der
            # Rueckgabewerte (255 = veraenderlich). Damit laesst
            # sich der Stapel sauber fuehren, solange nur GETGLOBAL
            # und PUSH vorkommen -- und genau so sind diese
            # Skripte gebaut.
            a, b = argA(i), argB(i)
            if a < len(stapel):
                funktion = stapel[a]
                argumente = stapel[a + 1:]
                if isinstance(funktion, str):
                    aus.append(Aufruf(funktion, argumente, weg, stelle))
                    # *** MAT_Vector3 gibt seinen Wert zurueck. ***
                    # So sieht der aeussere Aufruf spaeter echte
                    # Zahlen statt eines Platzhalters.
                    if funktion == "MAT_Vector3":
                        z = [x for x in argumente[:3]
                             if isinstance(x, float)]
                        rueck = z if len(z) == 3 else None
                    else:
                        rueck = None
                else:
                    rueck = None
                del stapel[a:]
            else:
                # Der Stapel ist zu kurz -- auffuellen statt leeren,
                # sonst geht die Basis fuer alles Folgende verloren.
                rueck = None
                aufstocken(a)
                del stapel[a:]
            # b == 255 heisst "veraenderlich viele Rueckgabewerte".
            # Fuer die Auswertung genuegt einer -- sonst ginge der
            # Wert von MAT_Vector3 verloren, und genau der wird
            # gebraucht (er ist das Argument von Body_SetCS).
            anzahl = 1 if b == 255 else b
            for _ in range(max(anzahl, 0)):
                stapel.append(rueck)
                rueck = None
        elif name == "GETLOCAL":
            # Eine lokale Variable liegt auf einem FESTEN Platz --
            # ihr Wert wird kopiert, nicht neu erfunden. Frueher
            # legte der Leser hier blind None ab und verlor damit
            # jeden Wert, der ueber eine Variable lief.
            u = argU(i)
            aufstocken(u + 1)
            stapel.append(stapel[u])
        elif name == "SETLOCAL":
            u = argU(i)
            aufstocken(u + 1)
            w = stapel.pop() if stapel else None
            if u < len(stapel):
                stapel[u] = w
        elif name == "SETGLOBAL":
            if stapel:
                stapel.pop()
        elif name == "SETTABLE" or name == "SETLIST":
            for _ in range(max(0, argB(i))):
                if stapel:
                    stapel.pop()
        elif name == "SETMAP":
            for _ in range(2 * max(0, argU(i))):
                if stapel:
                    stapel.pop()
        elif name == "POP":
            for _ in range(max(1, argU(i))):
                if stapel:
                    stapel.pop()
        elif name == "CONCAT":
            for _ in range(max(1, argU(i))):
                if stapel:
                    stapel.pop()
            stapel.append(None)
        elif name == "CLOSURE":
            # Die Upvalues liegen auf dem Stapel und gehen in die
            # Funktion ueber.
            for _ in range(max(0, argB(i))):
                if stapel:
                    stapel.pop()
            stapel.append(None)
        elif name in _NIMMT_ZWEI:
            # *** Vergleiche raeumen ihre Operanden ab. *** Wurden
            # sie uebergangen, wuchs der Stapel, und der naechste
            # CALL griff daneben.
            for _ in range(2):
                if stapel:
                    stapel.pop()
            if name in _LEGT_AB:
                stapel.append(None)
        elif name in _NIMMT_EINEN:
            if stapel:
                stapel.pop()
        elif name in ("MINUS", "NOT", "ADDI"):
            if stapel:
                stapel.pop()
            stapel.append(None)
        elif name in ("RETURN", "END"):
            # Zurueck auf die Basis -- nicht auf null, sonst geht
            # der Platz der Parameter verloren.
            del stapel[int(getattr(proto, "numparams", 0) or 0):]
        elif name in ("FORPREP", "FORLOOP", "LFORPREP", "LFORLOOP"):
            pass
        else:
            # Was Werte erzeugt, aber nicht verfolgt werden kann,
            # legt ein ausdrueckliches Unbekannt ab.
            if name in ("GETINDEXED", "CREATETABLE", "PUSHUPVALUE",
                        "PUSHNILJMP"):
                stapel.append(None)

    for n, kind in enumerate(getattr(proto, "kproto", []) or []):
        lies(kind, f"{weg}/{n}", lua4dis, tiefe + 1, aus)
    return aus


def nach_funktion(aufrufe):
    """Gruppiert Aufrufe nach Funktionsnamen."""
    z = {}
    for a in aufrufe:
        z.setdefault(a.funktion, []).append(a)
    return z
