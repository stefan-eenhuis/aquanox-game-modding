"""Missionsskripte (.sco) lesen -- Struktur, Konstanten, Objektpositionen.

GRUNDLAGE (Handoff): .sco sind Lua-4.0-Bytecode. Der Kopf ist
"\\x1bLua" + Version. Jede Karte hat map\\<level>\\script\\<level>.sco.
kproto[1] ist der Weltaufbau (__InitLayout), der die Objekte setzt.
Missionen sind Triggernetze, keine Zustandsmaschinen.

Diese Datei benutzt lua4dis.py aus mod_docu/tools und liest NUR.

*** WAS HIER BEWUSST NICHT GESCHIEHT: *** Es wird nicht versucht, den
Bytecode vollstaendig zu dekompilieren. Fuer die 3D-Ansicht genuegt es,
die Konstanten zu lesen und daraus Positionen und Namen zu gewinnen.
Zahlentripel werden als moegliche Positionen gemeldet -- mit
ausdruecklicher Guete-Angabe, nicht als Tatsache.
"""
import re

from . import Unsicher


class Objekt:
    """Ein im Skript gefundenes Objekt mit Position."""

    __slots__ = ("name", "art", "position", "guete", "quelle", "rohwerte")

    def __init__(self, name, art, position, guete, quelle="", rohwerte=None):
        self.name = name
        self.art = art                # spawn, gegner, gebaeude, trigger ...
        self.position = position      # (x, y, z)
        self.guete = guete
        self.quelle = quelle
        self.rohwerte = rohwerte or []

    def as_dict(self):
        return {"name": self.name, "art": self.art,
                "position": list(self.position), "guete": self.guete,
                "quelle": self.quelle}


# Namensmuster -> Art. Aus den Klassennamen der Engine (Handoff 282, 338).
ARTEN = [
    (re.compile(r"player|spieler|start", re.I),          "spawn"),
    (re.compile(r"patrol|patrouille", re.I),             "patrouille"),
    (re.compile(r"trigger|ausloeser", re.I),             "trigger"),
    (re.compile(r"waypoint|wegpunkt|path", re.I),        "wegpunkt"),
    (re.compile(r"vessel|ship|schiff|boot", re.I),       "schiff"),
    (re.compile(r"turret|geschuetz|gun", re.I),          "geschuetz"),
    (re.compile(r"build|gebaeude|station|dock|tor", re.I), "gebaeude"),
    (re.compile(r"light|licht", re.I),                   "licht"),
    (re.compile(r"camera|kamera", re.I),                 "kamera"),
    (re.compile(r"spawn|seeder|emitter", re.I),          "effekt"),
]


def art_raten(name):
    for muster, art in ARTEN:
        if muster.search(name):
            return art
    return "objekt"


