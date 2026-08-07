-- dekompiliert aus 3n2.sco
-- Quelle laut Bytecode: =(none)

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
  Terrain_LoadTerrain(node1, "map/3N2/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/3N2/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/3N2/Lmsh/", "map/3N2/Ltex/")
  Game_SetTerrainDepth(node0, 2024)
  Game_SetDecompressionHeight(node0, 275)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.109804, 0.101961, 0.082353)
  Game_SetParallelLightT(node0, 0.219608, 0.203922, 0.164706)
  Game_SetParallelLightB(node0, 0.109804, 0.101961, 0.082353)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_3n2.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_3N2.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient1.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit4.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_mystery.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_unhancy3.sam", 3)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit3.sam", 4)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit2.sam", 5)
  Game_SetNPCHitFactor(node0, 1)
  Game_SetEnvironmentCubeMap(node0, "map/3H1/CubeMap/envcubemap.dds")
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
  node5 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node4, node5)
  Position_SetPosition(node5, MAT_Vector3(2428.321568, 3454.138634, 209.463462))
  Position_SetRadius(node5, 400)
  Game_LoadProgress_Advance(node0)
  node6 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node2, node6)
  Node_EnterSimulation(node6)
  Game_LoadProgress_Advance(node0)
  node7 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node2, node7)
  Node_EnterSimulation(node7)
  Game_LoadProgress_Advance(node0)
  node8 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node2, node8)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "gen_quay_1")
  Node_AddSon(node8, node9)
  Body_SetCS(node9, MAT_Vector3(2492, 3453, 133), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node9, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "gen_quay_2")
  Node_AddSon(node8, node10)
  Body_SetCS(node10, MAT_Vector3(2492, 3534, 133), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node10, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "atl_dock1_4_1")
  Node_AddSon(node8, node11)
  Body_SetCS(node11, MAT_Vector3(2752.766243, 2972.441197, 113.57729), MAT_Vector3(39.981778, 0, 0))
  Node_ParseIniFile(node11, "osd/atl/atl_dock1_4.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "gen_shelter_1")
  Node_AddSon(node8, node12)
  Body_SetCS(node12, MAT_Vector3(3151.166588, 3664.80945, 152.095197), MAT_Vector3(89.978061, 0, 0))
  Node_ParseIniFile(node12, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "gen_shelter_2")
  Node_AddSon(node8, node13)
  Body_SetCS(node13, MAT_Vector3(3189.908492, 3218.923466, 142.828729), MAT_Vector3(0.240511, 0, 0))
  Node_ParseIniFile(node13, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "gen_shelter_3")
  Node_AddSon(node8, node14)
  Body_SetCS(node14, MAT_Vector3(3422.644888, 3675.273848, 146.380505), MAT_Vector3(-43.920633, 0, 0))
  Node_ParseIniFile(node14, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "gen_shelter_docking_1")
  Node_AddSon(node8, node15)
  Body_SetCS(node15, MAT_Vector3(3532.759994, 3055.518631, 146.634656), MAT_Vector3(179.964133, 0, 0))
  Node_ParseIniFile(node15, "osd/gen/gen_shelter_docking.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "atl_wblock3a_01_1")
  Node_AddSon(node8, node16)
  Body_SetCS(node16, MAT_Vector3(3043.720226, 3581.731937, 129.372546), MAT_Vector3(89.632038, 0, 0))
  Node_ParseIniFile(node16, "osd/atl/atl_wblock3a_01.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "atl_wblock3a_02_1")
  Node_AddSon(node8, node17)
  Body_SetCS(node17, MAT_Vector3(2993.849229, 3231.308398, 103.079948), MAT_Vector3(90.177594, 0, 0))
  Node_ParseIniFile(node17, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "atl_wblock3b_01_1")
  Node_AddSon(node8, node18)
  Body_SetCS(node18, MAT_Vector3(3104.161207, 3312.090684, 125.268536), MAT_Vector3(-0.004041, 0, 0))
  Node_ParseIniFile(node18, "osd/atl/atl_wblock3b_01.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "atl_wblock3b_01_2")
  Node_AddSon(node8, node19)
  Body_SetCS(node19, MAT_Vector3(3033.094169, 2855.864486, 94.908517), MAT_Vector3(151.253561, 0, 0))
  Node_ParseIniFile(node19, "osd/atl/atl_wblock3b_01.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "gen_vehiclestation_1")
  Node_AddSon(node8, node20)
  Body_SetCS(node20, MAT_Vector3(3069.840698, 3234.716261, 139.366565), MAT_Vector3(-0.081926, 0, 0))
  Node_ParseIniFile(node20, "osd/gen/gen_vehiclestation.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "gen_vehiclestation_2")
  Node_AddSon(node8, node21)
  Body_SetCS(node21, MAT_Vector3(3513.318004, 3623.586347, 139.3666), MAT_Vector3(-41.337269, 0, 0))
  Node_ParseIniFile(node21, "osd/gen/gen_vehiclestation.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "atl_wblock3a_04_1")
  Node_AddSon(node8, node22)
  Body_SetCS(node22, MAT_Vector3(3461.12426, 3212.178473, 64.732005), MAT_Vector3(-89.512798, 0, 0))
  Node_ParseIniFile(node22, "osd/atl/atl_wblock3a_04.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "atl_wblock3a_05_1")
  Node_AddSon(node8, node23)
  Body_SetCS(node23, MAT_Vector3(3564.637013, 3727.559793, 120.938777), MAT_Vector3(-42.45795, 0, 0))
  Node_ParseIniFile(node23, "osd/atl/atl_wblock3a_05.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "atl_wblock3b_02_1")
  Node_AddSon(node8, node24)
  Body_SetCS(node24, MAT_Vector3(3548.451092, 3679.386246, 88.443718), MAT_Vector3(-41.846354, 0, 0))
  Node_ParseIniFile(node24, "osd/atl/atl_wblock3b_02.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "atl_wblock3b_02_2")
  Node_AddSon(node8, node25)
  Body_SetCS(node25, MAT_Vector3(2919.73981, 3247.207885, 54.875055), MAT_Vector3(89.909778, 0, 0))
  Node_ParseIniFile(node25, "osd/atl/atl_wblock3b_02.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "atl_wblock3b_03_1")
  Node_AddSon(node8, node26)
  Body_SetCS(node26, MAT_Vector3(3526.94506, 3346.08141, 38.659013), MAT_Vector3(179.807448, 0, 0))
  Node_ParseIniFile(node26, "osd/atl/atl_wblock3b_03.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "atl_wblock3a_02_2")
  Node_AddSon(node8, node27)
  Body_SetCS(node27, MAT_Vector3(2759.777799, 3223.660288, 96.870476), MAT_Vector3(90.17759, 0, 0))
  Node_ParseIniFile(node27, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "atl_dock3_1")
  Node_AddSon(node8, node28)
  Body_SetCS(node28, MAT_Vector3(3251.750203, 2798.829206, 76.957799), MAT_Vector3(90.186246, 0.221019, -0.164463))
  Node_ParseIniFile(node28, "osd/atl/atl_dock3.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "atl_dock1_4_2")
  Node_AddSon(node8, node29)
  Body_SetCS(node29, MAT_Vector3(3632.446502, 3510.475484, 121.252504), MAT_Vector3(-129.015958, 0, 0))
  Node_ParseIniFile(node29, "osd/atl/atl_dock1_4.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "atl_dock1_4_3")
  Node_AddSon(node8, node30)
  Body_SetCS(node30, MAT_Vector3(3570.911064, 3215.308073, 123.927659), MAT_Vector3(-179.77438, 0, 0))
  Node_ParseIniFile(node30, "osd/atl/atl_dock1_4.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "atl_wblock3a_03_1")
  Node_AddSon(node8, node31)
  Body_SetCS(node31, MAT_Vector3(2935.048267, 3469.579367, 86.774932), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node31, "osd/atl/atl_wblock3a_03.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "gen_vehiclestation_3")
  Node_AddSon(node8, node32)
  Body_SetCS(node32, MAT_Vector3(1254.446562, 3639.57818, 111.29575), MAT_Vector3(-89.951242, 0, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_vehiclestation.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_dolphinhab_1")
  Node_AddSon(node8, node33)
  Body_SetCS(node33, MAT_Vector3(1354.713185, 3701.936749, 101.968418), MAT_Vector3(-137.399292, 0, 0))
  Node_ParseIniFile(node33, "osd/gen/gen_dolphinhab.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "gen_rohr_small01_1")
  Node_AddSon(node8, node34)
  Body_SetCS(node34, MAT_Vector3(1279.429611, 3668.813837, 114.026338), MAT_Vector3(132.617283, 0, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "gen_gangway01_1")
  Node_AddSon(node8, node35)
  Body_SetCS(node35, MAT_Vector3(1298.271131, 3665.696582, 134.805957), MAT_Vector3(-46.42551, 0, 0))
  Node_ParseIniFile(node35, "osd/gen/gen_gangway01.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_metalblock1_1")
  Node_AddSon(node8, node36)
  Body_SetCS(node36, MAT_Vector3(1371.737716, 3707.26359, 77.712202), MAT_Vector3(-47.249873, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "gen_pplant1_1")
  Node_AddSon(node8, node37)
  Body_SetCS(node37, MAT_Vector3(2962.151445, 3615.176694, 140.757297), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node37, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "gen_pplant2_1")
  Node_AddSon(node8, node38)
  Body_SetCS(node38, MAT_Vector3(3115.655451, 3581.471565, 138.577947), MAT_Vector3(-90.459698, 0, 0))
  Node_ParseIniFile(node38, "osd/gen/gen_pplant2.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_turret", "gen_turret_medium_1")
  Node_AddSon(node8, node39)
  Body_SetCS(node39, MAT_Vector3(1202.971531, 3690.624806, 109.546388), MAT_Vector3(44.001661, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_turret", "gen_turret_medium_2")
  Node_AddSon(node8, node40)
  Body_SetCS(node40, MAT_Vector3(1205.190348, 3583.597551, 115.31977), MAT_Vector3(136.085462, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_turret", "gen_torptower_1")
  Node_AddSon(node8, node41)
  Body_SetCS(node41, MAT_Vector3(1271.830356, 3639.783574, 146.792648), MAT_Vector3(90.003547, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_tank_big_1")
  Node_AddSon(node8, node42)
  Body_SetCS(node42, MAT_Vector3(1236.928832, 3564.506006, 98.984013), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_turret", "gate_turret_hard_1")
  Node_AddSon(node8, node43)
  Body_SetCS(node43, MAT_Vector3(2428.417, 3534.64, 149.4478), MAT_Vector3(89.86297, 0, 0))
  Node_ParseIniFile(node43, "osd/gen/gen_turret_hard.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_turret", "gate_turret_hard_2")
  Node_AddSon(node8, node44)
  Body_SetCS(node44, MAT_Vector3(2558.017, 3534.128, 149.4478), MAT_Vector3(-89.80927, 0, 0))
  Node_ParseIniFile(node44, "osd/gen/gen_turret_hard.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_turret", "gate_torp_m_1")
  Node_AddSon(node8, node45)
  Body_SetCS(node45, MAT_Vector3(2454.535, 3533.595, 156.6062), MAT_Vector3(90.03732, 0, 0))
  Node_ParseIniFile(node45, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_turret", "gate_torp_m_2")
  Node_AddSon(node8, node46)
  Body_SetCS(node46, MAT_Vector3(2535.254, 3533.586, 158.2355), MAT_Vector3(-90.1517, 0, 0))
  Node_ParseIniFile(node46, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_turret", "gate_turret_medium_1")
  Node_AddSon(node8, node47)
  Body_SetCS(node47, MAT_Vector3(2491.523834, 3534.269756, 154.079), MAT_Vector3(179.8826, 0, 0))
  Node_ParseIniFile(node47, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_turret", "gate_turret_hard_01")
  Node_AddSon(node8, node48)
  Body_SetCS(node48, MAT_Vector3(2428.417, 3454.64, 149.4478), MAT_Vector3(89.86297, 0, 0))
  Node_ParseIniFile(node48, "osd/gen/gen_turret_hard.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_turret", "gate_turret_hard_02")
  Node_AddSon(node8, node49)
  Body_SetCS(node49, MAT_Vector3(2558.017, 3454.128, 149.4478), MAT_Vector3(-89.80927, 0, 0))
  Node_ParseIniFile(node49, "osd/gen/gen_turret_hard.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_turret", "gate_torp_m_01")
  Node_AddSon(node8, node50)
  Body_SetCS(node50, MAT_Vector3(2454.535, 3453.595, 156.6062), MAT_Vector3(90.03732, 0, 0))
  Node_ParseIniFile(node50, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_turret", "gate_torp_m_02")
  Node_AddSon(node8, node51)
  Body_SetCS(node51, MAT_Vector3(2535.254, 3453.586, 158.2355), MAT_Vector3(-90.1517, 0, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_turret", "gate_turret_medium_01")
  Node_AddSon(node8, node52)
  Body_SetCS(node52, MAT_Vector3(2491.514351, 3453.551095, 154.079), MAT_Vector3(0.105229, 0, 0))
  Node_ParseIniFile(node52, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_trafo_des_1")
  Node_AddSon(node8, node53)
  Body_SetCS(node53, MAT_Vector3(2999.971677, 3631.367601, 138.080595), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node53, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "gen_trafo_des_2")
  Node_AddSon(node8, node54)
  Body_SetCS(node54, MAT_Vector3(3000.452612, 3607.681596, 139.6693), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node54, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "gen_trafo_des_3")
  Node_AddSon(node8, node55)
  Body_SetCS(node55, MAT_Vector3(3016.890043, 3621.456822, 139.6693), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node55, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "C1_trafo_des")
  Node_AddSon(node8, node56)
  Body_SetCS(node56, MAT_Vector3(3142.464082, 3537.771908, 138.10905), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node56, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_turret", "C1_turret_medium_01")
  Node_AddSon(node8, node57)
  Body_SetCS(node57, MAT_Vector3(3084.260609, 3500.951969, 139.64069), MAT_Vector3(179.581059, 0, 0))
  Node_ParseIniFile(node57, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_turret", "C1_turret_medium_02")
  Node_AddSon(node8, node58)
  Body_SetCS(node58, MAT_Vector3(3142.5447, 3501.741745, 139.6407), MAT_Vector3(179.5811, 0, 0))
  Node_ParseIniFile(node58, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_turret", "C1_turret_medium_03")
  Node_AddSon(node8, node59)
  Body_SetCS(node59, MAT_Vector3(3196.443979, 3505.602826, 139.6407), MAT_Vector3(179.5811, 0, 0))
  Node_ParseIniFile(node59, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_turret", "C1_torp_m_01")
  Node_AddSon(node8, node60)
  Body_SetCS(node60, MAT_Vector3(3112.67897, 3519.955021, 142.842611), MAT_Vector3(179.921858, 0, 0))
  Node_ParseIniFile(node60, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_turret", "C1_torp_m_02")
  Node_AddSon(node8, node61)
  Body_SetCS(node61, MAT_Vector3(3170.686267, 3518.981395, 142.8426), MAT_Vector3(179.9219, 0, 0))
  Node_ParseIniFile(node61, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "C2_trafo_des")
  Node_AddSon(node8, node62)
  Body_SetCS(node62, MAT_Vector3(3104.703006, 3341.142158, 136.084906), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node62, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_turret", "C2_turret_medium_01")
  Node_AddSon(node8, node63)
  Body_SetCS(node63, MAT_Vector3(2986.55471, 3353.997478, 139.6407), MAT_Vector3(0.584235, 0, 0))
  Node_ParseIniFile(node63, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_turret", "C2_turret_medium_02")
  Node_AddSon(node8, node64)
  Body_SetCS(node64, MAT_Vector3(3078.705632, 3351.561149, 139.6407), MAT_Vector3(0.584235, 0, 0))
  Node_ParseIniFile(node64, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_turret", "C2_turret_medium_03")
  Node_AddSon(node8, node65)
  Body_SetCS(node65, MAT_Vector3(3213.467608, 3347.734415, 139.6407), MAT_Vector3(0.584235, 0, 0))
  Node_ParseIniFile(node65, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_turret", "C2_turret_medium_04")
  Node_AddSon(node8, node66)
  Body_SetCS(node66, MAT_Vector3(3131.017, 3349.823, 139.6407), MAT_Vector3(0.584235, 0, 0))
  Node_ParseIniFile(node66, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "C3_trafo_des")
  Node_AddSon(node8, node67)
  Body_SetCS(node67, MAT_Vector3(3024.258536, 3168.202784, 138.615038), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node67, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_turret", "C3_turret_medium_01")
  Node_AddSon(node8, node68)
  Body_SetCS(node68, MAT_Vector3(3031.361006, 3077.843811, 139.6407), MAT_Vector3(148.223055, 0, 0))
  Node_ParseIniFile(node68, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_turret", "C3_turret_medium_02")
  Node_AddSon(node8, node69)
  Body_SetCS(node69, MAT_Vector3(3011.962354, 3091.010696, 139.6407), MAT_Vector3(144.108178, 0, 0))
  Node_ParseIniFile(node69, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_turret", "C3_turret_medium_03")
  Node_AddSon(node8, node70)
  Body_SetCS(node70, MAT_Vector3(2994.642353, 3107.641772, 139.6407), MAT_Vector3(142.546105, 0, 0))
  Node_ParseIniFile(node70, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "C4_trafo_des")
  Node_AddSon(node8, node71)
  Body_SetCS(node71, MAT_Vector3(3188.653197, 3148.169267, 137.349931), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node71, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_turret", "C4_turret_medium_01")
  Node_AddSon(node8, node72)
  Body_SetCS(node72, MAT_Vector3(3163.44152, 3059.952638, 139.6407), MAT_Vector3(-160.801578, 0, 0))
  Node_ParseIniFile(node72, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_turret", "C4_turret_medium_02")
  Node_AddSon(node8, node73)
  Body_SetCS(node73, MAT_Vector3(3200.685265, 3076.334814, 139.6407), MAT_Vector3(-146.207013, 0, 0))
  Node_ParseIniFile(node73, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_turret", "C4_turret_medium_03")
  Node_AddSon(node8, node74)
  Body_SetCS(node74, MAT_Vector3(3229.488484, 3102.152435, 139.6407), MAT_Vector3(-136.061939, 0, 0))
  Node_ParseIniFile(node74, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_turret", "C4_turret_medium_04")
  Node_AddSon(node8, node75)
  Body_SetCS(node75, MAT_Vector3(3242.898668, 3133.930298, 139.6407), MAT_Vector3(-134.502976, 0, 0))
  Node_ParseIniFile(node75, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "C5_trafo_des")
  Node_AddSon(node8, node76)
  Body_SetCS(node76, MAT_Vector3(2810.118463, 2999.446098, 126.608533), MAT_Vector3(38.223768, 0, 0))
  Node_ParseIniFile(node76, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_turret", "C5_turret_medium_01")
  Node_AddSon(node8, node77)
  Body_SetCS(node77, MAT_Vector3(2837.689461, 3022.49998, 130.547282), MAT_Vector3(-54.90094, 0, 0))
  Node_ParseIniFile(node77, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_turret", "C5_torp_m_01")
  Node_AddSon(node8, node78)
  Body_SetCS(node78, MAT_Vector3(2783.463533, 3100.267849, 130.557022), MAT_Vector3(-57.308004, 0, 0))
  Node_ParseIniFile(node78, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_turret", "C5_torp_m_02")
  Node_AddSon(node8, node79)
  Body_SetCS(node79, MAT_Vector3(2866.844211, 2968.113246, 130.367554), MAT_Vector3(-52.214818, 0, 0))
  Node_ParseIniFile(node79, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "C6_trafo_des")
  Node_AddSon(node8, node80)
  Body_SetCS(node80, MAT_Vector3(3580.705528, 3472.712794, 136.451703), MAT_Vector3(49.835384, 0, 0))
  Node_ParseIniFile(node80, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_turret", "C6_turret_medium_01")
  Node_AddSon(node8, node81)
  Body_SetCS(node81, MAT_Vector3(3514.842588, 3475.250681, 140), MAT_Vector3(136.506075, 0, 0))
  Node_ParseIniFile(node81, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_turret", "C6_turret_medium_02")
  Node_AddSon(node8, node82)
  Body_SetCS(node82, MAT_Vector3(3409.105537, 3553.700062, 140), MAT_Vector3(136.5061, 0, 0))
  Node_ParseIniFile(node82, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_turret", "C6_turret_medium_03")
  Node_AddSon(node8, node83)
  Body_SetCS(node83, MAT_Vector3(3355.036451, 3616.17555, 140), MAT_Vector3(136.5061, 0, 0))
  Node_ParseIniFile(node83, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_turret", "C6_turret_medium_04")
  Node_AddSon(node8, node84)
  Body_SetCS(node84, MAT_Vector3(3622.103689, 3411.265648, 140), MAT_Vector3(138.502972, 0, 0))
  Node_ParseIniFile(node84, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_turret", "C6_torp_m_01")
  Node_AddSon(node8, node85)
  Body_SetCS(node85, MAT_Vector3(3570.60523, 3438.104997, 144.317627), MAT_Vector3(140.804653, 0, 0))
  Node_ParseIniFile(node85, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_turret", "C6_torp_m_02")
  Node_AddSon(node8, node86)
  Body_SetCS(node86, MAT_Vector3(3381.487512, 3588.624832, 141.450803), MAT_Vector3(140.8047, 0, 0))
  Node_ParseIniFile(node86, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "C7_trafo_des")
  Node_AddSon(node8, node87)
  Body_SetCS(node87, MAT_Vector3(3507.726245, 3231.195776, 135.697438), MAT_Vector3(90.08767, 0, 0))
  Node_ParseIniFile(node87, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_turret", "C7_turret_medium_01")
  Node_AddSon(node8, node88)
  Body_SetCS(node88, MAT_Vector3(3397.352924, 3003.715738, 140.410486), MAT_Vector3(89.118327, 0, 0))
  Node_ParseIniFile(node88, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node88, 0)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_turret", "C7_turret_medium_02")
  Node_AddSon(node8, node89)
  Body_SetCS(node89, MAT_Vector3(3462.704285, 3105.100343, 140.4105), MAT_Vector3(89.11833, 0, 0))
  Node_ParseIniFile(node89, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node89, 0)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_turret", "C7_turret_medium_03")
  Node_AddSon(node8, node90)
  Body_SetCS(node90, MAT_Vector3(3461.307047, 3007.978704, 140.4105), MAT_Vector3(89.11833, 0, 0))
  Node_ParseIniFile(node90, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node90, 0)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_turret", "C7_torp_m_01")
  Node_AddSon(node8, node91)
  Body_SetCS(node91, MAT_Vector3(3415.338733, 3275.81087, 141.996158), MAT_Vector3(90.811525, 0, 0))
  Node_ParseIniFile(node91, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node91, 0)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_turret", "C7_torp_m_02")
  Node_AddSon(node8, node92)
  Body_SetCS(node92, MAT_Vector3(3414.631157, 3148.324098, 141.9962), MAT_Vector3(90.81153, 0, 0))
  Node_ParseIniFile(node92, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node92, 0)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_turret", "C7_torp_m_03")
  Node_AddSon(node8, node93)
  Body_SetCS(node93, MAT_Vector3(3462.715925, 3059.678022, 141.9962), MAT_Vector3(90.81153, 0, 0))
  Node_ParseIniFile(node93, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node93, 0)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_fx_rays", "fx_rays_3N2_1")
  Node_AddSon(node8, node94)
  Node_ParseIniFile(node94, "osd/fx_rays/fx_rays_3N2.osd")
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_fx_sky", "fx_sky_3N2_1")
  Node_AddSon(node8, node95)
  Node_ParseIniFile(node95, "osd/fx_sky/fx_sky_3N2.osd")
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_generic", "gen_elfnote_des_1")
  Node_AddSon(node8, node96)
  Body_SetCS(node96, MAT_Vector3(96.968068, 3608.342552, 146.135177), MAT_Vector3(9.742363, 0, 0))
  Node_ParseIniFile(node96, "osd/gen/gen_elfnote_des.osd")
  Body_SetFriendOrFoeID(node96, 5)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_fx_plankton", "fx_plankton_amber_n_1")
  Node_AddSon(node8, node97)
  Node_ParseIniFile(node97, "osd/fx_plankton/fx_plankton_amber_n.osd")
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_generic", "gen_elfnote_1")
  Node_AddSon(node8, node98)
  Body_SetCS(node98, MAT_Vector3(293.178005, 2111.021548, 119.147733), MAT_Vector3(-94.159238, 0, 0))
  Node_ParseIniFile(node98, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node98, 5)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_generic", "gen_rohr_big02_1")
  Node_AddSon(node8, node99)
  Body_SetCS(node99, MAT_Vector3(114.738352, 3528.200556, 112.946672), MAT_Vector3(-166.177283, -19.032997, 4.641192))
  Node_ParseIniFile(node99, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node99, 5)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_generic", "gen_rohr_big02_2")
  Node_AddSon(node8, node100)
  Body_SetCS(node100, MAT_Vector3(178.549268, 3626.842587, 112.9467), MAT_Vector3(-77.326057, -19.033, 4.641192))
  Node_ParseIniFile(node100, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node100, 5)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_generic", "gen_rohr_big02_3")
  Node_AddSon(node8, node101)
  Body_SetCS(node101, MAT_Vector3(76.889583, 3688.855427, 112.9467), MAT_Vector3(14.754719, -19.033, 4.641192))
  Node_ParseIniFile(node101, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node101, 5)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_generic", "gen_rohr_big02_4")
  Node_AddSon(node8, node102)
  Body_SetCS(node102, MAT_Vector3(297.195474, 2190.976271, 94.879905), MAT_Vector3(-2.062155, -19.033, 4.641192))
  Node_ParseIniFile(node102, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node102, 5)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_generic", "gen_rohr_big02_5")
  Node_AddSon(node8, node103)
  Body_SetCS(node103, MAT_Vector3(287.492274, 2023.56675, 87.699507), MAT_Vector3(175.058908, -13.490824, 5.298452))
  Node_ParseIniFile(node103, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node103, 5)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_fx_flare", "fx_flare_3N2_1")
  Node_AddSon(node8, node104)
  Node_ParseIniFile(node104, "osd/fx_flare/fx_flare_3N2.osd")
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_generic", "ter_megalith_l_01_1")
  Node_AddSon(node8, node105)
  Body_SetCS(node105, MAT_Vector3(2455.71, 3642.182, 256.5342), MAT_Vector3(89.86476, 90, -91.2333))
  Node_ParseIniFile(node105, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node105, 0)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_generic", "ter_megalith_l_02_1")
  Node_AddSon(node8, node106)
  Body_SetCS(node106, MAT_Vector3(2599.126, 3632.35, 260.1429), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node106, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node106, 0)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_generic", "ter_megalith_l_03_1")
  Node_AddSon(node8, node107)
  Body_SetCS(node107, MAT_Vector3(2529.573, 3676.611, 253.7263), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node107, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node107, 0)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_generic", "ter_megalith_l_01_2")
  Node_AddSon(node8, node108)
  Body_SetCS(node108, MAT_Vector3(1182.690585, 2887.541256, 123.486481), MAT_Vector3(-16.837916, 6.425662, -4.272383))
  Node_ParseIniFile(node108, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node108, 0)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_generic", "ter_megalith_l_01_3")
  Node_AddSon(node8, node109)
  Body_SetCS(node109, MAT_Vector3(1897.863133, 3621.359501, 71.115559), MAT_Vector3(-14.531503, 4.981384, -6.56334))
  Node_ParseIniFile(node109, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node109, 0)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_generic", "ter_megalith_l_02_2")
  Node_AddSon(node8, node110)
  Body_SetCS(node110, MAT_Vector3(522.398811, 1513.490521, 124.544581), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node110, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node110, 0)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_generic", "ter_megalith_l_03_2")
  Node_AddSon(node8, node111)
  Body_SetCS(node111, MAT_Vector3(818.060416, 1957.04563, 112.376441), MAT_Vector3(-7.688043, 0.277651, -3.478718))
  Node_ParseIniFile(node111, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node111, 0)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_generic", "ter_megalith_l_03_3")
  Node_AddSon(node8, node112)
  Body_SetCS(node112, MAT_Vector3(749.971638, 3516.042312, 103.320209), MAT_Vector3(-15.637926, 6.300387, 2.59918))
  Node_ParseIniFile(node112, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node112, 0)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_generic", "ter_megalith_m_01_1")
  Node_AddSon(node8, node113)
  Body_SetCS(node113, MAT_Vector3(628.042195, 1615.211071, 110.657031), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node113, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node113, 0)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_generic", "ter_megalith_m_01_2")
  Node_AddSon(node8, node114)
  Body_SetCS(node114, MAT_Vector3(1788.959044, 3608.397206, 81.467498), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node114, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node114, 0)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_generic", "ter_megalith_m_02_1")
  Node_AddSon(node8, node115)
  Body_SetCS(node115, MAT_Vector3(714.006409, 2030.534345, 108.40857), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node115, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node115, 0)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_generic", "ter_megalith_m_02_2")
  Node_AddSon(node8, node116)
  Body_SetCS(node116, MAT_Vector3(2051.8142, 3603.903186, 85.175127), MAT_Vector3(-69.575826, 8.157132, 8.709266))
  Node_ParseIniFile(node116, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node116, 0)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1")
  Node_AddSon(node8, node117)
  Body_SetCS(node117, MAT_Vector3(669.055409, 2511.982311, 131.411225), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node117, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node117, 0)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_generic", "ter_megalith_s_01_2")
  Node_AddSon(node8, node118)
  Body_SetCS(node118, MAT_Vector3(845.597231, 3589.968852, 113.734357), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node118, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node118, 0)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_generic", "ter_megalith_s_02_1")
  Node_AddSon(node8, node119)
  Body_SetCS(node119, MAT_Vector3(764.944085, 1876.397216, 105.065425), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node119, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node119, 0)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1")
  Node_AddSon(node8, node120)
  Body_SetCS(node120, MAT_Vector3(859.148439, 2068.271972, 108.68272), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node120, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node120, 0)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_generic", "ter_rock_l_01_1")
  Node_AddSon(node8, node121)
  Body_SetCS(node121, MAT_Vector3(754.443562, 2471.056809, 120.248257), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node121, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node121, 0)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_generic", "ter_rock_m_01_1")
  Node_AddSon(node8, node122)
  Body_SetCS(node122, MAT_Vector3(309.586414, 3701.57427, 107.254469), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node122, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node122, 0)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_generic", "ter_rock_s_01_1")
  Node_AddSon(node8, node123)
  Body_SetCS(node123, MAT_Vector3(234.261843, 3550.514244, 107.926507), MAT_Vector3(28.34535, -76.902627, -31.275473))
  Node_ParseIniFile(node123, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node123, 0)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_fx_plant", "org_grass_l_1")
  Node_AddSon(node8, node124)
  Node_ParseIniFile(node124, "osd/fx_plant/org_grass_l.osd")
  FX_Plant_SetMap(node124, "map/3N2/Terrain/org_grass_l.tga")
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node8, node125)
  Node_ParseIniFile(node125, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node125, "map/3N2/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node8, node126)
  Node_ParseIniFile(node126, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node126, "map/3N2/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node8, node127)
  Node_ParseIniFile(node127, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node127, "map/3N2/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_fx_plant", "org_fungus_s01_1")
  Node_AddSon(node8, node128)
  Node_ParseIniFile(node128, "osd/fx_plant/org_fungus_s01.osd")
  FX_Plant_SetMap(node128, "map/3N2/Terrain/org_fungus_s01.tga")
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_generic", "org_fungus_l_1")
  Node_AddSon(node8, node129)
  Body_SetCS(node129, MAT_Vector3(203.982499, 3138.018898, 103.782218), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node129, "osd/fungus/org_fungus_l.osd")
  Body_SetFriendOrFoeID(node129, 0)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_generic", "org_fungus_m_1")
  Node_AddSon(node8, node130)
  Body_SetCS(node130, MAT_Vector3(824.224758, 2442.600925, 116.188214), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node130, "osd/fungus/org_fungus_m.osd")
  Body_SetFriendOrFoeID(node130, 0)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_generic", "org_fungus_m_2")
  Node_AddSon(node8, node131)
  Body_SetCS(node131, MAT_Vector3(801.637293, 2436.787605, 117.271014), MAT_Vector3(-125.486034, -0.86244, -0.843481))
  Node_ParseIniFile(node131, "osd/fungus/org_fungus_m.osd")
  Body_SetFriendOrFoeID(node131, 0)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node132)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node132, node133)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node132, node134)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("NOD_PatrolArea", "Overall_Area")
  Node_AddSon(node134, node135)
  PatrolArea_SetPosition(node135, MAT_Vector3(2000, 2000, 0))
  PatrolArea_SetRadius(node135, 3000)
  PatrolArea_SetMinZ(node135, 0)
  PatrolArea_SetMaxZ(node135, 270)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("NOD_Path", "buggy1_path")
  Node_AddSon(node134, node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node136, node137)
  Position_SetPosition(node137, MAT_Vector3(1057.152473, 3585.906545, 190.380287))
  Position_SetRadius(node137, 5)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node136, node138)
  Position_SetPosition(node138, MAT_Vector3(1079.862242, 3687.311551, 191.798056))
  Position_SetRadius(node138, 5)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node136, node139)
  Position_SetPosition(node139, MAT_Vector3(1228.522035, 3779.945803, 206.231481))
  Position_SetRadius(node139, 5)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node136, node140)
  Position_SetPosition(node140, MAT_Vector3(1177.742074, 3697.280751, 190.230961))
  Position_SetRadius(node140, 5)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node136, node141)
  Position_SetPosition(node141, MAT_Vector3(1095.812542, 3462.632484, 190.710808))
  Position_SetRadius(node141, 5)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node136, node142)
  Position_SetPosition(node142, MAT_Vector3(1107.654261, 3415.106911, 180.983456))
  Position_SetRadius(node142, 5)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node136, node143)
  Position_SetPosition(node143, MAT_Vector3(1081.755945, 3371.687129, 181.162715))
  Position_SetRadius(node143, 5)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node136, node144)
  Position_SetPosition(node144, MAT_Vector3(1036.441382, 3428.399468, 189.090315))
  Position_SetRadius(node144, 5)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node136, node145)
  Position_SetPosition(node145, MAT_Vector3(1034.995981, 3482.008032, 198.723498))
  Position_SetRadius(node145, 5)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node136, node146)
  Position_SetPosition(node146, MAT_Vector3(1045.84371, 3546.567752, 196.001325))
  Position_SetRadius(node146, 5)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_PatrolArea", "VehicleDock_Area")
  Node_AddSon(node134, node147)
  PatrolArea_SetPosition(node147, MAT_Vector3(1263.051297, 3582.205946, 161.671875))
  PatrolArea_SetRadius(node147, 350)
  PatrolArea_SetMinZ(node147, -75)
  PatrolArea_SetMaxZ(node147, 110)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Path", "BomberPath_1")
  Node_AddSon(node134, node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node148, node149)
  Position_SetPosition(node149, MAT_Vector3(1170.703472, 3625.24727, 190.327067))
  Position_SetRadius(node149, 5)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node148, node150)
  Position_SetPosition(node150, MAT_Vector3(1069.700035, 3602.868165, 180.099615))
  Position_SetRadius(node150, 5)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node148, node151)
  Position_SetPosition(node151, MAT_Vector3(940.593792, 3598.198942, 196.319275))
  Position_SetRadius(node151, 5)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node148, node152)
  Position_SetPosition(node152, MAT_Vector3(807.12095, 3598.198942, 253.44381))
  Position_SetRadius(node152, 5)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node148, node153)
  Position_SetPosition(node153, MAT_Vector3(743.680205, 3598.199, 298.984673))
  Position_SetRadius(node153, 5)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node148, node154)
  Position_SetPosition(node154, MAT_Vector3(684.192401, 3598.17717, 298.9847))
  Position_SetRadius(node154, 5)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node148, node155)
  Position_SetPosition(node155, MAT_Vector3(632.859496, 3598.177, 298.9847))
  Position_SetRadius(node155, 5)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Path", "Eerie_Path_1")
  Node_AddSon(node134, node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node156, node157)
  Position_SetPosition(node157, MAT_Vector3(747.401158, 2171.58228, 191.576363))
  Position_SetRadius(node157, 5)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node156, node158)
  Position_SetPosition(node158, MAT_Vector3(855.202377, 2345.455214, 189.883552))
  Position_SetRadius(node158, 5)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node156, node159)
  Position_SetPosition(node159, MAT_Vector3(959.526138, 2543.670359, 202.339075))
  Position_SetRadius(node159, 5)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node156, node160)
  Position_SetPosition(node160, MAT_Vector3(1043.664301, 2806.527673, 168.109646))
  Position_SetRadius(node160, 5)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node156, node161)
  Position_SetPosition(node161, MAT_Vector3(1002.62753, 2915.628625, 159.728972))
  Position_SetRadius(node161, 5)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node156, node162)
  Position_SetPosition(node162, MAT_Vector3(1009.431439, 2968.232615, 157.728029))
  Position_SetRadius(node162, 5)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node156, node163)
  Position_SetPosition(node163, MAT_Vector3(1017.47848, 3023.415721, 161.429065))
  Position_SetRadius(node163, 5)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Path", "Eerie_Path_2")
  Node_AddSon(node134, node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node164, node165)
  Position_SetPosition(node165, MAT_Vector3(1037.051734, 3070.217451, 184.136562))
  Position_SetRadius(node165, 5)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node164, node166)
  Position_SetPosition(node166, MAT_Vector3(1059.703281, 3159.527483, 175.534425))
  Position_SetRadius(node166, 5)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node164, node167)
  Position_SetPosition(node167, MAT_Vector3(1081.124848, 3241.094219, 189.400406))
  Position_SetRadius(node167, 5)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node164, node168)
  Position_SetPosition(node168, MAT_Vector3(1135.502672, 3436.360042, 190.519446))
  Position_SetRadius(node168, 5)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node164, node169)
  Position_SetPosition(node169, MAT_Vector3(1152.420207, 3537.612578, 192.83466))
  Position_SetRadius(node169, 5)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node164, node170)
  Position_SetPosition(node170, MAT_Vector3(1179.734613, 3605.260272, 214.229615))
  Position_SetRadius(node170, 5)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node164, node171)
  Position_SetPosition(node171, MAT_Vector3(1217.712233, 3642.862335, 214.2296))
  Position_SetRadius(node171, 5)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_Path", "VehicleDock3_ApproachPath")
  Node_AddSon(node134, node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node172, node173)
  Position_SetPosition(node173, MAT_Vector3(1151.002839, 3641.814776, 191.950527))
  Position_SetRadius(node173, 5)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node172, node174)
  Position_SetPosition(node174, MAT_Vector3(1192.186986, 3641.814776, 195.334689))
  Position_SetRadius(node174, 5)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_Path", "VehicleDock3_DockPath")
  Node_AddSon(node134, node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node175, node176)
  Position_SetPosition(node176, MAT_Vector3(1185.450331, 3639.608237, 125.914721))
  Position_SetRadius(node176, 5)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node175, node177)
  Position_SetPosition(node177, MAT_Vector3(1256.611228, 3641.969564, 134.940843))
  Position_SetRadius(node177, 5)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_PatrolArea", "VehicleDock3_DockPatrolArea")
  Node_AddSon(node134, node178)
  PatrolArea_SetPosition(node178, MAT_Vector3(1084.742086, 3599.563244, 123.172808))
  PatrolArea_SetRadius(node178, 128)
  PatrolArea_SetMinZ(node178, -20)
  PatrolArea_SetMaxZ(node178, 20)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_Path", "Tank_LookForPatrol_Path_1")
  Node_AddSon(node134, node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node179, node180)
  Position_SetPosition(node180, MAT_Vector3(1136.707138, 3643.299526, 195.188599))
  Position_SetRadius(node180, 5)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node179, node181)
  Position_SetPosition(node181, MAT_Vector3(1108.694318, 3498.291983, 192.846165))
  Position_SetRadius(node181, 5)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node179, node182)
  Position_SetPosition(node182, MAT_Vector3(1072.442432, 3426.612118, 191.073626))
  Position_SetRadius(node182, 5)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node179, node183)
  Position_SetPosition(node183, MAT_Vector3(1037.014453, 3480.989947, 196.816656))
  Position_SetRadius(node183, 5)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node179, node184)
  Position_SetPosition(node184, MAT_Vector3(1046.077424, 3544.430747, 195.285834))
  Position_SetRadius(node184, 5)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node179, node185)
  Position_SetPosition(node185, MAT_Vector3(1116.933382, 3644.947339, 195.784514))
  Position_SetRadius(node185, 5)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_PatrolArea", "VehicleDock3_Tank_PatrolArea")
  Node_AddSon(node134, node186)
  PatrolArea_SetPosition(node186, MAT_Vector3(1085.033514, 3608.731756, 116.672413))
  PatrolArea_SetRadius(node186, 128)
  PatrolArea_SetMinZ(node186, -20)
  PatrolArea_SetMaxZ(node186, 20)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_PatrolArea", "VehicleDock3_PatrolArea")
  Node_AddSon(node134, node187)
  PatrolArea_SetPosition(node187, MAT_Vector3(1255.087349, 3639.435921, 220.169231))
  PatrolArea_SetRadius(node187, 150)
  PatrolArea_SetMinZ(node187, -10)
  PatrolArea_SetMaxZ(node187, 50)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_PatrolArea", "VehicleDock3_TriggerArea")
  Node_AddSon(node134, node188)
  PatrolArea_SetPosition(node188, MAT_Vector3(1255.087, 3639.436, 220.1692))
  PatrolArea_SetRadius(node188, 350)
  PatrolArea_SetMinZ(node188, -220)
  PatrolArea_SetMaxZ(node188, 50)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_PatrolArea", "VehicleDock3_FollowArea")
  Node_AddSon(node134, node189)
  PatrolArea_SetPosition(node189, MAT_Vector3(1255.087, 3639.436, 220.1692))
  PatrolArea_SetRadius(node189, 600)
  PatrolArea_SetMinZ(node189, -220)
  PatrolArea_SetMaxZ(node189, 50)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Path", "StoneyDockOFF_Path")
  Node_AddSon(node134, node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node190, node191)
  Position_SetPosition(node191, MAT_Vector3(1076.297036, 3646.930041, 191.663337))
  Position_SetRadius(node191, 5)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node190, node192)
  Position_SetPosition(node192, MAT_Vector3(952.760438, 3577.928895, 194.876256))
  Position_SetRadius(node192, 5)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node190, node193)
  Position_SetPosition(node193, MAT_Vector3(1073.661584, 3539.770963, 194.571586))
  Position_SetRadius(node193, 5)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node190, node194)
  Position_SetPosition(node194, MAT_Vector3(1091.6783, 3565.519589, 195.118402))
  Position_SetRadius(node194, 5)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node190, node195)
  Position_SetPosition(node195, MAT_Vector3(1018.168601, 3645.125736, 191.384668))
  Position_SetRadius(node195, 5)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_Path", "StoneyBuggey_ToStationPath_1")
  Node_AddSon(node134, node196)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node196, node197)
  Position_SetPosition(node197, MAT_Vector3(1056.449478, 3520.635101, 195.489244))
  Position_SetRadius(node197, 5)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node196, node198)
  Position_SetPosition(node198, MAT_Vector3(1022.773041, 3417.605796, 200.199258))
  Position_SetRadius(node198, 5)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node196, node199)
  Position_SetPosition(node199, MAT_Vector3(1125.796951, 3338.023451, 181.308428))
  Position_SetRadius(node199, 5)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node196, node200)
  Position_SetPosition(node200, MAT_Vector3(1242.087842, 3303.325324, 178.965694))
  Position_SetRadius(node200, 5)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node196, node201)
  Position_SetPosition(node201, MAT_Vector3(1352.253751, 3232.923321, 187.23394))
  Position_SetRadius(node201, 5)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node196, node202)
  Position_SetPosition(node202, MAT_Vector3(1419.579778, 3210.472522, 179.412265))
  Position_SetRadius(node202, 5)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node196, node203)
  Position_SetPosition(node203, MAT_Vector3(1527.714413, 3216.580605, 167.094288))
  Position_SetRadius(node203, 5)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node196, node204)
  Position_SetPosition(node204, MAT_Vector3(1675.631052, 3196.1606, 148.848387))
  Position_SetRadius(node204, 5)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node196, node205)
  Position_SetPosition(node205, MAT_Vector3(1733.789802, 3292.046109, 150.29484))
  Position_SetRadius(node205, 5)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node196, node206)
  Position_SetPosition(node206, MAT_Vector3(1869.861151, 3404.376232, 141.416262))
  Position_SetRadius(node206, 5)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node196, node207)
  Position_SetPosition(node207, MAT_Vector3(1966.532027, 3467.571796, 140.112471))
  Position_SetRadius(node207, 5)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node196, node208)
  Position_SetPosition(node208, MAT_Vector3(2027.739784, 3466.544473, 144.335658))
  Position_SetRadius(node208, 5)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("NOD_Path", "StoneyBuggey_ToStationPath_2")
  Node_AddSon(node134, node209)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node209, node210)
  Position_SetPosition(node210, MAT_Vector3(2081.806861, 3467.558252, 148.782864))
  Position_SetRadius(node210, 5)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node209, node211)
  Position_SetPosition(node211, MAT_Vector3(2181.780566, 3474.687426, 177.066791))
  Position_SetRadius(node211, 5)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node209, node212)
  Position_SetPosition(node212, MAT_Vector3(2257.271599, 3485.9, 210.724228))
  Position_SetRadius(node212, 5)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node209, node213)
  Position_SetPosition(node213, MAT_Vector3(2331.036267, 3493.555833, 212.053864))
  Position_SetRadius(node213, 5)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node209, node214)
  Position_SetPosition(node214, MAT_Vector3(2386.231434, 3493.228902, 213.410658))
  Position_SetRadius(node214, 5)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node209, node215)
  Position_SetPosition(node215, MAT_Vector3(2593.31777, 3494.224801, 213.4107))
  Position_SetRadius(node215, 5)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node209, node216)
  Position_SetPosition(node216, MAT_Vector3(2617.649009, 3494.222141, 213.4107))
  Position_SetRadius(node216, 5)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("NOD_Path", "StoneyBuggey_ToStationPath_3")
  Node_AddSon(node134, node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node217, node218)
  Position_SetPosition(node218, MAT_Vector3(2652.276898, 3494.256086, 207.825983))
  Position_SetRadius(node218, 5)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node217, node219)
  Position_SetPosition(node219, MAT_Vector3(2734.939014, 3495.510156, 190.650468))
  Position_SetRadius(node219, 5)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node217, node220)
  Position_SetPosition(node220, MAT_Vector3(2801.939885, 3498.379912, 205.123763))
  Position_SetRadius(node220, 5)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node217, node221)
  Position_SetPosition(node221, MAT_Vector3(2968.609202, 3537.480459, 220.54329))
  Position_SetRadius(node221, 5)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("NOD_Path", "StoneyBuggey_AwayStationPath")
  Node_AddSon(node134, node222)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node222, node223)
  Position_SetPosition(node223, MAT_Vector3(2886.6162, 3531.069201, 220.771684))
  Position_SetRadius(node223, 5)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node222, node224)
  Position_SetPosition(node224, MAT_Vector3(2801.301461, 3498.541477, 201.912459))
  Position_SetRadius(node224, 5)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node222, node225)
  Position_SetPosition(node225, MAT_Vector3(2643.095818, 3494.257079, 210.196116))
  Position_SetRadius(node225, 5)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node222, node226)
  Position_SetPosition(node226, MAT_Vector3(2600.250305, 3494.262113, 210.09467))
  Position_SetRadius(node226, 5)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node222, node227)
  Position_SetPosition(node227, MAT_Vector3(2387.042747, 3493.267031, 211.91308))
  Position_SetRadius(node227, 5)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node222, node228)
  Position_SetPosition(node228, MAT_Vector3(2328.895024, 3491.2336, 211.381212))
  Position_SetRadius(node228, 5)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node222, node229)
  Position_SetPosition(node229, MAT_Vector3(2258.505366, 3486.141214, 210.824624))
  Position_SetRadius(node229, 5)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("NOD_Path", "StoneyBuggey_toVDock3_Path")
  Node_AddSon(node134, node230)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node230, node231)
  Position_SetPosition(node231, MAT_Vector3(2247.288729, 3489.619897, 210.35038))
  Position_SetRadius(node231, 5)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node230, node232)
  Position_SetPosition(node232, MAT_Vector3(2180.973831, 3472.888616, 176.49172))
  Position_SetRadius(node232, 5)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node230, node233)
  Position_SetPosition(node233, MAT_Vector3(2082.020377, 3466.779455, 149.063524))
  Position_SetRadius(node233, 5)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node230, node234)
  Position_SetPosition(node234, MAT_Vector3(2017.092434, 3416.397635, 143.791361))
  Position_SetRadius(node234, 5)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node230, node235)
  Position_SetPosition(node235, MAT_Vector3(1970.992406, 3479.2768, 137.411299))
  Position_SetRadius(node235, 5)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node230, node236)
  Position_SetPosition(node236, MAT_Vector3(1901.817987, 3366.11218, 144.984903))
  Position_SetRadius(node236, 5)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node230, node237)
  Position_SetPosition(node237, MAT_Vector3(1723.6693, 3311.642529, 151.36151))
  Position_SetRadius(node237, 5)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node230, node238)
  Position_SetPosition(node238, MAT_Vector3(1648.31374, 3279.223, 174.110301))
  Position_SetRadius(node238, 5)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node230, node239)
  Position_SetPosition(node239, MAT_Vector3(1589.145167, 3271.068901, 177.822651))
  Position_SetRadius(node239, 5)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node230, node240)
  Position_SetPosition(node240, MAT_Vector3(1525.892832, 3235.371737, 164.604154))
  Position_SetRadius(node240, 5)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node230, node241)
  Position_SetPosition(node241, MAT_Vector3(1421.836685, 3211.920943, 179.273637))
  Position_SetRadius(node241, 5)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node230, node242)
  Position_SetPosition(node242, MAT_Vector3(1349.409521, 3230.291816, 189.253102))
  Position_SetRadius(node242, 5)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node230, node243)
  Position_SetPosition(node243, MAT_Vector3(1241.284115, 3302.733842, 179.024815))
  Position_SetRadius(node243, 5)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node230, node244)
  Position_SetPosition(node244, MAT_Vector3(1123.973213, 3338.45222, 181.618117))
  Position_SetRadius(node244, 5)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node230, node245)
  Position_SetPosition(node245, MAT_Vector3(1024.009576, 3417.014074, 199.920618))
  Position_SetRadius(node245, 5)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node230, node246)
  Position_SetPosition(node246, MAT_Vector3(1068.917166, 3602.672694, 194.704964))
  Position_SetRadius(node246, 5)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node230, node247)
  Position_SetPosition(node247, MAT_Vector3(1075.04143, 3632.255782, 193.373082))
  Position_SetRadius(node247, 5)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("NOD_Position", "pos_18")
  Node_AddSon(node230, node248)
  Position_SetPosition(node248, MAT_Vector3(1118.718218, 3636.085177, 193.3731))
  Position_SetRadius(node248, 5)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("NOD_Path", "Scout1_Path_1")
  Node_AddSon(node134, node249)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node249, node250)
  Position_SetPosition(node250, MAT_Vector3(3218.281301, 3463.196171, 192.455461))
  Position_SetRadius(node250, 5)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node249, node251)
  Position_SetPosition(node251, MAT_Vector3(3116.267693, 3459.127631, 194.386407))
  Position_SetRadius(node251, 5)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node249, node252)
  Position_SetPosition(node252, MAT_Vector3(3021.392608, 3434.655627, 191.002869))
  Position_SetRadius(node252, 5)
  Game_LoadProgress_Advance(node0)
  node253 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node249, node253)
  Position_SetPosition(node253, MAT_Vector3(2871.431871, 3422.43167, 190.484384))
  Position_SetRadius(node253, 5)
  Game_LoadProgress_Advance(node0)
  node254 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node249, node254)
  Position_SetPosition(node254, MAT_Vector3(2677.616156, 3501.004552, 202.681313))
  Position_SetRadius(node254, 5)
  Game_LoadProgress_Advance(node0)
  node255 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node249, node255)
  Position_SetPosition(node255, MAT_Vector3(2534.798017, 3503.061594, 208.984825))
  Position_SetRadius(node255, 5)
  Game_LoadProgress_Advance(node0)
  node256 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node249, node256)
  Position_SetPosition(node256, MAT_Vector3(2394.02014, 3505.118397, 212.434857))
  Position_SetRadius(node256, 5)
  Game_LoadProgress_Advance(node0)
  node257 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node249, node257)
  Position_SetPosition(node257, MAT_Vector3(2292.009528, 3526.553139, 210.831978))
  Position_SetRadius(node257, 5)
  Game_LoadProgress_Advance(node0)
  node258 = Node_CreateNode("NOD_Path", "Scout1_Path_2")
  Node_AddSon(node134, node258)
  Game_LoadProgress_Advance(node0)
  node259 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node258, node259)
  Position_SetPosition(node259, MAT_Vector3(3217.257393, 3433.612313, 192.4555))
  Position_SetRadius(node259, 5)
  Game_LoadProgress_Advance(node0)
  node260 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node258, node260)
  Position_SetPosition(node260, MAT_Vector3(3118.304787, 3429.543953, 194.3864))
  Position_SetRadius(node260, 5)
  Game_LoadProgress_Advance(node0)
  node261 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node258, node261)
  Position_SetPosition(node261, MAT_Vector3(3022.409775, 3406.092204, 191.0029))
  Position_SetRadius(node261, 5)
  Game_LoadProgress_Advance(node0)
  node262 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node258, node262)
  Position_SetPosition(node262, MAT_Vector3(2872.449854, 3403.049386, 190.4844))
  Position_SetRadius(node262, 5)
  Game_LoadProgress_Advance(node0)
  node263 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node258, node263)
  Position_SetPosition(node263, MAT_Vector3(2677.613243, 3477.541981, 202.6813))
  Position_SetRadius(node263, 5)
  Game_LoadProgress_Advance(node0)
  node264 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node258, node264)
  Position_SetPosition(node264, MAT_Vector3(2535.815921, 3483.678818, 208.9848))
  Position_SetRadius(node264, 5)
  Game_LoadProgress_Advance(node0)
  node265 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node258, node265)
  Position_SetPosition(node265, MAT_Vector3(2394.017172, 3483.69583, 212.4349))
  Position_SetRadius(node265, 5)
  Game_LoadProgress_Advance(node0)
  node266 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node258, node266)
  Position_SetPosition(node266, MAT_Vector3(2294.04178, 3458.20425, 210.832))
  Position_SetRadius(node266, 5)
  Game_LoadProgress_Advance(node0)
  node267 = Node_CreateNode("NOD_Path", "Eerie_ToOutpostPath_1")
  Node_AddSon(node134, node267)
  Game_LoadProgress_Advance(node0)
  node268 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node267, node268)
  Position_SetPosition(node268, MAT_Vector3(1298.329442, 3603.559549, 198.522421))
  Position_SetRadius(node268, 5)
  Game_LoadProgress_Advance(node0)
  node269 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node267, node269)
  Position_SetPosition(node269, MAT_Vector3(1375.034497, 3543.174831, 231.700587))
  Position_SetRadius(node269, 5)
  Game_LoadProgress_Advance(node0)
  node270 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node267, node270)
  Position_SetPosition(node270, MAT_Vector3(1538.462724, 3440.24598, 189.883276))
  Position_SetRadius(node270, 5)
  Game_LoadProgress_Advance(node0)
  node271 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node267, node271)
  Position_SetPosition(node271, MAT_Vector3(1645.19272, 3359.81331, 167.236279))
  Position_SetRadius(node271, 5)
  Game_LoadProgress_Advance(node0)
  node272 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node267, node272)
  Position_SetPosition(node272, MAT_Vector3(1810.420563, 3368.567002, 147.026606))
  Position_SetRadius(node272, 5)
  Game_LoadProgress_Advance(node0)
  node273 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node267, node273)
  Position_SetPosition(node273, MAT_Vector3(2000.518249, 3485.519403, 140.048469))
  Position_SetRadius(node273, 5)
  Game_LoadProgress_Advance(node0)
  node274 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node267, node274)
  Position_SetPosition(node274, MAT_Vector3(2189.142068, 3503.043452, 173.373237))
  Position_SetRadius(node274, 5)
  Game_LoadProgress_Advance(node0)
  node275 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node267, node275)
  Position_SetPosition(node275, MAT_Vector3(2279.796972, 3498.646248, 178.664565))
  Position_SetRadius(node275, 5)
  Game_LoadProgress_Advance(node0)
  node276 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node267, node276)
  Position_SetPosition(node276, MAT_Vector3(2362.596681, 3494.826607, 176.980819))
  Position_SetRadius(node276, 5)
  Game_LoadProgress_Advance(node0)
  node277 = Node_CreateNode("NOD_Path", "ScoutComeOn_Path")
  Node_AddSon(node134, node277)
  Game_LoadProgress_Advance(node0)
  node278 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node277, node278)
  Position_SetPosition(node278, MAT_Vector3(1410.572204, 3542.483986, 231.536866))
  Position_SetRadius(node278, 24)
  Game_LoadProgress_Advance(node0)
  node279 = Node_CreateNode("NOD_PatrolArea", "Outpost_PatrolArea_Vehicles")
  Node_AddSon(node134, node279)
  PatrolArea_SetPosition(node279, MAT_Vector3(2822.400446, 3372.973325, 112.831454))
  PatrolArea_SetRadius(node279, 75)
  PatrolArea_SetMinZ(node279, -20)
  PatrolArea_SetMaxZ(node279, 20)
  Game_LoadProgress_Advance(node0)
  node280 = Node_CreateNode("NOD_PatrolArea", "Outpost_PatrolArea_Vessels")
  Node_AddSon(node134, node280)
  PatrolArea_SetPosition(node280, MAT_Vector3(3168.198496, 3151.563881, 242.92721))
  PatrolArea_SetRadius(node280, 128)
  PatrolArea_SetMinZ(node280, -30)
  PatrolArea_SetMaxZ(node280, 30)
  Game_LoadProgress_Advance(node0)
  node281 = Node_CreateNode("NOD_PatrolArea", "Outpost_TriggerArea")
  Node_AddSon(node134, node281)
  PatrolArea_SetPosition(node281, MAT_Vector3(3113.726625, 3315.042146, 242.9272))
  PatrolArea_SetRadius(node281, 500)
  PatrolArea_SetMinZ(node281, -175)
  PatrolArea_SetMaxZ(node281, 40)
  Game_LoadProgress_Advance(node0)
  node282 = Node_CreateNode("NOD_PatrolArea", "Outpost_FollowArea")
  Node_AddSon(node134, node282)
  PatrolArea_SetPosition(node282, MAT_Vector3(3113.727, 3315.042, 242.9272))
  PatrolArea_SetRadius(node282, 650)
  PatrolArea_SetMinZ(node282, -200)
  PatrolArea_SetMaxZ(node282, 30)
  Game_LoadProgress_Advance(node0)
  node283 = Node_CreateNode("NOD_Path", "Outpost_Tank1_Path")
  Node_AddSon(node134, node283)
  Game_LoadProgress_Advance(node0)
  node284 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node283, node284)
  Position_SetPosition(node284, MAT_Vector3(2835.394652, 3151.251897, 190.001115))
  Position_SetRadius(node284, 5)
  Game_LoadProgress_Advance(node0)
  node285 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node283, node285)
  Position_SetPosition(node285, MAT_Vector3(2812.025455, 3247.504617, 188.755237))
  Position_SetRadius(node285, 5)
  Game_LoadProgress_Advance(node0)
  node286 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node283, node286)
  Position_SetPosition(node286, MAT_Vector3(2814.883714, 3344.298399, 190))
  Position_SetRadius(node286, 5)
  Game_LoadProgress_Advance(node0)
  node287 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node283, node287)
  Position_SetPosition(node287, MAT_Vector3(2836.955859, 3419.026558, 190.539964))
  Position_SetRadius(node287, 5)
  Game_LoadProgress_Advance(node0)
  node288 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node283, node288)
  Position_SetPosition(node288, MAT_Vector3(2954.389897, 3419.012761, 190.018671))
  Position_SetRadius(node288, 5)
  Game_LoadProgress_Advance(node0)
  node289 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node283, node289)
  Position_SetPosition(node289, MAT_Vector3(3109.859012, 3442.079512, 187.707691))
  Position_SetRadius(node289, 5)
  Game_LoadProgress_Advance(node0)
  node290 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node283, node290)
  Position_SetPosition(node290, MAT_Vector3(3241.52773, 3444.199206, 190.24656))
  Position_SetRadius(node290, 5)
  Game_LoadProgress_Advance(node0)
  node291 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node283, node291)
  Position_SetPosition(node291, MAT_Vector3(3258.614396, 3489.747372, 188.322545))
  Position_SetRadius(node291, 5)
  Game_LoadProgress_Advance(node0)
  node292 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node283, node292)
  Position_SetPosition(node292, MAT_Vector3(3266.448851, 3536.720067, 190.573532))
  Position_SetRadius(node292, 5)
  Game_LoadProgress_Advance(node0)
  node293 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node283, node293)
  Position_SetPosition(node293, MAT_Vector3(3322.674511, 3533.866575, 213.690964))
  Position_SetRadius(node293, 5)
  Game_LoadProgress_Advance(node0)
  node294 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node283, node294)
  Position_SetPosition(node294, MAT_Vector3(3362.526981, 3500.410985, 220.204097))
  Position_SetRadius(node294, 5)
  Game_LoadProgress_Advance(node0)
  node295 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node283, node295)
  Position_SetPosition(node295, MAT_Vector3(3399.530894, 3452.7213, 218.345345))
  Position_SetRadius(node295, 5)
  Game_LoadProgress_Advance(node0)
  node296 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node283, node296)
  Position_SetPosition(node296, MAT_Vector3(3419.455499, 3422.114936, 199.498756))
  Position_SetRadius(node296, 5)
  Game_LoadProgress_Advance(node0)
  node297 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node283, node297)
  Position_SetPosition(node297, MAT_Vector3(3383.86859, 3415.001903, 191.369293))
  Position_SetRadius(node297, 5)
  Game_LoadProgress_Advance(node0)
  node298 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node283, node298)
  Position_SetPosition(node298, MAT_Vector3(3317.681255, 3438.496487, 189.575572))
  Position_SetRadius(node298, 5)
  Game_LoadProgress_Advance(node0)
  node299 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node283, node299)
  Position_SetPosition(node299, MAT_Vector3(3241.52773, 3444.199206, 190.24656))
  Position_SetRadius(node299, 5)
  Game_LoadProgress_Advance(node0)
  node300 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node283, node300)
  Position_SetPosition(node300, MAT_Vector3(3109.859012, 3442.079512, 187.707691))
  Position_SetRadius(node300, 5)
  Game_LoadProgress_Advance(node0)
  node301 = Node_CreateNode("NOD_Position", "pos_18")
  Node_AddSon(node283, node301)
  Position_SetPosition(node301, MAT_Vector3(2953.277534, 3418.6111, 190.009981))
  Position_SetRadius(node301, 5)
  Game_LoadProgress_Advance(node0)
  node302 = Node_CreateNode("NOD_Position", "pos_19")
  Node_AddSon(node283, node302)
  Position_SetPosition(node302, MAT_Vector3(2837.978827, 3420.04809, 190.386792))
  Position_SetRadius(node302, 5)
  Game_LoadProgress_Advance(node0)
  node303 = Node_CreateNode("NOD_Position", "pos_20")
  Node_AddSon(node283, node303)
  Position_SetPosition(node303, MAT_Vector3(2815.194877, 3344.608293, 190))
  Position_SetRadius(node303, 5)
  Game_LoadProgress_Advance(node0)
  node304 = Node_CreateNode("NOD_Position", "pos_21")
  Node_AddSon(node283, node304)
  Position_SetPosition(node304, MAT_Vector3(2810.201371, 3247.10304, 189.153678))
  Position_SetRadius(node304, 5)
  Game_LoadProgress_Advance(node0)
  node305 = Node_CreateNode("NOD_Position", "pos_22")
  Node_AddSon(node283, node305)
  Position_SetPosition(node305, MAT_Vector3(2850.047654, 3160.980062, 190.786436))
  Position_SetRadius(node305, 5)
  Game_LoadProgress_Advance(node0)
  node306 = Node_CreateNode("NOD_Position", "pos_23")
  Node_AddSon(node283, node306)
  Position_SetPosition(node306, MAT_Vector3(2881.356875, 3105.46211, 191.987956))
  Position_SetRadius(node306, 5)
  Game_LoadProgress_Advance(node0)
  node307 = Node_CreateNode("NOD_Position", "pos_24")
  Node_AddSon(node283, node307)
  Position_SetPosition(node307, MAT_Vector3(2977.430574, 3031.431791, 190.67786))
  Position_SetRadius(node307, 5)
  Game_LoadProgress_Advance(node0)
  node308 = Node_CreateNode("NOD_Position", "pos_25")
  Node_AddSon(node283, node308)
  Position_SetPosition(node308, MAT_Vector3(3021.555882, 3019.327342, 190.97236))
  Position_SetRadius(node308, 5)
  Game_LoadProgress_Advance(node0)
  node309 = Node_CreateNode("NOD_Position", "pos_26")
  Node_AddSon(node283, node309)
  Position_SetPosition(node309, MAT_Vector3(3059.276366, 3012.917417, 194.361725))
  Position_SetRadius(node309, 5)
  Game_LoadProgress_Advance(node0)
  node310 = Node_CreateNode("NOD_Position", "pos_27")
  Node_AddSon(node283, node310)
  Position_SetPosition(node310, MAT_Vector3(3050.017465, 2957.404232, 190.039389))
  Position_SetRadius(node310, 5)
  Game_LoadProgress_Advance(node0)
  node311 = Node_CreateNode("NOD_Position", "pos_28")
  Node_AddSon(node283, node311)
  Position_SetPosition(node311, MAT_Vector3(2982.402088, 2941.754304, 190.333547))
  Position_SetRadius(node311, 5)
  Game_LoadProgress_Advance(node0)
  node312 = Node_CreateNode("NOD_Position", "pos_29")
  Node_AddSon(node283, node312)
  Position_SetPosition(node312, MAT_Vector3(2884.194981, 3030.731024, 195.668948))
  Position_SetRadius(node312, 5)
  Game_LoadProgress_Advance(node0)
  node313 = Node_CreateNode("NOD_Position", "pos_30")
  Node_AddSon(node283, node313)
  Position_SetPosition(node313, MAT_Vector3(2845.06042, 3116.853918, 193.28877))
  Position_SetRadius(node313, 5)
  Game_LoadProgress_Advance(node0)
  node314 = Node_CreateNode("NOD_Path", "Outpost_Tank2_Path")
  Node_AddSon(node134, node314)
  Game_LoadProgress_Advance(node0)
  node315 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node314, node315)
  Position_SetPosition(node315, MAT_Vector3(3157.65681, 2999.517721, 189.922337))
  Position_SetRadius(node315, 5)
  Game_LoadProgress_Advance(node0)
  node316 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node314, node316)
  Position_SetPosition(node316, MAT_Vector3(3220.531073, 3002.434702, 191.008563))
  Position_SetRadius(node316, 5)
  Game_LoadProgress_Advance(node0)
  node317 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node314, node317)
  Position_SetPosition(node317, MAT_Vector3(3270.251348, 3053.605307, 191.15444))
  Position_SetRadius(node317, 5)
  Game_LoadProgress_Advance(node0)
  node318 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node314, node318)
  Position_SetPosition(node318, MAT_Vector3(3298.03989, 3113.551594, 190.294115))
  Position_SetRadius(node318, 5)
  Game_LoadProgress_Advance(node0)
  node319 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node314, node319)
  Position_SetPosition(node319, MAT_Vector3(3308.284456, 3192.508337, 190))
  Position_SetRadius(node319, 5)
  Game_LoadProgress_Advance(node0)
  node320 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node314, node320)
  Position_SetPosition(node320, MAT_Vector3(3300.987107, 3308.021746, 188.025749))
  Position_SetRadius(node320, 5)
  Game_LoadProgress_Advance(node0)
  node321 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node314, node321)
  Position_SetPosition(node321, MAT_Vector3(3274.675179, 3370.898757, 190.457321))
  Position_SetRadius(node321, 5)
  Game_LoadProgress_Advance(node0)
  node322 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node314, node322)
  Position_SetPosition(node322, MAT_Vector3(3311.235453, 3419.14654, 185.932797))
  Position_SetRadius(node322, 5)
  Game_LoadProgress_Advance(node0)
  node323 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node314, node323)
  Position_SetPosition(node323, MAT_Vector3(3362.23164, 3373.821626, 188.881173))
  Position_SetRadius(node323, 5)
  Game_LoadProgress_Advance(node0)
  node324 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node314, node324)
  Position_SetPosition(node324, MAT_Vector3(3362.221848, 3290.477128, 190.312484))
  Position_SetRadius(node324, 5)
  Game_LoadProgress_Advance(node0)
  node325 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node314, node325)
  Position_SetPosition(node325, MAT_Vector3(3357.828252, 3230.528093, 190.371364))
  Position_SetRadius(node325, 5)
  Game_LoadProgress_Advance(node0)
  node326 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node314, node326)
  Position_SetPosition(node326, MAT_Vector3(3360.744202, 3158.880725, 190.578397))
  Position_SetRadius(node326, 5)
  Game_LoadProgress_Advance(node0)
  node327 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node314, node327)
  Position_SetPosition(node327, MAT_Vector3(3357.8109, 3082.847491, 190.219677))
  Position_SetRadius(node327, 5)
  Game_LoadProgress_Advance(node0)
  node328 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node314, node328)
  Position_SetPosition(node328, MAT_Vector3(3331.482652, 3006.817006, 190.668149))
  Position_SetRadius(node328, 5)
  Game_LoadProgress_Advance(node0)
  node329 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node314, node329)
  Position_SetPosition(node329, MAT_Vector3(3284.686746, 2955.646058, 190.545389))
  Position_SetRadius(node329, 5)
  Game_LoadProgress_Advance(node0)
  node330 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node314, node330)
  Position_SetPosition(node330, MAT_Vector3(3204.26215, 2917.638718, 190.474395))
  Position_SetRadius(node330, 5)
  Game_LoadProgress_Advance(node0)
  node331 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node314, node331)
  Position_SetPosition(node331, MAT_Vector3(3135.540353, 2924.957713, 190))
  Position_SetRadius(node331, 5)
  Game_LoadProgress_Advance(node0)
  node332 = Node_CreateNode("NOD_Position", "pos_18")
  Node_AddSon(node314, node332)
  Position_SetPosition(node332, MAT_Vector3(3064.786279, 2941.151898, 190.001937))
  Position_SetRadius(node332, 5)
  Game_LoadProgress_Advance(node0)
  node333 = Node_CreateNode("NOD_Position", "pos_19")
  Node_AddSon(node314, node333)
  Position_SetPosition(node333, MAT_Vector3(3108.155116, 3000.282787, 193.867241))
  Position_SetRadius(node333, 5)
  Game_LoadProgress_Advance(node0)
  node334 = Node_CreateNode("NOD_Path", "Outpost_Scout1_Path")
  Node_AddSon(node134, node334)
  Game_LoadProgress_Advance(node0)
  node335 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node334, node335)
  Position_SetPosition(node335, MAT_Vector3(3066.388814, 2976.76149, 190.20823))
  Position_SetRadius(node335, 5)
  Game_LoadProgress_Advance(node0)
  node336 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node334, node336)
  Position_SetPosition(node336, MAT_Vector3(2915.499453, 3041.748758, 190.414187))
  Position_SetRadius(node336, 5)
  Game_LoadProgress_Advance(node0)
  node337 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node334, node337)
  Position_SetPosition(node337, MAT_Vector3(2850.540256, 3129.779638, 190.834815))
  Position_SetRadius(node337, 5)
  Game_LoadProgress_Advance(node0)
  node338 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node334, node338)
  Position_SetPosition(node338, MAT_Vector3(2823.311709, 3272.296667, 176.669476))
  Position_SetRadius(node338, 5)
  Game_LoadProgress_Advance(node0)
  node339 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node334, node339)
  Position_SetPosition(node339, MAT_Vector3(2816.804104, 3377.206639, 191.470804))
  Position_SetRadius(node339, 5)
  Game_LoadProgress_Advance(node0)
  node340 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node334, node340)
  Position_SetPosition(node340, MAT_Vector3(2905.064818, 3418.992474, 190.163651))
  Position_SetRadius(node340, 5)
  Game_LoadProgress_Advance(node0)
  node341 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node334, node341)
  Position_SetPosition(node341, MAT_Vector3(3049.675176, 3425.262859, 186.796344))
  Position_SetRadius(node341, 5)
  Game_LoadProgress_Advance(node0)
  node342 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node334, node342)
  Position_SetPosition(node342, MAT_Vector3(3177.520678, 3444.109963, 189.139204))
  Position_SetRadius(node342, 5)
  Game_LoadProgress_Advance(node0)
  node343 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node334, node343)
  Position_SetPosition(node343, MAT_Vector3(3305.36298, 3435.711776, 183.784693))
  Position_SetRadius(node343, 5)
  Game_LoadProgress_Advance(node0)
  node344 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node334, node344)
  Position_SetPosition(node344, MAT_Vector3(3317.928619, 3358.16601, 184.88538))
  Position_SetRadius(node344, 5)
  Game_LoadProgress_Advance(node0)
  node345 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node334, node345)
  Position_SetPosition(node345, MAT_Vector3(3326.304398, 3295.291278, 187.849316))
  Position_SetRadius(node345, 5)
  Game_LoadProgress_Advance(node0)
  node346 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node334, node346)
  Position_SetPosition(node346, MAT_Vector3(3330.485886, 3209.36333, 190.196813))
  Position_SetRadius(node346, 5)
  Game_LoadProgress_Advance(node0)
  node347 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node334, node347)
  Position_SetPosition(node347, MAT_Vector3(3313.70601, 3094.096763, 190.556534))
  Position_SetRadius(node347, 5)
  Game_LoadProgress_Advance(node0)
  node348 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node334, node348)
  Position_SetPosition(node348, MAT_Vector3(3244.532822, 2991.411101, 190.580039))
  Position_SetRadius(node348, 5)
  Game_LoadProgress_Advance(node0)
  node349 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node334, node349)
  Position_SetPosition(node349, MAT_Vector3(3152.315284, 2968.368228, 190.519886))
  Position_SetRadius(node349, 5)
  Game_LoadProgress_Advance(node0)
  node350 = Node_CreateNode("NOD_Path", "Outpost_Scout2_Path")
  Node_AddSon(node134, node350)
  Game_LoadProgress_Advance(node0)
  node351 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node350, node351)
  Position_SetPosition(node351, MAT_Vector3(3143.589422, 2970.585597, 250))
  Position_SetRadius(node351, 5)
  Game_LoadProgress_Advance(node0)
  node352 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node350, node352)
  Position_SetPosition(node352, MAT_Vector3(3218.058464, 2969.557119, 250))
  Position_SetRadius(node352, 5)
  Game_LoadProgress_Advance(node0)
  node353 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node350, node353)
  Position_SetPosition(node353, MAT_Vector3(3289.474126, 3024.635819, 250))
  Position_SetRadius(node353, 5)
  Game_LoadProgress_Advance(node0)
  node354 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node350, node354)
  Position_SetPosition(node354, MAT_Vector3(3330.289924, 3114.402577, 250))
  Position_SetRadius(node354, 5)
  Game_LoadProgress_Advance(node0)
  node355 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node350, node355)
  Position_SetPosition(node355, MAT_Vector3(3336.425095, 3236.817612, 250))
  Position_SetRadius(node355, 5)
  Game_LoadProgress_Advance(node0)
  node356 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node350, node356)
  Position_SetPosition(node356, MAT_Vector3(3338.482017, 3378.61562, 250))
  Position_SetRadius(node356, 5)
  Game_LoadProgress_Advance(node0)
  node357 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node350, node357)
  Position_SetPosition(node357, MAT_Vector3(3418.062445, 3465.31743, 250))
  Position_SetRadius(node357, 5)
  Game_LoadProgress_Advance(node0)
  node358 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node350, node358)
  Position_SetPosition(node358, MAT_Vector3(3486.794981, 3550.422066, 250))
  Position_SetRadius(node358, 5)
  Game_LoadProgress_Advance(node0)
  node359 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node350, node359)
  Position_SetPosition(node359, MAT_Vector3(3424.398453, 3567.124158, 250))
  Position_SetRadius(node359, 5)
  Game_LoadProgress_Advance(node0)
  node360 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node350, node360)
  Position_SetPosition(node360, MAT_Vector3(3317.653511, 3520.346806, 250))
  Position_SetRadius(node360, 5)
  Game_LoadProgress_Advance(node0)
  node361 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node350, node361)
  Position_SetPosition(node361, MAT_Vector3(3250.384621, 3448.707684, 250))
  Position_SetRadius(node361, 5)
  Game_LoadProgress_Advance(node0)
  node362 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node350, node362)
  Position_SetPosition(node362, MAT_Vector3(3142.181618, 3437.022923, 250))
  Position_SetRadius(node362, 5)
  Game_LoadProgress_Advance(node0)
  node363 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node350, node363)
  Position_SetPosition(node363, MAT_Vector3(3006.1966, 3420.954874, 250))
  Position_SetRadius(node363, 5)
  Game_LoadProgress_Advance(node0)
  node364 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node350, node364)
  Position_SetPosition(node364, MAT_Vector3(2889.221694, 3419.506433, 250))
  Position_SetRadius(node364, 5)
  Game_LoadProgress_Advance(node0)
  node365 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node350, node365)
  Position_SetPosition(node365, MAT_Vector3(2826.345885, 3403.429794, 250))
  Position_SetRadius(node365, 5)
  Game_LoadProgress_Advance(node0)
  node366 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node350, node366)
  Position_SetPosition(node366, MAT_Vector3(2808.786104, 3287.919306, 250))
  Position_SetRadius(node366, 5)
  Game_LoadProgress_Advance(node0)
  node367 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node350, node367)
  Position_SetPosition(node367, MAT_Vector3(2833.630312, 3175.327771, 250))
  Position_SetRadius(node367, 5)
  Game_LoadProgress_Advance(node0)
  node368 = Node_CreateNode("NOD_Position", "pos_18")
  Node_AddSon(node350, node368)
  Position_SetPosition(node368, MAT_Vector3(2886.255352, 3061.27186, 250))
  Position_SetRadius(node368, 5)
  Game_LoadProgress_Advance(node0)
  node369 = Node_CreateNode("NOD_Position", "pos_19")
  Node_AddSon(node350, node369)
  Position_SetPosition(node369, MAT_Vector3(2949.122598, 3001.315005, 250))
  Position_SetRadius(node369, 5)
  Game_LoadProgress_Advance(node0)
  node370 = Node_CreateNode("NOD_Position", "pos_20")
  Node_AddSon(node350, node370)
  Position_SetPosition(node370, MAT_Vector3(3048.548201, 2976.446192, 250))
  Position_SetRadius(node370, 5)
  Game_LoadProgress_Advance(node0)
  node371 = Node_CreateNode("NOD_Path", "Outpost1_ApproachPath")
  Node_AddSon(node134, node371)
  Game_LoadProgress_Advance(node0)
  node372 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node371, node372)
  Position_SetPosition(node372, MAT_Vector3(2925.046277, 3080.199202, 191.258708))
  Position_SetRadius(node372, 5)
  Game_LoadProgress_Advance(node0)
  node373 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node371, node373)
  Position_SetPosition(node373, MAT_Vector3(2862.337986, 3053.122608, 249.075903))
  Position_SetRadius(node373, 5)
  Game_LoadProgress_Advance(node0)
  node374 = Node_CreateNode("NOD_Path", "Outpost1_DockPath")
  Node_AddSon(node134, node374)
  Game_LoadProgress_Advance(node0)
  node375 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node374, node375)
  Position_SetPosition(node375, MAT_Vector3(2823.087311, 3028.860415, 254))
  Position_SetRadius(node375, 5)
  Game_LoadProgress_Advance(node0)
  node376 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node374, node376)
  Position_SetPosition(node376, MAT_Vector3(2754.851073, 2974.832366, 254))
  Position_SetRadius(node376, 5)
  Game_LoadProgress_Advance(node0)
  node377 = Node_CreateNode("NOD_PatrolArea", "Outpost1_DockPatrolArea")
  Node_AddSon(node134, node377)
  PatrolArea_SetPosition(node377, MAT_Vector3(2850.334985, 3166.477421, 260.712172))
  PatrolArea_SetRadius(node377, 128)
  PatrolArea_SetMinZ(node377, -20)
  PatrolArea_SetMaxZ(node377, 20)
  Game_LoadProgress_Advance(node0)
  node378 = Node_CreateNode("NOD_Path", "Outpost2_ApproachPath")
  Node_AddSon(node134, node378)
  Game_LoadProgress_Advance(node0)
  node379 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node378, node379)
  Position_SetPosition(node379, MAT_Vector3(3384.449469, 3211.704812, 244.405251))
  Position_SetRadius(node379, 5)
  Game_LoadProgress_Advance(node0)
  node380 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node378, node380)
  Position_SetPosition(node380, MAT_Vector3(3438.026399, 3211.82098, 264))
  Position_SetRadius(node380, 5)
  Game_LoadProgress_Advance(node0)
  node381 = Node_CreateNode("NOD_Path", "Outpost2_DockPath")
  Node_AddSon(node134, node381)
  Game_LoadProgress_Advance(node0)
  node382 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node381, node382)
  Position_SetPosition(node382, MAT_Vector3(3475.970995, 3213.503755, 264))
  Position_SetRadius(node382, 5)
  Game_LoadProgress_Advance(node0)
  node383 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node381, node383)
  Position_SetPosition(node383, MAT_Vector3(3568.260073, 3214.535813, 264))
  Position_SetRadius(node383, 5)
  Game_LoadProgress_Advance(node0)
  node384 = Node_CreateNode("NOD_PatrolArea", "Outpost2_DockPatrolArea")
  Node_AddSon(node134, node384)
  PatrolArea_SetPosition(node384, MAT_Vector3(3306.060417, 3159.020714, 244.458811))
  PatrolArea_SetRadius(node384, 128)
  PatrolArea_SetMinZ(node384, -20)
  PatrolArea_SetMaxZ(node384, 20)
  Game_LoadProgress_Advance(node0)
  node385 = Node_CreateNode("NOD_Path", "EerieIntoOutpost_Path")
  Node_AddSon(node134, node385)
  Game_LoadProgress_Advance(node0)
  node386 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node385, node386)
  Position_SetPosition(node386, MAT_Vector3(2398.301274, 3495.846738, 168.220322))
  Position_SetRadius(node386, 5)
  Game_LoadProgress_Advance(node0)
  node387 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node385, node387)
  Position_SetPosition(node387, MAT_Vector3(2477.871511, 3495.846738, 165.988185))
  Position_SetRadius(node387, 5)
  Game_LoadProgress_Advance(node0)
  node388 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node385, node388)
  Position_SetPosition(node388, MAT_Vector3(2584.985292, 3497.887001, 164.124815))
  Position_SetRadius(node388, 5)
  Game_LoadProgress_Advance(node0)
  node389 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node385, node389)
  Position_SetPosition(node389, MAT_Vector3(2664.555529, 3501.967526, 205.773762))
  Position_SetRadius(node389, 5)
  Game_LoadProgress_Advance(node0)
  node390 = Node_CreateNode("NOD_Path", "EerieToShelterDock_Path")
  Node_AddSon(node134, node390)
  Game_LoadProgress_Advance(node0)
  node391 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node390, node391)
  Position_SetPosition(node391, MAT_Vector3(2758.407603, 3502.987657, 190.409462))
  Position_SetRadius(node391, 5)
  Game_LoadProgress_Advance(node0)
  node392 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node390, node392)
  Position_SetPosition(node392, MAT_Vector3(2799.212853, 3407.09532, 189.451508))
  Position_SetRadius(node392, 5)
  Game_LoadProgress_Advance(node0)
  node393 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node390, node393)
  Position_SetPosition(node393, MAT_Vector3(2824.716134, 3292.840621, 180.72798))
  Position_SetRadius(node393, 5)
  Game_LoadProgress_Advance(node0)
  node394 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node390, node394)
  Position_SetPosition(node394, MAT_Vector3(2845.118759, 3167.364478, 190.111057))
  Position_SetRadius(node394, 5)
  Game_LoadProgress_Advance(node0)
  node395 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node390, node395)
  Position_SetPosition(node395, MAT_Vector3(2892.044796, 3069.431879, 191.021789))
  Position_SetRadius(node395, 5)
  Game_LoadProgress_Advance(node0)
  node396 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node390, node396)
  Position_SetPosition(node396, MAT_Vector3(2965.494245, 3001.083086, 190.572678))
  Position_SetRadius(node396, 5)
  Game_LoadProgress_Advance(node0)
  node397 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node390, node397)
  Position_SetPosition(node397, MAT_Vector3(3071.587895, 2965.378492, 190.7608))
  Position_SetRadius(node397, 5)
  Game_LoadProgress_Advance(node0)
  node398 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node390, node398)
  Position_SetPosition(node398, MAT_Vector3(3201.144562, 2982.720723, 191.427055))
  Position_SetRadius(node398, 5)
  Game_LoadProgress_Advance(node0)
  node399 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node390, node399)
  Position_SetPosition(node399, MAT_Vector3(3253.337187, 2983.337459, 190.078664))
  Position_SetRadius(node399, 5)
  Game_LoadProgress_Advance(node0)
  node400 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node390, node400)
  Position_SetPosition(node400, MAT_Vector3(3350.30494, 3026.624389, 260.881914))
  Position_SetRadius(node400, 5)
  Game_LoadProgress_Advance(node0)
  node401 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node390, node401)
  Position_SetPosition(node401, MAT_Vector3(3403.268107, 3025.912668, 251.08016))
  Position_SetRadius(node401, 5)
  Game_LoadProgress_Advance(node0)
  node402 = Node_CreateNode("NOD_Path", "Eerie_LeaveOutpost_Path_1")
  Node_AddSon(node134, node402)
  Game_LoadProgress_Advance(node0)
  node403 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node402, node403)
  Position_SetPosition(node403, MAT_Vector3(3423.936254, 3069.902858, 220))
  Position_SetRadius(node403, 5)
  Game_LoadProgress_Advance(node0)
  node404 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node402, node404)
  Position_SetPosition(node404, MAT_Vector3(3349.466674, 3086.224958, 190.468327))
  Position_SetRadius(node404, 5)
  Game_LoadProgress_Advance(node0)
  node405 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node402, node405)
  Position_SetPosition(node405, MAT_Vector3(3316.822474, 3134.171127, 190.200033))
  Position_SetRadius(node405, 5)
  Game_LoadProgress_Advance(node0)
  node406 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node402, node406)
  Position_SetPosition(node406, MAT_Vector3(3302.540636, 3246.385563, 190.183156))
  Position_SetRadius(node406, 5)
  Game_LoadProgress_Advance(node0)
  node407 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node402, node407)
  Position_SetPosition(node407, MAT_Vector3(3286.218537, 3357.579869, 190))
  Position_SetRadius(node407, 5)
  Game_LoadProgress_Advance(node0)
  node408 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node402, node408)
  Position_SetPosition(node408, MAT_Vector3(3237.252237, 3424.908531, 185.869913))
  Position_SetRadius(node408, 5)
  Game_LoadProgress_Advance(node0)
  node409 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node402, node409)
  Position_SetPosition(node409, MAT_Vector3(3078.111763, 3428.989056, 189.078984))
  Position_SetRadius(node409, 5)
  Game_LoadProgress_Advance(node0)
  node410 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node402, node410)
  Position_SetPosition(node410, MAT_Vector3(3020.984413, 3419.807875, 190.495871))
  Position_SetRadius(node410, 5)
  Game_LoadProgress_Advance(node0)
  node411 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node402, node411)
  Position_SetPosition(node411, MAT_Vector3(2930.192733, 3421.848137, 190))
  Position_SetRadius(node411, 5)
  Game_LoadProgress_Advance(node0)
  node412 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node402, node412)
  Position_SetPosition(node412, MAT_Vector3(2876.125777, 3416.747481, 190.682337))
  Position_SetRadius(node412, 5)
  Game_LoadProgress_Advance(node0)
  node413 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node402, node413)
  Position_SetPosition(node413, MAT_Vector3(2801.656196, 3409.606562, 189.503033))
  Position_SetRadius(node413, 5)
  Game_LoadProgress_Advance(node0)
  node414 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node402, node414)
  Position_SetPosition(node414, MAT_Vector3(2759.830815, 3500.398243, 190.267183))
  Position_SetRadius(node414, 5)
  Game_LoadProgress_Advance(node0)
  node415 = Node_CreateNode("NOD_Path", "Eerie_Leave_Path_1")
  Node_AddSon(node134, node415)
  Game_LoadProgress_Advance(node0)
  node416 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node415, node416)
  Position_SetPosition(node416, MAT_Vector3(2354.990988, 3495.16592, 210.423737))
  Position_SetRadius(node416, 5)
  Game_LoadProgress_Advance(node0)
  node417 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node415, node417)
  Position_SetPosition(node417, MAT_Vector3(2189.423459, 3499.357503, 174.381332))
  Position_SetRadius(node417, 5)
  Game_LoadProgress_Advance(node0)
  node418 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node415, node418)
  Position_SetPosition(node418, MAT_Vector3(1994.514849, 3470.016422, 140.827485))
  Position_SetRadius(node418, 5)
  Game_LoadProgress_Advance(node0)
  node419 = Node_CreateNode("NOD_Path", "Eerie_Leave_Path_2")
  Node_AddSon(node134, node419)
  Game_LoadProgress_Advance(node0)
  node420 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node419, node420)
  Position_SetPosition(node420, MAT_Vector3(1958.886393, 3449.058507, 141.389561))
  Position_SetRadius(node420, 5)
  Game_LoadProgress_Advance(node0)
  node421 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node419, node421)
  Position_SetPosition(node421, MAT_Vector3(1774.456741, 3321.215225, 150.319226))
  Position_SetRadius(node421, 5)
  Game_LoadProgress_Advance(node0)
  node422 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node419, node422)
  Position_SetPosition(node422, MAT_Vector3(1457.992224, 3197.563526, 174.26104))
  Position_SetRadius(node422, 5)
  Game_LoadProgress_Advance(node0)
  node423 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node419, node423)
  Position_SetPosition(node423, MAT_Vector3(1397.21427, 2941.876963, 213.332259))
  Position_SetRadius(node423, 5)
  Game_LoadProgress_Advance(node0)
  node424 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node419, node424)
  Position_SetPosition(node424, MAT_Vector3(1248.413073, 2690.381982, 229.674203))
  Position_SetRadius(node424, 5)
  Game_LoadProgress_Advance(node0)
  node425 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node419, node425)
  Position_SetPosition(node425, MAT_Vector3(957.098054, 2378.109048, 191.138069))
  Position_SetRadius(node425, 5)
  Game_LoadProgress_Advance(node0)
  node426 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node419, node426)
  Position_SetPosition(node426, MAT_Vector3(709.794657, 2067.931905, 188.136135))
  Position_SetRadius(node426, 5)
  Game_LoadProgress_Advance(node0)
  node427 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node419, node427)
  Position_SetPosition(node427, MAT_Vector3(470.874425, 1820.628508, 224.005925))
  Position_SetRadius(node427, 5)
  Game_LoadProgress_Advance(node0)
  node428 = Node_CreateNode("NOD_Path", "dm_harvester_1_approachPath")
  Node_AddSon(node134, node428)
  Game_LoadProgress_Advance(node0)
  node429 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node428, node429)
  Position_SetPosition(node429, MAT_Vector3(420.201254, 1599.821745, 257))
  Position_SetRadius(node429, 5)
  Game_LoadProgress_Advance(node0)
  node430 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node428, node430)
  Position_SetPosition(node430, MAT_Vector3(479.756168, 1648.940627, 257))
  Position_SetRadius(node430, 5)
  Game_LoadProgress_Advance(node0)
  node431 = Node_CreateNode("NOD_Path", "dm_harvester_1_dockPath")
  Node_AddSon(node134, node431)
  Game_LoadProgress_Advance(node0)
  node432 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node431, node432)
  Position_SetPosition(node432, MAT_Vector3(367.512852, 1595, 257))
  Position_SetRadius(node432, 5)
  Game_LoadProgress_Advance(node0)
  node433 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node431, node433)
  Position_SetPosition(node433, MAT_Vector3(251.530136, 1595, 257))
  Position_SetRadius(node433, 5)
  Game_LoadProgress_Advance(node0)
  node434 = Node_CreateNode("NOD_PatrolArea", "dm_harvester_1_area")
  Node_AddSon(node134, node434)
  PatrolArea_SetPosition(node434, MAT_Vector3(429.350675, 1527.643601, 255.429273))
  PatrolArea_SetRadius(node434, 50)
  PatrolArea_SetMinZ(node434, -20)
  PatrolArea_SetMaxZ(node434, 20)
  Game_LoadProgress_Advance(node0)
  node435 = Node_CreateNode("NOD_PatrolArea", "bonus2Area")
  Node_AddSon(node134, node435)
  PatrolArea_SetPosition(node435, MAT_Vector3(98.095612, 3609.135968, 178.598415))
  PatrolArea_SetRadius(node435, 400)
  PatrolArea_SetMinZ(node435, -100)
  PatrolArea_SetMaxZ(node435, 95)
  Game_LoadProgress_Advance(node0)
  node436 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node132, node436)
  Node_EnterSimulation(node436)
  Game_LoadProgress_Advance(node0)
  node437 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node132, node437)
  Node_EnterSimulation(node437)
  Game_LoadProgress_Advance(node0)
  node438 = Node_CreateNode("NOD_Trigger", "VehicleDock3_AreaAlarm")
  Node_AddSon(node437, node438)
  Body_SetFriendOrFoeID(node438, 0)
  Body_SetPosition(node438, MAT_Vector3(1258.005099, 3639.887649, 161.671875))
  Trigger_SetPresenceSphere(node438, 450)
  Node_EnterSimulation(node438)
  Game_LoadProgress_Advance(node0)
  node439 = Node_CreateNode("NOD_Trigger", "Eerie_NavTrigger")
  Node_AddSon(node437, node439)
  Body_SetFriendOrFoeID(node439, 0)
  Body_SetCS(node439, MAT_Vector3(958.734623, 2540.074412, 161.249838), MAT_Vector3(-26.243086, 0, 0))
  Trigger_SetBoxMode(node439, 40, 30, 100)
  Node_EnterSimulation(node439)
  Game_LoadProgress_Advance(node0)
  node440 = Node_CreateNode("NOD_Trigger", "tBonus2Area")
  Node_AddSon(node437, node440)
  Body_SetFriendOrFoeID(node440, 0)
  Body_SetPosition(node440, MAT_Vector3(100.600319, 3611.314777, 177.266009))
  Trigger_SetPresenceSphere(node440, 575)
  Node_EnterSimulation(node440)
  Game_LoadProgress_Advance(node0)
  node441 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node132, node441)
  Node_EnterSimulation(node441)
  Game_LoadProgress_Advance(node0)
  node442 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node441, node442)
  Body_SetCS(node442, MAT_Vector3(1028.477011, 3239.465345, 245.643794), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node442, "osd/pla/pla_ship2.osd")
  Body_SetFriendOrFoeID(node442, 1)
  Node_EnterSimulation(node442)
  Game_LoadProgress_Advance(node0)
  node443 = Node_CreateNode("nod_vessel", "Eerie")
  Node_AddSon(node441, node443)
  Body_SetCS(node443, MAT_Vector3(359.691749, 1807.416428, 255.624324), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node443, "osd/wng/wng_techbomber.osd")
  Body_SetFriendOrFoeID(node443, 2)
  Body_SetNameKey(node443, -1)
  Body_SetCargoKey(node443, -1, 0)
  Body_SetCargoKey(node443, -1, 1)
  Body_SetCargoKey(node443, -1, 2)
  Node_EnterSimulation(node443)
  Game_LoadProgress_Advance(node0)
  node444 = Node_CreateNode("nod_vehicle", "Stoney_Buggy")
  Node_AddSon(node441, node444)
  Body_SetCS(node444, MAT_Vector3(1210.506815, 3507.995942, 154.280413), MAT_Vector3(-63.17771, 0, 0))
  Node_ParseIniFile(node444, "osd/wng/wng_buggy.osd")
  Body_SetFriendOrFoeID(node444, 3)
  Body_SetNameKey(node444, -1)
  Body_SetCargoKey(node444, -1, 0)
  Body_SetCargoKey(node444, -1, 1)
  Body_SetCargoKey(node444, -1, 2)
  Node_EnterSimulation(node444)
  Game_LoadProgress_Advance(node0)
  node445 = Node_CreateNode("nod_generic", "pla_harvester_static_1")
  Node_AddSon(node441, node445)
  Body_SetCS(node445, MAT_Vector3(252.285897, 1791.534766, 277.055913), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node445, "osd/pla/pla_harvester.osd")
  Body_SetFriendOrFoeID(node445, 2)
  Body_SetNameKey(node445, -1)
  Body_SetCargoKey(node445, -1, 0)
  Body_SetCargoKey(node445, -1, 1)
  Body_SetCargoKey(node445, -1, 2)
  Node_EnterSimulation(node445)
  Game_LoadProgress_Advance(node0)
  node446 = Node_CreateNode("nod_vessel", "atl_techbomber_1")
  Node_AddSon(node441, node446)
  Body_SetCS(node446, MAT_Vector3(1204.665303, 3679.90279, 219.007748), MAT_Vector3(-137.522195, 0, 0))
  Node_ParseIniFile(node446, "osd/atl/atl_techbomber.osd")
  Body_SetFriendOrFoeID(node446, 0)
  Body_SetNameKey(node446, -1)
  Body_SetCargoKey(node446, 1121, 0)
  Body_SetCargoKey(node446, 1115, 1)
  Body_SetCargoKey(node446, -1, 2)
  Node_EnterSimulation(node446)
  Game_LoadProgress_Advance(node0)
  node447 = Node_CreateNode("nod_vehicle", "atl_buggy_1")
  Node_AddSon(node441, node447)
  Body_SetCS(node447, MAT_Vector3(1052.418, 3567.356, 122.8155), MAT_Vector3(-18.77607, 0, 0))
  Node_ParseIniFile(node447, "osd/atl/atl_buggy.osd")
  Body_SetFriendOrFoeID(node447, 0)
  Body_SetNameKey(node447, -1)
  Body_SetCargoKey(node447, -1, 0)
  Body_SetCargoKey(node447, -1, 1)
  Body_SetCargoKey(node447, -1, 2)
  Node_EnterSimulation(node447)
  Game_LoadProgress_Advance(node0)
  node448 = Node_CreateNode("nod_vehicle", "atl_tank_1")
  Node_AddSon(node441, node448)
  Body_SetCS(node448, MAT_Vector3(1188.021, 3644.153, 114.4728), MAT_Vector3(89.38281, -2e-05, 1.093527))
  Node_ParseIniFile(node448, "osd/atl/atl_tank.osd")
  Body_SetFriendOrFoeID(node448, 0)
  Body_SetNameKey(node448, -1)
  Body_SetCargoKey(node448, -1, 0)
  Body_SetCargoKey(node448, -1, 1)
  Body_SetCargoKey(node448, -1, 2)
  Node_EnterSimulation(node448)
  Game_LoadProgress_Advance(node0)
  node449 = Node_CreateNode("nod_waypoint", "nav_escort_1")
  Node_AddSon(node441, node449)
  Body_SetPosition(node449, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node449, 100)
  Node_ParseIniFile(node449, "osd/nav/nav_escort.osd")
  Node_EnterSimulation(node449)
  Game_LoadProgress_Advance(node0)
  node450 = Node_CreateNode("nod_waypoint", "nav_waypoint_1")
  Node_AddSon(node441, node450)
  Body_SetPosition(node450, MAT_Vector3(1242.848502, 3524.703715, 156.484918))
  WayPoint_SetRadius(node450, 128)
  Node_ParseIniFile(node450, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node450)
  Game_LoadProgress_Advance(node0)
  node451 = Node_CreateNode("nod_waypoint", "nav_escort_2")
  Node_AddSon(node441, node451)
  Body_SetPosition(node451, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node451, 100)
  Node_ParseIniFile(node451, "osd/nav/nav_escort.osd")
  Node_EnterSimulation(node451)
  Game_LoadProgress_Advance(node0)
  node452 = Node_CreateNode("nod_waypoint", "nav_guard_1")
  Node_AddSon(node441, node452)
  Body_SetPosition(node452, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node452, 5)
  Node_ParseIniFile(node452, "osd/nav/nav_guard.osd")
  Node_EnterSimulation(node452)
  Game_LoadProgress_Advance(node0)
  node453 = Node_CreateNode("nod_vehicle", "atl_buggy_2")
  Node_AddSon(node441, node453)
  Body_SetCS(node453, MAT_Vector3(1052.418, 3567.356, 122.8155), MAT_Vector3(-18.77607, 0, 0))
  Node_ParseIniFile(node453, "osd/atl/atl_buggy.osd")
  Body_SetFriendOrFoeID(node453, 4)
  Body_SetNameKey(node453, -1)
  Body_SetCargoKey(node453, -1, 0)
  Body_SetCargoKey(node453, -1, 1)
  Body_SetCargoKey(node453, -1, 2)
  Node_EnterSimulation(node453)
  Game_LoadProgress_Advance(node0)
  node454 = Node_CreateNode("nod_vehicle", "atl_buggy_3")
  Node_AddSon(node441, node454)
  Body_SetCS(node454, MAT_Vector3(1052.418, 3567.356, 122.8155), MAT_Vector3(-18.77607, 0, 0))
  Node_ParseIniFile(node454, "osd/atl/atl_buggy.osd")
  Body_SetFriendOrFoeID(node454, 4)
  Body_SetNameKey(node454, -1)
  Body_SetCargoKey(node454, -1, 0)
  Body_SetCargoKey(node454, -1, 1)
  Body_SetCargoKey(node454, -1, 2)
  Node_EnterSimulation(node454)
  Game_LoadProgress_Advance(node0)
  node455 = Node_CreateNode("nod_vessel", "atl_scout1_1")
  Node_AddSon(node441, node455)
  Body_SetCS(node455, MAT_Vector3(3291.606063, 3464.197184, 146.7787), MAT_Vector3(87.481338, 0, 0))
  Node_ParseIniFile(node455, "osd/atl/atl_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node455, 0)
  Body_SetNameKey(node455, -1)
  Body_SetCargoKey(node455, -1, 0)
  Body_SetCargoKey(node455, -1, 1)
  Body_SetCargoKey(node455, -1, 2)
  Node_EnterSimulation(node455)
  Game_LoadProgress_Advance(node0)
  node456 = Node_CreateNode("nod_vessel", "atl_scout1_2")
  Node_AddSon(node441, node456)
  Body_SetCS(node456, MAT_Vector3(3289.562022, 3432.57317, 146.7787), MAT_Vector3(87.48134, 0, 0))
  Node_ParseIniFile(node456, "osd/atl/atl_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node456, 0)
  Body_SetNameKey(node456, -1)
  Body_SetCargoKey(node456, -1, 0)
  Body_SetCargoKey(node456, -1, 1)
  Body_SetCargoKey(node456, -1, 2)
  Node_EnterSimulation(node456)
  Game_LoadProgress_Advance(node0)
  node457 = Node_CreateNode("nod_vessel", "atl_scout1_3")
  Node_AddSon(node441, node457)
  Body_SetCS(node457, MAT_Vector3(2350.337756, 3520.461206, 175.640243), MAT_Vector3(87.48134, 0, 0))
  Node_ParseIniFile(node457, "osd/atl/atl_scout1_wide.osd")
  Body_SetFriendOrFoeID(node457, 0)
  Body_SetNameKey(node457, -1)
  Body_SetCargoKey(node457, -1, 0)
  Body_SetCargoKey(node457, -1, 1)
  Body_SetCargoKey(node457, -1, 2)
  Node_EnterSimulation(node457)
  Game_LoadProgress_Advance(node0)
  node458 = Node_CreateNode("nod_vessel", "atl_scout1_4")
  Node_AddSon(node441, node458)
  Body_SetCS(node458, MAT_Vector3(2404.395369, 3438.844145, 183.975828), MAT_Vector3(87.48134, 0, 0))
  Node_ParseIniFile(node458, "osd/atl/atl_scout1_wide.osd")
  Body_SetFriendOrFoeID(node458, 0)
  Body_SetNameKey(node458, -1)
  Body_SetCargoKey(node458, -1, 0)
  Body_SetCargoKey(node458, -1, 1)
  Body_SetCargoKey(node458, -1, 2)
  Node_EnterSimulation(node458)
  Game_LoadProgress_Advance(node0)
  node459 = Node_CreateNode("nod_vessel", "atl_scout1_5")
  Node_AddSon(node441, node459)
  Body_SetCS(node459, MAT_Vector3(2436.02686, 3505.148818, 177.805518), MAT_Vector3(87.48134, 0, 0))
  Node_ParseIniFile(node459, "osd/atl/atl_scout1_wide.osd")
  Body_SetFriendOrFoeID(node459, 0)
  Body_SetNameKey(node459, -1)
  Body_SetCargoKey(node459, -1, 0)
  Body_SetCargoKey(node459, -1, 1)
  Body_SetCargoKey(node459, -1, 2)
  Node_EnterSimulation(node459)
  Game_LoadProgress_Advance(node0)
  node460 = Node_CreateNode("nod_vessel", "atl_scout1_6")
  Node_AddSon(node441, node460)
  Body_SetCS(node460, MAT_Vector3(2461.528364, 3488.823903, 176.469853), MAT_Vector3(87.48134, 0, 0))
  Node_ParseIniFile(node460, "osd/atl/atl_scout1_wide.osd")
  Body_SetFriendOrFoeID(node460, 0)
  Body_SetNameKey(node460, -1)
  Body_SetCargoKey(node460, -1, 0)
  Body_SetCargoKey(node460, -1, 1)
  Body_SetCargoKey(node460, -1, 2)
  Node_EnterSimulation(node460)
  Game_LoadProgress_Advance(node0)
  node461 = Node_CreateNode("nod_vehicle", "outp_tank_1")
  Node_AddSon(node441, node461)
  Body_SetCS(node461, MAT_Vector3(2870.125492, 3091.152426, 153.699949), MAT_Vector3(40.643605, 0, 0))
  Node_ParseIniFile(node461, "osd/atl/atl_tank.osd")
  Body_SetFriendOrFoeID(node461, 0)
  Body_SetNameKey(node461, -1)
  Body_SetCargoKey(node461, -1, 0)
  Body_SetCargoKey(node461, -1, 1)
  Body_SetCargoKey(node461, -1, 2)
  Node_EnterSimulation(node461)
  Game_LoadProgress_Advance(node0)
  node462 = Node_CreateNode("nod_vehicle", "outp_tank_2")
  Node_AddSon(node441, node462)
  Body_SetCS(node462, MAT_Vector3(3102.601804, 3001.93145, 153.6999), MAT_Vector3(-94.603364, 0, 0))
  Node_ParseIniFile(node462, "osd/atl/atl_tank.osd")
  Body_SetFriendOrFoeID(node462, 0)
  Body_SetNameKey(node462, -1)
  Body_SetCargoKey(node462, -1, 0)
  Body_SetCargoKey(node462, -1, 1)
  Body_SetCargoKey(node462, -1, 2)
  Node_EnterSimulation(node462)
  Game_LoadProgress_Advance(node0)
  node463 = Node_CreateNode("nod_vessel", "atl_scout1_7")
  Node_AddSon(node441, node463)
  Body_SetCS(node463, MAT_Vector3(3117.111876, 2971.754673, 250), MAT_Vector3(-92.76141, 0, 0))
  Node_ParseIniFile(node463, "osd/atl/atl_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node463, 0)
  Body_SetNameKey(node463, -1)
  Body_SetCargoKey(node463, -1, 0)
  Body_SetCargoKey(node463, -1, 1)
  Body_SetCargoKey(node463, -1, 2)
  Node_EnterSimulation(node463)
  Game_LoadProgress_Advance(node0)
  node464 = Node_CreateNode("nod_vessel", "atl_scout1_8")
  Node_AddSon(node441, node464)
  Body_SetCS(node464, MAT_Vector3(3031.420976, 2981.956312, 250), MAT_Vector3(81.518528, 0, 0))
  Node_ParseIniFile(node464, "osd/atl/atl_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node464, 0)
  Body_SetNameKey(node464, -1)
  Body_SetCargoKey(node464, -1, 0)
  Body_SetCargoKey(node464, -1, 1)
  Body_SetCargoKey(node464, -1, 2)
  Node_EnterSimulation(node464)
  Game_LoadProgress_Advance(node0)
  node465 = Node_CreateNode("nod_vessel", "atl_scout1_9")
  Node_AddSon(node441, node465)
  Body_SetCS(node465, MAT_Vector3(2620.547263, 2895.687137, 250), MAT_Vector3(130.993656, 0, 0))
  Node_ParseIniFile(node465, "osd/atl/atl_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node465, 0)
  Body_SetNameKey(node465, -1)
  Body_SetCargoKey(node465, -1, 0)
  Body_SetCargoKey(node465, -1, 1)
  Body_SetCargoKey(node465, -1, 2)
  Node_EnterSimulation(node465)
  Game_LoadProgress_Advance(node0)
  node466 = Node_CreateNode("nod_vessel", "atl_scout1_10")
  Node_AddSon(node441, node466)
  Body_SetCS(node466, MAT_Vector3(2627.664214, 2880.029129, 250), MAT_Vector3(130.9937, 0, 0))
  Node_ParseIniFile(node466, "osd/atl/atl_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node466, 0)
  Body_SetNameKey(node466, -1)
  Body_SetCargoKey(node466, -1, 0)
  Body_SetCargoKey(node466, -1, 1)
  Body_SetCargoKey(node466, -1, 2)
  Node_EnterSimulation(node466)
  Game_LoadProgress_Advance(node0)
  node467 = Node_CreateNode("nod_vessel", "atl_scout1_11")
  Node_AddSon(node441, node467)
  Body_SetCS(node467, MAT_Vector3(2638.339821, 2864.371129, 250), MAT_Vector3(130.9937, 0, 0))
  Node_ParseIniFile(node467, "osd/atl/atl_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node467, 0)
  Body_SetNameKey(node467, -1)
  Body_SetCargoKey(node467, -1, 0)
  Body_SetCargoKey(node467, -1, 1)
  Body_SetCargoKey(node467, -1, 2)
  Node_EnterSimulation(node467)
  Game_LoadProgress_Advance(node0)
  node468 = Node_CreateNode("nod_vessel", "atl_scout1_12")
  Node_AddSon(node441, node468)
  Body_SetCS(node468, MAT_Vector3(3683.858762, 3279.304586, 250), MAT_Vector3(130.9937, 0, 0))
  Node_ParseIniFile(node468, "osd/atl/atl_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node468, 0)
  Body_SetNameKey(node468, -1)
  Body_SetCargoKey(node468, -1, 0)
  Body_SetCargoKey(node468, -1, 1)
  Body_SetCargoKey(node468, -1, 2)
  Node_EnterSimulation(node468)
  Game_LoadProgress_Advance(node0)
  node469 = Node_CreateNode("nod_vessel", "atl_scout1_13")
  Node_AddSon(node441, node469)
  Body_SetCS(node469, MAT_Vector3(3681.012114, 3307.773857, 250), MAT_Vector3(130.9937, 0, 0))
  Node_ParseIniFile(node469, "osd/atl/atl_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node469, 0)
  Body_SetNameKey(node469, -1)
  Body_SetCargoKey(node469, -1, 0)
  Body_SetCargoKey(node469, -1, 1)
  Body_SetCargoKey(node469, -1, 2)
  Node_EnterSimulation(node469)
  Game_LoadProgress_Advance(node0)
  node470 = Node_CreateNode("nod_vessel", "atl_scout1_14")
  Node_AddSon(node441, node470)
  Body_SetCS(node470, MAT_Vector3(3695.246428, 3329.837364, 250), MAT_Vector3(130.9937, 0, 0))
  Node_ParseIniFile(node470, "osd/atl/atl_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node470, 0)
  Body_SetNameKey(node470, -1)
  Body_SetCargoKey(node470, -1, 0)
  Body_SetCargoKey(node470, -1, 1)
  Body_SetCargoKey(node470, -1, 2)
  Node_EnterSimulation(node470)
  Game_LoadProgress_Advance(node0)
  node471 = Node_CreateNode("nod_vessel", "atl_scout1_15")
  Node_AddSon(node441, node471)
  Body_SetCS(node471, MAT_Vector3(3708.056986, 3315.602572, 250), MAT_Vector3(130.9937, 0, 0))
  Node_ParseIniFile(node471, "osd/atl/atl_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node471, 0)
  Body_SetNameKey(node471, -1)
  Body_SetCargoKey(node471, -1, 0)
  Body_SetCargoKey(node471, -1, 1)
  Body_SetCargoKey(node471, -1, 2)
  Node_EnterSimulation(node471)
  Game_LoadProgress_Advance(node0)
  node472 = Node_CreateNode("nod_vessel", "atl_scout1_16")
  Node_AddSon(node441, node472)
  Body_SetCS(node472, MAT_Vector3(2620.546965, 2838.749029, 250), MAT_Vector3(130.9937, 0, 0))
  Node_ParseIniFile(node472, "osd/atl/atl_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node472, 0)
  Body_SetNameKey(node472, -1)
  Body_SetCargoKey(node472, -1, 0)
  Body_SetCargoKey(node472, -1, 1)
  Body_SetCargoKey(node472, -1, 2)
  Node_EnterSimulation(node472)
  Game_LoadProgress_Advance(node0)
  node473 = Node_CreateNode("nod_vessel", "atl_scout1_17")
  Node_AddSon(node441, node473)
  Body_SetCS(node473, MAT_Vector3(2607.024293, 2850.848264, 250), MAT_Vector3(130.9937, 0, 0))
  Node_ParseIniFile(node473, "osd/atl/atl_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node473, 0)
  Body_SetNameKey(node473, -1)
  Body_SetCargoKey(node473, -1, 0)
  Body_SetCargoKey(node473, -1, 1)
  Body_SetCargoKey(node473, -1, 2)
  Node_EnterSimulation(node473)
  Game_LoadProgress_Advance(node0)
  node474 = Node_CreateNode("nod_vessel", "atl_scout1_18")
  Node_AddSon(node441, node474)
  Body_SetCS(node474, MAT_Vector3(2607.024, 2850.848, 250), MAT_Vector3(130.9937, 0, 0))
  Node_ParseIniFile(node474, "osd/atl/atl_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node474, 0)
  Body_SetNameKey(node474, -1)
  Body_SetCargoKey(node474, -1, 0)
  Body_SetCargoKey(node474, -1, 1)
  Body_SetCargoKey(node474, -1, 2)
  Node_EnterSimulation(node474)
  Game_LoadProgress_Advance(node0)
  node475 = Node_CreateNode("nod_vessel", "pir_sho_scout_1")
  Node_AddSon(node441, node475)
  Body_SetCS(node475, MAT_Vector3(153.489198, 3654.01402, 212.526519), MAT_Vector3(155.683701, 0, 0))
  Node_ParseIniFile(node475, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node475, 0)
  Body_SetNameKey(node475, -1)
  Body_SetCargoKey(node475, -1, 0)
  Body_SetCargoKey(node475, -1, 1)
  Body_SetCargoKey(node475, -1, 2)
  Node_EnterSimulation(node475)
  Game_LoadProgress_Advance(node0)
  node476 = Node_CreateNode("nod_vessel", "pir_sho_scout_2")
  Node_AddSon(node441, node476)
  Body_SetCS(node476, MAT_Vector3(67.489422, 3570.423922, 227.529151), MAT_Vector3(-42.442432, 0, 0))
  Node_ParseIniFile(node476, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node476, 0)
  Body_SetNameKey(node476, -1)
  Body_SetCargoKey(node476, -1, 0)
  Body_SetCargoKey(node476, -1, 1)
  Body_SetCargoKey(node476, -1, 2)
  Node_EnterSimulation(node476)
  Game_LoadProgress_Advance(node0)
  node477 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node477)
  Camera_SetBackPlane(node477, 750)
  Node_EnterSimulation(node477)
  Game_LoadProgress_Advance(node0)
  node478 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node478)
  Node_EnterSimulation(node478)
  Game_LoadProgress_Advance(node0)
  node479 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node478, node479)
  Node_EnterSimulation(node479)
  Game_LoadProgress_Advance(node0)
  node480 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node478, node480)
  Node_EnterSimulation(node480)
  Game_LoadProgress_Advance(node0)
  node481 = Node_CreateNode("NOD_Path", "PlayerPath_1")
  Node_AddSon(node480, node481)
  Game_LoadProgress_Advance(node0)
  node482 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node481, node482)
  Position_SetPosition(node482, MAT_Vector3(293.539177, 1630.331628, 252))
  Position_SetRadius(node482, 5)
  Game_LoadProgress_Advance(node0)
  node483 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node481, node483)
  Position_SetPosition(node483, MAT_Vector3(357.331238, 1761.459864, 252))
  Position_SetRadius(node483, 5)
  Game_LoadProgress_Advance(node0)
  node484 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node481, node484)
  Position_SetPosition(node484, MAT_Vector3(504.141929, 1918.028587, 220.719373))
  Position_SetRadius(node484, 5)
  Game_LoadProgress_Advance(node0)
  node485 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node481, node485)
  Position_SetPosition(node485, MAT_Vector3(647.994811, 2043.837878, 194.183127))
  Position_SetRadius(node485, 5)
  Game_LoadProgress_Advance(node0)
  node486 = Node_CreateNode("NOD_Path", "TechBomberPath_1")
  Node_AddSon(node480, node486)
  Game_LoadProgress_Advance(node0)
  node487 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node486, node487)
  Position_SetPosition(node487, MAT_Vector3(367.314038, 1643.649854, 252))
  Position_SetRadius(node487, 5)
  Game_LoadProgress_Advance(node0)
  node488 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node486, node488)
  Position_SetPosition(node488, MAT_Vector3(396.938589, 1748.980412, 252))
  Position_SetRadius(node488, 5)
  Game_LoadProgress_Advance(node0)
  node489 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node486, node489)
  Position_SetPosition(node489, MAT_Vector3(519.657041, 1902.047331, 220.7194))
  Position_SetRadius(node489, 5)
  Game_LoadProgress_Advance(node0)
  node490 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node486, node490)
  Position_SetPosition(node490, MAT_Vector3(676.770043, 2026.911271, 193.274759))
  Position_SetRadius(node490, 5)
  Game_LoadProgress_Advance(node0)
  node491 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node480, node491)
  Position_SetPosition(node491, MAT_Vector3(331.331752, 1737.748785, 243.053534))
  Position_SetRadius(node491, 5)
  Game_LoadProgress_Advance(node0)
  node492 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node478, node492)
  Node_EnterSimulation(node492)
  Game_LoadProgress_Advance(node0)
  node493 = Node_CreateNode("NOD_Director", "Intro")
  Node_AddSon(node492, node493)
  Node_EnterSimulation(node493)
  Game_LoadProgress_Advance(node0)
  node494 = Node_CreateNode("NOD_Director", "Intro_GotoPlayer")
  Node_AddSon(node492, node494)
  Node_EnterSimulation(node494)
  Game_LoadProgress_Advance(node0)
  node495 = Node_CreateNode("NOD_Director", "Intro_GotoTechBomber")
  Node_AddSon(node492, node495)
  Node_EnterSimulation(node495)
  Game_LoadProgress_Advance(node0)
  node496 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node478, node496)
  Node_EnterSimulation(node496)
  Game_LoadProgress_Advance(node0)
  node497 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node478, node497)
  Node_EnterSimulation(node497)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, E)
