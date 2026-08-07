-- dekompiliert aus map\4n1\script\4n1.sco
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
  Terrain_LoadTerrain(node1, "map/4N1/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/4N1/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrain(node0, 0.025, 0.3)
  Game_SetCausticObject(node0, 0.1, 0.3)
  Game_SetCausticBuilding(node0, 0.025, 0.3)
  Game_SetLightCache(node0, "map/4N1/Lmsh/", "map/4N1/Ltex/")
  Game_SetTerrainDepth(node0, 3333)
  Game_SetDecompressionHeight(node0, 768)
  Game_SetAmbientLight(node0, 0.019608, 0.086275, 0.141176)
  Game_SetParallelLightT(node0, 0.039216, 0.172549, 0.282353)
  Game_SetParallelLightB(node0, 0.447059, 0.352941, 0.141176)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_4N1_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track01_frag_heroic1.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_track02.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_badend.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_track01_frag_heroic2.sam", 3)
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
  node8 = Node_CreateNode("nod_generic", "atl_wblock3a_01_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(1326.914466, 2942.557443, 139.974536), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node8, "osd/atl/atl_wblock3a_01.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "atl_wblock3a_02_1")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(978.230921, 3091.571782, 107.757673), MAT_Vector3(-92.229145, 0, 0))
  Node_ParseIniFile(node9, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "atl_wblock3a_02_2")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(1050.71771, 3196.95779, 107.7577), MAT_Vector3(177.701218, 0, 0))
  Node_ParseIniFile(node10, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "gen_dock_1")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(1008.816254, 2758.158907, 124.927425), MAT_Vector3(91.337115, 0.157632, -0.241485))
  Node_ParseIniFile(node11, "osd/gen/gen_dock.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "gen_shelter_1")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(1305.52181, 2795.031436, 161.821013), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node12, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "gen_industry2_1")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(1540.419734, 2799.43785, 229.093634), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node13, "osd/gen/gen_industry2.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "gen_tank_big_1")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(1447.624037, 2941.030308, 177.34081), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node14, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "gen_tank_sml2_1")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(1465.843187, 2887.959904, 174.25715), MAT_Vector3(21.344698, 0, 0))
  Node_ParseIniFile(node15, "osd/gen/gen_tank_sml2.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "gen_tower2_1")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(1323.671084, 2651.445732, 123.579105), MAT_Vector3(-68.430376, 0, 0))
  Node_ParseIniFile(node16, "osd/gen/gen_tower2.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "gen_tower2_2")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(1352.539581, 2597.274583, 125.440457), MAT_Vector3(-20.359259, 0, 0))
  Node_ParseIniFile(node17, "osd/gen/gen_tower2.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "gen_tower2_3")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(1321.050387, 2546.632306, 117.7972), MAT_Vector3(-63.698511, 0, 0))
  Node_ParseIniFile(node18, "osd/gen/gen_tower2.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "gen_rohr_small01_end_1")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(1266.792981, 2726.455404, 150.029106), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node19, "osd/gen/gen_rohr_small01_end.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "gen_rohr_small01_end_2")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(1299.161737, 2728.7551, 153.746454), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node20, "osd/gen/gen_rohr_small01_end.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "gen_rohr_big03_1")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(1250.064647, 2568.546517, 130), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node21, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "gen_rohr_big03_2")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(1283.035098, 2574.351411, 135), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node22, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "gen_rohr_small03_1")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(1268, 2585, 125), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node23, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "gen_rohr_small01_1")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(1268.007397, 2436.316094, 125), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node24, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "gen_pole_1")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(1286.697966, 2812.362824, 199.623289), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_pole_4")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(1099.362147, 2581.390427, 123.508633), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "gen_pole_5")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(1135.071664, 3120.060089, 121.807458), MAT_Vector3(-1.723181, 0, 0))
  Node_ParseIniFile(node27, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "gen_pole2_1")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(1323.41503, 2768.076111, 199.623289), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node28, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "gen_pole2_5")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(1387.004532, 2319.513503, 209.536792), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node29, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "gen_pole2_6")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(1325.038722, 2082.474643, 200.424071), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node30, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "gen_pole2_2")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(1304.260476, 2598.400183, 124.028962), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node31, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "gen_pplant22_1")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(1541.186055, 2407.851459, 205.27791), MAT_Vector3(89.948476, 0, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_pplant22.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_parabolic_1")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(1292.804651, 2822.785732, 199.455978), MAT_Vector3(23.096633, 0, 0))
  Node_ParseIniFile(node33, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "gen_rohr_small03_2")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(1525.991986, 2609.152076, 198.867401), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "gen_rohr_small01_2")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(1526.545018, 2479.27752, 208.921205), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node35, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_metalblock3_1")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(3050.948895, 2084.484277, 189.303432), MAT_Vector3(-39.930711, -4.601843, 10.872289))
  Node_ParseIniFile(node36, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "gen_metalblock2_1")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(2999.257251, 2175.569249, 210.164886), MAT_Vector3(-78.804796, 7.612362, 5.987914))
  Node_ParseIniFile(node37, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "gen_metalblock1_1")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(2929.622676, 2594.171714, 198.105288), MAT_Vector3(-21.697743, 8.950659, -12.92972))
  Node_ParseIniFile(node38, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_metalblock2_2")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(2674.252444, 2391.380501, 186.310698), MAT_Vector3(129.562625, -4.067696, 11.237095))
  Node_ParseIniFile(node39, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_schrott1_1")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(3143.024092, 2632.757459, 192.6015), MAT_Vector3(2.02404, 0.143222, -1.31213))
  Node_ParseIniFile(node40, "osd/gen/gen_schrott1.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_schrott2_1")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(2914.188309, 2340.37976, 207.629029), MAT_Vector3(-128.436545, -45.442975, 10.964968))
  Node_ParseIniFile(node41, "osd/gen/gen_schrott2.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_vessel", "gen_freighter2_1")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(3063.375641, 2277.988382, 237.268668), MAT_Vector3(-57.771582, -6.854418, -23.466042))
  Node_ParseIniFile(node42, "osd/gen/gen_freighter2.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_schrott2_4")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(2720.015907, 2120.696868, 221.883929), MAT_Vector3(84.014863, -22.68651, -177.035063))
  Node_ParseIniFile(node43, "osd/gen/gen_schrott2.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_schrott2_5")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(2813.285688, 2326.41829, 224.186601), MAT_Vector3(-138.021898, 53.821657, 173.484899))
  Node_ParseIniFile(node44, "osd/gen/gen_schrott2.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_rohr_big03_3")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(2999.157195, 2456.940834, 207.208826), MAT_Vector3(-21.500783, 3.477277, 33.314979))
  Node_ParseIniFile(node45, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_kai1_1")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(3190.06598, 2191.223632, 200.032468), MAT_Vector3(78.795835, -9.061284, 6.579708))
  Node_ParseIniFile(node46, "osd/gen/gen_kai1.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "gen_tank_big_2")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(2902.597563, 2233.200075, 193.136238), MAT_Vector3(-15.885992, -6.882204, 8.513028))
  Node_ParseIniFile(node47, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "gen_tower_1")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(3214.110169, 2694.700503, 211.439071), MAT_Vector3(20.269478, 4.695031, -12.282104))
  Node_ParseIniFile(node48, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "gen_tower2_4")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(2792.275058, 2421.835272, 183.947855), MAT_Vector3(119.370084, 1.254816, 43.06208))
  Node_ParseIniFile(node49, "osd/gen/gen_tower2.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "gen_trafo_1")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(3243.683725, 2556.831853, 198.642819), MAT_Vector3(18.838526, -4.89304, -15.595485))
  Node_ParseIniFile(node50, "osd/gen/gen_trafo.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_chimney1_2_1")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(3200.667136, 2416.642748, 208.775746), MAT_Vector3(-22.418365, 16.241375, 7.456806))
  Node_ParseIniFile(node51, "osd/gen/gen_chimney1_2.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "gen_chimney2_1")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(2851.558985, 2114.587943, 203.841945), MAT_Vector3(29.43776, -8.594938, 21.416571))
  Node_ParseIniFile(node52, "osd/gen/gen_chimney2.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_caustigen_1")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(2869.177801, 2434.673397, 206.46717), MAT_Vector3(-12.854634, 7.689805, -8.296877))
  Node_ParseIniFile(node53, "osd/gen/gen_caustigen.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "gen_pole_2")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(3082.506633, 1974.537638, 154.391626), MAT_Vector3(45.008053, 4.078773, 64.003155))
  Node_ParseIniFile(node54, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "gen_pole_3")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(2892.79271, 2033.19242, 114.511532), MAT_Vector3(-12.975554, -7.265442, 0.351114))
  Node_ParseIniFile(node55, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "gen_pole1_1")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(3010.005264, 2198.091718, 202.510071), MAT_Vector3(-13.742674, 15.862068, -22.431581))
  Node_ParseIniFile(node56, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "gen_pole1_2")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(2944.854774, 2610.443191, 219.312041), MAT_Vector3(58.387934, 22.475389, 22.122762))
  Node_ParseIniFile(node57, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "gen_pole1_3")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(2643.534287, 2208.932315, 171.198465), MAT_Vector3(138.286266, 12.03811, -15.162578))
  Node_ParseIniFile(node58, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "gen_pole2_3")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(2652.014066, 2135.409194, 192.97916), MAT_Vector3(-14.13012, 0.736486, 11.804649))
  Node_ParseIniFile(node59, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "gen_pole2_4")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(2819.28028, 2491.26568, 205.256213), MAT_Vector3(13.595645, -3.524018, -11.198922))
  Node_ParseIniFile(node60, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "gen_schrott3_1")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(2942.557222, 2255.151748, 213.623951), MAT_Vector3(8.124416, -3.071116, 9.415987))
  Node_ParseIniFile(node61, "osd/gen/gen_schrott3.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "gen_schrott4_1")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(2798.139561, 2206.775157, 219.010052), MAT_Vector3(-44.906948, -40.01125, -85.355742))
  Node_ParseIniFile(node62, "osd/gen/gen_schrott4.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "des_tank_big_4n1_1")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(1463.20253, 2280.389637, 185.445795), MAT_Vector3(89.211882, 0, 0))
  Node_ParseIniFile(node63, "osd/des/des_tank_big_4n1.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "des_tank_big_4n1_2")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(1438.194216, 2183.936053, 191.538314), MAT_Vector3(89.157838, 0, 0))
  Node_ParseIniFile(node64, "osd/des/des_tank_big_4n1.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "des_tank_big_4n1_3")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(1414.575216, 2095.366053, 193.017077), MAT_Vector3(89.48444, 0, 0))
  Node_ParseIniFile(node65, "osd/des/des_tank_big_4n1.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "gen_turret_medium_1")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(1123.386833, 2767.561354, 128.406009), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node66, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "gen_turret_medium_2")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(1093.309647, 2426.933272, 213.470115), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node67, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "gen_turret_medium_5")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(1510.323106, 2986.63304, 189.892877), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node68, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "gen_turret_medium_6")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(1070.078198, 2958.679355, 121.222849), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node69, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "gen_dolphinhab_1")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(1084.315511, 3089.780785, 110.35957), MAT_Vector3(-43.079533, 0, 0))
  Node_ParseIniFile(node70, "osd/gen/gen_dolphinhab.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_fx_plankton", "fx_plankton_cyan_1")
  Node_AddSon(node7, node71)
  Node_ParseIniFile(node71, "osd/fx_plankton/fx_plankton_cyan.osd")
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node7, node72)
  Node_ParseIniFile(node72, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_fx_sky", "fx_sky_11_1")
  Node_AddSon(node7, node73)
  Node_ParseIniFile(node73, "osd/fx_sky/fx_sky_11.osd")
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_fungus", "fungus_01_1")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(1023.071937, 2165.339396, 216.915779), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node74, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_fungus", "fungus_01_2")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(2884.230065, 1349.124828, 64.285639), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node75, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_fungus", "fungus_01_3")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(3287.396931, 1199.279879, 24.355689), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node76, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_fungus", "fungus_02_1")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(2076.555699, 2457.815078, 174.627217), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node77, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_fungus", "fungus_02_2")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(2116.455614, 2400.088782, 133.980928), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node78, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_fungus", "fungus_02_3")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(2573.45564, 2148.829796, 101.51782), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node79, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_fungus", "fungus_02_4")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(2463.500938, 2085.266021, 180), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node80, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_fungus", "fungus_02_5")
  Node_AddSon(node7, node81)
  Body_SetCS(node81, MAT_Vector3(2771.767424, 792.397574, 4.566294), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node81, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_fungus", "fungus_02_6")
  Node_AddSon(node7, node82)
  Body_SetCS(node82, MAT_Vector3(2651.833511, 849.182236, 63.824995), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node82, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_fungus", "fungus_02_7")
  Node_AddSon(node7, node83)
  Body_SetCS(node83, MAT_Vector3(616.143047, 2495.774133, 210.06738), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node83, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_fungus", "fungus_02_8")
  Node_AddSon(node7, node84)
  Body_SetCS(node84, MAT_Vector3(662.683705, 2442.080123, 190), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node84, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node7, node85)
  Node_ParseIniFile(node85, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node85, "map/4N1/Terrain/coral_01.tga")
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node7, node86)
  Node_ParseIniFile(node86, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node86, "map/4N1/Terrain/grass_01.tga")
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node87)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node87, node88)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node87, node89)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_1")
  Node_AddSon(node89, node90)
  PatrolArea_SetPosition(node90, MAT_Vector3(3096.078817, 2325.759572, 147.190836))
  PatrolArea_SetRadius(node90, 250)
  PatrolArea_SetMinZ(node90, -20)
  PatrolArea_SetMaxZ(node90, 220)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_2")
  Node_AddSon(node89, node91)
  PatrolArea_SetPosition(node91, MAT_Vector3(1445.319385, 2212.661766, 185.957856))
  PatrolArea_SetRadius(node91, 250)
  PatrolArea_SetMinZ(node91, -20)
  PatrolArea_SetMaxZ(node91, 220)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node87, node92)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node87, node93)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node87, node94)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node94, node95)
  Body_SetCS(node95, MAT_Vector3(1205.834282, 2558.857084, 207.3729), MAT_Vector3(50.833849, 0, 0))
  Node_ParseIniFile(node95, "osd/pla/pla_vortex.osd")
  Body_SetFriendOrFoeID(node95, 1)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_vessel", "gen_freighter1_1")
  Node_AddSon(node94, node96)
  Body_SetCS(node96, MAT_Vector3(1264.644041, 2636.363346, 223.824207), MAT_Vector3(61.172938, 0, 0))
  Node_ParseIniFile(node96, "osd/gen/gen_freighter1.osd")
  Body_SetFriendOrFoeID(node96, 0)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_waypoint", "nav_waypoint_01_1")
  Node_AddSon(node94, node97)
  Body_SetPosition(node97, MAT_Vector3(3097.073681, 2322.561968, 332.042985))
  WayPoint_SetRadius(node97, 300)
  Node_ParseIniFile(node97, "osd/nav/nav_waypoint_01.osd")
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_waypoint", "nav_waypoint_02_1")
  Node_AddSon(node94, node98)
  Body_SetPosition(node98, MAT_Vector3(1453.300167, 2231.0443, 265.635619))
  WayPoint_SetRadius(node98, 320)
  Node_ParseIniFile(node98, "osd/nav/nav_waypoint_02.osd")
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_vessel", "tz_scout1v2_1")
  Node_AddSon(node94, node99)
  Body_SetCS(node99, MAT_Vector3(3194.244791, 2302.031486, 354.022042), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node99, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node99, 2)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_vessel", "tz_scout1v1_1")
  Node_AddSon(node94, node100)
  Body_SetCS(node100, MAT_Vector3(2968.905704, 2392.668038, 310.530232), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node100, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node100, 2)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_vessel", "tz_scout1v1_2")
  Node_AddSon(node94, node101)
  Body_SetCS(node101, MAT_Vector3(3305.207535, 2360.926353, 310.530232), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node101, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node101, 2)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_vessel", "tz_scout1v1_3")
  Node_AddSon(node94, node102)
  Body_SetCS(node102, MAT_Vector3(3033.133266, 2149.446405, 310.530232), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node102, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node102, 2)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_vessel", "tz_scout2v1_1")
  Node_AddSon(node94, node103)
  Body_SetCS(node103, MAT_Vector3(2869.472134, 2284.410104, 310.530232), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node103, "osd/tz/tz_scout2v1.osd")
  Body_SetFriendOrFoeID(node103, 2)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_vessel", "tz_scout2v2_1")
  Node_AddSon(node94, node104)
  Body_SetCS(node104, MAT_Vector3(3200.589331, 2231.865383, 310.530232), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node104, "osd/tz/tz_scout2v2.osd")
  Body_SetFriendOrFoeID(node104, 2)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_vessel", "hel_tz_scout1v1_4")
  Node_AddSon(node94, node105)
  Body_SetCS(node105, MAT_Vector3(1346.721828, 2217.159931, 308.965621), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node105, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node105, 3)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_vessel", "hel_tz_scout1v1_5")
  Node_AddSon(node94, node106)
  Body_SetCS(node106, MAT_Vector3(1558.195834, 2224.518963, 308.965621), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node106, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node106, 3)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_vessel", "hel_tz_scout2v1_2")
  Node_AddSon(node94, node107)
  Body_SetCS(node107, MAT_Vector3(1554.947631, 2140.755835, 308.965621), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node107, "osd/tz/tz_scout2v1.osd")
  Body_SetFriendOrFoeID(node107, 3)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_vessel", "hel_tz_scout2v2_2")
  Node_AddSon(node94, node108)
  Body_SetCS(node108, MAT_Vector3(1422.235566, 2367.018576, 308.965621), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node108, "osd/tz/tz_scout2v2.osd")
  Body_SetFriendOrFoeID(node108, 3)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_vessel", "hel_tz_scout1v1_6")
  Node_AddSon(node94, node109)
  Body_SetCS(node109, MAT_Vector3(1409.281374, 2011.262163, 308.9656), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node109, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node109, 3)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_vessel", "hel_tz_scout1v1_7")
  Node_AddSon(node94, node110)
  Body_SetCS(node110, MAT_Vector3(1543.939384, 2045.886762, 308.9656), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node110, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node110, 3)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_vessel", "hel_tz_scout2v1_3")
  Node_AddSon(node94, node111)
  Body_SetCS(node111, MAT_Vector3(1278.483832, 2231.203208, 308.9656), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node111, "osd/tz/tz_scout2v1.osd")
  Body_SetFriendOrFoeID(node111, 3)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_vessel", "hel_tz_scout2v2_3")
  Node_AddSon(node94, node112)
  Body_SetCS(node112, MAT_Vector3(1589.365303, 2258.73065, 308.9656), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node112, "osd/tz/tz_scout2v2.osd")
  Body_SetFriendOrFoeID(node112, 3)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_vessel", "hel_tz_bomber_1")
  Node_AddSon(node94, node113)
  Body_SetCS(node113, MAT_Vector3(1513.015156, 2335.248294, 308.965621), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node113, "osd/tz/tz_bomber.osd")
  Body_SetFriendOrFoeID(node113, 3)
  Body_SetNameKey(node113, 3)
  Body_SetCargoKey(node113, 1128, 0)
  Body_SetCargoKey(node113, 1130, 1)
  Body_SetCargoKey(node113, 1129, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node114)
  Camera_SetBackPlane(node114, 512)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node115)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node115, node116)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node115, node117)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Path", "PlaPath_1")
  Node_AddSon(node117, node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node118, node119)
  Position_SetPosition(node119, MAT_Vector3(1215.021552, 3229.942198, 238.13019))
  Position_SetRadius(node119, 5)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node118, node120)
  Position_SetPosition(node120, MAT_Vector3(1230.883316, 2726.949067, 215.206679))
  Position_SetRadius(node120, 5)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node118, node121)
  Position_SetPosition(node121, MAT_Vector3(1154.443666, 2670.666554, 184.762625))
  Position_SetRadius(node121, 5)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("NOD_Path", "PlaPath_2")
  Node_AddSon(node117, node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node122, node123)
  Position_SetPosition(node123, MAT_Vector3(1154.444, 2670.667, 184.7626))
  Position_SetRadius(node123, 5)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node122, node124)
  Position_SetPosition(node124, MAT_Vector3(1092.133836, 2669.488801, 168.355479))
  Position_SetRadius(node124, 5)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_Position", "CamPosition_1")
  Node_AddSon(node117, node125)
  Position_SetPosition(node125, MAT_Vector3(1266.498365, 3082.117206, 236.850425))
  Position_SetRadius(node125, 5)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_Position", "CamPosition_2")
  Node_AddSon(node117, node126)
  Position_SetPosition(node126, MAT_Vector3(1184.63407, 2740.28879, 214.426219))
  Position_SetRadius(node126, 5)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_Position", "CamPosition_3")
  Node_AddSon(node117, node127)
  Position_SetPosition(node127, MAT_Vector3(1169.801249, 2994.845713, 210.97901))
  Position_SetRadius(node127, 5)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("NOD_Position", "CamPosition_4")
  Node_AddSon(node117, node128)
  Position_SetPosition(node128, MAT_Vector3(1184.197127, 2609.862095, 191.906544))
  Position_SetRadius(node128, 5)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node115, node129)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("NOD_Director", "Music")
  Node_AddSon(node129, node130)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("NOD_Director", "Chapter1IntroV")
  Node_AddSon(node129, node131)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_Director", "Chapter1IntroAddon")
  Node_AddSon(node129, node132)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("NOD_Director", "Chapter2Link")
  Node_AddSon(node129, node133)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node115, node134)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node115, node135)
  Node_EnterSimulation(node135)
