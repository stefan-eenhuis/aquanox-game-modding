-- dekompiliert aus map\4h3\script\4h3.sco
-- Quelle laut Bytecode: =(none)
-- lua4dec.py, 2026-07-28

True = 1
False = 0
F = 1
N = 2
U = 3
E = 4
VesselGotoLib = LoadLib("VesselGoto")
VesselAttackLib = LoadLib("VesselAttack")
SensorLib = LoadLib("Sensor")
MiscLib = LoadLib("Misc")
TurretLib = LoadLib("Turret")
VehicleGotoLib = LoadLib("VehicleGoto")
VehicleAttackLib = LoadLib("VehicleAttack")
DockLib = LoadLib("Dock")
FormationLib = LoadLib("Formation")
CameraLib = LoadLib("Camera")
DipolLib = LoadLib("Dipol")
OldOneLib = LoadLib("OldOne")
SED_SetTaskTextKey = function(L0, L1, L2)
  Game_SetTaskTextKey(GetGameNode(), L0, L1, L2)
end
__InitLayout = function()
  node0 = Node_Find("/")
  Game_LoadProgress_Advance(node0)
  node1 = Node_CreateNode("nod_terrain", "Terrain")
  Node_AddSon(node0, node1)
  Terrain_LoadTerrain(node1, "map/4H1/terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/4H1/fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrain(node0, 0.025, 0.3)
  Game_SetCausticObject(node0, 0.1, 0.3)
  Game_SetCausticBuilding(node0, 0.025, 0.3)
  Game_SetLightCache(node0, "map/4H1/lmsh/", "map/4H1/ltex/")
  Game_SetTerrainDepth(node0, 1024)
  Game_SetDecompressionHeight(node0, 512)
  Game_SetAmbientLight(node0, 0.019608, 0.086275, 0.141176)
  Game_SetParallelLightT(node0, 0.039216, 0.172549, 0.282353)
  Game_SetParallelLightB(node0, 0.462745, 0.368627, 0.141176)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_4H3_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track01_frag_tension.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_track06.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_badend.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_sfx_matrixdist2.sam", 3)
  Game_LoadMusic(node0, "sfx/sample/music/music_track06_short.sam", 4)
  Game_LoadProgress_Advance(node0)
  node2 = Node_CreateNode("NOD_Scenario", "Scenario_Static")
  Node_AddSon(node0, node2)
  Node_EnterSimulation(node2)
  Game_LoadProgress_Advance(node0)
  node3 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node2, node3)
  Node_EnterSimulation(node3)
  Game_LoadProgress_Advance(node0)
  node4 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node2, node4)
  Node_EnterSimulation(node4)
  Game_LoadProgress_Advance(node0)
  node5 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node2, node5)
  Node_EnterSimulation(node5)
  Game_LoadProgress_Advance(node0)
  node6 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node2, node6)
  Node_EnterSimulation(node6)
  Game_LoadProgress_Advance(node0)
  node7 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node2, node7)
  Node_EnterSimulation(node7)
  Game_LoadProgress_Advance(node0)
  node8 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node7, node8)
  Node_ParseIniFile(node8, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_fx_sky", "fx_sky_11_1")
  Node_AddSon(node7, node9)
  Node_ParseIniFile(node9, "osd/fx_sky/fx_sky_11.osd")
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "Bunker_A1")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(1378.123, 2345.77, 220), MAT_Vector3(-65, 0, 0))
  Node_ParseIniFile(node10, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "Bunker_A2")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(1141.661, 2906.33, 220.9244), MAT_Vector3(-67.19597, 0, 0))
  Node_ParseIniFile(node11, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "Bunker_B1")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(1331.632, 1764.683, 220), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node12, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "Bunker_B2")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(1328.292, 764.0112, 223.5632), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node13, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "Bunker_C1")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(2232.501, 1668.552, 225), MAT_Vector3(-131.7125, 0, 0))
  Node_ParseIniFile(node14, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "Bunker_C2")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(2976.925, 1045.151, 225.85), MAT_Vector3(137.8628, 0, 0))
  Node_ParseIniFile(node15, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "Bunker_D1")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(2389.337, 2430.548, 219.5208), MAT_Vector3(-165.5205, 0, 0))
  Node_ParseIniFile(node16, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "Bunker_D2")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(3310.864, 2740.042, 210.4206), MAT_Vector3(-165.5205, 0, 0))
  Node_ParseIniFile(node17, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "gen_dock_1")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(1649.999, 1953.736, 278), MAT_Vector3(16.40826, 0, 0))
  Node_ParseIniFile(node18, "osd/gen/gen_dock.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "atl_triumph_1")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(1872.101, 2177.981, 295.8362), MAT_Vector3(173.0652, 0, 0))
  Node_ParseIniFile(node19, "osd/atl/atl_ec_triumph.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "atl_obelisk_1")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(2036.419, 461.6467, 284.3995), MAT_Vector3(-45.03943, 0, 0))
  Node_ParseIniFile(node20, "osd/atl/atl_ec_obelisk.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "gen_rohrbG_1")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(1320.932, 2541.665, 211), MAT_Vector3(23, 0, 0))
  Node_ParseIniFile(node21, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "gen_rohrbG_3")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(1273.507, 2519.561, 211), MAT_Vector3(23, 0, 0))
  Node_ParseIniFile(node22, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "gen_rohrbG_2")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(1203.859, 2817.403, 211), MAT_Vector3(23, 0, 0))
  Node_ParseIniFile(node23, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "gen_rohrbG_4")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(1156.447, 2795.405, 211), MAT_Vector3(23, 0, 0))
  Node_ParseIniFile(node24, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "gen_rohrbG_5")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(1311.492, 1566.627, 215), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_rohrbG_6")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(1311.492, 1261.435, 215), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "gen_rohrbG_7")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(1311.507, 962.0375, 215), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node27, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "gen_rohrbG_8")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(2393.333, 1548.264, 230), MAT_Vector3(-131.1273, 0, 0))
  Node_ParseIniFile(node28, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "gen_rohrbG_11")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(2380.028, 1532.877, 230), MAT_Vector3(-131.1273, 0, 0))
  Node_ParseIniFile(node29, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "gen_rohrbG_9")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(2618.744, 1351.421, 230), MAT_Vector3(-131.1273, 0, 0))
  Node_ParseIniFile(node30, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "gen_rohrbG_12")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(2605.727, 1335.838, 230), MAT_Vector3(-131.1273, 0, 0))
  Node_ParseIniFile(node31, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "gen_rohrbG_10")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(2844.544, 1154.26, 230), MAT_Vector3(-131.1273, 0, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_rohrbG_13")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(2831.606, 1138.657, 230), MAT_Vector3(-131.1273, 0, 0))
  Node_ParseIniFile(node33, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "gen_rohrbG_14")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(2575.132, 2512.041, 206.6365), MAT_Vector3(-74.21712, 0, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "gen_rohrbG_15")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(2897.279, 2607.614, 206.6365), MAT_Vector3(-74.21713, 0, 0))
  Node_ParseIniFile(node35, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_rohrbG_16")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(3206.244, 2691.652, 206.6365), MAT_Vector3(-74.21713, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "gen_rohrsG_1")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(1154.105, 3057.982, 239.3095), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node37, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "gen_rohrsG_2")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(1135.657, 3050.362, 239.3095), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node38, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_rohrsG_3")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(1401.632, 611.4673, 238.7404), MAT_Vector3(-154.293, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_rohrsG_4")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(1384.1, 611.1799, 238.7404), MAT_Vector3(-154.293, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_rohrend_1")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(1853.321, 3718.647, 349.1081), MAT_Vector3(44.69683, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_rohr_small01_end.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_rohrend_2")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(1833.772, 3699.639, 349.5654), MAT_Vector3(44.69683, 0, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_rohr_small01_end.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_rohrsK_4")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(1415.21, 958.167, 224.4154), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node43, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_rohrsG_5")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(1366.732, 941.089, 218.6105), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node44, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_stabG_1")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(1638.556, 3523.031, 416), MAT_Vector3(-46.5, 0, 0))
  Node_ParseIniFile(node45, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_stabG_2")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(1646.157, 3530.822, 416), MAT_Vector3(-46.5, 0, 0))
  Node_ParseIniFile(node46, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "gen_stabG_3")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(1653.758, 3538.803, 416), MAT_Vector3(-46.5, 0, 0))
  Node_ParseIniFile(node47, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "gen_stabG_4")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(911.0664, 3085.34, 251.1719), MAT_Vector3(-101.619, 0, 0))
  Node_ParseIniFile(node48, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "gen_stabG_5")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(881.5902, 3129.261, 251.1719), MAT_Vector3(-101.619, 0, 0))
  Node_ParseIniFile(node49, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "gen_stabG_6")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(922.4033, 3155.995, 251.1719), MAT_Vector3(-94.90098, 0, 0))
  Node_ParseIniFile(node50, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_stabG_7")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(951.1111, 3114.002, 251.1719), MAT_Vector3(-104.803, 0, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "gen_stabM_1")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(1591.345, 3602.425, 415), MAT_Vector3(-46.5, 0, 0))
  Node_ParseIniFile(node52, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_stabM_2")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(1583.446, 3595.003, 415), MAT_Vector3(-46.5, 0, 0))
  Node_ParseIniFile(node53, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "gen_stabM_3")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(2483.021, 1503.2, 254.6894), MAT_Vector3(-41.11606, 0, 0))
  Node_ParseIniFile(node54, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "gen_stabM_4")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(2473.262, 1511.802, 254.6894), MAT_Vector3(-41.11606, 0, 0))
  Node_ParseIniFile(node55, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "gen_stabK_1")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(1173.316, 2900.231, 257), MAT_Vector3(23.5, 0, 0))
  Node_ParseIniFile(node56, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "gen_stabK_2")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(1344.507, 2350.114, 256), MAT_Vector3(25.5, 0, 0))
  Node_ParseIniFile(node57, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "gen_stabK_3")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(1345.444, 1731.235, 256.7603), MAT_Vector3(89.64341, 0, 0))
  Node_ParseIniFile(node58, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "gen_stabK_4")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(1310.45, 793.0025, 260.708), MAT_Vector3(89.64341, 0, 0))
  Node_ParseIniFile(node59, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "gen_stabK_5")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(2263.446, 1652.904, 262.6887), MAT_Vector3(47.86992, 0, 0))
  Node_ParseIniFile(node60, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "gen_stabK_6")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(2982.281, 1077.688, 262.7802), MAT_Vector3(47.86992, 0, 0))
  Node_ParseIniFile(node61, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "gen_stabK_7")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(2399.705, 2462.82, 257.8649), MAT_Vector3(15.56905, 0, 0))
  Node_ParseIniFile(node62, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "gen_stabK_8")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(3300.164, 2709.653, 257.8649), MAT_Vector3(15.56905, 0, 0))
  Node_ParseIniFile(node63, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "gen_stabM_5")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(2936.425, 2644.861, 260.2954), MAT_Vector3(-72.64719, 0, 0))
  Node_ParseIniFile(node64, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "gen_stabM_6")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(2932.339, 2657.391, 260.2954), MAT_Vector3(-72.64719, 0, 0))
  Node_ParseIniFile(node65, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "gen_stabM_7")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(1292.27, 2659.661, 270.3499), MAT_Vector3(-67.23985, 0, 0))
  Node_ParseIniFile(node66, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "gen_stabM_8")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(1276.473, 2697.153, 270.3499), MAT_Vector3(-158.4628, 0, 0))
  Node_ParseIniFile(node67, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "atl_dock3_1")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(1806.286, 2241.615, 278.3705), MAT_Vector3(19.74634, 0, 0))
  Node_ParseIniFile(node68, "osd/atl/atl_dock3.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "atl_wb2_1_1")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(1819.911, 1780.527, 276.1031), MAT_Vector3(-179.9985, 0, 0))
  Node_ParseIniFile(node69, "osd/atl/atl_wblock2_01.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "atl_wb2_2_1")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(2016.208, 2507.162, 291.1724), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node70, "osd/atl/atl_wblock2_02.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "atl_wb2_3_1")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(1399.994, 2156.423, 285.2375), MAT_Vector3(-65, 0, 0))
  Node_ParseIniFile(node71, "osd/atl/atl_wblock2_03.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "atl_wb2_4_1")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(1510.017, 2214.422, 289.3145), MAT_Vector3(115, 0, 0))
  Node_ParseIniFile(node72, "osd/atl/atl_wblock2_04.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "atl_wb2_4_2")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(2376.998, 2343.393, 197.6522), MAT_Vector3(-165.5675, 0, 0))
  Node_ParseIniFile(node73, "osd/atl/atl_wblock2_04.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "atl_wb3a_2_1")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(1380.088, 1996.354, 271.0483), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node74, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "atl_wb3b_3_1")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(2360.777, 2528.113, 261.4128), MAT_Vector3(-164.1995, 0, 0))
  Node_ParseIniFile(node75, "osd/atl/atl_wblock3b_03.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "atl_wb3a_1_1")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(1413.832, 2447.383, 206.551), MAT_Vector3(117.4717, 0, 0))
  Node_ParseIniFile(node76, "osd/atl/atl_wblock3a_01.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "atl_wb3a_1_2")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(2097.592, 1880.739, 291.3043), MAT_Vector3(138.0035, 0, 0))
  Node_ParseIniFile(node77, "osd/atl/atl_wblock3a_01.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "atl_wb3a_1_3")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(2096.107, 2493.372, 294.4833), MAT_Vector3(90.12544, 0, 0))
  Node_ParseIniFile(node78, "osd/atl/atl_wblock3a_01.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "atl_wb3a_2_2")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(1267.645, 1931.458, 267.794), MAT_Vector3(-89.51085, 0, 0))
  Node_ParseIniFile(node79, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "atl_wb3a_5_1")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(1267.636, 1738.18, 205.9771), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node80, "osd/atl/atl_wblock3a_05.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_generic", "atl_wb3b_2_1")
  Node_AddSon(node7, node81)
  Body_SetCS(node81, MAT_Vector3(1395.237, 1676.933, 199.0315), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node81, "osd/atl/atl_wblock3b_02.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_generic", "atl_wb3a_5_2")
  Node_AddSon(node7, node82)
  Body_SetCS(node82, MAT_Vector3(2022.254, 1805.449, 282.9705), MAT_Vector3(136.1578, 0, 0))
  Node_ParseIniFile(node82, "osd/atl/atl_wblock3a_05.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_generic", "atl_wb3b_3_2")
  Node_AddSon(node7, node83)
  Body_SetCS(node83, MAT_Vector3(2176.531, 1632.613, 207.4728), MAT_Vector3(-42.78888, 0, 0))
  Node_ParseIniFile(node83, "osd/atl/atl_wblock3b_03.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_generic", "atl_wb3a_2_3")
  Node_AddSon(node7, node84)
  Body_SetCS(node84, MAT_Vector3(2265.429, 1723.565, 209.3754), MAT_Vector3(-41.07097, 0, 0))
  Node_ParseIniFile(node84, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_generic", "atl_wb3b_3_3")
  Node_AddSon(node7, node85)
  Body_SetCS(node85, MAT_Vector3(1272.434, 2388.497, 201.7136), MAT_Vector3(-64.34479, 0, 0))
  Node_ParseIniFile(node85, "osd/atl/atl_wblock3b_03.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "gen_mhaus3_1")
  Node_AddSon(node7, node86)
  Body_SetCS(node86, MAT_Vector3(1044.545, 3259.347, 247.4472), MAT_Vector3(-89.79169, 0, 0))
  Node_ParseIniFile(node86, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "gen_mhaus2_1")
  Node_AddSon(node7, node87)
  Body_SetCS(node87, MAT_Vector3(1090.843, 3252.25, 274.4284), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node87, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "gen_parabo_1")
  Node_AddSon(node7, node88)
  Body_SetCS(node88, MAT_Vector3(1120.99, 3194.015, 337.8089), MAT_Vector3(-152.6596, 0, 0))
  Node_ParseIniFile(node88, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "gen_parabo_2")
  Node_AddSon(node7, node89)
  Body_SetCS(node89, MAT_Vector3(1140.764, 3192.367, 337.8089), MAT_Vector3(-152.6596, 0, 0))
  Node_ParseIniFile(node89, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_generic", "gen_tnk_k_1")
  Node_AddSon(node7, node90)
  Body_SetCS(node90, MAT_Vector3(1269.581, 3171.811, 249.581), MAT_Vector3(-52.66545, 0, 0))
  Node_ParseIniFile(node90, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node90, 0)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_generic", "gen_tnk_k_2")
  Node_AddSon(node7, node91)
  Body_SetCS(node91, MAT_Vector3(1240.265, 3168.168, 249.581), MAT_Vector3(-52.66545, 0, 0))
  Node_ParseIniFile(node91, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node91, 0)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_generic", "gen_tnk_k_3")
  Node_AddSon(node7, node92)
  Body_SetCS(node92, MAT_Vector3(1799.713, 3687.309, 321.8376), MAT_Vector3(-45.85246, 0, 0))
  Node_ParseIniFile(node92, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node92, 0)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "gen_tnk_k_4")
  Node_AddSon(node7, node93)
  Body_SetCS(node93, MAT_Vector3(1777.008, 3665.178, 321.8376), MAT_Vector3(-45.85246, 0, 0))
  Node_ParseIniFile(node93, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node93, 0)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_generic", "gen_tnk_g_1")
  Node_AddSon(node7, node94)
  Body_SetCS(node94, MAT_Vector3(1076.673, 3170.029, 250.6734), MAT_Vector3(-89.29727, 0, 0))
  Node_ParseIniFile(node94, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node94, 0)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_generic", "gen_tnk_g_2")
  Node_AddSon(node7, node95)
  Body_SetCS(node95, MAT_Vector3(1713.363, 3598.094, 319.7996), MAT_Vector3(-45.5376, 0, 0))
  Node_ParseIniFile(node95, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node95, 0)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_generic", "gen_kai2_1")
  Node_AddSon(node7, node96)
  Body_SetCS(node96, MAT_Vector3(1259.868, 3204.988, 251.2325), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node96, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node96, 0)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_generic", "atl_dock1_4_1")
  Node_AddSon(node7, node97)
  Body_SetCS(node97, MAT_Vector3(1926.481, 2067.828, 285.952), MAT_Vector3(-89.5411, 0, 0))
  Node_ParseIniFile(node97, "osd/atl/atl_dock1_4.osd")
  Body_SetFriendOrFoeID(node97, 0)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_generic", "atl_dock1_2_1")
  Node_AddSon(node7, node98)
  Body_SetCS(node98, MAT_Vector3(1890.963, 2435.367, 322.8994), MAT_Vector3(89.70887, 0, 0))
  Node_ParseIniFile(node98, "osd/atl/atl_dock1_2.osd")
  Body_SetFriendOrFoeID(node98, 0)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_generic", "atl_wb3a_2_4")
  Node_AddSon(node7, node99)
  Body_SetCS(node99, MAT_Vector3(1033.75, 3387.066, 252.0059), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node99, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node99, 0)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_generic", "gen_werk3_1")
  Node_AddSon(node7, node100)
  Body_SetCS(node100, MAT_Vector3(1611.709, 3559.634, 371.6402), MAT_Vector3(-46.02305, 0, 0))
  Node_ParseIniFile(node100, "osd/gen/gen_industry3.osd")
  Body_SetFriendOrFoeID(node100, 0)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_generic", "gen_kai1_1")
  Node_AddSon(node7, node101)
  Body_SetCS(node101, MAT_Vector3(1724.711, 3674.591, 336.5876), MAT_Vector3(-44.67151, 0, 0))
  Node_ParseIniFile(node101, "osd/gen/gen_kai1.osd")
  Body_SetFriendOrFoeID(node101, 0)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_generic", "gen_bunker_1")
  Node_AddSon(node7, node102)
  Body_SetCS(node102, MAT_Vector3(1815.731, 3741.899, 316.279), MAT_Vector3(44.77349, 0, 0))
  Node_ParseIniFile(node102, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node102, 0)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_generic", "gen_schorn2_1")
  Node_AddSon(node7, node103)
  Body_SetCS(node103, MAT_Vector3(1826.858, 3728.869, 356.501), MAT_Vector3(43.76089, 0, 0))
  Node_ParseIniFile(node103, "osd/gen/gen_chimney2.osd")
  Body_SetFriendOrFoeID(node103, 0)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_generic", "atl_wb3a_2_5")
  Node_AddSon(node7, node104)
  Body_SetCS(node104, MAT_Vector3(2220.04, 2257.93, 254.4372), MAT_Vector3(-79.46251, 0, 0))
  Node_ParseIniFile(node104, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node104, 0)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_generic", "gen_mhaus1_1")
  Node_AddSon(node7, node105)
  Body_SetCS(node105, MAT_Vector3(1348.145, 1447.566, 154.5741), MAT_Vector3(48.3386, 0, 0))
  Node_ParseIniFile(node105, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node105, 0)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_generic", "gen_mhaus2_2")
  Node_AddSon(node7, node106)
  Body_SetCS(node106, MAT_Vector3(1222.634, 1127.995, 210.9921), MAT_Vector3(90.05662, 0, 0))
  Node_ParseIniFile(node106, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node106, 0)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_generic", "gen_mhaus3_2")
  Node_AddSon(node7, node107)
  Body_SetCS(node107, MAT_Vector3(2745.507, 1196.012, 218.0864), MAT_Vector3(135.3547, 0, 0))
  Node_ParseIniFile(node107, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node107, 0)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_generic", "gen_kai2_2")
  Node_AddSon(node7, node108)
  Body_SetCS(node108, MAT_Vector3(1457.378, 774.7337, 205.7141), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node108, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node108, 0)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_generic", "atl_wb3a_2_6")
  Node_AddSon(node7, node109)
  Body_SetCS(node109, MAT_Vector3(1277.818, 1576.02, 201.4824), MAT_Vector3(-90.48519, 0, 0))
  Node_ParseIniFile(node109, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node109, 0)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_generic", "atl_dock1_r_1")
  Node_AddSon(node7, node110)
  Body_SetCS(node110, MAT_Vector3(1919.636, 1651.466, 257.8793), MAT_Vector3(-52.60503, 0, 0))
  Node_ParseIniFile(node110, "osd/atl/atl_dock1_raw.osd")
  Body_SetFriendOrFoeID(node110, 0)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_generic", "atl_digmod_1")
  Node_AddSon(node7, node111)
  Body_SetCS(node111, MAT_Vector3(944.5534, 1212.688, 214.5445), MAT_Vector3(34.37986, 0, 0))
  Node_ParseIniFile(node111, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node111, 0)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_generic", "gen_werk1_1")
  Node_AddSon(node7, node112)
  Body_SetCS(node112, MAT_Vector3(3351.391, 1048.241, 304.8929), MAT_Vector3(90.32136, 0, 0))
  Node_ParseIniFile(node112, "osd/gen/gen_industry1.osd")
  Body_SetFriendOrFoeID(node112, 0)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_generic", "gen_werk2_1")
  Node_AddSon(node7, node113)
  Body_SetCS(node113, MAT_Vector3(3507.77, 909.4617, 379.4023), MAT_Vector3(-90.13807, 0, 0))
  Node_ParseIniFile(node113, "osd/gen/gen_industry2.osd")
  Body_SetFriendOrFoeID(node113, 0)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_generic", "gen_kai2_blue")
  Node_AddSon(node7, node114)
  Body_SetCS(node114, MAT_Vector3(3193.484, 1007.339, 270.0652), MAT_Vector3(89.61164, 0, 0))
  Node_ParseIniFile(node114, "osd/mp/mp_kai2_blue.osd")
  Body_SetFriendOrFoeID(node114, 0)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_generic", "gen_mhaus1_2")
  Node_AddSon(node7, node115)
  Body_SetCS(node115, MAT_Vector3(3295.061, 1104.037, 250.2113), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node115, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node115, 0)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_generic", "gen_mhaus2_3")
  Node_AddSon(node7, node116)
  Body_SetCS(node116, MAT_Vector3(3537.526, 868.7971, 382.3693), MAT_Vector3(90.08773, 0, 0))
  Node_ParseIniFile(node116, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node116, 0)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_generic", "gen_mhaus3_3")
  Node_AddSon(node7, node117)
  Body_SetCS(node117, MAT_Vector3(3329.215, 1119.891, 236.6051), MAT_Vector3(0.107304, 0, 0))
  Node_ParseIniFile(node117, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node117, 0)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_generic", "gen_werk3_2")
  Node_AddSon(node7, node118)
  Body_SetCS(node118, MAT_Vector3(3349.536, 1249.811, 257.6111), MAT_Vector3(-90.01692, 0, 0))
  Node_ParseIniFile(node118, "osd/gen/gen_industry3.osd")
  Body_SetFriendOrFoeID(node118, 0)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_generic", "gen_tnk_k2_1")
  Node_AddSon(node7, node119)
  Body_SetCS(node119, MAT_Vector3(3660.058, 868.9213, 357.1958), MAT_Vector3(-52.49026, 0, 0))
  Node_ParseIniFile(node119, "osd/gen/gen_tank_sml2.osd")
  Body_SetFriendOrFoeID(node119, 0)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_generic", "gen_tnk_k2_2")
  Node_AddSon(node7, node120)
  Body_SetCS(node120, MAT_Vector3(3702.443, 908.1595, 357.1958), MAT_Vector3(-66.59739, 0, 0))
  Node_ParseIniFile(node120, "osd/gen/gen_tank_sml2.osd")
  Body_SetFriendOrFoeID(node120, 0)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_generic", "gen_tnk_g_3")
  Node_AddSon(node7, node121)
  Body_SetCS(node121, MAT_Vector3(3360.85, 1170.492, 296.2919), MAT_Vector3(-90.06723, 0, 0))
  Node_ParseIniFile(node121, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node121, 0)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_generic", "gen_tnk_g_4")
  Node_AddSon(node7, node122)
  Body_SetCS(node122, MAT_Vector3(3208.535, 1049.25, 263.7701), MAT_Vector3(-90.16512, 0, 0))
  Node_ParseIniFile(node122, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node122, 0)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_generic", "gen_kraft22_1")
  Node_AddSon(node7, node123)
  Body_SetCS(node123, MAT_Vector3(3718.878, 978.0497, 356.6303), MAT_Vector3(90.26138, 0, 0))
  Node_ParseIniFile(node123, "osd/gen/gen_pplant22.osd")
  Body_SetFriendOrFoeID(node123, 0)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_generic", "gen_kraft1_1")
  Node_AddSon(node7, node124)
  Body_SetCS(node124, MAT_Vector3(3244.155, 951.6687, 269.3304), MAT_Vector3(0.513804, 0, 0))
  Node_ParseIniFile(node124, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node124, 0)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_generic", "gen_turm_1")
  Node_AddSon(node7, node125)
  Body_SetCS(node125, MAT_Vector3(3320.024, 1006.81, 318.5446), MAT_Vector3(-26.53657, 0, 0))
  Node_ParseIniFile(node125, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node125, 0)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_generic", "gen_turm2_1")
  Node_AddSon(node7, node126)
  Body_SetCS(node126, MAT_Vector3(3454.7, 807.7456, 348.6567), MAT_Vector3(-21.87112, 0, 0))
  Node_ParseIniFile(node126, "osd/gen/gen_tower2.osd")
  Body_SetFriendOrFoeID(node126, 0)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, -1, 0)
  Body_SetCargoKey(node126, -1, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_generic", "gen_turm2_2")
  Node_AddSon(node7, node127)
  Body_SetCS(node127, MAT_Vector3(3612.464, 995.576, 353.9961), MAT_Vector3(-71.23875, 0, 0))
  Node_ParseIniFile(node127, "osd/gen/gen_tower2.osd")
  Body_SetFriendOrFoeID(node127, 0)
  Body_SetNameKey(node127, -1)
  Body_SetCargoKey(node127, -1, 0)
  Body_SetCargoKey(node127, -1, 1)
  Body_SetCargoKey(node127, -1, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_generic", "gen_parabo_3")
  Node_AddSon(node7, node128)
  Body_SetCS(node128, MAT_Vector3(3277.029, 1053.47, 313.9356), MAT_Vector3(59.26231, 0, 0))
  Node_ParseIniFile(node128, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node128, 0)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, -1, 0)
  Body_SetCargoKey(node128, -1, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_generic", "gen_parabo_4")
  Node_AddSon(node7, node129)
  Body_SetCS(node129, MAT_Vector3(3332.95, 1248.651, 299.4171), MAT_Vector3(58.802, 0, 0))
  Node_ParseIniFile(node129, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node129, 0)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_generic", "gen_parabo_5")
  Node_AddSon(node7, node130)
  Body_SetCS(node130, MAT_Vector3(3597.797, 921.6445, 446.1676), MAT_Vector3(64.6124, 0, 0))
  Node_ParseIniFile(node130, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node130, 0)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_generic", "atl_digmod_2")
  Node_AddSon(node7, node131)
  Body_SetCS(node131, MAT_Vector3(2784.711, 1583.586, 215.5772), MAT_Vector3(34.37986, 0, 0))
  Node_ParseIniFile(node131, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node131, 0)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_generic", "gen_mhaus1_3")
  Node_AddSon(node7, node132)
  Body_SetCS(node132, MAT_Vector3(2529.553, 1536.291, 190.1446), MAT_Vector3(-41.95605, 0, 0))
  Node_ParseIniFile(node132, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node132, 0)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_generic", "gen_stern2_1")
  Node_AddSon(node7, node133)
  Body_SetCS(node133, MAT_Vector3(1386.225, 1018.353, 220.0036), MAT_Vector3(0.120604, 0, 0))
  Node_ParseIniFile(node133, "osd/gen/gen_starfound2.osd")
  Body_SetFriendOrFoeID(node133, 0)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, -1, 0)
  Body_SetCargoKey(node133, -1, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_generic", "atl_wb4a_1_1")
  Node_AddSon(node7, node134)
  Body_SetCS(node134, MAT_Vector3(1415.066, 910.8988, 210.6977), MAT_Vector3(-0.045396, 0, 0))
  Node_ParseIniFile(node134, "osd/atl/atl_wblock3a_raw_02.osd")
  Body_SetFriendOrFoeID(node134, 0)
  Body_SetNameKey(node134, -1)
  Body_SetCargoKey(node134, -1, 0)
  Body_SetCargoKey(node134, -1, 1)
  Body_SetCargoKey(node134, -1, 2)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_generic", "gen_schorn1_1")
  Node_AddSon(node7, node135)
  Body_SetCS(node135, MAT_Vector3(3377.457, 1128.612, 301.5902), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node135, "osd/gen/gen_chimney1.osd")
  Body_SetFriendOrFoeID(node135, 0)
  Body_SetNameKey(node135, -1)
  Body_SetCargoKey(node135, -1, 0)
  Body_SetCargoKey(node135, -1, 1)
  Body_SetCargoKey(node135, -1, 2)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_generic", "atl_dock3_2")
  Node_AddSon(node7, node136)
  Body_SetCS(node136, MAT_Vector3(3625.137, 3219.147, 295.8241), MAT_Vector3(-90.26595, 0, 0))
  Node_ParseIniFile(node136, "osd/atl/atl_dock3.osd")
  Body_SetFriendOrFoeID(node136, 0)
  Body_SetNameKey(node136, -1)
  Body_SetCargoKey(node136, -1, 0)
  Body_SetCargoKey(node136, -1, 1)
  Body_SetCargoKey(node136, -1, 2)
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_generic", "gen_mhaus2_4")
  Node_AddSon(node7, node137)
  Body_SetCS(node137, MAT_Vector3(2549.06, 2629.761, 214.303), MAT_Vector3(15.40538, 0, 0))
  Node_ParseIniFile(node137, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node137, 0)
  Body_SetNameKey(node137, -1)
  Body_SetCargoKey(node137, -1, 0)
  Body_SetCargoKey(node137, -1, 1)
  Body_SetCargoKey(node137, -1, 2)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_generic", "atl_wb3a_2_7")
  Node_AddSon(node7, node138)
  Body_SetCS(node138, MAT_Vector3(2596.004, 2401.699, 206.6511), MAT_Vector3(-164.8963, 0, 0))
  Node_ParseIniFile(node138, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node138, 0)
  Body_SetNameKey(node138, -1)
  Body_SetCargoKey(node138, -1, 0)
  Body_SetCargoKey(node138, -1, 1)
  Body_SetCargoKey(node138, -1, 2)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_generic", "gen_synaps_1")
  Node_AddSon(node7, node139)
  Body_SetCS(node139, MAT_Vector3(1758.784, 2652.572, 329.676), MAT_Vector3(-31.31799, 0, 0))
  Node_ParseIniFile(node139, "osd/gen/gen_synapse.osd")
  Body_SetFriendOrFoeID(node139, 0)
  Body_SetNameKey(node139, -1)
  Body_SetCargoKey(node139, -1, 0)
  Body_SetCargoKey(node139, -1, 1)
  Body_SetCargoKey(node139, -1, 2)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_generic", "atl_digmod_3")
  Node_AddSon(node7, node140)
  Body_SetCS(node140, MAT_Vector3(2765.302, 2114.911, 200.3817), MAT_Vector3(30.63874, 0, 0))
  Node_ParseIniFile(node140, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node140, 0)
  Body_SetNameKey(node140, -1)
  Body_SetCargoKey(node140, -1, 0)
  Body_SetCargoKey(node140, -1, 1)
  Body_SetCargoKey(node140, -1, 2)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("nod_generic", "gen_mhaus1_4")
  Node_AddSon(node7, node141)
  Body_SetCS(node141, MAT_Vector3(2864.868, 2649.957, 195.5267), MAT_Vector3(106.9633, 0, 0))
  Node_ParseIniFile(node141, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node141, 0)
  Body_SetNameKey(node141, -1)
  Body_SetCargoKey(node141, -1, 0)
  Body_SetCargoKey(node141, -1, 1)
  Body_SetCargoKey(node141, -1, 2)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("nod_generic", "gen_kai2_blue_HQ")
  Node_AddSon(node7, node142)
  Body_SetCS(node142, MAT_Vector3(3274.84, 2906.062, 197.9883), MAT_Vector3(89.61164, 0, 0))
  Node_ParseIniFile(node142, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node142, 0)
  Body_SetNameKey(node142, -1)
  Body_SetCargoKey(node142, -1, 0)
  Body_SetCargoKey(node142, -1, 1)
  Body_SetCargoKey(node142, -1, 2)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("nod_generic", "gen_stern2_2")
  Node_AddSon(node7, node143)
  Body_SetCS(node143, MAT_Vector3(3357.783, 3396.41, 260.4746), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node143, "osd/gen/gen_starfound2.osd")
  Body_SetFriendOrFoeID(node143, 0)
  Body_SetNameKey(node143, -1)
  Body_SetCargoKey(node143, -1, 0)
  Body_SetCargoKey(node143, -1, 1)
  Body_SetCargoKey(node143, -1, 2)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("nod_generic", "gen_stern2_3")
  Node_AddSon(node7, node144)
  Body_SetCS(node144, MAT_Vector3(3459.296, 3423.165, 263.2674), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node144, "osd/gen/gen_starfound2.osd")
  Body_SetFriendOrFoeID(node144, 0)
  Body_SetNameKey(node144, -1)
  Body_SetCargoKey(node144, -1, 0)
  Body_SetCargoKey(node144, -1, 1)
  Body_SetCargoKey(node144, -1, 2)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("nod_generic", "gen_mhaus2_5")
  Node_AddSon(node7, node145)
  Body_SetCS(node145, MAT_Vector3(1332.185, 2742.601, 207.166), MAT_Vector3(-67.12756, 0, 0))
  Node_ParseIniFile(node145, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node145, 0)
  Body_SetNameKey(node145, -1)
  Body_SetCargoKey(node145, -1, 0)
  Body_SetCargoKey(node145, -1, 1)
  Body_SetCargoKey(node145, -1, 2)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("nod_generic", "gen_stern_1")
  Node_AddSon(node7, node146)
  Body_SetCS(node146, MAT_Vector3(1073.059, 2839.843, 206.2537), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node146, "osd/gen/gen_starfound.osd")
  Body_SetFriendOrFoeID(node146, 0)
  Body_SetNameKey(node146, -1)
  Body_SetCargoKey(node146, -1, 0)
  Body_SetCargoKey(node146, -1, 1)
  Body_SetCargoKey(node146, -1, 2)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("nod_generic", "gen_werk3_3")
  Node_AddSon(node7, node147)
  Body_SetCS(node147, MAT_Vector3(917.4514, 3120.461, 209.8317), MAT_Vector3(-55.6692, 0, 0))
  Node_ParseIniFile(node147, "osd/gen/gen_industry3.osd")
  Body_SetFriendOrFoeID(node147, 0)
  Body_SetNameKey(node147, -1)
  Body_SetCargoKey(node147, -1, 0)
  Body_SetCargoKey(node147, -1, 1)
  Body_SetCargoKey(node147, -1, 2)
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("nod_generic", "atl_wb3a_5_3")
  Node_AddSon(node7, node148)
  Body_SetCS(node148, MAT_Vector3(710.9445, 3331.408, 256.4334), MAT_Vector3(-141.122, 0, 0))
  Node_ParseIniFile(node148, "osd/atl/atl_wblock3a_05.osd")
  Body_SetFriendOrFoeID(node148, 0)
  Body_SetNameKey(node148, -1)
  Body_SetCargoKey(node148, -1, 0)
  Body_SetCargoKey(node148, -1, 1)
  Body_SetCargoKey(node148, -1, 2)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("nod_generic", "DES_trafo_1")
  Node_AddSon(node7, node149)
  Body_SetCS(node149, MAT_Vector3(1105.581, 3237.559, 314.1941), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node149, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node149, 0)
  Body_SetNameKey(node149, -1)
  Body_SetCargoKey(node149, -1, 0)
  Body_SetCargoKey(node149, -1, 1)
  Body_SetCargoKey(node149, -1, 2)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("nod_generic", "des_broadcasttower")
  Node_AddSon(node7, node150)
  Body_SetCS(node150, MAT_Vector3(1050.144, 3256.685, 266.1923), MAT_Vector3(18.84893, 0, 0))
  Node_ParseIniFile(node150, "osd/des/des_ec_tower.osd")
  Body_SetFriendOrFoeID(node150, 5)
  Body_SetNameKey(node150, -1)
  Body_SetCargoKey(node150, -1, 0)
  Body_SetCargoKey(node150, -1, 1)
  Body_SetCargoKey(node150, -1, 2)
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("nod_generic", "des_geb_hab_big_1")
  Node_AddSon(node7, node151)
  Body_SetCS(node151, MAT_Vector3(3304.833, 3112.761, 189.8097), MAT_Vector3(89.88863, 0, 0))
  Node_ParseIniFile(node151, "osd/des/des_geb_hab_big.osd")
  Body_SetFriendOrFoeID(node151, 5)
  Body_SetNameKey(node151, -1)
  Body_SetCargoKey(node151, -1, 0)
  Body_SetCargoKey(node151, -1, 1)
  Body_SetCargoKey(node151, -1, 2)
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("nod_generic", "des_parlament_1")
  Node_AddSon(node7, node152)
  Body_SetCS(node152, MAT_Vector3(1587.105, 433.297, 260.0646), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node152, "osd/des/des_parlament.osd")
  Body_SetFriendOrFoeID(node152, 5)
  Body_SetNameKey(node152, -1)
  Body_SetCargoKey(node152, -1, 0)
  Body_SetCargoKey(node152, -1, 1)
  Body_SetCargoKey(node152, -1, 2)
  Node_EnterSimulation(node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("nod_generic", "RadioStation_DockPoint")
  Node_AddSon(node7, node153)
  Body_SetCS(node153, MAT_Vector3(1056.988, 3202.912, 314.4282), MAT_Vector3(90.06742, 0, 0))
  Node_ParseIniFile(node153, "osd/gen/gen_dockingnode.osd")
  Body_SetFriendOrFoeID(node153, 0)
  Body_SetNameKey(node153, -1)
  Body_SetCargoKey(node153, -1, 0)
  Body_SetCargoKey(node153, -1, 1)
  Body_SetCargoKey(node153, -1, 2)
  Node_EnterSimulation(node153)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("nod_generic", "f1_trigger")
  Node_AddSon(node7, node154)
  Body_SetCS(node154, MAT_Vector3(1532.761232, 1086.707494, 207.235392), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node154, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node154, 0)
  Body_SetNameKey(node154, -1)
  Body_SetCargoKey(node154, -1, 0)
  Body_SetCargoKey(node154, -1, 1)
  Body_SetCargoKey(node154, -1, 2)
  Node_EnterSimulation(node154)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("nod_generic", "f1_turret_1")
  Node_AddSon(node7, node155)
  Body_SetCS(node155, MAT_Vector3(1485.260004, 1080.403156, 212.374547), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node155, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node155, 0)
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("nod_generic", "f1_turret_2")
  Node_AddSon(node7, node156)
  Body_SetCS(node156, MAT_Vector3(1567.817464, 1135.041209, 205.471543), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node156, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node156, 0)
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("nod_generic", "f2_trigger")
  Node_AddSon(node7, node157)
  Body_SetCS(node157, MAT_Vector3(1442.97828, 701.475002, 221.240927), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node157, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node157, 0)
  Body_SetNameKey(node157, -1)
  Body_SetCargoKey(node157, -1, 0)
  Body_SetCargoKey(node157, -1, 1)
  Body_SetCargoKey(node157, -1, 2)
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("nod_generic", "f2_turret_1")
  Node_AddSon(node7, node158)
  Body_SetCS(node158, MAT_Vector3(1337.236709, 788.354177, 269.712714), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node158, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node158, 0)
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("nod_generic", "f2_turret_2")
  Node_AddSon(node7, node159)
  Body_SetCS(node159, MAT_Vector3(1480.823594, 774.560659, 247.663666), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node159, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node159, 0)
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("nod_generic", "f3_trigger")
  Node_AddSon(node7, node160)
  Body_SetCS(node160, MAT_Vector3(1622.363249, 642.575977, 260.640661), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node160, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node160, 0)
  Body_SetNameKey(node160, -1)
  Body_SetCargoKey(node160, -1, 0)
  Body_SetCargoKey(node160, -1, 1)
  Body_SetCargoKey(node160, -1, 2)
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("nod_generic", "f3_turret_1")
  Node_AddSon(node7, node161)
  Body_SetCS(node161, MAT_Vector3(1584.618233, 647.964446, 263.041037), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node161, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node161, 0)
  Node_EnterSimulation(node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("nod_generic", "f3_turret_2")
  Node_AddSon(node7, node162)
  Body_SetCS(node162, MAT_Vector3(1667.773366, 647.574806, 264.79117), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node162, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node162, 0)
  Node_EnterSimulation(node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("nod_generic", "f4_trigger")
  Node_AddSon(node7, node163)
  Body_SetCS(node163, MAT_Vector3(2003.193864, 643.356711, 211.586567), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node163, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node163, 0)
  Body_SetNameKey(node163, -1)
  Body_SetCargoKey(node163, -1, 0)
  Body_SetCargoKey(node163, -1, 1)
  Body_SetCargoKey(node163, -1, 2)
  Node_EnterSimulation(node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("nod_generic", "f4_turret_1")
  Node_AddSon(node7, node164)
  Body_SetCS(node164, MAT_Vector3(1956.395983, 626.893108, 212.289124), MAT_Vector3(38.346191, 0, 0))
  Node_ParseIniFile(node164, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node164, 0)
  Node_EnterSimulation(node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("nod_generic", "f4_turret_2")
  Node_AddSon(node7, node165)
  Body_SetCS(node165, MAT_Vector3(2024.137706, 685.236361, 214.484944), MAT_Vector3(43.630818, 0, 0))
  Node_ParseIniFile(node165, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node165, 0)
  Node_EnterSimulation(node165)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("nod_generic", "f5_trigger")
  Node_AddSon(node7, node166)
  Body_SetCS(node166, MAT_Vector3(1172.334289, 585.584514, 216.68186), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node166, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node166, 0)
  Body_SetNameKey(node166, -1)
  Body_SetCargoKey(node166, -1, 0)
  Body_SetCargoKey(node166, -1, 1)
  Body_SetCargoKey(node166, -1, 2)
  Node_EnterSimulation(node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("nod_generic", "f5_turret_1")
  Node_AddSon(node7, node167)
  Body_SetCS(node167, MAT_Vector3(1146.353023, 558.710431, 223.194629), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node167, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node167, 0)
  Node_EnterSimulation(node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("nod_generic", "f5_turret_2")
  Node_AddSon(node7, node168)
  Body_SetCS(node168, MAT_Vector3(1195.359763, 613.546123, 215.311952), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node168, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node168, 0)
  Node_EnterSimulation(node168)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("nod_generic", "radio_turret_1")
  Node_AddSon(node7, node169)
  Body_SetCS(node169, MAT_Vector3(1046.874711, 3141.401136, 260.119577), MAT_Vector3(146.816231, 0, 0))
  Node_ParseIniFile(node169, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node169, 0)
  Node_EnterSimulation(node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("nod_generic", "radio_turret_2")
  Node_AddSon(node7, node170)
  Body_SetCS(node170, MAT_Vector3(1198.368125, 3105.855127, 260.1196), MAT_Vector3(177.228821, 0, 0))
  Node_ParseIniFile(node170, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node170, 0)
  Node_EnterSimulation(node170)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("nod_generic", "radio_turret_3")
  Node_AddSon(node7, node171)
  Body_SetCS(node171, MAT_Vector3(1299.081307, 3134.63023, 260.1196), MAT_Vector3(-128.483304, 0, 0))
  Node_ParseIniFile(node171, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node171, 0)
  Node_EnterSimulation(node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("nod_generic", "NavyHQ_turret_1")
  Node_AddSon(node7, node172)
  Body_SetCS(node172, MAT_Vector3(3301.042353, 2757.634532, 257.044817), MAT_Vector3(105.592603, 0, 0))
  Node_ParseIniFile(node172, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node172, 0)
  Node_EnterSimulation(node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("nod_generic", "NavyHQ_turret_2")
  Node_AddSon(node7, node173)
  Body_SetCS(node173, MAT_Vector3(3225.92994, 3126.013855, 349.893617), MAT_Vector3(105.5926, 0, 0))
  Node_ParseIniFile(node173, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node173, 0)
  Node_EnterSimulation(node173)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("nod_generic", "NavyHQ_turret_3")
  Node_AddSon(node7, node174)
  Body_SetCS(node174, MAT_Vector3(3225.518047, 3182.86354, 349.8936), MAT_Vector3(73.352643, 0, 0))
  Node_ParseIniFile(node174, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node174, 0)
  Node_EnterSimulation(node174)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("nod_generic", "NeoTec_turret_1")
  Node_AddSon(node7, node175)
  Body_SetCS(node175, MAT_Vector3(2960.57514, 1034.431258, 270.173625), MAT_Vector3(73.35264, 0, 0))
  Node_ParseIniFile(node175, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node175, 0)
  Node_EnterSimulation(node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("nod_generic", "NeoTec_turret_2")
  Node_AddSon(node7, node176)
  Body_SetCS(node176, MAT_Vector3(3130.673079, 1057.440648, 272.624371), MAT_Vector3(42.261002, 0, 0))
  Node_ParseIniFile(node176, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node176, 0)
  Node_EnterSimulation(node176)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("nod_generic", "NeoTec_turret_3")
  Node_AddSon(node7, node177)
  Body_SetCS(node177, MAT_Vector3(3260.161537, 1104.835497, 275.075171), MAT_Vector3(42.261, 0, 0))
  Node_ParseIniFile(node177, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node177, 0)
  Node_EnterSimulation(node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("nod_generic", "NeoTec_turret_4")
  Node_AddSon(node7, node178)
  Body_SetCS(node178, MAT_Vector3(3330.989527, 1271.110501, 306.718677), MAT_Vector3(42.261, 0, 0))
  Node_ParseIniFile(node178, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node178, 0)
  Node_EnterSimulation(node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("nod_fx_plankton", "fx_plankton_cyan_1")
  Node_AddSon(node7, node179)
  Node_ParseIniFile(node179, "osd/fx_plankton/fx_plankton_cyan.osd")
  Node_EnterSimulation(node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node180)
  Node_EnterSimulation(node180)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node180, node181)
  Node_EnterSimulation(node181)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node180, node182)
  Node_EnterSimulation(node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_Path", "Ghost_Path_1Begin")
  Node_AddSon(node182, node183)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node183, node184)
  Position_SetPosition(node184, MAT_Vector3(1367.024003, 1652.418219, 400))
  Position_SetRadius(node184, 10)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node183, node185)
  Position_SetPosition(node185, MAT_Vector3(1366.623352, 1548.950484, 400))
  Position_SetRadius(node185, 10)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_PatrolArea", "Parlament_PatrolArea")
  Node_AddSon(node182, node186)
  PatrolArea_SetPosition(node186, MAT_Vector3(1595.763719, 818.29467, 300))
  PatrolArea_SetRadius(node186, 200)
  PatrolArea_SetMinZ(node186, -30)
  PatrolArea_SetMaxZ(node186, 70)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_PatrolArea", "Parlament_TriggerArea")
  Node_AddSon(node182, node187)
  PatrolArea_SetPosition(node187, MAT_Vector3(1598.19014, 815.86856, 300))
  PatrolArea_SetRadius(node187, 350)
  PatrolArea_SetMinZ(node187, -160)
  PatrolArea_SetMaxZ(node187, 200)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_PatrolArea", "Parlament_FollowArea")
  Node_AddSon(node182, node188)
  PatrolArea_SetPosition(node188, MAT_Vector3(1595.764, 818.2947, 300))
  PatrolArea_SetRadius(node188, 550)
  PatrolArea_SetMinZ(node188, -160)
  PatrolArea_SetMaxZ(node188, 200)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_Path", "CoxFreighter_Path_1")
  Node_AddSon(node182, node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node189, node190)
  Position_SetPosition(node190, MAT_Vector3(2040.741098, 785.147658, 400))
  Position_SetRadius(node190, 5)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node189, node191)
  Position_SetPosition(node191, MAT_Vector3(1932.674875, 674.782296, 400))
  Position_SetRadius(node191, 5)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node189, node192)
  Position_SetPosition(node192, MAT_Vector3(1626.181763, 718.449347, 400))
  Position_SetRadius(node192, 5)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Path", "CoxFregate1_Path_1")
  Node_AddSon(node182, node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node193, node194)
  Position_SetPosition(node194, MAT_Vector3(1992.456136, 872.520311, 400))
  Position_SetRadius(node194, 5)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node193, node195)
  Position_SetPosition(node195, MAT_Vector3(1838.752027, 801.911158, 400))
  Position_SetRadius(node195, 5)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node193, node196)
  Position_SetPosition(node196, MAT_Vector3(1679.085756, 804.451079, 400))
  Position_SetRadius(node196, 5)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_Path", "CoxFregate2_Path_1")
  Node_AddSon(node182, node197)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node197, node198)
  Position_SetPosition(node198, MAT_Vector3(1930.901135, 976.60398, 400))
  Position_SetRadius(node198, 5)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node197, node199)
  Position_SetPosition(node199, MAT_Vector3(1789.694262, 928.266494, 400))
  Position_SetRadius(node199, 5)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node197, node200)
  Position_SetPosition(node200, MAT_Vector3(1576.979072, 928.586807, 400))
  Position_SetRadius(node200, 5)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("NOD_Path", "TechBomber_Path_1")
  Node_AddSon(node182, node201)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node201, node202)
  Position_SetPosition(node202, MAT_Vector3(1744.878297, 1260.334467, 400))
  Position_SetRadius(node202, 5)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node201, node203)
  Position_SetPosition(node203, MAT_Vector3(1718.374581, 1129.115763, 289.044557))
  Position_SetRadius(node203, 5)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node201, node204)
  Position_SetPosition(node204, MAT_Vector3(1784.795021, 693.387342, 453.75107))
  Position_SetRadius(node204, 5)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("NOD_PatrolArea", "Chapter3_PatrolArea")
  Node_AddSon(node182, node205)
  PatrolArea_SetPosition(node205, MAT_Vector3(1058.605956, 2052.477877, 300))
  PatrolArea_SetRadius(node205, 200)
  PatrolArea_SetMinZ(node205, -30)
  PatrolArea_SetMaxZ(node205, 70)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("NOD_PatrolArea", "Chapter3_TriggerArea")
  Node_AddSon(node182, node206)
  PatrolArea_SetPosition(node206, MAT_Vector3(1054.660426, 2052.056613, 300))
  PatrolArea_SetRadius(node206, 350)
  PatrolArea_SetMinZ(node206, -160)
  PatrolArea_SetMaxZ(node206, 200)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("NOD_PatrolArea", "Chapter3_FollowArea")
  Node_AddSon(node182, node207)
  PatrolArea_SetPosition(node207, MAT_Vector3(1060.312995, 2051.676336, 300))
  PatrolArea_SetRadius(node207, 480)
  PatrolArea_SetMinZ(node207, -160)
  PatrolArea_SetMaxZ(node207, 200)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("NOD_Path", "TriOps_Path_1")
  Node_AddSon(node182, node208)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node208, node209)
  Position_SetPosition(node209, MAT_Vector3(733.551833, 2376.928094, 295.890795))
  Position_SetRadius(node209, 15)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node208, node210)
  Position_SetPosition(node210, MAT_Vector3(773.70343, 2616.656745, 293.703047))
  Position_SetRadius(node210, 15)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node208, node211)
  Position_SetPosition(node211, MAT_Vector3(891.987646, 2874.188688, 280.180234))
  Position_SetRadius(node211, 15)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("NOD_Path", "Ghost_Path_1")
  Node_AddSon(node182, node212)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node212, node213)
  Position_SetPosition(node213, MAT_Vector3(832.749896, 2270.644456, 304.987252))
  Position_SetRadius(node213, 15)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node212, node214)
  Position_SetPosition(node214, MAT_Vector3(737.094621, 2409.994115, 289.57418))
  Position_SetRadius(node214, 15)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node212, node215)
  Position_SetPosition(node215, MAT_Vector3(803.144408, 2748.122468, 284.457302))
  Position_SetRadius(node215, 15)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("NOD_Position", "512mPosition_1")
  Node_AddSon(node182, node216)
  Position_SetPosition(node216, MAT_Vector3(893.678583, 2872.464184, 278.613732))
  Position_SetRadius(node216, 350)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node180, node217)
  Node_EnterSimulation(node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node180, node218)
  Node_EnterSimulation(node218)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node180, node219)
  Node_EnterSimulation(node219)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node219, node220)
  Body_SetCS(node220, MAT_Vector3(1495.667831, 1702.56016, 312.665324), MAT_Vector3(-179.315821, 0, 0))
  Node_ParseIniFile(node220, "osd/pla/pla_vortex.osd")
  Body_SetFriendOrFoeID(node220, 3)
  Node_EnterSimulation(node220)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("nod_vessel", "wng_chaka_c4_1")
  Node_AddSon(node219, node221)
  Body_SetCS(node221, MAT_Vector3(1475.785434, 1761.247231, 430.802932), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node221, "osd/wng/wng_chaka_c4.osd")
  Body_SetFriendOrFoeID(node221, 4)
  Body_SetNameKey(node221, -1)
  Body_SetCargoKey(node221, -1, 0)
  Body_SetCargoKey(node221, -1, 1)
  Body_SetCargoKey(node221, -1, 2)
  Node_EnterSimulation(node221)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("nod_vessel", "wng_harper_c4_1")
  Node_AddSon(node219, node222)
  Body_SetCS(node222, MAT_Vector3(1519.265141, 1728.412402, 318.779424), MAT_Vector3(179.283672, 0, 0))
  Node_ParseIniFile(node222, "osd/wng/wng_harper_c4.osd")
  Body_SetFriendOrFoeID(node222, 4)
  Body_SetNameKey(node222, -1)
  Body_SetCargoKey(node222, -1, 0)
  Body_SetCargoKey(node222, -1, 1)
  Body_SetCargoKey(node222, -1, 2)
  Node_EnterSimulation(node222)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("nod_vessel", "wng_pico_c4_1")
  Node_AddSon(node219, node223)
  Body_SetCS(node223, MAT_Vector3(1471.775004, 1733.388338, 332.39254), MAT_Vector3(179.834864, 0, 0))
  Node_ParseIniFile(node223, "osd/wng/wng_pico_c4.osd")
  Body_SetFriendOrFoeID(node223, 4)
  Body_SetNameKey(node223, -1)
  Body_SetCargoKey(node223, -1, 0)
  Body_SetCargoKey(node223, -1, 1)
  Body_SetCargoKey(node223, -1, 2)
  Node_EnterSimulation(node223)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("nod_vessel", "wng_degrange_c4_1")
  Node_AddSon(node219, node224)
  Body_SetCS(node224, MAT_Vector3(1594.176857, 1646.924508, 393.6348), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node224, "osd/wng/wng_degrange_c4.osd")
  Body_SetFriendOrFoeID(node224, 4)
  Body_SetNameKey(node224, -1)
  Body_SetCargoKey(node224, -1, 0)
  Body_SetCargoKey(node224, -1, 1)
  Body_SetCargoKey(node224, -1, 2)
  Node_EnterSimulation(node224)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("NOD_Directory", "Directory_SoolsUnits")
  Node_AddSon(node219, node225)
  Node_EnterSimulation(node225)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("nod_vessel", "Ghost_4h3")
  Node_AddSon(node225, node226)
  Body_SetCS(node226, MAT_Vector3(1365, 1750, 400), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node226, "osd/atl/atl_ghost_4h3.osd")
  Body_SetFriendOrFoeID(node226, 2)
  Body_SetNameKey(node226, -1)
  Body_SetCargoKey(node226, -1, 0)
  Body_SetCargoKey(node226, -1, 1)
  Body_SetCargoKey(node226, -1, 2)
  Node_EnterSimulation(node226)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("nod_vessel", "sool_scout1_emp_1")
  Node_AddSon(node225, node227)
  Body_SetCS(node227, MAT_Vector3(1624.024631, 1631.6412, 499.536842), MAT_Vector3(-179.886982, 0, 0))
  Node_ParseIniFile(node227, "osd/atl/atl_scout1_emp.osd")
  Body_SetFriendOrFoeID(node227, 2)
  Body_SetNameKey(node227, -1)
  Body_SetCargoKey(node227, -1, 0)
  Body_SetCargoKey(node227, -1, 1)
  Body_SetCargoKey(node227, -1, 2)
  Node_EnterSimulation(node227)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("nod_vessel", "sool_scout1_emp_2")
  Node_AddSon(node225, node228)
  Body_SetCS(node228, MAT_Vector3(1607.237313, 1644.51156, 499.5368), MAT_Vector3(-179.887, 0, 0))
  Node_ParseIniFile(node228, "osd/atl/atl_scout1_emp.osd")
  Body_SetFriendOrFoeID(node228, 2)
  Body_SetNameKey(node228, -1)
  Body_SetCargoKey(node228, -1, 0)
  Body_SetCargoKey(node228, -1, 1)
  Body_SetCargoKey(node228, -1, 2)
  Node_EnterSimulation(node228)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("nod_vessel", "sool_scout1_emp_3")
  Node_AddSon(node225, node229)
  Body_SetCS(node229, MAT_Vector3(1643.249434, 1645.42956, 499.5368), MAT_Vector3(-179.887, 0, 0))
  Node_ParseIniFile(node229, "osd/atl/atl_scout1_emp.osd")
  Body_SetFriendOrFoeID(node229, 2)
  Body_SetNameKey(node229, -1)
  Body_SetCargoKey(node229, -1, 0)
  Body_SetCargoKey(node229, -1, 1)
  Body_SetCargoKey(node229, -1, 2)
  Node_EnterSimulation(node229)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("nod_vessel", "sool_scout1_emp_4")
  Node_AddSon(node225, node230)
  Body_SetCS(node230, MAT_Vector3(1625.29003, 1662.608146, 499.5368), MAT_Vector3(-179.887, 0, 0))
  Node_ParseIniFile(node230, "osd/atl/atl_scout1_emp.osd")
  Body_SetFriendOrFoeID(node230, 2)
  Body_SetNameKey(node230, -1)
  Body_SetCargoKey(node230, -1, 0)
  Body_SetCargoKey(node230, -1, 1)
  Body_SetCargoKey(node230, -1, 2)
  Node_EnterSimulation(node230)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("nod_vessel", "sool_techbomber_dock_1")
  Node_AddSon(node225, node231)
  Body_SetCS(node231, MAT_Vector3(1787.73104, 1441.55597, 400), MAT_Vector3(162.997537, 0, 0))
  Node_ParseIniFile(node231, "osd/atl/atl_techbomber_docking.osd")
  Body_SetFriendOrFoeID(node231, 2)
  Body_SetNameKey(node231, -1)
  Body_SetCargoKey(node231, -1, 0)
  Body_SetCargoKey(node231, -1, 1)
  Body_SetCargoKey(node231, -1, 2)
  Node_EnterSimulation(node231)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("nod_vessel", "atl_scout1_1")
  Node_AddSon(node225, node232)
  Body_SetCS(node232, MAT_Vector3(891.417288, 2224.488394, 316.0407), MAT_Vector3(-131.43325, 0, 0))
  Node_ParseIniFile(node232, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node232, 2)
  Body_SetNameKey(node232, -1)
  Body_SetCargoKey(node232, -1, 0)
  Body_SetCargoKey(node232, -1, 1)
  Body_SetCargoKey(node232, -1, 2)
  Node_EnterSimulation(node232)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("nod_vessel", "atl_scout1_2")
  Node_AddSon(node225, node233)
  Body_SetCS(node233, MAT_Vector3(825.289804, 2174.366009, 318.8842), MAT_Vector3(-135.603995, 0, 0))
  Node_ParseIniFile(node233, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node233, 2)
  Body_SetNameKey(node233, -1)
  Body_SetCargoKey(node233, -1, 0)
  Body_SetCargoKey(node233, -1, 1)
  Body_SetCargoKey(node233, -1, 2)
  Node_EnterSimulation(node233)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("nod_vessel", "atl_scout2_1")
  Node_AddSon(node225, node234)
  Body_SetCS(node234, MAT_Vector3(891.687341, 2288.60705, 294.1302), MAT_Vector3(-136.610122, 0, 0))
  Node_ParseIniFile(node234, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node234, 2)
  Body_SetNameKey(node234, -1)
  Body_SetCargoKey(node234, -1, 0)
  Body_SetCargoKey(node234, -1, 1)
  Body_SetCargoKey(node234, -1, 2)
  Node_EnterSimulation(node234)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("nod_vessel", "atl_scout2_2")
  Node_AddSon(node225, node235)
  Body_SetCS(node235, MAT_Vector3(799.614204, 2212.374114, 319.9844), MAT_Vector3(-130.224345, 0, 0))
  Node_ParseIniFile(node235, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node235, 2)
  Body_SetNameKey(node235, -1)
  Body_SetCargoKey(node235, -1, 0)
  Body_SetCargoKey(node235, -1, 1)
  Body_SetCargoKey(node235, -1, 2)
  Node_EnterSimulation(node235)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("nod_vessel", "atl_scout2_3")
  Node_AddSon(node225, node236)
  Body_SetCS(node236, MAT_Vector3(766.880667, 2196.517769, 330.9862), MAT_Vector3(-142.469728, 0, 0))
  Node_ParseIniFile(node236, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node236, 2)
  Body_SetNameKey(node236, -1)
  Body_SetCargoKey(node236, -1, 0)
  Body_SetCargoKey(node236, -1, 1)
  Body_SetCargoKey(node236, -1, 2)
  Node_EnterSimulation(node236)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("nod_vessel", "atl_scout2_4")
  Node_AddSon(node225, node237)
  Body_SetCS(node237, MAT_Vector3(860.09188, 2265.065935, 311.4178), MAT_Vector3(-136.990367, 0, 0))
  Node_ParseIniFile(node237, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node237, 2)
  Body_SetNameKey(node237, -1)
  Body_SetCargoKey(node237, -1, 0)
  Body_SetCargoKey(node237, -1, 1)
  Body_SetCargoKey(node237, -1, 2)
  Node_EnterSimulation(node237)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("nod_vessel", "atl_bomber_1")
  Node_AddSon(node225, node238)
  Body_SetCS(node238, MAT_Vector3(732.496991, 2230.385417, 286.6689), MAT_Vector3(-130.208989, 0, 0))
  Node_ParseIniFile(node238, "osd/atl/atl_bomber.osd")
  Body_SetFriendOrFoeID(node238, 2)
  Body_SetNameKey(node238, -1)
  Body_SetCargoKey(node238, -1, 0)
  Body_SetCargoKey(node238, -1, 1)
  Body_SetCargoKey(node238, -1, 2)
  Node_EnterSimulation(node238)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("nod_vessel", "atl_fregatte_1")
  Node_AddSon(node225, node239)
  Body_SetCS(node239, MAT_Vector3(788.860424, 2280.740918, 358.5617), MAT_Vector3(-135.133776, 0, 0))
  Node_ParseIniFile(node239, "osd/atl/atl_fregatte.osd")
  Body_SetFriendOrFoeID(node239, 2)
  Body_SetNameKey(node239, -1)
  Body_SetCargoKey(node239, -1, 0)
  Body_SetCargoKey(node239, -1, 1)
  Body_SetCargoKey(node239, -1, 2)
  Node_EnterSimulation(node239)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("NOD_Directory", "Directory_CoxsUnits")
  Node_AddSon(node219, node240)
  Node_EnterSimulation(node240)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("nod_vessel", "cox_freighter1_1")
  Node_AddSon(node240, node241)
  Body_SetCS(node241, MAT_Vector3(2093.557675, 842.437102, 400), MAT_Vector3(137.250494, 0, 0))
  Node_ParseIniFile(node241, "osd/gen/gen_freighter1.osd")
  Body_SetFriendOrFoeID(node241, 6)
  Body_SetNameKey(node241, -1)
  Body_SetCargoKey(node241, -1, 0)
  Body_SetCargoKey(node241, -1, 1)
  Body_SetCargoKey(node241, -1, 2)
  Node_EnterSimulation(node241)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("nod_vessel", "cox_scout1_emp_1")
  Node_AddSon(node240, node242)
  Body_SetCS(node242, MAT_Vector3(1953.317342, 955.943367, 314.7252), MAT_Vector3(132.035587, 0, 0))
  Node_ParseIniFile(node242, "osd/atl/atl_scout1_emp.osd")
  Body_SetFriendOrFoeID(node242, 1)
  Body_SetNameKey(node242, -1)
  Body_SetCargoKey(node242, -1, 0)
  Body_SetCargoKey(node242, -1, 1)
  Body_SetCargoKey(node242, -1, 2)
  Node_EnterSimulation(node242)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("nod_vessel", "cox_scout1_emp_2")
  Node_AddSon(node240, node243)
  Body_SetCS(node243, MAT_Vector3(1966.187931, 912.854754, 314.7252), MAT_Vector3(139.282011, 0, 0))
  Node_ParseIniFile(node243, "osd/atl/atl_scout1_emp.osd")
  Body_SetFriendOrFoeID(node243, 1)
  Body_SetNameKey(node243, -1)
  Body_SetCargoKey(node243, -1, 0)
  Body_SetCargoKey(node243, -1, 1)
  Body_SetCargoKey(node243, -1, 2)
  Node_EnterSimulation(node243)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("nod_vessel", "cox_scout1_emp_3")
  Node_AddSon(node240, node244)
  Body_SetCS(node244, MAT_Vector3(1868.259806, 1028.689864, 314.7252), MAT_Vector3(139.282, 0, 0))
  Node_ParseIniFile(node244, "osd/atl/atl_scout1_emp.osd")
  Body_SetFriendOrFoeID(node244, 1)
  Body_SetNameKey(node244, -1)
  Body_SetCargoKey(node244, -1, 0)
  Body_SetCargoKey(node244, -1, 1)
  Body_SetCargoKey(node244, -1, 2)
  Node_EnterSimulation(node244)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("nod_vessel", "cox_scout1_1")
  Node_AddSon(node240, node245)
  Body_SetCS(node245, MAT_Vector3(1907.875601, 979.701117, 314.7252), MAT_Vector3(136.077488, 0, 0))
  Node_ParseIniFile(node245, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node245, 1)
  Body_SetNameKey(node245, -1)
  Body_SetCargoKey(node245, -1, 0)
  Body_SetCargoKey(node245, -1, 1)
  Body_SetCargoKey(node245, -1, 2)
  Node_EnterSimulation(node245)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("nod_vessel", "cox_bomber_emp_1")
  Node_AddSon(node240, node246)
  Body_SetCS(node246, MAT_Vector3(1999.203696, 958.181726, 314.7252), MAT_Vector3(137.085702, 0, 0))
  Node_ParseIniFile(node246, "osd/atl/atl_bomber_emp.osd")
  Body_SetFriendOrFoeID(node246, 1)
  Body_SetNameKey(node246, -1)
  Body_SetCargoKey(node246, -1, 0)
  Body_SetCargoKey(node246, -1, 1)
  Body_SetCargoKey(node246, -1, 2)
  Node_EnterSimulation(node246)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("nod_vessel", "cox_bomber_emp_2")
  Node_AddSon(node240, node247)
  Body_SetCS(node247, MAT_Vector3(1907.431293, 1039.322204, 314.7252), MAT_Vector3(137.0857, 0, 0))
  Node_ParseIniFile(node247, "osd/atl/atl_bomber_emp.osd")
  Body_SetFriendOrFoeID(node247, 7)
  Body_SetNameKey(node247, -1)
  Body_SetCargoKey(node247, -1, 0)
  Body_SetCargoKey(node247, -1, 1)
  Body_SetCargoKey(node247, -1, 2)
  Node_EnterSimulation(node247)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("nod_vessel", "cox_fregatte_1")
  Node_AddSon(node240, node248)
  Body_SetCS(node248, MAT_Vector3(2040.674253, 919.462957, 400), MAT_Vector3(130.092973, 0, 0))
  Node_ParseIniFile(node248, "osd/atl/atl_fregatte.osd")
  Body_SetFriendOrFoeID(node248, 1)
  Body_SetNameKey(node248, -1)
  Body_SetCargoKey(node248, -1, 0)
  Body_SetCargoKey(node248, -1, 1)
  Body_SetCargoKey(node248, -1, 2)
  Node_EnterSimulation(node248)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("nod_vessel", "cox_fregatte_2")
  Node_AddSon(node240, node249)
  Body_SetCS(node249, MAT_Vector3(1970.72529, 1010.116528, 400), MAT_Vector3(130.093, 0, 0))
  Node_ParseIniFile(node249, "osd/atl/atl_fregatte.osd")
  Body_SetFriendOrFoeID(node249, 1)
  Body_SetNameKey(node249, -1)
  Body_SetCargoKey(node249, -1, 0)
  Body_SetCargoKey(node249, -1, 1)
  Body_SetCargoKey(node249, -1, 2)
  Node_EnterSimulation(node249)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("nod_vessel", "cox_scout1_emp_1_1")
  Node_AddSon(node240, node250)
  Body_SetCS(node250, MAT_Vector3(2019.628371, 1114.30726, 314.7252), MAT_Vector3(132.0356, 0, 0))
  Node_ParseIniFile(node250, "osd/atl/atl_scout1_emp.osd")
  Body_SetFriendOrFoeID(node250, 1)
  Body_SetNameKey(node250, -1)
  Body_SetCargoKey(node250, -1, 0)
  Body_SetCargoKey(node250, -1, 1)
  Body_SetCargoKey(node250, -1, 2)
  Node_EnterSimulation(node250)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("nod_vessel", "cox_scout1_emp_1_2")
  Node_AddSon(node240, node251)
  Body_SetCS(node251, MAT_Vector3(2037.255883, 1084.369018, 314.7252), MAT_Vector3(139.282, 0, 0))
  Node_ParseIniFile(node251, "osd/atl/atl_scout1_emp.osd")
  Body_SetFriendOrFoeID(node251, 7)
  Body_SetNameKey(node251, -1)
  Body_SetCargoKey(node251, -1, 0)
  Body_SetCargoKey(node251, -1, 1)
  Body_SetCargoKey(node251, -1, 2)
  Node_EnterSimulation(node251)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("nod_vessel", "cox_scout1_emp_1_3")
  Node_AddSon(node240, node252)
  Body_SetCS(node252, MAT_Vector3(1982.416288, 1121.861677, 314.7252), MAT_Vector3(139.282, 0, 0))
  Node_ParseIniFile(node252, "osd/atl/atl_scout1_emp.osd")
  Body_SetFriendOrFoeID(node252, 1)
  Body_SetNameKey(node252, -1)
  Body_SetCargoKey(node252, -1, 0)
  Body_SetCargoKey(node252, -1, 1)
  Body_SetCargoKey(node252, -1, 2)
  Node_EnterSimulation(node252)
  Game_LoadProgress_Advance(node0)
  node253 = Node_CreateNode("nod_vessel", "cox_bomber_emp_3")
  Node_AddSon(node240, node253)
  Body_SetCS(node253, MAT_Vector3(2066.081, 1070.362, 314.7252), MAT_Vector3(137.0857, 0, 0))
  Node_ParseIniFile(node253, "osd/atl/atl_bomber_emp.osd")
  Body_SetFriendOrFoeID(node253, 7)
  Body_SetNameKey(node253, -1)
  Body_SetCargoKey(node253, -1, 0)
  Body_SetCargoKey(node253, -1, 1)
  Body_SetCargoKey(node253, -1, 2)
  Node_EnterSimulation(node253)
  Game_LoadProgress_Advance(node0)
  node254 = Node_CreateNode("nod_vessel", "cox_scout1_emp_2_1")
  Node_AddSon(node240, node254)
  Body_SetCS(node254, MAT_Vector3(2040.884728, 1140.287445, 314.7252), MAT_Vector3(132.0356, 0, 0))
  Node_ParseIniFile(node254, "osd/atl/atl_scout1_emp.osd")
  Body_SetFriendOrFoeID(node254, 1)
  Body_SetNameKey(node254, -1)
  Body_SetCargoKey(node254, -1, 0)
  Body_SetCargoKey(node254, -1, 1)
  Body_SetCargoKey(node254, -1, 2)
  Node_EnterSimulation(node254)
  Game_LoadProgress_Advance(node0)
  node255 = Node_CreateNode("nod_vessel", "cox_scout1_emp_2_2")
  Node_AddSon(node240, node255)
  Body_SetCS(node255, MAT_Vector3(2016.16774, 1155.23232, 314.7252), MAT_Vector3(132.0356, 0, 0))
  Node_ParseIniFile(node255, "osd/atl/atl_scout1_emp.osd")
  Body_SetFriendOrFoeID(node255, 1)
  Body_SetNameKey(node255, -1)
  Body_SetCargoKey(node255, -1, 0)
  Body_SetCargoKey(node255, -1, 1)
  Body_SetCargoKey(node255, -1, 2)
  Node_EnterSimulation(node255)
  Game_LoadProgress_Advance(node0)
  node256 = Node_CreateNode("nod_vessel", "cox_scout1_emp_2_3")
  Node_AddSon(node240, node256)
  Body_SetCS(node256, MAT_Vector3(2066.177341, 1113.270139, 314.7252), MAT_Vector3(132.0356, 0, 0))
  Node_ParseIniFile(node256, "osd/atl/atl_scout1_emp.osd")
  Body_SetFriendOrFoeID(node256, 1)
  Body_SetNameKey(node256, -1)
  Body_SetCargoKey(node256, -1, 0)
  Body_SetCargoKey(node256, -1, 1)
  Body_SetCargoKey(node256, -1, 2)
  Node_EnterSimulation(node256)
  Game_LoadProgress_Advance(node0)
  node257 = Node_CreateNode("nod_vessel", "TriOps")
  Node_AddSon(node240, node257)
  Body_SetCS(node257, MAT_Vector3(727.042303, 2313.553913, 310.07717), MAT_Vector3(-8.492275, 0, 0))
  Node_ParseIniFile(node257, "osd/atl/atl_triops.osd")
  Body_SetFriendOrFoeID(node257, 1)
  Body_SetNameKey(node257, -1)
  Body_SetCargoKey(node257, -1, 0)
  Body_SetCargoKey(node257, -1, 1)
  Body_SetCargoKey(node257, -1, 2)
  Node_EnterSimulation(node257)
  Game_LoadProgress_Advance(node0)
  node258 = Node_CreateNode("nod_vehicle", "atl_tank1_1")
  Node_AddSon(node240, node258)
  Body_SetCS(node258, MAT_Vector3(891.245235, 2040.575843, 513.587281), MAT_Vector3(25.327167, 0, 0))
  Node_ParseIniFile(node258, "osd/atl/atl_tank1.osd")
  Body_SetFriendOrFoeID(node258, 1)
  Body_SetNameKey(node258, -1)
  Body_SetCargoKey(node258, -1, 0)
  Body_SetCargoKey(node258, -1, 1)
  Body_SetCargoKey(node258, -1, 2)
  Node_EnterSimulation(node258)
  Game_LoadProgress_Advance(node0)
  node259 = Node_CreateNode("nod_vehicle", "atl_tank1_2")
  Node_AddSon(node240, node259)
  Body_SetCS(node259, MAT_Vector3(956.196312, 2124.421981, 513.5873), MAT_Vector3(77.851962, 0, 0))
  Node_ParseIniFile(node259, "osd/atl/atl_tank1.osd")
  Body_SetFriendOrFoeID(node259, 1)
  Body_SetNameKey(node259, -1)
  Body_SetCargoKey(node259, -1, 0)
  Body_SetCargoKey(node259, -1, 1)
  Body_SetCargoKey(node259, -1, 2)
  Node_EnterSimulation(node259)
  Game_LoadProgress_Advance(node0)
  node260 = Node_CreateNode("nod_vehicle", "atl_tank1_3")
  Node_AddSon(node240, node260)
  Body_SetCS(node260, MAT_Vector3(848.731745, 2158.668931, 513.5873), MAT_Vector3(-110.727744, 0, 0))
  Node_ParseIniFile(node260, "osd/atl/atl_tank1.osd")
  Body_SetFriendOrFoeID(node260, 1)
  Body_SetNameKey(node260, -1)
  Body_SetCargoKey(node260, -1, 0)
  Body_SetCargoKey(node260, -1, 1)
  Body_SetCargoKey(node260, -1, 2)
  Node_EnterSimulation(node260)
  Game_LoadProgress_Advance(node0)
  node261 = Node_CreateNode("nod_vehicle", "atl_tank1_4")
  Node_AddSon(node240, node261)
  Body_SetCS(node261, MAT_Vector3(896.749298, 2156.599797, 513.5873), MAT_Vector3(-110.7277, 0, 0))
  Node_ParseIniFile(node261, "osd/atl/atl_tank1.osd")
  Body_SetFriendOrFoeID(node261, 1)
  Body_SetNameKey(node261, -1)
  Body_SetCargoKey(node261, -1, 0)
  Body_SetCargoKey(node261, -1, 1)
  Body_SetCargoKey(node261, -1, 2)
  Node_EnterSimulation(node261)
  Game_LoadProgress_Advance(node0)
  node262 = Node_CreateNode("nod_vehicle", "atl_tank1_5")
  Node_AddSon(node240, node262)
  Body_SetCS(node262, MAT_Vector3(884.390703, 2093.159202, 513.5873), MAT_Vector3(-110.7277, 0, 0))
  Node_ParseIniFile(node262, "osd/atl/atl_tank1.osd")
  Body_SetFriendOrFoeID(node262, 1)
  Body_SetNameKey(node262, -1)
  Body_SetCargoKey(node262, -1, 0)
  Body_SetCargoKey(node262, -1, 1)
  Body_SetCargoKey(node262, -1, 2)
  Node_EnterSimulation(node262)
  Game_LoadProgress_Advance(node0)
  node263 = Node_CreateNode("nod_vehicle", "atl_tank2_1")
  Node_AddSon(node240, node263)
  Body_SetCS(node263, MAT_Vector3(779.056957, 2130.326465, 513.587281), MAT_Vector3(-68.187483, 0, 0))
  Node_ParseIniFile(node263, "osd/atl/atl_tank2.osd")
  Body_SetFriendOrFoeID(node263, 1)
  Body_SetNameKey(node263, -1)
  Body_SetCargoKey(node263, -1, 0)
  Body_SetCargoKey(node263, -1, 1)
  Body_SetCargoKey(node263, -1, 2)
  Node_EnterSimulation(node263)
  Game_LoadProgress_Advance(node0)
  node264 = Node_CreateNode("nod_vehicle", "atl_tank2_2")
  Node_AddSon(node240, node264)
  Body_SetCS(node264, MAT_Vector3(770.434699, 2055.599395, 513.5873), MAT_Vector3(-68.18748, 0, 0))
  Node_ParseIniFile(node264, "osd/atl/atl_tank2.osd")
  Body_SetFriendOrFoeID(node264, 1)
  Body_SetNameKey(node264, -1)
  Body_SetCargoKey(node264, -1, 0)
  Body_SetCargoKey(node264, -1, 1)
  Body_SetCargoKey(node264, -1, 2)
  Node_EnterSimulation(node264)
  Game_LoadProgress_Advance(node0)
  node265 = Node_CreateNode("nod_vehicle", "atl_tank2_3")
  Node_AddSon(node240, node265)
  Body_SetCS(node265, MAT_Vector3(834.814544, 2002.140736, 513.5873), MAT_Vector3(-68.18748, 0, 0))
  Node_ParseIniFile(node265, "osd/atl/atl_tank2.osd")
  Body_SetFriendOrFoeID(node265, 1)
  Body_SetNameKey(node265, -1)
  Body_SetCargoKey(node265, -1, 0)
  Body_SetCargoKey(node265, -1, 1)
  Body_SetCargoKey(node265, -1, 2)
  Node_EnterSimulation(node265)
  Game_LoadProgress_Advance(node0)
  node266 = Node_CreateNode("nod_vessel", "cox_scout1_emp_3_1")
  Node_AddSon(node240, node266)
  Body_SetCS(node266, MAT_Vector3(1005.128974, 2178.608759, 324.920042), MAT_Vector3(13.323035, 0, 0))
  Node_ParseIniFile(node266, "osd/atl/atl_scout1_emp.osd")
  Body_SetFriendOrFoeID(node266, 7)
  Body_SetNameKey(node266, -1)
  Body_SetCargoKey(node266, -1, 0)
  Body_SetCargoKey(node266, -1, 1)
  Body_SetCargoKey(node266, -1, 2)
  Node_EnterSimulation(node266)
  Game_LoadProgress_Advance(node0)
  node267 = Node_CreateNode("nod_vessel", "cox_scout1_emp_3_2")
  Node_AddSon(node240, node267)
  Body_SetCS(node267, MAT_Vector3(924.654199, 2116.528439, 324.92), MAT_Vector3(-4.619688, 0, 0))
  Node_ParseIniFile(node267, "osd/atl/atl_scout1_emp.osd")
  Body_SetFriendOrFoeID(node267, 1)
  Body_SetNameKey(node267, -1)
  Body_SetCargoKey(node267, -1, 0)
  Body_SetCargoKey(node267, -1, 1)
  Body_SetCargoKey(node267, -1, 2)
  Node_EnterSimulation(node267)
  Game_LoadProgress_Advance(node0)
  node268 = Node_CreateNode("nod_vessel", "cox_scout1_emp_3_3")
  Node_AddSon(node240, node268)
  Body_SetCS(node268, MAT_Vector3(945.251862, 2065.445799, 324.92), MAT_Vector3(-4.619688, 0, 0))
  Node_ParseIniFile(node268, "osd/atl/atl_scout1_emp.osd")
  Body_SetFriendOrFoeID(node268, 1)
  Body_SetNameKey(node268, -1)
  Body_SetCargoKey(node268, -1, 0)
  Body_SetCargoKey(node268, -1, 1)
  Body_SetCargoKey(node268, -1, 2)
  Node_EnterSimulation(node268)
  Game_LoadProgress_Advance(node0)
  node269 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_1")
  Node_AddSon(node219, node269)
  Body_SetPosition(node269, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node269, 200)
  Node_ParseIniFile(node269, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node269)
  Game_LoadProgress_Advance(node0)
  node270 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_2")
  Node_AddSon(node219, node270)
  Body_SetPosition(node270, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node270, 200)
  Node_ParseIniFile(node270, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node270)
  Game_LoadProgress_Advance(node0)
  node271 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_3")
  Node_AddSon(node219, node271)
  Body_SetPosition(node271, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node271, 200)
  Node_ParseIniFile(node271, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node271)
  Game_LoadProgress_Advance(node0)
  node272 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_4")
  Node_AddSon(node219, node272)
  Body_SetPosition(node272, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node272, 200)
  Node_ParseIniFile(node272, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node272)
  Game_LoadProgress_Advance(node0)
  node273 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_5")
  Node_AddSon(node219, node273)
  Body_SetPosition(node273, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node273, 200)
  Node_ParseIniFile(node273, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node273)
  Game_LoadProgress_Advance(node0)
  node274 = Node_CreateNode("nod_waypoint", "nav_waypoint_01_1")
  Node_AddSon(node219, node274)
  Body_SetPosition(node274, MAT_Vector3(1119.147977, 1924.060782, 304.352304))
  WayPoint_SetRadius(node274, 125)
  Node_ParseIniFile(node274, "osd/nav/nav_waypoint_01.osd")
  Node_EnterSimulation(node274)
  Game_LoadProgress_Advance(node0)
  node275 = Node_CreateNode("nod_waypoint", "nav_waypoint_follow_1")
  Node_AddSon(node219, node275)
  Body_SetPosition(node275, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node275, 150)
  Node_ParseIniFile(node275, "osd/nav/nav_waypoint_follow.osd")
  Node_EnterSimulation(node275)
  Game_LoadProgress_Advance(node0)
  node276 = Node_CreateNode("nod_waypoint", "nav_waypoint_follow_2")
  Node_AddSon(node219, node276)
  Body_SetPosition(node276, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node276, 390)
  Node_ParseIniFile(node276, "osd/nav/nav_waypoint_follow.osd")
  Node_EnterSimulation(node276)
  Game_LoadProgress_Advance(node0)
  node277 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node219, node277)
  Node_ParseIniFile(node277, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node277, "map/4H1/terrain/coral01.tga")
  Node_EnterSimulation(node277)
  Game_LoadProgress_Advance(node0)
  node278 = Node_CreateNode("nod_fx_plant", "coral_03_1")
  Node_AddSon(node219, node278)
  Node_ParseIniFile(node278, "osd/fx_plant/coral_03.osd")
  FX_Plant_SetMap(node278, "map/4H1/terrain/coral03.tga")
  Node_EnterSimulation(node278)
  Game_LoadProgress_Advance(node0)
  node279 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node219, node279)
  Node_ParseIniFile(node279, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node279, "map/4H1/terrain/grass01.tga")
  Node_EnterSimulation(node279)
  Game_LoadProgress_Advance(node0)
  node280 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node219, node280)
  Node_ParseIniFile(node280, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node280, "map/4H1/terrain/stone01.tga")
  Node_EnterSimulation(node280)
  Game_LoadProgress_Advance(node0)
  node281 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node281)
  Camera_SetBackPlane(node281, 512)
  Node_EnterSimulation(node281)
  Game_LoadProgress_Advance(node0)
  node282 = Node_CreateNode("NOD_Scenario", "IngameSequences")
  Node_AddSon(node0, node282)
  Node_EnterSimulation(node282)
  Game_LoadProgress_Advance(node0)
  node283 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node282, node283)
  Node_EnterSimulation(node283)
  Game_LoadProgress_Advance(node0)
  node284 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node282, node284)
  Node_EnterSimulation(node284)
  Game_LoadProgress_Advance(node0)
  node285 = Node_CreateNode("NOD_Path", "PlayerPath_1")
  Node_AddSon(node284, node285)
  Game_LoadProgress_Advance(node0)
  node286 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node285, node286)
  Position_SetPosition(node286, MAT_Vector3(1474.849693, 1779.5078, 330))
  Position_SetRadius(node286, 5)
  Game_LoadProgress_Advance(node0)
  node287 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node285, node287)
  Position_SetPosition(node287, MAT_Vector3(1474.50213, 1613.398228, 330))
  Position_SetRadius(node287, 5)
  Game_LoadProgress_Advance(node0)
  node288 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node285, node288)
  Position_SetPosition(node288, MAT_Vector3(1474.006528, 1403.94048, 330))
  Position_SetRadius(node288, 5)
  Game_LoadProgress_Advance(node0)
  node289 = Node_CreateNode("NOD_Path", "PlayerPath_2")
  Node_AddSon(node284, node289)
  Game_LoadProgress_Advance(node0)
  node290 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node289, node290)
  Position_SetPosition(node290, MAT_Vector3(1080.404906, 2039.260858, 302.986098))
  Position_SetRadius(node290, 5)
  Game_LoadProgress_Advance(node0)
  node291 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node289, node291)
  Position_SetPosition(node291, MAT_Vector3(966.20737, 2110.806977, 295.100832))
  Position_SetRadius(node291, 5)
  Game_LoadProgress_Advance(node0)
  node292 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node284, node292)
  Position_SetPosition(node292, MAT_Vector3(1477.738346, 1895.819445, 350))
  Position_SetRadius(node292, 5)
  Game_LoadProgress_Advance(node0)
  node293 = Node_CreateNode("NOD_Position", "LookFrom_2")
  Node_AddSon(node284, node293)
  Position_SetPosition(node293, MAT_Vector3(1457.419111, 1498.498638, 350))
  Position_SetRadius(node293, 5)
  Game_LoadProgress_Advance(node0)
  node294 = Node_CreateNode("NOD_Position", "LookFrom_3")
  Node_AddSon(node284, node294)
  Position_SetPosition(node294, MAT_Vector3(1429.533607, 1682.606494, 415))
  Position_SetRadius(node294, 5)
  Game_LoadProgress_Advance(node0)
  node295 = Node_CreateNode("NOD_Position", "LookFrom_4")
  Node_AddSon(node284, node295)
  Position_SetPosition(node295, MAT_Vector3(1919.534144, 623.889205, 258.492034))
  Position_SetRadius(node295, 5)
  Game_LoadProgress_Advance(node0)
  node296 = Node_CreateNode("NOD_Path", "GhostPath_1")
  Node_AddSon(node284, node296)
  Game_LoadProgress_Advance(node0)
  node297 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node296, node297)
  Position_SetPosition(node297, MAT_Vector3(933.704919, 2237.974441, 300.033811))
  Position_SetRadius(node297, 5)
  Game_LoadProgress_Advance(node0)
  node298 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node296, node298)
  Position_SetPosition(node298, MAT_Vector3(766.012967, 2294.659045, 306.107124))
  Position_SetRadius(node298, 5)
  Game_LoadProgress_Advance(node0)
  node299 = Node_CreateNode("NOD_Path", "GhostPath_2")
  Node_AddSon(node284, node299)
  Game_LoadProgress_Advance(node0)
  node300 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node299, node300)
  Position_SetPosition(node300, MAT_Vector3(824.489099, 2730.822003, 310.077976))
  Position_SetRadius(node300, 5)
  Game_LoadProgress_Advance(node0)
  node301 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node299, node301)
  Position_SetPosition(node301, MAT_Vector3(859.521523, 2799.925787, 295.998321))
  Position_SetRadius(node301, 5)
  Game_LoadProgress_Advance(node0)
  node302 = Node_CreateNode("NOD_Path", "GhostPath_3")
  Node_AddSon(node284, node302)
  Game_LoadProgress_Advance(node0)
  node303 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node302, node303)
  Position_SetPosition(node303, MAT_Vector3(902.664625, 2893.496071, 324.803124))
  Position_SetRadius(node303, 5)
  Game_LoadProgress_Advance(node0)
  node304 = Node_CreateNode("NOD_Path", "TriOpsPath_1")
  Node_AddSon(node284, node304)
  Game_LoadProgress_Advance(node0)
  node305 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node304, node305)
  Position_SetPosition(node305, MAT_Vector3(892.892681, 2873.725002, 300.0338))
  Position_SetRadius(node305, 5)
  Game_LoadProgress_Advance(node0)
  node306 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node304, node306)
  Position_SetPosition(node306, MAT_Vector3(951.533082, 2799.698743, 290))
  Position_SetRadius(node306, 5)
  Game_LoadProgress_Advance(node0)
  node307 = Node_CreateNode("NOD_Position", "LookFrom_5")
  Node_AddSon(node284, node307)
  Position_SetPosition(node307, MAT_Vector3(911.578943, 1964.729249, 254.935875))
  Position_SetRadius(node307, 5)
  Game_LoadProgress_Advance(node0)
  node308 = Node_CreateNode("NOD_Position", "LookFrom_6")
  Node_AddSon(node284, node308)
  Position_SetPosition(node308, MAT_Vector3(1035.528056, 2108.823392, 240.740168))
  Position_SetRadius(node308, 5)
  Game_LoadProgress_Advance(node0)
  node309 = Node_CreateNode("NOD_Position", "LookFrom_7")
  Node_AddSon(node284, node309)
  Position_SetPosition(node309, MAT_Vector3(701.055072, 2216.442981, 299.163867))
  Position_SetRadius(node309, 5)
  Game_LoadProgress_Advance(node0)
  node310 = Node_CreateNode("NOD_Position", "LookFrom_8")
  Node_AddSon(node284, node310)
  Position_SetPosition(node310, MAT_Vector3(752.541488, 2719.590369, 318.176473))
  Position_SetRadius(node310, 5)
  Game_LoadProgress_Advance(node0)
  node311 = Node_CreateNode("NOD_Position", "LookFrom_9")
  Node_AddSon(node284, node311)
  Position_SetPosition(node311, MAT_Vector3(866.319109, 2674.272899, 304.855295))
  Position_SetRadius(node311, 5)
  Game_LoadProgress_Advance(node0)
  node312 = Node_CreateNode("NOD_Position", "LookFrom_10")
  Node_AddSon(node284, node312)
  Position_SetPosition(node312, MAT_Vector3(944.47511, 2782.284935, 330.645676))
  Position_SetRadius(node312, 5)
  Game_LoadProgress_Advance(node0)
  node313 = Node_CreateNode("NOD_Position", "LookFrom_11")
  Node_AddSon(node284, node313)
  Position_SetPosition(node313, MAT_Vector3(975.885682, 2911.742713, 303.965611))
  Position_SetRadius(node313, 5)
  Game_LoadProgress_Advance(node0)
  node314 = Node_CreateNode("NOD_Position", "LookFrom_12")
  Node_AddSon(node284, node314)
  Position_SetPosition(node314, MAT_Vector3(1050.99675, 1896.4612, 293.634822))
  Position_SetRadius(node314, 5)
  Game_LoadProgress_Advance(node0)
  node315 = Node_CreateNode("NOD_Position", "LookFrom_13")
  Node_AddSon(node284, node315)
  Position_SetPosition(node315, MAT_Vector3(1167.861351, 2086.230237, 293.6348))
  Position_SetRadius(node315, 5)
  Game_LoadProgress_Advance(node0)
  node316 = Node_CreateNode("NOD_Position", "LookFrom_14")
  Node_AddSon(node284, node316)
  Position_SetPosition(node316, MAT_Vector3(745.38283, 2674.91628, 293.6348))
  Position_SetRadius(node316, 5)
  Game_LoadProgress_Advance(node0)
  node317 = Node_CreateNode("NOD_Position", "LookFrom_15")
  Node_AddSon(node284, node317)
  Position_SetPosition(node317, MAT_Vector3(832.755446, 2822.06993, 293.6348))
  Position_SetRadius(node317, 5)
  Game_LoadProgress_Advance(node0)
  node318 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node282, node318)
  Node_EnterSimulation(node318)
  Game_LoadProgress_Advance(node0)
  node319 = Node_CreateNode("NOD_Director", "Chapter1_Intro_V")
  Node_AddSon(node318, node319)
  Node_EnterSimulation(node319)
  Game_LoadProgress_Advance(node0)
  node320 = Node_CreateNode("NOD_Director", "Chapter1_Intro_A")
  Node_AddSon(node318, node320)
  Node_EnterSimulation(node320)
  Game_LoadProgress_Advance(node0)
  node321 = Node_CreateNode("NOD_Director", "Chapter2_Intro_V")
  Node_AddSon(node318, node321)
  Node_EnterSimulation(node321)
  Game_LoadProgress_Advance(node0)
  node322 = Node_CreateNode("NOD_Director", "Chapter2_Intro_A_a")
  Node_AddSon(node318, node322)
  Node_EnterSimulation(node322)
  Game_LoadProgress_Advance(node0)
  node323 = Node_CreateNode("NOD_Director", "Chapter2_Intro_A_b")
  Node_AddSon(node318, node323)
  Node_EnterSimulation(node323)
  Game_LoadProgress_Advance(node0)
  node324 = Node_CreateNode("NOD_Director", "Chapter3_Intro_V")
  Node_AddSon(node318, node324)
  Node_EnterSimulation(node324)
  Game_LoadProgress_Advance(node0)
  node325 = Node_CreateNode("NOD_Director", "Chapter3_Extro_V")
  Node_AddSon(node318, node325)
  Node_EnterSimulation(node325)
  Game_LoadProgress_Advance(node0)
  node326 = Node_CreateNode("NOD_Director", "Chapter3_Extro_V2")
  Node_AddSon(node318, node326)
  Node_EnterSimulation(node326)
  Game_LoadProgress_Advance(node0)
  node327 = Node_CreateNode("NOD_Director", "Chapter3_Extro_A1")
  Node_AddSon(node318, node327)
  Node_EnterSimulation(node327)
  Game_LoadProgress_Advance(node0)
  node328 = Node_CreateNode("NOD_Director", "Chapter3_Extro_A2")
  Node_AddSon(node318, node328)
  Node_EnterSimulation(node328)
  Game_LoadProgress_Advance(node0)
  node329 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node282, node329)
  Node_EnterSimulation(node329)
  Game_LoadProgress_Advance(node0)
  node330 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node282, node330)
  Node_EnterSimulation(node330)
