-- dekompiliert aus map\4n2\script\4n2.sco
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
  Game_LoadMTake(node0, "dat/sty/mtake_4N2_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track01_frag_heroic1.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_track03.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_badend.sam", 2)
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
  node8 = Node_CreateNode("nod_generic", "des_broadcasttower")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(1050.144, 3256.685, 266.1923), MAT_Vector3(18.84893, 0, 0))
  Node_ParseIniFile(node8, "osd/des/des_ec_tower.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "des_geb_hab_big_1")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(3304.833, 3112.761, 189.8097), MAT_Vector3(89.88863, 0, 0))
  Node_ParseIniFile(node9, "osd/des/des_geb_hab_big.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "des_parlament_1")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(1587.105, 433.297, 260.0646), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node10, "osd/des/des_parlament.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "Bunker_A1")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(1378.123, 2345.77, 220), MAT_Vector3(-65, 0, 0))
  Node_ParseIniFile(node11, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "Bunker_A2")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(1141.661, 2906.33, 220.9244), MAT_Vector3(-67.19597, 0, 0))
  Node_ParseIniFile(node12, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "Bunker_B1")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(1331.632, 1764.683, 220), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node13, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "Bunker_B2")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(1328.292, 764.0112, 223.5632), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node14, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "Bunker_C1")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(2232.501, 1668.552, 225), MAT_Vector3(-131.7125, 0, 0))
  Node_ParseIniFile(node15, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "Bunker_C2")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(2976.925, 1045.151, 225.85), MAT_Vector3(137.8628, 0, 0))
  Node_ParseIniFile(node16, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "Bunker_D1")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(2389.337, 2430.548, 219.5208), MAT_Vector3(-165.5205, 0, 0))
  Node_ParseIniFile(node17, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "Bunker_D2")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(3310.864, 2740.042, 210.4206), MAT_Vector3(-165.5205, 0, 0))
  Node_ParseIniFile(node18, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "gen_dock_1")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(1649.999, 1953.736, 285.9309), MAT_Vector3(16.40826, 0, 0))
  Node_ParseIniFile(node19, "osd/gen/gen_dock.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "atl_triumph_1")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(1872.101, 2177.981, 295.8362), MAT_Vector3(173.0652, 0, 0))
  Node_ParseIniFile(node20, "osd/atl/atl_ec_triumph.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "atl_obelisk_1")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(2036.419, 461.6467, 284.3995), MAT_Vector3(-45.03943, 0, 0))
  Node_ParseIniFile(node21, "osd/atl/atl_ec_obelisk.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "gen_rohrbG_1")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(1320.932, 2541.665, 211), MAT_Vector3(23, 0, 0))
  Node_ParseIniFile(node22, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "gen_rohrbG_3")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(1273.507, 2519.561, 211), MAT_Vector3(23, 0, 0))
  Node_ParseIniFile(node23, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "gen_rohrbG_2")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(1203.859, 2817.403, 211), MAT_Vector3(23, 0, 0))
  Node_ParseIniFile(node24, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "gen_rohrbG_4")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(1156.447, 2795.405, 211), MAT_Vector3(23, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_rohrbG_5")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(1311.492, 1566.627, 215), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "gen_rohrbG_6")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(1311.492, 1261.435, 215), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node27, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "gen_rohrbG_7")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(1311.507, 962.0375, 215), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node28, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "gen_rohrbG_8")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(2393.333, 1548.264, 230), MAT_Vector3(-131.1273, 0, 0))
  Node_ParseIniFile(node29, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "gen_rohrbG_11")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(2380.028, 1532.877, 230), MAT_Vector3(-131.1273, 0, 0))
  Node_ParseIniFile(node30, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "gen_rohrbG_9")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(2618.744, 1351.421, 230), MAT_Vector3(-131.1273, 0, 0))
  Node_ParseIniFile(node31, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "gen_rohrbG_12")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(2605.727, 1335.838, 230), MAT_Vector3(-131.1273, 0, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_rohrbG_10")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(2844.544, 1154.26, 230), MAT_Vector3(-131.1273, 0, 0))
  Node_ParseIniFile(node33, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "gen_rohrbG_13")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(2831.606, 1138.657, 230), MAT_Vector3(-131.1273, 0, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "gen_rohrbG_14")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(2575.132, 2512.041, 206.6365), MAT_Vector3(-74.21712, 0, 0))
  Node_ParseIniFile(node35, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_rohrbG_15")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(2897.279, 2607.614, 206.6365), MAT_Vector3(-74.21713, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "gen_rohrbG_16")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(3206.244, 2691.652, 206.6365), MAT_Vector3(-74.21713, 0, 0))
  Node_ParseIniFile(node37, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "gen_rohrsG_1")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(1154.105, 3057.982, 239.3095), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node38, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_rohrsG_2")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(1135.657, 3050.362, 239.3095), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_rohrsG_3")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(1401.632, 611.4673, 238.7404), MAT_Vector3(-154.293, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_rohrsG_4")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(1384.1, 611.1799, 238.7404), MAT_Vector3(-154.293, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_rohrend_1")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(1853.321, 3718.647, 349.1081), MAT_Vector3(44.69683, 0, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_rohr_small01_end.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_rohrend_2")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(1833.772, 3699.639, 349.5654), MAT_Vector3(44.69683, 0, 0))
  Node_ParseIniFile(node43, "osd/gen/gen_rohr_small01_end.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_rohrsK_4")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(1415.21, 958.167, 224.4154), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node44, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_rohrsG_5")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(1366.732, 941.089, 218.6105), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node45, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_stabG_1")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(1638.556, 3523.031, 416), MAT_Vector3(-46.5, 0, 0))
  Node_ParseIniFile(node46, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "gen_stabG_2")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(1646.157, 3530.822, 416), MAT_Vector3(-46.5, 0, 0))
  Node_ParseIniFile(node47, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "gen_stabG_3")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(1653.758, 3538.803, 416), MAT_Vector3(-46.5, 0, 0))
  Node_ParseIniFile(node48, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "gen_stabG_4")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(911.0664, 3085.34, 251.1719), MAT_Vector3(-101.619, 0, 0))
  Node_ParseIniFile(node49, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "gen_stabG_5")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(881.5902, 3129.261, 251.1719), MAT_Vector3(-101.619, 0, 0))
  Node_ParseIniFile(node50, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_stabG_6")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(922.4033, 3155.995, 251.1719), MAT_Vector3(-94.90098, 0, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "gen_stabG_7")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(951.1111, 3114.002, 251.1719), MAT_Vector3(-104.803, 0, 0))
  Node_ParseIniFile(node52, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_stabM_1")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(1591.345, 3602.425, 415), MAT_Vector3(-46.5, 0, 0))
  Node_ParseIniFile(node53, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "gen_stabM_2")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(1583.446, 3595.003, 415), MAT_Vector3(-46.5, 0, 0))
  Node_ParseIniFile(node54, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "gen_stabM_3")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(2483.021, 1503.2, 254.6894), MAT_Vector3(-41.11606, 0, 0))
  Node_ParseIniFile(node55, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "gen_stabM_4")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(2473.262, 1511.802, 254.6894), MAT_Vector3(-41.11606, 0, 0))
  Node_ParseIniFile(node56, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "gen_stabK_1")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(1173.316, 2900.231, 257), MAT_Vector3(23.5, 0, 0))
  Node_ParseIniFile(node57, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "gen_stabK_2")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(1344.507, 2350.114, 256), MAT_Vector3(25.5, 0, 0))
  Node_ParseIniFile(node58, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "gen_stabK_3")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(1345.444, 1731.235, 256.7603), MAT_Vector3(89.64341, 0, 0))
  Node_ParseIniFile(node59, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "gen_stabK_4")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(1310.45, 793.0025, 260.708), MAT_Vector3(89.64341, 0, 0))
  Node_ParseIniFile(node60, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "gen_stabK_5")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(2263.446, 1652.904, 262.6887), MAT_Vector3(47.86992, 0, 0))
  Node_ParseIniFile(node61, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "gen_stabK_6")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(2982.281, 1077.688, 262.7802), MAT_Vector3(47.86992, 0, 0))
  Node_ParseIniFile(node62, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "gen_stabK_7")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(2399.705, 2462.82, 257.8649), MAT_Vector3(15.56905, 0, 0))
  Node_ParseIniFile(node63, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "gen_stabK_8")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(3300.164, 2709.653, 257.8649), MAT_Vector3(15.56905, 0, 0))
  Node_ParseIniFile(node64, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "gen_stabM_5")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(2936.425, 2644.861, 260.2954), MAT_Vector3(-72.64719, 0, 0))
  Node_ParseIniFile(node65, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "gen_stabM_6")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(2932.339, 2657.391, 260.2954), MAT_Vector3(-72.64719, 0, 0))
  Node_ParseIniFile(node66, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "gen_stabM_7")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(1292.27, 2659.661, 270.3499), MAT_Vector3(-67.23985, 0, 0))
  Node_ParseIniFile(node67, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "gen_stabM_8")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(1276.473, 2697.153, 270.3499), MAT_Vector3(-158.4628, 0, 0))
  Node_ParseIniFile(node68, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "atl_dock3_1")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(1806.286, 2241.615, 278.3705), MAT_Vector3(19.74634, 0, 0))
  Node_ParseIniFile(node69, "osd/atl/atl_dock3.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "atl_wb2_1_1")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(1819.911, 1780.527, 276.1031), MAT_Vector3(-179.9985, 0, 0))
  Node_ParseIniFile(node70, "osd/atl/atl_wblock2_01.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "atl_wb2_2_1")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(2016.208, 2507.162, 291.1724), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node71, "osd/atl/atl_wblock2_02.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "atl_wb2_3_1")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(1399.994, 2156.423, 285.2375), MAT_Vector3(-65, 0, 0))
  Node_ParseIniFile(node72, "osd/atl/atl_wblock2_03.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "atl_wb2_4_1")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(1510.017, 2214.422, 289.3145), MAT_Vector3(115, 0, 0))
  Node_ParseIniFile(node73, "osd/atl/atl_wblock2_04.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "atl_wb2_4_2")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(2376.998, 2343.393, 197.6522), MAT_Vector3(-165.5675, 0, 0))
  Node_ParseIniFile(node74, "osd/atl/atl_wblock2_04.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "atl_wb3a_2_1")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(1380.088, 1996.354, 271.0483), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node75, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "atl_wb3b_3_1")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(2360.777, 2528.113, 261.4128), MAT_Vector3(-164.1995, 0, 0))
  Node_ParseIniFile(node76, "osd/atl/atl_wblock3b_03.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "atl_wb3a_1_1")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(1413.832, 2447.383, 206.551), MAT_Vector3(117.4717, 0, 0))
  Node_ParseIniFile(node77, "osd/atl/atl_wblock3a_01.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "atl_wb3a_1_2")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(2097.592, 1880.739, 291.3043), MAT_Vector3(138.0035, 0, 0))
  Node_ParseIniFile(node78, "osd/atl/atl_wblock3a_01.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "atl_wb3a_1_3")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(2096.107, 2493.372, 294.4833), MAT_Vector3(90.12544, 0, 0))
  Node_ParseIniFile(node79, "osd/atl/atl_wblock3a_01.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "atl_wb3a_2_2")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(1267.645, 1931.458, 267.794), MAT_Vector3(-89.51085, 0, 0))
  Node_ParseIniFile(node80, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_generic", "atl_wb3a_5_1")
  Node_AddSon(node7, node81)
  Body_SetCS(node81, MAT_Vector3(1267.636, 1738.18, 205.9771), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node81, "osd/atl/atl_wblock3a_05.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_generic", "atl_wb3b_2_1")
  Node_AddSon(node7, node82)
  Body_SetCS(node82, MAT_Vector3(1395.237, 1676.933, 199.0315), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node82, "osd/atl/atl_wblock3b_02.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_generic", "atl_wb3a_5_2")
  Node_AddSon(node7, node83)
  Body_SetCS(node83, MAT_Vector3(2022.254, 1805.449, 282.9705), MAT_Vector3(136.1578, 0, 0))
  Node_ParseIniFile(node83, "osd/atl/atl_wblock3a_05.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_generic", "atl_wb3b_3_2")
  Node_AddSon(node7, node84)
  Body_SetCS(node84, MAT_Vector3(2176.531, 1632.613, 207.4728), MAT_Vector3(-42.78888, 0, 0))
  Node_ParseIniFile(node84, "osd/atl/atl_wblock3b_03.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_generic", "atl_wb3a_2_3")
  Node_AddSon(node7, node85)
  Body_SetCS(node85, MAT_Vector3(2265.429, 1723.565, 209.3754), MAT_Vector3(-41.07097, 0, 0))
  Node_ParseIniFile(node85, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "atl_wb3b_3_3")
  Node_AddSon(node7, node86)
  Body_SetCS(node86, MAT_Vector3(1272.434, 2388.497, 201.7136), MAT_Vector3(-64.34479, 0, 0))
  Node_ParseIniFile(node86, "osd/atl/atl_wblock3b_03.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "gen_mhaus3_1")
  Node_AddSon(node7, node87)
  Body_SetCS(node87, MAT_Vector3(1044.545, 3259.347, 247.4472), MAT_Vector3(-89.79169, 0, 0))
  Node_ParseIniFile(node87, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "gen_mhaus2_1")
  Node_AddSon(node7, node88)
  Body_SetCS(node88, MAT_Vector3(1090.843, 3252.25, 274.4284), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node88, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "gen_parabo_1")
  Node_AddSon(node7, node89)
  Body_SetCS(node89, MAT_Vector3(1120.99, 3194.015, 337.8089), MAT_Vector3(-152.6596, 0, 0))
  Node_ParseIniFile(node89, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_generic", "gen_parabo_2")
  Node_AddSon(node7, node90)
  Body_SetCS(node90, MAT_Vector3(1140.764, 3192.367, 337.8089), MAT_Vector3(-152.6596, 0, 0))
  Node_ParseIniFile(node90, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node90, 0)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_generic", "gen_tnk_k_1")
  Node_AddSon(node7, node91)
  Body_SetCS(node91, MAT_Vector3(1269.581, 3171.811, 249.581), MAT_Vector3(-52.66545, 0, 0))
  Node_ParseIniFile(node91, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node91, 0)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_generic", "gen_tnk_k_2")
  Node_AddSon(node7, node92)
  Body_SetCS(node92, MAT_Vector3(1240.265, 3168.168, 249.581), MAT_Vector3(-52.66545, 0, 0))
  Node_ParseIniFile(node92, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node92, 0)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "gen_tnk_k_3")
  Node_AddSon(node7, node93)
  Body_SetCS(node93, MAT_Vector3(1799.713, 3687.309, 321.8376), MAT_Vector3(-45.85246, 0, 0))
  Node_ParseIniFile(node93, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node93, 0)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_generic", "gen_tnk_k_4")
  Node_AddSon(node7, node94)
  Body_SetCS(node94, MAT_Vector3(1777.008, 3665.178, 321.8376), MAT_Vector3(-45.85246, 0, 0))
  Node_ParseIniFile(node94, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node94, 0)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_generic", "gen_tnk_g_1")
  Node_AddSon(node7, node95)
  Body_SetCS(node95, MAT_Vector3(1076.673, 3170.029, 250.6734), MAT_Vector3(-89.29727, 0, 0))
  Node_ParseIniFile(node95, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node95, 0)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_generic", "gen_tnk_g_2")
  Node_AddSon(node7, node96)
  Body_SetCS(node96, MAT_Vector3(1713.363, 3598.094, 319.7996), MAT_Vector3(-45.5376, 0, 0))
  Node_ParseIniFile(node96, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node96, 0)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_generic", "gen_kai2_1")
  Node_AddSon(node7, node97)
  Body_SetCS(node97, MAT_Vector3(1259.868, 3204.988, 251.2325), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node97, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node97, 0)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_generic", "atl_dock1_4_1")
  Node_AddSon(node7, node98)
  Body_SetCS(node98, MAT_Vector3(1926.481, 2067.828, 285.952), MAT_Vector3(-89.5411, 0, 0))
  Node_ParseIniFile(node98, "osd/atl/atl_dock1_4.osd")
  Body_SetFriendOrFoeID(node98, 0)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_generic", "atl_dock1_2_1")
  Node_AddSon(node7, node99)
  Body_SetCS(node99, MAT_Vector3(1890.963, 2435.367, 322.8994), MAT_Vector3(89.70887, 0, 0))
  Node_ParseIniFile(node99, "osd/atl/atl_dock1_2.osd")
  Body_SetFriendOrFoeID(node99, 0)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_generic", "atl_wb3a_2_4")
  Node_AddSon(node7, node100)
  Body_SetCS(node100, MAT_Vector3(1033.75, 3387.066, 252.0059), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node100, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node100, 0)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_generic", "gen_werk3_1")
  Node_AddSon(node7, node101)
  Body_SetCS(node101, MAT_Vector3(1611.709, 3559.634, 371.6402), MAT_Vector3(-46.02305, 0, 0))
  Node_ParseIniFile(node101, "osd/gen/gen_industry3.osd")
  Body_SetFriendOrFoeID(node101, 0)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_generic", "gen_kai1_1")
  Node_AddSon(node7, node102)
  Body_SetCS(node102, MAT_Vector3(1724.711, 3674.591, 336.5876), MAT_Vector3(-44.67151, 0, 0))
  Node_ParseIniFile(node102, "osd/gen/gen_kai1.osd")
  Body_SetFriendOrFoeID(node102, 0)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_generic", "gen_bunker_1")
  Node_AddSon(node7, node103)
  Body_SetCS(node103, MAT_Vector3(1815.731, 3741.899, 316.279), MAT_Vector3(44.77349, 0, 0))
  Node_ParseIniFile(node103, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node103, 0)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_generic", "gen_schorn2_1")
  Node_AddSon(node7, node104)
  Body_SetCS(node104, MAT_Vector3(1826.858, 3728.869, 356.501), MAT_Vector3(43.76089, 0, 0))
  Node_ParseIniFile(node104, "osd/gen/gen_chimney2.osd")
  Body_SetFriendOrFoeID(node104, 0)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_generic", "atl_wb3a_2_5")
  Node_AddSon(node7, node105)
  Body_SetCS(node105, MAT_Vector3(2220.04, 2257.93, 254.4372), MAT_Vector3(-79.46251, 0, 0))
  Node_ParseIniFile(node105, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node105, 0)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_generic", "gen_mhaus1_1")
  Node_AddSon(node7, node106)
  Body_SetCS(node106, MAT_Vector3(1348.145, 1447.566, 154.5741), MAT_Vector3(48.3386, 0, 0))
  Node_ParseIniFile(node106, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node106, 0)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_generic", "gen_mhaus2_2")
  Node_AddSon(node7, node107)
  Body_SetCS(node107, MAT_Vector3(1222.634, 1127.995, 210.9921), MAT_Vector3(90.05662, 0, 0))
  Node_ParseIniFile(node107, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node107, 0)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_generic", "gen_mhaus3_2")
  Node_AddSon(node7, node108)
  Body_SetCS(node108, MAT_Vector3(2745.507, 1196.012, 218.0864), MAT_Vector3(135.3547, 0, 0))
  Node_ParseIniFile(node108, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node108, 0)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_generic", "gen_kai2_2")
  Node_AddSon(node7, node109)
  Body_SetCS(node109, MAT_Vector3(1457.378, 774.7337, 205.7141), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node109, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node109, 0)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_generic", "atl_wb3a_2_6")
  Node_AddSon(node7, node110)
  Body_SetCS(node110, MAT_Vector3(1277.818, 1576.02, 201.4824), MAT_Vector3(-90.48519, 0, 0))
  Node_ParseIniFile(node110, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node110, 0)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_generic", "atl_dock1_r_1")
  Node_AddSon(node7, node111)
  Body_SetCS(node111, MAT_Vector3(1919.636, 1651.466, 257.8793), MAT_Vector3(-52.60503, 0, 0))
  Node_ParseIniFile(node111, "osd/atl/atl_dock1_raw.osd")
  Body_SetFriendOrFoeID(node111, 0)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_generic", "atl_digmod_1")
  Node_AddSon(node7, node112)
  Body_SetCS(node112, MAT_Vector3(944.5534, 1212.688, 214.5445), MAT_Vector3(34.37986, 0, 0))
  Node_ParseIniFile(node112, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node112, 0)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_generic", "gen_werk1_1")
  Node_AddSon(node7, node113)
  Body_SetCS(node113, MAT_Vector3(3351.391, 1048.241, 304.8929), MAT_Vector3(90.32136, 0, 0))
  Node_ParseIniFile(node113, "osd/gen/gen_industry1.osd")
  Body_SetFriendOrFoeID(node113, 0)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_generic", "gen_werk2_1")
  Node_AddSon(node7, node114)
  Body_SetCS(node114, MAT_Vector3(3507.77, 909.4617, 379.4023), MAT_Vector3(-90.13807, 0, 0))
  Node_ParseIniFile(node114, "osd/gen/gen_industry2.osd")
  Body_SetFriendOrFoeID(node114, 0)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_generic", "gen_kai2_blue")
  Node_AddSon(node7, node115)
  Body_SetCS(node115, MAT_Vector3(3193.484, 1007.339, 270.0652), MAT_Vector3(89.61164, 0, 0))
  Node_ParseIniFile(node115, "osd/mp/mp_kai2_blue.osd")
  Body_SetFriendOrFoeID(node115, 0)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_generic", "gen_mhaus1_2")
  Node_AddSon(node7, node116)
  Body_SetCS(node116, MAT_Vector3(3295.061, 1104.037, 250.2113), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node116, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node116, 0)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_generic", "gen_mhaus2_3")
  Node_AddSon(node7, node117)
  Body_SetCS(node117, MAT_Vector3(3537.526, 868.7971, 382.3693), MAT_Vector3(90.08773, 0, 0))
  Node_ParseIniFile(node117, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node117, 0)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_generic", "gen_mhaus3_3")
  Node_AddSon(node7, node118)
  Body_SetCS(node118, MAT_Vector3(3329.215, 1119.891, 236.497733), MAT_Vector3(0.107304, 0, 0))
  Node_ParseIniFile(node118, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node118, 0)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_generic", "gen_werk3_2")
  Node_AddSon(node7, node119)
  Body_SetCS(node119, MAT_Vector3(3349.536, 1249.811, 257.6111), MAT_Vector3(-90.01692, 0, 0))
  Node_ParseIniFile(node119, "osd/gen/gen_industry3.osd")
  Body_SetFriendOrFoeID(node119, 0)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_generic", "gen_tnk_k2_1")
  Node_AddSon(node7, node120)
  Body_SetCS(node120, MAT_Vector3(3660.058, 868.9213, 357.1958), MAT_Vector3(-52.49026, 0, 0))
  Node_ParseIniFile(node120, "osd/gen/gen_tank_sml2.osd")
  Body_SetFriendOrFoeID(node120, 0)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_generic", "gen_tnk_k2_2")
  Node_AddSon(node7, node121)
  Body_SetCS(node121, MAT_Vector3(3702.443, 908.1595, 357.1958), MAT_Vector3(-66.59739, 0, 0))
  Node_ParseIniFile(node121, "osd/gen/gen_tank_sml2.osd")
  Body_SetFriendOrFoeID(node121, 0)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_generic", "gen_kraft22_1")
  Node_AddSon(node7, node122)
  Body_SetCS(node122, MAT_Vector3(3718.878, 978.0497, 356.6303), MAT_Vector3(90.26138, 0, 0))
  Node_ParseIniFile(node122, "osd/gen/gen_pplant22.osd")
  Body_SetFriendOrFoeID(node122, 0)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_generic", "gen_kraft1_1")
  Node_AddSon(node7, node123)
  Body_SetCS(node123, MAT_Vector3(3244.155, 951.6687, 269.3304), MAT_Vector3(0.513804, 0, 0))
  Node_ParseIniFile(node123, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node123, 0)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_generic", "gen_turm_1")
  Node_AddSon(node7, node124)
  Body_SetCS(node124, MAT_Vector3(3320.024, 1006.81, 318.5446), MAT_Vector3(-26.53657, 0, 0))
  Node_ParseIniFile(node124, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node124, 0)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_generic", "gen_turm2_1")
  Node_AddSon(node7, node125)
  Body_SetCS(node125, MAT_Vector3(3454.7, 807.7456, 348.6567), MAT_Vector3(-21.87112, 0, 0))
  Node_ParseIniFile(node125, "osd/gen/gen_tower2.osd")
  Body_SetFriendOrFoeID(node125, 0)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_generic", "gen_turm2_2")
  Node_AddSon(node7, node126)
  Body_SetCS(node126, MAT_Vector3(3612.464, 995.576, 353.9961), MAT_Vector3(-71.23875, 0, 0))
  Node_ParseIniFile(node126, "osd/gen/gen_tower2.osd")
  Body_SetFriendOrFoeID(node126, 0)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, -1, 0)
  Body_SetCargoKey(node126, -1, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_generic", "gen_parabo_3")
  Node_AddSon(node7, node127)
  Body_SetCS(node127, MAT_Vector3(3277.029, 1053.47, 313.9356), MAT_Vector3(59.26231, 0, 0))
  Node_ParseIniFile(node127, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node127, 0)
  Body_SetNameKey(node127, -1)
  Body_SetCargoKey(node127, -1, 0)
  Body_SetCargoKey(node127, -1, 1)
  Body_SetCargoKey(node127, -1, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_generic", "gen_parabo_4")
  Node_AddSon(node7, node128)
  Body_SetCS(node128, MAT_Vector3(3332.95, 1248.651, 299.4171), MAT_Vector3(58.802, 0, 0))
  Node_ParseIniFile(node128, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node128, 0)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, -1, 0)
  Body_SetCargoKey(node128, -1, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_generic", "gen_parabo_5")
  Node_AddSon(node7, node129)
  Body_SetCS(node129, MAT_Vector3(3597.797, 921.6445, 446.1676), MAT_Vector3(64.6124, 0, 0))
  Node_ParseIniFile(node129, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node129, 0)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_generic", "atl_digmod_2")
  Node_AddSon(node7, node130)
  Body_SetCS(node130, MAT_Vector3(2784.711, 1583.586, 215.5772), MAT_Vector3(34.37986, 0, 0))
  Node_ParseIniFile(node130, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node130, 0)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_generic", "gen_mhaus1_3")
  Node_AddSon(node7, node131)
  Body_SetCS(node131, MAT_Vector3(2529.553, 1536.291, 190.1446), MAT_Vector3(-41.95605, 0, 0))
  Node_ParseIniFile(node131, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node131, 0)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_generic", "gen_stern2_1")
  Node_AddSon(node7, node132)
  Body_SetCS(node132, MAT_Vector3(1386.225, 1018.353, 220.0036), MAT_Vector3(0.120604, 0, 0))
  Node_ParseIniFile(node132, "osd/gen/gen_starfound2.osd")
  Body_SetFriendOrFoeID(node132, 0)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_generic", "atl_wb4a_1_1")
  Node_AddSon(node7, node133)
  Body_SetCS(node133, MAT_Vector3(1415.066, 910.8988, 210.6977), MAT_Vector3(-0.045396, 0, 0))
  Node_ParseIniFile(node133, "osd/atl/atl_wblock3a_raw_02.osd")
  Body_SetFriendOrFoeID(node133, 0)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, -1, 0)
  Body_SetCargoKey(node133, -1, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_generic", "gen_schorn1_1")
  Node_AddSon(node7, node134)
  Body_SetCS(node134, MAT_Vector3(3377.457, 1128.612, 301.5902), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node134, "osd/gen/gen_chimney1.osd")
  Body_SetFriendOrFoeID(node134, 0)
  Body_SetNameKey(node134, -1)
  Body_SetCargoKey(node134, -1, 0)
  Body_SetCargoKey(node134, -1, 1)
  Body_SetCargoKey(node134, -1, 2)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_generic", "atl_dock3_2")
  Node_AddSon(node7, node135)
  Body_SetCS(node135, MAT_Vector3(3625.137, 3219.147, 295.8241), MAT_Vector3(-90.26595, 0, 0))
  Node_ParseIniFile(node135, "osd/atl/atl_dock3.osd")
  Body_SetFriendOrFoeID(node135, 0)
  Body_SetNameKey(node135, -1)
  Body_SetCargoKey(node135, -1, 0)
  Body_SetCargoKey(node135, -1, 1)
  Body_SetCargoKey(node135, -1, 2)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_generic", "gen_mhaus2_4")
  Node_AddSon(node7, node136)
  Body_SetCS(node136, MAT_Vector3(2549.06, 2629.761, 214.303), MAT_Vector3(15.40538, 0, 0))
  Node_ParseIniFile(node136, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node136, 0)
  Body_SetNameKey(node136, -1)
  Body_SetCargoKey(node136, -1, 0)
  Body_SetCargoKey(node136, -1, 1)
  Body_SetCargoKey(node136, -1, 2)
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_generic", "atl_wb3a_2_7")
  Node_AddSon(node7, node137)
  Body_SetCS(node137, MAT_Vector3(2596.004, 2401.699, 206.6511), MAT_Vector3(-164.8963, 0, 0))
  Node_ParseIniFile(node137, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node137, 0)
  Body_SetNameKey(node137, -1)
  Body_SetCargoKey(node137, -1, 0)
  Body_SetCargoKey(node137, -1, 1)
  Body_SetCargoKey(node137, -1, 2)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_generic", "gen_synaps_1")
  Node_AddSon(node7, node138)
  Body_SetCS(node138, MAT_Vector3(1758.784, 2652.572, 329.676), MAT_Vector3(-31.31799, 0, 0))
  Node_ParseIniFile(node138, "osd/gen/gen_synapse.osd")
  Body_SetFriendOrFoeID(node138, 0)
  Body_SetNameKey(node138, -1)
  Body_SetCargoKey(node138, -1, 0)
  Body_SetCargoKey(node138, -1, 1)
  Body_SetCargoKey(node138, -1, 2)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_generic", "atl_digmod_3")
  Node_AddSon(node7, node139)
  Body_SetCS(node139, MAT_Vector3(2765.302, 2114.911, 200.3817), MAT_Vector3(30.63874, 0, 0))
  Node_ParseIniFile(node139, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node139, 0)
  Body_SetNameKey(node139, -1)
  Body_SetCargoKey(node139, -1, 0)
  Body_SetCargoKey(node139, -1, 1)
  Body_SetCargoKey(node139, -1, 2)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_generic", "gen_mhaus1_4")
  Node_AddSon(node7, node140)
  Body_SetCS(node140, MAT_Vector3(2864.868, 2649.957, 195.5267), MAT_Vector3(106.9633, 0, 0))
  Node_ParseIniFile(node140, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node140, 0)
  Body_SetNameKey(node140, -1)
  Body_SetCargoKey(node140, -1, 0)
  Body_SetCargoKey(node140, -1, 1)
  Body_SetCargoKey(node140, -1, 2)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("nod_generic", "gen_kai2_blue_HQ")
  Node_AddSon(node7, node141)
  Body_SetCS(node141, MAT_Vector3(3274.84, 2906.062, 197.9883), MAT_Vector3(89.61164, 0, 0))
  Node_ParseIniFile(node141, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node141, 0)
  Body_SetNameKey(node141, -1)
  Body_SetCargoKey(node141, -1, 0)
  Body_SetCargoKey(node141, -1, 1)
  Body_SetCargoKey(node141, -1, 2)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("nod_generic", "gen_stern2_2")
  Node_AddSon(node7, node142)
  Body_SetCS(node142, MAT_Vector3(3357.783, 3396.41, 260.4746), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node142, "osd/gen/gen_starfound2.osd")
  Body_SetFriendOrFoeID(node142, 0)
  Body_SetNameKey(node142, -1)
  Body_SetCargoKey(node142, -1, 0)
  Body_SetCargoKey(node142, -1, 1)
  Body_SetCargoKey(node142, -1, 2)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("nod_generic", "gen_stern2_3")
  Node_AddSon(node7, node143)
  Body_SetCS(node143, MAT_Vector3(3459.296, 3423.165, 263.2674), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node143, "osd/gen/gen_starfound2.osd")
  Body_SetFriendOrFoeID(node143, 0)
  Body_SetNameKey(node143, -1)
  Body_SetCargoKey(node143, -1, 0)
  Body_SetCargoKey(node143, -1, 1)
  Body_SetCargoKey(node143, -1, 2)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("nod_generic", "gen_mhaus2_5")
  Node_AddSon(node7, node144)
  Body_SetCS(node144, MAT_Vector3(1332.185, 2742.601, 207.166), MAT_Vector3(-67.12756, 0, 0))
  Node_ParseIniFile(node144, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node144, 0)
  Body_SetNameKey(node144, -1)
  Body_SetCargoKey(node144, -1, 0)
  Body_SetCargoKey(node144, -1, 1)
  Body_SetCargoKey(node144, -1, 2)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("nod_generic", "gen_stern_1")
  Node_AddSon(node7, node145)
  Body_SetCS(node145, MAT_Vector3(1073.059, 2839.843, 206.2537), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node145, "osd/gen/gen_starfound.osd")
  Body_SetFriendOrFoeID(node145, 0)
  Body_SetNameKey(node145, -1)
  Body_SetCargoKey(node145, -1, 0)
  Body_SetCargoKey(node145, -1, 1)
  Body_SetCargoKey(node145, -1, 2)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("nod_generic", "gen_werk3_3")
  Node_AddSon(node7, node146)
  Body_SetCS(node146, MAT_Vector3(917.4514, 3120.461, 207.0135), MAT_Vector3(-55.6692, 0, 0))
  Node_ParseIniFile(node146, "osd/gen/gen_industry3.osd")
  Body_SetFriendOrFoeID(node146, 0)
  Body_SetNameKey(node146, -1)
  Body_SetCargoKey(node146, -1, 0)
  Body_SetCargoKey(node146, -1, 1)
  Body_SetCargoKey(node146, -1, 2)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("nod_generic", "atl_wb3a_5_3")
  Node_AddSon(node7, node147)
  Body_SetCS(node147, MAT_Vector3(710.9445, 3331.408, 256.4334), MAT_Vector3(-141.122, 0, 0))
  Node_ParseIniFile(node147, "osd/atl/atl_wblock3a_05.osd")
  Body_SetFriendOrFoeID(node147, 0)
  Body_SetNameKey(node147, -1)
  Body_SetCargoKey(node147, -1, 0)
  Body_SetCargoKey(node147, -1, 1)
  Body_SetCargoKey(node147, -1, 2)
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("nod_generic", "DES_trafo_1")
  Node_AddSon(node7, node148)
  Body_SetCS(node148, MAT_Vector3(1105.581, 3237.559, 314.1941), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node148, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node148, 0)
  Body_SetNameKey(node148, -1)
  Body_SetCargoKey(node148, -1, 0)
  Body_SetCargoKey(node148, -1, 1)
  Body_SetCargoKey(node148, -1, 2)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("nod_generic", "RadioStation_DockPoint")
  Node_AddSon(node7, node149)
  Body_SetCS(node149, MAT_Vector3(1056.988, 3202.912, 314.4282), MAT_Vector3(90.06742, 0, 0))
  Node_ParseIniFile(node149, "osd/gen/gen_dockingnode.osd")
  Body_SetFriendOrFoeID(node149, 0)
  Body_SetNameKey(node149, -1)
  Body_SetCargoKey(node149, -1, 0)
  Body_SetCargoKey(node149, -1, 1)
  Body_SetCargoKey(node149, -1, 2)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node7, node150)
  Node_ParseIniFile(node150, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("nod_generic", "f1_trigger")
  Node_AddSon(node7, node151)
  Body_SetCS(node151, MAT_Vector3(1532.761, 1086.707, 207.2354), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node151, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node151, 0)
  Body_SetNameKey(node151, -1)
  Body_SetCargoKey(node151, -1, 0)
  Body_SetCargoKey(node151, -1, 1)
  Body_SetCargoKey(node151, -1, 2)
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("nod_generic", "f1_turret_1")
  Node_AddSon(node7, node152)
  Body_SetCS(node152, MAT_Vector3(1485.26, 1080.403, 212.3745), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node152, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node152, 0)
  Node_EnterSimulation(node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("nod_generic", "f1_turret_2")
  Node_AddSon(node7, node153)
  Body_SetCS(node153, MAT_Vector3(1567.817, 1135.041, 205.4715), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node153, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node153, 0)
  Node_EnterSimulation(node153)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("nod_generic", "f2_trigger")
  Node_AddSon(node7, node154)
  Body_SetCS(node154, MAT_Vector3(1442.978, 701.475, 221.2409), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node154, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node154, 0)
  Body_SetNameKey(node154, -1)
  Body_SetCargoKey(node154, -1, 0)
  Body_SetCargoKey(node154, -1, 1)
  Body_SetCargoKey(node154, -1, 2)
  Node_EnterSimulation(node154)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("nod_generic", "f2_turret_1")
  Node_AddSon(node7, node155)
  Body_SetCS(node155, MAT_Vector3(1337.237, 788.3542, 269.7127), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node155, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node155, 0)
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("nod_generic", "f2_turret_2")
  Node_AddSon(node7, node156)
  Body_SetCS(node156, MAT_Vector3(1480.824, 774.5607, 247.6637), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node156, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node156, 0)
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("nod_generic", "f3_trigger")
  Node_AddSon(node7, node157)
  Body_SetCS(node157, MAT_Vector3(1622.363, 642.576, 260.6407), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node157, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node157, 0)
  Body_SetNameKey(node157, -1)
  Body_SetCargoKey(node157, -1, 0)
  Body_SetCargoKey(node157, -1, 1)
  Body_SetCargoKey(node157, -1, 2)
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("nod_generic", "f3_turret_1")
  Node_AddSon(node7, node158)
  Body_SetCS(node158, MAT_Vector3(1584.618, 647.9644, 263.041), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node158, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node158, 0)
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("nod_generic", "f3_turret_2")
  Node_AddSon(node7, node159)
  Body_SetCS(node159, MAT_Vector3(1667.773, 647.5748, 264.7912), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node159, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node159, 0)
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("nod_generic", "f4_trigger")
  Node_AddSon(node7, node160)
  Body_SetCS(node160, MAT_Vector3(2003.194, 643.3567, 211.5866), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node160, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node160, 0)
  Body_SetNameKey(node160, -1)
  Body_SetCargoKey(node160, -1, 0)
  Body_SetCargoKey(node160, -1, 1)
  Body_SetCargoKey(node160, -1, 2)
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("nod_generic", "f4_turret_1")
  Node_AddSon(node7, node161)
  Body_SetCS(node161, MAT_Vector3(1956.396, 626.8931, 212.2891), MAT_Vector3(38.34619, 0, 0))
  Node_ParseIniFile(node161, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node161, 0)
  Node_EnterSimulation(node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("nod_generic", "f4_turret_2")
  Node_AddSon(node7, node162)
  Body_SetCS(node162, MAT_Vector3(2024.138, 685.2364, 214.4849), MAT_Vector3(43.63082, 0, 0))
  Node_ParseIniFile(node162, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node162, 0)
  Node_EnterSimulation(node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("nod_generic", "f5_trigger")
  Node_AddSon(node7, node163)
  Body_SetCS(node163, MAT_Vector3(1172.334, 585.5845, 216.6819), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node163, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node163, 0)
  Body_SetNameKey(node163, -1)
  Body_SetCargoKey(node163, -1, 0)
  Body_SetCargoKey(node163, -1, 1)
  Body_SetCargoKey(node163, -1, 2)
  Node_EnterSimulation(node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("nod_generic", "f5_turret_1")
  Node_AddSon(node7, node164)
  Body_SetCS(node164, MAT_Vector3(1146.353, 558.7104, 223.1946), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node164, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node164, 0)
  Node_EnterSimulation(node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("nod_generic", "f5_turret_2")
  Node_AddSon(node7, node165)
  Body_SetCS(node165, MAT_Vector3(1195.36, 613.5461, 215.312), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node165, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node165, 0)
  Node_EnterSimulation(node165)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("nod_generic", "radio_turret_1")
  Node_AddSon(node7, node166)
  Body_SetCS(node166, MAT_Vector3(1046.875, 3141.401, 260.1196), MAT_Vector3(146.8162, 0, 0))
  Node_ParseIniFile(node166, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node166, 0)
  Node_EnterSimulation(node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("nod_generic", "radio_turret_2")
  Node_AddSon(node7, node167)
  Body_SetCS(node167, MAT_Vector3(1198.368, 3105.855, 260.1196), MAT_Vector3(177.2288, 0, 0))
  Node_ParseIniFile(node167, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node167, 0)
  Node_EnterSimulation(node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("nod_generic", "NavyHQ_turret_1")
  Node_AddSon(node7, node168)
  Body_SetCS(node168, MAT_Vector3(3301.042, 2757.635, 257.0448), MAT_Vector3(105.5926, 0, 0))
  Node_ParseIniFile(node168, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node168, 0)
  Node_EnterSimulation(node168)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("nod_generic", "NavyHQ_turret_2")
  Node_AddSon(node7, node169)
  Body_SetCS(node169, MAT_Vector3(3225.93, 3126.014, 349.8936), MAT_Vector3(105.5926, 0, 0))
  Node_ParseIniFile(node169, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node169, 0)
  Node_EnterSimulation(node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("nod_generic", "NavyHQ_turret_3")
  Node_AddSon(node7, node170)
  Body_SetCS(node170, MAT_Vector3(3225.518, 3182.864, 349.8936), MAT_Vector3(73.35264, 0, 0))
  Node_ParseIniFile(node170, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node170, 0)
  Node_EnterSimulation(node170)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("nod_generic", "NeoTec_turret_1")
  Node_AddSon(node7, node171)
  Body_SetCS(node171, MAT_Vector3(2960.575, 1034.431, 270.1736), MAT_Vector3(73.35264, 0, 0))
  Node_ParseIniFile(node171, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node171, 0)
  Node_EnterSimulation(node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("nod_generic", "NeoTec_turret_2")
  Node_AddSon(node7, node172)
  Body_SetCS(node172, MAT_Vector3(3130.673, 1057.441, 272.6244), MAT_Vector3(42.261, 0, 0))
  Node_ParseIniFile(node172, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node172, 0)
  Node_EnterSimulation(node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("nod_generic", "NeoTec_turret_3")
  Node_AddSon(node7, node173)
  Body_SetCS(node173, MAT_Vector3(3260.162, 1104.835, 275.0752), MAT_Vector3(42.261, 0, 0))
  Node_ParseIniFile(node173, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node173, 0)
  Node_EnterSimulation(node173)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("nod_generic", "NeoTec_turret_4")
  Node_AddSon(node7, node174)
  Body_SetCS(node174, MAT_Vector3(3330.99, 1271.111, 306.7187), MAT_Vector3(42.261, 0, 0))
  Node_ParseIniFile(node174, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node174, 0)
  Node_EnterSimulation(node174)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("nod_generic", "gen_tnk_g_4")
  Node_AddSon(node7, node175)
  Body_SetCS(node175, MAT_Vector3(3208.535, 1049.25, 263.7701), MAT_Vector3(-90.16512, 0, 0))
  Node_ParseIniFile(node175, "osd/des/des_tank_big_4n2.osd")
  Body_SetFriendOrFoeID(node175, 5)
  Body_SetNameKey(node175, -1)
  Body_SetCargoKey(node175, -1, 0)
  Body_SetCargoKey(node175, -1, 1)
  Body_SetCargoKey(node175, -1, 2)
  Node_EnterSimulation(node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("nod_generic", "gen_tnk_g_3")
  Node_AddSon(node7, node176)
  Body_SetCS(node176, MAT_Vector3(3360.85, 1170.492, 296.2919), MAT_Vector3(-90.06723, 0, 0))
  Node_ParseIniFile(node176, "osd/des/des_tank_big_4n2.osd")
  Body_SetFriendOrFoeID(node176, 5)
  Body_SetNameKey(node176, -1)
  Body_SetCargoKey(node176, -1, 0)
  Body_SetCargoKey(node176, -1, 1)
  Body_SetCargoKey(node176, -1, 2)
  Node_EnterSimulation(node176)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node7, node177)
  Node_ParseIniFile(node177, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node177, "map/4H1/terrain/coral01.tga")
  Node_EnterSimulation(node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node7, node178)
  Node_ParseIniFile(node178, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node178, "map/4H1/terrain/grass01.tga")
  Node_EnterSimulation(node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node7, node179)
  Node_ParseIniFile(node179, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node179, "map/4H1/terrain/stone01.tga")
  Node_EnterSimulation(node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("nod_fx_plant", "coral_03_1")
  Node_AddSon(node7, node180)
  Node_ParseIniFile(node180, "osd/fx_plant/coral_03.osd")
  FX_Plant_SetMap(node180, "map/4H1/terrain/coral03.tga")
  Node_EnterSimulation(node180)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("nod_fx_sky", "fx_sky_11_1")
  Node_AddSon(node7, node181)
  Node_ParseIniFile(node181, "osd/fx_sky/fx_sky_11.osd")
  Node_EnterSimulation(node181)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("nod_fx_plankton", "fx_plankton_cyan_1")
  Node_AddSon(node7, node182)
  Node_ParseIniFile(node182, "osd/fx_plankton/fx_plankton_cyan.osd")
  Node_EnterSimulation(node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node183)
  Node_EnterSimulation(node183)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node183, node184)
  Node_EnterSimulation(node184)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node183, node185)
  Node_EnterSimulation(node185)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_Path", "DockPath_1")
  Node_AddSon(node185, node186)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node186, node187)
  Position_SetPosition(node187, MAT_Vector3(1603.016573, 1826.431692, 328.592799))
  Position_SetRadius(node187, 5)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node186, node188)
  Position_SetPosition(node188, MAT_Vector3(1586.704, 1873.558, 332.144745))
  Position_SetRadius(node188, 5)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_Path", "ApproachPath_1")
  Node_AddSon(node185, node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node189, node190)
  Position_SetPosition(node190, MAT_Vector3(1668.787, 1721.284, 308.4796))
  Position_SetRadius(node190, 5)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node189, node191)
  Position_SetPosition(node191, MAT_Vector3(1612.641493, 1786.25264, 322.449482))
  Position_SetRadius(node191, 5)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Path", "Path_1")
  Node_AddSon(node185, node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node192, node193)
  Position_SetPosition(node193, MAT_Vector3(1668.787, 1721.284, 308.4796))
  Position_SetRadius(node193, 5)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node192, node194)
  Position_SetPosition(node194, MAT_Vector3(1999.518787, 1398.012048, 322.4495))
  Position_SetRadius(node194, 5)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node192, node195)
  Position_SetPosition(node195, MAT_Vector3(2541.07238, 1418.039172, 366.170848))
  Position_SetRadius(node195, 5)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node192, node196)
  Position_SetPosition(node196, MAT_Vector3(3187.800554, 1147.840827, 340.746927))
  Position_SetRadius(node196, 5)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node192, node197)
  Position_SetPosition(node197, MAT_Vector3(3352.786029, 1132.691356, 378.345843))
  Position_SetRadius(node197, 5)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("NOD_Path", "Path_2")
  Node_AddSon(node185, node198)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node198, node199)
  Position_SetPosition(node199, MAT_Vector3(1731.453576, 1577.811802, 335.908404))
  Position_SetRadius(node199, 5)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node198, node200)
  Position_SetPosition(node200, MAT_Vector3(2039.266125, 1444.739418, 343.194808))
  Position_SetRadius(node200, 5)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("NOD_PatrolArea", "DockArea_1")
  Node_AddSon(node185, node201)
  PatrolArea_SetPosition(node201, MAT_Vector3(1556.586913, 1678.260575, 268.272235))
  PatrolArea_SetRadius(node201, 150)
  PatrolArea_SetMinZ(node201, -80)
  PatrolArea_SetMaxZ(node201, 120)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("NOD_PatrolArea", "HoleMap")
  Node_AddSon(node185, node202)
  PatrolArea_SetPosition(node202, MAT_Vector3(2039.142886, 1992.805707, 344.385612))
  PatrolArea_SetRadius(node202, 2500)
  PatrolArea_SetMinZ(node202, -150)
  PatrolArea_SetMaxZ(node202, 320)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("NOD_PatrolArea", "TriggerArea_1")
  Node_AddSon(node185, node203)
  PatrolArea_SetPosition(node203, MAT_Vector3(1556.587, 1678.261, 268.2722))
  PatrolArea_SetRadius(node203, 150)
  PatrolArea_SetMinZ(node203, -80)
  PatrolArea_SetMaxZ(node203, 120)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node183, node204)
  Node_EnterSimulation(node204)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node183, node205)
  Node_EnterSimulation(node205)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("NOD_Trigger", "TriggerPresence_1")
  Node_AddSon(node205, node206)
  Body_SetFriendOrFoeID(node206, 0)
  Body_SetPosition(node206, MAT_Vector3(1814.242441, 1584.268435, 270.297065))
  Trigger_SetPresenceSphere(node206, 50)
  Node_EnterSimulation(node206)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("NOD_Trigger", "TriggerPresence_2")
  Node_AddSon(node205, node207)
  Body_SetFriendOrFoeID(node207, 0)
  Body_SetPosition(node207, MAT_Vector3(1998.359138, 1396.348083, 299.152148))
  Trigger_SetPresenceSphere(node207, 50)
  Node_EnterSimulation(node207)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node183, node208)
  Node_EnterSimulation(node208)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node208, node209)
  Body_SetCS(node209, MAT_Vector3(1585.116462, 1743.25262, 337.158322), MAT_Vector3(-22.145414, 0, 0))
  Node_ParseIniFile(node209, "osd/pla/pla_vortex.osd")
  Body_SetFriendOrFoeID(node209, 1)
  Node_EnterSimulation(node209)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("nod_vessel", "Griegh")
  Node_AddSon(node208, node210)
  Body_SetCS(node210, MAT_Vector3(1586.32823, 1876.786059, 331.546277), MAT_Vector3(-168.217859, 0, 0))
  Node_ParseIniFile(node210, "osd/gen/gen_voodoobreath_4n2.osd")
  Body_SetFriendOrFoeID(node210, 5)
  Body_SetNameKey(node210, -1)
  Body_SetCargoKey(node210, -1, 0)
  Body_SetCargoKey(node210, -1, 1)
  Body_SetCargoKey(node210, -1, 2)
  Node_EnterSimulation(node210)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("nod_vessel", "atl_scout2_1")
  Node_AddSon(node208, node211)
  Body_SetCS(node211, MAT_Vector3(1549.062847, 1701.889933, 315.587996), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node211, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node211, 3)
  Body_SetNameKey(node211, 9)
  Body_SetCargoKey(node211, -1, 0)
  Body_SetCargoKey(node211, -1, 1)
  Body_SetCargoKey(node211, -1, 2)
  Node_EnterSimulation(node211)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("nod_vessel", "atl_scout1_1")
  Node_AddSon(node208, node212)
  Body_SetCS(node212, MAT_Vector3(2706.240565, 1550.979594, 275.248207), MAT_Vector3(157.066294, 7.160436, 4.405741))
  Node_ParseIniFile(node212, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node212, 2)
  Body_SetNameKey(node212, -1)
  Body_SetCargoKey(node212, -1, 0)
  Body_SetCargoKey(node212, -1, 1)
  Body_SetCargoKey(node212, -1, 2)
  Node_EnterSimulation(node212)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("nod_vessel", "atl_scout1_2")
  Node_AddSon(node208, node213)
  Body_SetCS(node213, MAT_Vector3(1713.222948, 1217.751397, 535.805279), MAT_Vector3(-44.250691, 10.996397, -12.101883))
  Node_ParseIniFile(node213, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node213, 3)
  Body_SetNameKey(node213, -1)
  Body_SetCargoKey(node213, -1, 0)
  Body_SetCargoKey(node213, -1, 1)
  Body_SetCargoKey(node213, -1, 2)
  Node_EnterSimulation(node213)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("nod_vessel", "atl_scout1_3")
  Node_AddSon(node208, node214)
  Body_SetCS(node214, MAT_Vector3(3209.600729, 1281.730257, 463.361193), MAT_Vector3(-119.301049, 0, 0))
  Node_ParseIniFile(node214, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node214, 2)
  Body_SetNameKey(node214, -1)
  Body_SetCargoKey(node214, -1, 0)
  Body_SetCargoKey(node214, -1, 1)
  Body_SetCargoKey(node214, -1, 2)
  Node_EnterSimulation(node214)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("nod_vessel", "atl_scout1_4")
  Node_AddSon(node208, node215)
  Body_SetCS(node215, MAT_Vector3(3108.256319, 954.59961, 538.084058), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node215, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node215, 3)
  Body_SetNameKey(node215, -1)
  Body_SetCargoKey(node215, -1, 0)
  Body_SetCargoKey(node215, -1, 1)
  Body_SetCargoKey(node215, -1, 2)
  Node_EnterSimulation(node215)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("nod_vessel", "wng_harper_c4_1")
  Node_AddSon(node208, node216)
  Body_SetCS(node216, MAT_Vector3(1554.702717, 1748.257178, 350.650574), MAT_Vector3(-37.308337, -0.823452, 2.438881))
  Node_ParseIniFile(node216, "osd/wng/wng_harper_c4.osd")
  Body_SetFriendOrFoeID(node216, 4)
  Body_SetNameKey(node216, -1)
  Body_SetCargoKey(node216, -1, 0)
  Body_SetCargoKey(node216, -1, 1)
  Body_SetCargoKey(node216, -1, 2)
  Node_EnterSimulation(node216)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("nod_waypoint", "nav_waypoint_follow_1")
  Node_AddSon(node208, node217)
  Body_SetPosition(node217, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node217, 250)
  Node_ParseIniFile(node217, "osd/nav/nav_waypoint_follow.osd")
  Node_EnterSimulation(node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("nod_waypoint", "nav_waypoint_01_1")
  Node_AddSon(node208, node218)
  Body_SetPosition(node218, MAT_Vector3(3281.670531, 1150.442821, 276.088219))
  WayPoint_SetRadius(node218, 250)
  Node_ParseIniFile(node218, "osd/nav/nav_waypoint_01.osd")
  Node_EnterSimulation(node218)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node219)
  Camera_SetBackPlane(node219, 512)
  Node_EnterSimulation(node219)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node220)
  Node_EnterSimulation(node220)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node220, node221)
  Node_EnterSimulation(node221)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node220, node222)
  Node_EnterSimulation(node222)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node222, node223)
  Position_SetPosition(node223, MAT_Vector3(1661.508391, 1803.359687, 335.201225))
  Position_SetRadius(node223, 5)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("NOD_Position", "Position_2")
  Node_AddSon(node222, node224)
  Position_SetPosition(node224, MAT_Vector3(1799.724074, 1655.581109, 317.749175))
  Position_SetRadius(node224, 5)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("NOD_Path", "PlaPath_1")
  Node_AddSon(node222, node225)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node225, node226)
  Position_SetPosition(node226, MAT_Vector3(1645.657, 1696.028, 308.4796))
  Position_SetRadius(node226, 5)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node225, node227)
  Position_SetPosition(node227, MAT_Vector3(1971.807, 1387.831, 322.4495))
  Position_SetRadius(node227, 5)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node220, node228)
  Node_EnterSimulation(node228)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("NOD_Director", "Chapter1IntroV")
  Node_AddSon(node228, node229)
  Node_EnterSimulation(node229)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("NOD_Director", "Chapter1IntroAddon")
  Node_AddSon(node228, node230)
  Node_EnterSimulation(node230)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node220, node231)
  Node_EnterSimulation(node231)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node220, node232)
  Node_EnterSimulation(node232)