end
SetEnemyMatrixElement(0, 0, N)
SetEnemyMatrixElement(1, 0, F)
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
SetEnemyMatrixElement(0, 1, F)
SetEnemyMatrixElement(1, 1, N)
SetEnemyMatrixElement(2, 1, N)
SetEnemyMatrixElement(3, 1, E)
SetEnemyMatrixElement(4, 1, N)
SetEnemyMatrixElement(5, 1, N)
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
SetEnemyMatrixElement(1, 2, N)
SetEnemyMatrixElement(2, 2, N)
SetEnemyMatrixElement(3, 2, N)
SetEnemyMatrixElement(4, 2, N)
SetEnemyMatrixElement(5, 2, N)
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
SetEnemyMatrixElement(0, 3, E)
SetEnemyMatrixElement(1, 3, E)
SetEnemyMatrixElement(2, 3, N)
SetEnemyMatrixElement(3, 3, N)
SetEnemyMatrixElement(4, 3, N)
SetEnemyMatrixElement(5, 3, N)
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
SetEnemyMatrixElement(1, 4, N)
SetEnemyMatrixElement(2, 4, N)
SetEnemyMatrixElement(3, 4, N)
SetEnemyMatrixElement(4, 4, N)
SetEnemyMatrixElement(5, 4, N)
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
                                                                                                                                if not (o2217.Value ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
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
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("1RC1 2509 2328")
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
                                                                                                                                if not (o2241.Value == True) then
                                                                                                                                  if not (False == True) then
                                                                                                                                    if not (False == True) then
                                                                                                                                      if not (False == True) then
                                                                                                                                        if not (False == True) then
                                                                                                                                          if not (False == True) then
                                                                                                                                            if not (False == True) then
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
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o1186, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1232 = { [nil] = {}, Start = function(L0)

end }
S_o1266 = { [nil] = {}, Start = function(L0)

end }
S_o1300 = { [nil] = {}, Start = function(L0)

end }
S_o1334 = { [nil] = {}, Start = function(L0)

end }
S_o1368 = { [nil] = {}, Start = function(L0)

end }
S_o1402 = { [nil] = {}, Start = function(L0)

end }
S_o1436 = { [nil] = {}, Start = function(L0)

end }
S_o1470 = { [nil] = {}, Start = function(L0)

end }
S_o1504 = { [nil] = {}, Start = function(L0)

end }
S_o1538 = { [nil] = {}, Start = function(L0)

end }
S_o1572 = { [nil] = {}, Start = function(L0)

end }
S_o1606 = { [nil] = {}, Start = function(L0)

end }
S_o1640 = { [nil] = {}, Start = function(L0)

end }
S_o1674 = { [nil] = {}, Start = function(L0)

end }
S_o1708 = { [nil] = {}, Start = function(L0)

end }
S_o1742 = { [nil] = {}, Start = function(L0)

end }
S_o1776 = { [nil] = {}, Start = function(L0)

end }
S_o1810 = { [nil] = {}, Start = function(L0)

end }
S_o1844 = { [nil] = {}, Start = function(L0)

end }
S_o1878 = { [nil] = {}, Start = function(L0)

end }
S_o1912 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1912, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1912, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1912, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o1912, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1912, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o1912, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o1916.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1913.Value ~= True) then
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
o1913 = { [nil] = {}, GetCalculated = function()
  if not (o2299.Value == True) then
    if not (o2215.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1913.SetStateValue(o1913.GetCalculated())
end, StartCalculate = function()
  o1913["Value"] = o1913.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1913.Value == L0) then
    o1913["Value"] = L0
    CallFunction(o1912, "ProcesseStateChange")
  end
end }
o1916 = { [nil] = {}, Start = function()
  o1916["Value"] = False
  o2213.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1916.Value == L0) then
    o1916["Value"] = L0
    o2213.ReCalculate()
  end
