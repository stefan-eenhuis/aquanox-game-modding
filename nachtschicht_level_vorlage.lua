-- =====================================================================
-- NACHTSCHICHT -- LEVELVORLAGE FUER AQUANOX 1
-- =====================================================================
-- Abgeleitet aus AN2s neopolis_neu.scr (dem einzigen vollstaendigen
-- Missionsquelltext, den es gibt) und gegen AN1s eigenes __InitLayout
-- geprueft: alle hier benutzten Kommandos existieren in AquaNox 1 und
-- werden von allen 74 Originalmissionen verwendet.
--
-- Siehe aquanox2_analyse_handoff_v4.txt Abschnitt 2 und
--      aquanox_lua_api_referenz.txt
--
-- STAND 2026-07-27, ZWEITE FASSUNG. Ergaenzt um das, was seither
-- gemessen wurde:
--   * Funksprueche haengen an WEGPUNKTEN, nicht an Skriptlogik
--     (Abschnitt 5a) -- das ist die Haupttechnik der Erzaehlung in
--     allen 30 Originalmissionen
--   * die Kamerakommandos sind jetzt erklaert, aus Massives eigener
--     Dokumentation (Abschnitt 5b)
--   * ein Zielsystem laesst sich nachbauen (Abschnitt 5c)
--   * Licht und Schleichfahrt (Abschnitt 5d)
--   * Formationen sind der Normalfall, nicht die Ausnahme (5e)
--
-- EINSATZ: als dostring-Block an __StartUp eines bestehenden Levels
-- anhaengen (mod_docu\tools\sco_lua.py). Terrain, Nebel und die
-- Levelgeometrie kommen dabei weiter aus dem Wirtslevel -- diese Vorlage
-- ergaenzt eigene Objekte, Pfade, Zonen und Ablauflogik.
--
-- Der Abschnitt "VOLLSTAENDIGER LEVELAUFBAU" unten zeigt zusaetzlich,
-- wie ein Level VON GRUND AUF entsteht. Das braucht aber eigene
-- Terrain- und Fog-Dateien und ist noch nicht erprobt.
-- =====================================================================


-- ---------------------------------------------------------------------
-- 1. DER KNOTENBAUM, den jedes AquaNox-Level hat
-- ---------------------------------------------------------------------
--   /
--   +-- Terrain                        nod_terrain
--   +-- Scenario_Static                NOD_Scenario
--   |   +-- Light                      NOD_Directory
--   |   +-- Navigation                 NOD_Directory
--   |   |   +-- Path_1                 NOD_Path
--   |   |       +-- pos_1              NOD_Position
--   |   +-- Director                   NOD_Directory
--   |   +-- Trigger                    NOD_Directory
--   |   +-- Object                     NOD_Directory
--   |       +-- BLOCK_1                NOD_Directory  (Sichtbarkeitsgruppe)
--   |           +-- <objekt>           nod_generic
--   +-- Scenario_Dynamic
--       +-- Object                     hier leben Schiffe und Effekte
--
-- Statische Kulisse gehoert unter Scenario_Static/Object/BLOCK_n,
-- alles Bewegliche unter Scenario_Dynamic/Object.


OBJ  = "/Scenario_Dynamic/Object"
NAV  = "/Scenario_Static/Navigation"
STAT = "/Scenario_Static/Object"
SYS  = 255                    -- Absender-ID fuer Game_TextMessage.
                              -- NUR 255 funktioniert; 0 leitet in
                              -- ANT_Rules um und haengt die Sitzung auf.

G_Tick = 0.25


-- ---------------------------------------------------------------------
-- 2. BAUSTEINE
-- ---------------------------------------------------------------------

function NS_Say(txt)
  Game_TextMessage(GetGameNode(), SYS, txt)
end

function NS_Dist(p, q)
  local dx, dy, dz = p.X - q[1], p.Y - q[2], p.Z - q[3]
  return sqrt(dx*dx + dy*dy + dz*dz)      -- Achtung: .X .Y .Z GROSS
end