end
SetEnemyMatrixElement(0, 0, N)
SetEnemyMatrixElement(1, 0, N)
SetEnemyMatrixElement(2, 0, N)
SetEnemyMatrixElement(3, 0, N)
SetEnemyMatrixElement(4, 0, N)
SetEnemyMatrixElement(5, 0, N)
SetEnemyMatrixElement(6, 0, N)
SetEnemyMatrixElement(7, 0, N)
SetEnemyMatrixElement(8, 0, N)
SetEnemyMatrixElement(9, 0, N)
SetEnemyMatrixElement(10, 0, N)
SetEnemyMatrixElement(11, 0, N)
SetEnemyMatrixElement(12, 0, N)
SetEnemyMatrixElement(13, 0, N)
SetEnemyMatrixElement(14, 0, N)
SetEnemyMatrixElement(15, 0, N)
SetEnemyMatrixElement(0, 1, N)
SetEnemyMatrixElement(1, 1, N)
SetEnemyMatrixElement(2, 1, E)
SetEnemyMatrixElement(3, 1, E)
SetEnemyMatrixElement(4, 1, F)
SetEnemyMatrixElement(5, 1, F)
SetEnemyMatrixElement(6, 1, N)
SetEnemyMatrixElement(7, 1, N)
SetEnemyMatrixElement(8, 1, N)
SetEnemyMatrixElement(9, 1, N)
SetEnemyMatrixElement(10, 1, N)
SetEnemyMatrixElement(11, 1, N)
SetEnemyMatrixElement(12, 1, N)
SetEnemyMatrixElement(13, 1, N)
SetEnemyMatrixElement(14, 1, N)
SetEnemyMatrixElement(15, 1, N)
SetEnemyMatrixElement(0, 2, N)
SetEnemyMatrixElement(1, 2, E)
SetEnemyMatrixElement(2, 2, N)
SetEnemyMatrixElement(3, 2, N)
SetEnemyMatrixElement(4, 2, E)
SetEnemyMatrixElement(5, 2, E)
SetEnemyMatrixElement(6, 2, N)
SetEnemyMatrixElement(7, 2, N)
SetEnemyMatrixElement(8, 2, N)
SetEnemyMatrixElement(9, 2, N)
SetEnemyMatrixElement(10, 2, N)
SetEnemyMatrixElement(11, 2, N)
SetEnemyMatrixElement(12, 2, N)
SetEnemyMatrixElement(13, 2, N)
SetEnemyMatrixElement(14, 2, N)
SetEnemyMatrixElement(15, 2, N)
SetEnemyMatrixElement(0, 3, N)
SetEnemyMatrixElement(1, 3, E)
SetEnemyMatrixElement(2, 3, N)
SetEnemyMatrixElement(3, 3, N)
SetEnemyMatrixElement(4, 3, N)
SetEnemyMatrixElement(5, 3, E)
SetEnemyMatrixElement(6, 3, N)
SetEnemyMatrixElement(7, 3, N)
SetEnemyMatrixElement(8, 3, N)
SetEnemyMatrixElement(9, 3, N)
SetEnemyMatrixElement(10, 3, N)
SetEnemyMatrixElement(11, 3, N)
SetEnemyMatrixElement(12, 3, N)
SetEnemyMatrixElement(13, 3, N)
SetEnemyMatrixElement(14, 3, N)
SetEnemyMatrixElement(15, 3, N)
SetEnemyMatrixElement(0, 4, N)
SetEnemyMatrixElement(1, 4, F)
SetEnemyMatrixElement(2, 4, E)
SetEnemyMatrixElement(3, 4, N)
SetEnemyMatrixElement(4, 4, N)
SetEnemyMatrixElement(5, 4, F)
SetEnemyMatrixElement(6, 4, N)
SetEnemyMatrixElement(7, 4, N)
SetEnemyMatrixElement(8, 4, N)
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
SetEnemyMatrixElement(0, 6, N)
SetEnemyMatrixElement(1, 6, N)
SetEnemyMatrixElement(2, 6, N)
SetEnemyMatrixElement(3, 6, N)
SetEnemyMatrixElement(4, 6, N)
SetEnemyMatrixElement(5, 6, N)
SetEnemyMatrixElement(6, 6, N)
SetEnemyMatrixElement(7, 6, N)
SetEnemyMatrixElement(8, 6, N)
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
SetEnemyMatrixElement(3, 7, N)
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
SetEnemyMatrixElement(1, 8, N)
SetEnemyMatrixElement(2, 8, N)
SetEnemyMatrixElement(3, 8, N)
SetEnemyMatrixElement(4, 8, N)
SetEnemyMatrixElement(5, 8, N)
SetEnemyMatrixElement(6, 8, N)
SetEnemyMatrixElement(7, 8, N)
SetEnemyMatrixElement(8, 8, N)
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
                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                  if not (o5852.Value ~= True) then
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
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("RC1 2609 0002")
  Game_MissionEnd(GetGameNode(), 1)
