-- dekompiliert aus sta_entropoint.sco
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
  Terrain_LoadTerrain(node1, "map/1N2/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/1N2/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrain(node0, 0.025, 0.3)
  Game_SetCausticObject(node0, 0.1, 0.3)
  Game_SetCausticBuilding(node0, 0.025, 0.3)
  Game_SetLightCache(node0, "map/1N2/Lmsh/", "map/1N2/Ltex/")
  Game_SetTerrainDepth(node0, 2024)
  Game_SetDecompressionHeight(node0, 600)
  Game_SetAmbientLight(node0, 0.105882, 0.32549, 0)
  Game_SetParallelLightT(node0, 0.211765, 0.65098, 0)
  Game_SetParallelLightB(node0, 0.564706, 0.392157, 0.188235)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
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
  node8 = Node_CreateNode("nod_generic", "gen_stab1_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(1842.216, 2891.22, 252.4642), MAT_Vector3(0, 0.25, 1))
  Node_ParseIniFile(node8, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "gen_stab1_2")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(2422.481, 2857.221, 210.1718), MAT_Vector3(0, 2, 0))
  Node_ParseIniFile(node9, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "gen_stab1_3")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(938.2975, 2534.095, 277.2637), MAT_Vector3(0, 2, 0))
  Node_ParseIniFile(node10, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "gen_stab1_5")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(2921.448, 2626.609, 301.5844), MAT_Vector3(0, -2, 0))
  Node_ParseIniFile(node11, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "SpStern_1")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(635.2062, 3028.362, 662.4882), MAT_Vector3(-28.2113, 0, 0))
  Node_ParseIniFile(node12, "osd/ent/ent_jumpstar.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "gen_bunker_1")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(2967.31, 2569.039, 308.4564), MAT_Vector3(-90.3798, 0, 0))
  Node_ParseIniFile(node13, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "gen_stab3_1")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(2908.488, 2512.563, 301.5476), MAT_Vector3(0, 0.5, 1))
  Node_ParseIniFile(node14, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "gen_kannon_1")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(2936.882, 2495.819, 316.7945), MAT_Vector3(166.222, 0, 0))
  Node_ParseIniFile(node15, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "gen_kannon_2")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(3001.153, 2502.786, 317.0709), MAT_Vector3(173.1186, 0, 0))
  Node_ParseIniFile(node16, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_fx_plankton", "fx_plankton_green_1")
  Node_AddSon(node7, node17)
  Node_ParseIniFile(node17, "osd/fx_plankton/fx_plankton_green.osd")
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node7, node18)
  Node_ParseIniFile(node18, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_fx_sky", "fx_sky_13_1")
  Node_AddSon(node7, node19)
  Node_ParseIniFile(node19, "osd/fx_sky/fx_sky_13.osd")
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node7, node20)
  Node_ParseIniFile(node20, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node20, "map/1N2/Terrain/coral_01.tga")
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node7, node21)
  Node_ParseIniFile(node21, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node21, "map/1N2/Terrain/grass_01.tga")
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node7, node22)
  Node_ParseIniFile(node22, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node22, "map/1N2/Terrain/stone_01.tga")
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_fungus", "fungus_02_1")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(798.265117, 2654.452443, 450), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node23, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_fungus", "fungus_02_2")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(838.448097, 2701.332586, 500), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node24, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_fungus", "fungus_02_3")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(871.933914, 2637.709535, 400), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node25, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_fungus", "fungus_02_4")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(855.191005, 3381.094665, 408.799872), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node26, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_fungus", "fungus_02_5")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(922.162639, 3364.351757, 459.426918), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node27, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_fungus", "fungus_02_6")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(878.631077, 3320.820195, 354.731181), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node28, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_fungus", "fungus_02_7")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(1370.872582, 2604.223718, 269.413984), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node29, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_fungus", "fungus_02_8")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(1269.665147, 2740.729591, 67.297196), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node30, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_fungus", "fungus_02_9")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(2088.217606, 2844.03602, 13.436167), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node31, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_fungus", "fungus_02_10")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(2195.633829, 2868.78374, 12), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node32, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_fungus", "fungus_02_11")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(1876.337803, 3142.049105, 35), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node33, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_fungus", "fungus_02_12")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(1982.283812, 3173.078878, 50), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node34, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_fungus", "fungus_02_13")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(3158.005738, 1098.934311, 180), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node35, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_fungus", "fungus_02_14")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(3159.729348, 1035.830261, 150), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node36, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_fungus", "fungus_01_1")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(1184.654145, 1974.565234, 323.053619), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node37, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_fungus", "fungus_01_2")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(1700.335722, 1475.626566, 278.856977), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node38, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_fungus", "fungus_01_3")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(1844.324733, 1475.626566, 285.160161), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node39, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_fungus", "fungus_01_4")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(3026.374062, 2148.691481, 45), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node40, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_fungus", "fungus_01_5")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(2842.929892, 784.177797, 93.776477), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node41, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node42)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node42, node43)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node42, node44)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("NOD_PatrolArea", "FightArea_1")
  Node_AddSon(node44, node45)
  PatrolArea_SetPosition(node45, MAT_Vector3(3577.342, 1090.558, -10))
  PatrolArea_SetRadius(node45, 512)
  PatrolArea_SetMinZ(node45, 0)
  PatrolArea_SetMaxZ(node45, 750)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node44, node46)
  Position_SetPosition(node46, MAT_Vector3(1211.829079, 3073.429111, 825))
  Position_SetRadius(node46, 5)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("NOD_Path", "Path_1")
  Node_AddSon(node44, node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node47, node48)
  Position_SetPosition(node48, MAT_Vector3(2743.172263, 3266.81584, 825))
  Position_SetRadius(node48, 5)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("NOD_Path", "ScoutPath_1")
  Node_AddSon(node44, node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node49, node50)
  Position_SetPosition(node50, MAT_Vector3(896.229516, 2957.605365, 844.021543))
  Position_SetRadius(node50, 5)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node49, node51)
  Position_SetPosition(node51, MAT_Vector3(727.807229, 2995.543123, 843.274235))
  Position_SetRadius(node51, 5)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node49, node52)
  Position_SetPosition(node52, MAT_Vector3(371.418776, 3027.157883, 850))
  Position_SetRadius(node52, 5)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("NOD_Path", "ScoutPath_2")
  Node_AddSon(node44, node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node53, node54)
  Position_SetPosition(node54, MAT_Vector3(210.109531, 3055.622138, 792.457347))
  Position_SetRadius(node54, 5)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node53, node55)
  Position_SetPosition(node55, MAT_Vector3(549.036232, 3078.059658, 790.215408))
  Position_SetRadius(node55, 5)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node53, node56)
  Position_SetPosition(node56, MAT_Vector3(848.960973, 3118.387722, 790.215408))
  Position_SetRadius(node56, 5)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node53, node57)
  Position_SetPosition(node57, MAT_Vector3(912.762416, 3301.255749, 779.0058))
  Position_SetRadius(node57, 5)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node53, node58)
  Position_SetPosition(node58, MAT_Vector3(639.967714, 3412.263362, 779.0058))
  Position_SetRadius(node58, 5)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node53, node59)
  Position_SetPosition(node59, MAT_Vector3(159.329443, 3341.407237, 779.0058))
  Position_SetRadius(node59, 5)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("NOD_Path", "PolPath_2")
  Node_AddSon(node44, node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node60, node61)
  Position_SetPosition(node61, MAT_Vector3(475.690166, 2957.268552, 840))
  Position_SetRadius(node61, 5)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node60, node62)
  Position_SetPosition(node62, MAT_Vector3(642.962831, 2925.653898, 839.252693))
  Position_SetRadius(node62, 5)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node60, node63)
  Position_SetPosition(node63, MAT_Vector3(724.012487, 2801.492896, 714.68298))
  Position_SetRadius(node63, 5)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node60, node64)
  Position_SetPosition(node64, MAT_Vector3(885.53689, 2884.842143, 652.753077))
  Position_SetRadius(node64, 5)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node60, node65)
  Position_SetPosition(node65, MAT_Vector3(933.690792, 2986.75732, 496.835412))
  Position_SetRadius(node65, 5)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node60, node66)
  Position_SetPosition(node66, MAT_Vector3(931.83948, 3198.120226, 496.8354))
  Position_SetRadius(node66, 5)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node60, node67)
  Position_SetPosition(node67, MAT_Vector3(934.265641, 3433.455632, 658.623015))
  Position_SetRadius(node67, 5)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node60, node68)
  Position_SetPosition(node68, MAT_Vector3(723.191373, 3363.097924, 771.466385))
  Position_SetRadius(node68, 5)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node60, node69)
  Position_SetPosition(node69, MAT_Vector3(533.613389, 2819.753878, 771.4664))
  Position_SetRadius(node69, 5)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node60, node70)
  Position_SetPosition(node70, MAT_Vector3(156.150038, 2669.107187, 771.4664))
  Position_SetRadius(node70, 5)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node42, node71)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node42, node72)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("NOD_Trigger", "TriggerPresence_1")
  Node_AddSon(node72, node73)
  Body_SetFriendOrFoeID(node73, 3)
  Body_SetPosition(node73, MAT_Vector3(3578.097663, 1088.86917, 210.078073))
  Trigger_SetPresenceSphere(node73, 700)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("NOD_Trigger", "TriggerPresence_2")
  Node_AddSon(node72, node74)
  Body_SetFriendOrFoeID(node74, 3)
  Body_SetPosition(node74, MAT_Vector3(3640.074675, 1314.773233, 213.954305))
  Trigger_SetPresenceSphere(node74, 40)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node42, node75)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("NOD_Directory", "TRAFFIC")
  Node_AddSon(node75, node76)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_vessel", "ent_jumpship_1")
  Node_AddSon(node76, node77)
  Body_SetCS(node77, MAT_Vector3(1211.829079, 3073.429111, 702), MAT_Vector3(94.758047, 0, 0))
  Node_ParseIniFile(node77, "osd/ent/ent_jumpship.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_vessel", "gen_freighter1_1")
  Node_AddSon(node76, node78)
  Body_SetCS(node78, MAT_Vector3(759.953894, 3204.977704, 782.639286), MAT_Vector3(-115.008136, 0, 0))
  Node_ParseIniFile(node78, "osd/gen/gen_freighter1.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_vessel", "ent_scout_1")
  Node_AddSon(node76, node79)
  Body_SetCS(node79, MAT_Vector3(981.120953, 2957.371645, 850), MAT_Vector3(90.113291, 0, 0))
  Node_ParseIniFile(node79, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_vessel", "ent_scout_2")
  Node_AddSon(node76, node80)
  Body_SetCS(node80, MAT_Vector3(1108.661373, 2947.924565, 850), MAT_Vector3(90.11329, 0, 0))
  Node_ParseIniFile(node80, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_vessel", "ent_scout_3")
  Node_AddSon(node76, node81)
  Body_SetCS(node81, MAT_Vector3(1066.147915, 3002.247316, 850), MAT_Vector3(90.11329, 0, 0))
  Node_ParseIniFile(node81, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_vessel", "ent_pscout_1")
  Node_AddSon(node76, node82)
  Body_SetCS(node82, MAT_Vector3(398.285955, 2983.058393, 840), MAT_Vector3(-111.325976, 0, 0))
  Node_ParseIniFile(node82, "osd/ent/ent_pscout.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_vessel", "ent_pscout_2")
  Node_AddSon(node76, node83)
  Body_SetCS(node83, MAT_Vector3(385.639959, 3001.452241, 840), MAT_Vector3(-111.326, 0, 0))
  Node_ParseIniFile(node83, "osd/ent/ent_pscout.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_vessel", "ent_pscout_3")
  Node_AddSon(node76, node84)
  Body_SetCS(node84, MAT_Vector3(372.419139, 2973.285818, 840), MAT_Vector3(-111.326, 0, 0))
  Node_ParseIniFile(node84, "osd/ent/ent_pscout.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node85)
  Camera_SetBackPlane(node85, 1024)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("NOD_Scenario", "stationcamera")
  Node_AddSon(node0, node86)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node86, node87)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node86, node88)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Position", "MoveFrom")
  Node_AddSon(node88, node89)
  Position_SetPosition(node89, MAT_Vector3(69.288098, 3149.61653, 782.9953))
  Position_SetRadius(node89, 10)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Position", "LookFrom")
  Node_AddSon(node88, node90)
  Position_SetPosition(node90, MAT_Vector3(350.720359, 3105.946375, 782.995336))
  Position_SetRadius(node90, 10)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Position", "LookAt")
  Node_AddSon(node88, node91)
  Position_SetPosition(node91, MAT_Vector3(1063.710196, 3021.235586, 504.86656))
  Position_SetRadius(node91, 15)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node86, node92)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Director", "camera")
  Node_AddSon(node92, node93)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node86, node94)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node86, node95)
  Node_EnterSimulation(node95)
