"""kommentare_sammeln.py -- die Entwicklerkommentare aus den
Spieldateien einsammeln und nach Aussagewert ordnen.

Erzeugt mod_docu\\aquanox_entwicklerkommentare.txt.

Warum das lohnt: Die Kommentare sind das einzige Zeugnis, in dem die
Entwickler in eigenen Worten sagen, was ein Wert bedeutet, was sie
vorhatten und wo sie unsicher waren. Ein Decompiler zeigt, was das
Spiel TUT -- diese Zeilen zeigen, was es tun SOLLTE.

Aufruf:  python kommentare_sammeln.py
"""
import os
import re
import glob
import collections

SPIEL = r"c:\Program Files (x86)\GOG Galaxy\Games\AquaNox"
WURZEL = os.path.join(SPIEL, "dat", "pak", "extracted")
ZIEL = os.path.join(SPIEL, "mod_docu", "aquanox_entwicklerkommentare.txt")

ENDUNGEN = (".des", ".msh", ".scr", ".ssc", ".ini", ".txt", ".lua", ".cfg")

# Ein Kommentar ist interessant, wenn er eines dieser Worte traegt.
ABSICHT = ("sollte", "sollten", "evtl", "eventuell", "todo", "noch nicht",
           "fehlt", "waere", "koennte", "könnte", "wäre", "vielleicht",
           "geplant", "spaeter", "später", "muesste", "müsste")
PROBLEM = ("achtung", "vorsicht", "problem", "bug", "falsch", "geht nicht",
           "funktioniert nicht", "hack", "workaround", "notloesung",
           "nicht schoen", "haesslich", "quatsch", "murks", "wichtig",
           "beachten", "nicht aendern", "nicht ändern", "obsolet",
           "veraltet", "unused", "unbenutzt", "dummy", "test")

# Viele Kommentare sind keine Saetze, sondern Marken: Take-Nummern
# ("5H4-ELF281") oder Gegenstandsnamen ("plasmagatling"). Sie sind
# fuer sich genommen wenig ergiebig und wuerden die Sammlung
# zuschuetten -- deshalb werden sie nur gezaehlt.
MARKE = re.compile(r"^(?:[A-Za-z0-9_]+|[0-9A-Za-z]+-[0-9A-Za-z-]+)$")


def ist_struktur(t):
    """Trennlinien und leere Rahmen aussortieren."""
    kern = t.strip(" -=*_#/")
    return len(kern) < 3


def ist_marke(t):
    """Einzelwort oder Kennung ohne Satzbau."""
    if MARKE.match(t):
        return True
    return len(t.split()) <= 2 and not any(c in t for c in ".!?:")


def kontext(text, pos):
    """Der naechste Block- oder Elementname oberhalb der Fundstelle."""
    vor = text[:pos]
    m = None
    for m in re.finditer(r"\[([A-Za-z_][\w]*)\]", vor):
        pass
    return m.group(1) if m else None


def sammle():
    funde = []
    dateien = 0
    for f in glob.glob(os.path.join(WURZEL, "**", "*"), recursive=True):
        if not os.path.isfile(f):
            continue
        if os.path.splitext(f)[1].lower() not in ENDUNGEN:
            continue
        try:
            roh = open(f, "rb").read()
        except OSError:
            continue
        if b"\x00" in roh[:64]:          # gekochte Datei
            continue
        # Die Dateien sind gemischt kodiert: die meisten Latin-1, einige
        # (darunter hud.des) UTF-8. Erst UTF-8 versuchen -- schlaegt es
        # fehl, ist es sicher Latin-1, denn dort ist jedes Byte gueltig.
        try:
            d = roh.decode("utf-8")
        except UnicodeDecodeError:
            d = roh.decode("latin-1")
        dateien += 1
        rel = os.path.relpath(f, WURZEL)
        for m in re.finditer(r"//[ \t]*([^\n\r]{3,160})", d):
            t = m.group(1).strip()
            if ist_struktur(t):
                continue
            funde.append({
                "datei": rel,
                "zeile": d[:m.start()].count("\n") + 1,
                "text": t,
                "block": kontext(d, m.start()),
            })
    return funde, dateien


def einordnen(f):
    t = f["text"].lower()
    if any(w in t for w in ABSICHT):
        return "absicht"
    if "?" in t:
        return "frage"
    if any(w in t for w in PROBLEM):
        return "problem"
    if ist_marke(f["text"]):
        return "marke"
    return "erklaerung"