end, SetStateValue = function(L0)
  if not (o2.Value == L0) then
    o2["Value"] = L0
    if not (L0 ~= 1) then
      o2.ChangeTo1()
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
                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                  if not (o5876.Value == True) then
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
end, ReCalculate = function()
  o26.SetStateValue(o26.GetCalculated())
end, StartCalculate = function()
  o26["Value"] = o26.GetCalculated()
end, ChangeTo1 = function()
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
                                                                                                                                                                                                                                                                                                                                                  if not (o5877.Value == True) then
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
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o30, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o30, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o30, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o30, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
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
S_o65 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o65, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o65, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o65, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o65, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
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
S_o100 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o100, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o100, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o100, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o100, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
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
S_o135 = { [nil] = {}, Start = function(L0)

end }
S_o169 = { [nil] = {}, Start = function(L0)

end }
S_o203 = { [nil] = {}, Start = function(L0)

end }
S_o237 = { [nil] = {}, Start = function(L0)

end }
S_o271 = { [nil] = {}, Start = function(L0)

end }
S_o305 = { [nil] = {}, Start = function(L0)

end }
S_o339 = { [nil] = {}, Start = function(L0)

end }
S_o373 = { [nil] = {}, Start = function(L0)

end }
S_o407 = { [nil] = {}, Start = function(L0)

end }
S_o441 = { [nil] = {}, Start = function(L0)

end }
S_o475 = { [nil] = {}, Start = function(L0)

end }
S_o509 = { [nil] = {}, Start = function(L0)

end }
S_o543 = { [nil] = {}, Start = function(L0)

end }
S_o577 = { [nil] = {}, Start = function(L0)

end }
S_o611 = { [nil] = {}, Start = function(L0)

end }
S_o645 = { [nil] = {}, Start = function(L0)

end }
S_o679 = { [nil] = {}, Start = function(L0)

end }
S_o713 = { [nil] = {}, Start = function(L0)

end }
S_o747 = { [nil] = {}, Start = function(L0)

end }
S_o781 = { [nil] = {}, Start = function(L0)

end }
S_o815 = { [nil] = {}, Start = function(L0)

end }
S_o849 = { [nil] = {}, Start = function(L0)

end }
S_o883 = { [nil] = {}, Start = function(L0)

end }
S_o917 = { [nil] = {}, Start = function(L0)

end }
S_o951 = { [nil] = {}, Start = function(L0)

end }
S_o985 = { [nil] = {}, Start = function(L0)

end }
S_o1019 = { [nil] = {}, Start = function(L0)

end }
S_o1053 = { [nil] = {}, Start = function(L0)

end }
S_o1087 = { [nil] = {}, Start = function(L0)

end }
S_o1121 = { [nil] = {}, Start = function(L0)

end }
S_o1155 = { [nil] = {}, Start = function(L0)

end }
S_o1189 = { [nil] = {}, Start = function(L0)

end }
S_o1223 = { [nil] = {}, Start = function(L0)

end }
S_o1257 = { [nil] = {}, Start = function(L0)

end }
S_o1291 = { [nil] = {}, Start = function(L0)

end }
S_o1325 = { [nil] = {}, Start = function(L0)

end }
S_o1359 = { [nil] = {}, Start = function(L0)

end }
S_o1393 = { [nil] = {}, Start = function(L0)

end }
S_o1427 = { [nil] = {}, Start = function(L0)

end }
S_o1461 = { [nil] = {}, Start = function(L0)

end }
S_o1495 = { [nil] = {}, Start = function(L0)

end }
S_o1529 = { [nil] = {}, Start = function(L0)

end }
S_o1563 = { [nil] = {}, Start = function(L0)

end }
S_o1597 = { [nil] = {}, Start = function(L0)

end }
S_o1631 = { [nil] = {}, Start = function(L0)

end }
S_o1665 = { [nil] = {}, Start = function(L0)

end }
S_o1699 = { [nil] = {}, Start = function(L0)

end }
S_o1733 = { [nil] = {}, Start = function(L0)

end }
S_o1767 = { [nil] = {}, Start = function(L0)

end }
S_o1801 = { [nil] = {}, Start = function(L0)

end }
S_o1835 = { [nil] = {}, Start = function(L0)

end }
S_o1869 = { [nil] = {}, Start = function(L0)

end }
S_o1903 = { [nil] = {}, Start = function(L0)

end }
S_o1937 = { [nil] = {}, Start = function(L0)

end }
S_o1971 = { [nil] = {}, Start = function(L0)

end }
S_o2005 = { [nil] = {}, Start = function(L0)

end }
S_o2039 = { [nil] = {}, Start = function(L0)

end }
S_o2073 = { [nil] = {}, Start = function(L0)

end }
S_o2107 = { [nil] = {}, Start = function(L0)

end }
S_o2141 = { [nil] = {}, Start = function(L0)

end }
S_o2175 = { [nil] = {}, Start = function(L0)

end }
S_o2209 = { [nil] = {}, Start = function(L0)

end }
S_o2243 = { [nil] = {}, Start = function(L0)

end }
S_o2277 = { [nil] = {}, Start = function(L0)

end }
S_o2311 = { [nil] = {}, Start = function(L0)

end }
S_o2345 = { [nil] = {}, Start = function(L0)

end }
S_o2379 = { [nil] = {}, Start = function(L0)

end }
S_o2413 = { [nil] = {}, Start = function(L0)

end }
S_o2447 = { [nil] = {}, Start = function(L0)

end }
S_o2481 = { [nil] = {}, Start = function(L0)

end }
S_o2515 = { [nil] = {}, Start = function(L0)

end }
S_o2549 = { [nil] = {}, Start = function(L0)

end }
S_o2583 = { [nil] = {}, Start = function(L0)

end }
S_o2617 = { [nil] = {}, Start = function(L0)

end }
S_o2651 = { [nil] = {}, Start = function(L0)

end }
S_o2685 = { [nil] = {}, Start = function(L0)

end }
S_o2719 = { [nil] = {}, Start = function(L0)

end }
S_o2753 = { [nil] = {}, Start = function(L0)

end }
S_o2787 = { [nil] = {}, Start = function(L0)

end }
S_o2821 = { [nil] = {}, Start = function(L0)

end }
S_o2855 = { [nil] = {}, Start = function(L0)

end }
S_o2889 = { [nil] = {}, Start = function(L0)

end }
S_o2923 = { [nil] = {}, Start = function(L0)

end }
S_o2957 = { [nil] = {}, Start = function(L0)

end }
S_o2991 = { [nil] = {}, Start = function(L0)

end }
S_o3025 = { [nil] = {}, Start = function(L0)

end }
S_o3059 = { [nil] = {}, Start = function(L0)

end }
S_o3093 = { [nil] = {}, Start = function(L0)

end }
S_o3127 = { [nil] = {}, Start = function(L0)

end }
S_o3161 = { [nil] = {}, Start = function(L0)

end }
S_o3195 = { [nil] = {}, Start = function(L0)

end }
S_o3229 = { [nil] = {}, Start = function(L0)

end }
S_o3263 = { [nil] = {}, Start = function(L0)

end }
S_o3297 = { [nil] = {}, Start = function(L0)

end }
S_o3331 = { [nil] = {}, Start = function(L0)

end }
S_o3365 = { [nil] = {}, Start = function(L0)

end }
S_o3399 = { [nil] = {}, Start = function(L0)

end }
S_o3433 = { [nil] = {}, Start = function(L0)

end }
S_o3467 = { [nil] = {}, Start = function(L0)

end }
S_o3501 = { [nil] = {}, Start = function(L0)

end }
S_o3535 = { [nil] = {}, Start = function(L0)

end }
S_o3569 = { [nil] = {}, Start = function(L0)

end }
S_o3603 = { [nil] = {}, Start = function(L0)

end }
S_o3637 = { [nil] = {}, Start = function(L0)

end }
S_o3671 = { [nil] = {}, Start = function(L0)

end }
S_o3705 = { [nil] = {}, Start = function(L0)

end }
S_o3739 = { [nil] = {}, Start = function(L0)

end }
S_o3773 = { [nil] = {}, Start = function(L0)

end }
S_o3807 = { [nil] = {}, Start = function(L0)

end }
S_o3841 = { [nil] = {}, Start = function(L0)

end }
S_o3875 = { [nil] = {}, Start = function(L0)

end }
S_o3909 = { [nil] = {}, Start = function(L0)

end }
S_o3943 = { [nil] = {}, Start = function(L0)

end }
S_o3977 = { [nil] = {}, Start = function(L0)

end }
S_o4011 = { [nil] = {}, Start = function(L0)

end }
S_o4045 = { [nil] = {}, Start = function(L0)

end }
S_o4079 = { [nil] = {}, Start = function(L0)

end }
S_o4113 = { [nil] = {}, Start = function(L0)

end }
S_o4147 = { [nil] = {}, Start = function(L0)

end }
S_o4181 = { [nil] = {}, Start = function(L0)

end }
S_o4215 = { [nil] = {}, Start = function(L0)

end }
S_o4249 = { [nil] = {}, Start = function(L0)

end }
S_o4283 = { [nil] = {}, Start = function(L0)

end }
S_o4317 = { [nil] = {}, Start = function(L0)

end }
S_o4351 = { [nil] = {}, Start = function(L0)

end }
S_o4385 = { [nil] = {}, Start = function(L0)

end }
S_o4419 = { [nil] = {}, Start = function(L0)

end }
S_o4453 = { [nil] = {}, Start = function(L0)

end }
S_o4487 = { [nil] = {}, Start = function(L0)

end }
S_o4521 = { [nil] = {}, Start = function(L0)

end }
S_o4555 = { [nil] = {}, Start = function(L0)

end }
S_o4589 = { [nil] = {}, Start = function(L0)

end }
S_o4623 = { [nil] = {}, Start = function(L0)

end }
S_o4657 = { [nil] = {}, Start = function(L0)

end }
S_o4691 = { [nil] = {}, Start = function(L0)

end }
S_o4725 = { [nil] = {}, Start = function(L0)

end }
S_o4759 = { [nil] = {}, Start = function(L0)

end }
S_o4793 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4793, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4793, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4793, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
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
S_o4828 = { [nil] = {}, Start = function(L0)

end }
S_o4862 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4862, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4862, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4862, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o4865.SetStateValue(L1)
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
o4865 = { [nil] = {}, Start = function()
  o4865["Value"] = False
  o4898.StartCalculate()
  o4936.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4865.Value == L0) then
    o4865["Value"] = L0
    o4898.ReCalculate()
    o4936.ReCalculate()
  end