-- Ein statisches Kulissenobjekt setzen (Gebaeude, Wrack, Mauer).
-- parent: Knoten, z.B. Node_Find(STAT .. "/BLOCK_1")
function NS_Prop(parent, name, osd, x, y, z, rx, ry, rz)
  local n = Node_CreateNode("nod_generic", name)
  Node_AddSon(parent, n)
  Body_SetCS(n, MAT_Vector3(x, y, z), MAT_Vector3(rx, ry, rz))
  Node_ParseIniFile(n, osd)
  Body_SetFriendOrFoeID(n, 0)
  Body_SetNameKey(n, -1)
  Body_SetCargoKey(n, -1, 0)
  Body_SetCargoKey(n, -1, 1)
  Body_SetCargoKey(n, -1, 2)
  Node_EnterSimulation(n)
  return n
end

-- *** FriendOrFoeID IST EINE GRUPPEN-ID, nicht nur Freund/Feind. ***
-- Zweimal berichtigt: erst stand hier "1 = befreundet, 2 = feindlich"
-- (falsch), dann "1=F 2=N 3=U 4=E" (unvollstaendig).
-- Gemessen ueber alle 74 Missionen kommen die Werte 0 bis 15 vor:
--     0   4379x   neutrale Kulisse -- der Normalfall fuer Gebaeude
--     1    167x   \
--     2    230x    > die im Missionskopf benannten Gruppen
--     3    373x   /  F=1  N=2  U=3  E=4
--     4    289x
--     5..15        weitere Gruppen, von 161x abnehmend bis 2x
-- Wer zwei Gruppen gegeneinander stellt, tut das ueber
--     SetEnemyMatrixElement(I, J, Wert)
-- Die Konstanten F/N/U/E sind also nur die ueblichen vier, nicht die
-- einzigen. Fuer eigene Fraktionen stehen 5 bis 15 frei.
NS_F, NS_N, NS_U, NS_E = 1, 2, 3, 4

-- Ein Schiff setzen. fof: NS_F | NS_N | NS_U | NS_E
-- ACHTUNG: ruft KEIN Node_EnterSimulation. Erst binden, dann
-- selbst in die Simulation geben -- sonst laeuft das Verhalten
-- nicht an (Handoff-Hauptreihe Abschnitt 70).
function NS_Ship(name, osd, x, y, z, heading, fof, namekey)
  local n = Node_CreateNode("nod_vessel", name)
  Node_AddSon(Node_Find(OBJ), n)
  Body_SetCS(n, MAT_Vector3(x, y, z), MAT_Vector3(heading, 0.0, 0.0))
  Node_ParseIniFile(n, osd)
  Body_SetFriendOrFoeID(n, fof)
  Body_SetNameKey(n, namekey)          -- -1 = namenlos, sonst Schluessel
  Vessel_CollisionTerrain(n, 1)        -- aus dem Wege gehen und
  Vessel_AvoidanceTerrain(n, 1)        -- nicht ins Gelaende rennen
  Vessel_AvoidanceObjects(n, 1)
  return n
end

-- Ein Pfad aus Stuetzpunkten. pts = { {x,y,z}, {x,y,z}, ... }
-- WICHTIG: pro Schiff einen EIGENEN Pfad anlegen. Teilen sich zwei
-- Schiffe einen NOD_Path, faehrt nur eines los (AN2 legt darum bis zu
-- zehn Pfade je Mission an, AN1s Originale nur zwei).
function NS_Path(name, pts, radius)
  local nv = Node_Find(NAV)
  local p = Node_CreateNode("NOD_Path", name)
  Node_AddSon(nv, p)
  local i = 1
  while i <= getn(pts) do
    local q = Node_CreateNode("NOD_Position", format("%s_pos_%d", name, i))
    Node_AddSon(p, q)
    Position_SetPosition(q, MAT_Vector3(pts[i][1], pts[i][2], pts[i][3]))
    Position_SetRadius(q, radius)   -- die Originale nehmen fast immer 5.0
    i = i + 1
  end
  Node_EnterSimulation(p)
  return p
end

-- Eine Patrouillenzone (fuer Vessel_Patrol).
function NS_Area(name, x, y, z, radius, minz, maxz)
  local a = Node_CreateNode("NOD_PatrolArea", name)
  Node_AddSon(Node_Find(NAV), a)
  PatrolArea_SetPosition(a, MAT_Vector3(x, y, z))
  PatrolArea_SetRadius(a, radius)
  PatrolArea_SetMinZ(a, minz)
  PatrolArea_SetMaxZ(a, maxz)
  return a
