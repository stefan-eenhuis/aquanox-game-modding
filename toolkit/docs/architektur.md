# AquaNox-1-Toolkit — Architektur des read-only MVP

Stand: 2026-08-08. Grundlage: `mod_docu/aquanox_modding_handoff_v123.txt`
(Abschnitte 1–396) und die 24 erprobten Parser in `mod_docu/tools/`.

---

## 1. Die Entscheidung

**PySide6 (Qt für Python) + QWebEngineView mit three.js.**
Eine einzige Anwendung, ein Prozess, kein Server, kein IPC über Netz.

| Schicht | Technik | Warum |
|---|---|---|
| Formate lesen | die vorhandenen Python-Parser | erprobt, byte-genau geprüft |
| Datenmodell | reines Python, ohne Qt/JS | testbar, austauschbar |
| Fenster, Bäume, Listen | Qt-Widgets (PySide6) | native Windows-App |
| 3D-Ansicht | three.js in QWebEngineView | ausgereift, Heightmap trivial |
| Brücke | QWebChannel | Daten in einem Prozess, kein HTTP |

## 2. Warum nicht Electron oder Tauri

Der entscheidende Punkt ist **nicht** die Oberfläche, sondern wo die
Formate gelesen werden. Im Projekt liegen 24 Parser, die über Monate
entstanden und gegen die Originaldateien verifiziert sind — `des_tool.py`
schreibt 100 von 100 gekochten `.des` byte-identisch zurück, `pak_tool.py`
liest das MASSIVEFILE-Format, `terrain_write.py` erzeugt vollständige
Terrains, `col_tool.py` liest und schreibt Kollisionsnetze.

Electron oder Tauri hieße: diese Parser in TypeScript oder Rust neu
schreiben. Das verstößt gegen die erste Qualitätsregel — *keine erfundenen
Formatdetails* — denn jeder neu geschriebene Parser ist eine neue
Fehlerquelle bei Formaten, deren Feinheiten teils mühsam erarbeitet wurden
(die Tilde-Regel bei gekochten Dateien, der TGA-2.0-Footer der Heightmap,
die Kette am Ende eines `.des`-Blocks).

Die Alternative — Electron als Oberfläche, Python als Kindprozess — wäre
genau das „lokale Backend", das die Aufgabe ausschließt: zwei Prozesse,
eine Socket- oder Pipe-Schnittstelle, doppelte Fehlersuche.

PySide6 vermeidet beides: Die Parser laufen **im selben Adressraum** wie
die Oberfläche. Ein `numpy`-Array mit Höhenwerten geht ohne Umweg über
QWebChannel an three.js.

**Der Preis, offen genannt:** PySide6 mit WebEngine ist groß (rund 200 MB
installiert) und startet langsamer als eine schlanke native App. Für ein
Werkzeug, das ohnehin mehrere hundert Megabyte Spieldaten liest, ist das
vertretbar.

## 3. Wie die 3D-Darstellung angegangen wird