end }
S_o4897 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4897, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4897, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4897, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o4897, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4897, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o4897, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4898.Value ~= True) then
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
o4898 = { [nil] = {}, GetCalculated = function()
  if not (o4865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4898.SetStateValue(o4898.GetCalculated())
end, StartCalculate = function()
  o4898["Value"] = o4898.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4898.Value == L0) then
    o4898["Value"] = L0
    CallFunction(o4897, "ProcesseStateChange")
  end
end }
S_o4935 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4935, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4935, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4935, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o4935, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4935, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o4935, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4936.Value ~= True) then
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
o4936 = { [nil] = {}, GetCalculated = function()
  if not (o4865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4936.SetStateValue(o4936.GetCalculated())
end, StartCalculate = function()
  o4936["Value"] = o4936.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4936.Value == L0) then
    o4936["Value"] = L0
    CallFunction(o4935, "ProcesseStateChange")
  end
end }
S_o4973 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4973, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4973, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4973, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o4976.SetStateValue(L1)
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
o4976 = { [nil] = {}, Start = function()
  o4976["Value"] = False
  o5009.StartCalculate()
  o5047.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4976.Value == L0) then
    o4976["Value"] = L0
    o5009.ReCalculate()
    o5047.ReCalculate()
  end
end }
S_o5008 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5008, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5008, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5008, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5008, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5008, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o5008, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5009.Value ~= True) then
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
o5009 = { [nil] = {}, GetCalculated = function()
  if not (o4976.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5009.SetStateValue(o5009.GetCalculated())
end, StartCalculate = function()
  o5009["Value"] = o5009.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5009.Value == L0) then
    o5009["Value"] = L0
    CallFunction(o5008, "ProcesseStateChange")
  end
end }
S_o5046 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5046, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5046, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5046, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5046, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5046, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o5046, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5047.Value ~= True) then
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
o5047 = { [nil] = {}, GetCalculated = function()
  if not (o4976.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5047.SetStateValue(o5047.GetCalculated())
end, StartCalculate = function()
  o5047["Value"] = o5047.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5047.Value == L0) then
    o5047["Value"] = L0
    CallFunction(o5046, "ProcesseStateChange")
  end
end }
S_o5084 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5084, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5084, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5084, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o5087.SetStateValue(L1)
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
o5087 = { [nil] = {}, Start = function()
  o5087["Value"] = False
  o5120.StartCalculate()
  o5158.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5087.Value == L0) then
    o5087["Value"] = L0
    o5120.ReCalculate()
    o5158.ReCalculate()
  end