end }
S_o1948 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1948, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1948, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1948, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o1948, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1948, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetKineticShield(L0.Node, 0, 0.82)
  CallFunction(o1948, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1952.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1949.Value ~= True) then
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
o1949 = { [nil] = {}, GetCalculated = function()
  if not (o2299.Value == True) then
    if not (o2215.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1949.SetStateValue(o1949.GetCalculated())
end, StartCalculate = function()
  o1949["Value"] = o1949.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1949.Value == L0) then
    o1949["Value"] = L0
    CallFunction(o1948, "ProcesseStateChange")
  end
end }
o1952 = { [nil] = {}, Start = function()
  o1952["Value"] = False
  o2213.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1952.Value == L0) then
    o1952["Value"] = L0
    o2213.ReCalculate()
  end
end }
S_o1984 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1984, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1984, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1984, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o1984, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1984, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetKineticShield(L0.Node, 0, 0.89)
  CallFunction(o1984, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1988.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1985.Value ~= True) then
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
o1985 = { [nil] = {}, GetCalculated = function()
  if not (o2299.Value == True) then
    if not (o2215.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1985.SetStateValue(o1985.GetCalculated())
end, StartCalculate = function()
  o1985["Value"] = o1985.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1985.Value == L0) then
    o1985["Value"] = L0
    CallFunction(o1984, "ProcesseStateChange")
  end
end }
o1988 = { [nil] = {}, Start = function()
  o1988["Value"] = False
  o2213.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1988.Value == L0) then
    o1988["Value"] = L0
    o2213.ReCalculate()
  end