end

-- Eine Zone, die meldet, wenn jemand sie betritt.
-- mode: "sphere" | "box" | "acoustic"
function NS_Zone(name, x, y, z, a, b, c, mode)
  local t = Node_CreateNode("NOD_Trigger", name)
  Node_AddSon(Node_Find("/Scenario_Static/Trigger"), t)
  Body_SetCS(t, MAT_Vector3(x, y, z), MAT_Vector3(0.0, 0.0, 0.0))
  if mode == "box" then
    Trigger_SetBoxMode(t, a, b, c)          -- Quader, halbe Kantenlaengen
  elseif mode == "acoustic" then
    Trigger_SetAcousticSphere(t, a)         -- hoert Motorgeraeusche
  else
    Trigger_SetPresenceSphere(t, a)         -- Kugel
  end
  Node_EnterSimulation(t)
  return t
end

-- Ein sichtbares Wegpunkt-Tor. AN1 bringt 14 fertige Torgrafiken mit:
--   osd/nav/nav_waypoint_01.osd .. _10.osd  (durchnummeriert)
--   osd/nav/nav_waypoint_mark.osd           (hervorgehoben)
--   ausserdem _attack, _follow, _scan
function NS_Gate(name, osd, x, y, z, radius)
  local w = Node_CreateNode("nod_waypoint", name)
  Node_AddSon(Node_Find(OBJ), w)
  Body_SetCS(w, MAT_Vector3(x, y, z), MAT_Vector3(0.0, 0.0, 0.0))
  Node_ParseIniFile(w, osd)
  WayPoint_SetRadius(w, radius)
  Node_EnterSimulation(w)
  return w
end


-- ---------------------------------------------------------------------
-- 3. ZUSTANDSTABELLEN
-- ---------------------------------------------------------------------
-- Eine Tabelle beschreibt das Verhalten EINES Knotens. Die Engine ruft
-- die Felder als Callbacks auf. Vollstaendige Liste in
-- aquanox_lua_api_referenz.txt; die wichtigsten:
--
--   Start(State)                       einmal beim Binden
--   Timer(State, Handle)
--   Body_InformShotHit(State, Agressor, Shot)
--   Body_ObjectDestroyed(State)
--   Body_EnemyArrival(State)
--   Trigger_EnterPresence(State, Object)   Trigger_LeavePresence
--   Trigger_EnterVisible(State, Object)    Trigger_LeaveVisible
--   Trigger_EnterAcoustic(State, Object)   Trigger_LeaveAcoustic
--   WayPoint_InformEntered(State)          WayPoint_InformLeft
--
-- State.Node   = der gebundene Knoten
-- State.Thread = der Thread, fuer DelayedFunction/SetTimer

-- (a) Die einfache Fassung: nur patrouillieren, ohne Angriffslogik.
S_PATROL = {}

S_PATROL.Start = function(state)
  Script_Log("[NS] Patrouille gestartet")
  -- Zone endlos ablaufen; -1 = kein Zeitlimit, 55.0 = Geschwindigkeit
  Vessel_Patrol(state.Node, NAV .. "/area_1", -1, 55.0)
end

-- (b) Die richtige Fassung: VesselAttackLib.GuardArea.
-- Das ist mit 960 Vorkommen in 29 von 30 Kampagnenmissionen das
-- meistgenutzte Verhalten des ganzen Spiels -- zusammen mit
-- ComplexGoto (735, in 28 von 30) trägt es die gesamte KI.
-- Signatur laut vesselattack.scr (AN1-identisch):
--
--   GuardArea(State, Mode, PatrolArea, TriggerArea, FollowArea,
--             FirstPriority, SecondPriority, ThirdPriority,
--             FourthPriority, Velocity)
--
--   Mode           Sensormodus
--   PatrolArea     Kernzone, in der patrouilliert wird
--   TriggerArea    Zone, in der der Angriff ausgeloest wird
--   FollowArea     Zone, bis zu der ein Feind verfolgt wird
--   First..Fourth  Zielprioritaeten
--   Velocity       Geschwindigkeit beim Patrouillieren
--
-- Die drei Zonen muessen NOD_PatrolArea-Knoten unter Navigation sein.
-- Verwandte Verhalten derselben Bibliothek:
--   ClearArea(State, Mode, Area, P1..P4, WaitingTime, Velocity,
--             Callback, Param)          -- Zone saeubern, dann melden
--   GuardAreaRespawn(..., Position)     -- wie GuardArea, mit Respawn
--   GotoAttack(State, Mode, GotoPath, GotoSpeed, GotoInfluence,
--              AttackArea, AttackSphere, P1..P4)

