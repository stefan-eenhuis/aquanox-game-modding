"""Alles, was Dateien ANLEGT -- streng von parser/ getrennt.

*** DIE ZIELREGEL. *** In diesem Projekt wurde sechsmal in ein
Original-PAK geschrieben (aquanox6.pak: 6.155.038 B gegen 1.407.600 B
in der Sicherung, dazu fuenf weitere .bak-Staende). Jedes Mal
offenbar mit dem Vorsatz, vorher zu sichern. Gute Absicht ersetzt
keine Sperre -- deshalb liegt sie hier im Code und nicht in der
Dokumentation.

WAS DIE ENGINE WIRKLICH TUT (Aqua.exe, gemessen):
    MOS_PackFile::OpenDepots bei 0x00522830 zaehlt HART VON 0 BIS 31
    (cmp ebx,0x20 bei 0x00522aaa). Fehlende Nummern brechen die
    Schleife NICHT ab -- der Platzzeiger rueckt nur im Erfolgsfall
    weiter. Nachgeschlagen wird RUECKWAERTS (lea eax,[edx-1] bei
    0x00522414), also gewinnt die hoechste Nummer.
    *** Im Spiel bestaetigt: *** aquanox7.pak nach aquanox8.pak
    umbenannt -- der Menue-Mod wirkte weiter.

    Und: LOSE DATEIEN SCHLAGEN JEDES PAK. Drei Stellen pruefen erst
    per fopen den Spielordner, das PAK ist nur Rueckfallebene
    (0x005219f6, 0x00521ac0, 0x00521965).

*** dat\\pak\\extracted LIEST DIE ENGINE NIE. *** Der String
"extracted" kommt in Aqua.exe ueberhaupt nicht vor. Die Nummer 99,
mit der aqtk/parser/pak.py den entpackten Baum ueber alles legt, ist
reine Toolkit-Konvention. Dort zu schreiben ist trotzdem verboten --
es zerstoert den Vergleichsstand, an dem man einen Schaden ueberhaupt
erst bemerken wuerde.
"""
import os
import re

# Die Engine liest aquanox0.pak bis aquanox31.pak.
HOECHSTE_PAK_NUMMER = 31

# Was unter keinen Umstaenden beschrieben werden darf.
_VERBOTEN = (
    "extracted",          # der Originalabzug -- Vergleichsstand
)


class SchreibFehler(Exception):
    """Ein Schreibversuch wurde abgelehnt. Enthaelt den Grund."""


def _norm(p):
    return os.path.normcase(os.path.abspath(p)).replace("\\", "/")


def freie_pak_nummer(spielordner):
    """Die naechste Nummer, die noch kein PAK belegt.

    *** NICHT festschreiben. *** Die erste Fassung der Zielregel
    nannte aquanox7.pak -- und haette damit den dort liegenden
    Menue-Mod geloescht. Die Nummer gehoert zur Laufzeit ermittelt.
    """
    ordner = os.path.join(spielordner, "dat", "pak")
    belegt = set()
    if os.path.isdir(ordner):
        for name in os.listdir(ordner):
            m = re.fullmatch(r"aquanox(\d+)\.pak", name, re.I)
            if m:
                belegt.add(int(m.group(1)))
    for n in range(HOECHSTE_PAK_NUMMER + 1):
        if n not in belegt:
            return n
    return None


def eigene_pak_nummer(spielordner):
    """Die Nummer UNSERES Mod-PAK, falls es eines gibt.

    *** WARUM NICHT JEDESMAL EIN NEUES PAK: *** die Engine liest nur
    32 Slots, und bei einem PAK je Aenderung waere nach ein paar
    Sitzungen Schluss. Ausserdem wuesste niemand mehr, welche
    Aenderung in welchem Archiv steckt.

    Statt dessen sammelt mod\\ ALLE eigenen Dateien, und daraus wird
    immer dasselbe PAK neu gebaut. Die Nummer steht in mod\\mod.json
    -- sie ist die EINZIGE, die ueberschrieben werden darf.
    """
    import json
    p = os.path.join(spielordner, "mod", "mod.json")
    if not os.path.isfile(p):
        return None
    try:
        with open(p, encoding="utf-8") as f:
            return int(json.load(f).get("pak_nummer"))
    except Exception:
        return None


