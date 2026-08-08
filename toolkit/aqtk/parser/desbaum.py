"""`.des` und `.osd` als Baum lesen -- gekocht wie Klartext.

Benutzt die erprobten Werkzeuge aus mod_docu/tools:
    descook.py   fuer gekochte Dateien (Tilde im Namen)
    des_text.py  fuer Klartext
Ein eigener Parser waere hier ein Rueckschritt -- descook schreibt
100 von 100 gekochten Dateien byte-identisch zurueck.

*** LESEN NUR. *** Diese Datei aendert nichts.

DIE TILDE-REGEL (Handoff): Alle gekochten Dateien tragen eine Tilde
im Namen, keine der Klartextdateien. Sie ist ein Hinweis, aber die
Entscheidung faellt hier ueber den Inhalt -- eine Datei ohne Tilde
kann trotzdem gekocht sein, wenn jemand sie umbenannt hat.
"""
import re


class Knoten:
    """Ein Eintrag im Baum -- Block oder Feld."""

    __slots__ = ("name", "art", "wert", "typ", "kinder", "tiefe")

    def __init__(self, name, art="block", wert=None, typ="", tiefe=0):
        self.name = name
        self.art = art            # "block" oder "feld"
        self.wert = wert
        self.typ = typ            # int, float, str, vec3, vec2
        self.kinder = []
        self.tiefe = tiefe

    def __repr__(self):
        if self.art == "feld":
            return f"{self.name} = {self.wert!r}"
        return f"[{self.name}] ({len(self.kinder)})"


# Zeichenketten, die auf eine andere Datei verweisen.
_VERWEIS = re.compile(
    r"[\w\\/.-]+\.(msb|msh|osd|des|tga|dds|bmp|mp3|wav|sam|sco|bik|col|boa)$",
    re.I)


def ist_gekocht(rohdaten):
    """Gekochte Dateien haben Nullbytes im Kopf, Klartext nicht."""
    if not rohdaten:
        return False
    return b"\x00" in rohdaten[:64]


def lies(rohdaten, name=""):
    """Baut den Baum. Gibt (wurzeln, hinweise) zurueck."""
    hinweise = []
    if not rohdaten:
        return [], ["keine Daten"]

    if ist_gekocht(rohdaten):
        try:
            import descook
            roh = descook.parse(rohdaten)
            wurzeln = [_aus_descook(k, 0) for k in _folge(roh)]
            return [w for w in wurzeln if w], hinweise
        except Exception as e:
            hinweise.append(f"gekocht, aber nicht lesbar: {e}")
            return [], hinweise

    try:
        import des_text
        baum = des_text.parse(rohdaten.decode("latin-1", "replace"))
        wurzeln = [_aus_destext(k, 0) for k in _folge(baum)]
        return [w for w in wurzeln if w], hinweise
    except Exception as e:
        hinweise.append(f"Klartext, aber nicht lesbar: {e}")
        return [], hinweise


def _folge(x):
    if x is None:
        return []
    return list(x) if isinstance(x, (list, tuple)) else [x]


def _aus_descook(k, tiefe):
    """descook.Header -> Knoten.

    ACHTUNG: name() ist eine METHODE, kein Attribut -- bei Header
    wie bei Entry. Wer sie liest statt ruft, bekommt
    "<bound method ...>" als Namen. Entry bietet ausserdem
    typisierte Sichten: as_int(), as_float(), as_str().
    """
    if k is None or tiefe > 24:
        return None
    kn = Knoten(k.name(), "block", tiefe=tiefe)
    for e in getattr(k, "entries", None) or []:
        kn.kinder.append(Knoten(e.name(), "feld", _wert(e),
                                _typname(e.vtype), tiefe + 1))
    for kind in getattr(k, "children", None) or []:
        u = _aus_descook(kind, tiefe + 1)
        if u:
            kn.kinder.append(u)
    return kn


def _wert(e):
    """Der Rohwert eines Eintrags, nach seinem Typ ausgelesen."""
    try:
        t = e.vtype
        if t == 0:
            return e.as_int()
        if t == 1:
            return round(e.as_float(), 6)
        if t == 2:
            return e.as_str()
        if t in (3, 4):
            import struct
            n = 3 if t == 3 else 2
            return [round(x, 6) for x in
                    struct.unpack(f"<{n}f", e.value[:4 * n])]
    except Exception:
        pass
    return repr(getattr(e, "value", None))[:60]


def _aus_destext(k, tiefe):
    """des_text.Node -> Knoten.

    Node hat .name (Attribut), .items als Liste von (Schluessel,
    Wert) und .children.
    """
    if k is None or tiefe > 24:
        return None
    kn = Knoten(str(getattr(k, "name", "?")), "block", tiefe=tiefe)

    # des_text zerlegt an JEDEM Komma und Gleichheitszeichen. Ein
    # Vektor "Offset = -4096.0, -4096.0, 0.0" zerfaellt dadurch in
    # drei Eintraege, von denen zwei eine Zahl als NAMEN tragen.
    # Solche Bruchstuecke werden hier wieder angehaengt.
    roh = []
    for paar in getattr(k, "items", None) or []:
        try:
            roh.append((str(paar[0]).strip(), paar[1]))
        except (TypeError, IndexError):
            continue
    zusammen = []
    for n, w in roh:
        if zusammen and _ist_zahl(n) and not str(w or "").strip():
            zusammen[-1] = (zusammen[-1][0], f"{zusammen[-1][1]}, {n}")
        else:
            zusammen.append((n, w))

    for n, w in zusammen:
        wert = _text_wert(w)
        kn.kinder.append(Knoten(n, "feld", wert, _typ_raten(wert),
                                tiefe + 1))
    for kind in getattr(k, "children", None) or []:
        u = _aus_destext(kind, tiefe + 1)
        if u:
            kn.kinder.append(u)
    return kn


def _ist_zahl(s):
    try:
        float(str(s).strip().rstrip(","))
        return True
    except ValueError:
        return False


def _text_wert(w):
    """Klartextwerte bleiben Text -- ausser sie sind eindeutig Zahlen."""
    if not isinstance(w, str):
        return w
    s = w.strip().strip('"').rstrip(",")
    if "," in s:
        teile = [t.strip() for t in s.split(",") if t.strip()]
        try:
            return [float(t) for t in teile]
        except ValueError:
            return s
    try:
        return int(s) if s.lstrip("-").isdigit() else float(s)
    except ValueError:
        return s


def _typname(t):
    return {0: "int", 1: "float", 2: "str", 3: "vec3", 4: "vec2"}.get(t, "")


def _typ_raten(w):
    if isinstance(w, bool):
        return "bool"
    if isinstance(w, int):
        return "int"
    if isinstance(w, float):
        return "float"
    if isinstance(w, (list, tuple)):
        return f"vec{len(w)}"
    return "str"


def verweise(wurzeln):
    """Alle Werte, die wie ein Dateiname aussehen."""
    aus = []

    def geh(k, weg):
        w = f"{weg}/{k.name}" if weg else k.name
        if k.art == "feld" and isinstance(k.wert, str):
            t = k.wert.strip()
            if t and (_VERWEIS.search(t) or "\\" in t or "/" in t):
                aus.append((w, k.name, t))
        for kind in k.kinder:
            geh(kind, w)

    for k in wurzeln:
        geh(k, "")
    return aus


def zaehlen(wurzeln):
    b = f = 0

    def geh(k):
        nonlocal b, f
        if k.art == "block":
            b += 1
        else:
            f += 1
        for kind in k.kinder:
            geh(kind)

    for k in wurzeln:
        geh(k)
    return {"bloecke": b, "felder": f}
