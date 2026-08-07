-- dekompiliert aus map\4h1\script\4h1.sco
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
  Game_SetTerrainDepth(node0, 3541)
  Game_SetDecompressionHeight(node0, 500)
  Game_SetAmbientLight(node0, 0.019608, 0.086275, 0.141176)
  Game_SetParallelLightT(node0, 0.039216, 0.172549, 0.282353)
  Game_SetParallelLightB(node0, 0.462745, 0.368627, 0.141176)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_4H1_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track05.sam", 1)
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
  node8 = Node_CreateNode("nod_generic", "Bunker_A1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(1378.123, 2345.77, 220), MAT_Vector3(-65, 0, 0))
  Node_ParseIniFile(node8, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "Bunker_A2")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(1141.6615, 2906.330125, 220.92435), MAT_Vector3(-67.195974, 0, 0))
  Node_ParseIniFile(node9, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "Bunker_B1")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(1331.632027, 1764.682622, 220), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node10, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "Bunker_B2")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(1328.291955, 764.011239, 223.563199), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node11, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "Bunker_C1")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(2232.500769, 1668.552051, 225), MAT_Vector3(-131.712495, 0, 0))
  Node_ParseIniFile(node12, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "Bunker_C2")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(2976.925282, 1045.150505, 225.849976), MAT_Vector3(137.862773, 0, 0))
  Node_ParseIniFile(node13, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "Bunker_D1")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(2389.337433, 2430.547924, 219.520788), MAT_Vector3(-165.520537, 0, 0))
  Node_ParseIniFile(node14, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "Bunker_D2")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(3310.863527, 2740.041815, 210.420625), MAT_Vector3(-165.5205, 0, 0))
  Node_ParseIniFile(node15, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "gen_dock_1")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(1649.999385, 1953.735507, 285.930945), MAT_Vector3(16.408257, 0, 0))
  Node_ParseIniFile(node16, "osd/gen/gen_dock.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "atl_triumph_1")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(1872.100511, 2177.980738, 295.836203), MAT_Vector3(173.065224, 0, 0))
  Node_ParseIniFile(node17, "osd/atl/atl_ec_triumph.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "atl_obelisk_1")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(2036.419, 461.6467, 284.3995), MAT_Vector3(-45.03943, 0, 0))
  Node_ParseIniFile(node18, "osd/atl/atl_ec_obelisk.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "gen_rohrbG_1")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(1320.932146, 2541.664678, 211), MAT_Vector3(23, 0, 0))
  Node_ParseIniFile(node19, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "gen_rohrbG_3")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(1273.506761, 2519.561201, 211), MAT_Vector3(23, 0, 0))
  Node_ParseIniFile(node20, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "gen_rohrbG_2")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(1203.859438, 2817.403275, 211), MAT_Vector3(23, 0, 0))
  Node_ParseIniFile(node21, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "gen_rohrbG_4")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(1156.447253, 2795.405013, 211), MAT_Vector3(23, 0, 0))
  Node_ParseIniFile(node22, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "gen_rohrbG_5")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(1311.491737, 1566.627172, 215), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node23, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "gen_rohrbG_6")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(1311.492, 1261.435085, 215), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node24, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "gen_rohrbG_7")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(1311.507028, 962.037539, 215), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_rohrbG_8")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(2393.333371, 1548.264192, 230), MAT_Vector3(-131.12733, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "gen_rohrbG_11")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(2380.027682, 1532.877247, 230), MAT_Vector3(-131.1273, 0, 0))
  Node_ParseIniFile(node27, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "gen_rohrbG_9")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(2618.744187, 1351.421096, 230), MAT_Vector3(-131.1273, 0, 0))
  Node_ParseIniFile(node28, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "gen_rohrbG_12")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(2605.726656, 1335.838194, 230), MAT_Vector3(-131.1273, 0, 0))
  Node_ParseIniFile(node29, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "gen_rohrbG_10")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(2844.543741, 1154.260049, 230), MAT_Vector3(-131.1273, 0, 0))
  Node_ParseIniFile(node30, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "gen_rohrbG_13")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(2831.605872, 1138.65713, 230), MAT_Vector3(-131.1273, 0, 0))
  Node_ParseIniFile(node31, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "gen_rohrbG_14")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(2575.132037, 2512.040931, 206.63645), MAT_Vector3(-74.217125, 0, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_rohrbG_15")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(2897.27943, 2607.614151, 206.6365), MAT_Vector3(-74.21713, 0, 0))
  Node_ParseIniFile(node33, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "gen_rohrbG_16")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(3206.243926, 2691.65246, 206.6365), MAT_Vector3(-74.21713, 0, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "gen_rohrsG_1")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(1154.104906, 3057.981559, 239.309504), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node35, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_rohrsG_2")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(1135.657239, 3050.362273, 239.3095), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "gen_rohrsG_3")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(1401.631945, 611.467312, 238.740364), MAT_Vector3(-154.292976, 0, 0))
  Node_ParseIniFile(node37, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "gen_rohrsG_4")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(1384.099994, 611.17989, 238.7404), MAT_Vector3(-154.293, 0, 0))
  Node_ParseIniFile(node38, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_rohrend_1")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(1853.321116, 3718.646586, 349.108065), MAT_Vector3(44.696829, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_rohr_small01_end.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_rohrend_2")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(1833.772113, 3699.638854, 349.5654), MAT_Vector3(44.69683, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_rohr_small01_end.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_rohrsK_4")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(1415.209571, 958.166992, 224.415418), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_rohrsG_5")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(1366.732175, 941.08897, 218.61046), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_stabG_1")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(1638.555828, 3523.030939, 416), MAT_Vector3(-46.5, 0, 0))
  Node_ParseIniFile(node43, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_stabG_2")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(1646.157367, 3530.822401, 416), MAT_Vector3(-46.5, 0, 0))
  Node_ParseIniFile(node44, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_stabG_3")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(1653.758367, 3538.803435, 416), MAT_Vector3(-46.5, 0, 0))
  Node_ParseIniFile(node45, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_stabG_4")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(911.066435, 3085.340374, 251.171901), MAT_Vector3(-101.619049, 0, 0))
  Node_ParseIniFile(node46, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "gen_stabG_5")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(881.590244, 3129.261425, 251.1719), MAT_Vector3(-101.619, 0, 0))
  Node_ParseIniFile(node47, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "gen_stabG_6")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(922.403317, 3155.994696, 251.1719), MAT_Vector3(-94.900977, 0, 0))
  Node_ParseIniFile(node48, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "gen_stabG_7")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(951.111082, 3114.001712, 251.1719), MAT_Vector3(-104.802971, 0, 0))
  Node_ParseIniFile(node49, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "gen_stabM_1")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(1591.345, 3602.424683, 415), MAT_Vector3(-46.5, 0, 0))
  Node_ParseIniFile(node50, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_stabM_2")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(1583.445935, 3595.002602, 415), MAT_Vector3(-46.5, 0, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "gen_stabM_3")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(2483.02064, 1503.199788, 254.689428), MAT_Vector3(-41.11606, 0, 0))
  Node_ParseIniFile(node52, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_stabM_4")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(2473.262293, 1511.802462, 254.6894), MAT_Vector3(-41.11606, 0, 0))
  Node_ParseIniFile(node53, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "gen_stabK_1")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(1173.316107, 2900.230718, 257), MAT_Vector3(23.5, 0, 0))
  Node_ParseIniFile(node54, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "gen_stabK_2")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(1344.506557, 2350.113732, 256), MAT_Vector3(25.5, 0, 0))
  Node_ParseIniFile(node55, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "gen_stabK_3")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(1345.443625, 1731.235314, 256.76028), MAT_Vector3(89.643411, 0, 0))
  Node_ParseIniFile(node56, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "gen_stabK_4")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(1310.449577, 793.002503, 260.707971), MAT_Vector3(89.64341, 0, 0))
  Node_ParseIniFile(node57, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "gen_stabK_5")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(2263.4463, 1652.90437, 262.688715), MAT_Vector3(47.869921, 0, 0))
  Node_ParseIniFile(node58, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "gen_stabK_6")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(2982.280785, 1077.688337, 262.780202), MAT_Vector3(47.86992, 0, 0))
  Node_ParseIniFile(node59, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "gen_stabK_7")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(2399.705266, 2462.820121, 257.864853), MAT_Vector3(15.569048, 0, 0))
  Node_ParseIniFile(node60, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "gen_stabK_8")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(3300.163896, 2709.652752, 257.8649), MAT_Vector3(15.56905, 0, 0))
  Node_ParseIniFile(node61, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "gen_stabM_5")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(2936.425114, 2644.861355, 260.295409), MAT_Vector3(-72.647192, 0, 0))
  Node_ParseIniFile(node62, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "gen_stabM_6")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(2932.339275, 2657.390556, 260.2954), MAT_Vector3(-72.64719, 0, 0))
  Node_ParseIniFile(node63, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "gen_stabM_7")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(1292.26969, 2659.660776, 270.349895), MAT_Vector3(-67.239845, 0, 0))
  Node_ParseIniFile(node64, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "gen_stabM_8")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(1276.472844, 2697.153094, 270.3499), MAT_Vector3(-158.462801, 0, 0))
  Node_ParseIniFile(node65, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "atl_dock3_1")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(1806.286297, 2241.615021, 278.370457), MAT_Vector3(19.746341, 0, 0))
  Node_ParseIniFile(node66, "osd/atl/atl_dock3.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "atl_wb2_1_1")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(1819.91101, 1780.526542, 276.103089), MAT_Vector3(-179.998459, 0, 0))
  Node_ParseIniFile(node67, "osd/atl/atl_wblock2_01.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "atl_wb2_2_1")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(2016.207924, 2507.162416, 291.172383), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node68, "osd/atl/atl_wblock2_02.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "atl_wb2_3_1")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(1399.994024, 2156.422801, 285.23749), MAT_Vector3(-65, 0, 0))
  Node_ParseIniFile(node69, "osd/atl/atl_wblock2_03.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "atl_wb2_4_1")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(1510.017211, 2214.421718, 289.314493), MAT_Vector3(115, 0, 0))
  Node_ParseIniFile(node70, "osd/atl/atl_wblock2_04.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "atl_wb2_4_2")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(2376.998022, 2343.393078, 197.652177), MAT_Vector3(-165.567451, 0, 0))
  Node_ParseIniFile(node71, "osd/atl/atl_wblock2_04.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "atl_wb3a_2_1")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(1380.08767, 1996.35411, 271.048292), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node72, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "atl_wb3b_3_1")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(2360.776951, 2528.1133, 261.412842), MAT_Vector3(-164.199478, 0, 0))
  Node_ParseIniFile(node73, "osd/atl/atl_wblock3b_03.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "atl_wb3a_1_1")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(1413.831928, 2447.382742, 206.550956), MAT_Vector3(117.47173, 0, 0))
  Node_ParseIniFile(node74, "osd/atl/atl_wblock3a_01.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "atl_wb3a_1_2")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(2097.592177, 1880.738995, 291.304342), MAT_Vector3(138.00346, 0, 0))
  Node_ParseIniFile(node75, "osd/atl/atl_wblock3a_01.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "atl_wb3a_1_3")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(2096.106643, 2493.371551, 294.483314), MAT_Vector3(90.12544, 0, 0))
  Node_ParseIniFile(node76, "osd/atl/atl_wblock3a_01.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "atl_wb3a_2_2")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(1267.644517, 1931.457943, 267.794017), MAT_Vector3(-89.510854, 0, 0))
  Node_ParseIniFile(node77, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "atl_wb3a_5_1")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(1267.635506, 1738.180074, 205.977072), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node78, "osd/atl/atl_wblock3a_05.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "atl_wb3b_2_1")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(1395.237144, 1676.933217, 199.031517), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node79, "osd/atl/atl_wblock3b_02.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "atl_wb3a_5_2")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(2022.253659, 1805.449289, 282.97052), MAT_Vector3(136.157784, 0, 0))
  Node_ParseIniFile(node80, "osd/atl/atl_wblock3a_05.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_generic", "atl_wb3b_3_2")
  Node_AddSon(node7, node81)
  Body_SetCS(node81, MAT_Vector3(2176.531008, 1632.612774, 207.472798), MAT_Vector3(-42.788876, 0, 0))
  Node_ParseIniFile(node81, "osd/atl/atl_wblock3b_03.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_generic", "atl_wb3a_2_3")
  Node_AddSon(node7, node82)
  Body_SetCS(node82, MAT_Vector3(2265.429006, 1723.565477, 209.375421), MAT_Vector3(-41.070974, 0, 0))
  Node_ParseIniFile(node82, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_generic", "atl_wb3b_3_3")
  Node_AddSon(node7, node83)
  Body_SetCS(node83, MAT_Vector3(1272.434492, 2388.497001, 201.713629), MAT_Vector3(-64.344791, 0, 0))
  Node_ParseIniFile(node83, "osd/atl/atl_wblock3b_03.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_generic", "gen_mhaus3_1")
  Node_AddSon(node7, node84)
  Body_SetCS(node84, MAT_Vector3(1044.54492, 3259.34656, 247.447249), MAT_Vector3(-89.791689, 0, 0))
  Node_ParseIniFile(node84, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_generic", "gen_mhaus2_1")
  Node_AddSon(node7, node85)
  Body_SetCS(node85, MAT_Vector3(1090.842685, 3252.250121, 274.428363), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node85, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "gen_tnk_k_1")
  Node_AddSon(node7, node86)
  Body_SetCS(node86, MAT_Vector3(1269.5806, 3171.811328, 249.580969), MAT_Vector3(-52.665452, 0, 0))
  Node_ParseIniFile(node86, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "gen_tnk_k_2")
  Node_AddSon(node7, node87)
  Body_SetCS(node87, MAT_Vector3(1240.265116, 3168.16824, 249.581), MAT_Vector3(-52.66545, 0, 0))
  Node_ParseIniFile(node87, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "gen_tnk_k_3")
  Node_AddSon(node7, node88)
  Body_SetCS(node88, MAT_Vector3(1799.712758, 3687.308905, 321.837641), MAT_Vector3(-45.852456, 0, 0))
  Node_ParseIniFile(node88, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "gen_tnk_k_4")
  Node_AddSon(node7, node89)
  Body_SetCS(node89, MAT_Vector3(1777.007615, 3665.178435, 321.8376), MAT_Vector3(-45.85246, 0, 0))
  Node_ParseIniFile(node89, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_generic", "gen_tnk_g_1")
  Node_AddSon(node7, node90)
  Body_SetCS(node90, MAT_Vector3(1076.67315, 3170.029207, 250.673355), MAT_Vector3(-89.297268, 0, 0))
  Node_ParseIniFile(node90, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node90, 0)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_generic", "gen_tnk_g_2")
  Node_AddSon(node7, node91)
  Body_SetCS(node91, MAT_Vector3(1713.362608, 3598.094028, 319.799576), MAT_Vector3(-45.537596, 0, 0))
  Node_ParseIniFile(node91, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node91, 0)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_generic", "gen_kai2_1")
  Node_AddSon(node7, node92)
  Body_SetCS(node92, MAT_Vector3(1259.867709, 3204.987699, 251.232539), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node92, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node92, 0)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "atl_dock1_4_1")
  Node_AddSon(node7, node93)
  Body_SetCS(node93, MAT_Vector3(1926.481008, 2067.82767, 285.951961), MAT_Vector3(-89.541102, 0, 0))
  Node_ParseIniFile(node93, "osd/atl/atl_dock1_4.osd")
  Body_SetFriendOrFoeID(node93, 0)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_generic", "atl_dock1_2_1")
  Node_AddSon(node7, node94)
  Body_SetCS(node94, MAT_Vector3(1890.962555, 2435.367008, 322.899358), MAT_Vector3(89.708869, 0, 0))
  Node_ParseIniFile(node94, "osd/atl/atl_dock1_2.osd")
  Body_SetFriendOrFoeID(node94, 0)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_generic", "atl_wb3a_2_4")
  Node_AddSon(node7, node95)
  Body_SetCS(node95, MAT_Vector3(1033.750387, 3387.065574, 252.005855), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node95, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node95, 0)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_generic", "gen_werk3_1")
  Node_AddSon(node7, node96)
  Body_SetCS(node96, MAT_Vector3(1611.709371, 3559.634314, 371.640217), MAT_Vector3(-46.023055, 0, 0))
  Node_ParseIniFile(node96, "osd/gen/gen_industry3.osd")
  Body_SetFriendOrFoeID(node96, 0)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_generic", "gen_kai1_1")
  Node_AddSon(node7, node97)
  Body_SetCS(node97, MAT_Vector3(1724.711376, 3674.590875, 336.587626), MAT_Vector3(-44.671507, 0, 0))
  Node_ParseIniFile(node97, "osd/gen/gen_kai1.osd")
  Body_SetFriendOrFoeID(node97, 0)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_generic", "gen_bunker_1")
  Node_AddSon(node7, node98)
  Body_SetCS(node98, MAT_Vector3(1815.730873, 3741.898699, 316.279026), MAT_Vector3(44.773486, 0, 0))
  Node_ParseIniFile(node98, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node98, 0)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_generic", "gen_schorn2_1")
  Node_AddSon(node7, node99)
  Body_SetCS(node99, MAT_Vector3(1826.857879, 3728.869208, 356.501049), MAT_Vector3(43.760885, 0, 0))
  Node_ParseIniFile(node99, "osd/gen/gen_chimney2.osd")
  Body_SetFriendOrFoeID(node99, 0)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_generic", "atl_wb3a_2_5")
  Node_AddSon(node7, node100)
  Body_SetCS(node100, MAT_Vector3(2220.040414, 2257.929705, 254.437162), MAT_Vector3(-79.462508, 0, 0))
  Node_ParseIniFile(node100, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node100, 0)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_generic", "gen_mhaus1_1")
  Node_AddSon(node7, node101)
  Body_SetCS(node101, MAT_Vector3(1348.144856, 1447.565835, 154.574115), MAT_Vector3(48.338596, 0, 0))
  Node_ParseIniFile(node101, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node101, 0)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_generic", "gen_mhaus2_2")
  Node_AddSon(node7, node102)
  Body_SetCS(node102, MAT_Vector3(1222.63394, 1127.995315, 210.992082), MAT_Vector3(90.056616, 0, 0))
  Node_ParseIniFile(node102, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node102, 0)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_generic", "gen_mhaus3_2")
  Node_AddSon(node7, node103)
  Body_SetCS(node103, MAT_Vector3(2745.506948, 1196.012418, 218.086366), MAT_Vector3(135.354665, 0, 0))
  Node_ParseIniFile(node103, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node103, 0)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_generic", "gen_kai2_2")
  Node_AddSon(node7, node104)
  Body_SetCS(node104, MAT_Vector3(1457.377825, 774.733743, 205.714102), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node104, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node104, 0)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_generic", "atl_wb3a_2_6")
  Node_AddSon(node7, node105)
  Body_SetCS(node105, MAT_Vector3(1277.818338, 1576.020322, 201.482439), MAT_Vector3(-90.485193, 0, 0))
  Node_ParseIniFile(node105, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node105, 0)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_generic", "atl_dock1_r_1")
  Node_AddSon(node7, node106)
  Body_SetCS(node106, MAT_Vector3(1919.635607, 1651.466168, 257.879336), MAT_Vector3(-52.605032, 0, 0))
  Node_ParseIniFile(node106, "osd/atl/atl_dock1_raw.osd")
  Body_SetFriendOrFoeID(node106, 0)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_generic", "atl_digmod_1")
  Node_AddSon(node7, node107)
  Body_SetCS(node107, MAT_Vector3(944.553381, 1212.688101, 214.544502), MAT_Vector3(34.379856, 0, 0))
  Node_ParseIniFile(node107, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node107, 0)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_generic", "gen_werk1_1")
  Node_AddSon(node7, node108)
  Body_SetCS(node108, MAT_Vector3(3351.390912, 1048.240972, 304.892938), MAT_Vector3(90.321359, 0, 0))
  Node_ParseIniFile(node108, "osd/gen/gen_industry1.osd")
  Body_SetFriendOrFoeID(node108, 0)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_generic", "gen_werk2_1")
  Node_AddSon(node7, node109)
  Body_SetCS(node109, MAT_Vector3(3507.769595, 909.46174, 379.402293), MAT_Vector3(-90.138073, 0, 0))
  Node_ParseIniFile(node109, "osd/gen/gen_industry2.osd")
  Body_SetFriendOrFoeID(node109, 0)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_generic", "gen_kai2_blue")
  Node_AddSon(node7, node110)
  Body_SetCS(node110, MAT_Vector3(3193.484, 1007.339, 270.0652), MAT_Vector3(89.61164, 0, 0))
  Node_ParseIniFile(node110, "osd/mp/mp_kai2_blue.osd")
  Body_SetFriendOrFoeID(node110, 0)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_generic", "gen_mhaus1_2")
  Node_AddSon(node7, node111)
  Body_SetCS(node111, MAT_Vector3(3295.060651, 1104.037154, 250.211337), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node111, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node111, 0)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_generic", "gen_mhaus2_3")
  Node_AddSon(node7, node112)
  Body_SetCS(node112, MAT_Vector3(3537.526495, 868.797115, 382.369316), MAT_Vector3(90.087733, 0, 0))
  Node_ParseIniFile(node112, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node112, 0)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_generic", "gen_mhaus3_3")
  Node_AddSon(node7, node113)
  Body_SetCS(node113, MAT_Vector3(3329.214911, 1119.891489, 236.605133), MAT_Vector3(0.107304, 0, 0))
  Node_ParseIniFile(node113, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node113, 0)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_generic", "gen_werk3_2")
  Node_AddSon(node7, node114)
  Body_SetCS(node114, MAT_Vector3(3349.535996, 1249.810648, 257.611128), MAT_Vector3(-90.01692, 0, 0))
  Node_ParseIniFile(node114, "osd/gen/gen_industry3.osd")
  Body_SetFriendOrFoeID(node114, 0)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_generic", "gen_tnk_k2_1")
  Node_AddSon(node7, node115)
  Body_SetCS(node115, MAT_Vector3(3660.058092, 868.921283, 357.195834), MAT_Vector3(-52.490257, 0, 0))
  Node_ParseIniFile(node115, "osd/gen/gen_tank_sml2.osd")
  Body_SetFriendOrFoeID(node115, 0)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_generic", "gen_tnk_k2_2")
  Node_AddSon(node7, node116)
  Body_SetCS(node116, MAT_Vector3(3702.44316, 908.159471, 357.1958), MAT_Vector3(-66.597387, 0, 0))
  Node_ParseIniFile(node116, "osd/gen/gen_tank_sml2.osd")
  Body_SetFriendOrFoeID(node116, 0)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_generic", "gen_tnk_g_3")
  Node_AddSon(node7, node117)
  Body_SetCS(node117, MAT_Vector3(3360.849745, 1170.492274, 296.291859), MAT_Vector3(-90.067227, 0, 0))
  Node_ParseIniFile(node117, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node117, 0)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_generic", "gen_tnk_g_4")
  Node_AddSon(node7, node118)
  Body_SetCS(node118, MAT_Vector3(3208.534885, 1049.249685, 263.7701), MAT_Vector3(-90.16512, 0, 0))
  Node_ParseIniFile(node118, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node118, 0)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_generic", "gen_kraft22_1")
  Node_AddSon(node7, node119)
  Body_SetCS(node119, MAT_Vector3(3718.877876, 978.049699, 356.630332), MAT_Vector3(90.261381, 0, 0))
  Node_ParseIniFile(node119, "osd/gen/gen_pplant22.osd")
  Body_SetFriendOrFoeID(node119, 0)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_generic", "gen_kraft1_1")
  Node_AddSon(node7, node120)
  Body_SetCS(node120, MAT_Vector3(3244.15465, 951.668745, 269.330397), MAT_Vector3(0.513804, 0, 0))
  Node_ParseIniFile(node120, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node120, 0)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_generic", "gen_turm_1")
  Node_AddSon(node7, node121)
  Body_SetCS(node121, MAT_Vector3(3320.02389, 1006.810444, 318.544622), MAT_Vector3(-26.536573, 0, 0))
  Node_ParseIniFile(node121, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node121, 0)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_generic", "gen_turm2_1")
  Node_AddSon(node7, node122)
  Body_SetCS(node122, MAT_Vector3(3454.69999, 807.745558, 348.656713), MAT_Vector3(-21.871124, 0, 0))
  Node_ParseIniFile(node122, "osd/gen/gen_tower2.osd")
  Body_SetFriendOrFoeID(node122, 0)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_generic", "gen_turm2_2")
  Node_AddSon(node7, node123)
  Body_SetCS(node123, MAT_Vector3(3612.463585, 995.57595, 353.996073), MAT_Vector3(-71.238752, 0, 0))
  Node_ParseIniFile(node123, "osd/gen/gen_tower2.osd")
  Body_SetFriendOrFoeID(node123, 0)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_generic", "gen_parabo_3")
  Node_AddSon(node7, node124)
  Body_SetCS(node124, MAT_Vector3(3277.029416, 1053.469804, 313.935627), MAT_Vector3(59.26231, 0, 0))
  Node_ParseIniFile(node124, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node124, 0)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_generic", "gen_parabo_4")
  Node_AddSon(node7, node125)
  Body_SetCS(node125, MAT_Vector3(3332.949699, 1248.651379, 299.41705), MAT_Vector3(58.802001, 0, 0))
  Node_ParseIniFile(node125, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node125, 0)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_generic", "gen_parabo_5")
  Node_AddSon(node7, node126)
  Body_SetCS(node126, MAT_Vector3(3597.796719, 921.644495, 446.167563), MAT_Vector3(64.612396, 0, 0))
  Node_ParseIniFile(node126, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node126, 0)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, -1, 0)
  Body_SetCargoKey(node126, -1, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_generic", "atl_digmod_2")
  Node_AddSon(node7, node127)
  Body_SetCS(node127, MAT_Vector3(2784.711441, 1583.585782, 215.577218), MAT_Vector3(34.37986, 0, 0))
  Node_ParseIniFile(node127, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node127, 0)
  Body_SetNameKey(node127, -1)
  Body_SetCargoKey(node127, -1, 0)
  Body_SetCargoKey(node127, -1, 1)
  Body_SetCargoKey(node127, -1, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_generic", "gen_mhaus1_3")
  Node_AddSon(node7, node128)
  Body_SetCS(node128, MAT_Vector3(2529.552993, 1536.291373, 190.144599), MAT_Vector3(-41.95605, 0, 0))
  Node_ParseIniFile(node128, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node128, 0)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, -1, 0)
  Body_SetCargoKey(node128, -1, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_generic", "gen_stern2_1")
  Node_AddSon(node7, node129)
  Body_SetCS(node129, MAT_Vector3(1386.225167, 1018.352533, 220.003581), MAT_Vector3(0.120604, 0, 0))
  Node_ParseIniFile(node129, "osd/gen/gen_starfound2.osd")
  Body_SetFriendOrFoeID(node129, 0)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_generic", "atl_wb4a_1_1")
  Node_AddSon(node7, node130)
  Body_SetCS(node130, MAT_Vector3(1415.066253, 910.898841, 210.69765), MAT_Vector3(-0.045396, 0, 0))
  Node_ParseIniFile(node130, "osd/atl/atl_wblock3a_raw_02.osd")
  Body_SetFriendOrFoeID(node130, 0)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_generic", "gen_schorn1_1")
  Node_AddSon(node7, node131)
  Body_SetCS(node131, MAT_Vector3(3377.456902, 1128.612109, 301.59019), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node131, "osd/gen/gen_chimney1.osd")
  Body_SetFriendOrFoeID(node131, 0)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_generic", "atl_dock3_2")
  Node_AddSon(node7, node132)
  Body_SetCS(node132, MAT_Vector3(3625.137456, 3219.146841, 295.824127), MAT_Vector3(-90.265954, 0, 0))
  Node_ParseIniFile(node132, "osd/atl/atl_dock3.osd")
  Body_SetFriendOrFoeID(node132, 0)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_generic", "gen_mhaus2_4")
  Node_AddSon(node7, node133)
  Body_SetCS(node133, MAT_Vector3(2549.060332, 2629.76123, 214.303021), MAT_Vector3(15.405384, 0, 0))
  Node_ParseIniFile(node133, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node133, 0)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, -1, 0)
  Body_SetCargoKey(node133, -1, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_generic", "atl_wb3a_2_7")
  Node_AddSon(node7, node134)
  Body_SetCS(node134, MAT_Vector3(2596.003644, 2401.698542, 206.651125), MAT_Vector3(-164.896261, 0, 0))
  Node_ParseIniFile(node134, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node134, 0)
  Body_SetNameKey(node134, -1)
  Body_SetCargoKey(node134, -1, 0)
  Body_SetCargoKey(node134, -1, 1)
  Body_SetCargoKey(node134, -1, 2)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_generic", "gen_synaps_1")
  Node_AddSon(node7, node135)
  Body_SetCS(node135, MAT_Vector3(1758.783653, 2652.572327, 329.676022), MAT_Vector3(-31.317989, 0, 0))
  Node_ParseIniFile(node135, "osd/gen/gen_synapse.osd")
  Body_SetFriendOrFoeID(node135, 0)
  Body_SetNameKey(node135, -1)
  Body_SetCargoKey(node135, -1, 0)
  Body_SetCargoKey(node135, -1, 1)
  Body_SetCargoKey(node135, -1, 2)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_generic", "atl_digmod_3")
  Node_AddSon(node7, node136)
  Body_SetCS(node136, MAT_Vector3(2765.301876, 2114.910777, 200.381694), MAT_Vector3(30.638739, 0, 0))
  Node_ParseIniFile(node136, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node136, 0)
  Body_SetNameKey(node136, -1)
  Body_SetCargoKey(node136, -1, 0)
  Body_SetCargoKey(node136, -1, 1)
  Body_SetCargoKey(node136, -1, 2)
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_generic", "gen_mhaus1_4")
  Node_AddSon(node7, node137)
  Body_SetCS(node137, MAT_Vector3(2864.868087, 2649.957068, 195.52671), MAT_Vector3(106.963347, 0, 0))
  Node_ParseIniFile(node137, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node137, 0)
  Body_SetNameKey(node137, -1)
  Body_SetCargoKey(node137, -1, 0)
  Body_SetCargoKey(node137, -1, 1)
  Body_SetCargoKey(node137, -1, 2)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_generic", "gen_kai2_blue_HQ")
  Node_AddSon(node7, node138)
  Body_SetCS(node138, MAT_Vector3(3274.84, 2906.062, 197.9883), MAT_Vector3(89.61164, 0, 0))
  Node_ParseIniFile(node138, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node138, 0)
  Body_SetNameKey(node138, -1)
  Body_SetCargoKey(node138, -1, 0)
  Body_SetCargoKey(node138, -1, 1)
  Body_SetCargoKey(node138, -1, 2)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_generic", "gen_stern2_2")
  Node_AddSon(node7, node139)
  Body_SetCS(node139, MAT_Vector3(3357.782708, 3396.409868, 260.474562), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node139, "osd/gen/gen_starfound2.osd")
  Body_SetFriendOrFoeID(node139, 0)
  Body_SetNameKey(node139, -1)
  Body_SetCargoKey(node139, -1, 0)
  Body_SetCargoKey(node139, -1, 1)
  Body_SetCargoKey(node139, -1, 2)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_generic", "gen_stern2_3")
  Node_AddSon(node7, node140)
  Body_SetCS(node140, MAT_Vector3(3459.296439, 3423.165225, 263.267401), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node140, "osd/gen/gen_starfound2.osd")
  Body_SetFriendOrFoeID(node140, 0)
  Body_SetNameKey(node140, -1)
  Body_SetCargoKey(node140, -1, 0)
  Body_SetCargoKey(node140, -1, 1)
  Body_SetCargoKey(node140, -1, 2)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("nod_generic", "gen_mhaus2_5")
  Node_AddSon(node7, node141)
  Body_SetCS(node141, MAT_Vector3(1332.184789, 2742.60105, 207.165978), MAT_Vector3(-67.127563, 0, 0))
  Node_ParseIniFile(node141, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node141, 0)
  Body_SetNameKey(node141, -1)
  Body_SetCargoKey(node141, -1, 0)
  Body_SetCargoKey(node141, -1, 1)
  Body_SetCargoKey(node141, -1, 2)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("nod_generic", "gen_stern_1")
  Node_AddSon(node7, node142)
  Body_SetCS(node142, MAT_Vector3(1073.058767, 2839.842679, 206.253713), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node142, "osd/gen/gen_starfound.osd")
  Body_SetFriendOrFoeID(node142, 0)
  Body_SetNameKey(node142, -1)
  Body_SetCargoKey(node142, -1, 0)
  Body_SetCargoKey(node142, -1, 1)
  Body_SetCargoKey(node142, -1, 2)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("nod_generic", "gen_werk3_3")
  Node_AddSon(node7, node143)
  Body_SetCS(node143, MAT_Vector3(917.451447, 3120.460544, 209.83169), MAT_Vector3(-55.669201, 0, 0))
  Node_ParseIniFile(node143, "osd/gen/gen_industry3.osd")
  Body_SetFriendOrFoeID(node143, 0)
  Body_SetNameKey(node143, -1)
  Body_SetCargoKey(node143, -1, 0)
  Body_SetCargoKey(node143, -1, 1)
  Body_SetCargoKey(node143, -1, 2)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("nod_generic", "atl_wb3a_5_3")
  Node_AddSon(node7, node144)
  Body_SetCS(node144, MAT_Vector3(710.944516, 3331.408322, 256.433361), MAT_Vector3(-141.122014, 0, 0))
  Node_ParseIniFile(node144, "osd/atl/atl_wblock3a_05.osd")
  Body_SetFriendOrFoeID(node144, 0)
  Body_SetNameKey(node144, -1)
  Body_SetCargoKey(node144, -1, 0)
  Body_SetCargoKey(node144, -1, 1)
  Body_SetCargoKey(node144, -1, 2)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("nod_generic", "des_broadcasttower")
  Node_AddSon(node7, node145)
  Body_SetCS(node145, MAT_Vector3(1050.143703, 3256.685439, 266.192317), MAT_Vector3(18.848934, 0, 0))
  Node_ParseIniFile(node145, "osd/des/des_ec_tower.osd")
  Body_SetFriendOrFoeID(node145, 0)
  Body_SetNameKey(node145, -1)
  Body_SetCargoKey(node145, -1, 0)
  Body_SetCargoKey(node145, -1, 1)
  Body_SetCargoKey(node145, -1, 2)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("nod_generic", "des_geb_hab_big_1")
  Node_AddSon(node7, node146)
  Body_SetCS(node146, MAT_Vector3(3304.832543, 3112.760842, 189.809678), MAT_Vector3(89.888625, 0, 0))
  Node_ParseIniFile(node146, "osd/des/des_geb_hab_big.osd")
  Body_SetFriendOrFoeID(node146, 0)
  Body_SetNameKey(node146, -1)
  Body_SetCargoKey(node146, -1, 0)
  Body_SetCargoKey(node146, -1, 1)
  Body_SetCargoKey(node146, -1, 2)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("nod_generic", "des_parlament_1")
  Node_AddSon(node7, node147)
  Body_SetCS(node147, MAT_Vector3(1587.105, 433.297, 260.0646), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node147, "osd/des/des_parlament.osd")
  Body_SetFriendOrFoeID(node147, 0)
  Body_SetNameKey(node147, -1)
  Body_SetCargoKey(node147, -1, 0)
  Body_SetCargoKey(node147, -1, 1)
  Body_SetCargoKey(node147, -1, 2)
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("nod_generic", "RadioStation_DockPoint")
  Node_AddSon(node7, node148)
  Body_SetCS(node148, MAT_Vector3(1056.987879, 3202.91198, 314.428222), MAT_Vector3(90.067421, 0, 0))
  Node_ParseIniFile(node148, "osd/gen/gen_dockingnode.osd")
  Body_SetFriendOrFoeID(node148, 0)
  Body_SetNameKey(node148, -1)
  Body_SetCargoKey(node148, -1, 0)
  Body_SetCargoKey(node148, -1, 1)
  Body_SetCargoKey(node148, -1, 2)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("nod_generic", "des_parabolic_1")
  Node_AddSon(node7, node149)
  Body_SetCS(node149, MAT_Vector3(1120.959787, 3194.13922, 338.550089), MAT_Vector3(-169.674005, 0, 0))
  Node_ParseIniFile(node149, "osd/des/des_parabolic.osd")
  Body_SetFriendOrFoeID(node149, 0)
  Body_SetNameKey(node149, -1)
  Body_SetCargoKey(node149, -1, 0)
  Body_SetCargoKey(node149, -1, 1)
  Body_SetCargoKey(node149, -1, 2)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("nod_generic", "des_parabolic_2")
  Node_AddSon(node7, node150)
  Body_SetCS(node150, MAT_Vector3(1138.235756, 3193.846191, 338.5501), MAT_Vector3(-169.674, 0, 0))
  Node_ParseIniFile(node150, "osd/des/des_parabolic.osd")
  Body_SetFriendOrFoeID(node150, 0)
  Body_SetNameKey(node150, -1)
  Body_SetCargoKey(node150, -1, 0)
  Body_SetCargoKey(node150, -1, 1)
  Body_SetCargoKey(node150, -1, 2)
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node7, node151)
  Node_ParseIniFile(node151, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("nod_fx_sky", "fx_sky_11_1")
  Node_AddSon(node7, node152)
  Node_ParseIniFile(node152, "osd/fx_sky/fx_sky_11.osd")
  Node_EnterSimulation(node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("nod_generic", "f1_schalt")
  Node_AddSon(node7, node153)
  Body_SetCS(node153, MAT_Vector3(1532.761, 1086.707, 207.2354), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node153, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node153, 0)
  Body_SetNameKey(node153, -1)
  Body_SetCargoKey(node153, -1, 0)
  Body_SetCargoKey(node153, -1, 1)
  Body_SetCargoKey(node153, -1, 2)
  Node_EnterSimulation(node153)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("nod_generic", "f1_turret_1")
  Node_AddSon(node7, node154)
  Body_SetCS(node154, MAT_Vector3(1485.26, 1080.403, 212.3745), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node154, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node154, 0)
  Node_EnterSimulation(node154)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("nod_generic", "f1_turret_2")
  Node_AddSon(node7, node155)
  Body_SetCS(node155, MAT_Vector3(1567.817, 1135.041, 205.4715), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node155, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node155, 0)
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("nod_generic", "f2_schalt")
  Node_AddSon(node7, node156)
  Body_SetCS(node156, MAT_Vector3(1442.978, 701.475, 221.2409), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node156, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node156, 0)
  Body_SetNameKey(node156, -1)
  Body_SetCargoKey(node156, -1, 0)
  Body_SetCargoKey(node156, -1, 1)
  Body_SetCargoKey(node156, -1, 2)
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("nod_generic", "f2_turret_1")
  Node_AddSon(node7, node157)
  Body_SetCS(node157, MAT_Vector3(1337.237, 788.3542, 269.7127), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node157, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node157, 0)
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("nod_generic", "f2_turret_2")
  Node_AddSon(node7, node158)
  Body_SetCS(node158, MAT_Vector3(1480.824, 774.5607, 247.6637), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node158, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node158, 0)
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("nod_generic", "f3_schalt")
  Node_AddSon(node7, node159)
  Body_SetCS(node159, MAT_Vector3(1622.363, 642.576, 260.6407), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node159, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node159, 0)
  Body_SetNameKey(node159, -1)
  Body_SetCargoKey(node159, -1, 0)
  Body_SetCargoKey(node159, -1, 1)
  Body_SetCargoKey(node159, -1, 2)
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("nod_generic", "f3_turret_1")
  Node_AddSon(node7, node160)
  Body_SetCS(node160, MAT_Vector3(1584.618, 647.9644, 263.041), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node160, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node160, 0)
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("nod_generic", "f3_turret_2")
  Node_AddSon(node7, node161)
  Body_SetCS(node161, MAT_Vector3(1667.773, 647.5748, 264.7912), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node161, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node161, 0)
  Node_EnterSimulation(node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("nod_generic", "f4_schalt")
  Node_AddSon(node7, node162)
  Body_SetCS(node162, MAT_Vector3(2005.432, 633.2841, 211.5866), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node162, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node162, 0)
  Body_SetNameKey(node162, -1)
  Body_SetCargoKey(node162, -1, 0)
  Body_SetCargoKey(node162, -1, 1)
  Body_SetCargoKey(node162, -1, 2)
  Node_EnterSimulation(node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("nod_generic", "f4_turret_1")
  Node_AddSon(node7, node163)
  Body_SetCS(node163, MAT_Vector3(1956.396, 626.8931, 212.2891), MAT_Vector3(38.34619, 0, 0))
  Node_ParseIniFile(node163, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node163, 0)
  Node_EnterSimulation(node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("nod_generic", "f4_turret_2")
  Node_AddSon(node7, node164)
  Body_SetCS(node164, MAT_Vector3(2024.138, 685.2364, 214.4849), MAT_Vector3(43.63082, 0, 0))
  Node_ParseIniFile(node164, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node164, 0)
  Node_EnterSimulation(node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("nod_generic", "f5_schalt")
  Node_AddSon(node7, node165)
  Body_SetCS(node165, MAT_Vector3(1172.334, 585.5845, 216.6819), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node165, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node165, 0)
  Body_SetNameKey(node165, -1)
  Body_SetCargoKey(node165, -1, 0)
  Body_SetCargoKey(node165, -1, 1)
  Body_SetCargoKey(node165, -1, 2)
  Node_EnterSimulation(node165)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("nod_generic", "f5_turret_1")
  Node_AddSon(node7, node166)
  Body_SetCS(node166, MAT_Vector3(1146.353, 558.7104, 223.1946), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node166, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node166, 0)
  Node_EnterSimulation(node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("nod_generic", "f5_turret_2")
  Node_AddSon(node7, node167)
  Body_SetCS(node167, MAT_Vector3(1195.36, 613.5461, 215.312), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node167, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node167, 0)
  Node_EnterSimulation(node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("nod_generic", "radio_turret_1")
  Node_AddSon(node7, node168)
  Body_SetCS(node168, MAT_Vector3(1046.875, 3141.401, 260.1196), MAT_Vector3(146.8162, 0, 0))
  Node_ParseIniFile(node168, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node168, 0)
  Node_EnterSimulation(node168)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("nod_generic", "radio_turret_2")
  Node_AddSon(node7, node169)
  Body_SetCS(node169, MAT_Vector3(1198.368, 3105.855, 260.1196), MAT_Vector3(177.2288, 0, 0))
  Node_ParseIniFile(node169, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node169, 0)
  Node_EnterSimulation(node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("nod_generic", "radio_turret_3")
  Node_AddSon(node7, node170)
  Body_SetCS(node170, MAT_Vector3(1299.081, 3134.63, 260.1196), MAT_Vector3(-128.4833, 0, 0))
  Node_ParseIniFile(node170, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node170, 0)
  Node_EnterSimulation(node170)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("nod_generic", "NavyHQ_turret_1")
  Node_AddSon(node7, node171)
  Body_SetCS(node171, MAT_Vector3(3301.042, 2757.635, 257.0448), MAT_Vector3(105.5926, 0, 0))
  Node_ParseIniFile(node171, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node171, 0)
  Node_EnterSimulation(node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("nod_generic", "NavyHQ_turret_2")
  Node_AddSon(node7, node172)
  Body_SetCS(node172, MAT_Vector3(3225.93, 3126.014, 349.8936), MAT_Vector3(105.5926, 0, 0))
  Node_ParseIniFile(node172, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node172, 0)
  Node_EnterSimulation(node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("nod_generic", "NavyHQ_turret_3")
  Node_AddSon(node7, node173)
  Body_SetCS(node173, MAT_Vector3(3225.518, 3182.864, 349.8936), MAT_Vector3(73.35264, 0, 0))
  Node_ParseIniFile(node173, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node173, 0)
  Node_EnterSimulation(node173)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("nod_generic", "NeoTec_turret_1")
  Node_AddSon(node7, node174)
  Body_SetCS(node174, MAT_Vector3(2960.575, 1034.431, 270.1736), MAT_Vector3(73.35264, 0, 0))
  Node_ParseIniFile(node174, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node174, 0)
  Node_EnterSimulation(node174)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("nod_generic", "NeoTec_turret_2")
  Node_AddSon(node7, node175)
  Body_SetCS(node175, MAT_Vector3(3130.673, 1057.441, 272.6244), MAT_Vector3(42.261, 0, 0))
  Node_ParseIniFile(node175, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node175, 0)
  Node_EnterSimulation(node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("nod_generic", "NeoTec_turret_3")
  Node_AddSon(node7, node176)
  Body_SetCS(node176, MAT_Vector3(3260.162, 1104.835, 275.0752), MAT_Vector3(42.261, 0, 0))
  Node_ParseIniFile(node176, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node176, 0)
  Node_EnterSimulation(node176)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("nod_generic", "NeoTec_turret_4")
  Node_AddSon(node7, node177)
  Body_SetCS(node177, MAT_Vector3(3330.99, 1271.111, 306.7187), MAT_Vector3(42.261, 0, 0))
  Node_ParseIniFile(node177, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node177, 0)
  Node_EnterSimulation(node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("nod_fx_plankton", "fx_plankton_cyan_1")
  Node_AddSon(node7, node178)
  Node_ParseIniFile(node178, "osd/fx_plankton/fx_plankton_cyan.osd")
  Node_EnterSimulation(node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node7, node179)
  Node_ParseIniFile(node179, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node179, "map/4H1/terrain/coral01.tga")
  Node_EnterSimulation(node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node7, node180)
  Node_ParseIniFile(node180, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node180, "map/4H1/terrain/grass01.tga")
  Node_EnterSimulation(node180)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node7, node181)
  Node_ParseIniFile(node181, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node181, "map/4H1/terrain/stone01.tga")
  Node_EnterSimulation(node181)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("nod_fx_plant", "coral_03_1")
  Node_AddSon(node7, node182)
  Node_ParseIniFile(node182, "osd/fx_plant/coral_03.osd")
  FX_Plant_SetMap(node182, "map/4H1/terrain/coral03.tga")
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
  node186 = Node_CreateNode("NOD_PatrolArea", "RadioStation_PArea")
  Node_AddSon(node185, node186)
  PatrolArea_SetPosition(node186, MAT_Vector3(1205.790116, 3174.082314, 430))
  PatrolArea_SetRadius(node186, 150)
  PatrolArea_SetMinZ(node186, -50)
  PatrolArea_SetMaxZ(node186, 50)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_PatrolArea", "RadioStation_TArea")
  Node_AddSon(node185, node187)
  PatrolArea_SetPosition(node187, MAT_Vector3(1205.79, 3174.082, 315))
  PatrolArea_SetRadius(node187, 450)
  PatrolArea_SetMinZ(node187, -125)
  PatrolArea_SetMaxZ(node187, 175)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_PatrolArea", "RadioStation_FArea")
  Node_AddSon(node185, node188)
  PatrolArea_SetPosition(node188, MAT_Vector3(1205.79, 3174.082, 315))
  PatrolArea_SetRadius(node188, 600)
  PatrolArea_SetMinZ(node188, -125)
  PatrolArea_SetMaxZ(node188, 175)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_Path", "TechBomber_Parh1")
  Node_AddSon(node185, node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node189, node190)
  Position_SetPosition(node190, MAT_Vector3(1806.012286, 3104.667287, 279.555865))
  Position_SetRadius(node190, 5)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node189, node191)
  Position_SetPosition(node191, MAT_Vector3(1474.734964, 3105.786179, 279.5559))
  Position_SetRadius(node191, 5)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node189, node192)
  Position_SetPosition(node192, MAT_Vector3(1301.262228, 3136.003838, 382.859364))
  Position_SetRadius(node192, 5)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node189, node193)
  Position_SetPosition(node193, MAT_Vector3(1143.948581, 3207.492199, 408.841238))
  Position_SetRadius(node193, 5)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Path", "TechBomber_Parh2")
  Node_AddSon(node185, node194)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node194, node195)
  Position_SetPosition(node195, MAT_Vector3(1050.123649, 3063.279957, 375.10063))
  Position_SetRadius(node195, 5)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node194, node196)
  Position_SetPosition(node196, MAT_Vector3(1050.69882, 2941.992972, 375.1006))
  Position_SetRadius(node196, 5)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node183, node197)
  Node_EnterSimulation(node197)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node183, node198)
  Node_EnterSimulation(node198)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node183, node199)
  Node_EnterSimulation(node199)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node199, node200)
  Body_SetCS(node200, MAT_Vector3(1588.538934, 1810.128291, 312.665324), MAT_Vector3(-158.243017, 0, 0))
  Node_ParseIniFile(node200, "osd/pla/pla_vortex.osd")
  Body_SetFriendOrFoeID(node200, 1)
  Node_EnterSimulation(node200)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("nod_vessel", "wng_bonham_c4_1")
  Node_AddSon(node199, node201)
  Body_SetCS(node201, MAT_Vector3(1616.78443, 1832.728436, 339.7878), MAT_Vector3(-160.40049, 0, 0))
  Node_ParseIniFile(node201, "osd/wng/wng_bonham_c4.osd")
  Body_SetFriendOrFoeID(node201, 2)
  Body_SetNameKey(node201, -1)
  Body_SetCargoKey(node201, -1, 0)
  Body_SetCargoKey(node201, -1, 1)
  Body_SetCargoKey(node201, -1, 2)
  Node_EnterSimulation(node201)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("nod_vessel", "wng_degrange_c4_1")
  Node_AddSon(node199, node202)
  Body_SetCS(node202, MAT_Vector3(1637.881772, 1840.450753, 340.1642), MAT_Vector3(-159.0098, 0, 0))
  Node_ParseIniFile(node202, "osd/wng/wng_degrange_c4.osd")
  Body_SetFriendOrFoeID(node202, 2)
  Body_SetNameKey(node202, -1)
  Body_SetCargoKey(node202, -1, 0)
  Body_SetCargoKey(node202, -1, 1)
  Body_SetCargoKey(node202, -1, 2)
  Node_EnterSimulation(node202)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("nod_vessel", "wng_harper_c4_1")
  Node_AddSon(node199, node203)
  Body_SetCS(node203, MAT_Vector3(1657.195772, 1848.526231, 337.4286), MAT_Vector3(-152.2582, 0, 0))
  Node_ParseIniFile(node203, "osd/wng/wng_harper_c4.osd")
  Body_SetFriendOrFoeID(node203, 2)
  Body_SetNameKey(node203, -1)
  Body_SetCargoKey(node203, -1, 0)
  Body_SetCargoKey(node203, -1, 1)
  Body_SetCargoKey(node203, -1, 2)
  Node_EnterSimulation(node203)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("NOD_Directory", "Cox_Units")
  Node_AddSon(node199, node204)
  Node_EnterSimulation(node204)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("nod_vessel", "atl_triops_1")
  Node_AddSon(node204, node205)
  Body_SetCS(node205, MAT_Vector3(1144.616248, 2970.896774, 400), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node205, "osd/atl/atl_triops.osd")
  Body_SetFriendOrFoeID(node205, 0)
  Body_SetNameKey(node205, -1)
  Body_SetCargoKey(node205, -1, 0)
  Body_SetCargoKey(node205, -1, 1)
  Body_SetCargoKey(node205, -1, 2)
  Node_EnterSimulation(node205)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("nod_vessel", "cox_scout1_emp_1")
  Node_AddSon(node204, node206)
  Body_SetCS(node206, MAT_Vector3(1200.86861, 3082.384434, 350.124), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node206, "osd/atl/atl_scout1_emp.osd")
  Body_SetFriendOrFoeID(node206, 5)
  Body_SetNameKey(node206, -1)
  Body_SetCargoKey(node206, -1, 0)
  Body_SetCargoKey(node206, -1, 1)
  Body_SetCargoKey(node206, -1, 2)
  Node_EnterSimulation(node206)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("nod_vessel", "cox_scout1_emp_2")
  Node_AddSon(node204, node207)
  Body_SetCS(node207, MAT_Vector3(1214.923459, 3227.617874, 430.556739), MAT_Vector3(167.970855, 0, 0))
  Node_ParseIniFile(node207, "osd/atl/atl_scout1_emp.osd")
  Body_SetFriendOrFoeID(node207, 3)
  Body_SetNameKey(node207, -1)
  Body_SetCargoKey(node207, -1, 0)
  Body_SetCargoKey(node207, -1, 1)
  Body_SetCargoKey(node207, -1, 2)
  Node_EnterSimulation(node207)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("nod_vessel", "cox_scout2_emp_1")
  Node_AddSon(node204, node208)
  Body_SetCS(node208, MAT_Vector3(1297.491191, 3137.823065, 350.124), MAT_Vector3(39.173266, 0, 0))
  Node_ParseIniFile(node208, "osd/atl/atl_scout2_emp.osd")
  Body_SetFriendOrFoeID(node208, 3)
  Body_SetNameKey(node208, -1)
  Body_SetCargoKey(node208, -1, 0)
  Body_SetCargoKey(node208, -1, 1)
  Body_SetCargoKey(node208, -1, 2)
  Node_EnterSimulation(node208)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("nod_vessel", "cox_scout2_emp_2")
  Node_AddSon(node204, node209)
  Body_SetCS(node209, MAT_Vector3(1179.822506, 3132.919942, 350.124), MAT_Vector3(151.788469, 0, 0))
  Node_ParseIniFile(node209, "osd/atl/atl_scout2_emp.osd")
  Body_SetFriendOrFoeID(node209, 3)
  Body_SetNameKey(node209, -1)
  Body_SetCargoKey(node209, -1, 0)
  Body_SetCargoKey(node209, -1, 1)
  Body_SetCargoKey(node209, -1, 2)
  Node_EnterSimulation(node209)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("nod_vessel", "cox_bomber_emp_1")
  Node_AddSon(node204, node210)
  Body_SetCS(node210, MAT_Vector3(1254.745531, 3050.370611, 350.124), MAT_Vector3(20.894205, 0, 0))
  Node_ParseIniFile(node210, "osd/atl/atl_bomber_emp.osd")
  Body_SetFriendOrFoeID(node210, 3)
  Body_SetNameKey(node210, -1)
  Body_SetCargoKey(node210, -1, 0)
  Body_SetCargoKey(node210, -1, 1)
  Body_SetCargoKey(node210, -1, 2)
  Node_EnterSimulation(node210)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("nod_vessel", "cox_scout1_emp_3")
  Node_AddSon(node204, node211)
  Body_SetCS(node211, MAT_Vector3(782.632761, 2860.500489, 430.5567), MAT_Vector3(-47.990491, 0, 0))
  Node_ParseIniFile(node211, "osd/atl/atl_scout1_emp.osd")
  Body_SetFriendOrFoeID(node211, 3)
  Body_SetNameKey(node211, -1)
  Body_SetCargoKey(node211, -1, 0)
  Body_SetCargoKey(node211, -1, 1)
  Body_SetCargoKey(node211, -1, 2)
  Node_EnterSimulation(node211)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("nod_vessel", "cox_scout1_emp_4")
  Node_AddSon(node204, node212)
  Body_SetCS(node212, MAT_Vector3(805.448324, 2840.76505, 430.5567), MAT_Vector3(-49.013102, 0, 0))
  Node_ParseIniFile(node212, "osd/atl/atl_scout1_emp.osd")
  Body_SetFriendOrFoeID(node212, 3)
  Body_SetNameKey(node212, -1)
  Body_SetCargoKey(node212, -1, 0)
  Body_SetCargoKey(node212, -1, 1)
  Body_SetCargoKey(node212, -1, 2)
  Node_EnterSimulation(node212)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("nod_vessel", "cox_scout1_emp_5")
  Node_AddSon(node204, node213)
  Body_SetCS(node213, MAT_Vector3(827.051752, 2822.314336, 430.5567), MAT_Vector3(-44.021617, 0, 0))
  Node_ParseIniFile(node213, "osd/atl/atl_scout1_emp.osd")
  Body_SetFriendOrFoeID(node213, 5)
  Body_SetNameKey(node213, -1)
  Body_SetCargoKey(node213, -1, 0)
  Body_SetCargoKey(node213, -1, 1)
  Body_SetCargoKey(node213, -1, 2)
  Node_EnterSimulation(node213)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("nod_vessel", "cox_scout1_emp_6")
  Node_AddSon(node204, node214)
  Body_SetCS(node214, MAT_Vector3(851.021323, 2799.979053, 430.5567), MAT_Vector3(-47.856827, 0, 0))
  Node_ParseIniFile(node214, "osd/atl/atl_scout1_emp.osd")
  Body_SetFriendOrFoeID(node214, 5)
  Body_SetNameKey(node214, -1)
  Body_SetCargoKey(node214, -1, 0)
  Body_SetCargoKey(node214, -1, 1)
  Body_SetCargoKey(node214, -1, 2)
  Node_EnterSimulation(node214)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("nod_vessel", "cox_scout2_emp_3")
  Node_AddSon(node204, node215)
  Body_SetCS(node215, MAT_Vector3(1584.416659, 2801.46435, 257.15554), MAT_Vector3(37.654692, 0, 0))
  Node_ParseIniFile(node215, "osd/atl/atl_scout2_emp.osd")
  Body_SetFriendOrFoeID(node215, 5)
  Body_SetNameKey(node215, -1)
  Body_SetCargoKey(node215, -1, 0)
  Body_SetCargoKey(node215, -1, 1)
  Body_SetCargoKey(node215, -1, 2)
  Node_EnterSimulation(node215)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("nod_vessel", "cox_scout1_emp_7")
  Node_AddSon(node204, node216)
  Body_SetCS(node216, MAT_Vector3(1515.805919, 2769.946411, 255.398927), MAT_Vector3(47.95945, 0, 0))
  Node_ParseIniFile(node216, "osd/atl/atl_scout1_emp.osd")
  Body_SetFriendOrFoeID(node216, 5)
  Body_SetNameKey(node216, -1)
  Body_SetCargoKey(node216, -1, 0)
  Body_SetCargoKey(node216, -1, 1)
  Body_SetCargoKey(node216, -1, 2)
  Node_EnterSimulation(node216)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("nod_vessel", "cox_scout1_emp_8")
  Node_AddSon(node204, node217)
  Body_SetCS(node217, MAT_Vector3(1543.73411, 2774.088131, 247.859155), MAT_Vector3(48.24948, 0, 0))
  Node_ParseIniFile(node217, "osd/atl/atl_scout1_emp.osd")
  Body_SetFriendOrFoeID(node217, 3)
  Body_SetNameKey(node217, -1)
  Body_SetCargoKey(node217, -1, 0)
  Body_SetCargoKey(node217, -1, 1)
  Body_SetCargoKey(node217, -1, 2)
  Node_EnterSimulation(node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("nod_vessel", "cox_scout1_emp_9")
  Node_AddSon(node204, node218)
  Body_SetCS(node218, MAT_Vector3(1567.939679, 2775.649781, 252.082437), MAT_Vector3(39.724198, 0, 0))
  Node_ParseIniFile(node218, "osd/atl/atl_scout1_emp.osd")
  Body_SetFriendOrFoeID(node218, 3)
  Body_SetNameKey(node218, -1)
  Body_SetCargoKey(node218, -1, 0)
  Body_SetCargoKey(node218, -1, 1)
  Body_SetCargoKey(node218, -1, 2)
  Node_EnterSimulation(node218)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("nod_vessel", "cox_bomber_1")
  Node_AddSon(node204, node219)
  Body_SetCS(node219, MAT_Vector3(1621.477756, 2899.686342, 298.689816), MAT_Vector3(57.912417, 0, 0))
  Node_ParseIniFile(node219, "osd/atl/atl_bomber.osd")
  Body_SetFriendOrFoeID(node219, 5)
  Body_SetNameKey(node219, -1)
  Body_SetCargoKey(node219, -1, 0)
  Body_SetCargoKey(node219, -1, 1)
  Body_SetCargoKey(node219, -1, 2)
  Node_EnterSimulation(node219)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("nod_vessel", "cox_scout1_1")
  Node_AddSon(node204, node220)
  Body_SetCS(node220, MAT_Vector3(1505.915684, 2877.823247, 298.689816), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node220, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node220, 3)
  Body_SetNameKey(node220, -1)
  Body_SetCargoKey(node220, -1, 0)
  Body_SetCargoKey(node220, -1, 1)
  Body_SetCargoKey(node220, -1, 2)
  Node_EnterSimulation(node220)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("NOD_Directory", "Sool_Units")
  Node_AddSon(node199, node221)
  Node_EnterSimulation(node221)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("nod_vessel", "atl_techbomber_docking_1")
  Node_AddSon(node221, node222)
  Body_SetCS(node222, MAT_Vector3(1929.093313, 3104.005863, 277.63447), MAT_Vector3(90.159672, 0, 0))
  Node_ParseIniFile(node222, "osd/atl/atl_techbomber_docking.osd")
  Body_SetFriendOrFoeID(node222, 4)
  Body_SetNameKey(node222, -1)
  Body_SetCargoKey(node222, -1, 0)
  Body_SetCargoKey(node222, -1, 1)
  Body_SetCargoKey(node222, -1, 2)
  Node_EnterSimulation(node222)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_1")
  Node_AddSon(node199, node223)
  Body_SetPosition(node223, MAT_Vector3(1106.399351, 3236.332073, 305.348444))
  WayPoint_SetRadius(node223, 400)
  Node_ParseIniFile(node223, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node223)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_2")
  Node_AddSon(node199, node224)
  Body_SetPosition(node224, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node224, 400)
  Node_ParseIniFile(node224, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node224)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("nod_waypoint", "nav_waypoint_follow_1")
  Node_AddSon(node199, node225)
  Body_SetPosition(node225, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node225, 5)
  Node_ParseIniFile(node225, "osd/nav/nav_waypoint_follow.osd")
  Node_EnterSimulation(node225)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node226)
  Camera_SetBackPlane(node226, 512)
  Node_EnterSimulation(node226)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("NOD_Scenario", "IngameSequences")
  Node_AddSon(node0, node227)
  Node_EnterSimulation(node227)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node227, node228)
  Node_EnterSimulation(node228)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node227, node229)
  Node_EnterSimulation(node229)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("NOD_Path", "TriOps_Path1")
  Node_AddSon(node229, node230)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node230, node231)
  Position_SetPosition(node231, MAT_Vector3(1144.125254, 3216.888462, 400))
  Position_SetRadius(node231, 5)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node230, node232)
  Position_SetPosition(node232, MAT_Vector3(1144.125254, 3353.623973, 400))
  Position_SetRadius(node232, 5)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("NOD_Path", "PlayerPath_1")
  Node_AddSon(node229, node233)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node233, node234)
  Position_SetPosition(node234, MAT_Vector3(1599.243984, 1786.955964, 330))
  Position_SetRadius(node234, 5)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node233, node235)
  Position_SetPosition(node235, MAT_Vector3(1632.819381, 1701.898368, 330))
  Position_SetRadius(node235, 5)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node233, node236)
  Position_SetPosition(node236, MAT_Vector3(1485.087323, 1700.778821, 348.383521))
  Position_SetRadius(node236, 5)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node233, node237)
  Position_SetPosition(node237, MAT_Vector3(1475.014709, 1888.800954, 361.849124))
  Position_SetRadius(node237, 5)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node229, node238)
  Position_SetPosition(node238, MAT_Vector3(1591.434388, 1677.879088, 335))
  Position_SetRadius(node238, 5)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("NOD_Position", "LookFrom_2")
  Node_AddSon(node229, node239)
  Position_SetPosition(node239, MAT_Vector3(1095.042397, 2973.538747, 434.257842))
  Position_SetRadius(node239, 5)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("NOD_Position", "LookAt_1")
  Node_AddSon(node229, node240)
  Position_SetPosition(node240, MAT_Vector3(1078.254707, 3145.89237, 355.945476))
  Position_SetRadius(node240, 5)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("NOD_Position", "LookAt_2")
  Node_AddSon(node229, node241)
  Position_SetPosition(node241, MAT_Vector3(1307.686477, 3121.270424, 362.651215))
  Position_SetRadius(node241, 5)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("NOD_Path", "PlayerPath_2")
  Node_AddSon(node229, node242)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node242, node243)
  Position_SetPosition(node243, MAT_Vector3(1461.696079, 2156.619119, 380.445442))
  Position_SetRadius(node243, 5)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node242, node244)
  Position_SetPosition(node244, MAT_Vector3(1410.650979, 2274.051642, 380.801068))
  Position_SetRadius(node244, 5)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node242, node245)
  Position_SetPosition(node245, MAT_Vector3(1352.454083, 2409.472442, 292.33854))
  Position_SetRadius(node245, 5)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node242, node246)
  Position_SetPosition(node246, MAT_Vector3(1276.487145, 2586.791607, 300.882166))
  Position_SetRadius(node246, 5)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("NOD_Position", "LookFrom_3")
  Node_AddSon(node229, node247)
  Position_SetPosition(node247, MAT_Vector3(1345.978774, 2331.579102, 315.006049))
  Position_SetRadius(node247, 5)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("NOD_Position", "LookAt_3")
  Node_AddSon(node229, node248)
  Position_SetPosition(node248, MAT_Vector3(1442.053608, 2174.010976, 381.604016))
  Position_SetRadius(node248, 5)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("NOD_Path", "Bonham_Path")
  Node_AddSon(node229, node249)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node249, node250)
  Position_SetPosition(node250, MAT_Vector3(1619.855028, 1783.322293, 363.96753))
  Position_SetRadius(node250, 5)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node249, node251)
  Position_SetPosition(node251, MAT_Vector3(1652.015578, 1693.611285, 296.325591))
  Position_SetRadius(node251, 5)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node249, node252)
  Position_SetPosition(node252, MAT_Vector3(1471.747233, 1682.608992, 285.962094))
  Position_SetRadius(node252, 5)
  Game_LoadProgress_Advance(node0)
  node253 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node249, node253)
  Position_SetPosition(node253, MAT_Vector3(1459.274874, 1887.181203, 360.8909))
  Position_SetRadius(node253, 5)
  Game_LoadProgress_Advance(node0)
  node254 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node249, node254)
  Position_SetPosition(node254, MAT_Vector3(1488.497726, 2033.277129, 355.645845))
  Position_SetRadius(node254, 5)
  Game_LoadProgress_Advance(node0)
  node255 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node249, node255)
  Position_SetPosition(node255, MAT_Vector3(1503.668072, 2126.389357, 379.443906))
  Position_SetRadius(node255, 5)
  Game_LoadProgress_Advance(node0)
  node256 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node249, node256)
  Position_SetPosition(node256, MAT_Vector3(1252.547904, 2682.12531, 379.4439))
  Position_SetRadius(node256, 5)
  Game_LoadProgress_Advance(node0)
  node257 = Node_CreateNode("NOD_Path", "DeGrande_Path")
  Node_AddSon(node229, node257)
  Game_LoadProgress_Advance(node0)
  node258 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node257, node258)
  Position_SetPosition(node258, MAT_Vector3(1646.091238, 1787.553651, 363.9675))
  Position_SetRadius(node258, 5)
  Game_LoadProgress_Advance(node0)
  node259 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node257, node259)
  Position_SetPosition(node259, MAT_Vector3(1678.252238, 1680.916046, 296.3256))
  Position_SetRadius(node259, 5)
  Game_LoadProgress_Advance(node0)
  node260 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node257, node260)
  Position_SetPosition(node260, MAT_Vector3(1448.049753, 1651.29478, 285.9621))
  Position_SetRadius(node260, 5)
  Game_LoadProgress_Advance(node0)
  node261 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node257, node261)
  Position_SetPosition(node261, MAT_Vector3(1445.511339, 1887.420991, 408.87893))
  Position_SetRadius(node261, 5)
  Game_LoadProgress_Advance(node0)
  node262 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node257, node262)
  Position_SetPosition(node262, MAT_Vector3(1480.053873, 2032.99, 406.611811))
  Position_SetRadius(node262, 5)
  Game_LoadProgress_Advance(node0)
  node263 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node257, node263)
  Position_SetPosition(node263, MAT_Vector3(1476.825423, 2119.315688, 379.4439))
  Position_SetRadius(node263, 5)
  Game_LoadProgress_Advance(node0)
  node264 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node257, node264)
  Position_SetPosition(node264, MAT_Vector3(1227.158092, 2670.276376, 379.4439))
  Position_SetRadius(node264, 5)
  Game_LoadProgress_Advance(node0)
  node265 = Node_CreateNode("NOD_Path", "Harper_Path")
  Node_AddSon(node229, node265)
  Game_LoadProgress_Advance(node0)
  node266 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node265, node266)
  Position_SetPosition(node266, MAT_Vector3(1675.712797, 1792.631633, 363.9675))
  Position_SetRadius(node266, 5)
  Game_LoadProgress_Advance(node0)
  node267 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node265, node267)
  Position_SetPosition(node267, MAT_Vector3(1708.720127, 1658.911459, 296.3256))
  Position_SetRadius(node267, 5)
  Game_LoadProgress_Advance(node0)
  node268 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node265, node268)
  Position_SetPosition(node268, MAT_Vector3(1464.130028, 1672.453037, 250.98201))
  Position_SetRadius(node268, 5)
  Game_LoadProgress_Advance(node0)
  node269 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node265, node269)
  Position_SetPosition(node269, MAT_Vector3(1475.450891, 1890.32689, 335.772218))
  Position_SetRadius(node269, 5)
  Game_LoadProgress_Advance(node0)
  node270 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node265, node270)
  Position_SetPosition(node270, MAT_Vector3(1500.602434, 2034.41115, 326.991896))
  Position_SetRadius(node270, 5)
  Game_LoadProgress_Advance(node0)
  node271 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node265, node271)
  Position_SetPosition(node271, MAT_Vector3(1490.366707, 2121.854679, 346.882646))
  Position_SetRadius(node271, 5)
  Game_LoadProgress_Advance(node0)
  node272 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node265, node272)
  Position_SetPosition(node272, MAT_Vector3(1242.392037, 2677.893349, 374.606228))
  Position_SetRadius(node272, 5)
  Game_LoadProgress_Advance(node0)
  node273 = Node_CreateNode("NOD_Position", "NewMoveTo_1")
  Node_AddSon(node229, node273)
  Position_SetPosition(node273, MAT_Vector3(1330.114116, 728.800904, 290))
  Position_SetRadius(node273, 5)
  Game_LoadProgress_Advance(node0)
  node274 = Node_CreateNode("NOD_Position", "NewMoveTo_2")
  Node_AddSon(node229, node274)
  Position_SetPosition(node274, MAT_Vector3(1341.923294, 1841.236375, 290))
  Position_SetRadius(node274, 5)
  Game_LoadProgress_Advance(node0)
  node275 = Node_CreateNode("NOD_Position", "NewLookAt_1")
  Node_AddSon(node229, node275)
  Position_SetPosition(node275, MAT_Vector3(1341.152755, 2833.469344, 290))
  Position_SetRadius(node275, 5)
  Game_LoadProgress_Advance(node0)
  node276 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node227, node276)
  Node_EnterSimulation(node276)
  Game_LoadProgress_Advance(node0)
  node277 = Node_CreateNode("NOD_Director", "Chapter1_Intro_V")
  Node_AddSon(node276, node277)
  Node_EnterSimulation(node277)
  Game_LoadProgress_Advance(node0)
  node278 = Node_CreateNode("NOD_Director", "Chapter1_AddOn_V")
  Node_AddSon(node276, node278)
  Node_EnterSimulation(node278)
  Game_LoadProgress_Advance(node0)
  node279 = Node_CreateNode("NOD_Director", "Chapter1_Intro_A")
  Node_AddSon(node276, node279)
  Node_EnterSimulation(node279)
  Game_LoadProgress_Advance(node0)
  node280 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node227, node280)
  Node_EnterSimulation(node280)
  Game_LoadProgress_Advance(node0)
  node281 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_1")
  Node_AddSon(node280, node281)
  Body_SetFriendOrFoeID(node281, 0)
  Body_SetCS(node281, MAT_Vector3(1385.038988, 2331.35243, 338.228821), MAT_Vector3(26.264978, 0, 0))
  Trigger_SetBoxMode(node281, 20, 20, 20)
  Node_EnterSimulation(node281)
  Game_LoadProgress_Advance(node0)
  node282 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node227, node282)
  Node_EnterSimulation(node282)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, F)