end
SetEnemyMatrixElement(0, 0, N)
SetEnemyMatrixElement(1, 0, E)
SetEnemyMatrixElement(2, 0, N)
SetEnemyMatrixElement(3, 0, N)
SetEnemyMatrixElement(4, 0, N)
SetEnemyMatrixElement(5, 0, N)
SetEnemyMatrixElement(6, 0, E)
SetEnemyMatrixElement(7, 0, N)
SetEnemyMatrixElement(8, 0, N)
SetEnemyMatrixElement(9, 0, N)
SetEnemyMatrixElement(10, 0, N)
SetEnemyMatrixElement(11, 0, N)
SetEnemyMatrixElement(12, 0, N)
SetEnemyMatrixElement(13, 0, N)
SetEnemyMatrixElement(14, 0, N)
SetEnemyMatrixElement(15, 0, N)
SetEnemyMatrixElement(0, 1, E)
SetEnemyMatrixElement(1, 1, F)
SetEnemyMatrixElement(2, 1, E)
SetEnemyMatrixElement(3, 1, E)
SetEnemyMatrixElement(4, 1, E)
SetEnemyMatrixElement(5, 1, N)
SetEnemyMatrixElement(6, 1, F)
SetEnemyMatrixElement(7, 1, N)
SetEnemyMatrixElement(8, 1, E)
SetEnemyMatrixElement(9, 1, N)
SetEnemyMatrixElement(10, 1, N)
SetEnemyMatrixElement(11, 1, N)
SetEnemyMatrixElement(12, 1, N)
SetEnemyMatrixElement(13, 1, N)
SetEnemyMatrixElement(14, 1, N)
SetEnemyMatrixElement(15, 1, N)
SetEnemyMatrixElement(0, 2, N)
SetEnemyMatrixElement(1, 2, E)
SetEnemyMatrixElement(2, 2, F)
SetEnemyMatrixElement(3, 2, N)
SetEnemyMatrixElement(4, 2, N)
SetEnemyMatrixElement(5, 2, N)
SetEnemyMatrixElement(6, 2, E)
SetEnemyMatrixElement(7, 2, N)
SetEnemyMatrixElement(8, 2, F)
SetEnemyMatrixElement(9, 2, N)
SetEnemyMatrixElement(10, 2, N)
SetEnemyMatrixElement(11, 2, N)
SetEnemyMatrixElement(12, 2, N)
SetEnemyMatrixElement(13, 2, N)
SetEnemyMatrixElement(14, 2, N)
SetEnemyMatrixElement(15, 2, N)
SetEnemyMatrixElement(0, 3, N)
SetEnemyMatrixElement(1, 3, E)
SetEnemyMatrixElement(2, 3, F)
SetEnemyMatrixElement(3, 3, F)
SetEnemyMatrixElement(4, 3, F)
SetEnemyMatrixElement(5, 3, N)
SetEnemyMatrixElement(6, 3, E)
SetEnemyMatrixElement(7, 3, E)
SetEnemyMatrixElement(8, 3, F)
SetEnemyMatrixElement(9, 3, N)
SetEnemyMatrixElement(10, 3, N)
SetEnemyMatrixElement(11, 3, N)
SetEnemyMatrixElement(12, 3, N)
SetEnemyMatrixElement(13, 3, N)
SetEnemyMatrixElement(14, 3, N)
SetEnemyMatrixElement(15, 3, N)
SetEnemyMatrixElement(0, 4, N)
SetEnemyMatrixElement(1, 4, E)
SetEnemyMatrixElement(2, 4, F)
SetEnemyMatrixElement(3, 4, F)
SetEnemyMatrixElement(4, 4, F)
SetEnemyMatrixElement(5, 4, N)
SetEnemyMatrixElement(6, 4, E)
SetEnemyMatrixElement(7, 4, N)
SetEnemyMatrixElement(8, 4, F)
SetEnemyMatrixElement(9, 4, N)
SetEnemyMatrixElement(10, 4, N)
SetEnemyMatrixElement(11, 4, N)
SetEnemyMatrixElement(12, 4, N)
SetEnemyMatrixElement(13, 4, N)
SetEnemyMatrixElement(14, 4, N)
SetEnemyMatrixElement(15, 4, N)
SetEnemyMatrixElement(0, 5, N)
SetEnemyMatrixElement(1, 5, N)
SetEnemyMatrixElement(2, 5, N)
SetEnemyMatrixElement(3, 5, N)
SetEnemyMatrixElement(4, 5, N)
SetEnemyMatrixElement(5, 5, N)
SetEnemyMatrixElement(6, 5, N)
SetEnemyMatrixElement(7, 5, N)
SetEnemyMatrixElement(8, 5, N)
SetEnemyMatrixElement(9, 5, N)
SetEnemyMatrixElement(10, 5, N)
SetEnemyMatrixElement(11, 5, N)
SetEnemyMatrixElement(12, 5, N)
SetEnemyMatrixElement(13, 5, N)
SetEnemyMatrixElement(14, 5, N)
SetEnemyMatrixElement(15, 5, N)
SetEnemyMatrixElement(0, 6, E)
SetEnemyMatrixElement(1, 6, F)
SetEnemyMatrixElement(2, 6, E)
SetEnemyMatrixElement(3, 6, E)
SetEnemyMatrixElement(4, 6, E)
SetEnemyMatrixElement(5, 6, N)
SetEnemyMatrixElement(6, 6, F)
SetEnemyMatrixElement(7, 6, N)
SetEnemyMatrixElement(8, 6, E)
SetEnemyMatrixElement(9, 6, N)
SetEnemyMatrixElement(10, 6, N)
SetEnemyMatrixElement(11, 6, N)
SetEnemyMatrixElement(12, 6, N)
SetEnemyMatrixElement(13, 6, N)
SetEnemyMatrixElement(14, 6, N)
SetEnemyMatrixElement(15, 6, N)
SetEnemyMatrixElement(0, 7, N)
SetEnemyMatrixElement(1, 7, N)
SetEnemyMatrixElement(2, 7, N)
SetEnemyMatrixElement(3, 7, E)
SetEnemyMatrixElement(4, 7, N)
SetEnemyMatrixElement(5, 7, N)
SetEnemyMatrixElement(6, 7, N)
SetEnemyMatrixElement(7, 7, N)
SetEnemyMatrixElement(8, 7, N)
SetEnemyMatrixElement(9, 7, N)
SetEnemyMatrixElement(10, 7, N)
SetEnemyMatrixElement(11, 7, N)
SetEnemyMatrixElement(12, 7, N)
SetEnemyMatrixElement(13, 7, N)
SetEnemyMatrixElement(14, 7, N)
SetEnemyMatrixElement(15, 7, N)
SetEnemyMatrixElement(0, 8, N)
SetEnemyMatrixElement(1, 8, E)
SetEnemyMatrixElement(2, 8, F)
SetEnemyMatrixElement(3, 8, F)
SetEnemyMatrixElement(4, 8, F)
SetEnemyMatrixElement(5, 8, N)
SetEnemyMatrixElement(6, 8, N)
SetEnemyMatrixElement(7, 8, N)
SetEnemyMatrixElement(8, 8, F)
SetEnemyMatrixElement(9, 8, N)
SetEnemyMatrixElement(10, 8, N)
SetEnemyMatrixElement(11, 8, N)
SetEnemyMatrixElement(12, 8, N)
SetEnemyMatrixElement(13, 8, N)
SetEnemyMatrixElement(14, 8, N)
SetEnemyMatrixElement(15, 8, N)
SetEnemyMatrixElement(0, 9, N)
SetEnemyMatrixElement(1, 9, N)
SetEnemyMatrixElement(2, 9, N)
SetEnemyMatrixElement(3, 9, N)
SetEnemyMatrixElement(4, 9, N)
SetEnemyMatrixElement(5, 9, N)
SetEnemyMatrixElement(6, 9, N)
SetEnemyMatrixElement(7, 9, N)
SetEnemyMatrixElement(8, 9, N)
SetEnemyMatrixElement(9, 9, N)
SetEnemyMatrixElement(10, 9, N)
SetEnemyMatrixElement(11, 9, N)
SetEnemyMatrixElement(12, 9, N)
SetEnemyMatrixElement(13, 9, N)
SetEnemyMatrixElement(14, 9, N)
SetEnemyMatrixElement(15, 9, N)
SetEnemyMatrixElement(0, 10, N)
SetEnemyMatrixElement(1, 10, N)
SetEnemyMatrixElement(2, 10, N)
SetEnemyMatrixElement(3, 10, N)
SetEnemyMatrixElement(4, 10, N)
SetEnemyMatrixElement(5, 10, N)
SetEnemyMatrixElement(6, 10, N)
SetEnemyMatrixElement(7, 10, N)
SetEnemyMatrixElement(8, 10, N)
SetEnemyMatrixElement(9, 10, N)
SetEnemyMatrixElement(10, 10, N)
SetEnemyMatrixElement(11, 10, N)
SetEnemyMatrixElement(12, 10, N)
SetEnemyMatrixElement(13, 10, N)
SetEnemyMatrixElement(14, 10, N)
SetEnemyMatrixElement(15, 10, N)
SetEnemyMatrixElement(0, 11, N)
SetEnemyMatrixElement(1, 11, N)
SetEnemyMatrixElement(2, 11, N)
SetEnemyMatrixElement(3, 11, N)
SetEnemyMatrixElement(4, 11, N)
SetEnemyMatrixElement(5, 11, N)
SetEnemyMatrixElement(6, 11, N)
SetEnemyMatrixElement(7, 11, N)
SetEnemyMatrixElement(8, 11, N)
SetEnemyMatrixElement(9, 11, N)
SetEnemyMatrixElement(10, 11, N)
SetEnemyMatrixElement(11, 11, N)
SetEnemyMatrixElement(12, 11, N)
SetEnemyMatrixElement(13, 11, N)
SetEnemyMatrixElement(14, 11, N)
SetEnemyMatrixElement(15, 11, N)
SetEnemyMatrixElement(0, 12, N)
SetEnemyMatrixElement(1, 12, N)
SetEnemyMatrixElement(2, 12, N)
SetEnemyMatrixElement(3, 12, N)
SetEnemyMatrixElement(4, 12, N)
SetEnemyMatrixElement(5, 12, N)
SetEnemyMatrixElement(6, 12, N)
SetEnemyMatrixElement(7, 12, N)
SetEnemyMatrixElement(8, 12, N)
SetEnemyMatrixElement(9, 12, N)
SetEnemyMatrixElement(10, 12, N)
SetEnemyMatrixElement(11, 12, N)
SetEnemyMatrixElement(12, 12, N)
SetEnemyMatrixElement(13, 12, N)
SetEnemyMatrixElement(14, 12, N)
SetEnemyMatrixElement(15, 12, N)
SetEnemyMatrixElement(0, 13, N)
SetEnemyMatrixElement(1, 13, N)
SetEnemyMatrixElement(2, 13, N)
SetEnemyMatrixElement(3, 13, N)
SetEnemyMatrixElement(4, 13, N)
SetEnemyMatrixElement(5, 13, N)
SetEnemyMatrixElement(6, 13, N)
SetEnemyMatrixElement(7, 13, N)
SetEnemyMatrixElement(8, 13, N)
SetEnemyMatrixElement(9, 13, N)
SetEnemyMatrixElement(10, 13, N)
SetEnemyMatrixElement(11, 13, N)
SetEnemyMatrixElement(12, 13, N)
SetEnemyMatrixElement(13, 13, N)
SetEnemyMatrixElement(14, 13, N)
SetEnemyMatrixElement(15, 13, N)
SetEnemyMatrixElement(0, 14, N)
SetEnemyMatrixElement(1, 14, N)
SetEnemyMatrixElement(2, 14, N)
SetEnemyMatrixElement(3, 14, N)
SetEnemyMatrixElement(4, 14, N)
SetEnemyMatrixElement(5, 14, N)
SetEnemyMatrixElement(6, 14, N)
SetEnemyMatrixElement(7, 14, N)
SetEnemyMatrixElement(8, 14, N)
SetEnemyMatrixElement(9, 14, N)
SetEnemyMatrixElement(10, 14, N)
SetEnemyMatrixElement(11, 14, N)
SetEnemyMatrixElement(12, 14, N)
SetEnemyMatrixElement(13, 14, N)
SetEnemyMatrixElement(14, 14, N)
SetEnemyMatrixElement(15, 14, N)
SetEnemyMatrixElement(0, 15, N)
SetEnemyMatrixElement(1, 15, N)
SetEnemyMatrixElement(2, 15, N)
SetEnemyMatrixElement(3, 15, N)
SetEnemyMatrixElement(4, 15, N)
SetEnemyMatrixElement(5, 15, N)
SetEnemyMatrixElement(6, 15, N)
SetEnemyMatrixElement(7, 15, N)
SetEnemyMatrixElement(8, 15, N)
SetEnemyMatrixElement(9, 15, N)
SetEnemyMatrixElement(10, 15, N)
SetEnemyMatrixElement(11, 15, N)
SetEnemyMatrixElement(12, 15, N)
SetEnemyMatrixElement(13, 15, N)
SetEnemyMatrixElement(14, 15, N)
SetEnemyMatrixElement(15, 15, N)
o2 = { [nil] = {}, GetCalculated = function()
  if not (True ~= True) then
    if not (True ~= True) then
      if not (True ~= True) then
        if not (True ~= True) then
          if not (True ~= True) then
            if not (True ~= True) then
              if not (True ~= True) then
                if not (True ~= True) then
                  if not (True ~= True) then
                    if not (True ~= True) then
                      if not (True ~= True) then
                        if not (True ~= True) then
                          if not (True ~= True) then
                            if not (True ~= True) then
                              if not (True ~= True) then
                                if not (True ~= True) then
                                  if not (True ~= True) then
                                    if not (True ~= True) then
                                      if not (True ~= True) then
                                        if not (True ~= True) then
                                          if not (True ~= True) then
                                            if not (True ~= True) then
                                              if not (True ~= True) then
                                                if not (True ~= True) then
                                                  if not (True ~= True) then
                                                    if not (True ~= True) then
                                                      if not (True ~= True) then
                                                        if not (True ~= True) then
                                                          if not (True ~= True) then
                                                            if not (True ~= True) then
                                                              if not (True ~= True) then
                                                                if not (True ~= True) then
                                                                  if not (True ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
                                                                        if not (True ~= True) then
                                                                          if not (True ~= True) then
                                                                            if not (True ~= True) then
                                                                              if not (True ~= True) then
                                                                                if not (True ~= True) then
                                                                                  if not (True ~= True) then
                                                                                    if not (True ~= True) then
                                                                                      if not (True ~= True) then
                                                                                        if not (True ~= True) then
                                                                                          if not (True ~= True) then
                                                                                            if not (True ~= True) then
                                                                                              if not (True ~= True) then
                                                                                                if not (True ~= True) then
                                                                                                  if not (True ~= True) then
                                                                                                    if not (True ~= True) then
                                                                                                      if not (True ~= True) then
                                                                                                        if not (True ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
                                                                                                                                                if not (True ~= True) then
                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                        if not (o4763.Value ~= True) then
                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                  return 1
                                                                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                                                                  return 0
                                                                                                                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                end
                                                                                                                                                                                                                              end
                                                                                                                                                                                                                            end
                                                                                                                                                                                                                          end
                                                                                                                                                                                                                        end
                                                                                                                                                                                                                      end
                                                                                                                                                                                                                    end
                                                                                                                                                                                                                  end
                                                                                                                                                                                                                end
                                                                                                                                                                                                              end
                                                                                                                                                                                                            end
                                                                                                                                                                                                          end
                                                                                                                                                                                                        end
                                                                                                                                                                                                      end
                                                                                                                                                                                                    end
                                                                                                                                                                                                  end
                                                                                                                                                                                                end
                                                                                                                                                                                              end
                                                                                                                                                                                            end
                                                                                                                                                                                          end
                                                                                                                                                                                        end
                                                                                                                                                                                      end
                                                                                                                                                                                    end
                                                                                                                                                                                  end
                                                                                                                                                                                end
                                                                                                                                                                              end
                                                                                                                                                                            end
                                                                                                                                                                          end
                                                                                                                                                                        end
                                                                                                                                                                      end
                                                                                                                                                                    end
                                                                                                                                                                  end
                                                                                                                                                                end
                                                                                                                                                              end
                                                                                                                                                            end
                                                                                                                                                          end
                                                                                                                                                        end
                                                                                                                                                      end
                                                                                                                                                    end
                                                                                                                                                  end
                                                                                                                                                end
                                                                                                                                              end
                                                                                                                                            end
                                                                                                                                          end
                                                                                                                                        end
                                                                                                                                      end
                                                                                                                                    end
                                                                                                                                  end
                                                                                                                                end
                                                                                                                              end
                                                                                                                            end
                                                                                                                          end
                                                                                                                        end
                                                                                                                      end
                                                                                                                    end
                                                                                                                  end
                                                                                                                end
                                                                                                              end
                                                                                                            end
                                                                                                          end
                                                                                                        end
                                                                                                      end
                                                                                                    end
                                                                                                  end
                                                                                                end
                                                                                              end
                                                                                            end
                                                                                          end
                                                                                        end
                                                                                      end
                                                                                    end
                                                                                  end
                                                                                end
                                                                              end
                                                                            end
                                                                          end
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("RC1OK_092601_0112")
end, SetStateValue = function(L0)
  if not (o2.Value == L0) then
    o2["Value"] = L0
    if not (L0 ~= 1) then
      o2.ChangeTo1()
    end
  end
end }
o9 = { [nil] = {}, GetCalculated = function()
  if not (True ~= True) then
    if not (True ~= True) then
      if not (True ~= True) then
        if not (True ~= True) then
          if not (True ~= True) then
            if not (True ~= True) then
              if not (True ~= True) then
                if not (True ~= True) then
                  if not (True ~= True) then
                    if not (True ~= True) then
                      if not (True ~= True) then
                        if not (True ~= True) then
                          if not (True ~= True) then
                            if not (True ~= True) then
                              if not (True ~= True) then
                                if not (True ~= True) then
                                  if not (True ~= True) then
                                    if not (True ~= True) then
                                      if not (True ~= True) then
                                        if not (True ~= True) then
                                          if not (True ~= True) then
                                            if not (True ~= True) then
                                              if not (True ~= True) then
                                                if not (True ~= True) then
                                                  if not (True ~= True) then
                                                    if not (True ~= True) then
                                                      if not (True ~= True) then
                                                        if not (True ~= True) then
                                                          if not (True ~= True) then
                                                            if not (True ~= True) then
                                                              if not (True ~= True) then
                                                                if not (True ~= True) then
                                                                  if not (True ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
                                                                        if not (True ~= True) then
                                                                          if not (True ~= True) then
                                                                            if not (True ~= True) then
                                                                              if not (True ~= True) then
                                                                                if not (True ~= True) then
                                                                                  if not (True ~= True) then
                                                                                    if not (True ~= True) then
                                                                                      if not (True ~= True) then
                                                                                        if not (True ~= True) then
                                                                                          if not (True ~= True) then
                                                                                            if not (True ~= True) then
                                                                                              if not (True ~= True) then
                                                                                                if not (True ~= True) then
                                                                                                  if not (True ~= True) then
                                                                                                    if not (True ~= True) then
                                                                                                      if not (True ~= True) then
                                                                                                        if not (True ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
                                                                                                                                                if not (True ~= True) then
                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                    if not (o5885.Value ~= True) then
                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                  return 1
                                                                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                                                                  return 0
                                                                                                                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                end
                                                                                                                                                                                                                              end
                                                                                                                                                                                                                            end
                                                                                                                                                                                                                          end
                                                                                                                                                                                                                        end
                                                                                                                                                                                                                      end
                                                                                                                                                                                                                    end
                                                                                                                                                                                                                  end
                                                                                                                                                                                                                end
                                                                                                                                                                                                              end
                                                                                                                                                                                                            end
                                                                                                                                                                                                          end
                                                                                                                                                                                                        end
                                                                                                                                                                                                      end
                                                                                                                                                                                                    end
                                                                                                                                                                                                  end
                                                                                                                                                                                                end
                                                                                                                                                                                              end
                                                                                                                                                                                            end
                                                                                                                                                                                          end
                                                                                                                                                                                        end
                                                                                                                                                                                      end
                                                                                                                                                                                    end
                                                                                                                                                                                  end
                                                                                                                                                                                end
                                                                                                                                                                              end
                                                                                                                                                                            end
                                                                                                                                                                          end
                                                                                                                                                                        end
                                                                                                                                                                      end
                                                                                                                                                                    end
                                                                                                                                                                  end
                                                                                                                                                                end
                                                                                                                                                              end
                                                                                                                                                            end
                                                                                                                                                          end
                                                                                                                                                        end
                                                                                                                                                      end
                                                                                                                                                    end
                                                                                                                                                  end
                                                                                                                                                end
                                                                                                                                              end
                                                                                                                                            end
                                                                                                                                          end
                                                                                                                                        end
                                                                                                                                      end
                                                                                                                                    end
                                                                                                                                  end
                                                                                                                                end
                                                                                                                              end
                                                                                                                            end
                                                                                                                          end
                                                                                                                        end
                                                                                                                      end
                                                                                                                    end
                                                                                                                  end
                                                                                                                end
                                                                                                              end
                                                                                                            end
                                                                                                          end
                                                                                                        end
                                                                                                      end
                                                                                                    end
                                                                                                  end
                                                                                                end
                                                                                              end
                                                                                            end
                                                                                          end
                                                                                        end
                                                                                      end
                                                                                    end
                                                                                  end
                                                                                end
                                                                              end
                                                                            end
                                                                          end
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o9.SetStateValue(o9.GetCalculated())
end, StartCalculate = function()
  o9["Value"] = o9.GetCalculated()
end, ChangeTo1 = function()
  Game_MissionEnd(GetGameNode(), 1)
end, SetStateValue = function(L0)
  if not (o9.Value == L0) then
    o9["Value"] = L0
    if not (L0 ~= 1) then
      o9.ChangeTo1()
    end
  end
end }
o26 = { [nil] = {}, GetCalculated = function()
  if not (False == True) then
    if not (False == True) then
      if not (False == True) then
        if not (False == True) then
          if not (False == True) then
            if not (False == True) then
              if not (False == True) then
                if not (False == True) then
                  if not (False == True) then
                    if not (False == True) then
                      if not (False == True) then
                        if not (False == True) then
                          if not (False == True) then
                            if not (False == True) then
                              if not (False == True) then
                                if not (False == True) then
                                  if not (False == True) then
                                    if not (False == True) then
                                      if not (False == True) then
                                        if not (False == True) then
                                          if not (False == True) then
                                            if not (False == True) then
                                              if not (False == True) then
                                                if not (False == True) then
                                                  if not (False == True) then
                                                    if not (False == True) then
                                                      if not (False == True) then
                                                        if not (False == True) then
                                                          if not (False == True) then
                                                            if not (False == True) then
                                                              if not (False == True) then
                                                                if not (False == True) then
                                                                  if not (False == True) then
                                                                    if not (False == True) then
                                                                      if not (False == True) then
                                                                        if not (False == True) then
                                                                          if not (False == True) then
                                                                            if not (False == True) then
                                                                              if not (False == True) then
                                                                                if not (False == True) then
                                                                                  if not (False == True) then
                                                                                    if not (False == True) then
                                                                                      if not (False == True) then
                                                                                        if not (False == True) then
                                                                                          if not (False == True) then
                                                                                            if not (False == True) then
                                                                                              if not (False == True) then
                                                                                                if not (False == True) then
                                                                                                  if not (False == True) then
                                                                                                    if not (False == True) then
                                                                                                      if not (False == True) then
                                                                                                        if not (False == True) then
                                                                                                          if not (False == True) then
                                                                                                            if not (False == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
                                                                                                                      if not (False == True) then
                                                                                                                        if not (False == True) then
                                                                                                                          if not (False == True) then
                                                                                                                            if not (False == True) then
                                                                                                                              if not (False == True) then
                                                                                                                                if not (False == True) then
                                                                                                                                  if not (False == True) then
                                                                                                                                    if not (False == True) then
                                                                                                                                      if not (False == True) then
                                                                                                                                        if not (False == True) then
                                                                                                                                          if not (False == True) then
                                                                                                                                            if not (False == True) then
                                                                                                                                              if not (False == True) then
                                                                                                                                                if not (False == True) then
                                                                                                                                                  if not (False == True) then
                                                                                                                                                    if not (False == True) then
                                                                                                                                                      if not (False == True) then
                                                                                                                                                        if not (False == True) then
                                                                                                                                                          if not (False == True) then
                                                                                                                                                            if not (False == True) then
                                                                                                                                                              if not (False == True) then
                                                                                                                                                                if not (False == True) then
                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                          if not (o4822.Value == True) then
                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                              if not (o4891.Value == True) then
                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                  return 1
                                                                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                                                                  return 0
                                                                                                                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                end
                                                                                                                                                                                                                              end
                                                                                                                                                                                                                            end
                                                                                                                                                                                                                          end
                                                                                                                                                                                                                        end
                                                                                                                                                                                                                      end
                                                                                                                                                                                                                    end
                                                                                                                                                                                                                  end
                                                                                                                                                                                                                end
                                                                                                                                                                                                              end
                                                                                                                                                                                                            end
                                                                                                                                                                                                          end
                                                                                                                                                                                                        end
                                                                                                                                                                                                      end
                                                                                                                                                                                                    end
                                                                                                                                                                                                  end
                                                                                                                                                                                                end
                                                                                                                                                                                              end
                                                                                                                                                                                            end
                                                                                                                                                                                          end
                                                                                                                                                                                        end
                                                                                                                                                                                      end
                                                                                                                                                                                    end
                                                                                                                                                                                  end
                                                                                                                                                                                end
                                                                                                                                                                              end
                                                                                                                                                                            end
                                                                                                                                                                          end
                                                                                                                                                                        end
                                                                                                                                                                      end
                                                                                                                                                                    end
                                                                                                                                                                  end
                                                                                                                                                                end
                                                                                                                                                              end
                                                                                                                                                            end
                                                                                                                                                          end
                                                                                                                                                        end
                                                                                                                                                      end
                                                                                                                                                    end
                                                                                                                                                  end
                                                                                                                                                end
                                                                                                                                              end
                                                                                                                                            end
                                                                                                                                          end
                                                                                                                                        end
                                                                                                                                      end
                                                                                                                                    end
                                                                                                                                  end
                                                                                                                                end
                                                                                                                              end
                                                                                                                            end
                                                                                                                          end
                                                                                                                        end
                                                                                                                      end
                                                                                                                    end
                                                                                                                  end
                                                                                                                end
                                                                                                              end
                                                                                                            end
                                                                                                          end
                                                                                                        end
                                                                                                      end
                                                                                                    end
                                                                                                  end
                                                                                                end
                                                                                              end
                                                                                            end
                                                                                          end
                                                                                        end
                                                                                      end
                                                                                    end
                                                                                  end
                                                                                end
                                                                              end
                                                                            end
                                                                          end
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o26.SetStateValue(o26.GetCalculated())
end, StartCalculate = function()
  o26["Value"] = o26.GetCalculated()
end, ChangeTo1 = function()
  SED_SetTaskTextKey(9999, -1, -1)
  Game_PlayMusic(GetGameNode(), "track3")
  Game_MissionEnd(GetGameNode(), 0)
end, SetStateValue = function(L0)
  if not (o26.Value == L0) then
    o26["Value"] = L0
    if not (L0 ~= 1) then
      o26.ChangeTo1()
    end
  end
end }
o27 = { [nil] = {}, GetCalculated = function()
  if not (False == True) then
    if not (False == True) then
      if not (False == True) then
        if not (False == True) then
          if not (False == True) then
            if not (False == True) then
              if not (False == True) then
                if not (False == True) then
                  if not (False == True) then
                    if not (False == True) then
                      if not (False == True) then
                        if not (False == True) then
                          if not (False == True) then
                            if not (False == True) then
                              if not (False == True) then
                                if not (False == True) then
                                  if not (False == True) then
                                    if not (False == True) then
                                      if not (False == True) then
                                        if not (False == True) then
                                          if not (False == True) then
                                            if not (False == True) then
                                              if not (False == True) then
                                                if not (False == True) then
                                                  if not (False == True) then
                                                    if not (False == True) then
                                                      if not (False == True) then
                                                        if not (False == True) then
                                                          if not (False == True) then
                                                            if not (False == True) then
                                                              if not (False == True) then
                                                                if not (False == True) then
                                                                  if not (False == True) then
                                                                    if not (False == True) then
                                                                      if not (False == True) then
                                                                        if not (False == True) then
                                                                          if not (False == True) then
                                                                            if not (False == True) then
                                                                              if not (False == True) then
                                                                                if not (False == True) then
                                                                                  if not (False == True) then
                                                                                    if not (False == True) then
                                                                                      if not (False == True) then
                                                                                        if not (False == True) then
                                                                                          if not (False == True) then
                                                                                            if not (False == True) then
                                                                                              if not (False == True) then
                                                                                                if not (False == True) then
                                                                                                  if not (False == True) then
                                                                                                    if not (False == True) then
                                                                                                      if not (False == True) then
                                                                                                        if not (False == True) then
                                                                                                          if not (False == True) then
                                                                                                            if not (False == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
                                                                                                                      if not (False == True) then
                                                                                                                        if not (False == True) then
                                                                                                                          if not (False == True) then
                                                                                                                            if not (False == True) then
                                                                                                                              if not (False == True) then
                                                                                                                                if not (False == True) then
                                                                                                                                  if not (False == True) then
                                                                                                                                    if not (False == True) then
                                                                                                                                      if not (False == True) then
                                                                                                                                        if not (False == True) then
                                                                                                                                          if not (False == True) then
                                                                                                                                            if not (False == True) then
                                                                                                                                              if not (False == True) then
                                                                                                                                                if not (False == True) then
                                                                                                                                                  if not (False == True) then
                                                                                                                                                    if not (False == True) then
                                                                                                                                                      if not (False == True) then
                                                                                                                                                        if not (False == True) then
                                                                                                                                                          if not (False == True) then
                                                                                                                                                            if not (False == True) then
                                                                                                                                                              if not (False == True) then
                                                                                                                                                                if not (False == True) then
                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                        if not (o6399.Value == True) then
                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                  return 1
                                                                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                                                                  return 0
                                                                                                                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                end
                                                                                                                                                                                                                              end
                                                                                                                                                                                                                            end
                                                                                                                                                                                                                          end
                                                                                                                                                                                                                        end
                                                                                                                                                                                                                      end
                                                                                                                                                                                                                    end
                                                                                                                                                                                                                  end
                                                                                                                                                                                                                end
                                                                                                                                                                                                              end
                                                                                                                                                                                                            end
                                                                                                                                                                                                          end
                                                                                                                                                                                                        end
                                                                                                                                                                                                      end
                                                                                                                                                                                                    end
                                                                                                                                                                                                  end
                                                                                                                                                                                                end
                                                                                                                                                                                              end
                                                                                                                                                                                            end
                                                                                                                                                                                          end
                                                                                                                                                                                        end
                                                                                                                                                                                      end
                                                                                                                                                                                    end
                                                                                                                                                                                  end
                                                                                                                                                                                end
                                                                                                                                                                              end
                                                                                                                                                                            end
                                                                                                                                                                          end
                                                                                                                                                                        end
                                                                                                                                                                      end
                                                                                                                                                                    end
                                                                                                                                                                  end
                                                                                                                                                                end
                                                                                                                                                              end
                                                                                                                                                            end
                                                                                                                                                          end
                                                                                                                                                        end
                                                                                                                                                      end
                                                                                                                                                    end
                                                                                                                                                  end
                                                                                                                                                end
                                                                                                                                              end
                                                                                                                                            end
                                                                                                                                          end
                                                                                                                                        end
                                                                                                                                      end
                                                                                                                                    end
                                                                                                                                  end
                                                                                                                                end
                                                                                                                              end
                                                                                                                            end
                                                                                                                          end
                                                                                                                        end
                                                                                                                      end
                                                                                                                    end
                                                                                                                  end
                                                                                                                end
                                                                                                              end
                                                                                                            end
                                                                                                          end
                                                                                                        end
                                                                                                      end
                                                                                                    end
                                                                                                  end
                                                                                                end
                                                                                              end
                                                                                            end
                                                                                          end
                                                                                        end
                                                                                      end
                                                                                    end
                                                                                  end
                                                                                end
                                                                              end
                                                                            end
                                                                          end
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o27.SetStateValue(o27.GetCalculated())
end, StartCalculate = function()
  o27["Value"] = o27.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "track3")
  Game_MissionEnd(GetGameNode(), 0)
end, SetStateValue = function(L0)
  if not (o27.Value == L0) then
    o27["Value"] = L0
    if not (L0 ~= 1) then
      o27.ChangeTo1()
    end
  end
end }
S_o30 = { [nil] = {}, Start = function(L0)

end }
S_o64 = { [nil] = {}, Start = function(L0)

end }
S_o98 = { [nil] = {}, Start = function(L0)

end }
S_o132 = { [nil] = {}, Start = function(L0)

end }
S_o166 = { [nil] = {}, Start = function(L0)

end }
S_o200 = { [nil] = {}, Start = function(L0)

end }
S_o234 = { [nil] = {}, Start = function(L0)

end }
S_o268 = { [nil] = {}, Start = function(L0)

end }
S_o302 = { [nil] = {}, Start = function(L0)

end }
S_o336 = { [nil] = {}, Start = function(L0)

end }
S_o370 = { [nil] = {}, Start = function(L0)

end }
S_o404 = { [nil] = {}, Start = function(L0)

end }
S_o438 = { [nil] = {}, Start = function(L0)

end }
S_o472 = { [nil] = {}, Start = function(L0)

end }
S_o506 = { [nil] = {}, Start = function(L0)

end }
S_o540 = { [nil] = {}, Start = function(L0)

end }
S_o574 = { [nil] = {}, Start = function(L0)

end }
S_o608 = { [nil] = {}, Start = function(L0)

end }
S_o642 = { [nil] = {}, Start = function(L0)

end }
S_o676 = { [nil] = {}, Start = function(L0)

end }
S_o710 = { [nil] = {}, Start = function(L0)

end }
S_o744 = { [nil] = {}, Start = function(L0)

end }
S_o778 = { [nil] = {}, Start = function(L0)

end }
S_o812 = { [nil] = {}, Start = function(L0)

end }
S_o846 = { [nil] = {}, Start = function(L0)

end }
S_o880 = { [nil] = {}, Start = function(L0)

end }
S_o914 = { [nil] = {}, Start = function(L0)

end }
S_o948 = { [nil] = {}, Start = function(L0)

end }
S_o982 = { [nil] = {}, Start = function(L0)

end }
S_o1016 = { [nil] = {}, Start = function(L0)

end }
S_o1050 = { [nil] = {}, Start = function(L0)

end }
S_o1084 = { [nil] = {}, Start = function(L0)

end }
S_o1118 = { [nil] = {}, Start = function(L0)

end }
S_o1152 = { [nil] = {}, Start = function(L0)

end }
S_o1186 = { [nil] = {}, Start = function(L0)

end }
S_o1220 = { [nil] = {}, Start = function(L0)

end }
S_o1254 = { [nil] = {}, Start = function(L0)

end }
S_o1288 = { [nil] = {}, Start = function(L0)

end }
S_o1322 = { [nil] = {}, Start = function(L0)

end }
S_o1356 = { [nil] = {}, Start = function(L0)

end }
S_o1390 = { [nil] = {}, Start = function(L0)

end }
S_o1424 = { [nil] = {}, Start = function(L0)

end }
S_o1458 = { [nil] = {}, Start = function(L0)

end }
S_o1492 = { [nil] = {}, Start = function(L0)

end }
S_o1526 = { [nil] = {}, Start = function(L0)

end }
S_o1560 = { [nil] = {}, Start = function(L0)

end }
S_o1594 = { [nil] = {}, Start = function(L0)

end }
S_o1628 = { [nil] = {}, Start = function(L0)

end }
S_o1662 = { [nil] = {}, Start = function(L0)

end }
S_o1696 = { [nil] = {}, Start = function(L0)

end }
S_o1730 = { [nil] = {}, Start = function(L0)

end }
S_o1764 = { [nil] = {}, Start = function(L0)

end }
S_o1798 = { [nil] = {}, Start = function(L0)

end }
S_o1832 = { [nil] = {}, Start = function(L0)

end }
S_o1866 = { [nil] = {}, Start = function(L0)

end }
S_o1900 = { [nil] = {}, Start = function(L0)

end }
S_o1934 = { [nil] = {}, Start = function(L0)

end }
S_o1968 = { [nil] = {}, Start = function(L0)

end }
S_o2002 = { [nil] = {}, Start = function(L0)

end }
S_o2036 = { [nil] = {}, Start = function(L0)

end }
S_o2070 = { [nil] = {}, Start = function(L0)

end }
S_o2104 = { [nil] = {}, Start = function(L0)

end }
S_o2138 = { [nil] = {}, Start = function(L0)

end }
S_o2172 = { [nil] = {}, Start = function(L0)

end }
S_o2206 = { [nil] = {}, Start = function(L0)

end }
S_o2240 = { [nil] = {}, Start = function(L0)

end }
S_o2274 = { [nil] = {}, Start = function(L0)

end }
S_o2308 = { [nil] = {}, Start = function(L0)

end }
S_o2342 = { [nil] = {}, Start = function(L0)

end }
S_o2376 = { [nil] = {}, Start = function(L0)

end }
S_o2410 = { [nil] = {}, Start = function(L0)

end }
S_o2444 = { [nil] = {}, Start = function(L0)

end }
S_o2478 = { [nil] = {}, Start = function(L0)

end }
S_o2512 = { [nil] = {}, Start = function(L0)

end }
S_o2546 = { [nil] = {}, Start = function(L0)

end }
S_o2580 = { [nil] = {}, Start = function(L0)

end }
S_o2614 = { [nil] = {}, Start = function(L0)

end }
S_o2648 = { [nil] = {}, Start = function(L0)

end }
S_o2682 = { [nil] = {}, Start = function(L0)

end }
S_o2716 = { [nil] = {}, Start = function(L0)

end }
S_o2750 = { [nil] = {}, Start = function(L0)

end }
S_o2784 = { [nil] = {}, Start = function(L0)

end }
S_o2818 = { [nil] = {}, Start = function(L0)

end }
S_o2852 = { [nil] = {}, Start = function(L0)

end }
S_o2886 = { [nil] = {}, Start = function(L0)

end }
S_o2920 = { [nil] = {}, Start = function(L0)

end }
S_o2954 = { [nil] = {}, Start = function(L0)

end }
S_o2988 = { [nil] = {}, Start = function(L0)

end }
S_o3022 = { [nil] = {}, Start = function(L0)

end }
S_o3056 = { [nil] = {}, Start = function(L0)

end }
S_o3090 = { [nil] = {}, Start = function(L0)

end }
S_o3124 = { [nil] = {}, Start = function(L0)

end }
S_o3158 = { [nil] = {}, Start = function(L0)

end }
S_o3192 = { [nil] = {}, Start = function(L0)

end }
S_o3226 = { [nil] = {}, Start = function(L0)

end }
S_o3260 = { [nil] = {}, Start = function(L0)

end }
S_o3294 = { [nil] = {}, Start = function(L0)

end }
S_o3328 = { [nil] = {}, Start = function(L0)

end }
S_o3362 = { [nil] = {}, Start = function(L0)

end }
S_o3396 = { [nil] = {}, Start = function(L0)

end }
S_o3430 = { [nil] = {}, Start = function(L0)

end }
S_o3464 = { [nil] = {}, Start = function(L0)

end }
S_o3498 = { [nil] = {}, Start = function(L0)

end }
S_o3532 = { [nil] = {}, Start = function(L0)

end }
S_o3566 = { [nil] = {}, Start = function(L0)

end }
S_o3600 = { [nil] = {}, Start = function(L0)

end }
S_o3634 = { [nil] = {}, Start = function(L0)

end }
S_o3668 = { [nil] = {}, Start = function(L0)

end }
S_o3702 = { [nil] = {}, Start = function(L0)

end }
S_o3736 = { [nil] = {}, Start = function(L0)

end }
S_o3770 = { [nil] = {}, Start = function(L0)

end }
S_o3804 = { [nil] = {}, Start = function(L0)

end }
S_o3838 = { [nil] = {}, Start = function(L0)

end }
S_o3872 = { [nil] = {}, Start = function(L0)

end }
S_o3906 = { [nil] = {}, Start = function(L0)

end }
S_o3940 = { [nil] = {}, Start = function(L0)

end }
S_o3974 = { [nil] = {}, Start = function(L0)

end }
S_o4008 = { [nil] = {}, Start = function(L0)

end }
S_o4042 = { [nil] = {}, Start = function(L0)

end }
S_o4076 = { [nil] = {}, Start = function(L0)

end }
S_o4110 = { [nil] = {}, Start = function(L0)

end }
S_o4144 = { [nil] = {}, Start = function(L0)

end }
S_o4178 = { [nil] = {}, Start = function(L0)

end }
S_o4212 = { [nil] = {}, Start = function(L0)

end }
S_o4246 = { [nil] = {}, Start = function(L0)

end }
S_o4280 = { [nil] = {}, Start = function(L0)

end }
S_o4314 = { [nil] = {}, Start = function(L0)

end }
S_o4348 = { [nil] = {}, Start = function(L0)

end }
S_o4382 = { [nil] = {}, Start = function(L0)

end }
S_o4416 = { [nil] = {}, Start = function(L0)

end }
S_o4450 = { [nil] = {}, Start = function(L0)

end }
S_o4484 = { [nil] = {}, Start = function(L0)

end }
S_o4518 = { [nil] = {}, Start = function(L0)

end }
S_o4552 = { [nil] = {}, Start = function(L0)

end }
S_o4586 = { [nil] = {}, Start = function(L0)

end }
S_o4620 = { [nil] = {}, Start = function(L0)

end }
S_o4654 = { [nil] = {}, Start = function(L0)

end }
S_o4688 = { [nil] = {}, Start = function(L0)

end }
S_o4722 = { [nil] = {}, Start = function(L0)

end }
S_o4756 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4756, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4756, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4756, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o4759.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4759 = { [nil] = {}, Start = function()
  o4759["Value"] = False
  o4763.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4759.Value == L0) then
    o4759["Value"] = L0
    o4763.ReCalculate()
  end
end }
o4763 = { [nil] = {}, GetCalculated = function()
  if not (o4759.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4763.SetStateValue(o4763.GetCalculated())
end, StartCalculate = function()
  o4763["Value"] = o4763.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4763.Value == L0) then
    o4763["Value"] = L0
    o2.ReCalculate()
  end
end }
S_o4791 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4791, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4791, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4791, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o4794.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4794 = { [nil] = {}, Start = function()
  o4794["Value"] = False
  o4822.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4794.Value == L0) then
    o4794["Value"] = L0
    o4822.ReCalculate()
  end
end }
o4822 = { [nil] = {}, GetCalculated = function()
  if not (o4794.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4822.SetStateValue(o4822.GetCalculated())
end, StartCalculate = function()
  o4822["Value"] = o4822.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4822.Value == L0) then
    o4822["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o4826 = { [nil] = {}, Start = function(L0)

end }
S_o4860 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4860, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4860, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4860, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o4863.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4863 = { [nil] = {}, Start = function()
  o4863["Value"] = False
  o4891.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4863.Value == L0) then
    o4863["Value"] = L0
    o4891.ReCalculate()
  end
end }
o4891 = { [nil] = {}, GetCalculated = function()
  if not (o4863.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4891.SetStateValue(o4891.GetCalculated())
end, StartCalculate = function()
  o4891["Value"] = o4891.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4891.Value == L0) then
    o4891["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o4895 = { [nil] = {}, Start = function(L0)

end }
S_o4929 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4929, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4929, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4929, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o4932.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4932 = { [nil] = {}, Start = function()
  o4932["Value"] = False
  o4965.StartCalculate()
  o5003.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4932.Value == L0) then
    o4932["Value"] = L0
    o4965.ReCalculate()
    o5003.ReCalculate()
  end
end }
S_o4964 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4964, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4964, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4964, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o4964, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4964, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o4964, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o4973.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4965.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4965 = { [nil] = {}, GetCalculated = function()
  if not (o4932.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4965.SetStateValue(o4965.GetCalculated())
end, StartCalculate = function()
  o4965["Value"] = o4965.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4965.Value == L0) then
    o4965["Value"] = L0
    CallFunction(o4964, "ProcesseStateChange")
  end
end }
o4973 = { [nil] = {}, Start = function()
  o4973["Value"] = False
  o5852.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4973.Value == L0) then
    o4973["Value"] = L0
    o5852.ReCalculate()
  end
end }
S_o5002 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5002, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5002, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5002, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5002, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5002, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o5002, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o5011.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5003.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5003 = { [nil] = {}, GetCalculated = function()
  if not (o4932.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5003.SetStateValue(o5003.GetCalculated())
end, StartCalculate = function()
  o5003["Value"] = o5003.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5003.Value == L0) then
    o5003["Value"] = L0
    CallFunction(o5002, "ProcesseStateChange")
  end
end }
o5011 = { [nil] = {}, Start = function()
  o5011["Value"] = False
  o5852.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5011.Value == L0) then
    o5011["Value"] = L0
    o5852.ReCalculate()
  end
end }
S_o5040 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5040, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5040, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5040, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o5043.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5043 = { [nil] = {}, Start = function()
  o5043["Value"] = False
  o5076.StartCalculate()
  o5114.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5043.Value == L0) then
    o5043["Value"] = L0
    o5076.ReCalculate()
    o5114.ReCalculate()
  end
end }
S_o5075 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5075, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5075, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5075, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5075, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5075, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o5075, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o5084.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5076.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5076 = { [nil] = {}, GetCalculated = function()
  if not (o5043.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5076.SetStateValue(o5076.GetCalculated())
end, StartCalculate = function()
  o5076["Value"] = o5076.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5076.Value == L0) then
    o5076["Value"] = L0
    CallFunction(o5075, "ProcesseStateChange")
  end
end }
o5084 = { [nil] = {}, Start = function()
  o5084["Value"] = False
  o5858.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5084.Value == L0) then
    o5084["Value"] = L0
    o5858.ReCalculate()
  end