SetEnemyMatrixElement(2, 0, E)
SetEnemyMatrixElement(3, 0, F)
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
SetEnemyMatrixElement(0, 1, E)
SetEnemyMatrixElement(1, 1, F)
SetEnemyMatrixElement(2, 1, F)
SetEnemyMatrixElement(3, 1, F)
SetEnemyMatrixElement(4, 1, E)
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
SetEnemyMatrixElement(0, 2, E)
SetEnemyMatrixElement(1, 2, F)
SetEnemyMatrixElement(2, 2, F)
SetEnemyMatrixElement(3, 2, F)
SetEnemyMatrixElement(4, 2, E)
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
SetEnemyMatrixElement(0, 3, F)
SetEnemyMatrixElement(1, 3, F)
SetEnemyMatrixElement(2, 3, F)
SetEnemyMatrixElement(3, 3, F)
SetEnemyMatrixElement(4, 3, E)
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
SetEnemyMatrixElement(0, 4, F)
SetEnemyMatrixElement(1, 4, E)
SetEnemyMatrixElement(2, 4, E)
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
                                                                                                                                                                                                                                      if not (o5354.Value ~= True) then
                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                if not (True ~= True) then
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
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
end, ChangeTo1 = function()
  Game_MissionEnd(GetGameNode(), 2)
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
                                                                                                                                                                                                                                      if not (o5378.Value == True) then
                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                              if not (False == True) then
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
end, ReCalculate = function()
  o26.SetStateValue(o26.GetCalculated())