SetEnemyMatrixElement(2, 0, F)
SetEnemyMatrixElement(3, 0, N)
SetEnemyMatrixElement(4, 0, F)
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
SetEnemyMatrixElement(1, 1, F)
SetEnemyMatrixElement(2, 1, F)
SetEnemyMatrixElement(3, 1, E)
SetEnemyMatrixElement(4, 1, F)
SetEnemyMatrixElement(5, 1, E)
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
SetEnemyMatrixElement(0, 2, F)
SetEnemyMatrixElement(1, 2, F)
SetEnemyMatrixElement(2, 2, F)
SetEnemyMatrixElement(3, 2, E)
SetEnemyMatrixElement(4, 2, F)
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
SetEnemyMatrixElement(0, 3, N)
SetEnemyMatrixElement(1, 3, E)
SetEnemyMatrixElement(2, 3, E)
SetEnemyMatrixElement(3, 3, F)
SetEnemyMatrixElement(4, 3, E)
SetEnemyMatrixElement(5, 3, F)
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
SetEnemyMatrixElement(0, 4, F)
SetEnemyMatrixElement(1, 4, F)
SetEnemyMatrixElement(2, 4, F)
SetEnemyMatrixElement(3, 4, E)
SetEnemyMatrixElement(4, 4, F)
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
SetEnemyMatrixElement(5, 5, F)
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
                                                                                                                                                                                                                                                                                                                                                  if not (o5835.Value ~= True) then
                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
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
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5822.Node, o5822.Node, 179)
  SendRadioMessageTake(o5822.Node, o5822.Node, 180)
  Script_Log("RC1OK_0925_1507")