end }
S_o5113 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5113, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5113, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5113, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5113, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5113, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o5113, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o5122.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5114.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5114 = { [nil] = {}, GetCalculated = function()
  if not (o5043.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5114.SetStateValue(o5114.GetCalculated())
end, StartCalculate = function()
  o5114["Value"] = o5114.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5114.Value == L0) then
    o5114["Value"] = L0
    CallFunction(o5113, "ProcesseStateChange")
  end
end }
o5122 = { [nil] = {}, Start = function()
  o5122["Value"] = False
  o5858.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5122.Value == L0) then
    o5122["Value"] = L0
    o5858.ReCalculate()
  end
end }
S_o5151 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5151, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5151, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5151, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o5154.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5154 = { [nil] = {}, Start = function()
  o5154["Value"] = False
  o5187.StartCalculate()
  o5225.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5154.Value == L0) then
    o5154["Value"] = L0
    o5187.ReCalculate()
    o5225.ReCalculate()
  end
end }
S_o5186 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5186, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5186, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5186, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5186, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5186, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o5186, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o5195.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5187.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5187 = { [nil] = {}, GetCalculated = function()
  if not (o5154.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5187.SetStateValue(o5187.GetCalculated())
end, StartCalculate = function()
  o5187["Value"] = o5187.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5187.Value == L0) then
    o5187["Value"] = L0
    CallFunction(o5186, "ProcesseStateChange")
  end
end }
o5195 = { [nil] = {}, Start = function()
  o5195["Value"] = False
  o5856.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5195.Value == L0) then
    o5195["Value"] = L0
    o5856.ReCalculate()
  end