end, StartCalculate = function()
  o26["Value"] = o26.GetCalculated()
end, ChangeTo1 = function()
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
                                                                                                                                                                                                                                      if not (o5379.Value == True) then
                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                              if not (False == True) then
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
end, ReCalculate = function()
  o27.SetStateValue(o27.GetCalculated())
end, StartCalculate = function()
  o27["Value"] = o27.GetCalculated()
end, ChangeTo1 = function()
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
S_o31 = { [nil] = {}, Start = function(L0)

end }
S_o77 = { [nil] = {}, Start = function(L0)

end }
S_o123 = { [nil] = {}, Start = function(L0)

end }
S_o169 = { [nil] = {}, Start = function(L0)

end }
S_o215 = { [nil] = {}, Start = function(L0)

end }
S_o261 = { [nil] = {}, Start = function(L0)

end }
S_o307 = { [nil] = {}, Start = function(L0)

end }
S_o353 = { [nil] = {}, Start = function(L0)

end }
S_o399 = { [nil] = {}, Start = function(L0)

end }
S_o445 = { [nil] = {}, Start = function(L0)

end }
S_o491 = { [nil] = {}, Start = function(L0)

end }
S_o537 = { [nil] = {}, Start = function(L0)

end }
S_o583 = { [nil] = {}, Start = function(L0)

end }
S_o629 = { [nil] = {}, Start = function(L0)

end }
S_o675 = { [nil] = {}, Start = function(L0)

end }
S_o721 = { [nil] = {}, Start = function(L0)

end }
S_o767 = { [nil] = {}, Start = function(L0)

end }
S_o813 = { [nil] = {}, Start = function(L0)

end }
S_o859 = { [nil] = {}, Start = function(L0)

end }
S_o905 = { [nil] = {}, Start = function(L0)

end }
S_o951 = { [nil] = {}, Start = function(L0)

end }
S_o997 = { [nil] = {}, Start = function(L0)

end }
S_o1043 = { [nil] = {}, Start = function(L0)

end }
S_o1089 = { [nil] = {}, Start = function(L0)

end }
S_o1135 = { [nil] = {}, Start = function(L0)

end }
S_o1181 = { [nil] = {}, Start = function(L0)

end }
S_o1227 = { [nil] = {}, Start = function(L0)

end }
S_o1273 = { [nil] = {}, Start = function(L0)

end }
S_o1319 = { [nil] = {}, Start = function(L0)

end }
S_o1365 = { [nil] = {}, Start = function(L0)

end }
S_o1411 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1411, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1411, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1411, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -25, 70)
  CallFunction(o1411, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 400, "player1", "wng", "", "", "Code5")
  else
    CallFunction(o1411, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o1419.SetStateValue(L1)
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
o1419 = { [nil] = {}, Start = function()
  o1419["Value"] = False
  o5329.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1419.Value == L0) then
    o1419["Value"] = L0
    o5329.ReCalculate()
  end
end }
S_o1457 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1457, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1457, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1457, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -25, 70)
  CallFunction(o1457, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 400, "player1", "wng", "", "", "Code5")
  else
    CallFunction(o1457, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o1465.SetStateValue(L1)
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
o1465 = { [nil] = {}, Start = function()
  o1465["Value"] = False
  o5329.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1465.Value == L0) then
    o1465["Value"] = L0
    o5329.ReCalculate()
  end
end }
S_o1503 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1503, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1503, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1503, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -25, 60)
  CallFunction(o1503, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 400, "player1", "wng", "", "", "Code5")
  else
    CallFunction(o1503, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o1511.SetStateValue(L1)
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
o1511 = { [nil] = {}, Start = function()
  o1511["Value"] = False
  o5329.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1511.Value == L0) then
    o1511["Value"] = L0
    o5329.ReCalculate()
  end
end }
S_o1549 = { [nil] = {}, Start = function(L0)

end }
S_o1595 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1595, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1595, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1595, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o1595, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code6")
  else
    CallFunction(o1595, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1595, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1596.Value ~= True) then
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
o1596 = { [nil] = {}, GetCalculated = function()
  if not (o5335.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1596.SetStateValue(o1596.GetCalculated())
end, StartCalculate = function()
  o1596["Value"] = o1596.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1596.Value == L0) then
    DelayedFunction(4.478947, o1596, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1596.Value == L0) then
    o1596["Value"] = L0
    CallFunction(o1595, "ProcesseStateChange")
  end
end }
S_o1641 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1641, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1641, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1641, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o1641, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code6")
  else
    CallFunction(o1641, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1641, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1642.Value ~= True) then
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
o1642 = { [nil] = {}, GetCalculated = function()
  if not (o5335.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1642.SetStateValue(o1642.GetCalculated())
end, StartCalculate = function()
  o1642["Value"] = o1642.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1642.Value == L0) then
    DelayedFunction(4.478947, o1642, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1642.Value == L0) then
    o1642["Value"] = L0
    CallFunction(o1641, "ProcesseStateChange")
  end
end }
S_o1687 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1687, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1687, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1687, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o1687, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code6")
  else
    CallFunction(o1687, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1687, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1688.Value ~= True) then
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
o1688 = { [nil] = {}, GetCalculated = function()
  if not (o5335.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1688.SetStateValue(o1688.GetCalculated())
end, StartCalculate = function()
  o1688["Value"] = o1688.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1688.Value == L0) then
    DelayedFunction(4.478947, o1688, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1688.Value == L0) then
    o1688["Value"] = L0
    CallFunction(o1687, "ProcesseStateChange")
  end
end }
S_o1733 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1733, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1733, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1733, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o1733, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code6")
  else
    CallFunction(o1733, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1733, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1734.Value ~= True) then
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
o1734 = { [nil] = {}, GetCalculated = function()
  if not (o5335.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1734.SetStateValue(o1734.GetCalculated())
end, StartCalculate = function()
  o1734["Value"] = o1734.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1734.Value == L0) then
    DelayedFunction(4.478947, o1734, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1734.Value == L0) then
    o1734["Value"] = L0
    CallFunction(o1733, "ProcesseStateChange")
  end
end }
S_o1779 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1779, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1779, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1779, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o1779, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code6")
  else
    CallFunction(o1779, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1779, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1780.Value ~= True) then
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
o1780 = { [nil] = {}, GetCalculated = function()
  if not (o5335.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1780.SetStateValue(o1780.GetCalculated())
end, StartCalculate = function()
  o1780["Value"] = o1780.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1780.Value == L0) then
    DelayedFunction(4.478947, o1780, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1780.Value == L0) then
    o1780["Value"] = L0
    CallFunction(o1779, "ProcesseStateChange")
  end
end }
S_o1825 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1825, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1825, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1825, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o1825, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code6")
  else
    CallFunction(o1825, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1825, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1826.Value ~= True) then
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
o1826 = { [nil] = {}, GetCalculated = function()
  if not (o5335.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1826.SetStateValue(o1826.GetCalculated())
end, StartCalculate = function()
  o1826["Value"] = o1826.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1826.Value == L0) then
    DelayedFunction(4.478947, o1826, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1826.Value == L0) then
    o1826["Value"] = L0
    CallFunction(o1825, "ProcesseStateChange")
  end
end }
S_o1871 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1871, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1871, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1871, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o1871, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code6")
  else
    CallFunction(o1871, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1871, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1872.Value ~= True) then
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
o1872 = { [nil] = {}, GetCalculated = function()
  if not (o5335.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1872.SetStateValue(o1872.GetCalculated())
end, StartCalculate = function()
  o1872["Value"] = o1872.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1872.Value == L0) then
    DelayedFunction(4.478947, o1872, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1872.Value == L0) then
    o1872["Value"] = L0
    CallFunction(o1871, "ProcesseStateChange")
  end
end }
S_o1917 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1917, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1917, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1917, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o1917, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code6")
  else
    CallFunction(o1917, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1917, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1918.Value ~= True) then
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
o1918 = { [nil] = {}, GetCalculated = function()
  if not (o5335.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1918.SetStateValue(o1918.GetCalculated())
end, StartCalculate = function()
  o1918["Value"] = o1918.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1918.Value == L0) then
    DelayedFunction(4.478947, o1918, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1918.Value == L0) then
    o1918["Value"] = L0
    CallFunction(o1917, "ProcesseStateChange")
  end
end }
S_o1963 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1963, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1963, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1963, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o1963, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code6")
  else
    CallFunction(o1963, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1963, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1964.Value ~= True) then
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
o1964 = { [nil] = {}, GetCalculated = function()
  if not (o5335.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1964.SetStateValue(o1964.GetCalculated())
end, StartCalculate = function()
  o1964["Value"] = o1964.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1964.Value == L0) then
    DelayedFunction(4.478947, o1964, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1964.Value == L0) then
    o1964["Value"] = L0
    CallFunction(o1963, "ProcesseStateChange")
  end
end }
S_o2009 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2009, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2009, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2009, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o2009, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code6")
  else
    CallFunction(o2009, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2009, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2010.Value ~= True) then
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
o2010 = { [nil] = {}, GetCalculated = function()
  if not (o5335.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2010.SetStateValue(o2010.GetCalculated())
end, StartCalculate = function()
  o2010["Value"] = o2010.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2010.Value == L0) then
    DelayedFunction(4.478947, o2010, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2010.Value == L0) then
    o2010["Value"] = L0
    CallFunction(o2009, "ProcesseStateChange")
  end
end }
S_o2055 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2055, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2055, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2055, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2055, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o2055, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2056.Value ~= True) then
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
o2056 = { [nil] = {}, GetCalculated = function()
  if not (o5335.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2056.SetStateValue(o2056.GetCalculated())
end, StartCalculate = function()
  o2056["Value"] = o2056.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2056.Value == L0) then
    o2056["Value"] = L0
    CallFunction(o2055, "ProcesseStateChange")
  end
end }
S_o2103 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2103, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2103, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2103, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2103, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o2103, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2104.Value ~= True) then
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
o2104 = { [nil] = {}, GetCalculated = function()
  if not (o5335.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2104.SetStateValue(o2104.GetCalculated())
end, StartCalculate = function()
  o2104["Value"] = o2104.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2104.Value == L0) then
    o2104["Value"] = L0
    CallFunction(o2103, "ProcesseStateChange")
  end
end }
S_o2151 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2151, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2151, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2151, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2151, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o2151, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2152.Value ~= True) then
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
o2152 = { [nil] = {}, GetCalculated = function()
  if not (o5335.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2152.SetStateValue(o2152.GetCalculated())
end, StartCalculate = function()
  o2152["Value"] = o2152.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2152.Value == L0) then
    o2152["Value"] = L0
    CallFunction(o2151, "ProcesseStateChange")
  end
end }
S_o2199 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2199, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2199, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2199, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o2202.SetStateValue(L1)
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
o2202 = { [nil] = {}, Start = function()
  o2202["Value"] = False
  o2247.StartCalculate()
  o2293.StartCalculate()
  o2339.StartCalculate()
  o2385.StartCalculate()
  o2431.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2202.Value == L0) then
    o2202["Value"] = L0
    o2247.ReCalculate()
    o2293.ReCalculate()
    o2339.ReCalculate()
    o2385.ReCalculate()
    o2431.ReCalculate()
  end
