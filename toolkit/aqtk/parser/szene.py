"""Die Objekte eines Levels aus dem Missionsskript zusammensetzen.

*** GRUNDLAGE: die Gegenpruefung des Mesh-Workflows (2026-08-08),
belegt an 3.271 Meshes und allen 88 Missionsskripten. ***

DIE KETTE, die ein Objekt in die Welt bringt:

    Node_CreateNode("nod_generic", "<KNOTENNAME>")
    Node_AddSon(<Object-Verzeichnis>, node)
    Body_SetCS(node, MAT_Vector3(x,y,z), MAT_Vector3(rx,ry,rz))
    Node_ParseIniFile(node, "osd/<gruppe>/<name>.osd")

DER KARTENORDNER steht NICHT im Skriptnamen, sondern woertlich in

    Game_SetLightCache(node0, "map/<ORDNER>/Lmsh/", "map/<ORDNER>/Ltex/")

*** Das ist der Punkt, an dem eine naive Zuordnung scheitert. ***
Mehrere Missionen teilen sich einen Ordner:
    4h3, 4n2, 6h2, sta_neopolis -> 4H1
    2n1, 2n2 -> 2H3     3h4, 5h1, 5h4 -> 3H3
    5h2 -> 3H2          6h1 -> 4H2      inst_asylum -> 1H1
Mit dem Skriptnamen als Ordner kommt man auf 94,6 % Trefferquote,
mit Game_SetLightCache auf 99,31 % (2.599 von 2.617 Dateien).

DIE HOCHACHSE IST Z, nicht Y. three.js rechnet mit Y -- die
Umrechnung geschieht in der Anzeige, nicht hier.
"""
import re


class Objekt:
    """Ein Weltobjekt mit Lage und Modellverweis."""

    # var ist der Variablenname aus dem Skript ("node8") -- er ist
    # die EINDEUTIGE Kennung; name ist nur die Beschriftung.
    __slots__ = ("name", "position", "drehung", "osd", "proto", "art",
                 "var")

    def __init__(self, name, position=None, drehung=None, osd=None,
                 proto="", art="objekt"):
        self.name = name
        self.position = position          # (x, y, z) in Weltkoordinaten
        self.drehung = drehung            # (rx, ry, rz)
        self.osd = osd                    # "osd/gen/gen_toiler.osd"
        self.proto = proto                # Fundstelle im Bytecode
        self.art = art

        self.var = None

    @property
    def vollstaendig(self):
        return self.position is not None

    def as_dict(self):
        return {"name": self.name,
                # *** var ist die EINDEUTIGE Kennung. *** Ohne sie
                # laesst sich eine geaenderte Position keinem
                # Body_SetCS zuordnen -- Knotennamen kommen mehrfach
                # vor (349 CreateNode, 258 Namen in 1h1).
                "var": self.var,
                "position": list(self.position or (0, 0, 0)),
                "drehung": list(self.drehung or (0, 0, 0)),
                "osd": self.osd or "", "art": self.art,
                "proto": self.proto}


def _vektoren(argumente):
    """Alle Vektoren aus einer Argumentliste, der Reihe nach.

    Der Aufrufleser gibt MAT_Vector3 seinen Wert als LISTE zurueck
    (parser/aufrufe.py). Ein
        Body_SetCS(node, MAT_Vector3(x,y,z), MAT_Vector3(rx,ry,rz))
    erscheint deshalb als
        Body_SetCS('node8', [x, y, z], [rx, ry, rz])
    Drei einzelne Zahlen hintereinander werden ebenfalls als Vektor
    genommen -- fuer den Fall, dass ein Skript sie direkt uebergibt.
    """
    aus = []
    puffer = []
    for w in argumente:
        if isinstance(w, list) and len(w) == 3:
            aus.append(tuple(float(v) for v in w))
            puffer = []
        elif isinstance(w, float):
            puffer.append(w)
            if len(puffer) == 3:
                aus.append(tuple(puffer))
                puffer = []
        else:
            puffer = []
    return aus


def _ueber_variable(a, nach_var):
    """Den Knoten aus dem ersten Argument holen, falls moeglich.

    Body_SetCS('node8', ...) nennt den Variablennamen. Steht dort
    nichts Brauchbares, gibt die Funktion None -- der Aufrufer faellt
    dann auf die Reihenfolge zurueck.
    """
    if not a.argumente:
        return None
    erstes = a.argumente[0]
    if isinstance(erstes, str):
        return nach_var.get(erstes)
    return None