end }
S_o5224 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5224, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5224, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5224, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5224, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5224, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o5224, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o5233.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5225.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5225 = { [nil] = {}, GetCalculated = function()
  if not (o5154.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5225.SetStateValue(o5225.GetCalculated())
end, StartCalculate = function()
  o5225["Value"] = o5225.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5225.Value == L0) then
    o5225["Value"] = L0
    CallFunction(o5224, "ProcesseStateChange")
  end
end }
o5233 = { [nil] = {}, Start = function()
  o5233["Value"] = False
  o5856.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5233.Value == L0) then
    o5233["Value"] = L0
    o5856.ReCalculate()
  end
end }
S_o5262 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5262, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5262, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5262, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o5265.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5265 = { [nil] = {}, Start = function()
  o5265["Value"] = False
  o5298.StartCalculate()
  o5336.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5265.Value == L0) then
    o5265["Value"] = L0
    o5298.ReCalculate()
    o5336.ReCalculate()
  end
end }
S_o5297 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5297, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5297, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5297, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5297, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5297, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o5297, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o5306.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5298.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5298 = { [nil] = {}, GetCalculated = function()
  if not (o5265.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5298.SetStateValue(o5298.GetCalculated())
end, StartCalculate = function()
  o5298["Value"] = o5298.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5298.Value == L0) then
    o5298["Value"] = L0
    CallFunction(o5297, "ProcesseStateChange")
  end
end }
o5306 = { [nil] = {}, Start = function()
  o5306["Value"] = False
  o5854.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5306.Value == L0) then
    o5306["Value"] = L0
    o5854.ReCalculate()
  end