end }
S_o2020 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2020, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2020, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2020, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o2020, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 351, "E", "", "", "", "Code5")
  else
    CallFunction(o2020, "Code5")
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
S_o2058 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2058, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2058, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2058, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o2058, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 351, "E", "", "", "", "Code5")
  else
    CallFunction(o2058, "Code5")
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
S_o2096 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2096, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2096, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2096, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o2096, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 351, "E", "", "", "", "Code5")
  else
    CallFunction(o2096, "Code5")
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
S_o2134 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2134, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2134, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2134, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o2134, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 351, "E", "", "", "", "Code5")
  else
    CallFunction(o2134, "Code5")
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
S_o2172 = { [nil] = {}, Start = function(L0)

end }
S_o2206 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_vendettagatlin", 1)
  Body_AddItem(L0.Node, "gun_plasmagatlin", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_energy", 4000)
  Body_AddItem(L0.Node, "ammo_shell", 4000)
  Body_AddItem(L0.Node, "torpedo_flashshark", 2)
  Body_AddItem(L0.Node, "device_generator", 1)
  Body_AddItem(L0.Node, "torpedo_maneater", 8)
  Body_AddItem(L0.Node, "device_repair", 1)
  CallFunction(o2206, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
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
o2211 = { [nil] = {}, GetCalculated = function()
  if not (o2294.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2211.SetStateValue(o2211.GetCalculated())
end, StartCalculate = function()
  o2211["Value"] = o2211.GetCalculated()
  o3038.StartCalculate()
  o3050.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2211.Value == L0) then
    o2211["Value"] = L0
    o3038.ReCalculate()
    o3050.ReCalculate()
  end
end }
o2212 = { [nil] = {}, GetCalculated = function()
  if not (o2595.Value ~= True) then
    if not (o2644.Value ~= True) then
      if not (o2693.Value ~= True) then
        if not (o2742.Value ~= True) then
          if not (o2791.Value ~= True) then
            if not (o2840.Value ~= True) then
              if not (o2889.Value ~= True) then
                if not (o2938.Value ~= True) then
                  if not (o2987.Value ~= True) then
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
end, ReCalculate = function()
  o2212.SetStateValue(o2212.GetCalculated())
end, StartCalculate = function()
  o2212["Value"] = o2212.GetCalculated()
  o2217.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o2206.Node, o2206.Node, 1219)
end, SetStateValue = function(L0)
  if not (o2212.Value == L0) then
    DelayedFunction(2, o2212, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2212.Value == L0) then
    o2212["Value"] = L0
    o2217.ReCalculate()
    if not (L0 ~= 1) then
      o2212.ChangeTo1()
    end
  end
end }
o2213 = { [nil] = {}, GetCalculated = function()
  if not (o1916.Value == True) then
    if not (o1952.Value == True) then
      if not (o1988.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o2213.SetStateValue(o2213.GetCalculated())
end, StartCalculate = function()
  o2213["Value"] = o2213.GetCalculated()
  o2241.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2213.Value == L0) then
    DelayedFunction(2, o2213, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2213.Value == L0) then
    o2213["Value"] = L0
    o2241.ReCalculate()
  end
end }
o2214 = { [nil] = {}, Start = function()
  o2214["Value"] = False
  o2215.StartCalculate()
  o3039.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2214.Value == L0) then
    o2214["Value"] = L0
    o2215.ReCalculate()
    o3039.ReCalculate()
  end
end }
o2215 = { [nil] = {}, GetCalculated = function()
  if not (o2214.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2215.SetStateValue(o2215.GetCalculated())
end, StartCalculate = function()
  o2215["Value"] = o2215.GetCalculated()
  o1913.StartCalculate()
  o1949.StartCalculate()
  o1985.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2215.Value == L0) then
    DelayedFunction(30, o2215, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2215.Value == L0) then
    o2215["Value"] = L0
    o1913.ReCalculate()
    o1949.ReCalculate()
    o1985.ReCalculate()
  end
end }
o2216 = { [nil] = {}, GetCalculated = function()
  if not (o2595.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2644.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2693.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2742.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2791.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2840.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2889.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2938.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2987.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 < 3) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2216.SetStateValue(o2216.GetCalculated())
end, StartCalculate = function()
  o2216["Value"] = o2216.GetCalculated()
  o2590.StartCalculate()
  o2639.StartCalculate()
  o2688.StartCalculate()
  o2737.StartCalculate()
  o2786.StartCalculate()
  o2835.StartCalculate()
  o2884.StartCalculate()
  o2933.StartCalculate()
  o2982.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2216.Value == L0) then
    o2216["Value"] = L0
    o2590.ReCalculate()
    o2639.ReCalculate()
    o2688.ReCalculate()
    o2737.ReCalculate()
    o2786.ReCalculate()
    o2835.ReCalculate()
    o2884.ReCalculate()
    o2933.ReCalculate()
    o2982.ReCalculate()
  end