end, SetStateValue = function(L0)
  if not (o2.Value == L0) then
    o2["Value"] = L0
    if not (L0 ~= 1) then
      o2.ChangeTo1()
    end
  end
end }
o3 = { [nil] = {}, GetCalculated = function()
  if not (True ~= True) then
    if not (True ~= True) then
      if not (True ~= True) then
        if not (True ~= True) then
          if not (True ~= True) then
            if not (True ~= True) then
              if not (True ~= True) then
                if not (True ~= True) then
                  if not (True ~= True) then
                    if not (True ~= True) then
                      if not (True ~= True) then
                        if not (True ~= True) then
                          if not (True ~= True) then
                            if not (True ~= True) then
                              if not (True ~= True) then
                                if not (True ~= True) then
                                  if not (True ~= True) then
                                    if not (True ~= True) then
                                      if not (True ~= True) then
                                        if not (True ~= True) then
                                          if not (True ~= True) then
                                            if not (True ~= True) then
                                              if not (True ~= True) then
                                                if not (True ~= True) then
                                                  if not (True ~= True) then
                                                    if not (True ~= True) then
                                                      if not (True ~= True) then
                                                        if not (True ~= True) then
                                                          if not (True ~= True) then
                                                            if not (True ~= True) then
                                                              if not (True ~= True) then
                                                                if not (True ~= True) then
                                                                  if not (True ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
                                                                        if not (True ~= True) then
                                                                          if not (True ~= True) then
                                                                            if not (True ~= True) then
                                                                              if not (True ~= True) then
                                                                                if not (True ~= True) then
                                                                                  if not (True ~= True) then
                                                                                    if not (True ~= True) then
                                                                                      if not (True ~= True) then
                                                                                        if not (True ~= True) then
                                                                                          if not (True ~= True) then
                                                                                            if not (True ~= True) then
                                                                                              if not (True ~= True) then
                                                                                                if not (True ~= True) then
                                                                                                  if not (True ~= True) then
                                                                                                    if not (True ~= True) then
                                                                                                      if not (True ~= True) then
                                                                                                        if not (True ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
                                                                                                                                                if not (True ~= True) then
                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                  if not (o5836.Value ~= True) then
                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
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
end, ReCalculate = function()
  o3.SetStateValue(o3.GetCalculated())
end, StartCalculate = function()
  o3["Value"] = o3.GetCalculated()
end, ChangeTo1 = function()
  Game_MissionEnd(GetGameNode(), 1)
end, SetStateValue = function(L0)
  if not (o3.Value == L0) then
    o3["Value"] = L0
    if not (L0 ~= 1) then
      o3.ChangeTo1()
    end
  end
end }
o4 = { [nil] = {}, GetCalculated = function()
  if not (True ~= True) then
    if not (True ~= True) then
      if not (True ~= True) then
        if not (True ~= True) then
          if not (True ~= True) then
            if not (True ~= True) then
              if not (True ~= True) then
                if not (True ~= True) then
                  if not (True ~= True) then
                    if not (True ~= True) then
                      if not (True ~= True) then
                        if not (True ~= True) then
                          if not (True ~= True) then
                            if not (True ~= True) then
                              if not (True ~= True) then
                                if not (True ~= True) then
                                  if not (True ~= True) then
                                    if not (True ~= True) then
                                      if not (True ~= True) then
                                        if not (True ~= True) then
                                          if not (True ~= True) then
                                            if not (True ~= True) then
                                              if not (True ~= True) then
                                                if not (True ~= True) then
                                                  if not (True ~= True) then
                                                    if not (True ~= True) then
                                                      if not (True ~= True) then
                                                        if not (True ~= True) then
                                                          if not (True ~= True) then
                                                            if not (True ~= True) then
                                                              if not (True ~= True) then
                                                                if not (True ~= True) then
                                                                  if not (True ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
                                                                        if not (True ~= True) then
                                                                          if not (True ~= True) then
                                                                            if not (True ~= True) then
                                                                              if not (True ~= True) then
                                                                                if not (True ~= True) then
                                                                                  if not (True ~= True) then
                                                                                    if not (True ~= True) then
                                                                                      if not (True ~= True) then
                                                                                        if not (True ~= True) then
                                                                                          if not (True ~= True) then
                                                                                            if not (True ~= True) then
                                                                                              if not (True ~= True) then
                                                                                                if not (True ~= True) then
                                                                                                  if not (True ~= True) then
                                                                                                    if not (True ~= True) then
                                                                                                      if not (True ~= True) then
                                                                                                        if not (True ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
                                                                                                                                                if not (True ~= True) then
                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                  if not (o5837.Value ~= True) then
                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
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
end, ReCalculate = function()
  o4.SetStateValue(o4.GetCalculated())
end, StartCalculate = function()
  o4["Value"] = o4.GetCalculated()
end, ChangeTo1 = function()
  Game_MissionEnd(GetGameNode(), 1)
end, SetStateValue = function(L0)
  if not (o4.Value == L0) then
    o4["Value"] = L0
    if not (L0 ~= 1) then
      o4.ChangeTo1()
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
                                                                                                                                                                                                                                                                                    if not (o4719.Value == True) then
                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                          if not (o6831.Value ~= True) then
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
end, ReCalculate = function()
  o26.SetStateValue(o26.GetCalculated())
end, StartCalculate = function()
  o26["Value"] = o26.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "track3")
  SendRadioMessageTake(o5822.Node, o5822.Node, 1143)
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
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4688, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4688, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4688, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o4691.SetStateValue(L1)
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
o4691 = { [nil] = {}, Start = function()
  o4691["Value"] = False
  o4719.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4691.Value == L0) then
    o4691["Value"] = L0
    o4719.ReCalculate()
  end
end }
o4719 = { [nil] = {}, GetCalculated = function()
  if not (o4691.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4719.SetStateValue(o4719.GetCalculated())
end, StartCalculate = function()
  o4719["Value"] = o4719.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4719.Value == L0) then
    o4719["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o4723 = { [nil] = {}, Start = function(L0)

end }
S_o4757 = { [nil] = {}, Start = function(L0)

end }
S_o4791 = { [nil] = {}, Start = function(L0)

end }
S_o4825 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4825, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4825, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4825, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o4828.SetStateValue(L1)
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
o4828 = { [nil] = {}, Start = function()
  o4828["Value"] = False
  o5827.StartCalculate()
  o5828.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4828.Value == L0) then
    o4828["Value"] = L0
    o5827.ReCalculate()
    o5828.ReCalculate()
  end
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
  o5827.StartCalculate()
  o5828.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4863.Value == L0) then
    o4863["Value"] = L0
    o5827.ReCalculate()
    o5828.ReCalculate()
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
  Turret_SetAngleArea(L0.Node, 180, -15, 75)
  CallFunction(o4929, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4929, "Code5")
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
S_o4967 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4967, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4967, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4967, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 75)
  CallFunction(o4967, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4967, "Code5")
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
S_o5005 = { [nil] = {}, Start = function(L0)

end }
S_o5039 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5039, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5039, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5039, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 75)
  CallFunction(o5039, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5039, "Code5")
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
S_o5077 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5077, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5077, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5077, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 75)
  CallFunction(o5077, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5077, "Code5")
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
S_o5115 = { [nil] = {}, Start = function(L0)

end }
S_o5149 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5149, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5149, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5149, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 75)
  CallFunction(o5149, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5149, "Code5")
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
S_o5187 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5187, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5187, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5187, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 75)
  CallFunction(o5187, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5187, "Code5")
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
S_o5225 = { [nil] = {}, Start = function(L0)

end }
S_o5259 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5259, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5259, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5259, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 75)
  CallFunction(o5259, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5259, "Code5")
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
  Turret_SetAngleArea(L0.Node, 180, -15, 75)
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
S_o5335 = { [nil] = {}, Start = function(L0)

end }
S_o5369 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5369, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5369, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5369, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 75)
  CallFunction(o5369, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5369, "Code5")
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
S_o5407 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5407, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5407, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5407, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 75)
  CallFunction(o5407, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5407, "Code5")
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
S_o5445 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5445, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5445, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5445, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o5445, "Code4")
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
S_o5482 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5482, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5482, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5482, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o5482, "Code4")
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
S_o5519 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5519, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5519, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5519, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o5519, "Code4")
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
S_o5556 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5556, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5556, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5556, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 75)
  CallFunction(o5556, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5556, "Code5")
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
S_o5594 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5594, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5594, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5594, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 75)
  CallFunction(o5594, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5594, "Code5")
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
S_o5632 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5632, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5632, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5632, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 75)
  CallFunction(o5632, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5632, "Code5")
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
S_o5670 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5670, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5670, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5670, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 75)
  CallFunction(o5670, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5670, "Code5")
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
S_o5708 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5708, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5708, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5708, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 75)
  CallFunction(o5708, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5708, "Code5")
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
S_o5746 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5746, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5746, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5746, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 75)
  CallFunction(o5746, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5746, "Code5")
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
S_o5784 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5784, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5784, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5784, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 75)
  CallFunction(o5784, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5784, "Code5")
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
S_o5822 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_empactor", 1)
  Body_AddItem(L0.Node, "gun_doommortar", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_energy", 4000)
  Body_AddItem(L0.Node, "torpedo_flashshark", 8)
  Body_AddItem(L0.Node, "device_generator2", 1)
  Body_AddItem(L0.Node, "device_repair1", 1)
  CallFunction(o5822, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
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
o5827 = { [nil] = {}, GetCalculated = function()
  if not (o4828.Value ~= True) then
    if not (o4863.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5827.SetStateValue(o5827.GetCalculated())
end, StartCalculate = function()
  o5827["Value"] = o5827.GetCalculated()
  o5835.StartCalculate()
  o6306.StartCalculate()
  o6354.StartCalculate()
  o6402.StartCalculate()
  o6450.StartCalculate()
  o6789.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Transmitter destroyed")
end, SetStateValue = function(L0)
  if not (o5827.Value == L0) then
    o5827["Value"] = L0
    o5835.ReCalculate()
    o6306.ReCalculate()
    o6354.ReCalculate()
    o6402.ReCalculate()
    o6450.ReCalculate()
    o6789.ReCalculate()
    if not (L0 ~= 1) then
      o5827.ChangeTo1()
    end
  end
end }
o5828 = { [nil] = {}, GetCalculated = function()
  if not (o4828.Value ~= True) then
    if not (o4863.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5828.SetStateValue(o5828.GetCalculated())
end, StartCalculate = function()
  o5828["Value"] = o5828.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o6840.Node)
end, SetStateValue = function(L0)
  if not (o5828.Value == L0) then
    o5828["Value"] = L0
    if not (L0 ~= 1) then
      o5828.ChangeTo1()
    end
  end
end }
o5829 = { [nil] = {}, GetCalculated = function()
  if not (o6794.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5829.SetStateValue(o5829.GetCalculated())
end, StartCalculate = function()
  o5829["Value"] = o5829.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5822.Node, o5822.Node, 181)
end, SetStateValue = function(L0)
  if not (o5829.Value == L0) then
    o5829["Value"] = L0
    if not (L0 ~= 1) then
      o5829.ChangeTo1()
    end
  end
end }
o5830 = { [nil] = {}, GetCalculated = function()
  if not (o6692.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5830.SetStateValue(o5830.GetCalculated())
end, StartCalculate = function()
  o5830["Value"] = o5830.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5822.Node, o5822.Node, 182)
  SendRadioMessageTake(o5822.Node, o5822.Node, 183)
  SED_SetTaskTextKey(1301, -1, -1)
end, SetStateValue = function(L0)
  if not (o5830.Value == L0) then
    o5830["Value"] = L0
    if not (L0 ~= 1) then
      o5830.ChangeTo1()
    end
  end
end }
o5831 = { [nil] = {}, GetCalculated = function()
  if not (o5833.Value ~= True) then
    if not (o5834.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5831.SetStateValue(o5831.GetCalculated())
end, StartCalculate = function()
  o5831["Value"] = o5831.GetCalculated()
  o5836.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5822.Node, o5822.Node, 184)
  SendRadioMessageTake(o5822.Node, o5822.Node, 185)
end, SetStateValue = function(L0)
  if not (o5831.Value == L0) then
    o5831["Value"] = L0
    o5836.ReCalculate()
    if not (L0 ~= 1) then
      o5831.ChangeTo1()
    end
  end
end }
o5832 = { [nil] = {}, GetCalculated = function()
  if not (o5833.Value ~= True) then
    if not (o5834.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5832.SetStateValue(o5832.GetCalculated())
end, StartCalculate = function()
  o5832["Value"] = o5832.GetCalculated()
  o5837.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5822.Node, o5822.Node, 1153)
end, SetStateValue = function(L0)
  if not (o5832.Value == L0) then
    o5832["Value"] = L0
    o5837.ReCalculate()
    if not (L0 ~= 1) then
      o5832.ChangeTo1()
    end
  end
end }
o5833 = { [nil] = {}, GetCalculated = function()
  if not (o6081.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6129.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6177.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6225.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6273.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6321.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6369.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6417.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6465.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6513.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6561.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6609.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6657.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6705.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6753.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 < 15) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5833.SetStateValue(o5833.GetCalculated())
end, StartCalculate = function()
  o5833["Value"] = o5833.GetCalculated()
  o5831.StartCalculate()
  o5832.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5833.Value == L0) then
    o5833["Value"] = L0
    o5831.ReCalculate()
    o5832.ReCalculate()
  end
end }
o5834 = { [nil] = {}, GetCalculated = function()
  if not (o6069.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6117.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6165.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6213.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6261.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6309.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6357.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6405.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6453.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6501.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6549.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6597.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6645.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6693.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6741.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 < 4) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5834.SetStateValue(o5834.GetCalculated())
end, StartCalculate = function()
  o5834["Value"] = o5834.GetCalculated()
  o5831.StartCalculate()
  o5832.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5834.Value == L0) then
    o5834["Value"] = L0
    o5831.ReCalculate()
    o5832.ReCalculate()
  end
end }
o5835 = { [nil] = {}, GetCalculated = function()
  if not (o5827.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5835.SetStateValue(o5835.GetCalculated())
end, StartCalculate = function()
  o5835["Value"] = o5835.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5835.Value == L0) then
    o5835["Value"] = L0
    o2.ReCalculate()
  end
end }
o5836 = { [nil] = {}, GetCalculated = function()
  if not (o5831.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5836.SetStateValue(o5836.GetCalculated())
end, StartCalculate = function()
  o5836["Value"] = o5836.GetCalculated()
  o3.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5836.Value == L0) then
    o5836["Value"] = L0
    o3.ReCalculate()
  end
end }
o5837 = { [nil] = {}, GetCalculated = function()
  if not (o5832.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5837.SetStateValue(o5837.GetCalculated())
end, StartCalculate = function()
  o5837["Value"] = o5837.GetCalculated()
  o4.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5837.Value == L0) then
    o5837["Value"] = L0
    o4.ReCalculate()
  end
end }
S_o5863 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5863, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5863, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5863, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o5863, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o5863, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o5863, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5863, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0.2 } }("Code8")
  else
    CallFunction(o5863, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Bonham_Path", 1, 1 } }("Code9")
  else
    CallFunction(o5863, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/RadioStation_PArea", "/Scenario_Dynamic/Navigation/RadioStation_TArea", "/Scenario_Dynamic/Navigation/RadioStation_FArea", "E", "", "", "", 0.5, "Code10")
  else
    CallFunction(o5863, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
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
S_o5914 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5914, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5914, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5914, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o5914, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o5914, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o5914, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5914, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0.3 } }("Code8")
  else
    CallFunction(o5914, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/DeGrande_Path", 1, 1 } }("Code9")
  else
    CallFunction(o5914, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/RadioStation_PArea", "/Scenario_Dynamic/Navigation/RadioStation_TArea", "/Scenario_Dynamic/Navigation/RadioStation_FArea", "E", "", "", "", 0.5, "Code10")
  else
    CallFunction(o5914, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
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
S_o5965 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5965, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5965, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5965, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o5965, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o5965, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o5965, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5965, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0.4 } }("Code8")
  else
    CallFunction(o5965, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Harper_Path", 1, 1 } }("Code9")
  else
    CallFunction(o5965, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/RadioStation_PArea", "/Scenario_Dynamic/Navigation/RadioStation_TArea", "/Scenario_Dynamic/Navigation/RadioStation_FArea", "E", "", "", "", 0.5, "Code10")
  else
    CallFunction(o5965, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
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
S_o6016 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code1")
  else
    CallFunction(o6016, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 45 } }("Code2")
  else
    CallFunction(o6016, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/TriOps_Path1", 1, 1 } }("Code3")
  else
    CallFunction(o6016, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code4")
  else
    CallFunction(o6016, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6064 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6064, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6064, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6064, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o6064, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/RadioStation_PArea", "/Scenario_Dynamic/Navigation/RadioStation_TArea", "/Scenario_Dynamic/Navigation/RadioStation_FArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o6064, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o6069.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o6081.SetStateValue(L1)
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
o6069 = { [nil] = {}, Start = function()
  o6069["Value"] = False
  o5834.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6069.Value == L0) then
    o6069["Value"] = L0
    o5834.ReCalculate()
  end
end }
o6081 = { [nil] = {}, Start = function()
  o6081["Value"] = False
  o5833.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6081.Value == L0) then
    o6081["Value"] = L0
    o5833.ReCalculate()
  end
end }
S_o6112 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6112, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6112, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6112, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o6112, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/RadioStation_PArea", "/Scenario_Dynamic/Navigation/RadioStation_TArea", "/Scenario_Dynamic/Navigation/RadioStation_FArea", "E", "", "", "", 0.5, "Code6")
  else
    CallFunction(o6112, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o6117.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o6129.SetStateValue(L1)
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
o6117 = { [nil] = {}, Start = function()
  o6117["Value"] = False
  o5834.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6117.Value == L0) then
    o6117["Value"] = L0
    o5834.ReCalculate()
  end
end }
o6129 = { [nil] = {}, Start = function()
  o6129["Value"] = False
  o5833.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6129.Value == L0) then
    o6129["Value"] = L0
    o5833.ReCalculate()
  end
end }
S_o6160 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6160, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6160, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6160, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o6160, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/RadioStation_PArea", "/Scenario_Dynamic/Navigation/RadioStation_TArea", "/Scenario_Dynamic/Navigation/RadioStation_FArea", "E", "", "", "", 0.5, "Code6")
  else
    CallFunction(o6160, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o6165.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o6177.SetStateValue(L1)
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
o6165 = { [nil] = {}, Start = function()
  o6165["Value"] = False
  o5834.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6165.Value == L0) then
    o6165["Value"] = L0
    o5834.ReCalculate()
  end
end }
o6177 = { [nil] = {}, Start = function()
  o6177["Value"] = False
  o5833.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6177.Value == L0) then
    o6177["Value"] = L0
    o5833.ReCalculate()
  end
end }
S_o6208 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6208, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6208, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6208, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o6208, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/RadioStation_PArea", "/Scenario_Dynamic/Navigation/RadioStation_TArea", "/Scenario_Dynamic/Navigation/RadioStation_FArea", "E", "", "", "", 0.5, "Code6")
  else
    CallFunction(o6208, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o6213.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o6225.SetStateValue(L1)
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
o6213 = { [nil] = {}, Start = function()
  o6213["Value"] = False
  o5834.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6213.Value == L0) then
    o6213["Value"] = L0
    o5834.ReCalculate()
  end
end }
o6225 = { [nil] = {}, Start = function()
  o6225["Value"] = False
  o5833.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6225.Value == L0) then
    o6225["Value"] = L0
    o5833.ReCalculate()
  end
end }
S_o6256 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6256, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6256, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6256, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o6256, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/RadioStation_PArea", "/Scenario_Dynamic/Navigation/RadioStation_TArea", "/Scenario_Dynamic/Navigation/RadioStation_FArea", "E", "", "", "", 0.1, "Code6")
  else
    CallFunction(o6256, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o6261.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o6273.SetStateValue(L1)
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
o6261 = { [nil] = {}, Start = function()
  o6261["Value"] = False
  o5834.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6261.Value == L0) then
    o6261["Value"] = L0
    o5834.ReCalculate()
  end
end }
o6273 = { [nil] = {}, Start = function()
  o6273["Value"] = False
  o5833.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6273.Value == L0) then
    o6273["Value"] = L0
    o5833.ReCalculate()
  end
end }
S_o6304 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6304, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6304, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6304, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o6304, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/RadioStation_PArea", "/Scenario_Dynamic/Navigation/RadioStation_TArea", "/Scenario_Dynamic/Navigation/RadioStation_FArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o6304, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o6309.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o6321.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6306.Value ~= True) then
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
o6306 = { [nil] = {}, GetCalculated = function()
  if not (o5827.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6306.SetStateValue(o6306.GetCalculated())
end, StartCalculate = function()
  o6306["Value"] = o6306.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6306.Value == L0) then
    o6306["Value"] = L0
    CallFunction(o6304, "ProcesseStateChange")
  end
end }
o6309 = { [nil] = {}, Start = function()
  o6309["Value"] = False
  o5834.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6309.Value == L0) then
    o6309["Value"] = L0
    o5834.ReCalculate()
  end