end }
S_o5335 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5335, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5335, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5335, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5335, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5335, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o5335, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o5344.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5336.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5336 = { [nil] = {}, GetCalculated = function()
  if not (o5265.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5336.SetStateValue(o5336.GetCalculated())
end, StartCalculate = function()
  o5336["Value"] = o5336.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5336.Value == L0) then
    o5336["Value"] = L0
    CallFunction(o5335, "ProcesseStateChange")
  end
end }
o5344 = { [nil] = {}, Start = function()
  o5344["Value"] = False
  o5854.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5344.Value == L0) then
    o5344["Value"] = L0
    o5854.ReCalculate()
  end
end }
S_o5373 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5373, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5373, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5373, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o5376.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5376 = { [nil] = {}, Start = function()
  o5376["Value"] = False
  o5409.StartCalculate()
  o5447.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5376.Value == L0) then
    o5376["Value"] = L0
    o5409.ReCalculate()
    o5447.ReCalculate()
  end
end }
S_o5408 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5408, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5408, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5408, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5408, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5408, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o5408, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o5417.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5409.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5409 = { [nil] = {}, GetCalculated = function()
  if not (o5376.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5409.SetStateValue(o5409.GetCalculated())
end, StartCalculate = function()
  o5409["Value"] = o5409.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5409.Value == L0) then
    o5409["Value"] = L0
    CallFunction(o5408, "ProcesseStateChange")
  end
end }
o5417 = { [nil] = {}, Start = function()
  o5417["Value"] = False
  o5860.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5417.Value == L0) then
    o5417["Value"] = L0
    o5860.ReCalculate()
  end
end }
S_o5446 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5446, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5446, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5446, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5446, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5446, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o5446, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o5455.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5447.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5447 = { [nil] = {}, GetCalculated = function()
  if not (o5376.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5447.SetStateValue(o5447.GetCalculated())
end, StartCalculate = function()
  o5447["Value"] = o5447.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5447.Value == L0) then
    o5447["Value"] = L0
    CallFunction(o5446, "ProcesseStateChange")
  end
end }
o5455 = { [nil] = {}, Start = function()
  o5455["Value"] = False
  o5860.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5455.Value == L0) then
    o5455["Value"] = L0
    o5860.ReCalculate()
  end
end }
S_o5484 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o5484, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5520 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o5520, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5556 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o5556, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5592 = { [nil] = {}, Start = function(L0)

end }
S_o5628 = { [nil] = {}, Start = function(L0)

end }
S_o5664 = { [nil] = {}, Start = function(L0)

end }
S_o5700 = { [nil] = {}, Start = function(L0)

end }
S_o5736 = { [nil] = {}, Start = function(L0)

end }
S_o5772 = { [nil] = {}, Start = function(L0)

end }
S_o5808 = { [nil] = {}, Start = function(L0)

end }
S_o5844 = { [nil] = {}, Start = function(L0)

end }
S_o5845 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "ammo_energy", 2001)
  Body_AddItem(L0.Node, "gun_plasmagatlin", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "gun_empactor", 1)
  Body_AddItem(L0.Node, "torpedo_tigershark", 5)
  Body_AddItem(L0.Node, "torpedo_flashshark", 5)
  Body_AddItem(L0.Node, "device_repair", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 6)
  CallFunction(o5845, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, Player_FirstWarning = function(L0)
  CallFunction(L0.Thread, "SetStateValue_FriendlyFire1", True)
end, Player_SecondWarning = function(L0)
  CallFunction(L0.Thread, "SetStateValue_FriendlyFire2", True)
end, Player_ThirdWarning = function(L0)
  CallFunction(L0.Thread, "SetStateValue_FriendlyFire3", True)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5850 = { [nil] = {}, Start = function()
  o5850["Value"] = False
  o5852.StartCalculate()
  o5854.StartCalculate()
  o5856.StartCalculate()
  o5858.StartCalculate()
  o5860.StartCalculate()
  o8159.StartCalculate()
  o8162.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5850.Value == L0) then
    o5850["Value"] = L0
    o5852.ReCalculate()
    o5854.ReCalculate()
    o5856.ReCalculate()
    o5858.ReCalculate()
    o5860.ReCalculate()
    o8159.ReCalculate()
    o8162.ReCalculate()
  end
end }
o5851 = { [nil] = {}, Start = function()
  o5851["Value"] = False
  o6163.StartCalculate()
  o6211.StartCalculate()
  o6259.StartCalculate()
  o6307.StartCalculate()
  o6805.StartCalculate()
  o6853.StartCalculate()
  o6901.StartCalculate()
  o6949.StartCalculate()
  o6997.StartCalculate()
  o7045.StartCalculate()
  o7093.StartCalculate()
  o7142.StartCalculate()
  o7192.StartCalculate()
  o7241.StartCalculate()
  o7289.StartCalculate()
  o7337.StartCalculate()
  o7385.StartCalculate()
  o8154.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5851.Value == L0) then
    o5851["Value"] = L0
    o6163.ReCalculate()
    o6211.ReCalculate()
    o6259.ReCalculate()
    o6307.ReCalculate()
    o6805.ReCalculate()
    o6853.ReCalculate()
    o6901.ReCalculate()
    o6949.ReCalculate()
    o6997.ReCalculate()
    o7045.ReCalculate()
    o7093.ReCalculate()
    o7142.ReCalculate()
    o7192.ReCalculate()
    o7241.ReCalculate()
    o7289.ReCalculate()
    o7337.ReCalculate()
    o7385.ReCalculate()
    o8154.ReCalculate()
  end