S_WACHE = {}

S_WACHE.Start = function(state)
  Script_Log("[NS] Wache bezieht Posten")
  VesselAttackLib.GuardArea(state, 0,
      NAV .. "/area_1",        -- patrouilliert hier
      NAV .. "/area_1",        -- greift an, wenn hier jemand auftaucht
      NAV .. "/area_1",        -- verfolgt nur bis hierher
      0, 0, 0, 0,              -- Zielprioritaeten
      45.0)                    -- Patrouillentempo
end

S_WACHE.Body_ObjectDestroyed = function(state)
  Script_Log("[NS] Wache zerstoert")
  NS_Say("Eine Patrouille ist ausgefallen.")
end

-- Eine Zone, die einmalig ausloest
S_ZONE = {}

S_ZONE.Trigger_EnterPresence = function(state, obj)
  if GetInnerValue(state, "ausgeloest") == 1 then return end
  StoreInnerValue(state, "ausgeloest", 1)
  Script_Log("[NS] Zone betreten")
  NS_Say("Etwas bewegt sich im Dunkeln ...")
end


-- ---------------------------------------------------------------------
-- 5. WAS DIE ORIGINALE ANDERS MACHEN -- nachgemessen
-- ---------------------------------------------------------------------

-- (5a) *** DIE ERZAEHLUNG HAENGT AN DER GEOGRAFIE ***
-- Gemessen ueber alle 30 Kampagnenmissionen: SendRadioMessageTake
-- steht in ALLEN 30, WayPoint_SetTakeKey_Inside in 26 von 30.
-- Funksprueche haengen also an WEGPUNKTEN und loesen aus, wenn der
-- Spieler hindurchfliegt. Nicht Zustandslogik treibt die Geschichte,
-- sondern die Strecke.
--
-- Die Signatur nimmt ACHT (node, uint32)-Paare -- acht Funksprueche
-- je Wegpunkt, dazu Anzahl und Verzoegerung:
--   WayPoint_SetTakeKey_Inside(wp, n1,k1, n2,k2, ... n8,k8, count, delay)
-- Dieselbe Struktur steht im OSD nav_waypoint_01~.osd als
-- inside_takekey0..7 / inside_count / inside_delay.
-- Es gibt auch _Outside fuer das Verlassen.
--
-- So haengt man einen Funkspruch an ein Tor:
function NS_GateTalk(wp, sprecher, takekey, delay)
  -- sprecher: der Knoten, dem der Funkspruch zugeschrieben wird
  -- takekey : Schluessel aus der eigenen mtake_*.des
  WayPoint_SetTakeKey_Inside(wp,
      sprecher, takekey,
      sprecher, 0,  sprecher, 0,  sprecher, 0,
      sprecher, 0,  sprecher, 0,  sprecher, 0,
      sprecher, 0,
      1,                      -- nur der erste Eintrag ist belegt
      delay or 0.0)
end
-- Der direkte Weg, ohne Wegpunkt:
--   SendRadioMessageTake(Sender, Receiver, Key)
-- steht in allen 30 Missionen, 299 Vorkommen.