end }
o6321 = { [nil] = {}, Start = function()
  o6321["Value"] = False
  o5833.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6321.Value == L0) then
    o6321["Value"] = L0
    o5833.ReCalculate()
  end
end }
S_o6352 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6352, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6352, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6352, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o6352, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/RadioStation_PArea", "/Scenario_Dynamic/Navigation/RadioStation_TArea", "/Scenario_Dynamic/Navigation/RadioStation_FArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o6352, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o6357.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o6369.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6354.Value ~= True) then
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
o6354 = { [nil] = {}, GetCalculated = function()
  if not (o5827.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6354.SetStateValue(o6354.GetCalculated())
end, StartCalculate = function()
  o6354["Value"] = o6354.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6354.Value == L0) then
    o6354["Value"] = L0
    CallFunction(o6352, "ProcesseStateChange")
  end
end }
o6357 = { [nil] = {}, Start = function()
  o6357["Value"] = False
  o5834.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6357.Value == L0) then
    o6357["Value"] = L0
    o5834.ReCalculate()
  end
end }
o6369 = { [nil] = {}, Start = function()
  o6369["Value"] = False
  o5833.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6369.Value == L0) then
    o6369["Value"] = L0
    o5833.ReCalculate()
  end
end }
S_o6400 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6400, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6400, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6400, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o6400, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/RadioStation_PArea", "/Scenario_Dynamic/Navigation/RadioStation_TArea", "/Scenario_Dynamic/Navigation/RadioStation_FArea", "E", "", "", "", 0.5, "Code6")
  else
    CallFunction(o6400, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o6405.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o6417.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6402.Value ~= True) then
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
o6402 = { [nil] = {}, GetCalculated = function()
  if not (o5827.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6402.SetStateValue(o6402.GetCalculated())
end, StartCalculate = function()
  o6402["Value"] = o6402.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6402.Value == L0) then
    o6402["Value"] = L0
    CallFunction(o6400, "ProcesseStateChange")
  end
end }
o6405 = { [nil] = {}, Start = function()
  o6405["Value"] = False
  o5834.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6405.Value == L0) then
    o6405["Value"] = L0
    o5834.ReCalculate()
  end