class Skript:
    """Ein geladenes .sco mit Struktur und gefundenen Objekten."""

    def __init__(self, pfad):
        self.pfad = pfad
        self.protos = []          # (weg, anzahl_konstanten, anzahl_code)
        self.strings = []
        self.zahlen = []
        self.objekte = []
        self.hinweise = []
        self.baum = None
        self.aufrufe = []             # parser.aufrufe.Aufruf
        self.aufruf_statistik = {}    # funktion -> anzahl
        self.graph = []               # (vater, sohn) aus Node_AddSon
        self.knotenpfade = []         # aus Node_Find

    # ------------------------------------------------------------------
    @classmethod
    def laden(cls, rohdaten, pfad=""):
        s = cls(pfad)
        if not rohdaten:
            s.hinweise.append("keine Daten")
            return s
        if rohdaten[:4] != b"\x1bLua":
            s.hinweise.append(f"kein Lua-Bytecode (Kopf: {rohdaten[:4]!r})")
            return s
        try:
            import lua4dis
        except ImportError as e:
            s.hinweise.append(f"lua4dis nicht ladbar: {e}")
            return s
        try:
            s.baum = lua4dis.loads(rohdaten)
            s._einsammeln(s.baum)
        except Exception as e:
            s.hinweise.append(f"nicht lesbar: {type(e).__name__}: {e}")
        s._objekte_bilden()
        return s

    def _einsammeln(self, proto, tiefe=0, weg="main"):
        """Geht den Proto-Baum durch und sammelt die Konstanten ein.

        lua4dis.Proto (aus load_function) haelt:
            .kstr    Zeichenketten, schon nach str dekodiert
            .knum    Zahlen
            .kproto  die Unterfunktionen
            .code    der Bytecode
        Achtung: .K() und .N() sind METHODEN zum Anhaengen neuer
        Konstanten, keine Felder -- wer sie liest, bekommt ein
        Methodenobjekt.
        """
        if proto is None or tiefe > 14:
            return
        strs = list(getattr(proto, "kstr", None) or [])
        nums = list(getattr(proto, "knum", None) or [])
        kinder = list(getattr(proto, "kproto", None) or [])
        code = getattr(proto, "code", None) or []
        self.protos.append((weg, len(strs) + len(nums), len(code)))

        for x in strs:
            self.strings.append(
                (weg, x.decode("latin-1", "replace")
                      if isinstance(x, bytes) else str(x)))
        for x in nums:
            try:
                self.zahlen.append((weg, float(x)))
            except (TypeError, ValueError):
                pass

        for i, kind in enumerate(kinder):
            self._einsammeln(kind, tiefe + 1, f"{weg}/{i}")

    # ------------------------------------------------------------------
    def _objekte_bilden(self):
        """Bildet Objekte aus den AUFRUFEN des Bytecodes.

        *** Eine fruehere Fassung suchte Zahlentripel im Konstanten-
        pool. Das lieferte Unsinn -- die Reihenfolge der Konstanten
        hat nichts mit ihrer Verwendung zu tun. Jetzt werden die
        Aufrufe gelesen (parser/aufrufe.py), was belegbar ist. ***

        Gemessen an map/1h1/script/1h1.sco (2.260 Aufrufe,
        574 verschiedene Funktionen):
            Node_AddSon(vater, sohn)   349x  baut den Szenengraph
            Node_Find(pfad)            189x  sucht Knoten
            MAT_Vector3(x, y, z)       188x  baut einen Vektor
            BindEasy(...)              210x
            SendRadioMessageTake(...)    7x  Funksprueche
            Game_SetWayPoint(...)        3x

        WAS DAMIT GEHT: der Baum der Knotennamen und die Vektoren.
        WAS NICHT GEHT: die sichere Zuordnung Vektor -> Knoten. Die
        Argumente stammen oft aus lokalen Variablen, die sich ohne
        vollstaendige Auswertung des Bytecodes nicht verfolgen
        lassen; solche Werte erscheinen als None. Deshalb wird jede
        Position mit Guete MOEGLICH gemeldet.
        """
        if self.baum is None:
            return
        try:
            import lua4dis
            from . import aufrufe as _a
            self.aufrufe = _a.lies(self.baum, lua4dis=lua4dis)
        except Exception as e:
            self.hinweise.append(f"Aufrufe nicht lesbar: {e}")
            return

        nach = {}
        for a in self.aufrufe:
            nach.setdefault(a.funktion, []).append(a)
        self.aufruf_statistik = {f: len(x) for f, x in
                                 sorted(nach.items(), key=lambda y: -len(y[1]))}

        # 1) Der Szenengraph aus Node_AddSon -- das ist belegt.
        for a in nach.get("Node_AddSon", []):
            if len(a.argumente) >= 2 and isinstance(a.argumente[0], str) \
               and isinstance(a.argumente[1], str):
                self.graph.append((a.argumente[0], a.argumente[1]))

        # 2) Die Knotenpfade aus Node_Find -- ebenfalls belegt.
        for a in nach.get("Node_Find", []):
            if a.argumente and isinstance(a.argumente[0], str):
                p = a.argumente[0]
                if p and p not in self.knotenpfade:
                    self.knotenpfade.append(p)

        # 3) Vektoren als moegliche Positionen. Nur solche mit
        #    mindestens einem von Null verschiedenen Wert.
        for nr, a in enumerate(nach.get("MAT_Vector3", [])):
            z = [x if isinstance(x, float) else 0.0 for x in a.argumente[:3]]
            while len(z) < 3:
                z.append(0.0)
            if not any(abs(v) > 0.001 for v in z):
                continue
            vollstaendig = all(isinstance(x, float)
                               for x in a.argumente[:3])
            self.objekte.append(Objekt(
                name=f"vec{nr}", art="objekt",
                position=(z[0], z[1], z[2]),
                guete=Unsicher.MOEGLICH if vollstaendig
                      else Unsicher.UNBEKANNT,
                quelle=f"{a.proto}:{a.stelle}",
                rohwerte=list(a.argumente[:3])))

        self.hinweise.append(
            f"{len(self.aufrufe)} Aufrufe gelesen, "
            f"{len(self.graph)} Szenengraph-Kanten, "
            f"{len(self.knotenpfade)} Knotenpfade, "
            f"{len(self.objekte)} Vektoren.")
        self.hinweise.append(
            "*** Die Zuordnung Vektor -> Objekt ist NICHT gesichert. *** "
            "Die Vektoren stehen so im Bytecode, aber welcher Knoten sie "
            "benutzt, laesst sich ohne vollstaendige Auswertung nicht "
            "sagen. Als Anhaltspunkt brauchbar, nicht als Wahrheit.")

    # ------------------------------------------------------------------
    def asset_verweise(self):
        """Zeichenketten, die wie Dateipfade aussehen."""
        aus = []
        for weg, t in self.strings:
            if re.search(r"\.(msb|msh|osd|des|tga|dds|mp3|wav|sam|sco)$", t, re.I) \
               or "\\" in t or "/" in t:
                aus.append((weg, t))
        return aus

    def kennzahlen(self):
        return {"protos": len(self.protos), "strings": len(self.strings),
                "zahlen": len(self.zahlen), "objekte": len(self.objekte)}