end }
S_o2246 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2246, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2246, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2246, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o2246, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o2246, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2246, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o2254.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2247.Value ~= True) then
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
o2247 = { [nil] = {}, GetCalculated = function()
  if not (o2202.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2247.SetStateValue(o2247.GetCalculated())
end, StartCalculate = function()
  o2247["Value"] = o2247.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2247.Value == L0) then
    DelayedFunction(2.478947, o2247, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2247.Value == L0) then
    o2247["Value"] = L0
    CallFunction(o2246, "ProcesseStateChange")
  end
end }
o2254 = { [nil] = {}, Start = function()
  o2254["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2254.Value == L0) then
    o2254["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o2292 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2292, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2292, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2292, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o2292, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o2292, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2292, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o2300.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2293.Value ~= True) then
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
o2293 = { [nil] = {}, GetCalculated = function()
  if not (o2202.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2293.SetStateValue(o2293.GetCalculated())
end, StartCalculate = function()
  o2293["Value"] = o2293.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2293.Value == L0) then
    DelayedFunction(2.478947, o2293, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2293.Value == L0) then
    o2293["Value"] = L0
    CallFunction(o2292, "ProcesseStateChange")
  end
end }
o2300 = { [nil] = {}, Start = function()
  o2300["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2300.Value == L0) then
    o2300["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o2338 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2338, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2338, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2338, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o2338, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o2338, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2338, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o2346.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2339.Value ~= True) then
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
o2339 = { [nil] = {}, GetCalculated = function()
  if not (o2202.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2339.SetStateValue(o2339.GetCalculated())
end, StartCalculate = function()
  o2339["Value"] = o2339.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2339.Value == L0) then
    DelayedFunction(2.478947, o2339, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2339.Value == L0) then
    o2339["Value"] = L0
    CallFunction(o2338, "ProcesseStateChange")
  end
end }
o2346 = { [nil] = {}, Start = function()
  o2346["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2346.Value == L0) then
    o2346["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o2384 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2384, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2384, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2384, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o2384, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o2384, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2384, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o2392.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2385.Value ~= True) then
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
o2385 = { [nil] = {}, GetCalculated = function()
  if not (o2202.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2385.SetStateValue(o2385.GetCalculated())
end, StartCalculate = function()
  o2385["Value"] = o2385.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2385.Value == L0) then
    DelayedFunction(2.478947, o2385, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2385.Value == L0) then
    o2385["Value"] = L0
    CallFunction(o2384, "ProcesseStateChange")
  end
end }
o2392 = { [nil] = {}, Start = function()
  o2392["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2392.Value == L0) then
    o2392["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o2430 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2430, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2430, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2430, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o2430, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o2430, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2430, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o2438.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2431.Value ~= True) then
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
o2431 = { [nil] = {}, GetCalculated = function()
  if not (o2202.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2431.SetStateValue(o2431.GetCalculated())
end, StartCalculate = function()
  o2431["Value"] = o2431.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2431.Value == L0) then
    DelayedFunction(2.478947, o2431, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2431.Value == L0) then
    o2431["Value"] = L0
    CallFunction(o2430, "ProcesseStateChange")
  end
end }
o2438 = { [nil] = {}, Start = function()
  o2438["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2438.Value == L0) then
    o2438["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o2476 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2476, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2476, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2476, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o2479.SetStateValue(L1)
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
o2479 = { [nil] = {}, Start = function()
  o2479["Value"] = False
  o2524.StartCalculate()
  o2570.StartCalculate()
  o2616.StartCalculate()
  o2662.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2479.Value == L0) then
    o2479["Value"] = L0
    o2524.ReCalculate()
    o2570.ReCalculate()
    o2616.ReCalculate()
    o2662.ReCalculate()
  end
end }
S_o2523 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2523, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2523, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2523, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o2523, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o2523, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2523, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o2531.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2524.Value ~= True) then
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
o2524 = { [nil] = {}, GetCalculated = function()
  if not (o2479.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2524.SetStateValue(o2524.GetCalculated())
end, StartCalculate = function()
  o2524["Value"] = o2524.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2524.Value == L0) then
    DelayedFunction(2.478947, o2524, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2524.Value == L0) then
    o2524["Value"] = L0
    CallFunction(o2523, "ProcesseStateChange")
  end
end }
o2531 = { [nil] = {}, Start = function()
  o2531["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2531.Value == L0) then
    o2531["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o2569 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2569, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2569, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2569, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o2569, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o2569, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2569, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o2577.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2570.Value ~= True) then
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
o2570 = { [nil] = {}, GetCalculated = function()
  if not (o2479.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2570.SetStateValue(o2570.GetCalculated())
end, StartCalculate = function()
  o2570["Value"] = o2570.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2570.Value == L0) then
    DelayedFunction(2.478947, o2570, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2570.Value == L0) then
    o2570["Value"] = L0
    CallFunction(o2569, "ProcesseStateChange")
  end
end }
o2577 = { [nil] = {}, Start = function()
  o2577["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2577.Value == L0) then
    o2577["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o2615 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2615, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2615, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2615, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o2615, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o2615, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2615, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o2623.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2616.Value ~= True) then
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
o2616 = { [nil] = {}, GetCalculated = function()
  if not (o2479.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2616.SetStateValue(o2616.GetCalculated())
end, StartCalculate = function()
  o2616["Value"] = o2616.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2616.Value == L0) then
    DelayedFunction(2.478947, o2616, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2616.Value == L0) then
    o2616["Value"] = L0
    CallFunction(o2615, "ProcesseStateChange")
  end
end }
o2623 = { [nil] = {}, Start = function()
  o2623["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2623.Value == L0) then
    o2623["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o2661 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2661, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2661, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2661, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o2661, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o2661, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2661, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o2669.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2662.Value ~= True) then
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
o2662 = { [nil] = {}, GetCalculated = function()
  if not (o2479.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2662.SetStateValue(o2662.GetCalculated())
end, StartCalculate = function()
  o2662["Value"] = o2662.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2662.Value == L0) then
    DelayedFunction(2.478947, o2662, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2662.Value == L0) then
    o2662["Value"] = L0
    CallFunction(o2661, "ProcesseStateChange")
  end
end }
o2669 = { [nil] = {}, Start = function()
  o2669["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2669.Value == L0) then
    o2669["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o2707 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2707, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2707, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2707, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o2710.SetStateValue(L1)
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
o2710 = { [nil] = {}, Start = function()
  o2710["Value"] = False
  o2755.StartCalculate()
  o2801.StartCalculate()
  o2847.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2710.Value == L0) then
    o2710["Value"] = L0
    o2755.ReCalculate()
    o2801.ReCalculate()
    o2847.ReCalculate()
  end
end }
S_o2754 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2754, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2754, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2754, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o2754, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o2754, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2754, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o2762.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2755.Value ~= True) then
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
o2755 = { [nil] = {}, GetCalculated = function()
  if not (o2710.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2755.SetStateValue(o2755.GetCalculated())
end, StartCalculate = function()
  o2755["Value"] = o2755.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2755.Value == L0) then
    DelayedFunction(2.478947, o2755, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2755.Value == L0) then
    o2755["Value"] = L0
    CallFunction(o2754, "ProcesseStateChange")
  end
end }
o2762 = { [nil] = {}, Start = function()
  o2762["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2762.Value == L0) then
    o2762["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o2800 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2800, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2800, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2800, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o2800, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o2800, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2800, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o2808.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2801.Value ~= True) then
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
o2801 = { [nil] = {}, GetCalculated = function()
  if not (o2710.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2801.SetStateValue(o2801.GetCalculated())
end, StartCalculate = function()
  o2801["Value"] = o2801.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2801.Value == L0) then
    DelayedFunction(2.478947, o2801, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2801.Value == L0) then
    o2801["Value"] = L0
    CallFunction(o2800, "ProcesseStateChange")
  end
end }
o2808 = { [nil] = {}, Start = function()
  o2808["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2808.Value == L0) then
    o2808["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o2846 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2846, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2846, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2846, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o2846, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o2846, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2846, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o2854.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2847.Value ~= True) then
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
o2847 = { [nil] = {}, GetCalculated = function()
  if not (o2710.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2847.SetStateValue(o2847.GetCalculated())
end, StartCalculate = function()
  o2847["Value"] = o2847.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2847.Value == L0) then
    DelayedFunction(2.478947, o2847, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2847.Value == L0) then
    o2847["Value"] = L0
    CallFunction(o2846, "ProcesseStateChange")
  end
end }
o2854 = { [nil] = {}, Start = function()
  o2854["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2854.Value == L0) then
    o2854["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o2892 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2892, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2892, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2892, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o2895.SetStateValue(L1)
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
o2895 = { [nil] = {}, Start = function()
  o2895["Value"] = False
  o2940.StartCalculate()
  o2986.StartCalculate()
  o3032.StartCalculate()
  o3078.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2895.Value == L0) then
    o2895["Value"] = L0
    o2940.ReCalculate()
    o2986.ReCalculate()
    o3032.ReCalculate()
    o3078.ReCalculate()
  end
end }
S_o2939 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2939, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2939, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2939, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o2939, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o2939, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2939, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o2947.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2940.Value ~= True) then
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
o2940 = { [nil] = {}, GetCalculated = function()
  if not (o2895.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2940.SetStateValue(o2940.GetCalculated())
end, StartCalculate = function()
  o2940["Value"] = o2940.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2940.Value == L0) then
    DelayedFunction(2.478947, o2940, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2940.Value == L0) then
    o2940["Value"] = L0
    CallFunction(o2939, "ProcesseStateChange")
  end
end }
o2947 = { [nil] = {}, Start = function()
  o2947["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2947.Value == L0) then
    o2947["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o2985 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2985, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2985, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2985, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o2985, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o2985, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2985, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o2993.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2986.Value ~= True) then
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
o2986 = { [nil] = {}, GetCalculated = function()
  if not (o2895.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2986.SetStateValue(o2986.GetCalculated())
end, StartCalculate = function()
  o2986["Value"] = o2986.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2986.Value == L0) then
    DelayedFunction(2.478947, o2986, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2986.Value == L0) then
    o2986["Value"] = L0
    CallFunction(o2985, "ProcesseStateChange")
  end
end }
o2993 = { [nil] = {}, Start = function()
  o2993["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2993.Value == L0) then
    o2993["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o3031 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3031, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3031, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3031, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o3031, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o3031, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3031, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o3039.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3032.Value ~= True) then
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
o3032 = { [nil] = {}, GetCalculated = function()
  if not (o2895.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3032.SetStateValue(o3032.GetCalculated())
end, StartCalculate = function()
  o3032["Value"] = o3032.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3032.Value == L0) then
    DelayedFunction(2.478947, o3032, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3032.Value == L0) then
    o3032["Value"] = L0
    CallFunction(o3031, "ProcesseStateChange")
  end
end }
o3039 = { [nil] = {}, Start = function()
  o3039["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3039.Value == L0) then
    o3039["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o3077 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3077, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3077, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3077, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o3077, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o3077, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3077, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o3085.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3078.Value ~= True) then
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
o3078 = { [nil] = {}, GetCalculated = function()
  if not (o2895.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3078.SetStateValue(o3078.GetCalculated())
end, StartCalculate = function()
  o3078["Value"] = o3078.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3078.Value == L0) then
    DelayedFunction(2.478947, o3078, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3078.Value == L0) then
    o3078["Value"] = L0
    CallFunction(o3077, "ProcesseStateChange")
  end
end }
o3085 = { [nil] = {}, Start = function()
  o3085["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3085.Value == L0) then
    o3085["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o3123 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3123, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3123, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3123, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o3126.SetStateValue(L1)
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
o3126 = { [nil] = {}, Start = function()
  o3126["Value"] = False
  o3171.StartCalculate()
  o3217.StartCalculate()
  o3263.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3126.Value == L0) then
    o3126["Value"] = L0
    o3171.ReCalculate()
    o3217.ReCalculate()
    o3263.ReCalculate()
  end
end }
S_o3170 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3170, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3170, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3170, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o3170, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o3170, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3170, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o3178.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3171.Value ~= True) then
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
o3171 = { [nil] = {}, GetCalculated = function()
  if not (o3126.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3171.SetStateValue(o3171.GetCalculated())
end, StartCalculate = function()
  o3171["Value"] = o3171.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3171.Value == L0) then
    DelayedFunction(2.478947, o3171, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3171.Value == L0) then
    o3171["Value"] = L0
    CallFunction(o3170, "ProcesseStateChange")
  end
end }
o3178 = { [nil] = {}, Start = function()
  o3178["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3178.Value == L0) then
    o3178["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o3216 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3216, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3216, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3216, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o3216, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o3216, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3216, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o3224.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3217.Value ~= True) then
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
o3217 = { [nil] = {}, GetCalculated = function()
  if not (o3126.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3217.SetStateValue(o3217.GetCalculated())
end, StartCalculate = function()
  o3217["Value"] = o3217.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3217.Value == L0) then
    DelayedFunction(2.478947, o3217, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3217.Value == L0) then
    o3217["Value"] = L0
    CallFunction(o3216, "ProcesseStateChange")
  end
end }
o3224 = { [nil] = {}, Start = function()
  o3224["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3224.Value == L0) then
    o3224["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o3262 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3262, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3262, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3262, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o3262, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o3262, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3262, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o3270.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3263.Value ~= True) then
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
o3263 = { [nil] = {}, GetCalculated = function()
  if not (o3126.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3263.SetStateValue(o3263.GetCalculated())
end, StartCalculate = function()
  o3263["Value"] = o3263.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3263.Value == L0) then
    DelayedFunction(2.478947, o3263, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3263.Value == L0) then
    o3263["Value"] = L0
    CallFunction(o3262, "ProcesseStateChange")
  end
end }
o3270 = { [nil] = {}, Start = function()
  o3270["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3270.Value == L0) then
    o3270["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o3308 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3308, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3308, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3308, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o3311.SetStateValue(L1)
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
o3311 = { [nil] = {}, Start = function()
  o3311["Value"] = False
  o3356.StartCalculate()
  o3402.StartCalculate()
  o3448.StartCalculate()
  o3494.StartCalculate()
  o3540.StartCalculate()
  o3586.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3311.Value == L0) then
    o3311["Value"] = L0
    o3356.ReCalculate()
    o3402.ReCalculate()
    o3448.ReCalculate()
    o3494.ReCalculate()
    o3540.ReCalculate()
    o3586.ReCalculate()
  end
end }
S_o3355 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3355, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3355, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3355, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o3355, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o3355, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3355, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o3363.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3356.Value ~= True) then
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
o3356 = { [nil] = {}, GetCalculated = function()
  if not (o3311.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3356.SetStateValue(o3356.GetCalculated())
end, StartCalculate = function()
  o3356["Value"] = o3356.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3356.Value == L0) then
    DelayedFunction(2.478947, o3356, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3356.Value == L0) then
    o3356["Value"] = L0
    CallFunction(o3355, "ProcesseStateChange")
  end
end }
o3363 = { [nil] = {}, Start = function()
  o3363["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3363.Value == L0) then
    o3363["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o3401 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3401, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3401, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3401, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o3401, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o3401, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3401, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o3409.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3402.Value ~= True) then
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
o3402 = { [nil] = {}, GetCalculated = function()
  if not (o3311.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3402.SetStateValue(o3402.GetCalculated())
end, StartCalculate = function()
  o3402["Value"] = o3402.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3402.Value == L0) then
    DelayedFunction(2.478947, o3402, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3402.Value == L0) then
    o3402["Value"] = L0
    CallFunction(o3401, "ProcesseStateChange")
  end
end }
o3409 = { [nil] = {}, Start = function()
  o3409["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3409.Value == L0) then
    o3409["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o3447 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3447, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3447, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3447, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o3447, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o3447, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3447, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o3455.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3448.Value ~= True) then
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
o3448 = { [nil] = {}, GetCalculated = function()
  if not (o3311.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3448.SetStateValue(o3448.GetCalculated())
end, StartCalculate = function()
  o3448["Value"] = o3448.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3448.Value == L0) then
    DelayedFunction(2.478947, o3448, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3448.Value == L0) then
    o3448["Value"] = L0
    CallFunction(o3447, "ProcesseStateChange")
  end
end }
o3455 = { [nil] = {}, Start = function()
  o3455["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3455.Value == L0) then
    o3455["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o3493 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3493, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3493, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3493, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o3493, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o3493, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3493, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o3501.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3494.Value ~= True) then
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
o3494 = { [nil] = {}, GetCalculated = function()
  if not (o3311.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3494.SetStateValue(o3494.GetCalculated())
end, StartCalculate = function()
  o3494["Value"] = o3494.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3494.Value == L0) then
    DelayedFunction(2.478947, o3494, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3494.Value == L0) then
    o3494["Value"] = L0
    CallFunction(o3493, "ProcesseStateChange")
  end
end }
o3501 = { [nil] = {}, Start = function()
  o3501["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3501.Value == L0) then
    o3501["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o3539 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3539, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3539, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3539, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o3539, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o3539, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3539, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o3547.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3540.Value ~= True) then
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
o3540 = { [nil] = {}, GetCalculated = function()
  if not (o3311.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3540.SetStateValue(o3540.GetCalculated())
end, StartCalculate = function()
  o3540["Value"] = o3540.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3540.Value == L0) then
    DelayedFunction(2.478947, o3540, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3540.Value == L0) then
    o3540["Value"] = L0
    CallFunction(o3539, "ProcesseStateChange")
  end
end }
o3547 = { [nil] = {}, Start = function()
  o3547["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3547.Value == L0) then
    o3547["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o3585 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3585, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3585, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3585, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o3585, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o3585, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3585, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o3593.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3586.Value ~= True) then
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
o3586 = { [nil] = {}, GetCalculated = function()
  if not (o3311.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3586.SetStateValue(o3586.GetCalculated())
end, StartCalculate = function()
  o3586["Value"] = o3586.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3586.Value == L0) then
    DelayedFunction(2.478947, o3586, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3586.Value == L0) then
    o3586["Value"] = L0
    CallFunction(o3585, "ProcesseStateChange")
  end
end }
o3593 = { [nil] = {}, Start = function()
  o3593["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3593.Value == L0) then
    o3593["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o3631 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3631, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3631, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3631, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o3634.SetStateValue(L1)
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
o3634 = { [nil] = {}, Start = function()
  o3634["Value"] = False
  o3679.StartCalculate()
  o3725.StartCalculate()
  o3771.StartCalculate()
  o3817.StartCalculate()
  o3863.StartCalculate()
  o3909.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3634.Value == L0) then
    o3634["Value"] = L0
    o3679.ReCalculate()
    o3725.ReCalculate()
    o3771.ReCalculate()
    o3817.ReCalculate()
    o3863.ReCalculate()
    o3909.ReCalculate()
  end
end }
S_o3678 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3678, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3678, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3678, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o3678, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o3678, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3678, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o3686.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3679.Value ~= True) then
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
o3679 = { [nil] = {}, GetCalculated = function()
  if not (o3634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3679.SetStateValue(o3679.GetCalculated())
end, StartCalculate = function()
  o3679["Value"] = o3679.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3679.Value == L0) then
    DelayedFunction(2.478947, o3679, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3679.Value == L0) then
    o3679["Value"] = L0
    CallFunction(o3678, "ProcesseStateChange")
  end
end }
o3686 = { [nil] = {}, Start = function()
  o3686["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3686.Value == L0) then
    o3686["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o3724 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3724, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3724, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3724, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o3724, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o3724, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3724, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o3732.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3725.Value ~= True) then
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
o3725 = { [nil] = {}, GetCalculated = function()
  if not (o3634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3725.SetStateValue(o3725.GetCalculated())
end, StartCalculate = function()
  o3725["Value"] = o3725.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3725.Value == L0) then
    DelayedFunction(2.478947, o3725, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3725.Value == L0) then
    o3725["Value"] = L0
    CallFunction(o3724, "ProcesseStateChange")
  end
end }
o3732 = { [nil] = {}, Start = function()
  o3732["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3732.Value == L0) then
    o3732["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o3770 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3770, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3770, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3770, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o3770, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o3770, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3770, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o3778.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3771.Value ~= True) then
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
o3771 = { [nil] = {}, GetCalculated = function()
  if not (o3634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3771.SetStateValue(o3771.GetCalculated())
end, StartCalculate = function()
  o3771["Value"] = o3771.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3771.Value == L0) then
    DelayedFunction(2.478947, o3771, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3771.Value == L0) then
    o3771["Value"] = L0
    CallFunction(o3770, "ProcesseStateChange")
  end
end }
o3778 = { [nil] = {}, Start = function()
  o3778["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3778.Value == L0) then
    o3778["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o3816 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3816, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3816, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3816, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o3816, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o3816, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3816, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o3824.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3817.Value ~= True) then
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
o3817 = { [nil] = {}, GetCalculated = function()
  if not (o3634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3817.SetStateValue(o3817.GetCalculated())
end, StartCalculate = function()
  o3817["Value"] = o3817.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3817.Value == L0) then
    DelayedFunction(2.478947, o3817, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3817.Value == L0) then
    o3817["Value"] = L0
    CallFunction(o3816, "ProcesseStateChange")
  end
end }
o3824 = { [nil] = {}, Start = function()
  o3824["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3824.Value == L0) then
    o3824["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o3862 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3862, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3862, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3862, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o3862, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o3862, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3862, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o3870.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3863.Value ~= True) then
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
o3863 = { [nil] = {}, GetCalculated = function()
  if not (o3634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3863.SetStateValue(o3863.GetCalculated())
end, StartCalculate = function()
  o3863["Value"] = o3863.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3863.Value == L0) then
    DelayedFunction(2.478947, o3863, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3863.Value == L0) then
    o3863["Value"] = L0
    CallFunction(o3862, "ProcesseStateChange")
  end
end }
o3870 = { [nil] = {}, Start = function()
  o3870["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3870.Value == L0) then
    o3870["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o3908 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3908, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3908, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3908, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o3908, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 400, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o3908, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3908, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o3916.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3909.Value ~= True) then
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
o3909 = { [nil] = {}, GetCalculated = function()
  if not (o3634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3909.SetStateValue(o3909.GetCalculated())
end, StartCalculate = function()
  o3909["Value"] = o3909.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3909.Value == L0) then
    DelayedFunction(2.478947, o3909, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3909.Value == L0) then
    o3909["Value"] = L0
    CallFunction(o3908, "ProcesseStateChange")
  end
end }
o3916 = { [nil] = {}, Start = function()
  o3916["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3916.Value == L0) then
    o3916["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o3954 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3954, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3954, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3954, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o3957.SetStateValue(L1)
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
o3957 = { [nil] = {}, Start = function()
  o3957["Value"] = False
  o5350.StartCalculate()
  o5351.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3957.Value == L0) then
    o3957["Value"] = L0
    o5350.ReCalculate()
    o5351.ReCalculate()
  end
end }
S_o4001 = { [nil] = {}, Start = function(L0)

end }
S_o4047 = { [nil] = {}, Start = function(L0)

end }
S_o4093 = { [nil] = {}, Start = function(L0)

end }
S_o4139 = { [nil] = {}, Start = function(L0)

end }
S_o4185 = { [nil] = {}, Start = function(L0)

end }
S_o4231 = { [nil] = {}, Start = function(L0)

end }
S_o4277 = { [nil] = {}, Start = function(L0)

end }
S_o4323 = { [nil] = {}, Start = function(L0)

end }
S_o4369 = { [nil] = {}, Start = function(L0)

end }
S_o4415 = { [nil] = {}, Start = function(L0)

end }
S_o4461 = { [nil] = {}, Start = function(L0)

end }
S_o4507 = { [nil] = {}, Start = function(L0)

end }
S_o4553 = { [nil] = {}, Start = function(L0)

end }
S_o4599 = { [nil] = {}, Start = function(L0)

end }
S_o4645 = { [nil] = {}, Start = function(L0)

end }
S_o4691 = { [nil] = {}, Start = function(L0)

end }
S_o4737 = { [nil] = {}, Start = function(L0)

end }
S_o4783 = { [nil] = {}, Start = function(L0)

end }
S_o4829 = { [nil] = {}, Start = function(L0)

end }
S_o4875 = { [nil] = {}, Start = function(L0)

end }
S_o4921 = { [nil] = {}, Start = function(L0)

end }
S_o4967 = { [nil] = {}, Start = function(L0)

end }
S_o5013 = { [nil] = {}, Start = function(L0)

end }
S_o5059 = { [nil] = {}, Start = function(L0)

end }
S_o5105 = { [nil] = {}, Start = function(L0)

end }
S_o5151 = { [nil] = {}, Start = function(L0)

end }
S_o5197 = { [nil] = {}, Start = function(L0)

end }
S_o5243 = { [nil] = {}, Start = function(L0)

end }
o5289 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/VehicleDock3_ApproachPath", "/Scenario_Dynamic/Navigation/VehicleDock3_DockPath", "/Scenario_Dynamic/Navigation/VehicleDock3_DockPatrolArea")
o5290 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/Outpost1_ApproachPath", "/Scenario_Dynamic/Navigation/Outpost1_DockPath", "/Scenario_Dynamic/Navigation/Outpost1_DockPatrolArea")
o5291 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/Outpost2_ApproachPath", "/Scenario_Dynamic/Navigation/Outpost2_DockPath", "/Scenario_Dynamic/Navigation/Outpost2_DockPatrolArea")
o5292 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/dm_harvester_1_approachPath", "/Scenario_Dynamic/Navigation/dm_harvester_1_dockPath", "/Scenario_Dynamic/Navigation/dm_harvester_1_area")
S_o5293 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5293, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5293, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5293, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o5293, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5293, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5293, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5298.SetStateValue(L1)
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
o5298 = { [nil] = {}, Start = function()
  o5298["Value"] = False
  o5327.StartCalculate()
  o5328.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5298.Value == L0) then
    o5298["Value"] = L0
    o5327.ReCalculate()
    o5328.ReCalculate()
  end
end }
S_o5299 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5299, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5299, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5299, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "Eerie", "", "", "", False, False, True)
  CallFunction(o5299, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5299, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5299, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5304.SetStateValue(L1)
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
o5304 = { [nil] = {}, Start = function()
  o5304["Value"] = False
  o5325.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5304.Value == L0) then
    o5304["Value"] = L0
    o5325.ReCalculate()
  end
end }
S_o5305 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5305, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5305, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5305, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o5305, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5305, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5305, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5310.SetStateValue(L1)
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
o5310 = { [nil] = {}, Start = function()
  o5310["Value"] = False
  o6944.StartCalculate()
  o7000.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5310.Value == L0) then
    o5310["Value"] = L0
    o6944.ReCalculate()
    o7000.ReCalculate()
  end
end }
S_o5311 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_nailgun", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_shell", 99999)
  Body_AddItem(L0.Node, "gun_flak", 1)
  Body_AddItem(L0.Node, "device_generator1", 1)
  Body_AddItem(L0.Node, "ammo_energy", 200)
  Body_AddItem(L0.Node, "torpedo_tigershark", 2)
  Body_AddItem(L0.Node, "torpedo_flashshark", 1)
  Body_AddItem(L0.Node, "torpedo_stanley", 1)
  Body_AddItem(L0.Node, "gun_empactor", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 8)
  CallFunction(o5311, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
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
o5325 = { [nil] = {}, GetCalculated = function()
  if not (o5304.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5325.SetStateValue(o5325.GetCalculated())
end, StartCalculate = function()
  o5325["Value"] = o5325.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5513.Node, o5311.Node, 294)
  SED_SetTaskTextKey(2101, -1, -1)
end, SetStateValue = function(L0)
  if not (o5325.Value == L0) then
    o5325["Value"] = L0
    if not (L0 ~= 1) then
      o5325.ChangeTo1()
    end
  end
end }
o5326 = { [nil] = {}, GetCalculated = function()
  if not (o5629.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5326.SetStateValue(o5326.GetCalculated())
end, StartCalculate = function()
  o5326["Value"] = o5326.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o5666, "Code7")
end, SetStateValue = function(L0)
  if not (o5326.Value == L0) then
    DelayedFunction(10.97657, o5326, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5326.Value == L0) then
    o5326["Value"] = L0
    if not (L0 ~= 1) then
      o5326.ChangeTo1()
    end
  end
end }
o5327 = { [nil] = {}, GetCalculated = function()
  if not (o5298.Value == True) then
    if not (o5673.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5327.SetStateValue(o5327.GetCalculated())
end, StartCalculate = function()
  o5327["Value"] = o5327.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o5666, "Code11")
end, SetStateValue = function(L0)
  if not (o5327.Value == L0) then
    DelayedFunction(2, o5327, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5327.Value == L0) then
    o5327["Value"] = L0
    if not (L0 ~= 1) then
      o5327.ChangeTo1()
    end
  end
end }
o5328 = { [nil] = {}, GetCalculated = function()
  if not (o5622.Value == True) then
    if not (o5298.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5328.SetStateValue(o5328.GetCalculated())
end, StartCalculate = function()
  o5328["Value"] = o5328.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o5617, "Code7")
end, SetStateValue = function(L0)
  if not (o5328.Value == L0) then
    DelayedFunction(2, o5328, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5328.Value == L0) then
    o5328["Value"] = L0
    if not (L0 ~= 1) then
      o5328.ChangeTo1()
    end
  end
end }
o5329 = { [nil] = {}, GetCalculated = function()
  if not (o1419.Value ~= True) then
    if not (o1465.Value ~= True) then
      if not (o1511.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o5329.SetStateValue(o5329.GetCalculated())
end, StartCalculate = function()
  o5329["Value"] = o5329.GetCalculated()
  o5330.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5329.Value == L0) then
    o5329["Value"] = L0
    o5330.ReCalculate()
  end
end }
o5330 = { [nil] = {}, GetCalculated = function()
  if not (o5629.Value ~= True) then
    if not (o5680.Value ~= True) then
      if not (o5578.Value ~= True) then
        if not (o5329.Value ~= True) then
          return 1
        else
          return 0
        end
      end
    end
  end
end, ReCalculate = function()
  o5330.SetStateValue(o5330.GetCalculated())
end, StartCalculate = function()
  o5330["Value"] = o5330.GetCalculated()
  o5401.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2101)
end, SetStateValue = function(L0)
  if not (o5330.Value == L0) then
    o5330["Value"] = L0
    o5401.ReCalculate()
    if not (L0 ~= 1) then
      o5330.ChangeTo1()
    end
  end
end }
o5331 = { [nil] = {}, Start = function()
  o5331["Value"] = False
  o5468.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5331.Value == L0) then
    o5331["Value"] = L0
    o5468.ReCalculate()
  end
end }
o5332 = { [nil] = {}, Start = function()
  o5332["Value"] = False
  o5739.StartCalculate()
  o5786.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5332.Value == L0) then
    o5332["Value"] = L0
    o5739.ReCalculate()
    o5786.ReCalculate()
  end
end }
o5333 = { [nil] = {}, GetCalculated = function()
  if not (o5741.Value ~= True) then
    if not (o5788.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5333.SetStateValue(o5333.GetCalculated())
end, StartCalculate = function()
  o5333["Value"] = o5333.GetCalculated()
  o5458.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5455.Node, o5311.Node, 297)
end, SetStateValue = function(L0)
  if not (o5333.Value == L0) then
    DelayedFunction(10, o5333, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5333.Value == L0) then
    o5333["Value"] = L0
    o5458.ReCalculate()
    if not (L0 ~= 1) then
      o5333.ChangeTo1()
    end
  end
end }
o5334 = { [nil] = {}, GetCalculated = function()
  if not (o5747.Value ~= True) then
    if not (o5794.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5334.SetStateValue(o5334.GetCalculated())
end, StartCalculate = function()
  o5334["Value"] = o5334.GetCalculated()
  o5459.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5334.Value == L0) then
    o5334["Value"] = L0
    o5459.ReCalculate()
  end
end }
o5335 = { [nil] = {}, Start = function()
  o5335["Value"] = False
  o1596.StartCalculate()
  o1642.StartCalculate()
  o1688.StartCalculate()
  o1734.StartCalculate()
  o1780.StartCalculate()
  o1826.StartCalculate()
  o1872.StartCalculate()
  o1918.StartCalculate()
  o1964.StartCalculate()
  o2010.StartCalculate()
  o2056.StartCalculate()
  o2104.StartCalculate()
  o2152.StartCalculate()
  o5336.StartCalculate()
  o5834.StartCalculate()
  o5891.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5335.Value == L0) then
    o5335["Value"] = L0
    o1596.ReCalculate()
    o1642.ReCalculate()
    o1688.ReCalculate()
    o1734.ReCalculate()
    o1780.ReCalculate()
    o1826.ReCalculate()
    o1872.ReCalculate()
    o1918.ReCalculate()
    o1964.ReCalculate()
    o2010.ReCalculate()
    o2056.ReCalculate()
    o2104.ReCalculate()
    o2152.ReCalculate()
    o5336.ReCalculate()
    o5834.ReCalculate()
    o5891.ReCalculate()
  end
end }
o5336 = { [nil] = {}, GetCalculated = function()
  if not (o5335.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5336.SetStateValue(o5336.GetCalculated())
end, StartCalculate = function()
  o5336["Value"] = o5336.GetCalculated()
end, ChangeTo1 = function()
  SetEnemyMatrixElement(0, 3, E)
  SetEnemyMatrixElement(3, 0, E)
end, SetStateValue = function(L0)
  if not (o5336.Value == L0) then
    DelayedFunction(2, o5336, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5336.Value == L0) then
    o5336["Value"] = L0
    if not (L0 ~= 1) then
      o5336.ChangeTo1()
    end
  end
end }
o5337 = { [nil] = {}, GetCalculated = function()
  if not (o5847.Value ~= True) then
    if not (o5904.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5337.SetStateValue(o5337.GetCalculated())
end, StartCalculate = function()
  o5337["Value"] = o5337.GetCalculated()
  o5466.StartCalculate()
  o6272.StartCalculate()
  o6328.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5513.Node, o5311.Node, 300)
end, SetStateValue = function(L0)
  if not (o5337.Value == L0) then
    o5337["Value"] = L0
    o5466.ReCalculate()
    o6272.ReCalculate()
    o6328.ReCalculate()
    if not (L0 ~= 1) then
      o5337.ChangeTo1()
    end
  end
end }
o5338 = { [nil] = {}, Start = function()
  o5338["Value"] = False
  o5339.StartCalculate()
  o5388.StartCalculate()
  o5948.StartCalculate()
  o6005.StartCalculate()
  o6062.StartCalculate()
  o6119.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5338.Value == L0) then
    o5338["Value"] = L0
    o5339.ReCalculate()
    o5388.ReCalculate()
    o5948.ReCalculate()
    o6005.ReCalculate()
    o6062.ReCalculate()
    o6119.ReCalculate()
  end
end }
o5339 = { [nil] = {}, GetCalculated = function()
  if not (o5338.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5339.SetStateValue(o5339.GetCalculated())
end, StartCalculate = function()
  o5339["Value"] = o5339.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "Track6")
end, SetStateValue = function(L0)
  if not (o5339.Value == L0) then
    DelayedFunction(4, o5339, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5339.Value == L0) then
    o5339["Value"] = L0
    if not (L0 ~= 1) then
      o5339.ChangeTo1()
    end
  end
end }
o5340 = { [nil] = {}, GetCalculated = function()
  if not (o5961.Value ~= True) then
    if not (o6018.Value ~= True) then
      if not (o6075.Value ~= True) then
        if not (o6132.Value ~= True) then
          if not (o5352.Value ~= False) then
            return 1
          else
            return 0
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o5340.SetStateValue(o5340.GetCalculated())
end, StartCalculate = function()
  o5340["Value"] = o5340.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o5340.Value == L0) then
    DelayedFunction(5, o5340, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5340.Value == L0) then
    o5340["Value"] = L0
    if not (L0 ~= 1) then
      o5340.ChangeTo1()
    end
  end
end }
o5341 = { [nil] = {}, GetCalculated = function()
  if not (o6178.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5341.SetStateValue(o5341.GetCalculated())
end, StartCalculate = function()
  o5341["Value"] = o5341.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o6173, "Code8")
end, SetStateValue = function(L0)
  if not (o5341.Value == L0) then
    DelayedFunction(2, o5341, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5341.Value == L0) then
    o5341["Value"] = L0
    if not (L0 ~= 1) then
      o5341.ChangeTo1()
    end
  end
end }
o5342 = { [nil] = {}, GetCalculated = function()
  if not (o6226.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5342.SetStateValue(o5342.GetCalculated())
end, StartCalculate = function()
  o5342["Value"] = o5342.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o6222, "Code6")
end, SetStateValue = function(L0)
  if not (o5342.Value == L0) then
    DelayedFunction(2, o5342, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5342.Value == L0) then
    o5342["Value"] = L0
    if not (L0 ~= 1) then
      o5342.ChangeTo1()
    end
  end
end }
o5343 = { [nil] = {}, GetCalculated = function()
  if not (o2254.Value ~= True) then
    if not (o2300.Value ~= True) then
      if not (o2346.Value ~= True) then
        if not (o2392.Value ~= True) then
          if not (o2438.Value ~= True) then
            if not (o2531.Value ~= True) then
              if not (o2577.Value ~= True) then
                if not (o2623.Value ~= True) then
                  if not (o2669.Value ~= True) then
                    if not (o2762.Value ~= True) then
                      if not (o2808.Value ~= True) then
                        if not (o2854.Value ~= True) then
                          if not (o2947.Value ~= True) then
                            if not (o2993.Value ~= True) then
                              if not (o3039.Value ~= True) then
                                if not (o3085.Value ~= True) then
                                  if not (o3178.Value ~= True) then
                                    if not (o3224.Value ~= True) then
                                      if not (o3270.Value ~= True) then
                                        if not (o3363.Value ~= True) then
                                          if not (o3409.Value ~= True) then
                                            if not (o3455.Value ~= True) then
                                              if not (o3501.Value ~= True) then
                                                if not (o3547.Value ~= True) then
                                                  if not (o3593.Value ~= True) then
                                                    if not (o3686.Value ~= True) then
                                                      if not (o3732.Value ~= True) then
                                                        if not (o3778.Value ~= True) then
                                                          if not (o3824.Value ~= True) then
                                                            if not (o3870.Value ~= True) then
                                                              if not (o3916.Value ~= True) then
                                                                if not (o6185.Value ~= True) then
                                                                  if not (o6233.Value ~= True) then
                                                                    if not (o6341.Value ~= True) then
                                                                      if not (o6285.Value ~= True) then
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
end, ReCalculate = function()
  o5343.SetStateValue(o5343.GetCalculated())
end, StartCalculate = function()
  o5343["Value"] = o5343.GetCalculated()
  o5391.StartCalculate()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o5717.Node)
  SED_SetTaskTextKey(2102, -1, -1)
  SendRadioMessageTake(o5382.Node, o5311.Node, 304)
  Game_PrimaryObjectiveReached(GetGameNode(), 2, 2000, 2105)
end, SetStateValue = function(L0)
  if not (o5343.Value == L0) then
    o5343["Value"] = L0
    o5391.ReCalculate()
    if not (L0 ~= 1) then
      o5343.ChangeTo1()
    end
  end
end }
o5344 = { [nil] = {}, Start = function()
  o5344["Value"] = False
  o6384.StartCalculate()
  o6440.StartCalculate()
  o6496.StartCalculate()
  o6552.StartCalculate()
  o6608.StartCalculate()
  o6664.StartCalculate()
  o6720.StartCalculate()
  o6776.StartCalculate()
  o6832.StartCalculate()
  o6888.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5344.Value == L0) then
    o5344["Value"] = L0
    o6384.ReCalculate()
    o6440.ReCalculate()
    o6496.ReCalculate()
    o6552.ReCalculate()
    o6608.ReCalculate()
    o6664.ReCalculate()
    o6720.ReCalculate()
    o6776.ReCalculate()
    o6832.ReCalculate()
    o6888.ReCalculate()
  end
end }
o5345 = { [nil] = {}, Start = function()
  o5345["Value"] = False
  o5346.StartCalculate()
  o5353.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5345.Value == L0) then
    o5345["Value"] = L0
    o5346.ReCalculate()
    o5353.ReCalculate()
  end
end }
o5346 = { [nil] = {}, GetCalculated = function()
  if not (o5345.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5346.SetStateValue(o5346.GetCalculated())
end, StartCalculate = function()
  o5346["Value"] = o5346.GetCalculated()
  o5354.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 3, 2000, 2102)
  SendRadioMessageTake(o5513.Node, o5311.Node, 306)
end, SetStateValue = function(L0)
  if not (o5346.Value == L0) then
    o5346["Value"] = L0
    o5354.ReCalculate()
    if not (L0 ~= 1) then
      o5346.ChangeTo1()
    end
  end
end }
o5347 = { [nil] = {}, GetCalculated = function()
  if not (o5414.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5347.SetStateValue(o5347.GetCalculated())
end, StartCalculate = function()
  o5347["Value"] = o5347.GetCalculated()
  o5378.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 3, 2001, 2102)
end, SetStateValue = function(L0)
  if not (o5347.Value == L0) then
    o5347["Value"] = L0
    o5378.ReCalculate()
    if not (L0 ~= 1) then
      o5347.ChangeTo1()
    end
  end
end }
o5348 = { [nil] = {}, GetCalculated = function()
  if not (o5476.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5348.SetStateValue(o5348.GetCalculated())
end, StartCalculate = function()
  o5348["Value"] = o5348.GetCalculated()
  o5379.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 4, 2001, 2104)
end, SetStateValue = function(L0)
  if not (o5348.Value == L0) then
    o5348["Value"] = L0
    o5379.ReCalculate()
    if not (L0 ~= 1) then
      o5348.ChangeTo1()
    end
  end
end }
o5349 = { [nil] = {}, GetCalculated = function()
  if not (o5574.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5349.SetStateValue(o5349.GetCalculated())
end, StartCalculate = function()
  o5349["Value"] = o5349.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 1, 2002, 2106)
  SendRadioMessageTake(o5513.Node, o5311.Node, 741)
end, SetStateValue = function(L0)
  if not (o5349.Value == L0) then
    o5349["Value"] = L0
    if not (L0 ~= 1) then
      o5349.ChangeTo1()
    end
  end
end }
o5350 = { [nil] = {}, GetCalculated = function()
  if not (o3957.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5350.SetStateValue(o5350.GetCalculated())
end, StartCalculate = function()
  o5350["Value"] = o5350.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveFailed(GetGameNode(), 2, 0, 0)
end, SetStateValue = function(L0)
  if not (o5350.Value == L0) then
    o5350["Value"] = L0
    if not (L0 ~= 1) then
      o5350.ChangeTo1()
    end
  end
end }
o5351 = { [nil] = {}, GetCalculated = function()
  if not (o6963.Value ~= True) then
    if not (o7019.Value ~= True) then
      if not (o3957.Value ~= False) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o5351.SetStateValue(o5351.GetCalculated())
end, StartCalculate = function()
  o5351["Value"] = o5351.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 2, 2002, 2107)
  SendRadioMessageTake(o5513.Node, o5311.Node, 742)
end, SetStateValue = function(L0)
  if not (o5351.Value == L0) then
    o5351["Value"] = L0
    if not (L0 ~= 1) then
      o5351.ChangeTo1()
    end
  end
end }
o5352 = { [nil] = {}, Start = function()
  o5352["Value"] = False
  o5340.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5352.Value == L0) then
    o5352["Value"] = L0
    o5340.ReCalculate()
  end
end }
o5353 = { [nil] = {}, GetCalculated = function()
  if not (o6453.Value ~= True) then
    if not (o6509.Value ~= True) then
      if not (o6565.Value ~= True) then
        if not (o6621.Value ~= True) then
          if not (o6677.Value ~= True) then
            if not (o6733.Value ~= True) then
              if not (o6789.Value ~= True) then
                if not (o6845.Value ~= True) then
                  if not (o6901.Value ~= True) then
                    if not (o5345.Value ~= False) then
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
end, ReCalculate = function()
  o5353.SetStateValue(o5353.GetCalculated())
end, StartCalculate = function()
  o5353["Value"] = o5353.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o5353.Value == L0) then
    DelayedFunction(5, o5353, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5353.Value == L0) then
    o5353["Value"] = L0
    if not (L0 ~= 1) then
      o5353.ChangeTo1()
    end
  end
end }
o5354 = { [nil] = {}, GetCalculated = function()
  if not (o5346.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5354.SetStateValue(o5354.GetCalculated())
end, StartCalculate = function()
  o5354["Value"] = o5354.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5354.Value == L0) then
    o5354["Value"] = L0
    o2.ReCalculate()
  end
end }
o5378 = { [nil] = {}, GetCalculated = function()
  if not (o5347.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5378.SetStateValue(o5378.GetCalculated())
end, StartCalculate = function()
  o5378["Value"] = o5378.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5378.Value == L0) then
    o5378["Value"] = L0
    o26.ReCalculate()
  end
end }
o5379 = { [nil] = {}, GetCalculated = function()
  if not (o5348.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5379.SetStateValue(o5379.GetCalculated())
end, StartCalculate = function()
  o5379["Value"] = o5379.GetCalculated()
  o27.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5379.Value == L0) then
    o5379["Value"] = L0
    o27.ReCalculate()
  end
end }
S_o5382 = { [nil] = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5382, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5382, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5382, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o5382, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5382, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  StopAllActiveBehaviours(L0)
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o5382, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Eerie_Path_1", 0.75, 1 } }("Code8")
  else
    CallFunction(o5382, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5 } }("Code9")
  else
    CallFunction(o5382, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code10")
  else
    CallFunction(o5382, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5382, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Game_SetWayPoint(GetGameNode(), o5717.Node)
  SED_SetTaskTextKey(2102, -1, -1)
  SendRadioMessageTake(o5382.Node, o5311.Node, 295)
  CallFunction(o5382, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Eerie_Path_2", 1, 1 } }("Code15")
  else
    CallFunction(o5382, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  o5331.SetStateValue(True)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  SED_SetTaskTextKey(0, -1, -1)
  CallFunction(o5382, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o1089.Node, "dp_ver_1", "dp_ver_1", 0.3, 0.6, 1e+32, "Code19")
  else
    CallFunction(o5382, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  SendRadioMessageTake(o5382.Node, o5311.Node, 302)
  CallFunction(o5382, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 4 } }("Code21")
  else
    CallFunction(o5382, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  Game_SetWayPoint(GetGameNode(), o5717.Node)
  SED_SetTaskTextKey(2102, -1, -1)
  CallFunction(o5382, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code24")
  else
    CallFunction(o5382, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Eerie_ToOutpostPath_1", 1, 1 } }("Code25")
  else
    CallFunction(o5382, "Code25")
  end
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  SendRadioMessageTake(o5382.Node, o5311.Node, 303)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  SED_SetTaskTextKey(2105, -1, -1)
  Game_PlayMusic(GetGameNode(), "Track3")
  o5352.SetStateValue(True)
  CallFunction(o5382, "Code30")
end, Code30 = function(L0)
  L0["CodeIndex"] = 30
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1e+32 } }("Code31")
  else
    CallFunction(o5382, "Code31")
  end
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
  Game_PlayMusic(GetGameNode(), "Atmo")
  CallFunction(o5382, "Code32")
end, Code32 = function(L0)
  L0["CodeIndex"] = 32
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/EerieIntoOutpost_Path", 0.5, 1 } }("Code33")
  else
    CallFunction(o5382, "Code33")
  end
end, Code33 = function(L0)
  L0["CodeIndex"] = 33
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code34")
  else
    CallFunction(o5382, "Code34")
  end
end, Code34 = function(L0)
  L0["CodeIndex"] = 34
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/EerieToShelterDock_Path", 0.75, 1 } }("Code35")
  else
    CallFunction(o5382, "Code35")
  end
end, Code35 = function(L0)
  L0["CodeIndex"] = 35
  o5344.SetStateValue(True)
  CallFunction(o5382, "Code36")
end, Code36 = function(L0)
  L0["CodeIndex"] = 36
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o307.Node, "dp_ver_1", "dp_ver_1", 0.4, 0.6, 60, "Code37")
  else
    CallFunction(o5382, "Code37")
  end
end, Code37 = function(L0)
  L0["CodeIndex"] = 37
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 3 } }("Code38")
  else
    CallFunction(o5382, "Code38")
  end
end, Code38 = function(L0)
  L0["CodeIndex"] = 38
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Eerie_LeaveOutpost_Path_1", 1, 2 } }("Code39")
  else
    CallFunction(o5382, "Code39")
  end
end, Code39 = function(L0)
  L0["CodeIndex"] = 39
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code40")
  else
    CallFunction(o5382, "Code40")
  end
end }, Code40 = function(L0)
  L0["CodeIndex"] = 40
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/EerieIntoOutpost_Path", "pos_4", "pos_1", 0.5, 1 } }("Code41")
  else
    CallFunction(o5382, "Code41")
  end
end, Code41 = function(L0)
  L0["CodeIndex"] = 41
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Eerie_Leave_Path_1", 1, 1 } }("Code42")
  else
    CallFunction(o5382, "Code42")
  end
end, Code42 = function(L0)
  L0["CodeIndex"] = 42
  o5345.SetStateValue(True)
  Game_PlayMusic(GetGameNode(), "Atmo")
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  SED_SetTaskTextKey(0, -1, -1)
  CallFunction(o5382, "Code46")
end, Code46 = function(L0)
  L0["CodeIndex"] = 46
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Eerie_Leave_Path_2", 1, 1 } }("Code47")
  else
    CallFunction(o5382, "Code47")
  end
end, Code47 = function(L0)
  L0["CodeIndex"] = 47
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o5292, nil, 0, "Code48")
  else
    CallFunction(o5382, "Code48")
  end
end, Code48 = function(L0)
  L0["CodeIndex"] = 48
end, SetStateValue_DestEmp = function(L0, L1)
  o5414.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 10) then
    if not (L0.CodeIndex >= 11) then
      if not (o5401.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 18) then
    if not (L0.CodeIndex >= 19) then
      if not (o5388.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 30) then
    if not (L0.CodeIndex >= 31) then
      if not (o5391.Value ~= True) then
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
o5388 = { [nil] = {}, GetCalculated = function()
  if not (o5338.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5388.SetStateValue(o5388.GetCalculated())
end, StartCalculate = function()
  o5388["Value"] = o5388.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5388.Value == L0) then
    DelayedFunction(40, o5388, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5388.Value == L0) then
    o5388["Value"] = L0
    CallFunction(o5382, "ProcesseStateChange")
  end
end }
o5391 = { [nil] = {}, GetCalculated = function()
  if not (o5343.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5391.SetStateValue(o5391.GetCalculated())
end, StartCalculate = function()
  o5391["Value"] = o5391.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5391.Value == L0) then
    DelayedFunction(5, o5391, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5391.Value == L0) then
    o5391["Value"] = L0
    CallFunction(o5382, "ProcesseStateChange")
  end
end }
o5401 = { [nil] = {}, GetCalculated = function()
  if not (o5330.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5401.SetStateValue(o5401.GetCalculated())
end, StartCalculate = function()
  o5401["Value"] = o5401.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5401.Value == L0) then
    o5401["Value"] = L0
    CallFunction(o5382, "ProcesseStateChange")
  end
end }
o5414 = { [nil] = {}, Start = function()
  o5414["Value"] = False
  o5347.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5414.Value == L0) then
    o5414["Value"] = L0
    o5347.ReCalculate()
  end
end }
S_o5455 = { [nil] = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDockVehicle(L0, o5289)
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
    DipolLib.InUtero_Undock(L0, o5289, "Code3")
  else
    CallFunction(o5455, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vehicle_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o5455, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1.5 } }("Code5")
  else
    CallFunction(o5455, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  SendRadioMessageTake(o5455.Node, o5311.Node, 296)
  CallFunction(o5455, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0.5 } }("Code7")
  else
    CallFunction(o5455, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  o5332.SetStateValue(True)
  CallFunction(o5455, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/StoneyDockOFF_Path", 1, 1 } }("Code9")
  else
    CallFunction(o5455, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/VehicleDock3_Tank_PatrolArea", "/Scenario_Dynamic/Navigation/VehicleDock3_TriggerArea", "/Scenario_Dynamic/Navigation/VehicleDock3_FollowArea", "atl", "", "", "", 5, "Code10")
  else
    CallFunction(o5455, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Game_PlayMusic(GetGameNode(), "Track4")
  CallFunction(o5455, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 3 } }("Code12")
  else
    CallFunction(o5455, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  SED_SetTaskTextKey(2103, -1, -1)
  Game_SetWayPoint(GetGameNode(), o5727.Node)
  CallFunction(o5455, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/StoneyBuggey_ToStationPath_1", 1, 1 } }("Code15")
  else
    CallFunction(o5455, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  SendRadioMessageTake(o5455.Node, o5311.Node, 298)
  SED_SetTaskTextKey(0, -1, -1)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  CallFunction(o5455, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code19")
  else
    CallFunction(o5455, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/StoneyBuggey_ToStationPath_2", 0.75, 1 } }("Code20")
  else
    CallFunction(o5455, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/StoneyBuggey_ToStationPath_3", 1, 1 } }("Code21")
  else
    CallFunction(o5455, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5 } }("Code22")
  else
    CallFunction(o5455, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  o5335.SetStateValue(True)
  SendRadioMessageTake(o5455.Node, o5311.Node, 299)
  SED_SetTaskTextKey(2104, -1, -1)
  Game_SetWayPoint(GetGameNode(), o5732.Node)
  Game_PlayMusic(GetGameNode(), "Agressive")
  CallFunction(o5455, "Code27")
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/StoneyBuggey_AwayStationPath", 1, 1 } }("Code28")
  else
    CallFunction(o5455, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1e+32 } }("Code29")
  else
    CallFunction(o5455, "Code29")
  end
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  Game_PlayMusic(GetGameNode(), "Atmo")
  CallFunction(o5455, "Code30")
end, Code30 = function(L0)
  L0["CodeIndex"] = 30
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code31")
  else
    CallFunction(o5455, "Code31")
  end
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
  SED_SetTaskTextKey(2103, -1, -1)
  Game_SetWayPoint(GetGameNode(), o5727.Node)
  CallFunction(o5455, "Code33")
end, Code33 = function(L0)
  L0["CodeIndex"] = 33
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/StoneyBuggey_toVDock3_Path", 1, 1 } }("Code34")
  else
    CallFunction(o5455, "Code34")
  end
end, Code34 = function(L0)
  L0["CodeIndex"] = 34
  SendRadioMessageTake(o5455.Node, o5311.Node, 301)
  o5338.SetStateValue(True)
  SED_SetTaskTextKey(0, -1, -1)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  CallFunction(o5455, "Code38")
end, Code38 = function(L0)
  L0["CodeIndex"] = 38
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.DockVehicle(L0, o5289, 1e+32, "Code39")
  else
    CallFunction(o5455, "Code39")
  end
end, Code39 = function(L0)
  L0["CodeIndex"] = 39
  DipolLib.LeaveSimulation(L0)
  CallFunction(o5455, "Code40")
end, Code40 = function(L0)
  L0["CodeIndex"] = 40
end }, SetStateValue_DestEmp = function(L0, L1)
  o5476.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5468.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o5458.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o5459.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 28) then
    if not (L0.CodeIndex >= 29) then
      if not (o5466.Value ~= True) then
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
o5458 = { [nil] = {}, GetCalculated = function()
  if not (o5333.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5458.SetStateValue(o5458.GetCalculated())
end, StartCalculate = function()
  o5458["Value"] = o5458.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5458.Value == L0) then
    DelayedFunction(5, o5458, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5458.Value == L0) then
    o5458["Value"] = L0
    CallFunction(o5455, "ProcesseStateChange")
  end
end }
o5459 = { [nil] = {}, GetCalculated = function()
  if not (o5334.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5459.SetStateValue(o5459.GetCalculated())
end, StartCalculate = function()
  o5459["Value"] = o5459.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5459.Value == L0) then
    o5459["Value"] = L0
    CallFunction(o5455, "ProcesseStateChange")
  end
end }
o5466 = { [nil] = {}, GetCalculated = function()
  if not (o5337.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5466.SetStateValue(o5466.GetCalculated())
end, StartCalculate = function()
  o5466["Value"] = o5466.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5466.Value == L0) then
    DelayedFunction(5, o5466, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5466.Value == L0) then
    o5466["Value"] = L0
    CallFunction(o5455, "ProcesseStateChange")
  end
end }
o5468 = { [nil] = {}, GetCalculated = function()
  if not (o5331.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5468.SetStateValue(o5468.GetCalculated())
end, StartCalculate = function()
  o5468["Value"] = o5468.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5468.Value == L0) then
    DelayedFunction(50, o5468, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5468.Value == L0) then
    o5468["Value"] = L0
    CallFunction(o5455, "ProcesseStateChange")
  end
end }
o5476 = { [nil] = {}, Start = function()
  o5476["Value"] = False
  o5348.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5476.Value == L0) then
    o5476["Value"] = L0
    o5348.ReCalculate()
  end
end }
S_o5513 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5513, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5513, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5513, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o5513, "Code4")
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
S_o5560 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5560, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5560, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5560, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o5560, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o5560, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o1089.Node, "DP_ver_2", "DP_ver_1", 0.4, 0.6, 180, "Code6")
  else
    CallFunction(o5560, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/BomberPath_1", 0.5, 1 } }("Code7")
  else
    CallFunction(o5560, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code8")
  else
    CallFunction(o5560, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Attacked = function(L0, L1)
  o5564.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o5574.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o5578.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o5561.Value ~= True) then
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
o5561 = { [nil] = {}, GetCalculated = function()
  if not (o5564.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5561.SetStateValue(o5561.GetCalculated())
end, StartCalculate = function()
  o5561["Value"] = o5561.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5561.Value == L0) then
    o5561["Value"] = L0
    CallFunction(o5560, "ProcesseStateChange")
  end
end }
o5564 = { [nil] = {}, Start = function()
  o5564["Value"] = False
  o5561.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5564.Value == L0) then
    o5564["Value"] = L0
    o5561.ReCalculate()
  end
end }
o5574 = { [nil] = {}, Start = function()
  o5574["Value"] = False
  o5349.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5574.Value == L0) then
    o5574["Value"] = L0
    o5349.ReCalculate()
  end
end }
o5578 = { [nil] = {}, Start = function()
  o5578["Value"] = False
  o5330.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5578.Value == L0) then
    o5578["Value"] = L0
    o5330.ReCalculate()
  end
end }
S_o5617 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5617, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5617, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5617, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o5617, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Vehicle_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o5617, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/buggy1_path", 0.35, 2 } }("Code6")
  else
    CallFunction(o5617, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o5617, "Code5")
  else
    CallFunction(o5617, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  StopAllActiveBehaviours(L0)
  Vehicle_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o5617, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/VehicleDock3_Tank_PatrolArea", "/Scenario_Dynamic/Navigation/VehicleDock3_TriggerArea", "/Scenario_Dynamic/Navigation/VehicleDock3_FollowArea", "E", "", "", "", 5, "Code10")
  else
    CallFunction(o5617, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    Vehicle_ParkPatrol(L0.Node, "/Scenario_Dynamic/Navigation/VehicleDock3_Tank_PatrolArea", "Code11")
  else
    CallFunction(o5617, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_Attacked = function(L0, L1)
  o5622.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o5629.SetStateValue(L1)
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
o5622 = { [nil] = {}, Start = function()
  o5622["Value"] = False
  o5328.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5622.Value == L0) then
    o5622["Value"] = L0
    o5328.ReCalculate()
  end
end }
o5629 = { [nil] = {}, Start = function()
  o5629["Value"] = False
  o5326.StartCalculate()
  o5330.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5629.Value == L0) then
    o5629["Value"] = L0
    o5326.ReCalculate()
    o5330.ReCalculate()
  end
end }
S_o5666 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5666, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5666, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5666, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vehicle_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o5666, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code5")
  else
    CallFunction(o5666, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o5666, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5666, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  StopAllActiveBehaviours(L0)
  Vehicle_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o5666, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Tank_LookForPatrol_Path_1", 0.75, 2 } }("Code10")
  else
    CallFunction(o5666, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o5666, "Code4")
  else
    CallFunction(o5666, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  StopAllActiveBehaviours(L0)
  Vehicle_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o5666, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/VehicleDock3_Tank_PatrolArea", "/Scenario_Dynamic/Navigation/VehicleDock3_TriggerArea", "/Scenario_Dynamic/Navigation/VehicleDock3_FollowArea", "E", "", "", "", 5, "Code14")
  else
    CallFunction(o5666, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    Vehicle_ParkPatrol(L0.Node, "/Scenario_Dynamic/Navigation/VehicleDock3_Tank_PatrolArea", "Code15")
  else
    CallFunction(o5666, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
end, SetStateValue_Attacked = function(L0, L1)
  o5673.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o5680.SetStateValue(L1)
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
o5673 = { [nil] = {}, Start = function()
  o5673["Value"] = False
  o5327.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5673.Value == L0) then
    o5673["Value"] = L0
    o5327.ReCalculate()
  end
end }
o5680 = { [nil] = {}, Start = function()
  o5680["Value"] = False
  o5330.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5680.Value == L0) then
    o5680["Value"] = L0
    o5330.ReCalculate()
  end
end }
S_o5717 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o5382.Node)
  CallFunction(o5717, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5722 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o5722, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5727 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o5455.Node)
  CallFunction(o5727, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5732 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o5455.Node)
  CallFunction(o5732, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5737 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDockVehicle(L0, o5289)
  CallFunction(o5737, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5737, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5289, "Code3")
  else
    CallFunction(o5737, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vehicle_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o5737, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/VehicleDock3_Tank_PatrolArea", "/Scenario_Dynamic/Navigation/VehicleDock3_TriggerArea", "/Scenario_Dynamic/Navigation/VehicleDock3_FollowArea", "Stoney_Buggy", "pla", "", "", 5, "Code5")
  else
    CallFunction(o5737, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Born = function(L0, L1)
  o5741.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o5747.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5739.Value ~= True) then
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
o5739 = { [nil] = {}, GetCalculated = function()
  if not (o5332.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5739.SetStateValue(o5739.GetCalculated())
end, StartCalculate = function()
  o5739["Value"] = o5739.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5739.Value == L0) then
    DelayedFunction(2, o5739, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5739.Value == L0) then
    o5739["Value"] = L0
    CallFunction(o5737, "ProcesseStateChange")
  end
end }
o5741 = { [nil] = {}, Start = function()
  o5741["Value"] = False
  o5333.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5741.Value == L0) then
    o5741["Value"] = L0
    o5333.ReCalculate()
  end
end }
o5747 = { [nil] = {}, Start = function()
  o5747["Value"] = False
  o5334.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5747.Value == L0) then
    o5747["Value"] = L0
    o5334.ReCalculate()
  end
end }
S_o5784 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDockVehicle(L0, o5289)
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
    DipolLib.InUtero_Undock(L0, o5289, "Code3")
  else
    CallFunction(o5784, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vehicle_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o5784, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/VehicleDock3_Tank_PatrolArea", "/Scenario_Dynamic/Navigation/VehicleDock3_TriggerArea", "/Scenario_Dynamic/Navigation/VehicleDock3_FollowArea", "Stoney_Buggy", "pla", "", "", 5, "Code5")
  else
    CallFunction(o5784, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Born = function(L0, L1)
  o5788.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o5794.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5786.Value ~= True) then
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
o5786 = { [nil] = {}, GetCalculated = function()
  if not (o5332.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5786.SetStateValue(o5786.GetCalculated())
end, StartCalculate = function()
  o5786["Value"] = o5786.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5786.Value == L0) then
    DelayedFunction(5.574565, o5786, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5786.Value == L0) then
    o5786["Value"] = L0
    CallFunction(o5784, "ProcesseStateChange")
  end
end }
o5788 = { [nil] = {}, Start = function()
  o5788["Value"] = False
  o5333.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5788.Value == L0) then
    o5788["Value"] = L0
    o5333.ReCalculate()
  end
end }
o5794 = { [nil] = {}, Start = function()
  o5794["Value"] = False
  o5334.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5794.Value == L0) then
    o5794["Value"] = L0
    o5334.ReCalculate()
  end
end }
S_o5831 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5831, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5831, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5831, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o5831, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Scout1_Path_1", 0.75, 2 } }("Code5")
  else
    CallFunction(o5831, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Overall_Area", "/Scenario_Dynamic/Navigation/Overall_Area", "/Scenario_Dynamic/Navigation/Overall_Area", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o5831, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o5835.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o5847.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5834.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5832.Value ~= True) then
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
o5832 = { [nil] = {}, GetCalculated = function()
  if not (o5835.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5832.SetStateValue(o5832.GetCalculated())
end, StartCalculate = function()
  o5832["Value"] = o5832.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5832.Value == L0) then
    o5832["Value"] = L0
    CallFunction(o5831, "ProcesseStateChange")
  end
end }
o5834 = { [nil] = {}, GetCalculated = function()
  if not (o5335.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5834.SetStateValue(o5834.GetCalculated())
end, StartCalculate = function()
  o5834["Value"] = o5834.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5834.Value == L0) then
    o5834["Value"] = L0
    CallFunction(o5831, "ProcesseStateChange")
  end
end }
o5835 = { [nil] = {}, Start = function()
  o5835["Value"] = False
  o5832.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5835.Value == L0) then
    o5835["Value"] = L0
    o5832.ReCalculate()
  end
end }
o5847 = { [nil] = {}, Start = function()
  o5847["Value"] = False
  o5337.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5847.Value == L0) then
    o5847["Value"] = L0
    o5337.ReCalculate()
  end
end }
S_o5888 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5888, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5888, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5888, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o5888, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Scout1_Path_1", 0.75, 2 } }("Code5")
  else
    CallFunction(o5888, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Overall_Area", "/Scenario_Dynamic/Navigation/Overall_Area", "/Scenario_Dynamic/Navigation/Overall_Area", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o5888, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o5892.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o5904.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5891.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5889.Value ~= True) then
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
o5889 = { [nil] = {}, GetCalculated = function()
  if not (o5892.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5889.SetStateValue(o5889.GetCalculated())
end, StartCalculate = function()
  o5889["Value"] = o5889.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5889.Value == L0) then
    o5889["Value"] = L0
    CallFunction(o5888, "ProcesseStateChange")
  end
end }
o5891 = { [nil] = {}, GetCalculated = function()
  if not (o5335.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5891.SetStateValue(o5891.GetCalculated())
end, StartCalculate = function()
  o5891["Value"] = o5891.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5891.Value == L0) then
    o5891["Value"] = L0
    CallFunction(o5888, "ProcesseStateChange")
  end
end }
o5892 = { [nil] = {}, Start = function()
  o5892["Value"] = False
  o5889.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5892.Value == L0) then
    o5892["Value"] = L0
    o5889.ReCalculate()
  end
end }
o5904 = { [nil] = {}, Start = function()
  o5904["Value"] = False
  o5337.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5904.Value == L0) then
    o5904["Value"] = L0
    o5337.ReCalculate()
  end
end }
S_o5945 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5945, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5945, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5945, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o5945, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/ScoutComeOn_Path", 1, 3 } }("Code5")
  else
    CallFunction(o5945, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Overall_Area", "/Scenario_Dynamic/Navigation/Overall_Area", "/Scenario_Dynamic/Navigation/Overall_Area", "Eerie", "player1", "", "", 1, "Code6")
  else
    CallFunction(o5945, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o5949.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o5961.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5948.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5946.Value ~= True) then
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
o5946 = { [nil] = {}, GetCalculated = function()
  if not (o5949.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5946.SetStateValue(o5946.GetCalculated())
end, StartCalculate = function()
  o5946["Value"] = o5946.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5946.Value == L0) then
    o5946["Value"] = L0
    CallFunction(o5945, "ProcesseStateChange")
  end
end }
o5948 = { [nil] = {}, GetCalculated = function()
  if not (o5338.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5948.SetStateValue(o5948.GetCalculated())
end, StartCalculate = function()
  o5948["Value"] = o5948.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5948.Value == L0) then
    o5948["Value"] = L0
    CallFunction(o5945, "ProcesseStateChange")
  end
end }
o5949 = { [nil] = {}, Start = function()
  o5949["Value"] = False
  o5946.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5949.Value == L0) then
    o5949["Value"] = L0
    o5946.ReCalculate()
  end
end }
o5961 = { [nil] = {}, Start = function()
  o5961["Value"] = False
  o5340.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5961.Value == L0) then
    o5961["Value"] = L0
    o5340.ReCalculate()
  end
end }
S_o6002 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6002, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6002, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6002, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o6002, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/ScoutComeOn_Path", 1, 3 } }("Code5")
  else
    CallFunction(o6002, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Overall_Area", "/Scenario_Dynamic/Navigation/Overall_Area", "/Scenario_Dynamic/Navigation/Overall_Area", "Eerie", "player1", "", "", 1, "Code6")
  else
    CallFunction(o6002, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o6006.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o6018.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6005.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6003.Value ~= True) then
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
o6003 = { [nil] = {}, GetCalculated = function()
  if not (o6006.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6003.SetStateValue(o6003.GetCalculated())
end, StartCalculate = function()
  o6003["Value"] = o6003.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6003.Value == L0) then
    o6003["Value"] = L0
    CallFunction(o6002, "ProcesseStateChange")
  end
end }
o6005 = { [nil] = {}, GetCalculated = function()
  if not (o5338.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6005.SetStateValue(o6005.GetCalculated())
end, StartCalculate = function()
  o6005["Value"] = o6005.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6005.Value == L0) then
    o6005["Value"] = L0
    CallFunction(o6002, "ProcesseStateChange")
  end
end }
o6006 = { [nil] = {}, Start = function()
  o6006["Value"] = False
  o6003.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6006.Value == L0) then
    o6006["Value"] = L0
    o6003.ReCalculate()
  end
end }
o6018 = { [nil] = {}, Start = function()
  o6018["Value"] = False
  o5340.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6018.Value == L0) then
    o6018["Value"] = L0
    o5340.ReCalculate()
  end
end }
S_o6059 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6059, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6059, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6059, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o6059, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/ScoutComeOn_Path", 1, 3 } }("Code5")
  else
    CallFunction(o6059, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Overall_Area", "/Scenario_Dynamic/Navigation/Overall_Area", "/Scenario_Dynamic/Navigation/Overall_Area", "Eerie", "player1", "", "", 1, "Code6")
  else
    CallFunction(o6059, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o6063.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o6075.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6062.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6060.Value ~= True) then
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
o6060 = { [nil] = {}, GetCalculated = function()
  if not (o6063.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6060.SetStateValue(o6060.GetCalculated())
end, StartCalculate = function()
  o6060["Value"] = o6060.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6060.Value == L0) then
    o6060["Value"] = L0
    CallFunction(o6059, "ProcesseStateChange")
  end
end }
o6062 = { [nil] = {}, GetCalculated = function()
  if not (o5338.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6062.SetStateValue(o6062.GetCalculated())
end, StartCalculate = function()
  o6062["Value"] = o6062.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6062.Value == L0) then
    o6062["Value"] = L0
    CallFunction(o6059, "ProcesseStateChange")
  end
end }
o6063 = { [nil] = {}, Start = function()
  o6063["Value"] = False
  o6060.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6063.Value == L0) then
    o6063["Value"] = L0
    o6060.ReCalculate()
  end
end }
o6075 = { [nil] = {}, Start = function()
  o6075["Value"] = False
  o5340.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6075.Value == L0) then
    o6075["Value"] = L0
    o5340.ReCalculate()
  end
end }
S_o6116 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6116, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6116, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6116, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o6116, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/ScoutComeOn_Path", 1, 3 } }("Code5")
  else
    CallFunction(o6116, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Overall_Area", "/Scenario_Dynamic/Navigation/Overall_Area", "/Scenario_Dynamic/Navigation/Overall_Area", "Eerie", "player1", "", "", 1, "Code6")
  else
    CallFunction(o6116, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o6120.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o6132.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6119.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6117.Value ~= True) then
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
o6117 = { [nil] = {}, GetCalculated = function()
  if not (o6120.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6117.SetStateValue(o6117.GetCalculated())
end, StartCalculate = function()
  o6117["Value"] = o6117.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6117.Value == L0) then
    o6117["Value"] = L0
    CallFunction(o6116, "ProcesseStateChange")
  end
end }
o6119 = { [nil] = {}, GetCalculated = function()
  if not (o5338.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6119.SetStateValue(o6119.GetCalculated())
end, StartCalculate = function()
  o6119["Value"] = o6119.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6119.Value == L0) then
    o6119["Value"] = L0
    CallFunction(o6116, "ProcesseStateChange")
  end
end }
o6120 = { [nil] = {}, Start = function()
  o6120["Value"] = False
  o6117.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6120.Value == L0) then
    o6120["Value"] = L0
    o6117.ReCalculate()
  end
end }
o6132 = { [nil] = {}, Start = function()
  o6132["Value"] = False
  o5340.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6132.Value == L0) then
    o6132["Value"] = L0
    o5340.ReCalculate()
  end
end }
S_o6173 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6173, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6173, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6173, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vehicle_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o6173, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Outpost_Tank1_Path", 0.5, 1 } }("Code5")
  else
    CallFunction(o6173, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o6173, "Code4")
  else
    CallFunction(o6173, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o6173, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6173, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  StopAllActiveBehaviours(L0)
  Vehicle_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o6173, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/VehicleDock3_Tank_PatrolArea", "/Scenario_Dynamic/Navigation/VehicleDock3_TriggerArea", "/Scenario_Dynamic/Navigation/VehicleDock3_FollowArea", "E", "", "", "", 5, "Code11")
  else
    CallFunction(o6173, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_Attacked = function(L0, L1)
  o6178.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o6185.SetStateValue(L1)
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
o6178 = { [nil] = {}, Start = function()
  o6178["Value"] = False
  o5341.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6178.Value == L0) then
    o6178["Value"] = L0
    o5341.ReCalculate()
  end
end }
o6185 = { [nil] = {}, Start = function()
  o6185["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6185.Value == L0) then
    o6185["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o6222 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6222, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6222, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6222, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vehicle_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o6222, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Outpost_Tank2_Path", 0.5, 1 } }("Code5")
  else
    CallFunction(o6222, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o6222, "Code4")
  else
    CallFunction(o6222, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  Vehicle_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o6222, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/VehicleDock3_Tank_PatrolArea", "/Scenario_Dynamic/Navigation/VehicleDock3_TriggerArea", "/Scenario_Dynamic/Navigation/VehicleDock3_FollowArea", "E", "", "", "", 5, "Code9")
  else
    CallFunction(o6222, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_Attacked = function(L0, L1)
  o6226.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o6233.SetStateValue(L1)
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
o6226 = { [nil] = {}, Start = function()
  o6226["Value"] = False
  o5342.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6226.Value == L0) then
    o6226["Value"] = L0
    o5342.ReCalculate()
  end
end }
o6233 = { [nil] = {}, Start = function()
  o6233["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6233.Value == L0) then
    o6233["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o6270 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6270, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6270, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6270, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.ComplexGotoAttack({ 2, { {}, "Goto", "/Scenario_Dynamic/Navigation/Outpost_Scout2_Path", 0.5, 1 } }, "/Scenario_Dynamic/Navigation/Outpost_TriggerArea", 350, "E", "", "", "", 10, 0.25, True, "Code4")
  else
    CallFunction(o6270, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o6285.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6272.Value ~= True) then
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
o6272 = { [nil] = {}, GetCalculated = function()
  if not (o5337.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6272.SetStateValue(o6272.GetCalculated())
end, StartCalculate = function()
  o6272["Value"] = o6272.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6272.Value == L0) then
    o6272["Value"] = L0
    CallFunction(o6270, "ProcesseStateChange")
  end
end }
o6285 = { [nil] = {}, Start = function()
  o6285["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6285.Value == L0) then
    o6285["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o6326 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6326, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6326, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6326, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.ComplexGotoAttack({ 2, { {}, "Goto", "/Scenario_Dynamic/Navigation/Outpost_Scout1_Path", 0.5, 1 } }, "/Scenario_Dynamic/Navigation/Outpost_TriggerArea", 350, "E", "", "", "", 10, 0.25, True, "Code4")
  else
    CallFunction(o6326, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o6341.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6328.Value ~= True) then
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
o6328 = { [nil] = {}, GetCalculated = function()
  if not (o5337.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6328.SetStateValue(o6328.GetCalculated())
end, StartCalculate = function()
  o6328["Value"] = o6328.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6328.Value == L0) then
    o6328["Value"] = L0
    CallFunction(o6326, "ProcesseStateChange")
  end
end }
o6341 = { [nil] = {}, Start = function()
  o6341["Value"] = False
  o5343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6341.Value == L0) then
    o6341["Value"] = L0
    o5343.ReCalculate()
  end
end }
S_o6382 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5290)
  CallFunction(o6382, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6382, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5290, "Code3")
  else
    CallFunction(o6382, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SendRadioMessageTake(o5513.Node, o5311.Node, 305)
  Game_PlayMusic(GetGameNode(), "Track5")
  CallFunction(o6382, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Outpost_PatrolArea_Vessels", "/Scenario_Dynamic/Navigation/Outpost_TriggerArea", "/Scenario_Dynamic/Navigation/Outpost_FollowArea", "E", "", "", "", 0.5, "Code6")
  else
    CallFunction(o6382, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6384.Value ~= True) then
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
o6384 = { [nil] = {}, GetCalculated = function()
  if not (o5344.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6384.SetStateValue(o6384.GetCalculated())
end, StartCalculate = function()
  o6384["Value"] = o6384.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6384.Value == L0) then
    DelayedFunction(29.486542, o6384, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6384.Value == L0) then
    o6384["Value"] = L0
    CallFunction(o6382, "ProcesseStateChange")
  end
end }
S_o6438 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5290)
  CallFunction(o6438, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6438, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5290, "Code3")
  else
    CallFunction(o6438, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Outpost_PatrolArea_Vessels", "/Scenario_Dynamic/Navigation/Outpost_TriggerArea", "/Scenario_Dynamic/Navigation/Outpost_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o6438, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o6453.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6440.Value ~= True) then
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
o6440 = { [nil] = {}, GetCalculated = function()
  if not (o5344.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6440.SetStateValue(o6440.GetCalculated())
end, StartCalculate = function()
  o6440["Value"] = o6440.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6440.Value == L0) then
    DelayedFunction(35.48654, o6440, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6440.Value == L0) then
    o6440["Value"] = L0
    CallFunction(o6438, "ProcesseStateChange")
  end
end }
o6453 = { [nil] = {}, Start = function()
  o6453["Value"] = False
  o5353.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6453.Value == L0) then
    o6453["Value"] = L0
    o5353.ReCalculate()
  end
end }
S_o6494 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5290)
  CallFunction(o6494, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6494, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5290, "Code3")
  else
    CallFunction(o6494, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Outpost_PatrolArea_Vessels", "/Scenario_Dynamic/Navigation/Outpost_TriggerArea", "/Scenario_Dynamic/Navigation/Outpost_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o6494, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o6509.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6496.Value ~= True) then
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
o6496 = { [nil] = {}, GetCalculated = function()
  if not (o5344.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6496.SetStateValue(o6496.GetCalculated())
end, StartCalculate = function()
  o6496["Value"] = o6496.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6496.Value == L0) then
    DelayedFunction(40.48654, o6496, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6496.Value == L0) then
    o6496["Value"] = L0
    CallFunction(o6494, "ProcesseStateChange")
  end
end }
o6509 = { [nil] = {}, Start = function()
  o6509["Value"] = False
  o5353.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6509.Value == L0) then
    o6509["Value"] = L0
    o5353.ReCalculate()
  end
end }
S_o6550 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5291)
  CallFunction(o6550, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6550, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5291, "Code3")
  else
    CallFunction(o6550, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Outpost_PatrolArea_Vessels", "/Scenario_Dynamic/Navigation/Outpost_TriggerArea", "/Scenario_Dynamic/Navigation/Outpost_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o6550, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o6565.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6552.Value ~= True) then
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
o6552 = { [nil] = {}, GetCalculated = function()
  if not (o5344.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6552.SetStateValue(o6552.GetCalculated())
end, StartCalculate = function()
  o6552["Value"] = o6552.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6552.Value == L0) then
    DelayedFunction(25.48654, o6552, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6552.Value == L0) then
    o6552["Value"] = L0
    CallFunction(o6550, "ProcesseStateChange")
  end
end }
o6565 = { [nil] = {}, Start = function()
  o6565["Value"] = False
  o5353.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6565.Value == L0) then
    o6565["Value"] = L0
    o5353.ReCalculate()
  end
end }
S_o6606 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5291)
  CallFunction(o6606, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6606, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5291, "Code3")
  else
    CallFunction(o6606, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Outpost_PatrolArea_Vessels", "/Scenario_Dynamic/Navigation/Outpost_TriggerArea", "/Scenario_Dynamic/Navigation/Outpost_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o6606, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o6621.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6608.Value ~= True) then
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
o6608 = { [nil] = {}, GetCalculated = function()
  if not (o5344.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6608.SetStateValue(o6608.GetCalculated())
end, StartCalculate = function()
  o6608["Value"] = o6608.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6608.Value == L0) then
    DelayedFunction(43.48654, o6608, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6608.Value == L0) then
    o6608["Value"] = L0
    CallFunction(o6606, "ProcesseStateChange")
  end
end }
o6621 = { [nil] = {}, Start = function()
  o6621["Value"] = False
  o5353.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6621.Value == L0) then
    o6621["Value"] = L0
    o5353.ReCalculate()
  end
end }
S_o6662 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5291)
  CallFunction(o6662, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6662, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5291, "Code3")
  else
    CallFunction(o6662, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Outpost_PatrolArea_Vessels", "/Scenario_Dynamic/Navigation/Outpost_TriggerArea", "/Scenario_Dynamic/Navigation/Outpost_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o6662, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o6677.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6664.Value ~= True) then
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
o6664 = { [nil] = {}, GetCalculated = function()
  if not (o5344.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6664.SetStateValue(o6664.GetCalculated())
end, StartCalculate = function()
  o6664["Value"] = o6664.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6664.Value == L0) then
    DelayedFunction(55.48654, o6664, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6664.Value == L0) then
    o6664["Value"] = L0
    CallFunction(o6662, "ProcesseStateChange")
  end
end }
o6677 = { [nil] = {}, Start = function()
  o6677["Value"] = False
  o5353.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6677.Value == L0) then
    o6677["Value"] = L0
    o5353.ReCalculate()
  end
end }
S_o6718 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5291)
  CallFunction(o6718, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6718, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5291, "Code3")
  else
    CallFunction(o6718, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Outpost_PatrolArea_Vessels", "/Scenario_Dynamic/Navigation/Outpost_TriggerArea", "/Scenario_Dynamic/Navigation/Outpost_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o6718, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o6733.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6720.Value ~= True) then
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
o6720 = { [nil] = {}, GetCalculated = function()
  if not (o5344.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6720.SetStateValue(o6720.GetCalculated())
end, StartCalculate = function()
  o6720["Value"] = o6720.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6720.Value == L0) then
    DelayedFunction(58.48654, o6720, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6720.Value == L0) then
    o6720["Value"] = L0
    CallFunction(o6718, "ProcesseStateChange")
  end
end }
o6733 = { [nil] = {}, Start = function()
  o6733["Value"] = False
  o5353.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6733.Value == L0) then
    o6733["Value"] = L0
    o5353.ReCalculate()
  end
end }
S_o6774 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5290)
  CallFunction(o6774, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6774, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5290, "Code3")
  else
    CallFunction(o6774, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Outpost_PatrolArea_Vessels", "/Scenario_Dynamic/Navigation/Outpost_TriggerArea", "/Scenario_Dynamic/Navigation/Outpost_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o6774, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o6789.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6776.Value ~= True) then
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
o6776 = { [nil] = {}, GetCalculated = function()
  if not (o5344.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6776.SetStateValue(o6776.GetCalculated())
end, StartCalculate = function()
  o6776["Value"] = o6776.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6776.Value == L0) then
    DelayedFunction(56.48654, o6776, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6776.Value == L0) then
    o6776["Value"] = L0
    CallFunction(o6774, "ProcesseStateChange")
  end
end }
o6789 = { [nil] = {}, Start = function()
  o6789["Value"] = False
  o5353.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6789.Value == L0) then
    o6789["Value"] = L0
    o5353.ReCalculate()
  end
end }
S_o6830 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5290)
  CallFunction(o6830, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6830, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5290, "Code3")
  else
    CallFunction(o6830, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Outpost_PatrolArea_Vessels", "/Scenario_Dynamic/Navigation/Outpost_TriggerArea", "/Scenario_Dynamic/Navigation/Outpost_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o6830, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o6845.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6832.Value ~= True) then
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
o6832 = { [nil] = {}, GetCalculated = function()
  if not (o5344.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6832.SetStateValue(o6832.GetCalculated())
end, StartCalculate = function()
  o6832["Value"] = o6832.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6832.Value == L0) then
    DelayedFunction(57.48654, o6832, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6832.Value == L0) then
    o6832["Value"] = L0
    CallFunction(o6830, "ProcesseStateChange")
  end
end }
o6845 = { [nil] = {}, Start = function()
  o6845["Value"] = False
  o5353.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6845.Value == L0) then
    o6845["Value"] = L0
    o5353.ReCalculate()
  end
end }
S_o6886 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5290)
  CallFunction(o6886, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6886, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5290, "Code3")
  else
    CallFunction(o6886, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Outpost_PatrolArea_Vessels", "/Scenario_Dynamic/Navigation/Outpost_TriggerArea", "/Scenario_Dynamic/Navigation/Outpost_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o6886, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o6901.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6888.Value ~= True) then
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
o6888 = { [nil] = {}, GetCalculated = function()
  if not (o5344.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6888.SetStateValue(o6888.GetCalculated())
end, StartCalculate = function()
  o6888["Value"] = o6888.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6888.Value == L0) then
    DelayedFunction(67.48654, o6888, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6888.Value == L0) then
    o6888["Value"] = L0
    CallFunction(o6886, "ProcesseStateChange")
  end
end }
o6901 = { [nil] = {}, Start = function()
  o6901["Value"] = False
  o5353.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6901.Value == L0) then
    o6901["Value"] = L0
    o5353.ReCalculate()
  end
end }
S_o6942 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6942, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6942, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6942, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetObservedDestroyer(L0.Node, 1, o5311.Node)
  CallFunction(o6942, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/bonus2Area", "gen_elfnote_des_1", "E", "", "", 1, 1, "Code5")
  else
    CallFunction(o6942, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o6942, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestroyedBy1 = function(L0, L1)
  o6963.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6944.Value ~= True) then
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
o6944 = { [nil] = {}, GetCalculated = function()
  if not (o5310.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6944.SetStateValue(o6944.GetCalculated())
end, StartCalculate = function()
  o6944["Value"] = o6944.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6944.Value == L0) then
    o6944["Value"] = L0
    CallFunction(o6942, "ProcesseStateChange")
  end
end }
o6963 = { [nil] = {}, Start = function()
  o6963["Value"] = False
  o5351.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6963.Value == L0) then
    o6963["Value"] = L0
    o5351.ReCalculate()
  end
end }
S_o6998 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6998, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6998, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6998, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetObservedDestroyer(L0.Node, 1, o5311.Node)
  CallFunction(o6998, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/bonus2Area", "gen_elfnote_des_1", "E", "", "", 1, 1, "Code5")
  else
    CallFunction(o6998, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o6998, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestroyedBy1 = function(L0, L1)
  o7019.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7000.Value ~= True) then
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
o7000 = { [nil] = {}, GetCalculated = function()
  if not (o5310.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7000.SetStateValue(o7000.GetCalculated())
end, StartCalculate = function()
  o7000["Value"] = o7000.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7000.Value == L0) then
    o7000["Value"] = L0
    CallFunction(o6998, "ProcesseStateChange")
  end
end }
o7019 = { [nil] = {}, Start = function()
  o7019["Value"] = False
  o5351.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7019.Value == L0) then
    o7019["Value"] = L0
    o5351.ReCalculate()
  end
end }
S_o7054 = { [nil] = {}, Start = function(L0)

end }
S_o7055 = { [nil] = {}, Start = function(L0)

end }
o7057 = FormationLib.CreateFormation("Triangle", "", "", "", 25, 25)
o7059 = FormationLib.CreateFormation("Triangle", "", "", "", 25, 25)
S_o7060 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Atmo")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o7060, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o7060, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/LookFrom_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  CallFunction(o7060, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2.8, "Code9")
  else
    CallFunction(o7060, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  SendRadioMessageTake(o5513.Node, o5311.Node, 293)
  CallFunction(o7060, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code11")
  else
    CallFunction(o7060, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Director_EndCutscene(L0.Node)
  CallFunction(o5382, "Code5")
  CallFunction(o7060, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code14")
  else
    CallFunction(o7060, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Game_SetWayPoint(GetGameNode(), o5722.Node)
  SED_SetTaskTextKey(2100, -1, -1)
  CallFunction(o7060, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o7066 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  FormationLib.PlaceFormationPath(o7056, o7057, "/InGameSequences/Navigation/PlayerPath_1")
  CallFunction(o7066, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o7056, o7057, "/InGameSequences/Navigation/PlayerPath_1", "pos_1", "pos_3", 0.5, 1, "Code2")
  else
    CallFunction(o7066, "Code2")
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
S_o7068 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  FormationLib.PlaceFormationPath(o7058, o7059, "/InGameSequences/Navigation/TechBomberPath_1")
  CallFunction(o7068, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o7058, o7059, "/InGameSequences/Navigation/TechBomberPath_1", "pos_1", "pos_3", 0.75, 1, "Code2")
  else
    CallFunction(o7068, "Code2")
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
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 497)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Navigation"), "Position_1", S_o30)
  o31 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_1", S_o31)
  o77 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_2", S_o77)
  o123 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock1_4_1", S_o123)
  o169 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_1", S_o169)
  o215 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_2", S_o215)
  o261 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_3", S_o261)
  o307 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_docking_1", S_o307)
  o353 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3a_01_1", S_o353)
  o399 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3a_02_1", S_o399)
  o445 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3b_01_1", S_o445)
  o491 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3b_01_2", S_o491)
  o537 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vehiclestation_1", S_o537)
  o583 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vehiclestation_2", S_o583)
  o629 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3a_04_1", S_o629)
  o675 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3a_05_1", S_o675)
  o721 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3b_02_1", S_o721)
  o767 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3b_02_2", S_o767)
  o813 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3b_03_1", S_o813)
  o859 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3a_02_2", S_o859)
  o905 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock3_1", S_o905)
  o951 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock1_4_2", S_o951)
  o997 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock1_4_3", S_o997)
  o1043 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3a_03_1", S_o1043)
  o1089 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vehiclestation_3", S_o1089)
  o1135 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dolphinhab_1", S_o1135)
  o1181 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_1", S_o1181)
  o1227 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangway01_1", S_o1227)
  o1273 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock1_1", S_o1273)
  o1319 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant1_1", S_o1319)
  o1365 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant2_1", S_o1365)
  o1411 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_1/Turm1", S_o1411)
  o1419.Start()
  o1457 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_2/Turm1", S_o1457)
  o1465.Start()
  o1503 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torptower_1/Turm1", S_o1503)
  o1511.Start()
  o1549 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_big_1", S_o1549)
  o1595 = BindEasy(Node_Find("/Scenario_Static/Object"), "gate_turret_hard_1/Turm1", S_o1595)
  o1641 = BindEasy(Node_Find("/Scenario_Static/Object"), "gate_turret_hard_2/Turm1", S_o1641)
  o1687 = BindEasy(Node_Find("/Scenario_Static/Object"), "gate_torp_m_1/Turm1", S_o1687)
  o1733 = BindEasy(Node_Find("/Scenario_Static/Object"), "gate_torp_m_2/Turm1", S_o1733)
  o1779 = BindEasy(Node_Find("/Scenario_Static/Object"), "gate_turret_medium_1/Turm1", S_o1779)
  o1825 = BindEasy(Node_Find("/Scenario_Static/Object"), "gate_turret_hard_01/Turm1", S_o1825)
  o1871 = BindEasy(Node_Find("/Scenario_Static/Object"), "gate_turret_hard_02/Turm1", S_o1871)
  o1917 = BindEasy(Node_Find("/Scenario_Static/Object"), "gate_torp_m_01/Turm1", S_o1917)
  o1963 = BindEasy(Node_Find("/Scenario_Static/Object"), "gate_torp_m_02/Turm1", S_o1963)
  o2009 = BindEasy(Node_Find("/Scenario_Static/Object"), "gate_turret_medium_01/Turm1", S_o2009)
  o2055 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_des_1", S_o2055)
  o2103 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_des_2", S_o2103)
  o2151 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_des_3", S_o2151)
  o2199 = BindEasy(Node_Find("/Scenario_Static/Object"), "C1_trafo_des", S_o2199)
  o2202.Start()
  o2246 = BindEasy(Node_Find("/Scenario_Static/Object"), "C1_turret_medium_01/Turm1", S_o2246)
  o2254.Start()
  o2292 = BindEasy(Node_Find("/Scenario_Static/Object"), "C1_turret_medium_02/Turm1", S_o2292)
  o2300.Start()
  o2338 = BindEasy(Node_Find("/Scenario_Static/Object"), "C1_turret_medium_03/Turm1", S_o2338)
  o2346.Start()
  o2384 = BindEasy(Node_Find("/Scenario_Static/Object"), "C1_torp_m_01/Turm1", S_o2384)
  o2392.Start()
  o2430 = BindEasy(Node_Find("/Scenario_Static/Object"), "C1_torp_m_02/Turm1", S_o2430)
  o2438.Start()
  o2476 = BindEasy(Node_Find("/Scenario_Static/Object"), "C2_trafo_des", S_o2476)
  o2479.Start()
  o2523 = BindEasy(Node_Find("/Scenario_Static/Object"), "C2_turret_medium_01/Turm1", S_o2523)
  o2531.Start()
  o2569 = BindEasy(Node_Find("/Scenario_Static/Object"), "C2_turret_medium_02/Turm1", S_o2569)
  o2577.Start()
  o2615 = BindEasy(Node_Find("/Scenario_Static/Object"), "C2_turret_medium_03/Turm1", S_o2615)
  o2623.Start()
  o2661 = BindEasy(Node_Find("/Scenario_Static/Object"), "C2_turret_medium_04/Turm1", S_o2661)
  o2669.Start()
  o2707 = BindEasy(Node_Find("/Scenario_Static/Object"), "C3_trafo_des", S_o2707)
  o2710.Start()
  o2754 = BindEasy(Node_Find("/Scenario_Static/Object"), "C3_turret_medium_01/Turm1", S_o2754)
  o2762.Start()
  o2800 = BindEasy(Node_Find("/Scenario_Static/Object"), "C3_turret_medium_02/Turm1", S_o2800)
  o2808.Start()
  o2846 = BindEasy(Node_Find("/Scenario_Static/Object"), "C3_turret_medium_03/Turm1", S_o2846)
  o2854.Start()
  o2892 = BindEasy(Node_Find("/Scenario_Static/Object"), "C4_trafo_des", S_o2892)
  o2895.Start()
  o2939 = BindEasy(Node_Find("/Scenario_Static/Object"), "C4_turret_medium_01/Turm1", S_o2939)
  o2947.Start()
  o2985 = BindEasy(Node_Find("/Scenario_Static/Object"), "C4_turret_medium_02/Turm1", S_o2985)
  o2993.Start()
  o3031 = BindEasy(Node_Find("/Scenario_Static/Object"), "C4_turret_medium_03/Turm1", S_o3031)
  o3039.Start()
  o3077 = BindEasy(Node_Find("/Scenario_Static/Object"), "C4_turret_medium_04/Turm1", S_o3077)
  o3085.Start()
  o3123 = BindEasy(Node_Find("/Scenario_Static/Object"), "C5_trafo_des", S_o3123)
  o3126.Start()
  o3170 = BindEasy(Node_Find("/Scenario_Static/Object"), "C5_turret_medium_01/Turm1", S_o3170)
  o3178.Start()
  o3216 = BindEasy(Node_Find("/Scenario_Static/Object"), "C5_torp_m_01/Turm1", S_o3216)
  o3224.Start()
  o3262 = BindEasy(Node_Find("/Scenario_Static/Object"), "C5_torp_m_02/Turm1", S_o3262)
  o3270.Start()
  o3308 = BindEasy(Node_Find("/Scenario_Static/Object"), "C6_trafo_des", S_o3308)
  o3311.Start()
  o3355 = BindEasy(Node_Find("/Scenario_Static/Object"), "C6_turret_medium_01/Turm1", S_o3355)
  o3363.Start()
  o3401 = BindEasy(Node_Find("/Scenario_Static/Object"), "C6_turret_medium_02/Turm1", S_o3401)
  o3409.Start()
  o3447 = BindEasy(Node_Find("/Scenario_Static/Object"), "C6_turret_medium_03/Turm1", S_o3447)
  o3455.Start()
  o3493 = BindEasy(Node_Find("/Scenario_Static/Object"), "C6_turret_medium_04/Turm1", S_o3493)
  o3501.Start()
  o3539 = BindEasy(Node_Find("/Scenario_Static/Object"), "C6_torp_m_01/Turm1", S_o3539)
  o3547.Start()
  o3585 = BindEasy(Node_Find("/Scenario_Static/Object"), "C6_torp_m_02/Turm1", S_o3585)
  o3593.Start()
  o3631 = BindEasy(Node_Find("/Scenario_Static/Object"), "C7_trafo_des", S_o3631)
  o3634.Start()
  o3678 = BindEasy(Node_Find("/Scenario_Static/Object"), "C7_turret_medium_01/Turm1", S_o3678)
  o3686.Start()
  o3724 = BindEasy(Node_Find("/Scenario_Static/Object"), "C7_turret_medium_02/Turm1", S_o3724)
  o3732.Start()
  o3770 = BindEasy(Node_Find("/Scenario_Static/Object"), "C7_turret_medium_03/Turm1", S_o3770)
  o3778.Start()
  o3816 = BindEasy(Node_Find("/Scenario_Static/Object"), "C7_torp_m_01/Turm1", S_o3816)
  o3824.Start()
  o3862 = BindEasy(Node_Find("/Scenario_Static/Object"), "C7_torp_m_02/Turm1", S_o3862)
  o3870.Start()
  o3908 = BindEasy(Node_Find("/Scenario_Static/Object"), "C7_torp_m_03/Turm1", S_o3908)
  o3916.Start()
  o3954 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_des_1", S_o3954)
  o3957.Start()
  o4001 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_1", S_o4001)
  o4047 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_1", S_o4047)
  o4093 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_2", S_o4093)
  o4139 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_3", S_o4139)
  o4185 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_4", S_o4185)
  o4231 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_5", S_o4231)
  o4277 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_1", S_o4277)
  o4323 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_1", S_o4323)
  o4369 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_1", S_o4369)
  o4415 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_2", S_o4415)
  o4461 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_3", S_o4461)
  o4507 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_2", S_o4507)
  o4553 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_2", S_o4553)
  o4599 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_3", S_o4599)
  o4645 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_1", S_o4645)
  o4691 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_2", S_o4691)
  o4737 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_1", S_o4737)
  o4783 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_2", S_o4783)
  o4829 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_1", S_o4829)
  o4875 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_2", S_o4875)
  o4921 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_1", S_o4921)
  o4967 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_1", S_o4967)
  o5013 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_1", S_o5013)
  o5059 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_1", S_o5059)
  o5105 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_1", S_o5105)
  o5151 = BindEasy(Node_Find("/Scenario_Static/Object"), "org_fungus_l_1", S_o5151)
  o5197 = BindEasy(Node_Find("/Scenario_Static/Object"), "org_fungus_m_1", S_o5197)
  o5243 = BindEasy(Node_Find("/Scenario_Static/Object"), "org_fungus_m_2", S_o5243)
  o5293 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "VehicleDock3_AreaAlarm", S_o5293)
  o5298.Start()
  o5299 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Eerie_NavTrigger", S_o5299)
  o5304.Start()
  o5305 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "tBonus2Area", S_o5305)
  o5310.Start()
  o5311 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o5311)
  o5331.Start()
  o5332.Start()
  o5335.Start()
  o5338.Start()
  o5344.Start()
  o5345.Start()
  o5352.Start()
  o5382 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Eerie", S_o5382)
  o5414.Start()
  o5455 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Stoney_Buggy", S_o5455)
  o5476.Start()
  o5513 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pla_harvester_static_1", S_o5513)
  o5560 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_techbomber_1", S_o5560)
  o5564.Start()
  o5574.Start()
  o5578.Start()
  o5617 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_buggy_1", S_o5617)
  o5622.Start()
  o5629.Start()
  o5666 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_tank_1", S_o5666)
  o5673.Start()
  o5680.Start()
  o5717 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_escort_1", S_o5717)
  o5722 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1", S_o5722)
  o5727 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_escort_2", S_o5727)
  o5732 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_guard_1", S_o5732)
  o5737 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_buggy_2", S_o5737)
  o5741.Start()
  o5747.Start()
  o5784 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_buggy_3", S_o5784)
  o5788.Start()
  o5794.Start()
  o5831 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_1", S_o5831)
  o5835.Start()
  o5847.Start()
  o5888 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_2", S_o5888)
  o5892.Start()
  o5904.Start()
  o5945 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_3", S_o5945)
  o5949.Start()
  o5961.Start()
  o6002 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_4", S_o6002)
  o6006.Start()
  o6018.Start()
  o6059 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_5", S_o6059)
  o6063.Start()
  o6075.Start()
  o6116 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_6", S_o6116)
  o6120.Start()
  o6132.Start()
  o6173 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "outp_tank_1", S_o6173)
  o6178.Start()
  o6185.Start()
  o6222 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "outp_tank_2", S_o6222)
  o6226.Start()
  o6233.Start()
  o6270 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_7", S_o6270)
  o6285.Start()
  o6326 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_8", S_o6326)
  o6341.Start()
  o6382 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_9", S_o6382)
  o6438 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_10", S_o6438)
  o6453.Start()
  o6494 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_11", S_o6494)
  o6509.Start()
  o6550 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_12", S_o6550)
  o6565.Start()
  o6606 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_13", S_o6606)
  o6621.Start()
  o6662 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_14", S_o6662)
  o6677.Start()
  o6718 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_15", S_o6718)
  o6733.Start()
  o6774 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_16", S_o6774)
  o6789.Start()
  o6830 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_17", S_o6830)
  o6845.Start()
  o6886 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_18", S_o6886)
  o6901.Start()
  o6942 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_1", S_o6942)
  o6963.Start()
  o6998 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_2", S_o6998)
  o7019.Start()
  o7054 = BindEasy(Node_Find("/"), "Camera", S_o7054)
  o7055 = BindEasy(Node_Find("/InGameSequences/Navigation"), "LookFrom_1", S_o7055)
  o7060 = BindEasy(Node_Find("/InGameSequences/Director"), "Intro", S_o7060)
  o7066 = BindEasy(Node_Find("/InGameSequences/Director"), "Intro_GotoPlayer", S_o7066)
  o7068 = BindEasy(Node_Find("/InGameSequences/Director"), "Intro_GotoTechBomber", S_o7068)
  o7056 = { {}, o5311 }()
  o7058 = { {}, o5382 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