def lies(aufrufe):
    """Wertet die Aufrufliste eines Skripts aus.

    Gibt (objekte, kartenordner, kennzahlen) zurueck.
    """
    objekte = {}          # Knotenname -> Objekt
    reihenfolge = []
    ordner = None
    zaehler = {"Node_CreateNode": 0, "Body_SetCS": 0,
               "Node_ParseIniFile": 0, "Game_SetLightCache": 0}

    # 1) Der Kartenordner. Er steht im ersten Argument nach dem Knoten.
    for a in aufrufe:
        if a.funktion != "Game_SetLightCache":
            continue
        zaehler["Game_SetLightCache"] += 1
        for arg in a.argumente:
            if isinstance(arg, str):
                m = re.search(r"map[/\\]([^/\\]+)[/\\]", arg, re.I)
                if m:
                    ordner = m.group(1).lower()
                    break
        if ordner:
            break

    # 2) Die Knoten.
    #
    # *** ZUORDNUNG UEBER DEN VARIABLENNAMEN, NICHT UEBER DIE
    # REIHENFOLGE. *** Im Bytecode steht
    #     node8 = Node_CreateNode("nod_generic", "elt_asylum_1")
    #     ...
    #     Body_SetCS(node8, MAT_Vector3(...), MAT_Vector3(...))
    # Der Variablenname kommt aus dem SETGLOBAL hinter dem Aufruf
    # (aufrufe.py, Feld zuweisung); Body_SetCS nennt ihn als erstes
    # Argument.
    #
    # Frueher lief die Zuordnung ueber die Reihenfolge: der zuletzt
    # angelegte Knoten bekam die naechste Position. Das verrutscht,
    # sobald ein Body_SetCS nicht unmittelbar auf sein
    # Node_CreateNode folgt -- in 1h1 gingen so ZWOELF von 188
    # Positionen verloren, in 6h3 vier. Die Reihenfolge bleibt als
    # Rueckfall, wenn kein Variablenname bekannt ist.
    aktuell = None
    nach_var = {}          # "node8" -> Objekt
    for a in aufrufe:
        f = a.funktion
        if f == "Node_CreateNode":
            zaehler["Node_CreateNode"] += 1
            name = None
            for arg in a.argumente[1:]:
                if isinstance(arg, str) and arg:
                    name = arg
                    break
            if not name:
                aktuell = None
                continue
            # *** GESCHLUESSELT WIRD NACH DER VARIABLEN, NICHT NACH
            # DEM NAMEN. *** In 1h1 gibt es 349 Node_CreateNode, aber
            # nur 258 verschiedene Knotennamen -- 91 wuerden sonst
            # verschmelzen, und mit ihnen ihre Positionen.
            # Der Variablenname ist dagegen eindeutig.
            kennung = a.zuweisung or f"#{a.proto}:{a.stelle}"
            o = objekte.get(kennung)
            if o is None:
                o = Objekt(name, proto=f"{a.proto}:{a.stelle}",
                           art=_art(a.argumente))
                objekte[kennung] = o
                reihenfolge.append(kennung)
            if a.zuweisung:
                o.var = a.zuweisung
                nach_var[a.zuweisung] = o
            aktuell = o

        elif f == "Body_SetCS":
            zaehler["Body_SetCS"] += 1
            ziel = _ueber_variable(a, nach_var) or aktuell
            if ziel is None:
                continue
            # Body_SetCS(node, position, drehung)
            v = _vektoren(a.argumente)
            if v and ziel.position is None:
                ziel.position = v[0]
            if len(v) > 1 and ziel.drehung is None:
                ziel.drehung = v[1]

        elif f == "Node_ParseIniFile":
            zaehler["Node_ParseIniFile"] += 1
            ziel = _ueber_variable(a, nach_var) or aktuell
            if ziel is None:
                continue
            for arg in a.argumente[1:]:
                if isinstance(arg, str) and ".osd" in arg.lower():
                    ziel.osd = arg.replace("\\", "/")
                    break

    liste = [objekte[n] for n in reihenfolge]
    return liste, ordner, zaehler


def _art(argumente):
    """Die Knotenklasse ist das erste Argument von Node_CreateNode."""
    k = argumente[0] if argumente else None
    if not isinstance(k, str):
        return "objekt"
    kl = k.lower()
    for muster, art in (("vessel", "schiff"), ("player", "spawn"),
                        ("turret", "geschuetz"), ("light", "licht"),
                        ("camera", "kamera"), ("patrol", "patrouille"),
                        ("waypoint", "wegpunkt"), ("trigger", "trigger"),
                        ("directory", "ordner"), ("scenario", "ordner"),
                        ("terrain", "gelaende"), ("generic", "objekt")):
        if muster in kl:
            return art
    return "objekt"


def osd_pfad(verweis):
    """"osd/gen/gen_toiler.osd" -> "vfx/osd/gen/gen_toiler~.osd".

    *** Die TILDE steht vor der Endung *** -- gekochte Dateien tragen
    sie ausnahmslos (Tilde-Regel, Handoff Abschnitt 211).
    """
    if not verweis:
        return None
    p = verweis.replace("\\", "/").lower().lstrip("/")
    if not p.startswith("vfx/"):
        p = "vfx/" + p
    stamm, _, endung = p.rpartition(".")
    if not stamm:
        return p
    return f"{stamm}~.{endung}"


def mesh_pfad(namemesh):
    """"pla_toiler.msh" -> "vfx/msh/pla_toiler.msb".

    *** Die OSD nennen Meshes IMMER mit .msh; die Engine ersetzt die
    Endung selbst (CON_Cache<T>::SetAlternativeExtension). *** Im
    Spiel liegen 657 .msb und nur 2 .msh.
    """
    if not namemesh:
        return None
    n = namemesh.replace("\\", "/").lower().strip()
    stamm = n.rsplit("/", 1)[-1].rsplit(".", 1)[0]
    return f"vfx/msh/{stamm}.msb"