end }
o6417 = { [nil] = {}, Start = function()
  o6417["Value"] = False
  o5833.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6417.Value == L0) then
    o6417["Value"] = L0
    o5833.ReCalculate()
  end
end }
S_o6448 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6448, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6448, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6448, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o6448, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/RadioStation_PArea", "/Scenario_Dynamic/Navigation/RadioStation_TArea", "/Scenario_Dynamic/Navigation/RadioStation_FArea", "E", "", "", "", 0.5, "Code6")
  else
    CallFunction(o6448, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o6453.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o6465.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6450.Value ~= True) then
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
o6450 = { [nil] = {}, GetCalculated = function()
  if not (o5827.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6450.SetStateValue(o6450.GetCalculated())
end, StartCalculate = function()
  o6450["Value"] = o6450.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6450.Value == L0) then
    o6450["Value"] = L0
    CallFunction(o6448, "ProcesseStateChange")
  end
end }
o6453 = { [nil] = {}, Start = function()
  o6453["Value"] = False
  o5834.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6453.Value == L0) then
    o6453["Value"] = L0
    o5834.ReCalculate()
  end
end }
o6465 = { [nil] = {}, Start = function()
  o6465["Value"] = False
  o5833.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6465.Value == L0) then
    o6465["Value"] = L0
    o5833.ReCalculate()
  end
