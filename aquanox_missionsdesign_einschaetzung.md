# AquaNox 1 — Was können wir bei Missionen wirklich bauen?

**Stand:** 2026-07-26, Analyse-Session 5
**Grundlage:** die 398 verifizierten Script-Kommandos mit vollständigen Signaturen
(`aquanox1_message_ids.json`), die 27 Bibliotheks-Verhalten aus `dat/script/lib/*.sco`
(Handoff Abschnitt 57) und neue Exe-Befunde aus dieser Session.
**Alles unten ist gegen die Exe oder gegen bereits im Spiel bestätigte Mods geprüft.
Wo etwas nur statisch belegt und noch nicht gespielt ist, steht das ausdrücklich dabei.**

---

## 0. Kurzfassung

AquaNox 1 ist als Missionsplattform **deutlich fähiger, als der bisherige Projektstand
vermuten liess**. Der Engpass war nie die Engine — es war unsere Autorenkette.
Wir haben Missionen bisher als Bytecode-Transplantate gebaut, weil wir kein Mittel
hatten, Lua zu übersetzen. Diese Einschränkung existiert nicht.

**Der entscheidende neue Befund:** Der vollständige Lua-4.0-Compiler ist in der Exe,
und `dostring` ist als globale Funktion registriert. Missionen können ab sofort als
**normaler, lesbarer Lua-Quelltext** geschrieben werden. Damit verschiebt sich die
ganze Bewertung: fast alles, was an Missionslogik denkbar ist, ist Skriptarbeit —
keine Reverse-Engineering-Arbeit mehr.

Grobe Einordnung dessen, was danach möglich ist:

| Kategorie | Umfang |
|---|---|
| Sofort machbar mit bereits bewiesener Technik | 13 Missionsarten |
| Neu, aber reine Lua-Arbeit (inkl. Checkpoint-Rennen) | 12 Mechaniken |
| Machbar, braucht vorher Werkzeug- oder Assetarbeit | 5 Vorhaben |
| Ohne Eingriff in die Exe nicht machbar | 6 Dinge |

---

## 1. Der Befund, der alles ändert: Lua-Quelltext zur Laufzeit

### Was belegt ist

In `Aqua.exe` stecken die kompletten Fehlermeldungen von `llex.c` **und** `lparser.c`:

```
<eof> expected          <statement> expected      <expression> expected
<name> expected         `%.20s' expected (to close `%.20s' at line %d)
constant table overflow code size overflow        function or expression too complex
malformed number        unfinished string         unfinished long string
cannot access a variable in outer scope
```

dazu die vollständige Schlüsselwortliste (`while until then repeat not for elseif
else break and`) bei 0x66005c. Das ist der Lua-4.0-Parser, nicht nur der Lader.

Und in der Basisbibliothek (`luaL_reg`-Tabelle @0x600328, Eintrag 6) steht:

```
dostring   ->  0x005e6950   (echter Code)
dofile     ->  0x005e69f0
```

`NOD_Script`s Konstruktor öffnet die Basisbibliothek (Handoff Abschnitt 30/66), also
ist `dostring` in jedem Missionsskript als globale Funktion verfügbar.

### Was das praktisch heisst

Statt Bytecode zu transplantieren, erzeugen wir eine winzige `.sco`-Hülle:

```
GETGLOBAL  dostring
PUSHSTRING "<der komplette Missionsquelltext>"
CALL       0 0
END
```

Vier Instruktionen und ein String-Konstanteneintrag — das kann `lua4dis.py` in wenigen
Zeilen erzeugen. Der Quelltext definiert wie gewohnt `__InitLayout` und `__StartUp`;
die Engine ruft danach `__StartUp` wie bei jeder Originalmission auf.

**Damit fällt weg:** Konstanten-Remapping, `CALL A/B`-Kodierung von Hand, der
Stack-Simulator, die Closure-Index-Umrechnung — also genau die vier Fehlerquellen,
die laut Handoff die Versionen V10–V15 und die Iterationen 9–27 gekostet haben.

**Was bleibt:** Syntaxfehler zeigen sich erst beim Laden im Spiel (mit Zeilennummer,
weil der Parser vollständig ist). Und die Übersetzung kostet Ladezeit — bei einigen
KB Quelltext vernachlässigbar.

> **Status:** statisch bewiesen (Parser vorhanden, `dostring` registriert), **im Spiel
> noch nicht getestet.** Das ist ein 15-Minuten-Test und sollte der erste Schritt sein,
> bevor wir irgendetwas anderes planen — er entscheidet über die gesamte Arbeitsweise.
> Falls `dostring` wider Erwarten scheitert, ist der Rückfallweg `Script_DoFile` auf
> eine Quelltextdatei im PAK (die Engine erkennt Quelltext vs. Bytecode selbst).

---

## 2. Die Bausteine, die wirklich da sind

Vier davon sind der Grund, warum moderne Mechaniken überhaupt gehen. Sie fehlten in
der bisherigen Projektdokumentation als Gruppe:

| Baustein | Signatur | Warum wichtig |
|---|---|---|
| `Body_GetPosition()` | `-> MAT_Vector3` | **Position abfragen.** Ohne das keine Distanz, keine Zone, kein Rennen. |
| `Node_GetTime()` | `-> float` | **Zeit abfragen.** Rundenzeiten, Countdowns, Bestzeiten. |
| `MAT_Vector3` | Userdata mit `+ - * / ^` | Vektorrechnung direkt im Skript (Handoff Abschnitt 32). |
| `math` | 23 Funktionen inkl. `sqrt`, `floor`, `random` | Distanzformel, Zufall, Rundung. |

Dazu die Lua-Basis: `sort`, `tinsert`, `tremove`, `getn`, `format`, `tostring` — echte
Listen und Textformatierung. Für Punktetabellen und Zeitanzeigen reicht das.

**Ausgabe an den Spieler:**

| Kommando | Signatur | Eignung |
|---|---|---|
| `Game_TextMessage` | `(int8, string)` | **Freier Text**, kein Take nötig. Der Weg für Timer und Punkte. |
| `Game_SetTaskTextKey` | `(int32, float, float)` | Persistente Zielzeile, aber nur über Take-**Schlüssel** — für dynamische Zahlen ungeeignet. |
| `Game_SendRadioMessageTake` | `(node, node, int32)` | Funkspruch mit Stimme + Portrait. Im Spiel bestätigt. |
| `Game_SetWayPoint` | `(node)` | HUD-Navigationsmarke auf einen Knoten setzen. |
| `Game_VocalMessage` | `(int8, int8, int8)` | Wingman-Sprachkommandos (Barks). |

> **Ehrliche Einschränkung:** `Game_TextMessage` ist vermutlich eine *einblendende*
> Meldung, keine dauerhafte Anzeige. Eine sekündlich aktualisierte Uhr könnte flackern
> oder die Meldungsliste zumüllen. Ungetestet. Falls es stört, ist der Rückfallweg,
> nur bei Ereignissen zu melden ("Checkpoint 3 — 41,2 s") statt kontinuierlich.

**Welt zur Laufzeit verändern:**

`Game_SetFog`, `Game_SetAmbientLight`, `Game_SetParallelLightT/B`, `Light_Switch`,
`Light_SetColor`, `Light_SetCone`, `Game_SetCausticTerrain/Object/Building` — die
gesamte Atmosphäre ist mitten in der Mission umschaltbar. Alarmrot, Stromausfall,
einsetzender Sturm: alles nur Datenaufrufe.

`Stream_SetCurrentSpeed/Direction/TurbulenceFrequency` — **Wasserströmungen zur
Laufzeit.** Das ist ein Alleinstellungsmerkmal des Settings, das AquaNox selbst kaum
nutzt.

`Gun_SetBullet`, `Gun_AddPhase`, `Gun_FlushPhases` — **Waffen zur Laufzeit umbauen.**
Ein Powerup, das die Waffe wirklich verändert, statt nur Munition zu geben.

`ShieldedBody_MakeInvulnerable/MakeVulnerable/MakeSelectiveVulnerableAgainst` —
Bossphasen und Schwachstellen-Mechaniken.

`Game_SetEnemyMatrixElement` zur Laufzeit — **Fraktionsbeziehungen mitten in der
Mission umschreiben.** Verrat, Bündniswechsel, "die Eskorte dreht durch".

---

## 3. Moderne Mechaniken — was geht, was kostet was

### 3a. Sofort machbar (bewiesene Technik, nur Skriptarbeit)

| Mechanik | Womit | Beleg |
|---|---|---|
| Wellen-/Horde-Modus | Killcounter + Runtime-Spawn | **im Spiel bestätigt** (V16) |
| Eskorte / Konvoi | `LM_ProtectedGoto`, `LM_FollowProtect` | Bibliothek, Abschnitt 57 |
| Patrouille / Gebietsverteidigung | `LVA_GuardArea` | Bibliothek |
| Zielperson ausschalten | `Destroyed`-Callback | bestätigt |
| Zeitlimit / Countdown | `Script_SetTimer`, `DelayedFunction` | bestätigt (Iteration 23) |
| Funkgetriebene Erzählung | `SendRadioMessageTake` + eigene MTakes/MP3 | **im Spiel bestätigt** (Iteration 27) |
| Zielanzeige + Navigationsmarke | `Game_SetTaskTextKey`, `Game_SetWayPoint` | alle 54 Level nutzen es |
| Cutscenes | 21 `Camera_`-Verben, `Director_`, `CameraLib` | Original-Intros |
| Item-Aufnahmen | `nod_itembox` | statisch abgesichert (Abschnitt 96) |
| Bossphasen mit Unverwundbarkeit | `ShieldedBody_*` | API verifiziert |
| Verrat / Fraktionswechsel | `Game_SetEnemyMatrixElement` zur Laufzeit | Mechanik bestätigt |
| Atmosphärenwechsel | `Game_SetFog`, `Light_*` | API verifiziert |
| Stealth-Erkennung | `Trigger_SetVisibilityCone`, `SetAcousticSphere`, `Emitter_SetSoundEmissionLevel` | API verifiziert |

Stealth verdient eine eigene Bemerkung: die Engine hat **Sicht-Kegel, Hör-Radien mit
Empfindlichkeitsstufen und eine einstellbare Geräuschabgabe pro Objekt**. Damit ist
ein echtes Schleichspiel möglich — das Original nutzt davon fast nichts.

### 3b. Neu, aber reine Lua-Arbeit

Diese Mechaniken existieren in AquaNox nicht, brauchen aber nur Skript:

| Mechanik | Bauplan | Aufwand |
|---|---|---|
| **Checkpoint-Rennen** | Trigger-Kette + `Node_GetTime` + `Game_TextMessage` | klein — s. Abschnitt 4 |
| Zeitfahren mit Bestzeit | wie oben, Bestzeit in einer Lua-Variablen | klein |
| Punkte- / Combo-System | Lua-Zähler, Anzeige bei Ereignissen | klein |
| Zonenkontrolle / King of the Hill | `Body_GetPosition` + Distanz + Zeitzähler | klein |
| Eskorte mit Abstandsregel | Position beider Schiffe, Vektordifferenz | klein |
| Verfolgungsjagd | Ziel per `Path_GetPositionOrientation` + `Body_SetCS` bewegen | mittel |
| Bewegliche Tore / Plattformen / Aufzüge | `Body_SetCS` im Timer-Takt | mittel |
| Wellen mit Ansage und Countdown | Timer + Textmeldung | klein |
| Waffen-Upgrade im Feld | `Gun_SetBullet` / `Gun_AddPhase` | klein |
| Strömungs-Parcours | `Stream_SetCurrentSpeed/Direction` | klein |
| Minenfeld / Laserschranken | `Mine_Activate`, `LaserWall_SetWallExtension*` | klein |
| Munitionsdruck | ItemBox-Platzierung + `SetRespawnDelay` | klein |

### 3c. Machbar, aber mit vorheriger Werkzeug- oder Assetarbeit

| Vorhaben | Was vorher nötig ist | Aufwand |
|---|---|---|
| **Autorenkette auf Lua-Quelltext umstellen** | `dostring`-Hüllengenerator + Test | klein, **höchste Priorität** |
| Wiederverwendbare Missions-Bibliothek | eigene `lib`-Datei mit Race-/Score-/Zone-Helfern | mittel |
| Neue Gegnerschiffe | AN2-Assets portieren (Formate sind kompatibel, Abschnitt 11c) | mittel |
| Ganz neue Karte | Heightmap malen, `terrain.des` schreiben (Abschnitt 81/90) | mittel–gross, ungetestet |
| Station "Habitat daGama" | eine Zeile in `station_d.des` | klein (Roadmap 4) |

### 3d. Ohne Eingriff in die Exe nicht machbar

| Was | Warum |
|---|---|
| Neue HUD-Elemente im Flug | `hud.des` ist Konfiguration bestehender Widgets, kein Layout-Skript (Abschnitt 104) |
| Neue Eingabeaktionen | die 89 Aktionsnamen sind im Parser fest (Abschnitt 88) |
| Neue Frontend-Menüscreens | 37 Screens per Sprungtabelle fest verdrahtet (Abschnitt 101) |
| Dialogauswahl im Flug | Dialogsystem existiert nur im Stations-Menü |
| Speichern mitten in der Mission | engine-seitig, kein Skriptzugriff |
| Punktetabelle / Scoreboard | `NOD_Hud_MP_Info` ist Multiplayer-gebunden (Abschnitt 96) |

---

## 4. Beispiel durchgerechnet: Checkpoint-Rennen

Weil du danach gefragt hast — hier vollständig, mit allen Teilen belegt.

**Baukasten:**

| Teil | Kommando | verifiziert |
|---|---|---|
| Torzone | `Node_CreateNode("NOD_Trigger", …)` + `Trigger_SetPresenceSphere(r)` | ✓ id 20002 |
| nur Spieler zählt | `Trigger_SetInterestList("pla","","","")` | ✓ id 20008 |
| Reaktion | gebundener Thread, `SetStateValue_Triggered` | ✓ Abschnitt 70 |
| Uhr | `Node_GetTime() -> float` | ✓ id 5013 |
| Anzeige | `Game_TextMessage(kanal, text)` | ✓ id 11034 |
| Navigationsmarke aufs nächste Tor | `Game_SetWayPoint(node)` | ✓ id 11023 |
| Takt | `DelayedFunction` auf `G_ScriptTimerThread` | ✓ Abschnitt 35 |
| Ende | `Game_MissionEnd(1)` bzw. `(0)` bei Zeitüberschreitung | ✓ id 11036 |

**Ablauf:** `__InitLayout` legt N Trigger auf die Streckenpunkte und bindet sie.
`__StartUp` merkt sich `t0 = Node_GetTime()`, setzt die Wegpunktmarke auf Tor 1 und
startet einen Tick alle 0,25 s. Trifft der Spieler Tor *k*, prüft dessen Callback, ob
*k* das erwartete Tor ist (verhindert Abkürzen), meldet die Zwischenzeit per
`Game_TextMessage`, setzt die Marke auf Tor *k+1*. Nach dem letzten Tor:
Gesamtzeit melden, `Game_MissionEnd(1)`.

**Aufwand:** mit Lua-Quelltext etwa 120–150 Zeilen. Ohne `dostring`, also als
Bytecode-Transplantat, wäre dieselbe Mechanik ein mehrtägiges Unterfangen mit hoher
Fehlerquote — genau der Unterschied, um den es in Abschnitt 1 geht.

**Erweiterungen, die dann fast nichts mehr kosten:** Bestzeit über mehrere Läufe,
Zeitboni durch Ringe, Gegner die mitfahren (`LVG_MultiPatrol` auf derselben Strecke),
Strömungen als Streckenhindernis (`Stream_*`), Torlichter die auf Grün schalten
(`Light_SetColor`).

---

## 5. Empfohlene Reihenfolge

1. **`dostring` im Spiel testen.** Winzige Testmission, die per `dostring` eine
   Textmeldung ausgibt. Entscheidet über die gesamte weitere Arbeitsweise.
   *Wenn das läuft, ist es der grösste Fortschritt des Projekts seit dem PAK-Format.*
2. **Cheat-Freischaltung testen** (`-stendek -redrum` + Tastenbindung, Handoff
   Abschnitt 94). Macht jeden folgenden Test schneller.
3. **Hüllengenerator bauen** — `.sco` aus Lua-Quelltext, ~30 Zeilen Python auf
   `lua4dis.py`.
4. **Checkpoint-Rennen als Vertikalschnitt** auf einer vorhandenen Karte. Prüft in
   einem Durchgang: Trigger, Timer, Textausgabe, Wegpunkte, Missionsende.
5. **Danach erst** die Nachtschicht-Missionen. Die Kampagnenplanung listet unter
   Punkt 16 fünf Prototypen — mit der neuen Autorenkette sind das jeweils Tages-, keine
   Wochenaufgaben.

---

## 6. Was mich an dieser Einschätzung noch unsicher macht

Ehrlichkeitshalber, damit niemand auf ungeprüften Annahmen plant:

- **`dostring` ist nicht im Spiel getestet.** Parser und Registrierung sind statisch
  bewiesen, das Zusammenspiel mit `NOD_Script` nicht. Der ganze Abschnitt 1 hängt daran.
- **`Game_TextMessage` als Daueranzeige ist ungeprüft.** Möglicherweise nur für kurze
  Einblendungen gedacht.
- **ItemBox-Pickup im Singleplayer** ist statisch abgesichert, aber ungespielt.
- **Bewegliche Objekte per `Body_SetCS` im Takt** ist eine plausible Ableitung aus der
  API, aber nirgends im Original zu sehen — Kollision und Physik könnten sich anders
  verhalten als erwartet.
- Die Zeitschätzungen sind Erfahrungswerte aus dem bisherigen Projektverlauf, keine
  Messungen.