end }
S_o5119 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5119, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5119, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5119, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5119, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5119, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o5119, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5120.Value ~= True) then
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
o5120 = { [nil] = {}, GetCalculated = function()
  if not (o5087.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5120.SetStateValue(o5120.GetCalculated())
end, StartCalculate = function()
  o5120["Value"] = o5120.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5120.Value == L0) then
    o5120["Value"] = L0
    CallFunction(o5119, "ProcesseStateChange")
  end
end }
S_o5157 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5157, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5157, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5157, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5157, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5157, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o5157, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5158.Value ~= True) then
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
o5158 = { [nil] = {}, GetCalculated = function()
  if not (o5087.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5158.SetStateValue(o5158.GetCalculated())
end, StartCalculate = function()
  o5158["Value"] = o5158.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5158.Value == L0) then
    o5158["Value"] = L0
    CallFunction(o5157, "ProcesseStateChange")
  end
end }
S_o5195 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5195, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5195, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5195, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o5198.SetStateValue(L1)
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
o5198 = { [nil] = {}, Start = function()
  o5198["Value"] = False
  o5231.StartCalculate()
  o5269.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5198.Value == L0) then
    o5198["Value"] = L0
    o5231.ReCalculate()
    o5269.ReCalculate()
  end
end }
S_o5230 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5230, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5230, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5230, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5230, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5230, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o5230, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5231.Value ~= True) then
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
o5231 = { [nil] = {}, GetCalculated = function()
  if not (o5198.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5231.SetStateValue(o5231.GetCalculated())
end, StartCalculate = function()
  o5231["Value"] = o5231.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5231.Value == L0) then
    o5231["Value"] = L0
    CallFunction(o5230, "ProcesseStateChange")
  end
end }
S_o5268 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5268, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5268, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5268, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5268, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5268, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o5268, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5269.Value ~= True) then
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
o5269 = { [nil] = {}, GetCalculated = function()
  if not (o5198.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5269.SetStateValue(o5269.GetCalculated())
end, StartCalculate = function()
  o5269["Value"] = o5269.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5269.Value == L0) then
    o5269["Value"] = L0
    CallFunction(o5268, "ProcesseStateChange")
  end
end }
S_o5306 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5306, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5306, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5306, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o5309.SetStateValue(L1)
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
o5309 = { [nil] = {}, Start = function()
  o5309["Value"] = False
  o5342.StartCalculate()
  o5380.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5309.Value == L0) then
    o5309["Value"] = L0
    o5342.ReCalculate()
    o5380.ReCalculate()
  end