end }
o5852 = { [nil] = {}, GetCalculated = function()
  if not (o4973.Value ~= True) then
    if not (o5011.Value ~= True) then
      if not (o5850.Value ~= False) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o5852.SetStateValue(o5852.GetCalculated())
end, StartCalculate = function()
  o5852["Value"] = o5852.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o8091.Node)
  o5853.SetStateValue(True)
end, SetStateValue = function(L0)
  if not (o5852.Value == L0) then
    o5852["Value"] = L0
    if not (L0 ~= 1) then
      o5852.ChangeTo1()
    end
  end
end }
o5853 = { [nil] = {}, Start = function()
  o5853["Value"] = False
  o5862.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5853.Value == L0) then
    o5853["Value"] = L0
    o5862.ReCalculate()
  end
end }
o5854 = { [nil] = {}, GetCalculated = function()
  if not (o5306.Value ~= True) then
    if not (o5344.Value ~= True) then
      if not (o5850.Value ~= False) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o5854.SetStateValue(o5854.GetCalculated())
end, StartCalculate = function()
  o5854["Value"] = o5854.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o8096.Node)
  o5855.SetStateValue(True)
end, SetStateValue = function(L0)
  if not (o5854.Value == L0) then
    o5854["Value"] = L0
    if not (L0 ~= 1) then
      o5854.ChangeTo1()
    end
  end
end }
o5855 = { [nil] = {}, Start = function()
  o5855["Value"] = False
  o5862.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5855.Value == L0) then
    o5855["Value"] = L0
    o5862.ReCalculate()
  end
end }
o5856 = { [nil] = {}, GetCalculated = function()
  if not (o5195.Value ~= True) then
    if not (o5233.Value ~= True) then
      if not (o5850.Value ~= False) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o5856.SetStateValue(o5856.GetCalculated())
end, StartCalculate = function()
  o5856["Value"] = o5856.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o8101.Node)
  o5857.SetStateValue(True)
end, SetStateValue = function(L0)
  if not (o5856.Value == L0) then
    o5856["Value"] = L0
    if not (L0 ~= 1) then
      o5856.ChangeTo1()
    end
  end
end }
o5857 = { [nil] = {}, Start = function()
  o5857["Value"] = False
  o5862.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5857.Value == L0) then
    o5857["Value"] = L0
    o5862.ReCalculate()
  end
end }
o5858 = { [nil] = {}, GetCalculated = function()
  if not (o5084.Value ~= True) then
    if not (o5122.Value ~= True) then
      if not (o5850.Value ~= False) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o5858.SetStateValue(o5858.GetCalculated())
end, StartCalculate = function()
  o5858["Value"] = o5858.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o8106.Node)
  o5859.SetStateValue(True)
end, SetStateValue = function(L0)
  if not (o5858.Value == L0) then
    o5858["Value"] = L0
    if not (L0 ~= 1) then
      o5858.ChangeTo1()
    end
  end
end }
o5859 = { [nil] = {}, Start = function()
  o5859["Value"] = False
  o5862.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5859.Value == L0) then
    o5859["Value"] = L0
    o5862.ReCalculate()
  end
end }
o5860 = { [nil] = {}, GetCalculated = function()
  if not (o5417.Value ~= True) then
    if not (o5455.Value ~= True) then
      if not (o5850.Value ~= False) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o5860.SetStateValue(o5860.GetCalculated())
end, StartCalculate = function()
  o5860["Value"] = o5860.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  o5861.SetStateValue(True)
end, SetStateValue = function(L0)
  if not (o5860.Value == L0) then
    o5860["Value"] = L0
    if not (L0 ~= 1) then
      o5860.ChangeTo1()
    end
  end
end }
o5861 = { [nil] = {}, Start = function()
  o5861["Value"] = False
  o5862.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5861.Value == L0) then
    o5861["Value"] = L0
    o5862.ReCalculate()
  end
end }
o5862 = { [nil] = {}, GetCalculated = function()
  if not (o5853.Value ~= True) then
    if not (o5855.Value ~= True) then
      if not (o5857.Value ~= True) then
        if not (o5859.Value ~= True) then
          if not (o5861.Value ~= True) then
            return 1
          else
            return 0
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o5862.SetStateValue(o5862.GetCalculated())
end, StartCalculate = function()
  o5862["Value"] = o5862.GetCalculated()
  o5875.StartCalculate()
  o8159.StartCalculate()
  o8162.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("all turrets down")
end, SetStateValue = function(L0)
  if not (o5862.Value == L0) then
    o5862["Value"] = L0
    o5875.ReCalculate()
    o8159.ReCalculate()
    o8162.ReCalculate()
    if not (L0 ~= 1) then
      o5862.ChangeTo1()
    end
  end
end }
o5863 = { [nil] = {}, Start = function()
  o5863["Value"] = False
  o7576.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5863.Value == L0) then
    o5863["Value"] = L0
    o7576.ReCalculate()
  end
end }
o5864 = { [nil] = {}, GetCalculated = function()
  if not (o6358.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5864.SetStateValue(o5864.GetCalculated())
end, StartCalculate = function()
  o5864["Value"] = o5864.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o8116.Node)
end, SetStateValue = function(L0)
  if not (o5864.Value == L0) then
    DelayedFunction(1, o5864, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5864.Value == L0) then
    o5864["Value"] = L0
    if not (L0 ~= 1) then
      o5864.ChangeTo1()
    end
  end
end }
o5865 = { [nil] = {}, GetCalculated = function()
  if not (o6361.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5865.SetStateValue(o5865.GetCalculated())
end, StartCalculate = function()
  o5865["Value"] = o5865.GetCalculated()
  o7632.StartCalculate()
  o7671.StartCalculate()
  o7710.StartCalculate()
  o7749.StartCalculate()
  o7788.StartCalculate()
  o7827.StartCalculate()
  o7866.StartCalculate()
  o7905.StartCalculate()
  o7944.StartCalculate()
  o7992.StartCalculate()
  o8040.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("BeginChapter3 _ triggert")
end, SetStateValue = function(L0)
  if not (o5865.Value == L0) then
    o5865["Value"] = L0
    o7632.ReCalculate()
    o7671.ReCalculate()
    o7710.ReCalculate()
    o7749.ReCalculate()
    o7788.ReCalculate()
    o7827.ReCalculate()
    o7866.ReCalculate()
    o7905.ReCalculate()
    o7944.ReCalculate()
    o7992.ReCalculate()
    o8040.ReCalculate()
    if not (L0 ~= 1) then
      o5865.ChangeTo1()
    end
  end
end }
o5866 = { [nil] = {}, GetCalculated = function()
  if not (o5871.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5866.SetStateValue(o5866.GetCalculated())
end, StartCalculate = function()
  o5866["Value"] = o5866.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6006.Node, o5845.Node, 208)
  SendRadioMessageTake(o6056.Node, o5845.Node, 211)
end, SetStateValue = function(L0)
  if not (o5866.Value == L0) then
    o5866["Value"] = L0
    if not (L0 ~= 1) then
      o5866.ChangeTo1()
    end
  end
end }
o5867 = { [nil] = {}, GetCalculated = function()
  if not (o6810.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5867.SetStateValue(o5867.GetCalculated())
end, StartCalculate = function()
  o5867["Value"] = o5867.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6106.Node, o5845.Node, 209)
  SendRadioMessageTake(o6106.Node, o5845.Node, 210)
  SED_SetTaskTextKey(1308, -1, -1)
end, SetStateValue = function(L0)
  if not (o5867.Value == L0) then
    o5867["Value"] = L0
    if not (L0 ~= 1) then
      o5867.ChangeTo1()
    end
  end
end }
o5868 = { [nil] = {}, GetCalculated = function()
  if not (o6358.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5868.SetStateValue(o5868.GetCalculated())
end, StartCalculate = function()
  o5868["Value"] = o5868.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6106.Node, o5845.Node, 212)
end, SetStateValue = function(L0)
  if not (o5868.Value == L0) then
    o5868["Value"] = L0
    if not (L0 ~= 1) then
      o5868.ChangeTo1()
    end
  end
end }
o5869 = { [nil] = {}, GetCalculated = function()
  if not (o6361.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5869.SetStateValue(o5869.GetCalculated())
end, StartCalculate = function()
  o5869["Value"] = o5869.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5845.Node, o5845.Node, 217)
end, SetStateValue = function(L0)
  if not (o5869.Value == L0) then
    o5869["Value"] = L0
    if not (L0 ~= 1) then
      o5869.ChangeTo1()
    end
  end
end }
o5870 = { [nil] = {}, GetCalculated = function()
  if not (o7640.Value ~= True) then
    if not (o7679.Value ~= True) then
      if not (o7718.Value ~= True) then
        if not (o7835.Value ~= True) then
          if not (o7957.Value ~= True) then
            if not (o8005.Value ~= True) then
              if not (o7757.Value ~= True) then
                if not (o7796.Value ~= True) then
                  if not (o7874.Value ~= True) then
                    if not (o7913.Value ~= True) then
                      if not (o8055.Value ~= True) then
                        return 1
                      else
                        return 0
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o5870.SetStateValue(o5870.GetCalculated())
end, StartCalculate = function()
  o5870["Value"] = o5870.GetCalculated()
  o8175.StartCalculate()
  o8194.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5870.Value == L0) then
    o5870["Value"] = L0
    o8175.ReCalculate()
    o8194.ReCalculate()
  end
end }
o5871 = { [nil] = {}, Start = function()
  o5871["Value"] = False
  o5866.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5871.Value == L0) then
    o5871["Value"] = L0
    o5866.ReCalculate()
  end
end }
o5872 = { [nil] = {}, Start = function()
  o5872["Value"] = False
  o6405.StartCalculate()
  o6455.StartCalculate()
  o6505.StartCalculate()
  o6555.StartCalculate()
  o6605.StartCalculate()
  o6655.StartCalculate()
  o6705.StartCalculate()
  o6754.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5872.Value == L0) then
    o5872["Value"] = L0
    o6405.ReCalculate()
    o6455.ReCalculate()
    o6505.ReCalculate()
    o6555.ReCalculate()
    o6605.ReCalculate()
    o6655.ReCalculate()
    o6705.ReCalculate()
    o6754.ReCalculate()
  end
end }
o5873 = { [nil] = {}, Start = function()
  o5873["Value"] = False
  o6406.StartCalculate()
  o6456.StartCalculate()
  o6506.StartCalculate()
  o6556.StartCalculate()
  o6606.StartCalculate()
  o6656.StartCalculate()
  o6706.StartCalculate()
  o6755.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5873.Value == L0) then
    o5873["Value"] = L0
    o6406.ReCalculate()
    o6456.ReCalculate()
    o6506.ReCalculate()
    o6556.ReCalculate()
    o6606.ReCalculate()
    o6656.ReCalculate()
    o6706.ReCalculate()
    o6755.ReCalculate()
  end
end }
o5874 = { [nil] = {}, Start = function()
  o5874["Value"] = False
  o6404.StartCalculate()
  o6454.StartCalculate()
  o6504.StartCalculate()
  o6554.StartCalculate()
  o6604.StartCalculate()
  o6654.StartCalculate()
  o6704.StartCalculate()
  o6756.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5874.Value == L0) then
    o5874["Value"] = L0
    o6404.ReCalculate()
    o6454.ReCalculate()
    o6504.ReCalculate()
    o6554.ReCalculate()
    o6604.ReCalculate()
    o6654.ReCalculate()
    o6704.ReCalculate()
    o6756.ReCalculate()
  end
end }
o5875 = { [nil] = {}, GetCalculated = function()
  if not (o5862.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5875.SetStateValue(o5875.GetCalculated())
end, StartCalculate = function()
  o5875["Value"] = o5875.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6106.Node, o5845.Node, 199)
end, SetStateValue = function(L0)
  if not (o5875.Value == L0) then
    DelayedFunction(2, o5875, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5875.Value == L0) then
    o5875["Value"] = L0
    if not (L0 ~= 1) then
      o5875.ChangeTo1()
    end
  end
end }
o5876 = { [nil] = {}, Start = function()
  o5876["Value"] = False
  o5885.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5876.Value == L0) then
    o5876["Value"] = L0
    o5885.ReCalculate()
  end