def ziel_pruefen(pfad, spielordner):
    """Darf dorthin geschrieben werden? Wirft sonst SchreibFehler.

    Erlaubt ist:
      1. ein NEUES dat\\pak\\aquanoxN.pak, das es noch nicht gibt
      2. *** UNSER EIGENES Mod-PAK *** -- die Nummer aus
         mod\\mod.json, und nur die
      3. eine lose Datei im Spielordner, ausserhalb von dat\\pak
      4. alles ausserhalb des Spielordners
    Alles andere wird abgelehnt -- nicht gewarnt, abgelehnt.
    """
    z = _norm(pfad)
    s = _norm(spielordner)

    for wort in _VERBOTEN:
        if wort in z:
            raise SchreibFehler(
                f"'{wort}' im Zielpfad. Der entpackte Abzug ist der "
                f"Vergleichsstand -- wer ihn ueberschreibt, merkt "
                f"spaeter keinen Schaden mehr.\n  {pfad}")

    if not z.startswith(s + "/"):
        # Ausserhalb des Spielordners ist unbedenklich (Textausgaben,
        # Sicherungen). Die Regel schuetzt nur das Spiel.
        return "ausserhalb"

    name = os.path.basename(z)
    im_pakordner = "/dat/pak/" in z

    if im_pakordner:
        m = re.fullmatch(r"aquanox(\d+)\.pak", name, re.I)
        if not m:
            raise SchreibFehler(
                f"In dat\\pak\\ darf nur ein aquanoxN.pak entstehen.\n"
                f"  {pfad}")
        n = int(m.group(1))
        if n > HOECHSTE_PAK_NUMMER:
            raise SchreibFehler(
                f"aquanox{n}.pak wird von der Engine NIE gelesen -- "
                f"sie zaehlt nur bis {HOECHSTE_PAK_NUMMER} "
                f"(Aqua.exe 0x00522aaa).")
        if os.path.exists(pfad):
            # *** Die EINE Ausnahme: unser eigenes Mod-PAK. ***
            # Es wird aus mod\ neu gebaut, enthaelt also ohnehin nur
            # eigene Dateien. Ohne diese Ausnahme braeuchte jede
            # Aenderung einen neuen Slot -- bei 32 waere schnell
            # Schluss.
            if n == eigene_pak_nummer(spielordner):
                return "eigenes-pak"
            raise SchreibFehler(
                f"aquanox{n}.pak gibt es bereits ({os.path.getsize(pfad)} "
                f"Byte) und ist NICHT unser Mod-PAK.\n"
                f"*** Fremde PAKs werden nie ueberschrieben. ***\n"
                f"Unseres ist "
                + (f"aquanox{eigene_pak_nummer(spielordner)}.pak."
                   if eigene_pak_nummer(spielordner) is not None
                   else f"noch keines -- nimm Nummer "
                        f"{freie_pak_nummer(spielordner)}."))
        return "neues-pak"

    # Lose Datei im Spielordner: erlaubt, aber sie schlaegt jedes PAK
    # und ist durch kein PAK wieder abschaltbar.
    return "lose"


def sicher_schreiben(pfad, daten, spielordner, melder=None):
    """Schreibt nur, wenn ziel_pruefen() es erlaubt."""
    art = ziel_pruefen(pfad, spielordner)
    ordner = os.path.dirname(pfad)
    if ordner and not os.path.isdir(ordner):
        os.makedirs(ordner)
    modus = "wb" if isinstance(daten, (bytes, bytearray)) else "w"
    with open(pfad, modus, **({} if "b" in modus
                              else {"encoding": "utf-8"})) as f:
        f.write(daten)
    if melder:
        melder(f"geschrieben ({art}): {pfad}")
    return art
