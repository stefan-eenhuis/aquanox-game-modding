"""Geaenderte Dateien ausliefern -- als loser Ordner oder als PAK.

*** ZWEI WEGE, beide an der Engine gemessen (Handoff 482/483): ***

  LOSE   Die Datei unter ihrem PAK-internen Pfad in den Spielordner
         legen. Sie schlaegt JEDES PAK -- drei Stellen der Engine
         pruefen erst per fopen den Spielordner (0x005219f6,
         0x00521ac0, 0x00521965). Kein Packwerkzeug noetig, durch
         Loeschen sofort zurueckzunehmen.
         *** Kehrseite: eine vergessene lose Datei ist unsichtbar
         und durch kein PAK abschaltbar. ***

  PAK    Ein neues aquanoxN.pak. Die Engine liest 0 bis 31, fest
         einprogrammiert (cmp ebx,0x20 bei 0x00522aaa); Luecken sind
         folgenlos, die hoechste Nummer gewinnt. Im Spiel bestaetigt
         durch Umbenennen von 7 nach 8.
         Sauber abschaltbar -- Datei weg, Mod weg.

EMPFEHLUNG: lose zum Erproben, PAK zum Ausliefern.

*** JEDER SCHREIBVORGANG LAEUFT DURCH ziel_pruefen(). *** Ein
vorhandenes PAK wird nie ueberschrieben, dat\\pak\\extracted nie
angefasst. Warum das im Code steht und nicht in der Doku: in diesem
Projekt wurde sechsmal in ein Original-PAK geschrieben.
"""
import os
import sys

from . import ziel_pruefen, freie_pak_nummer, SchreibFehler


def _pak_tool():
    hier = os.path.dirname(os.path.abspath(__file__))
    tools = os.path.join(
        os.path.dirname(os.path.dirname(os.path.dirname(hier))), "tools")
    if tools not in sys.path:
        sys.path.insert(0, tools)
    import pak_tool
    return pak_tool


def lose_ablegen(spielordner, dateien, melder=None):
    """{archivpfad: bytes} lose in den Spielordner schreiben.

    archivpfad ist der PAK-interne Pfad, z.B.
    "map/1h1/script/1h1.sco". Rueckgabe: Liste der Plattenpfade.
    """
    aus = []
    for archivpfad, daten in dateien.items():
        rel = archivpfad.replace("/", os.sep).replace("\\", os.sep)
        ziel = os.path.join(spielordner, rel)
        ziel_pruefen(ziel, spielordner)          # wirft bei Gefahr
        ordner = os.path.dirname(ziel)
        if ordner and not os.path.isdir(ordner):
            os.makedirs(ordner)
        with open(ziel, "wb") as f:
            f.write(daten)
        aus.append(ziel)
        if melder:
            melder(f"lose abgelegt: {ziel} ({len(daten)} B)")
    return aus


def mod_ordner(spielordner):
    return os.path.join(spielordner, "mod")


def mod_lesen(spielordner):
    """Die Beschreibung unseres Mods, oder eine leere."""
    import json
    p = os.path.join(mod_ordner(spielordner), "mod.json")
    if os.path.isfile(p):
        try:
            with open(p, encoding="utf-8") as f:
                return json.load(f)
        except Exception:
            pass
    return {"name": "Eigene Aenderungen", "pak_nummer": None,
            "dateien": {}}


def mod_schreiben(spielordner, beschreibung):
    import json
    o = mod_ordner(spielordner)
    os.makedirs(o, exist_ok=True)
    with open(os.path.join(o, "mod.json"), "w", encoding="utf-8") as f:
        json.dump(beschreibung, f, ensure_ascii=False, indent=1)