end }
o2217 = { [nil] = {}, GetCalculated = function()
  if not (o2212.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2217.SetStateValue(o2217.GetCalculated())
end, StartCalculate = function()
  o2217["Value"] = o2217.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2217.Value == L0) then
    o2217["Value"] = L0
    o2.ReCalculate()
  end
end }
o2241 = { [nil] = {}, GetCalculated = function()
  if not (o2213.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2241.SetStateValue(o2241.GetCalculated())
end, StartCalculate = function()
  o2241["Value"] = o2241.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2241.Value == L0) then
    o2241["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o2245 = { [nil] = {}, Start = function(L0)

end }
S_o2291 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 55)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o2291, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o2294.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2294 = { [nil] = {}, Start = function()
  o2294["Value"] = False
  o2211.StartCalculate()
  o2592.StartCalculate()
  o2641.StartCalculate()
  o2690.StartCalculate()
  o2739.StartCalculate()
  o2788.StartCalculate()
  o2837.StartCalculate()
  o2886.StartCalculate()
  o2935.StartCalculate()
  o2984.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2294.Value == L0) then
    o2294["Value"] = L0
    o2211.ReCalculate()
    o2592.ReCalculate()
    o2641.ReCalculate()
    o2690.ReCalculate()
    o2739.ReCalculate()
    o2788.ReCalculate()
    o2837.ReCalculate()
    o2886.ReCalculate()
    o2935.ReCalculate()
    o2984.ReCalculate()
  end
end }
S_o2296 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, o2206.Node, 226)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 55)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o2296, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o2299.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2299 = { [nil] = {}, Start = function()
  o2299["Value"] = False
  o1913.StartCalculate()
  o1949.StartCalculate()
  o1985.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2299.Value == L0) then
    o2299["Value"] = L0
    o1913.ReCalculate()
    o1949.ReCalculate()
    o1985.ReCalculate()
  end