Das Terrain-Format ist bekannt (`aquanox_levelwelt.txt`,
`terrain_write.py`). Je Level liegt unter `map\<level>\terrain\`:

| Datei | Inhalt | Für den Viewer |
|---|---|---|
| `hmap.tga` | 1025×1025, 24 bpp, unkomprimiert | **die Höhen** |
| `terrain.des` | Offset, Scale, Triangulierung | **die Skalierung** |
| `material_s.tga` | 256×256, 32 bpp | Selektormap (welches Material wo) |
| `material_0..3.dds` | DXT1 | die Grundmaterialien |
| `material.des` | Kachelungsfaktoren W0..W3 | Texturwiederholung |
| `lightmap.dds` | 2048×2048 DXT3 | vorberechnete Beleuchtung |
| `coral/grass/stone/fungus_01.tga` | 64×64 | Detailtexturen |

**Vorgehen in drei Stufen:**

1. **Geometrie zuerst.** Aus `hmap.tga` ein Gitter bauen, mit
   Höhen-Skalierung aus `terrain.des`, dazu ein einstellbarer Faktor.
   1025×1025 sind gut eine Million Punkte — das MVP zeichnet zunächst
   jeden n-ten Punkt (einstellbar), damit die Ansicht flüssig bleibt.
2. **Material danach.** `material_s.tga` als Auswahlkarte, die vier
   `material_*.dds` als Schichten. DDS/DXT1 wird gelesen, solange es
   sich sicher dekodieren lässt; sonst zeigt der Viewer die Selektormap
   in Falschfarben — **sichtbar als Ersatz gekennzeichnet**.
3. **Stimmung zuletzt.** `fog.des` je Karte ist Klartext und dokumentiert
   sich selbst (*„This is the viewing distance in water, that is covered
   by the fog"*). Daraus lassen sich Nebelfarbe und Sichtweite ableiten.
   Solange etwas unklar ist, wählt der Benutzer eine Stimmung aus einer
   Liste — **stets als Vorschau markiert**.

## 4. Welche Daten zuerst

**Stufe 1 (dieses Grundgerüst):**
- PAK-Verzeichnis lesen, Override-Logik (`aquanox<N>.pak`, höhere gewinnen)
- Asset-Index: Pfad, Quelle, Typ, Größe, überschrieben ja/nein
- `hmap.tga` → Höhenfeld
- `terrain.des` → Offset und Skalierung
- Objektpositionen aus dem Missionsskript

**Stufe 2 (danach):**
- `material_s.tga` und die DDS-Materialien
- `fog.des` → Nebel und Farbe
- `.osd`/`.des`-Baum als Ansicht
- `.msb`-Meshes statt Platzhaltern

## 5. Erwartete offene Formatfragen

Diese Punkte sind **nicht** geklärt und werden im Programm als offen
gekennzeichnet, nicht geraten:

1. **Wie die Weltkoordinaten auf das Höhenfeld abgebildet werden.**
   `terrain.des` nennt Offset und Scale; ob die Skriptkoordinaten
   denselben Ursprung haben, muss am konkreten Level geprüft werden.
   *Das ist die wichtigste offene Frage für die Objektplatzierung.*
2. **Die Triangulierung.** `Aqua_Renderer::Terrain_Triangulate` bricht bei
   Indexüberlauf ab; ob das Gitter gleichmäßig oder adaptiv ist, ist offen.
3. **DXT-Dekodierung der `.dds`.** Machbar, aber ungeprüft gegen die
   Originale.
4. **`material.des` W0..W3.** Als Kachelungsfaktoren dokumentiert, die
   genaue Wirkung auf die Texturkoordinaten ist ungeprüft.
5. **Rotationen der Objekte.** Der Bewegungsblock kennt zehn Modi
   (Handoff v124); welcher Winkelsatz in den Skripten steht, ist offen.
6. **Lightmap-Zuordnung.** Wie die 2048×2048-Lightmap auf das Gitter
   fällt, ist unbekannt (`aquanox_levelwelt.txt`).

## 6. Projektstruktur

```
AquaNoxToolkit/
  aqtk/
    parser/     Adapter auf mod_docu/tools — lesen NUR
      pak.py        PAK-Verzeichnis und Override
      tga.py        TGA (Heightmap, Selektormap)
      terrain.py    terrain.des, material.des, Höhenfeld
      des.py        .des/.osd, Klartext und gekocht
      sco.py        .sco → Struktur und Konstanten
    modell/     reines Python, kennt weder Qt noch JS
      projekt.py    Projekt, AssetIndex, Overrides
      level.py      Level, Terrain, Objektliste
    gui/        Qt
      hauptfenster.py
      bruecke.py    QWebChannel-Objekt
    app.py      Einstiegspunkt
  web/
    viewer.html, viewer.js, lib/three.module.js
  docs/
    architektur.md
```

**Read-only als harte Grenze:** Die Parser-Schicht öffnet Dateien
ausschließlich mit `"rb"`. Es gibt in `aqtk/` keinen einzigen Schreibpfad
auf den Spielordner. Der einzige Schreibzugriff des Programms geht in
sein eigenes Einstellungsverzeichnis.