def mod_aufnehmen(spielordner, dateien, melder=None):
    """Dateien in den Mod-Ordner uebernehmen und ALLES neu packen.

    *** EIN PAK FUER ALLES. *** Die Engine liest nur 32 Slots; ein
    neues PAK je Aenderung waere nach wenigen Sitzungen am Ende, und
    niemand wuesste mehr, welche Aenderung in welchem Archiv steckt.

    mod\\ ist die Quelle der Wahrheit: dort liegen alle eigenen
    Dateien unter ihrem PAK-internen Pfad. Beim Speichern wird der
    Ordner ergaenzt und daraus IMMER DASSELBE PAK neu gebaut.
    Die Nummer steht in mod\\mod.json und wird beim ersten Mal
    festgelegt.

    Rueckgabe: (pakpfad, beschreibung)
    """
    from . import eigene_pak_nummer, freie_pak_nummer

    o = mod_ordner(spielordner)
    beschreibung = mod_lesen(spielordner)

    # Beim ersten Mal eine Nummer festlegen -- die naechste freie.
    if beschreibung.get("pak_nummer") is None:
        n = freie_pak_nummer(spielordner)
        if n is None:
            raise SchreibFehler(
                "Alle 32 PAK-Nummern sind belegt.")
        beschreibung["pak_nummer"] = n
        mod_schreiben(spielordner, beschreibung)
        if melder:
            melder(f"Mod-PAK festgelegt: aquanox{n}.pak "
                   f"(steht ab jetzt in mod\\mod.json)")

    # Die neuen Dateien in den Ordner legen.
    for archivpfad, daten in dateien.items():
        rel = archivpfad.replace("/", os.sep).replace("\\", os.sep)
        ziel = os.path.join(o, rel)
        os.makedirs(os.path.dirname(ziel), exist_ok=True)
        with open(ziel, "wb") as f:
            f.write(daten)
        beschreibung.setdefault("dateien", {})[archivpfad] = {
            "byte": len(daten)}
        if melder:
            melder(f"in den Mod uebernommen: {archivpfad} "
                   f"({len(daten)} B)")
    mod_schreiben(spielordner, beschreibung)

    # ALLES aus dem Ordner packen -- auch was frueher hineinkam.
    alle = {}
    for wurzel, _, namen in os.walk(o):
        for name in namen:
            voll = os.path.join(wurzel, name)
            rel = os.path.relpath(voll, o).replace(os.sep, "/")
            if rel in ("mod.json",) or rel.startswith(".bau/"):
                continue
            with open(voll, "rb") as f:
                alle[rel] = f.read()

    ziel = pak_bauen(spielordner, alle,
                     nummer=beschreibung["pak_nummer"], melder=melder)
    if melder:
        melder(f"Mod enthaelt jetzt {len(alle)} Datei(en).")
    return ziel, beschreibung


def pak_bauen(spielordner, dateien, nummer=None, melder=None):
    """{archivpfad: bytes} als neues aquanoxN.pak ablegen.

    *** Die Nummer wird ermittelt, nicht festgeschrieben. *** Die
    erste Fassung der Zielregel nannte aquanox7.pak -- und haette
    damit den dort liegenden Menue-Mod geloescht.

    pak_tool.pack() erwartet Plattenpfade, keine Bytes; die Dateien
    werden deshalb in einen Bauordner geschrieben. Der liegt unter
    mod\\.bau und ist kein Spielinhalt.
    """
    import shutil

    from . import eigene_pak_nummer

    gemerkt = nummer is not None
    if nummer is None:
        # Erst unseres, dann ein neues -- nicht bei jedem Aufruf
        # einen weiteren Slot verbrauchen.
        nummer = eigene_pak_nummer(spielordner)
        gemerkt = nummer is not None
    if nummer is None:
        nummer = freie_pak_nummer(spielordner)
    if nummer is None:
        raise SchreibFehler(
            "Alle 32 PAK-Nummern sind belegt -- die Engine liest nur "
            "aquanox0 bis aquanox31.")

    # *** GEMESSEN, nicht vermutet: *** ohne diese Zeilen lagen im
    # Spielordner aquanox8, 9 und 10 -- dreimal dieselbe 1h2.sco,
    # angelegt um 02:35, 02:39 und 02:42. pak_bauen() nahm jedesmal
    # die naechste freie Nummer und hielt seine Wahl nirgends fest,
    # also war sie beim naechsten Aufruf wieder frei. Wer eine Nummer
    # zieht, muss sie auch eintragen.
    if not gemerkt:
        b = mod_lesen(spielordner)
        if b.get("pak_nummer") != nummer:
            b["pak_nummer"] = nummer
            mod_schreiben(spielordner, b)

    ziel = os.path.join(spielordner, "dat", "pak", f"aquanox{nummer}.pak")
    ziel_pruefen(ziel, spielordner)              # wirft bei Gefahr

    bau = os.path.join(spielordner, "mod", ".bau")
    if os.path.isdir(bau):
        shutil.rmtree(bau)
    eintraege = []
    for archivpfad, daten in dateien.items():
        # Im Archiv stehen die Pfade mit Rueckstrich.
        intern = archivpfad.replace("/", "\\")
        auf_platte = os.path.join(bau, intern.replace("\\", os.sep))
        os.makedirs(os.path.dirname(auf_platte), exist_ok=True)
        with open(auf_platte, "wb") as f:
            f.write(daten)
        eintraege.append((intern, auf_platte))

    _pak_tool().pack(eintraege, ziel)
    if melder:
        melder(f"aquanox{nummer}.pak gebaut: {len(eintraege)} Datei(en), "
               f"{os.path.getsize(ziel)} Byte")
    return ziel