end }
S_o5341 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5341, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5341, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5341, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5341, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5341, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o5341, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5342.Value ~= True) then
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
o5342 = { [nil] = {}, GetCalculated = function()
  if not (o5309.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5342.SetStateValue(o5342.GetCalculated())
end, StartCalculate = function()
  o5342["Value"] = o5342.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5342.Value == L0) then
    o5342["Value"] = L0
    CallFunction(o5341, "ProcesseStateChange")
  end
end }
S_o5379 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5379, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5379, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5379, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5379, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5379, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o5379, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5380.Value ~= True) then
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
o5380 = { [nil] = {}, GetCalculated = function()
  if not (o5309.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5380.SetStateValue(o5380.GetCalculated())
end, StartCalculate = function()
  o5380["Value"] = o5380.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5380.Value == L0) then
    o5380["Value"] = L0
    CallFunction(o5379, "ProcesseStateChange")
  end
end }
S_o5417 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5417, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5417, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5417, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5417, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5417, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
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
S_o5455 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5455, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5455, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5455, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5455, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5455, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
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
S_o5493 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5493, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5493, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5493, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5493, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5493, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
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
S_o5531 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5531, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5531, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5531, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5531, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5531, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
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
S_o5569 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5569, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5569, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5569, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5569, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5569, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
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
S_o5607 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5607, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5607, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5607, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5607, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5607, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
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
S_o5645 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5645, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5645, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5645, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5645, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5645, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
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
S_o5683 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5683, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5683, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5683, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5683, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5683, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
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
S_o5721 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5721, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5721, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5721, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o5721, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5721, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
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
S_o5759 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5759, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5759, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5759, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o5762.SetStateValue(L1)
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
o5762 = { [nil] = {}, Start = function()
  o5762["Value"] = False
  o5877.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5762.Value == L0) then
    o5762["Value"] = L0
    o5877.ReCalculate()
  end