def schreibe(funde, dateien):
    for f in funde:
        f["art"] = einordnen(f)
    nach_art = collections.defaultdict(list)
    for f in funde:
        nach_art[f["art"]].append(f)

    z = open(ZIEL, "w", encoding="utf-8")
    w = z.write
    w("=" * 80 + "\n")
    w("ENTWICKLERKOMMENTARE IN DEN SPIELDATEIEN VON AQUANOX 1\n")
    w("=" * 80 + "\n")
    w("Erzeugt von mod_docu\\tools\\kommentare_sammeln.py\n")
    w(f"Durchsucht: {dateien} Klartextdateien unter dat\\pak\\extracted\n")
    w(f"Gefunden:   {len(funde)} Kommentare\n")
    w("\n")
    w("WARUM DIESE DATEI: Ein Decompiler zeigt, was das Spiel TUT.\n")
    w("Diese Zeilen zeigen, was es tun SOLLTE -- und was die Entwickler\n")
    w("selbst fuer erklaerungsbeduerftig hielten. Mehrere Kommentare\n")
    w("beschreiben Wirkungen, die es nicht ins fertige Spiel geschafft\n")
    w("haben.\n")
    w("\n")
    w("Ergaenzt aquanox_entwicklerspuren.json (Arbeitspfade, Scherze,\n")
    w("liegengebliebene Dateien) -- dort stehen die SPUREN, hier die\n")
    w("WORTE.\n")
    w("\n")
    w("Gekochte Dateien (mit Tilde im Namen) enthalten keine Kommentare;\n")
    w("beim Kochen gehen sie verloren. Was hier fehlt, ist also nicht\n")
    w("uebersehen, sondern nicht mehr vorhanden.\n")
    w("\n")
    for art, titel in (("absicht", "ABSICHTEN -- was noch kommen sollte"),
                       ("frage",   "OFFENE FRAGEN DER ENTWICKLER"),
                       ("problem", "WARNUNGEN UND BEKANNTE MAENGEL"),
                       ("erklaerung", "ERKLAERUNGEN"),
                       ("marke", "NAMENSMARKEN (nur gezaehlt)")):
        w(f"   {titel}: {len(nach_art[art])}\n")
    w("\n")
    w("Die Namensmarken sind Kommentare, die nur aus einem Wort oder einer\n")
    w("Kennung bestehen -- Take-Nummern wie '5H4-ELF281' in den mtake-Dateien\n")
    w("und Gegenstandsnamen wie 'plasmagatling' in station_d.des. Sie sind\n")
    w("Beschriftungen, keine Aussagen, und werden hier nur gezaehlt.\n")
    w("\n\n")

    # --- die drei ergiebigen Arten ausfuehrlich -------------------------
    for art, titel, hinweis in (
        ("absicht", "1. ABSICHTEN -- WAS NOCH KOMMEN SOLLTE",
         "Formulierungen wie 'sollte' und 'evtl.' zeigen an, dass die\n"
         "Wirkung zum Zeitpunkt der Auslieferung nicht umgesetzt war.\n"
         "Ob sie heute fehlt, laesst sich im Spiel pruefen."),
        ("frage", "2. OFFENE FRAGEN DER ENTWICKLER",
         "Kommentare mit einem Fragezeichen -- die Entwickler waren sich\n"
         "an dieser Stelle selbst nicht sicher."),
        ("problem", "3. WARNUNGEN UND BEKANNTE MAENGEL",
         "Wer an diesen Stellen etwas aendert, sollte den Hinweis der\n"
         "Entwickler kennen."),
    ):
        w("=" * 80 + "\n" + titel + "\n" + "=" * 80 + "\n")
        w(hinweis + "\n\n")
        nach_datei = collections.defaultdict(list)
        for f in nach_art[art]:
            nach_datei[f["datei"]].append(f)
        for datei in sorted(nach_datei):
            w(f"--- {datei} ---\n")
            for f in nach_datei[datei]:
                ort = f"Z{f['zeile']}"
                if f["block"]:
                    ort += f", [{f['block']}]"
                w(f"    ({ort})\n")
                w(f"        {f['text']}\n")
            w("\n")
        w("\n")

    # --- Erklaerungen nur nach Datei gebuendelt -------------------------
    w("=" * 80 + "\n4. ERKLAERUNGEN, NACH DATEI\n" + "=" * 80 + "\n")
    w("Die uebrigen Kommentare. Sie erklaeren Felder, Werte und Aufbau --\n")
    w("oft die einzige Beschreibung, die es zu einem Feld gibt.\n\n")
    nach_datei = collections.defaultdict(list)
    for f in nach_art["erklaerung"]:
        nach_datei[f["datei"]].append(f)
    for datei in sorted(nach_datei, key=lambda d: -len(nach_datei[d])):
        eintraege = nach_datei[datei]
        w(f"--- {datei}  ({len(eintraege)} Kommentare) ---\n")
        for f in eintraege:
            ort = f"Z{f['zeile']}"
            if f["block"]:
                ort += f", [{f['block']}]"
            w(f"    ({ort}) {f['text']}\n")
        w("\n")
    z.close()
    return nach_art


if __name__ == "__main__":
    funde, dateien = sammle()
    arten = schreibe(funde, dateien)
    print(f"{len(funde)} Kommentare aus {dateien} Dateien")
    for a in ("absicht", "problem", "frage", "erklaerung"):
        print(f"   {a:12s} {len(arten[a])}")
    print(f"geschrieben: {ZIEL}")