end }
S_o2301 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2301, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2301, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2301, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1" }, 1e+32, 1, "Code4")
  else
    CallFunction(o2301, "Code4")
  end
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
S_o2349 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2349, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2349, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2349, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1" }, 1e+32, 1, "Code4")
  else
    CallFunction(o2349, "Code4")
  end
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
S_o2397 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2397, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2397, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2397, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1" }, 1e+32, 1, "Code4")
  else
    CallFunction(o2397, "Code4")
  end
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
S_o2445 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2445, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2445, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2445, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1" }, 1e+32, 1, "Code4")
  else
    CallFunction(o2445, "Code4")
  end
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
S_o2493 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2493, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2493, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2493, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1" }, 1e+32, 1, "Code4")
  else
    CallFunction(o2493, "Code4")
  end
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
S_o2541 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2541, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2541, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2541, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1" }, 1e+32, 1, "Code4")
  else
    CallFunction(o2541, "Code4")
  end
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
S_o2589 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2589, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2589, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2589, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "des", "pla", "gen_turret_medium", "", 1, "Code4")
  else
    CallFunction(o2589, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "pla", "", "", "", 1, "Code5")
  else
    CallFunction(o2589, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o2595.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2592.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2590.Value ~= True) then
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
o2590 = { [nil] = {}, GetCalculated = function()
  if not (o2216.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2590.SetStateValue(o2590.GetCalculated())
end, StartCalculate = function()
  o2590["Value"] = o2590.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2590.Value == L0) then
    o2590["Value"] = L0
    CallFunction(o2589, "ProcesseStateChange")
  end
end }
o2592 = { [nil] = {}, GetCalculated = function()
  if not (o2294.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2592.SetStateValue(o2592.GetCalculated())
end, StartCalculate = function()
  o2592["Value"] = o2592.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2592.Value == L0) then
    o2592["Value"] = L0
    CallFunction(o2589, "ProcesseStateChange")
  end
end }
o2595 = { [nil] = {}, Start = function()
  o2595["Value"] = False
  o2212.StartCalculate()
  o2216.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2595.Value == L0) then
    o2595["Value"] = L0
    o2212.ReCalculate()
    o2216.ReCalculate()
  end
end }
S_o2638 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2638, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2638, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2638, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "des", "pla", "gen_turret_medium", "", 1, "Code4")
  else
    CallFunction(o2638, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "pla", "", "", "", 1, "Code5")
  else
    CallFunction(o2638, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o2644.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2641.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2639.Value ~= True) then
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
o2639 = { [nil] = {}, GetCalculated = function()
  if not (o2216.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2639.SetStateValue(o2639.GetCalculated())
end, StartCalculate = function()
  o2639["Value"] = o2639.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2639.Value == L0) then
    o2639["Value"] = L0
    CallFunction(o2638, "ProcesseStateChange")
  end
end }
o2641 = { [nil] = {}, GetCalculated = function()
  if not (o2294.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2641.SetStateValue(o2641.GetCalculated())
end, StartCalculate = function()
  o2641["Value"] = o2641.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2641.Value == L0) then
    o2641["Value"] = L0
    CallFunction(o2638, "ProcesseStateChange")
  end
end }
o2644 = { [nil] = {}, Start = function()
  o2644["Value"] = False
  o2212.StartCalculate()
  o2216.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2644.Value == L0) then
    o2644["Value"] = L0
    o2212.ReCalculate()
    o2216.ReCalculate()
  end
end }
S_o2687 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2687, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2687, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2687, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "des", "pla", "gen_turret_medium", "", 1, "Code4")
  else
    CallFunction(o2687, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "pla", "", "", "", 1, "Code5")
  else
    CallFunction(o2687, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o2693.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2690.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2688.Value ~= True) then
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
o2688 = { [nil] = {}, GetCalculated = function()
  if not (o2216.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2688.SetStateValue(o2688.GetCalculated())
end, StartCalculate = function()
  o2688["Value"] = o2688.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2688.Value == L0) then
    o2688["Value"] = L0
    CallFunction(o2687, "ProcesseStateChange")
  end
end }
o2690 = { [nil] = {}, GetCalculated = function()
  if not (o2294.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2690.SetStateValue(o2690.GetCalculated())
end, StartCalculate = function()
  o2690["Value"] = o2690.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2690.Value == L0) then
    o2690["Value"] = L0
    CallFunction(o2687, "ProcesseStateChange")
  end
end }
o2693 = { [nil] = {}, Start = function()
  o2693["Value"] = False
  o2212.StartCalculate()
  o2216.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2693.Value == L0) then
    o2693["Value"] = L0
    o2212.ReCalculate()
    o2216.ReCalculate()
  end
end }
S_o2736 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2736, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2736, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2736, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "des", "pla", "gen_turret_medium", "", 1, "Code4")
  else
    CallFunction(o2736, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "pla", "", "", "", 1, "Code5")
  else
    CallFunction(o2736, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o2742.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2739.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2737.Value ~= True) then
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
o2737 = { [nil] = {}, GetCalculated = function()
  if not (o2216.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2737.SetStateValue(o2737.GetCalculated())
end, StartCalculate = function()
  o2737["Value"] = o2737.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2737.Value == L0) then
    o2737["Value"] = L0
    CallFunction(o2736, "ProcesseStateChange")
  end
end }
o2739 = { [nil] = {}, GetCalculated = function()
  if not (o2294.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2739.SetStateValue(o2739.GetCalculated())
end, StartCalculate = function()
  o2739["Value"] = o2739.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2739.Value == L0) then
    o2739["Value"] = L0
    CallFunction(o2736, "ProcesseStateChange")
  end
end }
o2742 = { [nil] = {}, Start = function()
  o2742["Value"] = False
  o2212.StartCalculate()
  o2216.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2742.Value == L0) then
    o2742["Value"] = L0
    o2212.ReCalculate()
    o2216.ReCalculate()
  end
end }
S_o2785 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2785, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2785, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2785, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "des", "pla", "gen_turret_medium", "", 1, "Code4")
  else
    CallFunction(o2785, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "pla", "", "", "", 1, "Code5")
  else
    CallFunction(o2785, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o2791.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2788.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2786.Value ~= True) then
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
o2786 = { [nil] = {}, GetCalculated = function()
  if not (o2216.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2786.SetStateValue(o2786.GetCalculated())
end, StartCalculate = function()
  o2786["Value"] = o2786.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2786.Value == L0) then
    o2786["Value"] = L0
    CallFunction(o2785, "ProcesseStateChange")
  end
end }
o2788 = { [nil] = {}, GetCalculated = function()
  if not (o2294.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2788.SetStateValue(o2788.GetCalculated())
end, StartCalculate = function()
  o2788["Value"] = o2788.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2788.Value == L0) then
    o2788["Value"] = L0
    CallFunction(o2785, "ProcesseStateChange")
  end
end }
o2791 = { [nil] = {}, Start = function()
  o2791["Value"] = False
  o2212.StartCalculate()
  o2216.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2791.Value == L0) then
    o2791["Value"] = L0
    o2212.ReCalculate()
    o2216.ReCalculate()
  end
