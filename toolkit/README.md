# AquaNox-1-Toolkit — read-only Betrachter (MVP)

Startet mit `start.bat` (Doppelklick) oder `python -m aqtk.app`.

Liegt unter `mod_docu\toolkit\` — also bei der übrigen Werkzeugkette.

## Was es tut
Öffnet einen AquaNox-Ordner, liest alle PAKs mit Override-Logik,
zeigt die Karten und stellt eine gewählte Karte in 3D dar:
Terrain aus der Höhenkarte, Lichtstimmung, Objekt-Platzhalter aus
dem Missionsskript, dazu Asset-Browser und Debug-Ansichten.

## Was es NICHT tut
Es schreibt nichts. Keine Originaldatei wird verändert, kein PAK
gepatcht, keine `.des`/`.osd`/`.sco` geschrieben, kein Mod-PAK
erzeugt. Die Parser-Schicht öffnet Dateien ausschließlich mit `"rb"`.

## Bedienung
1. „AquaNox-Ordner öffnen“ — der Ordner mit `dat\` und `Aqua.exe`
2. Reiter **Karten** — Doppelklick auf eine Karte lädt sie
3. Maus: Ziehen dreht, Rad zoomt, rechte Taste verschiebt
4. Links unten: Stimmung, Überhöhung, Rasterdichte, Drahtgitter
5. Unten: Meldungen, Skript- und Terrain-Ansicht

## Voraussetzungen
Python 3.13, PySide6 (`pip install PySide6-Essentials PySide6-Addons`),
und der Ordner `mod_docu\tools` im Spielverzeichnis — dort liegen die
erprobten Format-Parser, die dieses Programm benutzt.

## Aufbau
- `aqtk/parser/` liest Formate (nutzt `mod_docu/tools`)
- `aqtk/modell/` Datenmodell, kennt weder Qt noch JavaScript
- `aqtk/gui/` Qt-Oberfläche
- `web/` three.js-Ansicht im QWebEngineView

Einzelheiten und die offenen Formatfragen: `docs/architektur.md`