end
SetEnemyMatrixElement(0, 0, N)
SetEnemyMatrixElement(1, 0, F)
SetEnemyMatrixElement(2, 0, E)
SetEnemyMatrixElement(3, 0, E)
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
SetEnemyMatrixElement(0, 1, F)
SetEnemyMatrixElement(1, 1, N)
SetEnemyMatrixElement(2, 1, E)
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
SetEnemyMatrixElement(0, 2, E)
SetEnemyMatrixElement(1, 2, E)
SetEnemyMatrixElement(2, 2, N)
SetEnemyMatrixElement(3, 2, F)
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
SetEnemyMatrixElement(2, 3, F)
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
SetEnemyMatrixElement(0, 6, E)
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
S_o304 = { [nil] = {}, Start = function(L0)

end }
S_o340 = { [nil] = {}, Start = function(L0)

end }
o342 = FormationLib.CreateFormation("Triangle", "", "", "", 25, 25)
o344 = FormationLib.CreateFormation("Triangle", "", "", "", 15, 15)
S_o345 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o345, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o345, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o345, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "wng", "", "", "", False, False, True)
  CallFunction(o345, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o345, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o345, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
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
S_o351 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o351, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o351, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o351, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "HelpTran", "", "", "", False, False, True)
  CallFunction(o351, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o351, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o351, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
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
S_o357 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code1")
  else
    CallFunction(o357, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o357, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 25 } }("Code4")
  else
    CallFunction(o357, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Sink", "/Scenario_Dynamic/Navigation/Position_1", 0.1, 1 } }("Code5")
  else
    CallFunction(o357, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "WaitWithHeading", "/Scenario_Dynamic/Navigation/Path_1", "pos_1", 35 } }("Code6")
  else
    CallFunction(o357, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Path_1", 1, 1 } }("Code7")
  else
    CallFunction(o357, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code8")
  else
    CallFunction(o357, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o407 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code1")
  else
    CallFunction(o407, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o407, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o453 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o453, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o453, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o453, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o453, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o453, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o341, { {}, "Goto", "/Scenario_Dynamic/Navigation/ScoutPath_1", 0.35, 1 } }, o342, "/Scenario_Dynamic/Navigation/FightArea_1", 0, "", "", "", "", 0, 1, False, "Code7")
  else
    CallFunction(o453, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o341, { {}, "Goto", "/Scenario_Dynamic/Navigation/ScoutPath_2", 0.6, 1 } }, o342, "/Scenario_Dynamic/Navigation/FightArea_1", 0, "", "", "", "", 0, 1, True, "Code8")
  else
    CallFunction(o453, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
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
S_o502 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o502, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o502, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o502, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o502, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o502, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o341, { {}, "Goto", "/Scenario_Dynamic/Navigation/ScoutPath_1", 0.35, 1 } }, o342, "/Scenario_Dynamic/Navigation/FightArea_1", 0, "", "", "", "", 0, 1, False, "Code7")
  else
    CallFunction(o502, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o341, { {}, "Goto", "/Scenario_Dynamic/Navigation/ScoutPath_2", 0.6, 1 } }, o342, "/Scenario_Dynamic/Navigation/FightArea_1", 0, "", "", "", "", 0, 1, True, "Code8")
  else
    CallFunction(o502, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
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
S_o551 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o551, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o551, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o551, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o551, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o551, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o341, { {}, "Goto", "/Scenario_Dynamic/Navigation/ScoutPath_1", 0.35, 1 } }, o342, "/Scenario_Dynamic/Navigation/FightArea_1", 0, "", "", "", "", 0, 1, False, "Code7")
  else
    CallFunction(o551, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o341, { {}, "Goto", "/Scenario_Dynamic/Navigation/ScoutPath_2", 0.6, 1 } }, o342, "/Scenario_Dynamic/Navigation/FightArea_1", 0, "", "", "", "", 0, 1, True, "Code8")
  else
    CallFunction(o551, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
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
S_o600 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o600, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o600, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o600, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o600, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o600, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o343, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolPath_2", 0.5, 1 } }, o344, "/Scenario_Dynamic/Navigation/FightArea_1", 0, "", "", "", "", 0, 1, True, "Code7")
  else
    CallFunction(o600, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
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
S_o648 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o648, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o648, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o648, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o648, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o648, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o343, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolPath_2", 0.5, 1 } }, o344, "/Scenario_Dynamic/Navigation/FightArea_1", 0, "", "", "", "", 0, 1, True, "Code7")
  else
    CallFunction(o648, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
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
S_o696 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o696, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o696, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o696, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o696, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o696, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o343, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolPath_2", 0.5, 1 } }, o344, "/Scenario_Dynamic/Navigation/FightArea_1", 0, "", "", "", "", 0, 1, True, "Code7")
  else
    CallFunction(o696, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
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
S_o744 = { [nil] = {}, Start = function(L0)

end }
S_o745 = { [nil] = {}, Start = function(L0)

end }
S_o746 = { [nil] = {}, Start = function(L0)

end }
S_o747 = { [nil] = {}, Start = function(L0)

end }
S_o748 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Camera_MoveTo(L0.Node, "/stationcamera/Navigation/MoveFrom", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/stationcamera/Navigation/LookAt", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  CallFunction(o748, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.15, "Code4")
  else
    CallFunction(o748, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/stationcamera/Navigation/LookFrom", 3, "MMMN", 0)
  CallFunction(o748, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 95)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_1", S_o30)
  o64 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_2", S_o64)
  o98 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_3", S_o98)
  o132 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_5", S_o132)
  o166 = BindEasy(Node_Find("/Scenario_Static/Object"), "SpStern_1", S_o166)
  o200 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker_1", S_o200)
  o234 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_1", S_o234)
  o268 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kannon_1/Turm1", S_o268)
  o304 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kannon_2/Turm1", S_o304)
  o340 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Position_1", S_o340)
  o345 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_1", S_o345)
  o351 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_2", S_o351)
  o357 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "ent_jumpship_1", S_o357)
  o407 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_freighter1_1", S_o407)
  o453 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "ent_scout_1", S_o453)
  o502 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "ent_scout_2", S_o502)
  o551 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "ent_scout_3", S_o551)
  o600 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "ent_pscout_1", S_o600)
  o648 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "ent_pscout_2", S_o648)
  o696 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "ent_pscout_3", S_o696)
  o744 = BindEasy(Node_Find("/"), "Camera", S_o744)
  o745 = BindEasy(Node_Find("/stationcamera/Navigation"), "MoveFrom", S_o745)
  o746 = BindEasy(Node_Find("/stationcamera/Navigation"), "LookFrom", S_o746)
  o747 = BindEasy(Node_Find("/stationcamera/Navigation"), "LookAt", S_o747)
  o748 = BindEasy(Node_Find("/stationcamera/Director"), "camera", S_o748)
  o341 = { {}, o453, o502, o551 }()
  o343 = { {}, o600, o648, o696 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