end }
S_o2834 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2834, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2834, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2834, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "des", "pla", "gen_turret_medium", "", 1, "Code4")
  else
    CallFunction(o2834, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "pla", "", "", "", 1, "Code5")
  else
    CallFunction(o2834, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o2840.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2837.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2835.Value ~= True) then
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
o2835 = { [nil] = {}, GetCalculated = function()
  if not (o2216.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2835.SetStateValue(o2835.GetCalculated())
end, StartCalculate = function()
  o2835["Value"] = o2835.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2835.Value == L0) then
    o2835["Value"] = L0
    CallFunction(o2834, "ProcesseStateChange")
  end
end }
o2837 = { [nil] = {}, GetCalculated = function()
  if not (o2294.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2837.SetStateValue(o2837.GetCalculated())
end, StartCalculate = function()
  o2837["Value"] = o2837.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2837.Value == L0) then
    o2837["Value"] = L0
    CallFunction(o2834, "ProcesseStateChange")
  end
end }
o2840 = { [nil] = {}, Start = function()
  o2840["Value"] = False
  o2212.StartCalculate()
  o2216.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2840.Value == L0) then
    o2840["Value"] = L0
    o2212.ReCalculate()
    o2216.ReCalculate()
  end
end }
S_o2883 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2883, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2883, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2883, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "des", "pla", "gen_turret_medium", "", 1, "Code4")
  else
    CallFunction(o2883, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "pla", "", "", "", 1, "Code5")
  else
    CallFunction(o2883, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o2889.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2886.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2884.Value ~= True) then
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
o2884 = { [nil] = {}, GetCalculated = function()
  if not (o2216.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2884.SetStateValue(o2884.GetCalculated())
end, StartCalculate = function()
  o2884["Value"] = o2884.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2884.Value == L0) then
    o2884["Value"] = L0
    CallFunction(o2883, "ProcesseStateChange")
  end
end }
o2886 = { [nil] = {}, GetCalculated = function()
  if not (o2294.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2886.SetStateValue(o2886.GetCalculated())
end, StartCalculate = function()
  o2886["Value"] = o2886.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2886.Value == L0) then
    o2886["Value"] = L0
    CallFunction(o2883, "ProcesseStateChange")
  end
end }
o2889 = { [nil] = {}, Start = function()
  o2889["Value"] = False
  o2212.StartCalculate()
  o2216.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2889.Value == L0) then
    o2889["Value"] = L0
    o2212.ReCalculate()
    o2216.ReCalculate()
  end
end }
S_o2932 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2932, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2932, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2932, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "des", "pla", "gen_turret_medium", "", 1, "Code4")
  else
    CallFunction(o2932, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "pla", "", "", "", 1, "Code5")
  else
    CallFunction(o2932, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o2938.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2935.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2933.Value ~= True) then
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
o2933 = { [nil] = {}, GetCalculated = function()
  if not (o2216.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2933.SetStateValue(o2933.GetCalculated())
end, StartCalculate = function()
  o2933["Value"] = o2933.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2933.Value == L0) then
    o2933["Value"] = L0
    CallFunction(o2932, "ProcesseStateChange")
  end
end }
o2935 = { [nil] = {}, GetCalculated = function()
  if not (o2294.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2935.SetStateValue(o2935.GetCalculated())
end, StartCalculate = function()
  o2935["Value"] = o2935.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2935.Value == L0) then
    o2935["Value"] = L0
    CallFunction(o2932, "ProcesseStateChange")
  end
end }
o2938 = { [nil] = {}, Start = function()
  o2938["Value"] = False
  o2212.StartCalculate()
  o2216.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2938.Value == L0) then
    o2938["Value"] = L0
    o2212.ReCalculate()
    o2216.ReCalculate()
  end
end }
S_o2981 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2981, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2981, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2981, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "des", "pla", "gen_turret_medium", "", 1, "Code4")
  else
    CallFunction(o2981, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "pla", "", "", "", 1, "Code5")
  else
    CallFunction(o2981, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o2987.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2984.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2982.Value ~= True) then
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
o2982 = { [nil] = {}, GetCalculated = function()
  if not (o2216.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2982.SetStateValue(o2982.GetCalculated())
end, StartCalculate = function()
  o2982["Value"] = o2982.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2982.Value == L0) then
    o2982["Value"] = L0
    CallFunction(o2981, "ProcesseStateChange")
  end
end }
o2984 = { [nil] = {}, GetCalculated = function()
  if not (o2294.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2984.SetStateValue(o2984.GetCalculated())
end, StartCalculate = function()
  o2984["Value"] = o2984.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2984.Value == L0) then
    o2984["Value"] = L0
    CallFunction(o2981, "ProcesseStateChange")
  end
end }
o2987 = { [nil] = {}, Start = function()
  o2987["Value"] = False
  o2212.StartCalculate()
  o2216.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2987.Value == L0) then
    o2987["Value"] = L0
    o2212.ReCalculate()
    o2216.ReCalculate()
  end