end }
o5877 = { [nil] = {}, GetCalculated = function()
  if not (o8173.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5877.SetStateValue(o5877.GetCalculated())
end, StartCalculate = function()
  o5877["Value"] = o5877.GetCalculated()
end, ChangeTo1 = function()
  SetEnemyMatrixElement(1, 8, N)
  SetEnemyMatrixElement(8, 1, N)
end, SetStateValue = function(L0)
  if not (o5877.Value == L0) then
    DelayedFunction(2, o5877, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5877.Value == L0) then
    o5877["Value"] = L0
    if not (L0 ~= 1) then
      o5877.ChangeTo1()
    end
  end
end }
o5885 = { [nil] = {}, GetCalculated = function()
  if not (o5876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5885.SetStateValue(o5885.GetCalculated())
end, StartCalculate = function()
  o5885["Value"] = o5885.GetCalculated()
  o9.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("player_wincon_true")
end, SetStateValue = function(L0)
  if not (o5885.Value == L0) then
    o5885["Value"] = L0
    o9.ReCalculate()
    if not (L0 ~= 1) then
      o5885.ChangeTo1()
    end
  end
end }
S_o5906 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5906, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5906, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5906, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o5906, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o5906, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code6")
  else
    CallFunction(o5906, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Parlament_PatrolArea", "/Scenario_Dynamic/Navigation/Parlament_TriggerArea", "/Scenario_Dynamic/Navigation/Parlament_FollowArea", "E", "", "", "", 0.5, "Code7")
  else
    CallFunction(o5906, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  StopAllActiveBehaviours(L0)
  CallFunction(o5906, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 1, "Code9")
  else
    CallFunction(o5906, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  StopAllActiveBehaviours(L0)
  CallFunction(o5906, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 1, "Code11")
  else
    CallFunction(o5906, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5956 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5956, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5956, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5956, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o5956, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o5956, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code6")
  else
    CallFunction(o5956, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Parlament_PatrolArea", "/Scenario_Dynamic/Navigation/Parlament_TriggerArea", "/Scenario_Dynamic/Navigation/Parlament_FollowArea", "E", "", "", "", 0.5, "Code7")
  else
    CallFunction(o5956, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  StopAllActiveBehaviours(L0)
  CallFunction(o5956, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 1, "Code9")
  else
    CallFunction(o5956, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  StopAllActiveBehaviours(L0)
  CallFunction(o5956, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 1, "Code11")
  else
    CallFunction(o5956, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6006 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6006, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6006, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6006, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o6006, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o6006, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code6")
  else
    CallFunction(o6006, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Parlament_PatrolArea", "/Scenario_Dynamic/Navigation/Parlament_TriggerArea", "/Scenario_Dynamic/Navigation/Parlament_FollowArea", "E", "", "", "", 0.5, "Code7")
  else
    CallFunction(o6006, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  StopAllActiveBehaviours(L0)
  CallFunction(o6006, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 1, "Code9")
  else
    CallFunction(o6006, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  StopAllActiveBehaviours(L0)
  CallFunction(o6006, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 1, "Code11")
  else
    CallFunction(o6006, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6056 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6056, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6056, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6056, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o6056, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o6056, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code6")
  else
    CallFunction(o6056, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Parlament_PatrolArea", "/Scenario_Dynamic/Navigation/Parlament_TriggerArea", "/Scenario_Dynamic/Navigation/Parlament_FollowArea", "E", "", "", "", 0.5, "Code7")
  else
    CallFunction(o6056, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  StopAllActiveBehaviours(L0)
  CallFunction(o6056, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 1, "Code9")
  else
    CallFunction(o6056, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  StopAllActiveBehaviours(L0)
  CallFunction(o6056, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 1, "Code11")
  else
    CallFunction(o6056, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6106 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code1")
  else
    CallFunction(o6106, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Vessel_CollisionTerrain(L0.Node, 0)
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o6106, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Ghost_Path_1Begin", 0.2, 1 } }("Code4")
  else
    CallFunction(o6106, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 2 } }("Code5")
  else
    CallFunction(o6106, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o6106, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o6106, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6106, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  StopAllActiveBehaviours(L0)
  CallFunction(o6106, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Ghost_Path_1", 1, 1 } }("Code10")
  else
    CallFunction(o6106, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code11")
  else
    CallFunction(o6106, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code12")
  else
    CallFunction(o6106, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6106, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  StopAllActiveBehaviours(L0)
  CallFunction(o6106, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code15")
  else
    CallFunction(o6106, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6106, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  StopAllActiveBehaviours(L0)
  ShieldedBody_MakeVulnerable(L0.Node)
  Vessel_AttackTurrets(L0.Node, "", "TriOps", "", "", "")
  CallFunction(o6106, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code20")
  else
    CallFunction(o6106, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6106, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  StopAllActiveBehaviours(L0)
  CallFunction(o6106, "Code22")
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/GhostPath_3", 1, 1 } }("Code23")
  else
    CallFunction(o6106, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code24")
  else
    CallFunction(o6106, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6161 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6161, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6161, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6161, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o6161, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Parlament_PatrolArea", "/Scenario_Dynamic/Navigation/Parlament_TriggerArea", "/Scenario_Dynamic/Navigation/Parlament_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o6161, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6163.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6163 = { [nil] = {}, GetCalculated = function()
  if not (o5851.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6163.SetStateValue(o6163.GetCalculated())
end, StartCalculate = function()
  o6163["Value"] = o6163.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6163.Value == L0) then
    DelayedFunction(50, o6163, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6163.Value == L0) then
    o6163["Value"] = L0
    CallFunction(o6161, "ProcesseStateChange")
  end
end }
S_o6209 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6209, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6209, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6209, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o6209, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Parlament_PatrolArea", "/Scenario_Dynamic/Navigation/Parlament_TriggerArea", "/Scenario_Dynamic/Navigation/Parlament_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o6209, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6211.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6211 = { [nil] = {}, GetCalculated = function()
  if not (o5851.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6211.SetStateValue(o6211.GetCalculated())
end, StartCalculate = function()
  o6211["Value"] = o6211.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6211.Value == L0) then
    DelayedFunction(50, o6211, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6211.Value == L0) then
    o6211["Value"] = L0
    CallFunction(o6209, "ProcesseStateChange")
  end
end }
S_o6257 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6257, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6257, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6257, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o6257, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Parlament_PatrolArea", "/Scenario_Dynamic/Navigation/Parlament_TriggerArea", "/Scenario_Dynamic/Navigation/Parlament_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o6257, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6259.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6259 = { [nil] = {}, GetCalculated = function()
  if not (o5851.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6259.SetStateValue(o6259.GetCalculated())
end, StartCalculate = function()
  o6259["Value"] = o6259.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6259.Value == L0) then
    DelayedFunction(50, o6259, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6259.Value == L0) then
    o6259["Value"] = L0
    CallFunction(o6257, "ProcesseStateChange")
  end
end }
S_o6305 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6305, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6305, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6305, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o6305, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Parlament_PatrolArea", "/Scenario_Dynamic/Navigation/Parlament_TriggerArea", "/Scenario_Dynamic/Navigation/Parlament_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o6305, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6307.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6307 = { [nil] = {}, GetCalculated = function()
  if not (o5851.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6307.SetStateValue(o6307.GetCalculated())
end, StartCalculate = function()
  o6307["Value"] = o6307.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6307.Value == L0) then
    DelayedFunction(50, o6307, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6307.Value == L0) then
    o6307["Value"] = L0
    CallFunction(o6305, "ProcesseStateChange")
  end
end }
S_o6353 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6353, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6353, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6353, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  Game_SetWayPoint(GetGameNode(), o8116.Node)
  SED_SetTaskTextKey(1309, -1, -1)
  CallFunction(o6353, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TechBomber_Path_1", 0.75, 1 } }("Code8")
  else
    CallFunction(o6353, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o4860.Node, "DP_ver_2", "DP_ver_1", 0.2, 0.3, 1e+32, "Code9")
  else
    CallFunction(o6353, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_Born = function(L0, L1)
  o6358.SetStateValue(L1)
end, SetStateValue_InfiltrateBegin = function(L0, L1)
  o6361.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o6369.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6356.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6356 = { [nil] = {}, GetCalculated = function()
  if not (o6810.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6356.SetStateValue(o6356.GetCalculated())
end, StartCalculate = function()
  o6356["Value"] = o6356.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6356.Value == L0) then
    DelayedFunction(23, o6356, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6356.Value == L0) then
    o6356["Value"] = L0
    CallFunction(o6353, "ProcesseStateChange")
  end
end }
o6358 = { [nil] = {}, Start = function()
  o6358["Value"] = False
  o5864.StartCalculate()
  o5868.StartCalculate()
  o7433.StartCalculate()
  o7481.StartCalculate()
  o7529.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6358.Value == L0) then
    o6358["Value"] = L0
    o5864.ReCalculate()
    o5868.ReCalculate()
    o7433.ReCalculate()
    o7481.ReCalculate()
    o7529.ReCalculate()
  end
end }
o6361 = { [nil] = {}, Start = function()
  o6361["Value"] = False
  o5865.StartCalculate()
  o5869.StartCalculate()
  o8165.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6361.Value == L0) then
    o6361["Value"] = L0
    o5865.ReCalculate()
    o5869.ReCalculate()
    o8165.ReCalculate()
  end
end }
o6369 = { [nil] = {}, Start = function()
  o6369["Value"] = False
  o6399.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6369.Value == L0) then
    o6369["Value"] = L0
    o6399.ReCalculate()
  end
end }
o6399 = { [nil] = {}, GetCalculated = function()
  if not (o6369.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6399.SetStateValue(o6399.GetCalculated())
end, StartCalculate = function()
  o6399["Value"] = o6399.GetCalculated()
  o27.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5845.Node, o5845.Node, 1258)
end, SetStateValue = function(L0)
  if not (o6399.Value == L0) then
    o6399["Value"] = L0
    o27.ReCalculate()
    if not (L0 ~= 1) then
      o6399.ChangeTo1()
    end
  end
end }
S_o6402 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6402, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6402, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6402, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o6402, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code5")
  else
    CallFunction(o6402, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o6402, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6402, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 1, "Code8")
  else
    CallFunction(o6402, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o6402, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6405.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o6406.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o6404.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6404 = { [nil] = {}, GetCalculated = function()
  if not (o5874.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6404.SetStateValue(o6404.GetCalculated())
end, StartCalculate = function()
  o6404["Value"] = o6404.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6404.Value == L0) then
    o6404["Value"] = L0
    CallFunction(o6402, "ProcesseStateChange")
  end
end }
o6405 = { [nil] = {}, GetCalculated = function()
  if not (o5872.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6405.SetStateValue(o6405.GetCalculated())
end, StartCalculate = function()
  o6405["Value"] = o6405.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6405.Value == L0) then
    DelayedFunction(0.75, o6405, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6405.Value == L0) then
    o6405["Value"] = L0
    CallFunction(o6402, "ProcesseStateChange")
  end
end }
o6406 = { [nil] = {}, GetCalculated = function()
  if not (o5873.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6406.SetStateValue(o6406.GetCalculated())
end, StartCalculate = function()
  o6406["Value"] = o6406.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6406.Value == L0) then
    o6406["Value"] = L0
    CallFunction(o6402, "ProcesseStateChange")
  end
end }
S_o6452 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6452, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6452, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6452, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o6452, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code5")
  else
    CallFunction(o6452, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o6452, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6452, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 1, "Code8")
  else
    CallFunction(o6452, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o6452, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6455.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o6456.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o6454.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6454 = { [nil] = {}, GetCalculated = function()
  if not (o5874.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6454.SetStateValue(o6454.GetCalculated())
end, StartCalculate = function()
  o6454["Value"] = o6454.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6454.Value == L0) then
    o6454["Value"] = L0
    CallFunction(o6452, "ProcesseStateChange")
  end
end }
o6455 = { [nil] = {}, GetCalculated = function()
  if not (o5872.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6455.SetStateValue(o6455.GetCalculated())
end, StartCalculate = function()
  o6455["Value"] = o6455.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6455.Value == L0) then
    DelayedFunction(0.75, o6455, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6455.Value == L0) then
    o6455["Value"] = L0
    CallFunction(o6452, "ProcesseStateChange")
  end
end }
o6456 = { [nil] = {}, GetCalculated = function()
  if not (o5873.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6456.SetStateValue(o6456.GetCalculated())
end, StartCalculate = function()
  o6456["Value"] = o6456.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6456.Value == L0) then
    o6456["Value"] = L0
    CallFunction(o6452, "ProcesseStateChange")
  end
end }
S_o6502 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6502, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6502, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6502, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o6502, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code5")
  else
    CallFunction(o6502, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o6502, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6502, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 1, "Code8")
  else
    CallFunction(o6502, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o6502, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6505.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o6506.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o6504.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6504 = { [nil] = {}, GetCalculated = function()
  if not (o5874.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6504.SetStateValue(o6504.GetCalculated())
end, StartCalculate = function()
  o6504["Value"] = o6504.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6504.Value == L0) then
    o6504["Value"] = L0
    CallFunction(o6502, "ProcesseStateChange")
  end
end }
o6505 = { [nil] = {}, GetCalculated = function()
  if not (o5872.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6505.SetStateValue(o6505.GetCalculated())
end, StartCalculate = function()
  o6505["Value"] = o6505.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6505.Value == L0) then
    DelayedFunction(0.75, o6505, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6505.Value == L0) then
    o6505["Value"] = L0
    CallFunction(o6502, "ProcesseStateChange")
  end
end }
o6506 = { [nil] = {}, GetCalculated = function()
  if not (o5873.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6506.SetStateValue(o6506.GetCalculated())
end, StartCalculate = function()
  o6506["Value"] = o6506.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6506.Value == L0) then
    o6506["Value"] = L0
    CallFunction(o6502, "ProcesseStateChange")
  end
end }
S_o6552 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6552, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6552, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6552, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o6552, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code5")
  else
    CallFunction(o6552, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o6552, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6552, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 1, "Code8")
  else
    CallFunction(o6552, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o6552, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6555.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o6556.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o6554.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6554 = { [nil] = {}, GetCalculated = function()
  if not (o5874.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6554.SetStateValue(o6554.GetCalculated())
end, StartCalculate = function()
  o6554["Value"] = o6554.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6554.Value == L0) then
    o6554["Value"] = L0
    CallFunction(o6552, "ProcesseStateChange")
  end
end }
o6555 = { [nil] = {}, GetCalculated = function()
  if not (o5872.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6555.SetStateValue(o6555.GetCalculated())
end, StartCalculate = function()
  o6555["Value"] = o6555.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6555.Value == L0) then
    DelayedFunction(0.75, o6555, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6555.Value == L0) then
    o6555["Value"] = L0
    CallFunction(o6552, "ProcesseStateChange")
  end
end }
o6556 = { [nil] = {}, GetCalculated = function()
  if not (o5873.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6556.SetStateValue(o6556.GetCalculated())
end, StartCalculate = function()
  o6556["Value"] = o6556.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6556.Value == L0) then
    o6556["Value"] = L0
    CallFunction(o6552, "ProcesseStateChange")
  end
end }
S_o6602 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6602, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6602, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6602, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o6602, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code5")
  else
    CallFunction(o6602, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o6602, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6602, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 1, "Code8")
  else
    CallFunction(o6602, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o6602, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6605.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o6606.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o6604.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6604 = { [nil] = {}, GetCalculated = function()
  if not (o5874.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6604.SetStateValue(o6604.GetCalculated())
end, StartCalculate = function()
  o6604["Value"] = o6604.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6604.Value == L0) then
    o6604["Value"] = L0
    CallFunction(o6602, "ProcesseStateChange")
  end
end }
o6605 = { [nil] = {}, GetCalculated = function()
  if not (o5872.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6605.SetStateValue(o6605.GetCalculated())
end, StartCalculate = function()
  o6605["Value"] = o6605.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6605.Value == L0) then
    DelayedFunction(0.75, o6605, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6605.Value == L0) then
    o6605["Value"] = L0
    CallFunction(o6602, "ProcesseStateChange")
  end
end }
o6606 = { [nil] = {}, GetCalculated = function()
  if not (o5873.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6606.SetStateValue(o6606.GetCalculated())
end, StartCalculate = function()
  o6606["Value"] = o6606.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6606.Value == L0) then
    o6606["Value"] = L0
    CallFunction(o6602, "ProcesseStateChange")
  end
end }
S_o6652 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6652, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6652, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6652, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o6652, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code5")
  else
    CallFunction(o6652, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o6652, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6652, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 1, "Code8")
  else
    CallFunction(o6652, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o6652, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6655.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o6656.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o6654.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6654 = { [nil] = {}, GetCalculated = function()
  if not (o5874.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6654.SetStateValue(o6654.GetCalculated())
end, StartCalculate = function()
  o6654["Value"] = o6654.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6654.Value == L0) then
    o6654["Value"] = L0
    CallFunction(o6652, "ProcesseStateChange")
  end
end }
o6655 = { [nil] = {}, GetCalculated = function()
  if not (o5872.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6655.SetStateValue(o6655.GetCalculated())
end, StartCalculate = function()
  o6655["Value"] = o6655.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6655.Value == L0) then
    DelayedFunction(0.75, o6655, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6655.Value == L0) then
    o6655["Value"] = L0
    CallFunction(o6652, "ProcesseStateChange")
  end
end }
o6656 = { [nil] = {}, GetCalculated = function()
  if not (o5873.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6656.SetStateValue(o6656.GetCalculated())
end, StartCalculate = function()
  o6656["Value"] = o6656.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6656.Value == L0) then
    o6656["Value"] = L0
    CallFunction(o6652, "ProcesseStateChange")
  end
end }
S_o6702 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6702, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6702, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6702, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o6702, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code5")
  else
    CallFunction(o6702, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o6702, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6702, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 1, "Code8")
  else
    CallFunction(o6702, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o6702, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6705.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o6706.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o6704.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6704 = { [nil] = {}, GetCalculated = function()
  if not (o5874.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6704.SetStateValue(o6704.GetCalculated())
end, StartCalculate = function()
  o6704["Value"] = o6704.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6704.Value == L0) then
    o6704["Value"] = L0
    CallFunction(o6702, "ProcesseStateChange")
  end
end }
o6705 = { [nil] = {}, GetCalculated = function()
  if not (o5872.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6705.SetStateValue(o6705.GetCalculated())
end, StartCalculate = function()
  o6705["Value"] = o6705.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6705.Value == L0) then
    DelayedFunction(0.75, o6705, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6705.Value == L0) then
    o6705["Value"] = L0
    CallFunction(o6702, "ProcesseStateChange")
  end
end }
o6706 = { [nil] = {}, GetCalculated = function()
  if not (o5873.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6706.SetStateValue(o6706.GetCalculated())
end, StartCalculate = function()
  o6706["Value"] = o6706.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6706.Value == L0) then
    o6706["Value"] = L0
    CallFunction(o6702, "ProcesseStateChange")
  end
end }
S_o6752 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6752, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6752, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6752, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code4")
  else
    CallFunction(o6752, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o6752, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6752, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o6752, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code8")
  else
    CallFunction(o6752, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6752, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code10")
  else
    CallFunction(o6752, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6754.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o6755.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o6756.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6754 = { [nil] = {}, GetCalculated = function()
  if not (o5872.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6754.SetStateValue(o6754.GetCalculated())
end, StartCalculate = function()
  o6754["Value"] = o6754.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6754.Value == L0) then
    DelayedFunction(0.75, o6754, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6754.Value == L0) then
    o6754["Value"] = L0
    CallFunction(o6752, "ProcesseStateChange")
  end
end }
o6755 = { [nil] = {}, GetCalculated = function()
  if not (o5873.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6755.SetStateValue(o6755.GetCalculated())
end, StartCalculate = function()
  o6755["Value"] = o6755.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6755.Value == L0) then
    o6755["Value"] = L0
    CallFunction(o6752, "ProcesseStateChange")
  end
end }
o6756 = { [nil] = {}, GetCalculated = function()
  if not (o5874.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6756.SetStateValue(o6756.GetCalculated())
end, StartCalculate = function()
  o6756["Value"] = o6756.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6756.Value == L0) then
    o6756["Value"] = L0
    CallFunction(o6752, "ProcesseStateChange")
  end
end }
S_o6802 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6802, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6802, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6802, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o6802, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/CoxFreighter_Path_1", 1, 1 } }("Code6")
  else
    CallFunction(o6802, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Vessel_AttackTurretsStop(L0.Node, "")
  SetEnemyMatrixElement(2, 6, N)
  SetEnemyMatrixElement(4, 6, N)
  SetEnemyMatrixElement(0, 6, N)
  o5871.SetStateValue(True)
  CallFunction(o6802, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o4860.Node, "DP_hor_1", "DP_hor_1", 0.4, 0.65, 1e+32, "Code12")
  else
    CallFunction(o6802, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
end, SetStateValue_InfiltrateBegin = function(L0, L1)
  o6810.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6805.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6805 = { [nil] = {}, GetCalculated = function()
  if not (o5851.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6805.SetStateValue(o6805.GetCalculated())
end, StartCalculate = function()
  o6805["Value"] = o6805.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6805.Value == L0) then
    DelayedFunction(59, o6805, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6805.Value == L0) then
    o6805["Value"] = L0
    CallFunction(o6802, "ProcesseStateChange")
  end
end }
o6810 = { [nil] = {}, Start = function()
  o6810["Value"] = False
  o5867.StartCalculate()
  o6356.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6810.Value == L0) then
    o6810["Value"] = L0
    o5867.ReCalculate()
    o6356.ReCalculate()
  end
end }
S_o6851 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6851, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6851, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6851, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o6851, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Parlament_PatrolArea", "/Scenario_Dynamic/Navigation/Parlament_TriggerArea", "/Scenario_Dynamic/Navigation/Parlament_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o6851, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6851, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6853.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6852.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6852 = { [nil] = {}, GetCalculated = function()
  if not (o8114.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6852.SetStateValue(o6852.GetCalculated())
end, StartCalculate = function()
  o6852["Value"] = o6852.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6852.Value == L0) then
    o6852["Value"] = L0
    CallFunction(o6851, "ProcesseStateChange")
  end
end }
o6853 = { [nil] = {}, GetCalculated = function()
  if not (o5851.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6853.SetStateValue(o6853.GetCalculated())
end, StartCalculate = function()
  o6853["Value"] = o6853.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6853.Value == L0) then
    DelayedFunction(59.45645, o6853, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6853.Value == L0) then
    o6853["Value"] = L0
    CallFunction(o6851, "ProcesseStateChange")
  end
end }
S_o6899 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6899, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6899, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6899, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o6899, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Parlament_PatrolArea", "/Scenario_Dynamic/Navigation/Parlament_TriggerArea", "/Scenario_Dynamic/Navigation/Parlament_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o6899, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6899, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6901.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6900.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6900 = { [nil] = {}, GetCalculated = function()
  if not (o8114.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6900.SetStateValue(o6900.GetCalculated())
end, StartCalculate = function()
  o6900["Value"] = o6900.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6900.Value == L0) then
    o6900["Value"] = L0
    CallFunction(o6899, "ProcesseStateChange")
  end
end }
o6901 = { [nil] = {}, GetCalculated = function()
  if not (o5851.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6901.SetStateValue(o6901.GetCalculated())
end, StartCalculate = function()
  o6901["Value"] = o6901.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6901.Value == L0) then
    DelayedFunction(59.54454, o6901, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6901.Value == L0) then
    o6901["Value"] = L0
    CallFunction(o6899, "ProcesseStateChange")
  end
end }
S_o6947 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6947, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6947, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6947, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o6947, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Parlament_PatrolArea", "/Scenario_Dynamic/Navigation/Parlament_TriggerArea", "/Scenario_Dynamic/Navigation/Parlament_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o6947, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6947, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6949.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6948.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6948 = { [nil] = {}, GetCalculated = function()
  if not (o8114.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6948.SetStateValue(o6948.GetCalculated())
end, StartCalculate = function()
  o6948["Value"] = o6948.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6948.Value == L0) then
    o6948["Value"] = L0
    CallFunction(o6947, "ProcesseStateChange")
  end
end }
o6949 = { [nil] = {}, GetCalculated = function()
  if not (o5851.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6949.SetStateValue(o6949.GetCalculated())
end, StartCalculate = function()
  o6949["Value"] = o6949.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6949.Value == L0) then
    DelayedFunction(59.786745, o6949, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6949.Value == L0) then
    o6949["Value"] = L0
    CallFunction(o6947, "ProcesseStateChange")
  end
end }
S_o6995 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6995, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6995, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6995, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o6995, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Parlament_PatrolArea", "/Scenario_Dynamic/Navigation/Parlament_TriggerArea", "/Scenario_Dynamic/Navigation/Parlament_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o6995, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6995, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6997.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6996.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6996 = { [nil] = {}, GetCalculated = function()
  if not (o8114.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6996.SetStateValue(o6996.GetCalculated())
end, StartCalculate = function()
  o6996["Value"] = o6996.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6996.Value == L0) then
    o6996["Value"] = L0
    CallFunction(o6995, "ProcesseStateChange")
  end
end }
o6997 = { [nil] = {}, GetCalculated = function()
  if not (o5851.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6997.SetStateValue(o6997.GetCalculated())
end, StartCalculate = function()
  o6997["Value"] = o6997.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6997.Value == L0) then
    DelayedFunction(59.357854, o6997, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6997.Value == L0) then
    o6997["Value"] = L0
    CallFunction(o6995, "ProcesseStateChange")
  end
end }
S_o7043 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7043, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7043, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7043, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o7043, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Parlament_PatrolArea", "/Scenario_Dynamic/Navigation/Parlament_TriggerArea", "/Scenario_Dynamic/Navigation/Parlament_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o7043, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7043, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7045.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o7044.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7044 = { [nil] = {}, GetCalculated = function()
  if not (o8114.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7044.SetStateValue(o7044.GetCalculated())
end, StartCalculate = function()
  o7044["Value"] = o7044.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7044.Value == L0) then
    o7044["Value"] = L0
    CallFunction(o7043, "ProcesseStateChange")
  end
end }
o7045 = { [nil] = {}, GetCalculated = function()
  if not (o5851.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7045.SetStateValue(o7045.GetCalculated())
end, StartCalculate = function()
  o7045["Value"] = o7045.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7045.Value == L0) then
    DelayedFunction(60.15444, o7045, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7045.Value == L0) then
    o7045["Value"] = L0
    CallFunction(o7043, "ProcesseStateChange")
  end
end }
S_o7091 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7091, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7091, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7091, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o7091, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Parlament_PatrolArea", "/Scenario_Dynamic/Navigation/Parlament_TriggerArea", "/Scenario_Dynamic/Navigation/Parlament_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o7091, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7091, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7093.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o7092.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7092 = { [nil] = {}, GetCalculated = function()
  if not (o8114.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7092.SetStateValue(o7092.GetCalculated())
end, StartCalculate = function()
  o7092["Value"] = o7092.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7092.Value == L0) then
    o7092["Value"] = L0
    CallFunction(o7091, "ProcesseStateChange")
  end
end }
o7093 = { [nil] = {}, GetCalculated = function()
  if not (o5851.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7093.SetStateValue(o7093.GetCalculated())
end, StartCalculate = function()
  o7093["Value"] = o7093.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7093.Value == L0) then
    DelayedFunction(60.4874, o7093, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7093.Value == L0) then
    o7093["Value"] = L0
    CallFunction(o7091, "ProcesseStateChange")
  end
end }
S_o7139 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7139, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7139, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7139, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  Body_SetKineticShield(L0.Node, 0, 0.77141)
  Body_SetEmpShield(L0.Node, 0.414741)
  CallFunction(o7139, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/CoxFregate1_Path_1", 1, 1 } }("Code7")
  else
    CallFunction(o7139, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 2 } }("Code8")
  else
    CallFunction(o7139, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code9")
  else
    CallFunction(o7139, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7139, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7139, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7142.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o7143.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7142 = { [nil] = {}, GetCalculated = function()
  if not (o5851.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7142.SetStateValue(o7142.GetCalculated())
end, StartCalculate = function()
  o7142["Value"] = o7142.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7142.Value == L0) then
    DelayedFunction(60.548643, o7142, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7142.Value == L0) then
    o7142["Value"] = L0
    CallFunction(o7139, "ProcesseStateChange")
  end
end }
o7143 = { [nil] = {}, GetCalculated = function()
  if not (o8114.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7143.SetStateValue(o7143.GetCalculated())
end, StartCalculate = function()
  o7143["Value"] = o7143.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7143.Value == L0) then
    o7143["Value"] = L0
    CallFunction(o7139, "ProcesseStateChange")
  end
end }
S_o7189 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7189, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7189, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7189, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  Body_SetEmpShield(L0.Node, 0.814741)
  CallFunction(o7189, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/CoxFregate2_Path_1", 1, 1 } }("Code6")
  else
    CallFunction(o7189, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 2 } }("Code7")
  else
    CallFunction(o7189, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code8")
  else
    CallFunction(o7189, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7189, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7189, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7192.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o7193.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7192 = { [nil] = {}, GetCalculated = function()
  if not (o5851.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7192.SetStateValue(o7192.GetCalculated())
end, StartCalculate = function()
  o7192["Value"] = o7192.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7192.Value == L0) then
    DelayedFunction(60.917, o7192, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7192.Value == L0) then
    o7192["Value"] = L0
    CallFunction(o7189, "ProcesseStateChange")
  end
end }
o7193 = { [nil] = {}, GetCalculated = function()
  if not (o8114.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7193.SetStateValue(o7193.GetCalculated())
end, StartCalculate = function()
  o7193["Value"] = o7193.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7193.Value == L0) then
    o7193["Value"] = L0
    CallFunction(o7189, "ProcesseStateChange")
  end
end }
S_o7239 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7239, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7239, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7239, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o7239, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Parlament_PatrolArea", "/Scenario_Dynamic/Navigation/Parlament_TriggerArea", "/Scenario_Dynamic/Navigation/Parlament_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o7239, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7239, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7241.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o7240.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7240 = { [nil] = {}, GetCalculated = function()
  if not (o8114.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7240.SetStateValue(o7240.GetCalculated())
end, StartCalculate = function()
  o7240["Value"] = o7240.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7240.Value == L0) then
    o7240["Value"] = L0
    CallFunction(o7239, "ProcesseStateChange")
  end
end }
o7241 = { [nil] = {}, GetCalculated = function()
  if not (o5851.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7241.SetStateValue(o7241.GetCalculated())
end, StartCalculate = function()
  o7241["Value"] = o7241.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7241.Value == L0) then
    DelayedFunction(144.45645, o7241, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7241.Value == L0) then
    o7241["Value"] = L0
    CallFunction(o7239, "ProcesseStateChange")
  end
end }
S_o7287 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7287, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7287, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7287, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o7287, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Parlament_PatrolArea", "/Scenario_Dynamic/Navigation/Parlament_TriggerArea", "/Scenario_Dynamic/Navigation/Parlament_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o7287, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7287, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7289.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o7288.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7288 = { [nil] = {}, GetCalculated = function()
  if not (o8114.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7288.SetStateValue(o7288.GetCalculated())
end, StartCalculate = function()
  o7288["Value"] = o7288.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7288.Value == L0) then
    o7288["Value"] = L0
    CallFunction(o7287, "ProcesseStateChange")
  end
end }
o7289 = { [nil] = {}, GetCalculated = function()
  if not (o5851.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7289.SetStateValue(o7289.GetCalculated())
end, StartCalculate = function()
  o7289["Value"] = o7289.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7289.Value == L0) then
    DelayedFunction(144.54454, o7289, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7289.Value == L0) then
    o7289["Value"] = L0
    CallFunction(o7287, "ProcesseStateChange")
  end
end }
S_o7335 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7335, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7335, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7335, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o7335, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Parlament_PatrolArea", "/Scenario_Dynamic/Navigation/Parlament_TriggerArea", "/Scenario_Dynamic/Navigation/Parlament_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o7335, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7335, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7337.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o7336.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7336 = { [nil] = {}, GetCalculated = function()
  if not (o8114.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7336.SetStateValue(o7336.GetCalculated())
end, StartCalculate = function()
  o7336["Value"] = o7336.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7336.Value == L0) then
    o7336["Value"] = L0
    CallFunction(o7335, "ProcesseStateChange")
  end
end }
o7337 = { [nil] = {}, GetCalculated = function()
  if not (o5851.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7337.SetStateValue(o7337.GetCalculated())
end, StartCalculate = function()
  o7337["Value"] = o7337.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7337.Value == L0) then
    DelayedFunction(144.78675, o7337, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7337.Value == L0) then
    o7337["Value"] = L0
    CallFunction(o7335, "ProcesseStateChange")
  end
end }
S_o7383 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7383, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7383, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7383, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o7383, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Parlament_PatrolArea", "/Scenario_Dynamic/Navigation/Parlament_TriggerArea", "/Scenario_Dynamic/Navigation/Parlament_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o7383, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7383, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7385.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o7384.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7384 = { [nil] = {}, GetCalculated = function()
  if not (o8114.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7384.SetStateValue(o7384.GetCalculated())
end, StartCalculate = function()
  o7384["Value"] = o7384.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7384.Value == L0) then
    o7384["Value"] = L0
    CallFunction(o7383, "ProcesseStateChange")
  end
end }
o7385 = { [nil] = {}, GetCalculated = function()
  if not (o5851.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7385.SetStateValue(o7385.GetCalculated())
end, StartCalculate = function()
  o7385["Value"] = o7385.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7385.Value == L0) then
    DelayedFunction(148.7565, o7385, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7385.Value == L0) then
    o7385["Value"] = L0
    CallFunction(o7383, "ProcesseStateChange")
  end
end }
S_o7431 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7431, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7431, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7431, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o7431, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Parlament_PatrolArea", "/Scenario_Dynamic/Navigation/Parlament_TriggerArea", "/Scenario_Dynamic/Navigation/Parlament_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o7431, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7431, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7433.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o7432.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7432 = { [nil] = {}, GetCalculated = function()
  if not (o8114.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7432.SetStateValue(o7432.GetCalculated())
end, StartCalculate = function()
  o7432["Value"] = o7432.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7432.Value == L0) then
    o7432["Value"] = L0
    CallFunction(o7431, "ProcesseStateChange")
  end
end }
o7433 = { [nil] = {}, GetCalculated = function()
  if not (o6358.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7433.SetStateValue(o7433.GetCalculated())
end, StartCalculate = function()
  o7433["Value"] = o7433.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7433.Value == L0) then
    DelayedFunction(20, o7433, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7433.Value == L0) then
    o7433["Value"] = L0
    CallFunction(o7431, "ProcesseStateChange")
  end
end }
S_o7479 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7479, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7479, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7479, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o7479, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Parlament_PatrolArea", "/Scenario_Dynamic/Navigation/Parlament_TriggerArea", "/Scenario_Dynamic/Navigation/Parlament_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o7479, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7479, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7481.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o7480.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7480 = { [nil] = {}, GetCalculated = function()
  if not (o8114.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7480.SetStateValue(o7480.GetCalculated())
end, StartCalculate = function()
  o7480["Value"] = o7480.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7480.Value == L0) then
    o7480["Value"] = L0
    CallFunction(o7479, "ProcesseStateChange")
  end
end }
o7481 = { [nil] = {}, GetCalculated = function()
  if not (o6358.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7481.SetStateValue(o7481.GetCalculated())
end, StartCalculate = function()
  o7481["Value"] = o7481.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7481.Value == L0) then
    DelayedFunction(20, o7481, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7481.Value == L0) then
    o7481["Value"] = L0
    CallFunction(o7479, "ProcesseStateChange")
  end
end }
S_o7527 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7527, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7527, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7527, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o7527, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Parlament_PatrolArea", "/Scenario_Dynamic/Navigation/Parlament_TriggerArea", "/Scenario_Dynamic/Navigation/Parlament_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o7527, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7527, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7529.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o7528.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7528 = { [nil] = {}, GetCalculated = function()
  if not (o8114.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7528.SetStateValue(o7528.GetCalculated())
end, StartCalculate = function()
  o7528["Value"] = o7528.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7528.Value == L0) then
    o7528["Value"] = L0
    CallFunction(o7527, "ProcesseStateChange")
  end
end }
o7529 = { [nil] = {}, GetCalculated = function()
  if not (o6358.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7529.SetStateValue(o7529.GetCalculated())
end, StartCalculate = function()
  o7529["Value"] = o7529.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7529.Value == L0) then
    DelayedFunction(20, o7529, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7529.Value == L0) then
    o7529["Value"] = L0
    CallFunction(o7527, "ProcesseStateChange")
  end
end }
S_o7575 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Vessel_CollisionTerrain(L0.Node, 0)
  ShieldedBody_MakeInvulnerable(L0.Node)
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7575, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7575, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code5")
  else
    CallFunction(o7575, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o7575, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7575, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  StopAllActiveBehaviours(L0)
  CallFunction(o7575, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TriOps_Path_1", 1, 1 } }("Code9")
  else
    CallFunction(o7575, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code10")
  else
    CallFunction(o7575, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "WaitWithHeading", "/Scenario_Dynamic/Navigation/TriOps_Path_1", "pos_2", 15 } }("Code11")
  else
    CallFunction(o7575, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code12")
  else
    CallFunction(o7575, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7575, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  StopAllActiveBehaviours(L0)
  CallFunction(o7575, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code15")
  else
    CallFunction(o7575, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7575, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  StopAllActiveBehaviours(L0)
  Vessel_AttackTurrets(L0.Node, "", "Ghost", "", "", "")
  CallFunction(o7575, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code19")
  else
    CallFunction(o7575, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7575, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  StopAllActiveBehaviours(L0)
  ShieldedBody_MakeVulnerable(L0.Node)
  Vessel_AttackTurrets(L0.Node, "", "Ghost_4h3", "", "", "")
  Body_SetKineticShield(L0.Node, 0, 0.6)
  CallFunction(o7575, "Code24")
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code25")
  else
    CallFunction(o7575, "Code25")
  end
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7575, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o7576.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7576 = { [nil] = {}, GetCalculated = function()
  if not (o5863.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7576.SetStateValue(o7576.GetCalculated())
end, StartCalculate = function()
  o7576["Value"] = o7576.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7576.Value == L0) then
    o7576["Value"] = L0
    CallFunction(o7575, "ProcesseStateChange")
  end
end }
S_o7630 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7630, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7630, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7630, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o7630, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o7640.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7632.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7632 = { [nil] = {}, GetCalculated = function()
  if not (o5865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7632.SetStateValue(o7632.GetCalculated())
end, StartCalculate = function()
  o7632["Value"] = o7632.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7632.Value == L0) then
    DelayedFunction(18, o7632, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7632.Value == L0) then
    o7632["Value"] = L0
    CallFunction(o7630, "ProcesseStateChange")
  end
end }
o7640 = { [nil] = {}, Start = function()
  o7640["Value"] = False
  o5870.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7640.Value == L0) then
    o7640["Value"] = L0
    o5870.ReCalculate()
  end
end }
S_o7669 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7669, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7669, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7669, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o7669, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o7679.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7671.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7671 = { [nil] = {}, GetCalculated = function()
  if not (o5865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7671.SetStateValue(o7671.GetCalculated())
end, StartCalculate = function()
  o7671["Value"] = o7671.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7671.Value == L0) then
    DelayedFunction(18, o7671, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7671.Value == L0) then
    o7671["Value"] = L0
    CallFunction(o7669, "ProcesseStateChange")
  end
end }
o7679 = { [nil] = {}, Start = function()
  o7679["Value"] = False
  o5870.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7679.Value == L0) then
    o7679["Value"] = L0
    o5870.ReCalculate()
  end
end }
S_o7708 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7708, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7708, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7708, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o7708, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o7718.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7710.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7710 = { [nil] = {}, GetCalculated = function()
  if not (o5865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7710.SetStateValue(o7710.GetCalculated())
end, StartCalculate = function()
  o7710["Value"] = o7710.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7710.Value == L0) then
    DelayedFunction(18, o7710, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7710.Value == L0) then
    o7710["Value"] = L0
    CallFunction(o7708, "ProcesseStateChange")
  end
end }
o7718 = { [nil] = {}, Start = function()
  o7718["Value"] = False
  o5870.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7718.Value == L0) then
    o7718["Value"] = L0
    o5870.ReCalculate()
  end
end }
S_o7747 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7747, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7747, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7747, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o7747, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o7757.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7749.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7749 = { [nil] = {}, GetCalculated = function()
  if not (o5865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7749.SetStateValue(o7749.GetCalculated())
end, StartCalculate = function()
  o7749["Value"] = o7749.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7749.Value == L0) then
    DelayedFunction(18, o7749, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7749.Value == L0) then
    o7749["Value"] = L0
    CallFunction(o7747, "ProcesseStateChange")
  end
end }
o7757 = { [nil] = {}, Start = function()
  o7757["Value"] = False
  o5870.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7757.Value == L0) then
    o7757["Value"] = L0
    o5870.ReCalculate()
  end
end }
S_o7786 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7786, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7786, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7786, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o7786, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o7796.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7788.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7788 = { [nil] = {}, GetCalculated = function()
  if not (o5865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7788.SetStateValue(o7788.GetCalculated())
end, StartCalculate = function()
  o7788["Value"] = o7788.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7788.Value == L0) then
    DelayedFunction(18, o7788, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7788.Value == L0) then
    o7788["Value"] = L0
    CallFunction(o7786, "ProcesseStateChange")
  end
end }
o7796 = { [nil] = {}, Start = function()
  o7796["Value"] = False
  o5870.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7796.Value == L0) then
    o7796["Value"] = L0
    o5870.ReCalculate()
  end
end }
S_o7825 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7825, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7825, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7825, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o7825, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o7835.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7827.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7827 = { [nil] = {}, GetCalculated = function()
  if not (o5865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7827.SetStateValue(o7827.GetCalculated())
end, StartCalculate = function()
  o7827["Value"] = o7827.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7827.Value == L0) then
    DelayedFunction(18, o7827, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7827.Value == L0) then
    o7827["Value"] = L0
    CallFunction(o7825, "ProcesseStateChange")
  end
end }
o7835 = { [nil] = {}, Start = function()
  o7835["Value"] = False
  o5870.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7835.Value == L0) then
    o7835["Value"] = L0
    o5870.ReCalculate()
  end
end }
S_o7864 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7864, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7864, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7864, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o7864, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o7874.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7866.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7866 = { [nil] = {}, GetCalculated = function()
  if not (o5865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7866.SetStateValue(o7866.GetCalculated())
end, StartCalculate = function()
  o7866["Value"] = o7866.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7866.Value == L0) then
    DelayedFunction(18, o7866, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7866.Value == L0) then
    o7866["Value"] = L0
    CallFunction(o7864, "ProcesseStateChange")
  end
end }
o7874 = { [nil] = {}, Start = function()
  o7874["Value"] = False
  o5870.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7874.Value == L0) then
    o7874["Value"] = L0
    o5870.ReCalculate()
  end
end }
S_o7903 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7903, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7903, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7903, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o7903, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o7913.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7905.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7905 = { [nil] = {}, GetCalculated = function()
  if not (o5865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7905.SetStateValue(o7905.GetCalculated())
end, StartCalculate = function()
  o7905["Value"] = o7905.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7905.Value == L0) then
    DelayedFunction(18, o7905, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7905.Value == L0) then
    o7905["Value"] = L0
    CallFunction(o7903, "ProcesseStateChange")
  end
end }
o7913 = { [nil] = {}, Start = function()
  o7913["Value"] = False
  o5870.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7913.Value == L0) then
    o7913["Value"] = L0
    o5870.ReCalculate()
  end
end }
S_o7942 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7942, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7942, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7942, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o7942, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o7942, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o7957.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7944.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7944 = { [nil] = {}, GetCalculated = function()
  if not (o5865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7944.SetStateValue(o7944.GetCalculated())
end, StartCalculate = function()
  o7944["Value"] = o7944.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7944.Value == L0) then
    DelayedFunction(18, o7944, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7944.Value == L0) then
    o7944["Value"] = L0
    CallFunction(o7942, "ProcesseStateChange")
  end
end }
o7957 = { [nil] = {}, Start = function()
  o7957["Value"] = False
  o5870.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7957.Value == L0) then
    o7957["Value"] = L0
    o5870.ReCalculate()
  end
end }
S_o7990 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7990, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7990, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7990, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o7990, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o7990, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o8005.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7992.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7992 = { [nil] = {}, GetCalculated = function()
  if not (o5865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7992.SetStateValue(o7992.GetCalculated())
end, StartCalculate = function()
  o7992["Value"] = o7992.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7992.Value == L0) then
    DelayedFunction(18, o7992, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7992.Value == L0) then
    o7992["Value"] = L0
    CallFunction(o7990, "ProcesseStateChange")
  end
end }
o8005 = { [nil] = {}, Start = function()
  o8005["Value"] = False
  o5870.StartCalculate()
end, SetStateValue = function(L0)
  if not (o8005.Value == L0) then
    o8005["Value"] = L0
    o5870.ReCalculate()
  end
end }
S_o8038 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8038, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8038, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8038, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o8038, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter3_PatrolArea", "/Scenario_Dynamic/Navigation/Chapter3_TriggerArea", "/Scenario_Dynamic/Navigation/Chapter3_FollowArea", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o8038, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmpJump = function(L0, L1)
  o8055.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o8040.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o8040 = { [nil] = {}, GetCalculated = function()
  if not (o5865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8040.SetStateValue(o8040.GetCalculated())
end, StartCalculate = function()
  o8040["Value"] = o8040.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8040.Value == L0) then
    DelayedFunction(18, o8040, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o8040.Value == L0) then
    o8040["Value"] = L0
    CallFunction(o8038, "ProcesseStateChange")
  end
end }
o8055 = { [nil] = {}, Start = function()
  o8055["Value"] = False
  o5870.StartCalculate()
end, SetStateValue = function(L0)
  if not (o8055.Value == L0) then
    o8055["Value"] = L0
    o5870.ReCalculate()
  end
end }
S_o8086 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o4929.Node)
  CallFunction(o8086, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o8091 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o5262.Node)
  CallFunction(o8091, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o8096 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o5151.Node)
  CallFunction(o8096, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o8101 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o5040.Node)
  CallFunction(o8101, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o8106 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o5373.Node)
  CallFunction(o8106, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o8111 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 0, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 0, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o8111, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o8114.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o8114 = { [nil] = {}, Start = function()
  o8114["Value"] = False
  o6852.StartCalculate()
  o6900.StartCalculate()
  o6948.StartCalculate()
  o6996.StartCalculate()
  o7044.StartCalculate()
  o7092.StartCalculate()
  o7143.StartCalculate()
  o7193.StartCalculate()
  o7240.StartCalculate()
  o7288.StartCalculate()
  o7336.StartCalculate()
  o7384.StartCalculate()
  o7432.StartCalculate()
  o7480.StartCalculate()
  o7528.StartCalculate()
end, SetStateValue = function(L0)
  if not (o8114.Value == L0) then
    o8114["Value"] = L0
    o6852.ReCalculate()
    o6900.ReCalculate()
    o6948.ReCalculate()
    o6996.ReCalculate()
    o7044.ReCalculate()
    o7092.ReCalculate()
    o7143.ReCalculate()
    o7193.ReCalculate()
    o7240.ReCalculate()
    o7288.ReCalculate()
    o7336.ReCalculate()
    o7384.ReCalculate()
    o7432.ReCalculate()
    o7480.ReCalculate()
    o7528.ReCalculate()
  end
end }
S_o8116 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o6353.Node)
  CallFunction(o8116, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o8121 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o7575.Node)
  CallFunction(o8121, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o8124.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o8124 = { [nil] = {}, Start = function()
  o8124["Value"] = False
  o8185.StartCalculate()
  o8200.StartCalculate()
end, SetStateValue = function(L0)
  if not (o8124.Value == L0) then
    o8124["Value"] = L0
    o8185.ReCalculate()
    o8200.ReCalculate()
  end
end }
S_o8126 = { [nil] = {}, Start = function(L0)

end }
S_o8127 = { [nil] = {}, Start = function(L0)

end }
S_o8128 = { [nil] = {}, Start = function(L0)

end }
S_o8129 = { [nil] = {}, Start = function(L0)

end }
o8131 = FormationLib.CreateFormation("InverseTriangle", "", "", "", 35, 35)
S_o8132 = { [nil] = {}, Start = function(L0)

end }
S_o8135 = { [nil] = {}, Start = function(L0)

end }
S_o8136 = { [nil] = {}, Start = function(L0)

end }
S_o8137 = { [nil] = {}, Start = function(L0)

end }
S_o8138 = { [nil] = {}, Start = function(L0)

end }
S_o8139 = { [nil] = {}, Start = function(L0)

end }
S_o8140 = { [nil] = {}, Start = function(L0)

end }
S_o8141 = { [nil] = {}, Start = function(L0)

end }
S_o8142 = { [nil] = {}, Start = function(L0)

end }
S_o8143 = { [nil] = {}, Start = function(L0)

end }
S_o8144 = { [nil] = {}, Start = function(L0)

end }
S_o8145 = { [nil] = {}, Start = function(L0)

end }
S_o8146 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "atmo")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  FormationLib.PlaceFormationPath(o8130, o8131, "/IngameSequences/Navigation/PlayerPath_1")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o8146, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.1, "Code9")
  else
    CallFunction(o8146, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 5, "MMMN", 0)
  CallFunction(o8146, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o8130, o8131, "/IngameSequences/Navigation/PlayerPath_1", "pos_1", "pos_2", 0.25, 1, "Code11")
  else
    CallFunction(o8146, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/Directory_SoolsUnits/Ghost_4h3", 2, "MMMN", 0)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_3", 5, "MMMN", 0)
  CallFunction(o8146, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o8130, o8131, "/IngameSequences/Navigation/PlayerPath_1", "pos_2", "pos_3", 0.25, 1, "Code14")
  else
    CallFunction(o8146, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code15")
  else
    CallFunction(o8146, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Director_EndCutscene(L0.Node)
  o5851.SetStateValue(True)
  Game_SetWayPoint(GetGameNode(), o8086.Node)
  CallFunction(o5906, "Code5")
  CallFunction(o5956, "Code5")
  CallFunction(o6006, "Code5")
  CallFunction(o6056, "Code5")
  SED_SetTaskTextKey(1306, -1, -1)
  CallFunction(o8146, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o8150 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.25, "Code1")
  else
    CallFunction(o8150, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o6106.Node, o5845.Node, 196)
  SendRadioMessageTake(o6106.Node, o5845.Node, 197)
  CallFunction(o8150, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o8153 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8153, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  o5850.SetStateValue(True)
  SetEnemyMatrixElement(1, 3, F)
  SetEnemyMatrixElement(1, 4, F)
  SetEnemyMatrixElement(3, 1, F)
  SetEnemyMatrixElement(4, 1, F)
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_4", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/Directory_CoxsUnits/cox_fregatte_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o8153, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.1, "Code13")
  else
    CallFunction(o8153, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Game_PlayMusic(GetGameNode(), "agressive")
  CallFunction(o8153, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 20, "Code15")
  else
    CallFunction(o8153, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Director_EndCutscene(L0.Node)
  SetEnemyMatrixElement(1, 3, E)
  SetEnemyMatrixElement(1, 4, E)
  SetEnemyMatrixElement(3, 1, E)
  SetEnemyMatrixElement(4, 1, E)
  FormationLib.PlaceFormationPath(o8133, o8131, "/IngameSequences/Navigation/GhostPath_1")
  o5863.SetStateValue(True)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  SED_SetTaskTextKey(1307, -1, -1)
  CallFunction(o8153, "Code24")
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o8154.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o8154 = { [nil] = {}, GetCalculated = function()
  if not (o5851.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8154.SetStateValue(o8154.GetCalculated())
end, StartCalculate = function()
  o8154["Value"] = o8154.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8154.Value == L0) then
    DelayedFunction(59, o8154, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o8154.Value == L0) then
    o8154["Value"] = L0
    CallFunction(o8153, "ProcesseStateChange")
  end
end }
S_o8158 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8158, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o5845.Node, o5845.Node, 206)
  SendRadioMessageTake(o6106.Node, o5845.Node, 207)
  CallFunction(o8158, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o8159.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o8159 = { [nil] = {}, GetCalculated = function()
  if not (o5850.Value ~= True) then
    if not (o5862.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o8159.SetStateValue(o8159.GetCalculated())
end, StartCalculate = function()
  o8159["Value"] = o8159.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8159.Value == L0) then
    DelayedFunction(1.1, o8159, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o8159.Value == L0) then
    o8159["Value"] = L0
    CallFunction(o8158, "ProcesseStateChange")
  end
end }
S_o8161 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8161, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o6106.Node, o5845.Node, 1155)
  SendRadioMessageTake(o5845.Node, o5845.Node, 206)
  SendRadioMessageTake(o6106.Node, o5845.Node, 207)
  CallFunction(o8161, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o8162.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o8162 = { [nil] = {}, GetCalculated = function()
  if not (o5850.Value ~= True) then
    if not (o5862.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o8162.SetStateValue(o8162.GetCalculated())
end, StartCalculate = function()
  o8162["Value"] = o8162.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8162.Value == L0) then
    DelayedFunction(1.1, o8162, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o8162.Value == L0) then
    o8162["Value"] = L0
    CallFunction(o8161, "ProcesseStateChange")
  end
end }
S_o8164 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8164, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  o8173.SetStateValue(True)
  CallFunction(o8164, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 9, "Code3")
  else
    CallFunction(o8164, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_5", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/Directory_SoolsUnits/Ghost_4h3", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o8164, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.25, "Code10")
  else
    CallFunction(o8164, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_6", 5, "MMMN", 0)
  SendRadioMessageTake(o6106.Node, o5845.Node, 218)
  CallFunction(o8164, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3, "Code13")
  else
    CallFunction(o8164, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  CallFunction(o7575, "Code7")
  CallFunction(o8164, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4.5, "Code15")
  else
    CallFunction(o8164, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  SendRadioMessageTake(o6106.Node, o5845.Node, 1156)
  CallFunction(o6106, "Code8")
  CallFunction(o8164, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code18")
  else
    CallFunction(o8164, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_7", 5, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/Directory_CoxsUnits/TriOps", 3, "MMMN", 0)
  CallFunction(o8164, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 14, "Code21")
  else
    CallFunction(o8164, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  Director_EndCutscene(L0.Node)
  Game_SetWayPoint(GetGameNode(), o8111.Node)
  CallFunction(o6106, "Code13")
  CallFunction(o7575, "Code13")
  FormationLib.PlaceFormationPath(o8133, o8131, "/IngameSequences/Navigation/GhostPath_2")
  FormationLib.PlaceFormationPath(o8134, o8131, "/IngameSequences/Navigation/TriOpsPath_1")
  CallFunction(o5906, "Code7")
  CallFunction(o5956, "Code7")
  CallFunction(o6006, "Code7")
  CallFunction(o6056, "Code7")
  SED_SetTaskTextKey(1310, -1, -1)
  CallFunction(o8164, "Code32")
end, Code32 = function(L0)
  L0["CodeIndex"] = 32
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o8165.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o8165 = { [nil] = {}, GetCalculated = function()
  if not (o6361.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8165.SetStateValue(o8165.GetCalculated())
end, StartCalculate = function()
  o8165["Value"] = o8165.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8165.Value == L0) then
    DelayedFunction(10, o8165, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o8165.Value == L0) then
    o8165["Value"] = L0
    CallFunction(o8164, "ProcesseStateChange")
  end
end }
o8173 = { [nil] = {}, Start = function()
  o8173["Value"] = False
  o5877.StartCalculate()
end, SetStateValue = function(L0)
  if not (o8173.Value == L0) then
    o8173["Value"] = L0
    o5877.ReCalculate()
  end
end }
S_o8174 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8174, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  FormationLib.PlaceFormationPath(o8130, o8131, "/IngameSequences/Navigation/PlayerPath_2")
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/Directory_CoxsUnits/TriOps", 0, "MMMN", 0)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_8", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o8174, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.9, "Code9")
  else
    CallFunction(o8174, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  CallFunction(o6106, "Code16")
  CallFunction(o7575, "Code16")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_9", 5, "MMMN", 0)
  CallFunction(o8174, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4.75, "Code13")
  else
    CallFunction(o8174, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/Directory_SoolsUnits/Ghost_4h3", 5, "MMMN", 0)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_10", 6, "MMMN", 0)
  CallFunction(o8174, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5.75, "Code16")
  else
    CallFunction(o8174, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/Directory_CoxsUnits/TriOps", 4, "MMMN", 0)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_11", 8, "MMMN", 0)
  CallFunction(o8174, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 9, "Code19")
  else
    CallFunction(o8174, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  Camera_Cut(L0.Node, 1)
  o5872.SetStateValue(True)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_12", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  CallFunction(o8174, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code24")
  else
    CallFunction(o8174, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_13", 4, "MMMN", 0)
  CallFunction(o8174, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4.5, "Code26")
  else
    CallFunction(o8174, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/Directory_SoolsUnits/atl_fregatte_1", 2, "MMMN", 0)
  Director_EndCutscene(L0.Node)
  CallFunction(o8174, "Code28")
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code29")
  else
    CallFunction(o8174, "Code29")
  end
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  SetEnemyMatrixElement(2, 3, E)
  SetEnemyMatrixElement(3, 2, E)
  SetEnemyMatrixElement(2, 4, E)
  SetEnemyMatrixElement(4, 2, E)
  Game_SetWayPoint(GetGameNode(), o8121.Node)
  o5873.SetStateValue(True)
  CallFunction(o5906, "Code9")
  CallFunction(o5956, "Code9")
  CallFunction(o6006, "Code9")
  CallFunction(o6056, "Code9")
  SED_SetTaskTextKey(1311, -1, -1)
  CallFunction(o8174, "Code40")
end, Code40 = function(L0)
  L0["CodeIndex"] = 40
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o8175.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o8175 = { [nil] = {}, GetCalculated = function()
  if not (o5870.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8175.SetStateValue(o8175.GetCalculated())
end, StartCalculate = function()
  o8175["Value"] = o8175.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8175.Value == L0) then
    DelayedFunction(2, o8175, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o8175.Value == L0) then
    o8175["Value"] = L0
    CallFunction(o8174, "ProcesseStateChange")
  end
end }
S_o8184 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8184, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Game_PlayMusic(GetGameNode(), "track3")
  Director_BeginCutscene(L0.Node)
  CallFunction(o7575, "Code20")
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_Cut(L0.Node, 0)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_14", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/Directory_CoxsUnits/TriOps", 0, "MMMN", 0)
  CallFunction(o8184, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.9, "Code10")
  else
    CallFunction(o8184, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_15", 15, "MMMN", 0)
  CallFunction(o8184, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 25, "Code12")
  else
    CallFunction(o8184, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  CallFunction(o6106, "Code21")
  CallFunction(o8184, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code14")
  else
    CallFunction(o8184, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/Directory_SoolsUnits/Ghost_4h3", 2, "MMMN", 0)
  CallFunction(o8184, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code16")
  else
    CallFunction(o8184, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  SendRadioMessageTake(o5845.Node, o5845.Node, 222)
  CallFunction(o8184, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code18")
  else
    CallFunction(o8184, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  Director_EndCutscene(L0.Node)
  o5874.SetStateValue(True)
  CallFunction(o8184, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code21")
  else
    CallFunction(o8184, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  o5876.SetStateValue(True)
  CallFunction(o8184, "Code22")
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o8185.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o8185 = { [nil] = {}, GetCalculated = function()
  if not (o8124.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8185.SetStateValue(o8185.GetCalculated())
end, StartCalculate = function()
  o8185["Value"] = o8185.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8185.Value == L0) then
    DelayedFunction(2, o8185, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o8185.Value == L0) then
    o8185["Value"] = L0
    CallFunction(o8184, "ProcesseStateChange")
  end
end }
S_o8193 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8193, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code2")
  else
    CallFunction(o8193, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o6106.Node, o5845.Node, 213)
  SendRadioMessageTake(o5845.Node, o5845.Node, 219)
  CallFunction(o8193, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 20, "Code5")
  else
    CallFunction(o8193, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Game_PlayMusic(GetGameNode(), "track4")
  SendRadioMessageTake(o6106.Node, o5845.Node, 1157)
  CallFunction(o8193, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6, "Code8")
  else
    CallFunction(o8193, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  Game_PlayMusic(GetGameNode(), "track5")
  CallFunction(o8193, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o8194.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o8194 = { [nil] = {}, GetCalculated = function()
  if not (o5870.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8194.SetStateValue(o8194.GetCalculated())
end, StartCalculate = function()
  o8194["Value"] = o8194.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8194.Value == L0) then
    DelayedFunction(2, o8194, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o8194.Value == L0) then
    o8194["Value"] = L0
    CallFunction(o8193, "ProcesseStateChange")
  end
end }
S_o8199 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8199, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.1, "Code2")
  else
    CallFunction(o8199, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o6106.Node, o5845.Node, 220)
  SendRadioMessageTake(o5845.Node, o5845.Node, 221)
  CallFunction(o8199, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o8200.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o8200 = { [nil] = {}, GetCalculated = function()
  if not (o8124.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8200.SetStateValue(o8200.GetCalculated())
end, StartCalculate = function()
  o8200["Value"] = o8200.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8200.Value == L0) then
    DelayedFunction(2, o8200, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o8200.Value == L0) then
    o8200["Value"] = L0
    CallFunction(o8199, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 330)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "Bunker_A1", S_o30)
  o64 = BindEasy(Node_Find("/Scenario_Static/Object"), "Bunker_A2", S_o64)
  o98 = BindEasy(Node_Find("/Scenario_Static/Object"), "Bunker_B1", S_o98)
  o132 = BindEasy(Node_Find("/Scenario_Static/Object"), "Bunker_B2", S_o132)
  o166 = BindEasy(Node_Find("/Scenario_Static/Object"), "Bunker_C1", S_o166)
  o200 = BindEasy(Node_Find("/Scenario_Static/Object"), "Bunker_C2", S_o200)
  o234 = BindEasy(Node_Find("/Scenario_Static/Object"), "Bunker_D1", S_o234)
  o268 = BindEasy(Node_Find("/Scenario_Static/Object"), "Bunker_D2", S_o268)
  o302 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dock_1", S_o302)
  o336 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_triumph_1", S_o336)
  o370 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_obelisk_1", S_o370)
  o404 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_1", S_o404)
  o438 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_3", S_o438)
  o472 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_2", S_o472)
  o506 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_4", S_o506)
  o540 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_5", S_o540)
  o574 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_6", S_o574)
  o608 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_7", S_o608)
  o642 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_8", S_o642)
  o676 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_11", S_o676)
  o710 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_9", S_o710)
  o744 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_12", S_o744)
  o778 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_10", S_o778)
  o812 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_13", S_o812)
  o846 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_14", S_o846)
  o880 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_15", S_o880)
  o914 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_16", S_o914)
  o948 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrsG_1", S_o948)
  o982 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrsG_2", S_o982)
  o1016 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrsG_3", S_o1016)
  o1050 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrsG_4", S_o1050)
  o1084 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrend_1", S_o1084)
  o1118 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrend_2", S_o1118)
  o1152 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrsK_4", S_o1152)
  o1186 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrsG_5", S_o1186)
  o1220 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabG_1", S_o1220)
  o1254 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabG_2", S_o1254)
  o1288 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabG_3", S_o1288)
  o1322 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabG_4", S_o1322)
  o1356 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabG_5", S_o1356)
  o1390 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabG_6", S_o1390)
  o1424 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabG_7", S_o1424)
  o1458 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_1", S_o1458)
  o1492 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_2", S_o1492)
  o1526 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_3", S_o1526)
  o1560 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_4", S_o1560)
  o1594 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_1", S_o1594)
  o1628 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_2", S_o1628)
  o1662 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_3", S_o1662)
  o1696 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_4", S_o1696)
  o1730 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_5", S_o1730)
  o1764 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_6", S_o1764)
  o1798 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_7", S_o1798)
  o1832 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_8", S_o1832)
  o1866 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_5", S_o1866)
  o1900 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_6", S_o1900)
  o1934 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_7", S_o1934)
  o1968 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_8", S_o1968)
  o2002 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock3_1", S_o2002)
  o2036 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb2_1_1", S_o2036)
  o2070 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb2_2_1", S_o2070)
  o2104 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb2_3_1", S_o2104)
  o2138 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb2_4_1", S_o2138)
  o2172 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb2_4_2", S_o2172)
  o2206 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_2_1", S_o2206)
  o2240 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3b_3_1", S_o2240)
  o2274 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_1_1", S_o2274)
  o2308 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_1_2", S_o2308)
  o2342 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_1_3", S_o2342)
  o2376 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_2_2", S_o2376)
  o2410 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_5_1", S_o2410)
  o2444 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3b_2_1", S_o2444)
  o2478 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_5_2", S_o2478)
  o2512 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3b_3_2", S_o2512)
  o2546 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_2_3", S_o2546)
  o2580 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3b_3_3", S_o2580)
  o2614 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus3_1", S_o2614)
  o2648 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus2_1", S_o2648)
  o2682 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_1", S_o2682)
  o2716 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_2", S_o2716)
  o2750 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_1", S_o2750)
  o2784 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_2", S_o2784)
  o2818 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_3", S_o2818)
  o2852 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_4", S_o2852)
  o2886 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_g_1", S_o2886)
  o2920 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_g_2", S_o2920)
  o2954 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_1", S_o2954)
  o2988 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock1_4_1", S_o2988)
  o3022 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock1_2_1", S_o3022)
  o3056 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_2_4", S_o3056)
  o3090 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk3_1", S_o3090)
  o3124 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai1_1", S_o3124)
  o3158 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker_1", S_o3158)
  o3192 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schorn2_1", S_o3192)
  o3226 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_2_5", S_o3226)
  o3260 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus1_1", S_o3260)
  o3294 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus2_2", S_o3294)
  o3328 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus3_2", S_o3328)
  o3362 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_2", S_o3362)
  o3396 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_2_6", S_o3396)
  o3430 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock1_r_1", S_o3430)
  o3464 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_1", S_o3464)
  o3498 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk1_1", S_o3498)
  o3532 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk2_1", S_o3532)
  o3566 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_blue", S_o3566)
  o3600 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus1_2", S_o3600)
  o3634 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus2_3", S_o3634)
  o3668 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus3_3", S_o3668)
  o3702 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk3_2", S_o3702)
  o3736 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k2_1", S_o3736)
  o3770 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k2_2", S_o3770)
  o3804 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_g_3", S_o3804)
  o3838 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_g_4", S_o3838)
  o3872 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraft22_1", S_o3872)
  o3906 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraft1_1", S_o3906)
  o3940 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_1", S_o3940)
  o3974 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm2_1", S_o3974)
  o4008 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm2_2", S_o4008)
  o4042 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_3", S_o4042)
  o4076 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_4", S_o4076)
  o4110 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_5", S_o4110)
  o4144 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_2", S_o4144)
  o4178 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus1_3", S_o4178)
  o4212 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern2_1", S_o4212)
  o4246 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb4a_1_1", S_o4246)
  o4280 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schorn1_1", S_o4280)
  o4314 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock3_2", S_o4314)
  o4348 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus2_4", S_o4348)
  o4382 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_2_7", S_o4382)
  o4416 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_synaps_1", S_o4416)
  o4450 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_3", S_o4450)
  o4484 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus1_4", S_o4484)
  o4518 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_blue_HQ", S_o4518)
  o4552 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern2_2", S_o4552)
  o4586 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern2_3", S_o4586)
  o4620 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus2_5", S_o4620)
  o4654 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern_1", S_o4654)
  o4688 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk3_3", S_o4688)
  o4722 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_5_3", S_o4722)
  o4756 = BindEasy(Node_Find("/Scenario_Static/Object"), "DES_trafo_1", S_o4756)
  o4759.Start()
  o4791 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_broadcasttower", S_o4791)
  o4794.Start()
  o4826 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_geb_hab_big_1", S_o4826)
  o4860 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_parlament_1", S_o4860)
  o4863.Start()
  o4895 = BindEasy(Node_Find("/Scenario_Static/Object"), "RadioStation_DockPoint", S_o4895)
  o4929 = BindEasy(Node_Find("/Scenario_Static/Object"), "f1_trigger", S_o4929)
  o4932.Start()
  o4964 = BindEasy(Node_Find("/Scenario_Static/Object"), "f1_turret_1/Turm1", S_o4964)
  o4973.Start()
  o5002 = BindEasy(Node_Find("/Scenario_Static/Object"), "f1_turret_2/Turm1", S_o5002)
  o5011.Start()
  o5040 = BindEasy(Node_Find("/Scenario_Static/Object"), "f2_trigger", S_o5040)
  o5043.Start()
  o5075 = BindEasy(Node_Find("/Scenario_Static/Object"), "f2_turret_1/Turm1", S_o5075)
  o5084.Start()
  o5113 = BindEasy(Node_Find("/Scenario_Static/Object"), "f2_turret_2/Turm1", S_o5113)
  o5122.Start()
  o5151 = BindEasy(Node_Find("/Scenario_Static/Object"), "f3_trigger", S_o5151)
  o5154.Start()
  o5186 = BindEasy(Node_Find("/Scenario_Static/Object"), "f3_turret_1/Turm1", S_o5186)
  o5195.Start()
  o5224 = BindEasy(Node_Find("/Scenario_Static/Object"), "f3_turret_2/Turm1", S_o5224)
  o5233.Start()
  o5262 = BindEasy(Node_Find("/Scenario_Static/Object"), "f4_trigger", S_o5262)
  o5265.Start()
  o5297 = BindEasy(Node_Find("/Scenario_Static/Object"), "f4_turret_1/Turm1", S_o5297)
  o5306.Start()
  o5335 = BindEasy(Node_Find("/Scenario_Static/Object"), "f4_turret_2/Turm1", S_o5335)
  o5344.Start()
  o5373 = BindEasy(Node_Find("/Scenario_Static/Object"), "f5_trigger", S_o5373)
  o5376.Start()
  o5408 = BindEasy(Node_Find("/Scenario_Static/Object"), "f5_turret_1/Turm1", S_o5408)
  o5417.Start()
  o5446 = BindEasy(Node_Find("/Scenario_Static/Object"), "f5_turret_2/Turm1", S_o5446)
  o5455.Start()
  o5484 = BindEasy(Node_Find("/Scenario_Static/Object"), "radio_turret_1/Turm1", S_o5484)
  o5520 = BindEasy(Node_Find("/Scenario_Static/Object"), "radio_turret_2/Turm1", S_o5520)
  o5556 = BindEasy(Node_Find("/Scenario_Static/Object"), "radio_turret_3/Turm1", S_o5556)
  o5592 = BindEasy(Node_Find("/Scenario_Static/Object"), "NavyHQ_turret_1/Turm1", S_o5592)
  o5628 = BindEasy(Node_Find("/Scenario_Static/Object"), "NavyHQ_turret_2/Turm1", S_o5628)
  o5664 = BindEasy(Node_Find("/Scenario_Static/Object"), "NavyHQ_turret_3/Turm1", S_o5664)
  o5700 = BindEasy(Node_Find("/Scenario_Static/Object"), "NeoTec_turret_1/Turm1", S_o5700)
  o5736 = BindEasy(Node_Find("/Scenario_Static/Object"), "NeoTec_turret_2/Turm1", S_o5736)
  o5772 = BindEasy(Node_Find("/Scenario_Static/Object"), "NeoTec_turret_3/Turm1", S_o5772)
  o5808 = BindEasy(Node_Find("/Scenario_Static/Object"), "NeoTec_turret_4/Turm1", S_o5808)
  o5844 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "512mPosition_1", S_o5844)
  o5845 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o5845)
  o5850.Start()
  o5851.Start()
  o5853.Start()
  o5855.Start()
  o5857.Start()
  o5859.Start()
  o5861.Start()
  o5863.Start()
  o5871.Start()
  o5872.Start()
  o5873.Start()
  o5874.Start()
  o5876.Start()
  o5906 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_chaka_c4_1", S_o5906)
  o5956 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_harper_c4_1", S_o5956)
  o6006 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_pico_c4_1", S_o6006)
  o6056 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_degrange_c4_1", S_o6056)
  o6106 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_SoolsUnits"), "Ghost_4h3", S_o6106)
  o6161 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_SoolsUnits"), "sool_scout1_emp_1", S_o6161)
  o6209 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_SoolsUnits"), "sool_scout1_emp_2", S_o6209)
  o6257 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_SoolsUnits"), "sool_scout1_emp_3", S_o6257)
  o6305 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_SoolsUnits"), "sool_scout1_emp_4", S_o6305)
  o6353 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_SoolsUnits"), "sool_techbomber_dock_1", S_o6353)
  o6358.Start()
  o6361.Start()
  o6369.Start()
  o6402 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_SoolsUnits"), "atl_scout1_1", S_o6402)
  o6452 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_SoolsUnits"), "atl_scout1_2", S_o6452)
  o6502 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_SoolsUnits"), "atl_scout2_1", S_o6502)
  o6552 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_SoolsUnits"), "atl_scout2_2", S_o6552)
  o6602 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_SoolsUnits"), "atl_scout2_3", S_o6602)
  o6652 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_SoolsUnits"), "atl_scout2_4", S_o6652)
  o6702 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_SoolsUnits"), "atl_bomber_1", S_o6702)
  o6752 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_SoolsUnits"), "atl_fregatte_1", S_o6752)
  o6802 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "cox_freighter1_1", S_o6802)
  o6810.Start()
  o6851 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "cox_scout1_emp_1", S_o6851)
  o6899 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "cox_scout1_emp_2", S_o6899)
  o6947 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "cox_scout1_emp_3", S_o6947)
  o6995 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "cox_scout1_1", S_o6995)
  o7043 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "cox_bomber_emp_1", S_o7043)
  o7091 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "cox_bomber_emp_2", S_o7091)
  o7139 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "cox_fregatte_1", S_o7139)
  o7189 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "cox_fregatte_2", S_o7189)
  o7239 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "cox_scout1_emp_1_1", S_o7239)
  o7287 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "cox_scout1_emp_1_2", S_o7287)
  o7335 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "cox_scout1_emp_1_3", S_o7335)
  o7383 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "cox_bomber_emp_3", S_o7383)
  o7431 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "cox_scout1_emp_2_1", S_o7431)
  o7479 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "cox_scout1_emp_2_2", S_o7479)
  o7527 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "cox_scout1_emp_2_3", S_o7527)
  o7575 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "TriOps", S_o7575)
  o7630 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "atl_tank1_1", S_o7630)
  o7640.Start()
  o7669 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "atl_tank1_2", S_o7669)
  o7679.Start()
  o7708 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "atl_tank1_3", S_o7708)
  o7718.Start()
  o7747 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "atl_tank1_4", S_o7747)
  o7757.Start()
  o7786 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "atl_tank1_5", S_o7786)
  o7796.Start()
  o7825 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "atl_tank2_1", S_o7825)
  o7835.Start()
  o7864 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "atl_tank2_2", S_o7864)
  o7874.Start()
  o7903 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "atl_tank2_3", S_o7903)
  o7913.Start()
  o7942 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "cox_scout1_emp_3_1", S_o7942)
  o7957.Start()
  o7990 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "cox_scout1_emp_3_2", S_o7990)
  o8005.Start()
  o8038 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Directory_CoxsUnits"), "cox_scout1_emp_3_3", S_o8038)
  o8055.Start()
  o8086 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_1", S_o8086)
  o8091 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_2", S_o8091)
  o8096 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_3", S_o8096)
  o8101 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_4", S_o8101)
  o8106 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_5", S_o8106)
  o8111 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_01_1", S_o8111)
  o8114.Start()
  o8116 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_follow_1", S_o8116)
  o8121 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_follow_2", S_o8121)
  o8124.Start()
  o8126 = BindEasy(Node_Find("/"), "Camera", S_o8126)
  o8127 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_1", S_o8127)
  o8128 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_2", S_o8128)
  o8129 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_3", S_o8129)
  o8132 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_4", S_o8132)
  o8135 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_5", S_o8135)
  o8136 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_6", S_o8136)
  o8137 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_7", S_o8137)
  o8138 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_8", S_o8138)
  o8139 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_9", S_o8139)
  o8140 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_10", S_o8140)
  o8141 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_11", S_o8141)
  o8142 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_12", S_o8142)
  o8143 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_13", S_o8143)
  o8144 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_14", S_o8144)
  o8145 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_15", S_o8145)
  o8173.Start()
  o8146 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_V", S_o8146)
  o8150 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_A", S_o8150)
  o8153 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_Intro_V", S_o8153)
  o8158 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_Intro_A_a", S_o8158)
  o8161 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_Intro_A_b", S_o8161)
  o8164 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter3_Intro_V", S_o8164)
  o8174 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter3_Extro_V", S_o8174)
  o8184 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter3_Extro_V2", S_o8184)
  o8193 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter3_Extro_A1", S_o8193)
  o8199 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter3_Extro_A2", S_o8199)
  o8130 = { {}, o5845, o5906, o5956, o6006, o6056 }()
  o8133 = { {}, o6106 }()
  o8134 = { {}, o7575 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end