end }
S_o6496 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6496, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6496, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6496, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o6496, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/RadioStation_PArea", "/Scenario_Dynamic/Navigation/RadioStation_TArea", "/Scenario_Dynamic/Navigation/RadioStation_FArea", "atl_tech", "E", "", "", 0.5, "Code6")
  else
    CallFunction(o6496, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o6501.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o6513.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6498.Value ~= True) then
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
o6498 = { [nil] = {}, GetCalculated = function()
  if not (o6794.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6498.SetStateValue(o6498.GetCalculated())
end, StartCalculate = function()
  o6498["Value"] = o6498.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6498.Value == L0) then
    DelayedFunction(1, o6498, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6498.Value == L0) then
    o6498["Value"] = L0
    CallFunction(o6496, "ProcesseStateChange")
  end
end }
o6501 = { [nil] = {}, Start = function()
  o6501["Value"] = False
  o5834.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6501.Value == L0) then
    o6501["Value"] = L0
    o5834.ReCalculate()
  end
end }
o6513 = { [nil] = {}, Start = function()
  o6513["Value"] = False
  o5833.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6513.Value == L0) then
    o6513["Value"] = L0
    o5833.ReCalculate()
  end
end }
S_o6544 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6544, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6544, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6544, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o6544, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/RadioStation_PArea", "/Scenario_Dynamic/Navigation/RadioStation_TArea", "/Scenario_Dynamic/Navigation/RadioStation_FArea", "atl_tech", "E", "", "", 0.5, "Code5")
  else
    CallFunction(o6544, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o6549.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o6561.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6546.Value ~= True) then
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
o6546 = { [nil] = {}, GetCalculated = function()
  if not (o6794.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6546.SetStateValue(o6546.GetCalculated())
end, StartCalculate = function()
  o6546["Value"] = o6546.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6546.Value == L0) then
    DelayedFunction(1, o6546, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6546.Value == L0) then
    o6546["Value"] = L0
    CallFunction(o6544, "ProcesseStateChange")
  end
end }
o6549 = { [nil] = {}, Start = function()
  o6549["Value"] = False
  o5834.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6549.Value == L0) then
    o6549["Value"] = L0
    o5834.ReCalculate()
  end