-- (5b) KAMERAFAHRTEN -- die Kommandos, jetzt mit Erklaerung
-- Aus Massives eigener Dokumentation (aquanox_sed_vorlagen.json):
--   Camera_MoveTo(kam, pfad, zeit, pfad2, zeit2)
--        "Moves (relative) to the specified object"
--   Camera_MoveInto(kam, pfad)      "Moves into the specified object"
--   Camera_MoveToAnglesAbs(...)     "Moves (absolute) ... with given
--                                    angles"
--   Camera_LookAt(kam, pfad, ...)   "Looks to position (relative) to
--                                    the specified object"
--   Camera_LookAhead(...)           "Looks ahead relative to current
--                                    position path"
--   Camera_LookFrom(...)            "Looks from the specified object"
--   Camera_RollTo(...)              "Rolls gamma of camera to the
--                                    given angle"
--   Camera_ZoomAt(...)              "Zooms given object"
--   Camera_ZoomTo(...)              "Zooms to given values in
--                                    horizontal and vertical direction"
--   Camera_ShakeTo(...)             "Shakes to a given amplitude value"
--   Camera_ShakeHit(...)            "Shakes to a imaginairy hit"
--   Camera_Cut(...)                 "Performs a cut of given time in
--                                    movie"
-- ALLE 30 Originalmissionen benutzen Director_BeginCutscene,
-- Camera_MoveTo und Camera_LookAt. Eine Mission ohne Zwischenszene
-- gibt es nicht.
function NS_Cutscene(ziel, dauer)
  local kam = Node_Find("/camera")
  Director_BeginCutscene(GetGameNode())
  Camera_MoveTo(kam, ziel, dauer, ziel, dauer)
  Camera_LookAt(kam, ziel, dauer, ziel, dauer)
  -- am Ende: Director_EndCutscene(GetGameNode())
end

-- (5c) EIN ZIELSYSTEM NACHBAUEN
-- AquaNox 2 hat Game_PrimaryObjectiveReached/-Failed und
-- Game_BonusObjectiveReached/-Failed mit Belohnungen. AQUANOX 1 HAT
-- DIESE KOMMANDOS NICHT -- dort ist der Briefingtext die einzige
-- Aussage darueber, was zu tun ist.
-- Nachbaubar ohne Engineeingriff: Zustand in Lua fuehren, Meldung
-- ueber Game_TextMessage, Abschluss ueber Game_MissionEnd.
-- AN2s Vorgabewerte zeigen, wie es gemeint war: je Ziel eine ID,
-- ein Brief-Funkspruch (2000 erreicht / 2001 gescheitert, 2002/2003
-- fuer Bonusziele) und ein Detailtext (2100).
G_Ziele = {}

function NS_Ziel(id, text, bonus)
  G_Ziele[id] = { text = text, bonus = bonus or 0, erfuellt = 0 }
end

function NS_ZielErreicht(id)
  local z = G_Ziele[id]
  if not z or z.erfuellt == 1 then return end
  z.erfuellt = 1
  NS_Say((z.bonus == 1 and "BONUSZIEL: " or "ZIEL: ") .. z.text)
  Script_Log("[NS] Ziel " .. id .. " erfuellt")
end

function NS_ZielGescheitert(id)
  local z = G_Ziele[id]
  if not z or z.erfuellt ~= 0 then return end
  z.erfuellt = -1
  NS_Say("ZIEL GESCHEITERT: " .. z.text)
  if z.bonus == 0 then
    Game_MissionEnd(GetGameNode(), 0)     -- 0 = failure, 1 = success
  end
end

function NS_AlleZieleErfuellt()
  local id, z
  for id, z in G_Ziele do
    if z.bonus == 0 and z.erfuellt ~= 1 then return 0 end
  end
  return 1
end

-- (5d) LICHT UND SCHLEICHFAHRT
-- LICHT: dynamisches Licht laeuft im Spiel bereits -- alle 11
-- Spielerboote tragen einen Scheinwerfer (nod_light, "light_player"),
-- jede Explosion ein nod_fx_light ("illuminate"). Definiert wird es
-- im OSD, nicht per Skript. Ob Light_Switch auf ein per Skript
-- erzeugtes Licht greift, ist UNGEPRUEFT -- Test T6.
-- Der sichere Weg: ein eigenes OSD mit einem nod_fx_light-Kind:
--     namecla = nod_fx_light   nameson = licht
--     [visual] type = omni | rgb = r,g,b | range = r1, r2
--     [life]   time = ...      (nur fuer Blitze)
-- NOD_Light ist VERALTET; die Engine sagt "Legacy class use
-- NOD_FX_Light instead".
--
-- SCHLEICHFAHRT: Emitter_SetSoundEmissionLevel stellt laut Massives
-- eigener Doku "den Sound-Emissionswert fuer das Schiff" ein. Das ist
-- der Regler, auf den eine Akustikzone reagiert.
-- VIER STUFEN, aus den OSDs des Spiels ausgezaehlt (alle vier stehen
-- auch als Zeichenkette in Aqua.exe):
--     "none"     1181x   unbewegte Kulisse, gibt kein Geraeusch ab
--     "silent"    285x   z.B. atl_pscout -- der leise Scout
--     "medium"    103x
--     "loud"       95x   z.B. atl_bomber -- der laute Bomber
-- Ein falscher Wert meldet "Unknown sound emission type".
-- Es gibt auch Emitter_GetSoundEmissionLevel -- man kann den Wert
-- also ABFRAGEN, etwa um eine Wache reagieren zu lassen.
function NS_Leise(schiff, stufe)
  Emitter_SetSoundEmissionLevel(schiff, stufe)   -- none|silent|medium|loud
