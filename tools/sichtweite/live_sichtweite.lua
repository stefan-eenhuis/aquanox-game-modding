-- =====================================================================
--  live_sichtweite.lua
--
--  NACH  mod_docu\live\live.lua  KOPIEREN und dort speichern.
--  Die Proxy-DLL (dinput8.dll, AquaLive Stufe 11b) beobachtet die Datei
--  viermal je Sekunde und schickt sie durch lua_dobuffer (0x005d5790)
--  in den laufenden Lua-Zustand. Wirkung SOFORT, ohne Neustart, ohne
--  Levelneuladen, ohne dass irgendeine Spieldatei angefasst wird.
--
--  *** DAS IST DER ERPROBUNGSWEG. *** Erst hier ausprobieren, welche
--  Sichtweite gefaellt und was die Bildrate kostet -- dann erst mit
--  weitsicht.py dauerhaft machen.
--
--  Not-Aus: Datei mod_docu\live\OFF anlegen -> die DLL bleibt untaetig.
--
--  GEMESSENE GRUNDLAGEN
--    * Der Kameraknoten heisst in ALLEN 43 Karten "Camera" und haengt
--      direkt an der Wurzel: Node_AddSon(Node_Find("/"), Camera).
--      Der Pfad ist also immer "/Camera".
--    * Camera_SetBackPlane klemmt intern auf [10.0, 100000.0]
--      (0x00444aa2..0x00444ac6). Werte darueber werden auf 100000
--      gekappt, Werte darunter auf 10 -- es kann nichts kaputtgehen.
--    * Der Originalwert ist 512 in 36 Karten, 1024 in 1n2/dogfight,
--      2048 in mp_09/mp_11.
-- =====================================================================

WEITE = 2000          -- <<< HIER DREHEN: 512 (Original) / 1000 / 2000 / 4000

kam = Node_Find("/Camera")
if kam then
    Camera_SetBackPlane(kam, WEITE)
    Script_Log(format("[SICHT] Camera_SetBackPlane = %d", WEITE))
    Game_TextMessage(GetGameNode(), 255, format("Sichtweite %d", WEITE))
else
    Script_Log("[SICHT] Kameraknoten /Camera nicht gefunden")
    Game_TextMessage(GetGameNode(), 255, "Kamera nicht gefunden")
end

-- ---------------------------------------------------------------------
-- ZUSATZVERSUCH (VERMUTET, nicht belegt): Game_SetFog(node, a, b)
-- schreibt a nach Renderer+0x18354 und b nach +0x18358 (gemessen bei
-- 0x0045552c/0x00455533). Beide gehen paarweise in Texturkoordinaten-
-- felder der Nebeltextur (+0xa0/+0xa4 bei 0x004087a8/0x004087b4).
-- Original ist (0.99, 1). Ist a die Entfernungsachse, streckt ein
-- kleinerer Wert den Nebel -- man saehe weiter, OHNE eine Datei
-- anzufassen. Das ist die billigste Probe ueberhaupt:
--
--   Game_SetFog(GetGameNode(), 0.25, 1)
--
-- Wird das Bild klarer und die Sicht weiter: Treffer, dann braucht es
-- den fog.fog-Eingriff gar nicht. Passiert nichts oder verzerrt die
-- Nebelfarbe: Deutung falsch, ueber fog.fog gehen.
-- Rueckstellen mit:  Game_SetFog(GetGameNode(), 0.99, 1)
-- ---------------------------------------------------------------------