end }
o6561 = { [nil] = {}, Start = function()
  o6561["Value"] = False
  o5833.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6561.Value == L0) then
    o6561["Value"] = L0
    o5833.ReCalculate()
  end
end }
S_o6592 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6592, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6592, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6592, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o6592, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/RadioStation_PArea", "/Scenario_Dynamic/Navigation/RadioStation_TArea", "/Scenario_Dynamic/Navigation/RadioStation_FArea", "atl_tech", "E", "", "", 0.5, "Code5")
  else
    CallFunction(o6592, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o6597.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o6609.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6594.Value ~= True) then
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
o6594 = { [nil] = {}, GetCalculated = function()
  if not (o6794.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6594.SetStateValue(o6594.GetCalculated())
end, StartCalculate = function()
  o6594["Value"] = o6594.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6594.Value == L0) then
    DelayedFunction(1, o6594, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6594.Value == L0) then
    o6594["Value"] = L0
    CallFunction(o6592, "ProcesseStateChange")
  end
end }
o6597 = { [nil] = {}, Start = function()
  o6597["Value"] = False
  o5834.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6597.Value == L0) then
    o6597["Value"] = L0
    o5834.ReCalculate()
  end
end }
o6609 = { [nil] = {}, Start = function()
  o6609["Value"] = False
  o5833.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6609.Value == L0) then
    o6609["Value"] = L0
    o5833.ReCalculate()
  end
end }
S_o6640 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6640, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6640, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6640, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o6640, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/RadioStation_PArea", "/Scenario_Dynamic/Navigation/RadioStation_TArea", "/Scenario_Dynamic/Navigation/RadioStation_FArea", "atl_tech", "E", "", "", 0.5, "Code6")
  else
    CallFunction(o6640, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o6645.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o6657.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6642.Value ~= True) then
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
o6642 = { [nil] = {}, GetCalculated = function()
  if not (o6794.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6642.SetStateValue(o6642.GetCalculated())
end, StartCalculate = function()
  o6642["Value"] = o6642.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6642.Value == L0) then
    DelayedFunction(1, o6642, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6642.Value == L0) then
    o6642["Value"] = L0
    CallFunction(o6640, "ProcesseStateChange")
  end
end }
o6645 = { [nil] = {}, Start = function()
  o6645["Value"] = False
  o5834.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6645.Value == L0) then
    o6645["Value"] = L0
    o5834.ReCalculate()
  end
end }
o6657 = { [nil] = {}, Start = function()
  o6657["Value"] = False
  o5833.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6657.Value == L0) then
    o6657["Value"] = L0
    o5833.ReCalculate()
  end
end }
S_o6688 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6688, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6688, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6688, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o6688, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/RadioStation_PArea", "/Scenario_Dynamic/Navigation/RadioStation_TArea", "/Scenario_Dynamic/Navigation/RadioStation_FArea", "des_broadcasttower", "E", "", "", 0.5, "Code6")
  else
    CallFunction(o6688, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Born = function(L0, L1)
  o6692.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o6693.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o6705.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6690.Value ~= True) then
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
o6690 = { [nil] = {}, GetCalculated = function()
  if not (o6794.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6690.SetStateValue(o6690.GetCalculated())
end, StartCalculate = function()
  o6690["Value"] = o6690.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6690.Value == L0) then
    DelayedFunction(22, o6690, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6690.Value == L0) then
    o6690["Value"] = L0
    CallFunction(o6688, "ProcesseStateChange")
  end
end }
o6692 = { [nil] = {}, Start = function()
  o6692["Value"] = False
  o5830.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6692.Value == L0) then
    o6692["Value"] = L0
    o5830.ReCalculate()
  end
end }
o6693 = { [nil] = {}, Start = function()
  o6693["Value"] = False
  o5834.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6693.Value == L0) then
    o6693["Value"] = L0
    o5834.ReCalculate()
  end
end }
o6705 = { [nil] = {}, Start = function()
  o6705["Value"] = False
  o5833.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6705.Value == L0) then
    o6705["Value"] = L0
    o5833.ReCalculate()
  end
end }
S_o6736 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6736, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6736, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6736, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o6736, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/RadioStation_PArea", "/Scenario_Dynamic/Navigation/RadioStation_TArea", "/Scenario_Dynamic/Navigation/RadioStation_FArea", "E", "", "", "", 0.5, "Code6")
  else
    CallFunction(o6736, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o6741.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o6753.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6738.Value ~= True) then
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
o6738 = { [nil] = {}, GetCalculated = function()
  if not (o6794.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6738.SetStateValue(o6738.GetCalculated())
end, StartCalculate = function()
  o6738["Value"] = o6738.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6738.Value == L0) then
    DelayedFunction(22, o6738, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6738.Value == L0) then
    o6738["Value"] = L0
    CallFunction(o6736, "ProcesseStateChange")
  end
end }
o6741 = { [nil] = {}, Start = function()
  o6741["Value"] = False
  o5834.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6741.Value == L0) then
    o6741["Value"] = L0
    o5834.ReCalculate()
  end
end }
o6753 = { [nil] = {}, Start = function()
  o6753["Value"] = False
  o5833.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6753.Value == L0) then
    o6753["Value"] = L0
    o5833.ReCalculate()
  end