end
-- *** DAS GEGENSTUECK, DIE WAHRNEHMUNG, IST ERPROBT ***
-- Korrektur einer frueheren Annahme: sie sei ungenutzt. Die Missionen
-- rufen nicht die Trigger_-Kommandos direkt, sondern
--     SensorLib.ActivateAvpSensorComplex
-- und die steht in 31 von 74 Missionen, 111 Vorkommen.
-- AVP = Acoustic / Visual / Presence. Signatur laut sensor.scr:
--
--   ActivateAvpSensorComplex(State, AudioSensitivity,
--       FirstInterest, SecondInterest, ThirdInterest, FourthInterest,
--       Hearing, Seeing, Feeling)
--
--   AudioSensitivity  "silent" | "medium" | "loud"
--   *Interest         Objektname ODER Praefix ("pla" = Spielerschiffe)
--   Hearing/Seeing/Feeling   Flags, welche Sinne aktiv sind
--
-- Intern ruft die Bibliothek Trigger_ActivateSensor,
-- Trigger_SetInterestList und Trigger_SetAcousticSensibility.
-- Ein echter Aufruf aus 1h2.sco:
--   ActivateAvpSensorComplex(state, "medium", "1H2_Digger_1", "pla",
--                            nil, nil, False, True, ...)
-- Die REICHWEITE kommt aus dem OSD (presence / visible /
-- visibilityblocking), nicht aus dem Skript.
--
-- So macht man eine Wache aufmerksam:
S_WACHE.Start = function(state)
  Script_Log("[NS] Wache bezieht Posten")
  -- erst die Sinne einschalten: hoert und sieht, sucht nach dem Spieler
  SensorLib.ActivateAvpSensorComplex(state, "medium",
      "pla",              -- erstes Interesse: alles mit Praefix "pla"
      nil, nil, nil,
      1,                  -- Hearing
      1,                  -- Seeing
      0)                  -- Feeling (Praesenz)
  -- dann das Verhalten
  VesselAttackLib.GuardArea(state, 0,
      NAV .. "/area_1", NAV .. "/area_1", NAV .. "/area_1",
      0, 0, 0, 0, 45.0)
end

-- Explizite Zonen-OBJEKTE sind dagegen selten: Praesenzkugel in 20
-- Missionen, Quader in 15, Sichtkegel in 2, Akustikkugel in KEINER.
-- Sie sind der Weg, wenn ein ORT reagieren soll statt eines Schiffs.
function NS_Wachzone(name, x, y, z, radius)
  return NS_Zone(name, x, y, z, radius, 0, 0, "acoustic")
end

-- (5e) FORMATIONEN -- der Normalfall, nicht die Ausnahme
-- KORREKTUR einer frueheren Annahme: CreateFormation steht in 29 von
-- 30 Missionen, VesselGotoInFormationFromTo in 28. Benutzt werden
-- sieben der neun Formationen:
--   Triangle 32x  Line 9x  Row 8x  InverseTriangle 7x
--   XForm 4x  Claw 4x  Cross 1x      (TriangleUpper und Tunnel nie)
-- Der Einstieg heisst CreateFormation, NICHT DeclareAsLeader.


-- ---------------------------------------------------------------------
-- 4. HAUPTABLAUF
-- ---------------------------------------------------------------------

S_MAIN = {}