end }
S_o3030 = { [nil] = {}, Start = function(L0)

end }
o3032 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o3033 = { [nil] = {}, Start = function(L0)

end }
S_o3034 = { [nil] = {}, Start = function(L0)

end }
S_o3035 = { [nil] = {}, Start = function(L0)

end }
S_o3036 = { [nil] = {}, Start = function(L0)

end }
S_o3037 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "atmo")
  CallFunction(o3037, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3037, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  Game_PlayMusic(GetGameNode(), "track4")
  CallFunction(o3037, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3037, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Game_PlayMusic(GetGameNode(), "agressive")
  CallFunction(o3037, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3038.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3039.Value ~= True) then
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
o3038 = { [nil] = {}, GetCalculated = function()
  if not (o2211.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3038.SetStateValue(o3038.GetCalculated())
end, StartCalculate = function()
  o3038["Value"] = o3038.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3038.Value == L0) then
    o3038["Value"] = L0
    CallFunction(o3037, "ProcesseStateChange")
  end
end }
o3039 = { [nil] = {}, GetCalculated = function()
  if not (o2214.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3039.SetStateValue(o3039.GetCalculated())
end, StartCalculate = function()
  o3039["Value"] = o3039.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3039.Value == L0) then
    o3039["Value"] = L0
    CallFunction(o3037, "ProcesseStateChange")
  end
end }
S_o3041 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  SendRadioMessageTake(o2206.Node, o2206.Node, 223)
  SendRadioMessageTake(o2206.Node, o2206.Node, 224)
  SendRadioMessageTake(o2206.Node, o2206.Node, 225)
  SendRadioMessageTake(o2206.Node, o2206.Node, 1220)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/CamPosition_1", 0, "MMMN", 0)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  CallFunction(o3041, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code11")
  else
    CallFunction(o3041, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/CamPosition_2", 7, "MMMN", 0)
  CallFunction(o3041, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 15, "Code13")
  else
    CallFunction(o3041, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/CamPosition_3", 7, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Static/Object/gen_dolphinhab_1", 12, "MMMN", 0)
  CallFunction(o3041, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 14, "Code16")
  else
    CallFunction(o3041, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/CamPosition_4", 12, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 16, "MMMN", 0)
  CallFunction(o3041, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 19, "Code19")
  else
    CallFunction(o3041, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  Director_EndCutscene(L0.Node)
  Game_PlayMusic(GetGameNode(), "agressive")
  Game_SetWayPoint(GetGameNode(), o2291.Node)
  SED_SetTaskTextKey(1361, -1, -1)
  CallFunction(o3041, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3047 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  FormationLib.PlaceFormationPath(o3031, o3032, "/InGameSequences/Navigation/PlaPath_1")
  CallFunction(o3047, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o3031, o3032, "/InGameSequences/Navigation/PlaPath_1", "pos_1", "pos_3", 1, 1, "Code2")
  else
    CallFunction(o3047, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3049 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3049, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o2206.Node, o2206.Node, 227)
  SendRadioMessageTake(o2206.Node, o2206.Node, 228)
  CallFunction(o3049, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 20, "Code4")
  else
    CallFunction(o3049, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Game_SetWayPoint(GetGameNode(), o2296.Node)
  SED_SetTaskTextKey(1362, -1, -1)
  o2214.SetStateValue(True)
  CallFunction(o3049, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3050.Value ~= True) then
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
o3050 = { [nil] = {}, GetCalculated = function()
  if not (o2211.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3050.SetStateValue(o3050.GetCalculated())
end, StartCalculate = function()
  o3050["Value"] = o3050.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3050.Value == L0) then
    o3050["Value"] = L0
    CallFunction(o3049, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 135)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3a_01_1", S_o30)
  o64 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3a_02_1", S_o64)
  o98 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3a_02_2", S_o98)
  o132 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dock_1", S_o132)
  o166 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_1", S_o166)
  o200 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_industry2_1", S_o200)
  o234 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_big_1", S_o234)
  o268 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml2_1", S_o268)
  o302 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tower2_1", S_o302)
  o336 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tower2_2", S_o336)
  o370 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tower2_3", S_o370)
  o404 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_end_1", S_o404)
  o438 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_end_2", S_o438)
  o472 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big03_1", S_o472)
  o506 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big03_2", S_o506)
  o540 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_1", S_o540)
  o574 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_1", S_o574)
  o608 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole_1", S_o608)
  o642 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole_4", S_o642)
  o676 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole_5", S_o676)
  o710 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_1", S_o710)
  o744 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_5", S_o744)
  o778 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_6", S_o778)
  o812 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_2", S_o812)
  o846 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant22_1", S_o846)
  o880 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabolic_1", S_o880)
  o914 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_2", S_o914)
  o948 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_2", S_o948)
  o982 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock3_1", S_o982)
  o1016 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock2_1", S_o1016)
  o1050 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock1_1", S_o1050)
  o1084 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock2_2", S_o1084)
  o1118 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott1_1", S_o1118)
  o1152 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott2_1", S_o1152)
  o1186 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_freighter2_1", S_o1186)
  o1232 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott2_4", S_o1232)
  o1266 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott2_5", S_o1266)
  o1300 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big03_3", S_o1300)
  o1334 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai1_1", S_o1334)
  o1368 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_big_2", S_o1368)
  o1402 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tower_1", S_o1402)
  o1436 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tower2_4", S_o1436)
  o1470 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_1", S_o1470)
  o1504 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_chimney1_2_1", S_o1504)
  o1538 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_chimney2_1", S_o1538)
  o1572 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_caustigen_1", S_o1572)
  o1606 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole_2", S_o1606)
  o1640 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole_3", S_o1640)
  o1674 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_1", S_o1674)
  o1708 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_2", S_o1708)
  o1742 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_3", S_o1742)
  o1776 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_3", S_o1776)
  o1810 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_4", S_o1810)
  o1844 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott3_1", S_o1844)
  o1878 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott4_1", S_o1878)
  o1912 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_tank_big_4n1_1", S_o1912)
  o1916.Start()
  o1948 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_tank_big_4n1_2", S_o1948)
  o1952.Start()
  o1984 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_tank_big_4n1_3", S_o1984)
  o1988.Start()
  o2020 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_1/Turm1", S_o2020)
  o2058 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_2/Turm1", S_o2058)
  o2096 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_5/Turm1", S_o2096)
  o2134 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_6/Turm1", S_o2134)
  o2172 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dolphinhab_1", S_o2172)
  o2206 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o2206)
  o2214.Start()
  o2245 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_freighter1_1", S_o2245)
  o2291 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_01_1", S_o2291)
  o2294.Start()
  o2296 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_02_1", S_o2296)
  o2299.Start()
  o2301 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_1", S_o2301)
  o2349 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v1_1", S_o2349)
  o2397 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v1_2", S_o2397)
  o2445 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v1_3", S_o2445)
  o2493 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v1_1", S_o2493)
  o2541 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v2_1", S_o2541)
  o2589 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "hel_tz_scout1v1_4", S_o2589)
  o2595.Start()
  o2638 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "hel_tz_scout1v1_5", S_o2638)
  o2644.Start()
  o2687 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "hel_tz_scout2v1_2", S_o2687)
  o2693.Start()
  o2736 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "hel_tz_scout2v2_2", S_o2736)
  o2742.Start()
  o2785 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "hel_tz_scout1v1_6", S_o2785)
  o2791.Start()
  o2834 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "hel_tz_scout1v1_7", S_o2834)
  o2840.Start()
  o2883 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "hel_tz_scout2v1_3", S_o2883)
  o2889.Start()
  o2932 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "hel_tz_scout2v2_3", S_o2932)
  o2938.Start()
  o2981 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "hel_tz_bomber_1", S_o2981)
  o2987.Start()
  o3030 = BindEasy(Node_Find("/"), "Camera", S_o3030)
  o3033 = BindEasy(Node_Find("/InGameSequences/Navigation"), "CamPosition_1", S_o3033)
  o3034 = BindEasy(Node_Find("/InGameSequences/Navigation"), "CamPosition_2", S_o3034)
  o3035 = BindEasy(Node_Find("/InGameSequences/Navigation"), "CamPosition_3", S_o3035)
  o3036 = BindEasy(Node_Find("/InGameSequences/Navigation"), "CamPosition_4", S_o3036)
  o3037 = BindEasy(Node_Find("/InGameSequences/Director"), "Music", S_o3037)
  o3041 = BindEasy(Node_Find("/InGameSequences/Director"), "Chapter1IntroV", S_o3041)
  o3047 = BindEasy(Node_Find("/InGameSequences/Director"), "Chapter1IntroAddon", S_o3047)
  o3049 = BindEasy(Node_Find("/InGameSequences/Director"), "Chapter2Link", S_o3049)
  o3031 = { {}, o2206 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end