end }
S_o5794 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5794, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5794, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5794, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o5797.SetStateValue(L1)
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
o5797 = { [nil] = {}, Start = function()
  o5797["Value"] = False
  o5877.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5797.Value == L0) then
    o5797["Value"] = L0
    o5877.ReCalculate()
  end
end }
o5829 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/ApproachPath_1", "/Scenario_Dynamic/Navigation/DockPath_1", "/Scenario_Dynamic/Navigation/DockArea_1")
o5831 = FormationLib.CreateFormation("Row", "", "", "", 30, 30)
S_o5832 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5832, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5832, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5832, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "Griegh", "", "", "", False, False, True)
  CallFunction(o5832, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5832, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5832, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5837.SetStateValue(L1)
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
o5837 = { [nil] = {}, Start = function()
  o5837["Value"] = False
  o5929.StartCalculate()
  o6237.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5837.Value == L0) then
    o5837["Value"] = L0
    o5929.ReCalculate()
    o6237.ReCalculate()
  end
end }
S_o5838 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5838, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5838, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5838, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "Griegh", "", "", "", False, False, True)
  CallFunction(o5838, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5838, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5838, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5843.SetStateValue(L1)
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
o5843 = { [nil] = {}, Start = function()
  o5843["Value"] = False
  o5930.StartCalculate()
  o5980.StartCalculate()
  o6028.StartCalculate()
  o6239.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5843.Value == L0) then
    o5843["Value"] = L0
    o5930.ReCalculate()
    o5980.ReCalculate()
    o6028.ReCalculate()
    o6239.ReCalculate()
  end
end }
S_o5844 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_empactor", 1)
  Body_AddItem(L0.Node, "gun_plasmagatlin", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_energy", 4000)
  Body_AddItem(L0.Node, "torpedo_flashshark", 2)
  Body_AddItem(L0.Node, "device_generator", 1)
  Body_AddItem(L0.Node, "torpedo_maneater", 8)
  Body_AddItem(L0.Node, "device_repair", 1)
  CallFunction(o5844, "Code8")
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
o5849 = { [nil] = {}, GetCalculated = function()
  if not (o5945.Value ~= True) then
    if not (o5993.Value ~= True) then
      if not (o6041.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o5849.SetStateValue(o5849.GetCalculated())
end, StartCalculate = function()
  o5849["Value"] = o5849.GetCalculated()
  o6076.StartCalculate()
  o6124.StartCalculate()
  o6172.StartCalculate()
  o6243.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5880.Node, o5844.Node, 235)
  Game_SetWayPoint(GetGameNode(), o6225.Node)
  SED_SetTaskTextKey(1364, -1, -1)
end, SetStateValue = function(L0)
  if not (o5849.Value == L0) then
    o5849["Value"] = L0
    o6076.ReCalculate()
    o6124.ReCalculate()
    o6172.ReCalculate()
    o6243.ReCalculate()
    if not (L0 ~= 1) then
      o5849.ChangeTo1()
    end
  end
end }
o5850 = { [nil] = {}, GetCalculated = function()
  if not (o5883.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5850.SetStateValue(o5850.GetCalculated())
end, StartCalculate = function()
  o5850["Value"] = o5850.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5880.Node, o5844.Node, 234)
end, SetStateValue = function(L0)
  if not (o5850.Value == L0) then
    o5850["Value"] = L0
    if not (L0 ~= 1) then
      o5850.ChangeTo1()
    end
  end
end }
o5851 = { [nil] = {}, GetCalculated = function()
  if not (o5945.Value ~= True) then
    if not (o5993.Value ~= True) then
      if not (o6041.Value ~= True) then
        if not (o6089.Value ~= True) then
          if not (o6137.Value ~= True) then
            return 1
          else
            return 0
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o5851.SetStateValue(o5851.GetCalculated())
end, StartCalculate = function()
  o5851["Value"] = o5851.GetCalculated()
  o5852.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5880.Node, o5844.Node, 1246)
  Script_Log("allassesdes")
end, SetStateValue = function(L0)
  if not (o5851.Value == L0) then
    DelayedFunction(3, o5851, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5851.Value == L0) then
    o5851["Value"] = L0
    o5852.ReCalculate()
    if not (L0 ~= 1) then
      o5851.ChangeTo1()
    end
  end
end }
o5852 = { [nil] = {}, GetCalculated = function()
  if not (o5851.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5852.SetStateValue(o5852.GetCalculated())
end, StartCalculate = function()
  o5852["Value"] = o5852.GetCalculated()
  o2.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("player - goal - win - win1 - true")
end, SetStateValue = function(L0)
  if not (o5852.Value == L0) then
    o5852["Value"] = L0
    o2.ReCalculate()
    if not (L0 ~= 1) then
      o5852.ChangeTo1()
    end
  end
end }
o5876 = { [nil] = {}, GetCalculated = function()
  if not (o5895.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5876.SetStateValue(o5876.GetCalculated())
end, StartCalculate = function()
  o5876["Value"] = o5876.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5876.Value == L0) then
    o5876["Value"] = L0
    o26.ReCalculate()
  end
end }
o5877 = { [nil] = {}, GetCalculated = function()
  if not (o5762.Value == True) then
    if not (o5797.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5877.SetStateValue(o5877.GetCalculated())
end, StartCalculate = function()
  o5877["Value"] = o5877.GetCalculated()
  o27.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5877.Value == L0) then
    o5877["Value"] = L0
    o27.ReCalculate()
  end
end }
S_o5880 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5829)
  CallFunction(o5880, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5880, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5829, "Code3")
  else
    CallFunction(o5880, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    o5830(o5831, "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/HoleMap", False, "Code4")
  else
    CallFunction(o5880, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Attacked = function(L0, L1)
  o5883.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o5895.SetStateValue(L1)
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
o5883 = { [nil] = {}, Start = function()
  o5883["Value"] = False
  o5850.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5883.Value == L0) then
    o5883["Value"] = L0
    o5850.ReCalculate()
  end
end }
o5895 = { [nil] = {}, Start = function()
  o5895["Value"] = False
  o5876.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5895.Value == L0) then
    o5895["Value"] = L0
    o5876.ReCalculate()
  end
end }
S_o5928 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5928, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5928, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5928, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DockArea_1", "/Scenario_Dynamic/Navigation/DockArea_1" }, 10, 0.6, "Code4")
  else
    CallFunction(o5928, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Path_2", 0.5, 1 } }("Code5")
  else
    CallFunction(o5928, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "Griegh", "pla", "", "", 1, "Code6")
  else
    CallFunction(o5928, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o5945.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o5929.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5930.Value ~= True) then
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
o5929 = { [nil] = {}, GetCalculated = function()
  if not (o5837.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5929.SetStateValue(o5929.GetCalculated())
end, StartCalculate = function()
  o5929["Value"] = o5929.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5929.Value == L0) then
    o5929["Value"] = L0
    CallFunction(o5928, "ProcesseStateChange")
  end
end }
o5930 = { [nil] = {}, GetCalculated = function()
  if not (o5843.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5930.SetStateValue(o5930.GetCalculated())
end, StartCalculate = function()
  o5930["Value"] = o5930.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5930.Value == L0) then
    o5930["Value"] = L0
    CallFunction(o5928, "ProcesseStateChange")
  end
end }
o5945 = { [nil] = {}, Start = function()
  o5945["Value"] = False
  o5849.StartCalculate()
  o5851.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5945.Value == L0) then
    o5945["Value"] = L0
    o5849.ReCalculate()
    o5851.ReCalculate()
  end
end }
S_o5978 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5978, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5978, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5978, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "Griegh", "pla", "", "", 1, "Code4")
  else
    CallFunction(o5978, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o5993.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5980.Value ~= True) then
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
o5980 = { [nil] = {}, GetCalculated = function()
  if not (o5843.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5980.SetStateValue(o5980.GetCalculated())
end, StartCalculate = function()
  o5980["Value"] = o5980.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5980.Value == L0) then
    DelayedFunction(3, o5980, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5980.Value == L0) then
    o5980["Value"] = L0
    CallFunction(o5978, "ProcesseStateChange")
  end
end }
o5993 = { [nil] = {}, Start = function()
  o5993["Value"] = False
  o5849.StartCalculate()
  o5851.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5993.Value == L0) then
    o5993["Value"] = L0
    o5849.ReCalculate()
    o5851.ReCalculate()
  end
end }
S_o6026 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6026, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6026, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6026, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "Griegh", "pla", "", "", 1, "Code4")
  else
    CallFunction(o6026, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o6041.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6028.Value ~= True) then
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
o6028 = { [nil] = {}, GetCalculated = function()
  if not (o5843.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6028.SetStateValue(o6028.GetCalculated())
end, StartCalculate = function()
  o6028["Value"] = o6028.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6028.Value == L0) then
    DelayedFunction(2, o6028, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6028.Value == L0) then
    o6028["Value"] = L0
    CallFunction(o6026, "ProcesseStateChange")
  end
end }
o6041 = { [nil] = {}, Start = function()
  o6041["Value"] = False
  o5849.StartCalculate()
  o5851.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6041.Value == L0) then
    o6041["Value"] = L0
    o5849.ReCalculate()
    o5851.ReCalculate()
  end
end }
S_o6074 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6074, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6074, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6074, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "des_tank_big_4n2_2", "pla", "", "", 1, "Code4")
  else
    CallFunction(o6074, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o6089.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6076.Value ~= True) then
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
o6076 = { [nil] = {}, GetCalculated = function()
  if not (o5849.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6076.SetStateValue(o6076.GetCalculated())
end, StartCalculate = function()
  o6076["Value"] = o6076.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6076.Value == L0) then
    o6076["Value"] = L0
    CallFunction(o6074, "ProcesseStateChange")
  end
end }
o6089 = { [nil] = {}, Start = function()
  o6089["Value"] = False
  o5851.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6089.Value == L0) then
    o6089["Value"] = L0
    o5851.ReCalculate()
  end
end }
S_o6122 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6122, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6122, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6122, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "des_tank_big_4n2_1", "pla", "", "", 1, "Code4")
  else
    CallFunction(o6122, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o6137.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6124.Value ~= True) then
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
o6124 = { [nil] = {}, GetCalculated = function()
  if not (o5849.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6124.SetStateValue(o6124.GetCalculated())
end, StartCalculate = function()
  o6124["Value"] = o6124.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6124.Value == L0) then
    DelayedFunction(2, o6124, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6124.Value == L0) then
    o6124["Value"] = L0
    CallFunction(o6122, "ProcesseStateChange")
  end
end }
o6137 = { [nil] = {}, Start = function()
  o6137["Value"] = False
  o5851.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6137.Value == L0) then
    o6137["Value"] = L0
    o5851.ReCalculate()
  end