S_MAIN.Start = function(state)
  Script_Log("[NS] Missionsbeginn")
  G_Player = state.Node
  local p = Body_GetPosition(state.Node)

  -- Ziele anmelden (Abschnitt 5c)
  NS_Ziel(1, "Das Wrack erreichen", 0)
  NS_Ziel(2, "Unentdeckt bleiben", 1)      -- Bonusziel

  -- Beispiel: eine Zone und ein Patrouillenschiff.
  -- REIHENFOLGE BEACHTEN: erst erzeugen, dann BINDEN, dann
  -- Node_EnterSimulation. Andersherum laeuft das Verhalten nicht an
  -- (Handoff-Hauptreihe Abschnitt 70).
  NS_Area("area_1", p.X + 200.0, p.Y + 200.0, p.Z, 120.0, -80.0, 80.0)
  local wache = NS_Ship("wache_1", "osd/atl/atl_pscout.osd",
                        p.X + 180.0, p.Y + 180.0, p.Z, 180.0, NS_E, -1)
  BindEasy(Node_Find(OBJ), "wache_1", S_WACHE)
  Node_EnterSimulation(wache)

  -- Ein Tor, an dem ein Funkspruch haengt (Abschnitt 5a) -- so
  -- erzaehlen die Originale: ueber die Strecke, nicht ueber Logik.
  -- local tor = NS_Gate("tor_1", "osd/nav/nav_waypoint_01.osd",
  --                     p.X + 400.0, p.Y, p.Z, 40.0)
  -- NS_GateTalk(tor, GetGameNode(), 1001, 0.0)

  NS_Say("NACHTSCHICHT")
  DelayedFunction(G_Tick, state.Thread, "Tick")
end

S_MAIN.Tick = function(state)
  -- eigene Logik je Takt
  DelayedFunction(G_Tick, state.Thread, "Tick")
end

G_MainThread = BindEasy(Node_Find(OBJ), "player1", S_MAIN)
Script_Log("[NS] Vorlage gebunden")


-- =====================================================================
-- VOLLSTAENDIGER LEVELAUFBAU (Referenz, NICHT erprobt)
-- =====================================================================
-- So legt ein Originallevel seine Welt an. Braucht eigene Dateien unter
-- map\<name>\{terrain,fog,lmsh,ltex}\ -- siehe Handoff v2 Abschnitt 6.
--
-- __InitLayout = function()
--     node0 = Node_Find("/")
--     Game_LoadProgress_Advance(node0)
--     node1 = Node_CreateNode("nod_terrain","Terrain")
--     Node_AddSon(node0, node1)
--         Terrain_LoadTerrain(node1, "map/Nachtschicht/Terrain/")
--         Node_EnterSimulation(node1)
--     Game_LoadFog(node0, "map/Nachtschicht/Fog/fog.fog")
--     Game_SetFog(node0, 0.99, 1.0)
--     Game_SetCausticTerrain(node0, 0.0009, 0.4)
--     Game_SetCausticObject(node0, 0.0009, 0.4)
--     Game_SetCausticBuilding(node0, 0.0009, 0.4)
--     Game_SetLightCache(node0, "map/Nachtschicht/Lmsh/",
--                               "map/Nachtschicht/Ltex/")
--     Game_SetTerrainDepth(node0, 2728.0)
--     Game_SetDecompressionHeight(node0, 400.0)
--     -- Noir: sehr dunkles Umgebungslicht, kalter Blaustich
--     Game_SetAmbientLight(node0, 0.094, 0.106, 0.129)
--     Game_SetParallelLightT(node0, 0.184, 0.216, 0.259)
--     Game_SetParallelLightB(node0, 0.094, 0.106, 0.129)
--     Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
--     Game_LoadMTake(node0, "dat/sty/mtake_nachtschicht_d.des")
--     Game_LoadMusic(node0, "sfx/sample/music/ns_aqua_deep.sam")
--
--     node2 = Node_CreateNode("NOD_Scenario","Scenario_Static")
--     Node_AddSon(node0, node2)
--     Node_EnterSimulation(node2)
--     ... Light / Navigation / Director / Trigger / Object / BLOCK_n
-- end
--
-- __StartUp = function()
--     Game_LoadProgress_Enter(Node_Find("/"), 392)   -- Anzahl Schritte
--     __InitLayout()
--     __InitLayout = nil                             -- Speicher freigeben
--     ... BindEasy je Objekt
-- end
-- =====================================================================