def altlasten_finden(spielordner, original_bis=5):
    """PAKs, die sehr wahrscheinlich von uns stammen.

    Erkannt an drei Dingen zugleich, nicht an einem:
      - Nummer oberhalb der Originale (Standardauslieferung 0..5)
      - nicht unser aktuelles Mod-PAK
      - wenige Eintraege (ein Original hat Hunderte bis Tausende)

    *** Keines wird angefasst, nur gemeldet. *** Die Entscheidung
    faellt der Aufrufer, denn aquanox6 ist zwar auch klein, enthaelt
    aber fremde Arbeit (Menue-Mod) -- ein automatischer Aufraeumer
    haette sie geloescht.
    """
    from . import eigene_pak_nummer
    import re

    unseres = eigene_pak_nummer(spielordner)
    ordner = os.path.join(spielordner, "dat", "pak")
    aus = []
    if not os.path.isdir(ordner):
        return aus
    pt = _pak_tool()
    for name in sorted(os.listdir(ordner)):
        m = re.fullmatch(r"aquanox(\d+)\.pak", name, re.I)
        if not m:
            continue
        n = int(m.group(1))
        if n <= original_bis or n == unseres:
            continue
        p = os.path.join(ordner, name)
        try:
            eintraege = [e[0] if isinstance(e, (tuple, list)) else e
                         for e in pt.list_pak(p)]
        except Exception:
            continue
        aus.append({"nummer": n, "pfad": p, "name": name,
                    "byte": os.path.getsize(p),
                    "eintraege": eintraege,
                    "zeit": os.path.getmtime(p)})
    return aus


def beiseite_legen(spielordner, pakpfad, melder=None):
    """Ein PAK aus dem Spiel nehmen, ohne es zu loeschen.

    Es wandert nach mod_docu\\altlasten\\. Loeschen waere endgueltig,
    und bei einer Fehleinschaetzung waere fremde Arbeit weg --
    aquanox7 sieht einem Wegwerf-PAK zum Verwechseln aehnlich und
    enthaelt den Menue-Mod.
    """
    import shutil

    ablage = os.path.join(spielordner, "mod_docu", "altlasten")
    os.makedirs(ablage, exist_ok=True)
    ziel = os.path.join(ablage, os.path.basename(pakpfad))
    zaehler = 1
    while os.path.exists(ziel):
        wurzel, endung = os.path.splitext(os.path.basename(pakpfad))
        ziel = os.path.join(ablage, f"{wurzel}.{zaehler}{endung}")
        zaehler += 1
    shutil.move(pakpfad, ziel)
    if melder:
        melder(f"beiseite gelegt: {os.path.basename(pakpfad)} -> {ziel}")
    return ziel


def probe_lesen(pakpfad, erwartet):
    """Steht wirklich drin, was hineingehoert?

    Ohne diese Probe weiss niemand, ob das Archiv brauchbar ist --
    und ein kaputtes PAK faellt erst im Spiel auf.
    """
    # read_directory() will ein offenes Dateiobjekt und gibt ein
    # Dreiergespann zurueck; list_pak() nimmt den Pfad und liefert
    # gleich die Eintraege.
    pt = _pak_tool()
    drin = {e[0] if isinstance(e, (tuple, list)) else e
            for e in pt.list_pak(pakpfad)}
    fehlend = [p for p in erwartet
               if p.replace("/", "\\") not in drin
               and p.replace("\\", "/") not in drin]
    return {"eintraege": len(drin), "fehlend": fehlend}