end }
S_o6170 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6170, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6170, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6170, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 8 } }("Code4")
  else
    CallFunction(o6170, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o5831, 0, 301, "E", "", "", "", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/HoleMap", 1, 10, "Code5")
  else
    CallFunction(o6170, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "atl_scout2_5", "", "", "", 1, "Code6")
  else
    CallFunction(o6170, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6172.Value ~= True) then
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
o6172 = { [nil] = {}, GetCalculated = function()
  if not (o5849.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6172.SetStateValue(o6172.GetCalculated())
end, StartCalculate = function()
  o6172["Value"] = o6172.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6172.Value == L0) then
    DelayedFunction(5, o6172, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6172.Value == L0) then
    o6172["Value"] = L0
    CallFunction(o6170, "ProcesseStateChange")
  end
end }
S_o6220 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o5880.Node)
  CallFunction(o6220, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6225 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o6225, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6230 = { [nil] = {}, Start = function(L0)

end }
S_o6231 = { [nil] = {}, Start = function(L0)

end }
S_o6232 = { [nil] = {}, Start = function(L0)

end }
o6234 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o6235 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Director_BeginCutscene(L0.Node)
  Game_PlayMusic(GetGameNode(), "atmo")
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/Griegh", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o6235, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 12, "Code8")
  else
    CallFunction(o6235, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_2", 10, "MMMN", 0)
  CallFunction(o6235, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6235, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/atl_scout2_1", 2, "MMMN", 0)
  Game_PlayMusic(GetGameNode(), "agressive")
  CallFunction(o6235, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code15")
  else
    CallFunction(o6235, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  SendRadioMessageTake(o5844.Node, o5844.Node, 229)
  SendRadioMessageTake(o5880.Node, o5844.Node, 230)
  SendRadioMessageTake(o5844.Node, o5844.Node, 232)
  CallFunction(o6235, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6235, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  Director_EndCutscene(L0.Node)
  Game_SetWayPoint(GetGameNode(), o6220.Node)
  SendRadioMessageTake(o5844.Node, o5844.Node, 233)
  SED_SetTaskTextKey(1363, -1, -1)
  CallFunction(o6235, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 10) then
    if not (L0.CodeIndex >= 11) then
      if not (o6237.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 18) then
    if not (L0.CodeIndex >= 19) then
      if not (o6239.Value ~= True) then
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
o6237 = { [nil] = {}, GetCalculated = function()
  if not (o5837.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6237.SetStateValue(o6237.GetCalculated())
end, StartCalculate = function()
  o6237["Value"] = o6237.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6237.Value == L0) then
    o6237["Value"] = L0
    CallFunction(o6235, "ProcesseStateChange")
  end
end }
o6239 = { [nil] = {}, GetCalculated = function()
  if not (o5843.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6239.SetStateValue(o6239.GetCalculated())
end, StartCalculate = function()
  o6239["Value"] = o6239.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6239.Value == L0) then
    o6239["Value"] = L0
    CallFunction(o6235, "ProcesseStateChange")
  end
end }
S_o6241 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 8, "Code1")
  else
    CallFunction(o6241, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o6233, o6234, "/InGameSequences/Navigation/PlaPath_1", "pos_1", "pos_2", 0.26, 1, "Code2")
  else
    CallFunction(o6241, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6241, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SendRadioMessageTake(o5880.Node, o5844.Node, 236)
  CallFunction(o6241, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 2) then
    if not (L0.CodeIndex >= 3) then
      if not (o6243.Value ~= True) then
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
o6243 = { [nil] = {}, GetCalculated = function()
  if not (o5849.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6243.SetStateValue(o6243.GetCalculated())
end, StartCalculate = function()
  o6243["Value"] = o6243.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6243.Value == L0) then
    DelayedFunction(15, o6243, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6243.Value == L0) then
    o6243["Value"] = L0
    CallFunction(o6241, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 232)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_broadcasttower", S_o30)
  o65 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_geb_hab_big_1", S_o65)
  o100 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_parlament_1", S_o100)
  o135 = BindEasy(Node_Find("/Scenario_Static/Object"), "Bunker_A1", S_o135)
  o169 = BindEasy(Node_Find("/Scenario_Static/Object"), "Bunker_A2", S_o169)
  o203 = BindEasy(Node_Find("/Scenario_Static/Object"), "Bunker_B1", S_o203)
  o237 = BindEasy(Node_Find("/Scenario_Static/Object"), "Bunker_B2", S_o237)
  o271 = BindEasy(Node_Find("/Scenario_Static/Object"), "Bunker_C1", S_o271)
  o305 = BindEasy(Node_Find("/Scenario_Static/Object"), "Bunker_C2", S_o305)
  o339 = BindEasy(Node_Find("/Scenario_Static/Object"), "Bunker_D1", S_o339)
  o373 = BindEasy(Node_Find("/Scenario_Static/Object"), "Bunker_D2", S_o373)
  o407 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dock_1", S_o407)
  o441 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_triumph_1", S_o441)
  o475 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_obelisk_1", S_o475)
  o509 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_1", S_o509)
  o543 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_3", S_o543)
  o577 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_2", S_o577)
  o611 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_4", S_o611)
  o645 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_5", S_o645)
  o679 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_6", S_o679)
  o713 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_7", S_o713)
  o747 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_8", S_o747)
  o781 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_11", S_o781)
  o815 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_9", S_o815)
  o849 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_12", S_o849)
  o883 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_10", S_o883)
  o917 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_13", S_o917)
  o951 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_14", S_o951)
  o985 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_15", S_o985)
  o1019 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_16", S_o1019)
  o1053 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrsG_1", S_o1053)
  o1087 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrsG_2", S_o1087)
  o1121 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrsG_3", S_o1121)
  o1155 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrsG_4", S_o1155)
  o1189 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrend_1", S_o1189)
  o1223 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrend_2", S_o1223)
  o1257 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrsK_4", S_o1257)
  o1291 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrsG_5", S_o1291)
  o1325 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabG_1", S_o1325)
  o1359 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabG_2", S_o1359)
  o1393 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabG_3", S_o1393)
  o1427 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabG_4", S_o1427)
  o1461 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabG_5", S_o1461)
  o1495 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabG_6", S_o1495)
  o1529 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabG_7", S_o1529)
  o1563 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_1", S_o1563)
  o1597 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_2", S_o1597)
  o1631 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_3", S_o1631)
  o1665 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_4", S_o1665)
  o1699 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_1", S_o1699)
  o1733 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_2", S_o1733)
  o1767 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_3", S_o1767)
  o1801 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_4", S_o1801)
  o1835 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_5", S_o1835)
  o1869 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_6", S_o1869)
  o1903 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_7", S_o1903)
  o1937 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_8", S_o1937)
  o1971 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_5", S_o1971)
  o2005 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_6", S_o2005)
  o2039 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_7", S_o2039)
  o2073 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_8", S_o2073)
  o2107 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock3_1", S_o2107)
  o2141 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb2_1_1", S_o2141)
  o2175 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb2_2_1", S_o2175)
  o2209 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb2_3_1", S_o2209)
  o2243 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb2_4_1", S_o2243)
  o2277 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb2_4_2", S_o2277)
  o2311 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_2_1", S_o2311)
  o2345 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3b_3_1", S_o2345)
  o2379 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_1_1", S_o2379)
  o2413 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_1_2", S_o2413)
  o2447 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_1_3", S_o2447)
  o2481 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_2_2", S_o2481)
  o2515 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_5_1", S_o2515)
  o2549 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3b_2_1", S_o2549)
  o2583 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_5_2", S_o2583)
  o2617 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3b_3_2", S_o2617)
  o2651 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_2_3", S_o2651)
  o2685 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3b_3_3", S_o2685)
  o2719 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus3_1", S_o2719)
  o2753 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus2_1", S_o2753)
  o2787 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_1", S_o2787)
  o2821 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_2", S_o2821)
  o2855 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_1", S_o2855)
  o2889 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_2", S_o2889)
  o2923 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_3", S_o2923)
  o2957 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_4", S_o2957)
  o2991 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_g_1", S_o2991)
  o3025 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_g_2", S_o3025)
  o3059 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_1", S_o3059)
  o3093 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock1_4_1", S_o3093)
  o3127 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock1_2_1", S_o3127)
  o3161 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_2_4", S_o3161)
  o3195 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk3_1", S_o3195)
  o3229 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai1_1", S_o3229)
  o3263 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker_1", S_o3263)
  o3297 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schorn2_1", S_o3297)
  o3331 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_2_5", S_o3331)
  o3365 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus1_1", S_o3365)
  o3399 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus2_2", S_o3399)
  o3433 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus3_2", S_o3433)
  o3467 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_2", S_o3467)
  o3501 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_2_6", S_o3501)
  o3535 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock1_r_1", S_o3535)
  o3569 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_1", S_o3569)
  o3603 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk1_1", S_o3603)
  o3637 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk2_1", S_o3637)
  o3671 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_blue", S_o3671)
  o3705 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus1_2", S_o3705)
  o3739 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus2_3", S_o3739)
  o3773 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus3_3", S_o3773)
  o3807 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk3_2", S_o3807)
  o3841 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k2_1", S_o3841)
  o3875 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k2_2", S_o3875)
  o3909 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraft22_1", S_o3909)
  o3943 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraft1_1", S_o3943)
  o3977 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_1", S_o3977)
  o4011 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm2_1", S_o4011)
  o4045 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm2_2", S_o4045)
  o4079 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_3", S_o4079)
  o4113 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_4", S_o4113)
  o4147 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_5", S_o4147)
  o4181 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_2", S_o4181)
  o4215 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus1_3", S_o4215)
  o4249 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern2_1", S_o4249)
  o4283 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb4a_1_1", S_o4283)
  o4317 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schorn1_1", S_o4317)
  o4351 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock3_2", S_o4351)
  o4385 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus2_4", S_o4385)
  o4419 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_2_7", S_o4419)
  o4453 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_synaps_1", S_o4453)
  o4487 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_3", S_o4487)
  o4521 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus1_4", S_o4521)
  o4555 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_blue_HQ", S_o4555)
  o4589 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern2_2", S_o4589)
  o4623 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern2_3", S_o4623)
  o4657 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus2_5", S_o4657)
  o4691 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern_1", S_o4691)
  o4725 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk3_3", S_o4725)
  o4759 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_5_3", S_o4759)
  o4793 = BindEasy(Node_Find("/Scenario_Static/Object"), "DES_trafo_1", S_o4793)
  o4828 = BindEasy(Node_Find("/Scenario_Static/Object"), "RadioStation_DockPoint", S_o4828)
  o4862 = BindEasy(Node_Find("/Scenario_Static/Object"), "f1_trigger", S_o4862)
  o4865.Start()
  o4897 = BindEasy(Node_Find("/Scenario_Static/Object"), "f1_turret_1/Turm1", S_o4897)
  o4935 = BindEasy(Node_Find("/Scenario_Static/Object"), "f1_turret_2/Turm1", S_o4935)
  o4973 = BindEasy(Node_Find("/Scenario_Static/Object"), "f2_trigger", S_o4973)
  o4976.Start()
  o5008 = BindEasy(Node_Find("/Scenario_Static/Object"), "f2_turret_1/Turm1", S_o5008)
  o5046 = BindEasy(Node_Find("/Scenario_Static/Object"), "f2_turret_2/Turm1", S_o5046)
  o5084 = BindEasy(Node_Find("/Scenario_Static/Object"), "f3_trigger", S_o5084)
  o5087.Start()
  o5119 = BindEasy(Node_Find("/Scenario_Static/Object"), "f3_turret_1/Turm1", S_o5119)
  o5157 = BindEasy(Node_Find("/Scenario_Static/Object"), "f3_turret_2/Turm1", S_o5157)
  o5195 = BindEasy(Node_Find("/Scenario_Static/Object"), "f4_trigger", S_o5195)
  o5198.Start()
  o5230 = BindEasy(Node_Find("/Scenario_Static/Object"), "f4_turret_1/Turm1", S_o5230)
  o5268 = BindEasy(Node_Find("/Scenario_Static/Object"), "f4_turret_2/Turm1", S_o5268)
  o5306 = BindEasy(Node_Find("/Scenario_Static/Object"), "f5_trigger", S_o5306)
  o5309.Start()
  o5341 = BindEasy(Node_Find("/Scenario_Static/Object"), "f5_turret_1/Turm1", S_o5341)
  o5379 = BindEasy(Node_Find("/Scenario_Static/Object"), "f5_turret_2/Turm1", S_o5379)
  o5417 = BindEasy(Node_Find("/Scenario_Static/Object"), "radio_turret_1/Turm1", S_o5417)
  o5455 = BindEasy(Node_Find("/Scenario_Static/Object"), "radio_turret_2/Turm1", S_o5455)
  o5493 = BindEasy(Node_Find("/Scenario_Static/Object"), "NavyHQ_turret_1/Turm1", S_o5493)
  o5531 = BindEasy(Node_Find("/Scenario_Static/Object"), "NavyHQ_turret_2/Turm1", S_o5531)
  o5569 = BindEasy(Node_Find("/Scenario_Static/Object"), "NavyHQ_turret_3/Turm1", S_o5569)
  o5607 = BindEasy(Node_Find("/Scenario_Static/Object"), "NeoTec_turret_1/Turm1", S_o5607)
  o5645 = BindEasy(Node_Find("/Scenario_Static/Object"), "NeoTec_turret_2/Turm1", S_o5645)
  o5683 = BindEasy(Node_Find("/Scenario_Static/Object"), "NeoTec_turret_3/Turm1", S_o5683)
  o5721 = BindEasy(Node_Find("/Scenario_Static/Object"), "NeoTec_turret_4/Turm1", S_o5721)
  o5759 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_g_4", S_o5759)
  o5762.Start()
  o5794 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_g_3", S_o5794)
  o5797.Start()
  o5832 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_1", S_o5832)
  o5837.Start()
  o5838 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_2", S_o5838)
  o5843.Start()
  o5844 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o5844)
  o5880 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Griegh", S_o5880)
  o5883.Start()
  o5895.Start()
  o5928 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_1", S_o5928)
  o5945.Start()
  o5978 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_1", S_o5978)
  o5993.Start()
  o6026 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_2", S_o6026)
  o6041.Start()
  o6074 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_3", S_o6074)
  o6089.Start()
  o6122 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_4", S_o6122)
  o6137.Start()
  o6170 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_harper_c4_1", S_o6170)
  o6220 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_follow_1", S_o6220)
  o6225 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_01_1", S_o6225)
  o6230 = BindEasy(Node_Find("/"), "Camera", S_o6230)
  o6231 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_1", S_o6231)
  o6232 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_2", S_o6232)
  o6235 = BindEasy(Node_Find("/InGameSequences/Director"), "Chapter1IntroV", S_o6235)
  o6241 = BindEasy(Node_Find("/InGameSequences/Director"), "Chapter1IntroAddon", S_o6241)
  o5830 = { {}, o5880, o6170 }()
  o6233 = { {}, o5844 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end