end }
S_o6784 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6784, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6784, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6784, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SED_SetTaskTextKey(1300, -1, -1)
  Game_SetWayPoint(GetGameNode(), o6845.Node)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o6784, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code7")
  else
    CallFunction(o6784, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TechBomber_Parh1", 1, 1 } }("Code8")
  else
    CallFunction(o6784, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 2 } }("Code9")
  else
    CallFunction(o6784, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o4791.Node, "DP_VER_1", "DP_VER_1", 2, 2, 30, "Code10")
  else
    CallFunction(o6784, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  SetEnemyMatrixElement(3, 4, N)
  CallFunction(o6784, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TechBomber_Parh2", 1, 1 } }("Code12")
  else
    CallFunction(o6784, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code13")
  else
    CallFunction(o6784, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
end, SetStateValue_InfiltrateBegin = function(L0, L1)
  o6794.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o6802.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6789.Value ~= True) then
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
o6789 = { [nil] = {}, GetCalculated = function()
  if not (o5827.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6789.SetStateValue(o6789.GetCalculated())
end, StartCalculate = function()
  o6789["Value"] = o6789.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6789.Value == L0) then
    DelayedFunction(14, o6789, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6789.Value == L0) then
    o6789["Value"] = L0
    CallFunction(o6784, "ProcesseStateChange")
  end
end }
o6794 = { [nil] = {}, Start = function()
  o6794["Value"] = False
  o5829.StartCalculate()
  o6498.StartCalculate()
  o6546.StartCalculate()
  o6594.StartCalculate()
  o6642.StartCalculate()
  o6690.StartCalculate()
  o6738.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6794.Value == L0) then
    o6794["Value"] = L0
    o5829.ReCalculate()
    o6498.ReCalculate()
    o6546.ReCalculate()
    o6594.ReCalculate()
    o6642.ReCalculate()
    o6690.ReCalculate()
    o6738.ReCalculate()
  end
end }
o6802 = { [nil] = {}, Start = function()
  o6802["Value"] = False
  o6831.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6802.Value == L0) then
    o6802["Value"] = L0
    o6831.ReCalculate()
  end
end }
o6831 = { [nil] = {}, GetCalculated = function()
  if not (o6802.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6831.SetStateValue(o6831.GetCalculated())
end, StartCalculate = function()
  o6831["Value"] = o6831.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6831.Value == L0) then
    o6831["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o6835 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o4825.Node)
  CallFunction(o6835, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6840 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o4860.Node)
  CallFunction(o6840, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6845 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 0, 9945)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o6784.Node)
  CallFunction(o6845, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6850 = { [nil] = {}, Start = function(L0)

end }
o6855 = FormationLib.CreateFormation("InverseTriangle", "", "", "", 40, 40)
o6856 = FormationLib.CreateFormation("Line", "", "", "", 20, 30)
S_o6857 = { [nil] = {}, Start = function(L0)

end }
S_o6858 = { [nil] = {}, Start = function(L0)

end }
S_o6859 = { [nil] = {}, Start = function(L0)

end }
S_o6860 = { [nil] = {}, Start = function(L0)

end }
S_o6861 = { [nil] = {}, Start = function(L0)

end }
S_o6862 = { [nil] = {}, Start = function(L0)

end }
S_o6863 = { [nil] = {}, Start = function(L0)

end }
S_o6864 = { [nil] = {}, Start = function(L0)

end }
S_o6865 = { [nil] = {}, Start = function(L0)

end }
S_o6866 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "agressive")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  FormationLib.PlaceFormationPath(o6851, o6855, "/IngameSequences/Navigation/PlayerPath_1")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/NewMoveTo_1", 0, "MMMN", 0)
  CallFunction(o6866, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.1, "Code6")
  else
    CallFunction(o6866, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/NewMoveTo_2", 40, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/NewLookAt_1", 0, "MMMN", 0)
  CallFunction(o6866, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 40, "Code10")
  else
    CallFunction(o6866, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  CallFunction(o5863, "Code7")
  CallFunction(o5965, "Code7")
  CallFunction(o5914, "Code7")
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  CallFunction(o6866, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o6851, o6855, "/IngameSequences/Navigation/PlayerPath_1", "pos_1", "pos_4", 0.75, 1, "Code18")
  else
    CallFunction(o6866, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_1", 0, "MMMN", 0)
  CallFunction(o6866, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code22")
  else
    CallFunction(o6866, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_2", 3, "MMMN", 0)
  CallFunction(o6866, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code24")
  else
    CallFunction(o6866, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  FormationLib.PlaceFormationPath(o6851, o6856, "/IngameSequences/Navigation/PlayerPath_2")
  CallFunction(o6866, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code26")
  else
    CallFunction(o6866, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_3", 4, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_3", 3, "MMMN", 0)
  CallFunction(o6866, "Code28")
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o6851, o6856, "/IngameSequences/Navigation/PlayerPath_2", "pos_1", "pos_4", 0.5, 1, "Code29")
  else
    CallFunction(o6866, "Code29")
  end
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  Director_EndCutscene(L0.Node)
  CallFunction(o5863, "Code9")
  CallFunction(o5965, "Code9")
  CallFunction(o5914, "Code9")
  Game_SetWayPoint(GetGameNode(), o6835.Node)
  SED_SetTaskTextKey(1299, -1, -1)
  CallFunction(o6866, "Code35")
end, Code35 = function(L0)
  L0["CodeIndex"] = 35
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6873 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6873, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 3, "MMMN", 0)
  CallFunction(o6873, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o6874.Value ~= True) then
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
o6874 = { [nil] = {}, GetCalculated = function()
  if not (o6884.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6874.SetStateValue(o6874.GetCalculated())
end, StartCalculate = function()
  o6874["Value"] = o6874.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6874.Value == L0) then
    o6874["Value"] = L0
    CallFunction(o6873, "ProcesseStateChange")
  end
end }
S_o6876 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code1")
  else
    CallFunction(o6876, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o5822.Node, o5822.Node, 173)
  SendRadioMessageTake(o5822.Node, o5822.Node, 174)
  SendRadioMessageTake(o5965.Node, o5822.Node, 175)
  SendRadioMessageTake(o5822.Node, o5822.Node, 241)
  SendRadioMessageTake(o5914.Node, o5822.Node, 176)
  SendRadioMessageTake(o5822.Node, o5822.Node, 177)
  SendRadioMessageTake(o5822.Node, o5822.Node, 178)
  CallFunction(o6876, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6879 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6879, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6879, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6879, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o6879, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6879, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6879, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o6884.SetStateValue(L1)
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
o6884 = { [nil] = {}, Start = function()
  o6884["Value"] = False
  o6874.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6884.Value == L0) then
    o6884["Value"] = L0
    o6874.ReCalculate()
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 282)
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
  o2682 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_1", S_o2682)
  o2716 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_2", S_o2716)
  o2750 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_3", S_o2750)
  o2784 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_4", S_o2784)
  o2818 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_g_1", S_o2818)
  o2852 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_g_2", S_o2852)
  o2886 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_1", S_o2886)
  o2920 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock1_4_1", S_o2920)
  o2954 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock1_2_1", S_o2954)
  o2988 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_2_4", S_o2988)
  o3022 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk3_1", S_o3022)
  o3056 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai1_1", S_o3056)
  o3090 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker_1", S_o3090)
  o3124 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schorn2_1", S_o3124)
  o3158 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_2_5", S_o3158)
  o3192 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus1_1", S_o3192)
  o3226 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus2_2", S_o3226)
  o3260 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus3_2", S_o3260)
  o3294 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_2", S_o3294)
  o3328 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_2_6", S_o3328)
  o3362 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock1_r_1", S_o3362)
  o3396 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_1", S_o3396)
  o3430 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk1_1", S_o3430)
  o3464 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk2_1", S_o3464)
  o3498 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_blue", S_o3498)
  o3532 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus1_2", S_o3532)
  o3566 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus2_3", S_o3566)
  o3600 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus3_3", S_o3600)
  o3634 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk3_2", S_o3634)
  o3668 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k2_1", S_o3668)
  o3702 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k2_2", S_o3702)
  o3736 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_g_3", S_o3736)
  o3770 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_g_4", S_o3770)
  o3804 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraft22_1", S_o3804)
  o3838 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraft1_1", S_o3838)
  o3872 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_1", S_o3872)
  o3906 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm2_1", S_o3906)
  o3940 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm2_2", S_o3940)
  o3974 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_3", S_o3974)
  o4008 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_4", S_o4008)
  o4042 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_5", S_o4042)
  o4076 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_2", S_o4076)
  o4110 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus1_3", S_o4110)
  o4144 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern2_1", S_o4144)
  o4178 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb4a_1_1", S_o4178)
  o4212 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schorn1_1", S_o4212)
  o4246 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock3_2", S_o4246)
  o4280 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus2_4", S_o4280)
  o4314 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_2_7", S_o4314)
  o4348 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_synaps_1", S_o4348)
  o4382 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_3", S_o4382)
  o4416 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus1_4", S_o4416)
  o4450 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_blue_HQ", S_o4450)
  o4484 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern2_2", S_o4484)
  o4518 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern2_3", S_o4518)
  o4552 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus2_5", S_o4552)
  o4586 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern_1", S_o4586)
  o4620 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk3_3", S_o4620)
  o4654 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_5_3", S_o4654)
  o4688 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_broadcasttower", S_o4688)
  o4691.Start()
  o4723 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_geb_hab_big_1", S_o4723)
  o4757 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_parlament_1", S_o4757)
  o4791 = BindEasy(Node_Find("/Scenario_Static/Object"), "RadioStation_DockPoint", S_o4791)
  o4825 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_parabolic_1", S_o4825)
  o4828.Start()
  o4860 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_parabolic_2", S_o4860)
  o4863.Start()
  o4895 = BindEasy(Node_Find("/Scenario_Static/Object"), "f1_schalt", S_o4895)
  o4929 = BindEasy(Node_Find("/Scenario_Static/Object"), "f1_turret_1/Turm1", S_o4929)
  o4967 = BindEasy(Node_Find("/Scenario_Static/Object"), "f1_turret_2/Turm1", S_o4967)
  o5005 = BindEasy(Node_Find("/Scenario_Static/Object"), "f2_schalt", S_o5005)
  o5039 = BindEasy(Node_Find("/Scenario_Static/Object"), "f2_turret_1/Turm1", S_o5039)
  o5077 = BindEasy(Node_Find("/Scenario_Static/Object"), "f2_turret_2/Turm1", S_o5077)
  o5115 = BindEasy(Node_Find("/Scenario_Static/Object"), "f3_schalt", S_o5115)
  o5149 = BindEasy(Node_Find("/Scenario_Static/Object"), "f3_turret_1/Turm1", S_o5149)
  o5187 = BindEasy(Node_Find("/Scenario_Static/Object"), "f3_turret_2/Turm1", S_o5187)
  o5225 = BindEasy(Node_Find("/Scenario_Static/Object"), "f4_schalt", S_o5225)
  o5259 = BindEasy(Node_Find("/Scenario_Static/Object"), "f4_turret_1/Turm1", S_o5259)
  o5297 = BindEasy(Node_Find("/Scenario_Static/Object"), "f4_turret_2/Turm1", S_o5297)
  o5335 = BindEasy(Node_Find("/Scenario_Static/Object"), "f5_schalt", S_o5335)
  o5369 = BindEasy(Node_Find("/Scenario_Static/Object"), "f5_turret_1/Turm1", S_o5369)
  o5407 = BindEasy(Node_Find("/Scenario_Static/Object"), "f5_turret_2/Turm1", S_o5407)
  o5445 = BindEasy(Node_Find("/Scenario_Static/Object"), "radio_turret_1/Turm1", S_o5445)
  o5482 = BindEasy(Node_Find("/Scenario_Static/Object"), "radio_turret_2/Turm1", S_o5482)
  o5519 = BindEasy(Node_Find("/Scenario_Static/Object"), "radio_turret_3/Turm1", S_o5519)
  o5556 = BindEasy(Node_Find("/Scenario_Static/Object"), "NavyHQ_turret_1/Turm1", S_o5556)
  o5594 = BindEasy(Node_Find("/Scenario_Static/Object"), "NavyHQ_turret_2/Turm1", S_o5594)
  o5632 = BindEasy(Node_Find("/Scenario_Static/Object"), "NavyHQ_turret_3/Turm1", S_o5632)
  o5670 = BindEasy(Node_Find("/Scenario_Static/Object"), "NeoTec_turret_1/Turm1", S_o5670)
  o5708 = BindEasy(Node_Find("/Scenario_Static/Object"), "NeoTec_turret_2/Turm1", S_o5708)
  o5746 = BindEasy(Node_Find("/Scenario_Static/Object"), "NeoTec_turret_3/Turm1", S_o5746)
  o5784 = BindEasy(Node_Find("/Scenario_Static/Object"), "NeoTec_turret_4/Turm1", S_o5784)
  o5822 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o5822)
  o5863 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_bonham_c4_1", S_o5863)
  o5914 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_degrange_c4_1", S_o5914)
  o5965 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_harper_c4_1", S_o5965)
  o6016 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Cox_Units"), "atl_triops_1", S_o6016)
  o6064 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Cox_Units"), "cox_scout1_emp_1", S_o6064)
  o6069.Start()
  o6081.Start()
  o6112 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Cox_Units"), "cox_scout1_emp_2", S_o6112)
  o6117.Start()
  o6129.Start()
  o6160 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Cox_Units"), "cox_scout2_emp_1", S_o6160)
  o6165.Start()
  o6177.Start()
  o6208 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Cox_Units"), "cox_scout2_emp_2", S_o6208)
  o6213.Start()
  o6225.Start()
  o6256 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Cox_Units"), "cox_bomber_emp_1", S_o6256)
  o6261.Start()
  o6273.Start()
  o6304 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Cox_Units"), "cox_scout1_emp_3", S_o6304)
  o6309.Start()
  o6321.Start()
  o6352 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Cox_Units"), "cox_scout1_emp_4", S_o6352)
  o6357.Start()
  o6369.Start()
  o6400 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Cox_Units"), "cox_scout1_emp_5", S_o6400)
  o6405.Start()
  o6417.Start()
  o6448 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Cox_Units"), "cox_scout1_emp_6", S_o6448)
  o6453.Start()
  o6465.Start()
  o6496 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Cox_Units"), "cox_scout2_emp_3", S_o6496)
  o6501.Start()
  o6513.Start()
  o6544 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Cox_Units"), "cox_scout1_emp_7", S_o6544)
  o6549.Start()
  o6561.Start()
  o6592 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Cox_Units"), "cox_scout1_emp_8", S_o6592)
  o6597.Start()
  o6609.Start()
  o6640 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Cox_Units"), "cox_scout1_emp_9", S_o6640)
  o6645.Start()
  o6657.Start()
  o6688 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Cox_Units"), "cox_bomber_1", S_o6688)
  o6692.Start()
  o6693.Start()
  o6705.Start()
  o6736 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Cox_Units"), "cox_scout1_1", S_o6736)
  o6741.Start()
  o6753.Start()
  o6784 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Sool_Units"), "atl_techbomber_docking_1", S_o6784)
  o6794.Start()
  o6802.Start()
  o6835 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_1", S_o6835)
  o6840 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_2", S_o6840)
  o6845 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_follow_1", S_o6845)
  o6850 = BindEasy(Node_Find("/"), "Camera", S_o6850)
  o6857 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_1", S_o6857)
  o6858 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_2", S_o6858)
  o6859 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_1", S_o6859)
  o6860 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_2", S_o6860)
  o6861 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_3", S_o6861)
  o6862 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_3", S_o6862)
  o6863 = BindEasy(Node_Find("/IngameSequences/Navigation"), "NewMoveTo_1", S_o6863)
  o6864 = BindEasy(Node_Find("/IngameSequences/Navigation"), "NewMoveTo_2", S_o6864)
  o6865 = BindEasy(Node_Find("/IngameSequences/Navigation"), "NewLookAt_1", S_o6865)
  o6879 = BindEasy(Node_Find("/IngameSequences/Trigger"), "TriggerPresenceBox_1", S_o6879)
  o6884.Start()
  o6866 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_V", S_o6866)
  o6873 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_AddOn_V", S_o6873)
  o6876 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_A", S_o6876)
  o6851 = { {}, o5822 }()
  o6852 = { {}, o5863 }()
  o6853 = { {}, o5914 }()
  o6854 = { {}, o5965 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end