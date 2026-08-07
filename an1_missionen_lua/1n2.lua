-- dekompiliert aus map\1n2\script\1n2.sco
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
  Terrain_LoadTerrain(node1, "map/1N2/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/1N2/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrain(node0, 0.025, 0.3)
  Game_SetCausticObject(node0, 0.1, 0.3)
  Game_SetCausticBuilding(node0, 0.025, 0.3)
  Game_SetLightCache(node0, "map/1N2/Lmsh/", "map/1N2/Ltex/")
  Game_SetTerrainDepth(node0, 2024)
  Game_SetDecompressionHeight(node0, 300)
  Game_SetAmbientLight(node0, 0.105882, 0.32549, 0)
  Game_SetParallelLightT(node0, 0.211765, 0.65098, 0)
  Game_SetParallelLightB(node0, 0.564706, 0.392157, 0.188235)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_1N2_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track04.sam", 1)
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
  node46 = Node_CreateNode("NOD_PatrolArea", "StarArea_1")
  Node_AddSon(node44, node46)
  PatrolArea_SetPosition(node46, MAT_Vector3(1185.154, 2850.392, 400))
  PatrolArea_SetRadius(node46, 400)
  PatrolArea_SetMinZ(node46, -200)
  PatrolArea_SetMaxZ(node46, 200)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("NOD_PatrolArea", "DefendArea_2")
  Node_AddSon(node44, node47)
  PatrolArea_SetPosition(node47, MAT_Vector3(635.1057, 3039.671, 531.4945))
  PatrolArea_SetRadius(node47, 1000)
  PatrolArea_SetMinZ(node47, -400)
  PatrolArea_SetMaxZ(node47, 2000)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("NOD_PatrolArea", "DefendArea_1")
  Node_AddSon(node44, node48)
  PatrolArea_SetPosition(node48, MAT_Vector3(2060.628, 2042.802, 531.4945))
  PatrolArea_SetRadius(node48, 2800)
  PatrolArea_SetMinZ(node48, -400)
  PatrolArea_SetMaxZ(node48, 2000)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("NOD_Path", "Approach_Intro")
  Node_AddSon(node44, node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node49, node50)
  Position_SetPosition(node50, MAT_Vector3(2862.102223, 1747.31415, 350.962704))
  Position_SetRadius(node50, 5)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node49, node51)
  Position_SetPosition(node51, MAT_Vector3(2968.739842, 1606.823319, 335.863449))
  Position_SetRadius(node51, 5)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node49, node52)
  Position_SetPosition(node52, MAT_Vector3(2928.115987, 1390.16276, 386.791627))
  Position_SetRadius(node52, 5)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node49, node53)
  Position_SetPosition(node53, MAT_Vector3(3450.916123, 1277.487143, 217.67133))
  Position_SetRadius(node53, 5)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node49, node54)
  Position_SetPosition(node54, MAT_Vector3(3273.013792, 983.689783, 136.57235))
  Position_SetRadius(node54, 5)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node49, node55)
  Position_SetPosition(node55, MAT_Vector3(3432.976903, 879.366014, 184.599749))
  Position_SetRadius(node55, 5)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("NOD_Path", "Pirates_Approach_1")
  Node_AddSon(node44, node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node56, node57)
  Position_SetPosition(node57, MAT_Vector3(3618.721518, 393.185658, 282.860584))
  Position_SetRadius(node57, 5)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node56, node58)
  Position_SetPosition(node58, MAT_Vector3(3719.92689, 614.688069, 150.17783))
  Position_SetRadius(node58, 5)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("NOD_Path", "Escape_path_TZ_1")
  Node_AddSon(node44, node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node59, node60)
  Position_SetPosition(node60, MAT_Vector3(3371.545717, 1171.060207, 134.864318))
  Position_SetRadius(node60, 5)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node59, node61)
  Position_SetPosition(node61, MAT_Vector3(3315.848366, 939.186979, 157.116387))
  Position_SetRadius(node61, 5)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node59, node62)
  Position_SetPosition(node62, MAT_Vector3(3674.305034, 670.947307, 91.266471))
  Position_SetRadius(node62, 5)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node59, node63)
  Position_SetPosition(node63, MAT_Vector3(3653.909674, 411.143529, 271.378653))
  Position_SetRadius(node63, 5)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("NOD_Path", "Help_Path_1")
  Node_AddSon(node44, node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node64, node65)
  Position_SetPosition(node65, MAT_Vector3(3185.812344, 2657.512255, 171.348934))
  Position_SetRadius(node65, 5)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node64, node66)
  Position_SetPosition(node66, MAT_Vector3(3567.252572, 1940.688051, 167.175469))
  Position_SetRadius(node66, 5)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node64, node67)
  Position_SetPosition(node67, MAT_Vector3(3535.367475, 1732.844459, 143.660866))
  Position_SetRadius(node67, 5)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node64, node68)
  Position_SetPosition(node68, MAT_Vector3(3639.124034, 1439.327566, 259.459188))
  Position_SetRadius(node68, 5)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node64, node69)
  Position_SetPosition(node69, MAT_Vector3(3425.673856, 1375.063394, 226.251464))
  Position_SetRadius(node69, 5)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node64, node70)
  Position_SetPosition(node70, MAT_Vector3(3469.269084, 1303.053164, 223.513235))
  Position_SetRadius(node70, 5)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node64, node71)
  Position_SetPosition(node71, MAT_Vector3(3537.639858, 1334.818076, 227.10067))
  Position_SetRadius(node71, 5)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node44, node72)
  Position_SetPosition(node72, MAT_Vector3(3576.813051, 1610.325039, 203.0902))
  Position_SetRadius(node72, 5)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("NOD_Position", "Position_5")
  Node_AddSon(node44, node73)
  Position_SetPosition(node73, MAT_Vector3(3476.619995, 1470.665587, 231.6489))
  Position_SetRadius(node73, 5)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("NOD_Position", "Position_2")
  Node_AddSon(node44, node74)
  Position_SetPosition(node74, MAT_Vector3(3533.145617, 1593.023459, 203.090191))
  Position_SetRadius(node74, 5)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("NOD_Position", "Position_4")
  Node_AddSon(node44, node75)
  Position_SetPosition(node75, MAT_Vector3(3399.996911, 1151.078435, 253.485396))
  Position_SetRadius(node75, 5)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("NOD_Path", "HelpTranOut_Path")
  Node_AddSon(node44, node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node76, node77)
  Position_SetPosition(node77, MAT_Vector3(3604.272881, 1627.734242, 200.132175))
  Position_SetRadius(node77, 15)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node42, node78)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node42, node79)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("NOD_Trigger", "TriggerPresence_1")
  Node_AddSon(node79, node80)
  Body_SetFriendOrFoeID(node80, 3)
  Body_SetPosition(node80, MAT_Vector3(3578.097663, 1088.86917, 210.078073))
  Trigger_SetPresenceSphere(node80, 700)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("NOD_Trigger", "TriggerPresence_2")
  Node_AddSon(node79, node81)
  Body_SetFriendOrFoeID(node81, 3)
  Body_SetPosition(node81, MAT_Vector3(3640.074675, 1314.773233, 213.954305))
  Trigger_SetPresenceSphere(node81, 50)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node42, node82)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("NOD_Directory", "TRAFFIC")
  Node_AddSon(node82, node83)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_vessel", "tz_scoA_1")
  Node_AddSon(node82, node84)
  Body_SetCS(node84, MAT_Vector3(3589.502, 366.1615, 256.1685), MAT_Vector3(-36.9822, 0, 0))
  Node_ParseIniFile(node84, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_vessel", "tz_scoA_4")
  Node_AddSon(node82, node85)
  Body_SetCS(node85, MAT_Vector3(3580.523, 306.4284, 256.1685), MAT_Vector3(-36.9822, 0, 0))
  Node_ParseIniFile(node85, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_vessel", "tz_scoA_2")
  Node_AddSon(node82, node86)
  Body_SetCS(node86, MAT_Vector3(3572.832, 353.5154, 258.5012), MAT_Vector3(-36.2224, 0, 0))
  Node_ParseIniFile(node86, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_vessel", "tz_scoA_3")
  Node_AddSon(node82, node87)
  Body_SetCS(node87, MAT_Vector3(3566, 324.8201, 258.5012), MAT_Vector3(-36.2224, 0, 0))
  Node_ParseIniFile(node87, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_vessel", "tz_sco1v1_3")
  Node_AddSon(node82, node88)
  Body_SetCS(node88, MAT_Vector3(3516.663096, 1129.314781, 198.985692), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node88, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_vessel", "tz_sco1v1_4")
  Node_AddSon(node82, node89)
  Body_SetCS(node89, MAT_Vector3(3536.293066, 1148.637366, 198.432006), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node89, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_vessel", "tz_sco1v2_1")
  Node_AddSon(node82, node90)
  Body_SetCS(node90, MAT_Vector3(3590.652, 332.8219, 257.41), MAT_Vector3(-42.9685, 0, 0))
  Node_ParseIniFile(node90, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node90, 0)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_vessel", "tz_sco1v2_2")
  Node_AddSon(node82, node91)
  Body_SetCS(node91, MAT_Vector3(3577.431, 287.986, 264.5485), MAT_Vector3(-42.9685, 0, 0))
  Node_ParseIniFile(node91, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node91, 0)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_vessel", "tz_sco1v2A_1")
  Node_AddSon(node82, node92)
  Body_SetCS(node92, MAT_Vector3(3554.946, 341.4118, 281.6583), MAT_Vector3(-42.9685, 0, 0))
  Node_ParseIniFile(node92, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node92, 0)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "gen_contain_1")
  Node_AddSon(node82, node93)
  Body_SetCS(node93, MAT_Vector3(3362.894, 1084.084, 51.80328), MAT_Vector3(5.706625, -10.635, -8.9251))
  Node_ParseIniFile(node93, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node93, 7)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_generic", "gen_contain_2")
  Node_AddSon(node82, node94)
  Body_SetCS(node94, MAT_Vector3(3477.055, 1222.274, 42.98117), MAT_Vector3(-127.4084, 8.124389, -1.1133))
  Node_ParseIniFile(node94, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node94, 7)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_generic", "gen_contain_3")
  Node_AddSon(node82, node95)
  Body_SetCS(node95, MAT_Vector3(3365.776, 827.6084, 37.94695), MAT_Vector3(-10.1942, 18.02136, 6.781121))
  Node_ParseIniFile(node95, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node95, 7)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_generic", "gen_contain_4")
  Node_AddSon(node82, node96)
  Body_SetCS(node96, MAT_Vector3(3466.278, 747.1819, 20.01014), MAT_Vector3(8.671853, -17.0072, 3.209652))
  Node_ParseIniFile(node96, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node96, 7)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_generic", "gen_contain_5")
  Node_AddSon(node82, node97)
  Body_SetCS(node97, MAT_Vector3(3650.207, 1245.851, 99.62957), MAT_Vector3(-86.34164, 22.37501, 3.468458))
  Node_ParseIniFile(node97, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node97, 7)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_vessel", "HelpTran")
  Node_AddSon(node82, node98)
  Body_SetCS(node98, MAT_Vector3(3177.067122, 2727.707429, 271.351758), MAT_Vector3(106.49249, -2.867342, 7.563082))
  Node_ParseIniFile(node98, "osd/gen/gen_freighter1.osd")
  Body_SetFriendOrFoeID(node98, 6)
  Body_SetNameKey(node98, 4)
  Body_SetCargoKey(node98, 1012, 0)
  Body_SetCargoKey(node98, 0, 1)
  Body_SetCargoKey(node98, 0, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_vessel", "wng_pico")
  Node_AddSon(node82, node99)
  Body_SetCS(node99, MAT_Vector3(2823.171029, 1796.401308, 267.264468), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node99, "osd/wng/wng_pico.osd")
  Body_SetFriendOrFoeID(node99, 3)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node82, node100)
  Body_SetCS(node100, MAT_Vector3(2805.791184, 1825.274971, 256.431175), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node100, "osd/pla/pla_drowsymaggie.osd")
  Body_SetFriendOrFoeID(node100, 3)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_generic", "SSchiff_d")
  Node_AddSon(node82, node101)
  Body_SetCS(node101, MAT_Vector3(3642.365113, 1173.446438, 183.883545), MAT_Vector3(132.811891, -9.622757, 1.263346))
  Node_ParseIniFile(node101, "osd/des/des_jumpship_dam.osd")
  Body_SetFriendOrFoeID(node101, 2)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_trash", "des_schrott2a_low_1")
  Node_AddSon(node82, node102)
  Body_SetCS(node102, MAT_Vector3(3211.241099, 1041.815371, 238.348538), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node102, "osd/des/des_schrott2a_low.osd")
  Body_SetFriendOrFoeID(node102, 7)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_trash", "des_schrott2b_low_1")
  Node_AddSon(node82, node103)
  Body_SetCS(node103, MAT_Vector3(3307.475115, 1147.129041, 155.918397), MAT_Vector3(-121.361439, 55.3129, 87.829658))
  Node_ParseIniFile(node103, "osd/des/des_schrott2b_low.osd")
  Body_SetFriendOrFoeID(node103, 7)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_generic", "des_schrott2a_bui_1")
  Node_AddSon(node82, node104)
  Body_SetCS(node104, MAT_Vector3(3442.354164, 1187.444825, 305.395223), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node104, "osd/des/des_schrott2a_bui.osd")
  Body_SetFriendOrFoeID(node104, 7)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_trash", "des_schrott3_1")
  Node_AddSon(node82, node105)
  Body_SetCS(node105, MAT_Vector3(3411.483984, 1097.196941, 175.667141), MAT_Vector3(105.37516, -3.776553, 5.77403))
  Node_ParseIniFile(node105, "osd/des/des_schrott3.osd")
  Body_SetFriendOrFoeID(node105, 7)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_generic", "des_schrott3a_bui_1")
  Node_AddSon(node82, node106)
  Body_SetCS(node106, MAT_Vector3(3486.924661, 1179.306521, 182.947969), MAT_Vector3(-13.279835, 7.796563, 9.841863))
  Node_ParseIniFile(node106, "osd/des/des_schrott3a_bui.osd")
  Body_SetFriendOrFoeID(node106, 7)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_trash", "des_schrott3a_low_1")
  Node_AddSon(node82, node107)
  Body_SetCS(node107, MAT_Vector3(3345.845082, 1213.58959, 131.402156), MAT_Vector3(-86.202902, 0, 0))
  Node_ParseIniFile(node107, "osd/des/des_schrott3a_low.osd")
  Body_SetFriendOrFoeID(node107, 7)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_trash", "des_schrott3b_low_1")
  Node_AddSon(node82, node108)
  Body_SetCS(node108, MAT_Vector3(3319.18068, 1164.948891, 191.055839), MAT_Vector3(63.309618, 0, 0))
  Node_ParseIniFile(node108, "osd/des/des_schrott3b_low.osd")
  Body_SetFriendOrFoeID(node108, 7)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_trash", "des_schrott2b_low_2")
  Node_AddSon(node82, node109)
  Body_SetCS(node109, MAT_Vector3(3357.476858, 1247.55119, 202.9048), MAT_Vector3(32.183174, -31.14819, -17.499902))
  Node_ParseIniFile(node109, "osd/des/des_schrott2b_low.osd")
  Body_SetFriendOrFoeID(node109, 7)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_trash", "des_schrott3a_low_2")
  Node_AddSon(node82, node110)
  Body_SetCS(node110, MAT_Vector3(3437.656396, 1100.002368, 179.716373), MAT_Vector3(10.445646, -7.49177, -23.43955))
  Node_ParseIniFile(node110, "osd/des/des_schrott3a_low.osd")
  Body_SetFriendOrFoeID(node110, 7)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_generic", "gen_container_1")
  Node_AddSon(node82, node111)
  Body_SetCS(node111, MAT_Vector3(3488.419611, 1216.699439, 127.186206), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node111, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node111, 7)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_generic", "gen_container_2")
  Node_AddSon(node82, node112)
  Body_SetCS(node112, MAT_Vector3(3393.819733, 1214.431947, 162.730002), MAT_Vector3(-61.285232, 0, 0))
  Node_ParseIniFile(node112, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node112, 7)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_generic", "gen_container_3")
  Node_AddSon(node82, node113)
  Body_SetCS(node113, MAT_Vector3(3295.900859, 1206.571369, 166.180162), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node113, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node113, 7)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_generic", "gen_container_4")
  Node_AddSon(node82, node114)
  Body_SetCS(node114, MAT_Vector3(3437.284253, 1132.06169, 199.576357), MAT_Vector3(56.888713, 0, 0))
  Node_ParseIniFile(node114, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node114, 7)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_vessel", "tz_scout1v2_1")
  Node_AddSon(node82, node115)
  Body_SetCS(node115, MAT_Vector3(3555.515256, 1564.737482, 184.2059), MAT_Vector3(-169.3466, 0, 0))
  Node_ParseIniFile(node115, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node115, 0)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_vessel", "tz_scout1v2_2")
  Node_AddSon(node82, node116)
  Body_SetCS(node116, MAT_Vector3(3610.717374, 1604.284805, 184.20591), MAT_Vector3(-169.346593, 0, 0))
  Node_ParseIniFile(node116, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node116, 0)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_vessel", "tz_scout1v2_3")
  Node_AddSon(node82, node117)
  Body_SetCS(node117, MAT_Vector3(3319.924546, 1313.046946, 184.20591), MAT_Vector3(-103.595782, 0, 0))
  Node_ParseIniFile(node117, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node117, 0)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_vessel", "tz_scout1v2_4")
  Node_AddSon(node82, node118)
  Body_SetCS(node118, MAT_Vector3(3488.098879, 1416.164962, 226.733942), MAT_Vector3(-152.298881, 0, 0))
  Node_ParseIniFile(node118, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node118, 0)
  Body_SetNameKey(node118, 5)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_vessel", "tz_scout1v2_5")
  Node_AddSon(node82, node119)
  Body_SetCS(node119, MAT_Vector3(3537.197849, 1480.53324, 226.7339), MAT_Vector3(-152.2989, 0, 0))
  Node_ParseIniFile(node119, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node119, 0)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node120)
  Camera_SetBackPlane(node120, 1024)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_Scenario", "IngameSequences")
  Node_AddSon(node0, node121)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node121, node122)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node121, node123)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node121, node124)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_Director", "Chapter1_Intro_V")
  Node_AddSon(node124, node125)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_Director", "Chapter1_AddOn_V")
  Node_AddSon(node124, node126)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_Director", "Chapter1_Intro_A")
  Node_AddSon(node124, node127)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("NOD_Director", "Cut_1")
  Node_AddSon(node124, node128)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("NOD_Director", "Cut_1_Audio")
  Node_AddSon(node124, node129)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("NOD_Director", "Cut_2")
  Node_AddSon(node124, node130)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("NOD_Director", "Pico_1")
  Node_AddSon(node124, node131)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node121, node132)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node121, node133)
  Node_EnterSimulation(node133)
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
                                                if not (o1035.Value == True) then
                                                  if not (False == True) then
                                                    if not (o1117.Value == True) then
                                                      if not (False == True) then
                                                        if not (False == True) then
                                                          if not (False == True) then
                                                            if not (False == True) then
                                                              if not (False == True) then
                                                                if not (False == True) then
                                                                  if not (False == True) then
                                                                    if not (False == True) then
                                                                      if not (False == True) then
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
S_o304 = { [nil] = {}, Start = function(L0)

end }
o340 = FormationLib.CreateFormation("Line", "", "", "", 10, 10)
S_o342 = { [nil] = {}, Start = function(L0)

end }
S_o343 = { [nil] = {}, Start = function(L0)

end }
S_o344 = { [nil] = {}, Start = function(L0)

end }
S_o345 = { [nil] = {}, Start = function(L0)

end }
S_o346 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o346, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o346, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o346, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "wng", "", "", "", False, False, True)
  CallFunction(o346, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o346, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o346, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o351.SetStateValue(L1)
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
o351 = { [nil] = {}, Start = function()
  o351["Value"] = False
  o362.StartCalculate()
  o363.StartCalculate()
  o413.StartCalculate()
  o414.StartCalculate()
  o464.StartCalculate()
  o465.StartCalculate()
  o515.StartCalculate()
  o516.StartCalculate()
  o567.StartCalculate()
  o618.StartCalculate()
  o668.StartCalculate()
  o718.StartCalculate()
  o768.StartCalculate()
  o989.StartCalculate()
  o1041.StartCalculate()
end, SetStateValue = function(L0)
  if not (o351.Value == L0) then
    o351["Value"] = L0
    o362.ReCalculate()
    o363.ReCalculate()
    o413.ReCalculate()
    o414.ReCalculate()
    o464.ReCalculate()
    o465.ReCalculate()
    o515.ReCalculate()
    o516.ReCalculate()
    o567.ReCalculate()
    o618.ReCalculate()
    o668.ReCalculate()
    o718.ReCalculate()
    o768.ReCalculate()
    o989.ReCalculate()
    o1041.ReCalculate()
  end
end }
S_o352 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o352, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o352, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o352, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "HelpTran", "", "", "", False, False, True)
  CallFunction(o352, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o352, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o352, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o357.SetStateValue(L1)
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
o357 = { [nil] = {}, Start = function()
  o357["Value"] = False
  o1616.StartCalculate()
  o1664.StartCalculate()
  o1712.StartCalculate()
  o1760.StartCalculate()
  o1808.StartCalculate()
  o1867.StartCalculate()
  o1872.StartCalculate()
end, SetStateValue = function(L0)
  if not (o357.Value == L0) then
    o357["Value"] = L0
    o1616.ReCalculate()
    o1664.ReCalculate()
    o1712.ReCalculate()
    o1760.ReCalculate()
    o1808.ReCalculate()
    o1867.ReCalculate()
    o1872.ReCalculate()
  end
end }
S_o358 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o358, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o358, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o358, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o358, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o358, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Pirates_Approach_1", 1, 1 } }("Code6")
  else
    CallFunction(o358, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/FightArea_1", "SSchiff_d", "", "", "", 15, 1, "Code7")
  else
    CallFunction(o358, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/FightArea_1", "player1", "E", "", "", 3, 1, "Code8")
  else
    CallFunction(o358, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o358, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_Attacked = function(L0, L1)
  o364.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o362.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o363.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o360.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o361.Value ~= True) then
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
o360 = { [nil] = {}, GetCalculated = function()
  if not (o364.Value == True) then
    if not (o415.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o360.SetStateValue(o360.GetCalculated())
end, StartCalculate = function()
  o360["Value"] = o360.GetCalculated()
end, SetStateValue = function(L0)
  if not (o360.Value == L0) then
    o360["Value"] = L0
    CallFunction(o358, "ProcesseStateChange")
  end
end }
o361 = { [nil] = {}, GetCalculated = function()
  if not (o1010.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o361.SetStateValue(o361.GetCalculated())
end, StartCalculate = function()
  o361["Value"] = o361.GetCalculated()
end, SetStateValue = function(L0)
  if not (o361.Value == L0) then
    o361["Value"] = L0
    CallFunction(o358, "ProcesseStateChange")
  end
end }
o362 = { [nil] = {}, GetCalculated = function()
  if not (o351.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o362.SetStateValue(o362.GetCalculated())
end, StartCalculate = function()
  o362["Value"] = o362.GetCalculated()
end, SetStateValue = function(L0)
  if not (o362.Value == L0) then
    o362["Value"] = L0
    CallFunction(o358, "ProcesseStateChange")
  end
end }
o363 = { [nil] = {}, GetCalculated = function()
  if not (o351.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o363.SetStateValue(o363.GetCalculated())
end, StartCalculate = function()
  o363["Value"] = o363.GetCalculated()
end, SetStateValue = function(L0)
  if not (o363.Value == L0) then
    DelayedFunction(30, o363, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o363.Value == L0) then
    o363["Value"] = L0
    CallFunction(o358, "ProcesseStateChange")
  end
end }
o364 = { [nil] = {}, Start = function()
  o364["Value"] = False
  o360.StartCalculate()
  o513.StartCalculate()
end, SetStateValue = function(L0)
  if not (o364.Value == L0) then
    o364["Value"] = L0
    o360.ReCalculate()
    o513.ReCalculate()
  end
end }
S_o409 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o409, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o409, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o409, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o409, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o409, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Pirates_Approach_1", 1, 1 } }("Code6")
  else
    CallFunction(o409, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/FightArea_1", "SSchiff_d", "", "", "", 15, 1, "Code7")
  else
    CallFunction(o409, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/FightArea_1", "player1", "E", "", "", 3, 1, "Code8")
  else
    CallFunction(o409, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o409, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_Attacked = function(L0, L1)
  o415.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o413.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o414.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o411.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o412.Value ~= True) then
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
o411 = { [nil] = {}, GetCalculated = function()
  if not (o415.Value == True) then
    if not (o466.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o411.SetStateValue(o411.GetCalculated())
end, StartCalculate = function()
  o411["Value"] = o411.GetCalculated()
end, SetStateValue = function(L0)
  if not (o411.Value == L0) then
    o411["Value"] = L0
    CallFunction(o409, "ProcesseStateChange")
  end
end }
o412 = { [nil] = {}, GetCalculated = function()
  if not (o1010.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o412.SetStateValue(o412.GetCalculated())
end, StartCalculate = function()
  o412["Value"] = o412.GetCalculated()
end, SetStateValue = function(L0)
  if not (o412.Value == L0) then
    o412["Value"] = L0
    CallFunction(o409, "ProcesseStateChange")
  end
end }
o413 = { [nil] = {}, GetCalculated = function()
  if not (o351.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o413.SetStateValue(o413.GetCalculated())
end, StartCalculate = function()
  o413["Value"] = o413.GetCalculated()
end, SetStateValue = function(L0)
  if not (o413.Value == L0) then
    o413["Value"] = L0
    CallFunction(o409, "ProcesseStateChange")
  end
end }
o414 = { [nil] = {}, GetCalculated = function()
  if not (o351.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o414.SetStateValue(o414.GetCalculated())
end, StartCalculate = function()
  o414["Value"] = o414.GetCalculated()
end, SetStateValue = function(L0)
  if not (o414.Value == L0) then
    DelayedFunction(32, o414, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o414.Value == L0) then
    o414["Value"] = L0
    CallFunction(o409, "ProcesseStateChange")
  end
end }
o415 = { [nil] = {}, Start = function()
  o415["Value"] = False
  o360.StartCalculate()
  o411.StartCalculate()
end, SetStateValue = function(L0)
  if not (o415.Value == L0) then
    o415["Value"] = L0
    o360.ReCalculate()
    o411.ReCalculate()
  end
end }
S_o460 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o460, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o460, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o460, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o460, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o460, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Pirates_Approach_1", 1, 1 } }("Code6")
  else
    CallFunction(o460, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/FightArea_1", "SSchiff_d", "", "", "", 15, 1, "Code7")
  else
    CallFunction(o460, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/FightArea_1", "player1", "E", "", "", 3, 1, "Code8")
  else
    CallFunction(o460, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o460, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_Attacked = function(L0, L1)
  o466.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o464.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o465.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o462.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o463.Value ~= True) then
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
o462 = { [nil] = {}, GetCalculated = function()
  if not (o466.Value == True) then
    if not (o517.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o462.SetStateValue(o462.GetCalculated())
end, StartCalculate = function()
  o462["Value"] = o462.GetCalculated()
end, SetStateValue = function(L0)
  if not (o462.Value == L0) then
    o462["Value"] = L0
    CallFunction(o460, "ProcesseStateChange")
  end
end }
o463 = { [nil] = {}, GetCalculated = function()
  if not (o1010.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o463.SetStateValue(o463.GetCalculated())
end, StartCalculate = function()
  o463["Value"] = o463.GetCalculated()
end, SetStateValue = function(L0)
  if not (o463.Value == L0) then
    o463["Value"] = L0
    CallFunction(o460, "ProcesseStateChange")
  end
end }
o464 = { [nil] = {}, GetCalculated = function()
  if not (o351.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o464.SetStateValue(o464.GetCalculated())
end, StartCalculate = function()
  o464["Value"] = o464.GetCalculated()
end, SetStateValue = function(L0)
  if not (o464.Value == L0) then
    o464["Value"] = L0
    CallFunction(o460, "ProcesseStateChange")
  end
end }
o465 = { [nil] = {}, GetCalculated = function()
  if not (o351.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o465.SetStateValue(o465.GetCalculated())
end, StartCalculate = function()
  o465["Value"] = o465.GetCalculated()
end, SetStateValue = function(L0)
  if not (o465.Value == L0) then
    DelayedFunction(34, o465, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o465.Value == L0) then
    o465["Value"] = L0
    CallFunction(o460, "ProcesseStateChange")
  end
end }
o466 = { [nil] = {}, Start = function()
  o466["Value"] = False
  o411.StartCalculate()
  o462.StartCalculate()
end, SetStateValue = function(L0)
  if not (o466.Value == L0) then
    o466["Value"] = L0
    o411.ReCalculate()
    o462.ReCalculate()
  end
end }
S_o511 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o511, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o511, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o511, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o511, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o511, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Pirates_Approach_1", 1, 1 } }("Code6")
  else
    CallFunction(o511, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/FightArea_1", "SSchiff_d", "", "", "", 15, 1, "Code7")
  else
    CallFunction(o511, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/FightArea_1", "player1", "E", "", "", 3, 1, "Code8")
  else
    CallFunction(o511, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Attacked = function(L0, L1)
  o517.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o515.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o516.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o513.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o514.Value ~= True) then
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
o513 = { [nil] = {}, GetCalculated = function()
  if not (o517.Value == True) then
    if not (o364.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o513.SetStateValue(o513.GetCalculated())
end, StartCalculate = function()
  o513["Value"] = o513.GetCalculated()
end, SetStateValue = function(L0)
  if not (o513.Value == L0) then
    o513["Value"] = L0
    CallFunction(o511, "ProcesseStateChange")
  end
end }
o514 = { [nil] = {}, GetCalculated = function()
  if not (o1010.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o514.SetStateValue(o514.GetCalculated())
end, StartCalculate = function()
  o514["Value"] = o514.GetCalculated()
end, SetStateValue = function(L0)
  if not (o514.Value == L0) then
    o514["Value"] = L0
    CallFunction(o511, "ProcesseStateChange")
  end
end }
o515 = { [nil] = {}, GetCalculated = function()
  if not (o351.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o515.SetStateValue(o515.GetCalculated())
end, StartCalculate = function()
  o515["Value"] = o515.GetCalculated()
end, SetStateValue = function(L0)
  if not (o515.Value == L0) then
    o515["Value"] = L0
    CallFunction(o511, "ProcesseStateChange")
  end
end }
o516 = { [nil] = {}, GetCalculated = function()
  if not (o351.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o516.SetStateValue(o516.GetCalculated())
end, StartCalculate = function()
  o516["Value"] = o516.GetCalculated()
end, SetStateValue = function(L0)
  if not (o516.Value == L0) then
    DelayedFunction(36, o516, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o516.Value == L0) then
    o516["Value"] = L0
    CallFunction(o511, "ProcesseStateChange")
  end
end }
o517 = { [nil] = {}, Start = function()
  o517["Value"] = False
  o462.StartCalculate()
  o513.StartCalculate()
end, SetStateValue = function(L0)
  if not (o517.Value == L0) then
    o517["Value"] = L0
    o462.ReCalculate()
    o513.ReCalculate()
  end
end }
S_o562 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o562, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o562, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o562, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o562, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o562, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o562, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Escape_path_TZ_1", 1, 1 } }("Code7")
  else
    CallFunction(o562, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Pirates_Approach_1", 1, 1 } }("Code8")
  else
    CallFunction(o562, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code9")
  else
    CallFunction(o562, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/FightArea_1", "E", "player1", "", "", 1, 1, "Code10")
  else
    CallFunction(o562, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, SetStateValue_Attacked = function(L0, L1)
  o568.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o567.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o563.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o564.Value ~= True) then
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
o563 = { [nil] = {}, GetCalculated = function()
  if not (o568.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o563.SetStateValue(o563.GetCalculated())
end, StartCalculate = function()
  o563["Value"] = o563.GetCalculated()
end, SetStateValue = function(L0)
  if not (o563.Value == L0) then
    o563["Value"] = L0
    CallFunction(o562, "ProcesseStateChange")
  end
end }
o564 = { [nil] = {}, GetCalculated = function()
  if not (o568.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o564.SetStateValue(o564.GetCalculated())
end, StartCalculate = function()
  o564["Value"] = o564.GetCalculated()
end, SetStateValue = function(L0)
  if not (o564.Value == L0) then
    o564["Value"] = L0
    CallFunction(o562, "ProcesseStateChange")
  end
end }
o567 = { [nil] = {}, GetCalculated = function()
  if not (o351.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o567.SetStateValue(o567.GetCalculated())
end, StartCalculate = function()
  o567["Value"] = o567.GetCalculated()
end, SetStateValue = function(L0)
  if not (o567.Value == L0) then
    DelayedFunction(4, o567, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o567.Value == L0) then
    o567["Value"] = L0
    CallFunction(o562, "ProcesseStateChange")
  end
end }
o568 = { [nil] = {}, Start = function()
  o568["Value"] = False
  o563.StartCalculate()
  o564.StartCalculate()
end, SetStateValue = function(L0)
  if not (o568.Value == L0) then
    o568["Value"] = L0
    o563.ReCalculate()
    o564.ReCalculate()
  end
end }
S_o613 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o613, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o613, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o613, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o613, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o613, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o613, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Escape_path_TZ_1", 1, 1 } }("Code7")
  else
    CallFunction(o613, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Pirates_Approach_1", 1, 1 } }("Code8")
  else
    CallFunction(o613, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code9")
  else
    CallFunction(o613, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/FightArea_1", "E", "", "", "", 1, 1, "Code10")
  else
    CallFunction(o613, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, SetStateValue_Attacked = function(L0, L1)
  o619.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o618.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o614.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o615.Value ~= True) then
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
o614 = { [nil] = {}, GetCalculated = function()
  if not (o619.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o614.SetStateValue(o614.GetCalculated())
end, StartCalculate = function()
  o614["Value"] = o614.GetCalculated()
end, SetStateValue = function(L0)
  if not (o614.Value == L0) then
    o614["Value"] = L0
    CallFunction(o613, "ProcesseStateChange")
  end
end }
o615 = { [nil] = {}, GetCalculated = function()
  if not (o619.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o615.SetStateValue(o615.GetCalculated())
end, StartCalculate = function()
  o615["Value"] = o615.GetCalculated()
end, SetStateValue = function(L0)
  if not (o615.Value == L0) then
    o615["Value"] = L0
    CallFunction(o613, "ProcesseStateChange")
  end
end }
o618 = { [nil] = {}, GetCalculated = function()
  if not (o351.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o618.SetStateValue(o618.GetCalculated())
end, StartCalculate = function()
  o618["Value"] = o618.GetCalculated()
end, SetStateValue = function(L0)
  if not (o618.Value == L0) then
    o618["Value"] = L0
    CallFunction(o613, "ProcesseStateChange")
  end
end }
o619 = { [nil] = {}, Start = function()
  o619["Value"] = False
  o614.StartCalculate()
  o615.StartCalculate()
end, SetStateValue = function(L0)
  if not (o619.Value == L0) then
    o619["Value"] = L0
    o614.ReCalculate()
    o615.ReCalculate()
  end
end }
S_o664 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o664, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o664, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o664, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Pirates_Approach_1", 1, 1 } }("Code4")
  else
    CallFunction(o664, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/FightArea_1", "SSchiff_d", "", "", "", 3, 1, "Code5")
  else
    CallFunction(o664, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/FightArea_1", "player1", "E", "", "", 3, 1, "Code6")
  else
    CallFunction(o664, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o669.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o668.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o665.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o666.Value ~= True) then
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
o665 = { [nil] = {}, GetCalculated = function()
  if not (o669.Value == True) then
    if not (o719.Value == True) then
      if not (o769.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o665.SetStateValue(o665.GetCalculated())
end, StartCalculate = function()
  o665["Value"] = o665.GetCalculated()
end, SetStateValue = function(L0)
  if not (o665.Value == L0) then
    o665["Value"] = L0
    CallFunction(o664, "ProcesseStateChange")
  end
end }
o666 = { [nil] = {}, GetCalculated = function()
  if not (o669.Value == True) then
    if not (o719.Value == True) then
      if not (o769.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o666.SetStateValue(o666.GetCalculated())
end, StartCalculate = function()
  o666["Value"] = o666.GetCalculated()
end, SetStateValue = function(L0)
  if not (o666.Value == L0) then
    o666["Value"] = L0
    CallFunction(o664, "ProcesseStateChange")
  end
end }
o668 = { [nil] = {}, GetCalculated = function()
  if not (o351.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o668.SetStateValue(o668.GetCalculated())
end, StartCalculate = function()
  o668["Value"] = o668.GetCalculated()
end, SetStateValue = function(L0)
  if not (o668.Value == L0) then
    DelayedFunction(90, o668, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o668.Value == L0) then
    o668["Value"] = L0
    CallFunction(o664, "ProcesseStateChange")
  end
end }
o669 = { [nil] = {}, Start = function()
  o669["Value"] = False
  o665.StartCalculate()
  o666.StartCalculate()
end, SetStateValue = function(L0)
  if not (o669.Value == L0) then
    o669["Value"] = L0
    o665.ReCalculate()
    o666.ReCalculate()
  end
end }
S_o714 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o714, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o714, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o714, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Pirates_Approach_1", 1, 1 } }("Code4")
  else
    CallFunction(o714, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/FightArea_1", "SSchiff_d", "", "", "", 3, 1, "Code5")
  else
    CallFunction(o714, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/FightArea_1", "player1", "E", "", "", 3, 1, "Code6")
  else
    CallFunction(o714, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o719.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o718.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o715.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o716.Value ~= True) then
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
o715 = { [nil] = {}, GetCalculated = function()
  if not (o719.Value == True) then
    if not (o719.Value == True) then
      if not (o769.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o715.SetStateValue(o715.GetCalculated())
end, StartCalculate = function()
  o715["Value"] = o715.GetCalculated()
end, SetStateValue = function(L0)
  if not (o715.Value == L0) then
    o715["Value"] = L0
    CallFunction(o714, "ProcesseStateChange")
  end
end }
o716 = { [nil] = {}, GetCalculated = function()
  if not (o719.Value == True) then
    if not (o719.Value == True) then
      if not (o769.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o716.SetStateValue(o716.GetCalculated())
end, StartCalculate = function()
  o716["Value"] = o716.GetCalculated()
end, SetStateValue = function(L0)
  if not (o716.Value == L0) then
    o716["Value"] = L0
    CallFunction(o714, "ProcesseStateChange")
  end
end }
o718 = { [nil] = {}, GetCalculated = function()
  if not (o351.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o718.SetStateValue(o718.GetCalculated())
end, StartCalculate = function()
  o718["Value"] = o718.GetCalculated()
end, SetStateValue = function(L0)
  if not (o718.Value == L0) then
    DelayedFunction(90, o718, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o718.Value == L0) then
    o718["Value"] = L0
    CallFunction(o714, "ProcesseStateChange")
  end
end }
o719 = { [nil] = {}, Start = function()
  o719["Value"] = False
  o665.StartCalculate()
  o666.StartCalculate()
  o715.StartCalculate()
  o716.StartCalculate()
end, SetStateValue = function(L0)
  if not (o719.Value == L0) then
    o719["Value"] = L0
    o665.ReCalculate()
    o666.ReCalculate()
    o715.ReCalculate()
    o716.ReCalculate()
  end
end }
S_o764 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o764, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o764, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o764, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Pirates_Approach_1", 1, 1 } }("Code4")
  else
    CallFunction(o764, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/FightArea_1", "SSchiff_d", "", "", "", 3, 1, "Code5")
  else
    CallFunction(o764, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/FightArea_1", "player1", "E", "", "", 3, 1, "Code6")
  else
    CallFunction(o764, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o769.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o768.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o765.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o766.Value ~= True) then
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
o765 = { [nil] = {}, GetCalculated = function()
  if not (o769.Value == True) then
    if not (o769.Value == True) then
      if not (o769.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o765.SetStateValue(o765.GetCalculated())
end, StartCalculate = function()
  o765["Value"] = o765.GetCalculated()
end, SetStateValue = function(L0)
  if not (o765.Value == L0) then
    o765["Value"] = L0
    CallFunction(o764, "ProcesseStateChange")
  end
end }
o766 = { [nil] = {}, GetCalculated = function()
  if not (o769.Value == True) then
    if not (o769.Value == True) then
      if not (o769.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o766.SetStateValue(o766.GetCalculated())
end, StartCalculate = function()
  o766["Value"] = o766.GetCalculated()
end, SetStateValue = function(L0)
  if not (o766.Value == L0) then
    o766["Value"] = L0
    CallFunction(o764, "ProcesseStateChange")
  end
end }
o768 = { [nil] = {}, GetCalculated = function()
  if not (o351.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o768.SetStateValue(o768.GetCalculated())
end, StartCalculate = function()
  o768["Value"] = o768.GetCalculated()
end, SetStateValue = function(L0)
  if not (o768.Value == L0) then
    DelayedFunction(90, o768, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o768.Value == L0) then
    o768["Value"] = L0
    CallFunction(o764, "ProcesseStateChange")
  end
end }
o769 = { [nil] = {}, Start = function()
  o769["Value"] = False
  o665.StartCalculate()
  o666.StartCalculate()
  o715.StartCalculate()
  o716.StartCalculate()
  o765.StartCalculate()
  o766.StartCalculate()
end, SetStateValue = function(L0)
  if not (o769.Value == L0) then
    o769["Value"] = L0
    o665.ReCalculate()
    o666.ReCalculate()
    o715.ReCalculate()
    o716.ReCalculate()
    o765.ReCalculate()
    o766.ReCalculate()
  end
end }
S_o814 = { [nil] = {}, Start = function(L0)

end }
S_o848 = { [nil] = {}, Start = function(L0)

end }
S_o882 = { [nil] = {}, Start = function(L0)

end }
S_o916 = { [nil] = {}, Start = function(L0)

end }
S_o950 = { [nil] = {}, Start = function(L0)

end }
S_o984 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o984, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o984, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o984, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o984, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o984, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code6")
  else
    CallFunction(o984, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Help_Path_1", 1, 1 } }("Code7")
  else
    CallFunction(o984, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code8")
  else
    CallFunction(o984, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  Game_SetWayPoint(GetGameNode(), o984.Node)
  CallFunction(o984, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o1121.Node, "DP_hor_1", "DP_hor_1", 0.4, 0.4, 90, "Code10")
  else
    CallFunction(o984, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/HelpTranOut_Path", 1, 1 } }("Code11")
  else
    CallFunction(o984, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  SED_SetTaskTextKey(0, -1, -1)
  CallFunction(o984, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code13")
  else
    CallFunction(o984, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
end, SetStateValue_Destroyed = function(L0, L1)
  o992.SetStateValue(L1)
end, SetStateValue_DipoledOut = function(L0, L1)
  o993.SetStateValue(L1)
end, SetStateValue_InfiltrateSuccess = function(L0, L1)
  o996.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o1002.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o989.Value ~= True) then
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
o989 = { [nil] = {}, GetCalculated = function()
  if not (o351.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o989.SetStateValue(o989.GetCalculated())
end, StartCalculate = function()
  o989["Value"] = o989.GetCalculated()
end, SetStateValue = function(L0)
  if not (o989.Value == L0) then
    o989["Value"] = L0
    CallFunction(o984, "ProcesseStateChange")
  end
end }
o992 = { [nil] = {}, Start = function()
  o992["Value"] = False
  o1117.StartCalculate()
end, SetStateValue = function(L0)
  if not (o992.Value == L0) then
    o992["Value"] = L0
    o1117.ReCalculate()
  end
end }
o993 = { [nil] = {}, Start = function()
  o993["Value"] = False
  o1007.StartCalculate()
  o1010.StartCalculate()
end, SetStateValue = function(L0)
  if not (o993.Value == L0) then
    o993["Value"] = L0
    o1007.ReCalculate()
    o1010.ReCalculate()
  end
end }
o996 = { [nil] = {}, Start = function()
  o996["Value"] = False
  o1876.StartCalculate()
end, SetStateValue = function(L0)
  if not (o996.Value == L0) then
    o996["Value"] = L0
    o1876.ReCalculate()
  end
end }
o1002 = { [nil] = {}, Start = function()
  o1002["Value"] = False
  o1035.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1002.Value == L0) then
    o1002["Value"] = L0
    o1035.ReCalculate()
  end
end }
o1007 = { [nil] = {}, GetCalculated = function()
  if not (o993.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1007.SetStateValue(o1007.GetCalculated())
end, StartCalculate = function()
  o1007["Value"] = o1007.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("Transporter Dipoled out")
end, SetStateValue = function(L0)
  if not (o1007.Value == L0) then
    o1007["Value"] = L0
    if not (L0 ~= 1) then
      o1007.ChangeTo1()
    end
  end
end }
o1010 = { [nil] = {}, GetCalculated = function()
  if not (o993.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1010.SetStateValue(o1010.GetCalculated())
end, StartCalculate = function()
  o1010["Value"] = o1010.GetCalculated()
  o361.StartCalculate()
  o412.StartCalculate()
  o463.StartCalculate()
  o514.StartCalculate()
  o1615.StartCalculate()
  o1663.StartCalculate()
  o1711.StartCalculate()
  o1759.StartCalculate()
  o1807.StartCalculate()
end, ChangeTo1 = function()
  Game_MissionEnd(GetGameNode(), 1)
end, SetStateValue = function(L0)
  if not (o1010.Value == L0) then
    DelayedFunction(10, o1010, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1010.Value == L0) then
    o1010["Value"] = L0
    o361.ReCalculate()
    o412.ReCalculate()
    o463.ReCalculate()
    o514.ReCalculate()
    o1615.ReCalculate()
    o1663.ReCalculate()
    o1711.ReCalculate()
    o1759.ReCalculate()
    o1807.ReCalculate()
    if not (L0 ~= 1) then
      o1010.ChangeTo1()
    end
  end
end }
o1035 = { [nil] = {}, GetCalculated = function()
  if not (o1002.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1035.SetStateValue(o1035.GetCalculated())
end, StartCalculate = function()
  o1035["Value"] = o1035.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1035.Value == L0) then
    o1035["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o1039 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1039, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1039, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1039, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o1039, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1039, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1039, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FightArea_1", "/Scenario_Dynamic/Navigation/FightArea_1", "/Scenario_Dynamic/Navigation/DefendArea_1", "E", "", "", "", 1, "Code7")
  else
    CallFunction(o1039, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1041.Value ~= True) then
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
o1041 = { [nil] = {}, GetCalculated = function()
  if not (o351.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1041.SetStateValue(o1041.GetCalculated())
end, StartCalculate = function()
  o1041["Value"] = o1041.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1041.Value == L0) then
    o1041["Value"] = L0
    CallFunction(o1039, "ProcesseStateChange")
  end
end }
S_o1088 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "GUN_VENDETTA2", 1)
  Body_AddItem(L0.Node, "GUN_TORPEDOLAUNCHER", 1)
  Body_AddItem(L0.Node, "AMMO_SHELL", 2000)
  Body_AddItem(L0.Node, "TORPEDO_FLASHSHARK", 2)
  Body_AddItem(L0.Node, "TORPEDO_TIGERSHARK", 4)
  CallFunction(o1088, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
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
o1117 = { [nil] = {}, GetCalculated = function()
  if not (o992.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1117.SetStateValue(o1117.GetCalculated())
end, StartCalculate = function()
  o1117["Value"] = o1117.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1117.Value == L0) then
    o1117["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o1121 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1121, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1121, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1121, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetEmpShield(L0.Node, 1)
  CallFunction(o1121, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Attacked = function(L0, L1)
  o1123.SetStateValue(L1)
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
o1123 = { [nil] = {}, Start = function()
  o1123["Value"] = False
  o1880.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1123.Value == L0) then
    o1123["Value"] = L0
    o1880.ReCalculate()
  end
end }
S_o1156 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1156, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1156, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1156, "Code3")
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
S_o1192 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1192, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1192, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1192, "Code3")
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
S_o1228 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1228, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1228, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1228, "Code3")
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
S_o1263 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1263, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1263, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1263, "Code3")
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
S_o1299 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1299, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1299, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1299, "Code3")
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
S_o1334 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1334, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1334, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1334, "Code3")
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
S_o1370 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1370, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1370, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1370, "Code3")
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
S_o1406 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1406, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1406, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1406, "Code3")
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
S_o1442 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1442, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1442, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1442, "Code3")
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
S_o1478 = { [nil] = {}, Start = function(L0)

end }
S_o1512 = { [nil] = {}, Start = function(L0)

end }
S_o1546 = { [nil] = {}, Start = function(L0)

end }
S_o1580 = { [nil] = {}, Start = function(L0)

end }
S_o1614 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1614, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1614, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1614, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/FightArea_1", "/Scenario_Dynamic/Navigation/FightArea_1", "/Scenario_Dynamic/Navigation/DefendArea_1", "HelpTran", "E", "", "", 1, "/Scenario_Dynamic/Navigation/Position_5", "Code4")
  else
    CallFunction(o1614, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o1614, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1616.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o1615.Value ~= True) then
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
o1615 = { [nil] = {}, GetCalculated = function()
  if not (o1010.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1615.SetStateValue(o1615.GetCalculated())
end, StartCalculate = function()
  o1615["Value"] = o1615.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1615.Value == L0) then
    o1615["Value"] = L0
    CallFunction(o1614, "ProcesseStateChange")
  end
end }
o1616 = { [nil] = {}, GetCalculated = function()
  if not (o357.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1616.SetStateValue(o1616.GetCalculated())
end, StartCalculate = function()
  o1616["Value"] = o1616.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1616.Value == L0) then
    DelayedFunction(5, o1616, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1616.Value == L0) then
    o1616["Value"] = L0
    CallFunction(o1614, "ProcesseStateChange")
  end
end }
S_o1662 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1662, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1662, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1662, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/FightArea_1", "/Scenario_Dynamic/Navigation/FightArea_1", "/Scenario_Dynamic/Navigation/DefendArea_1", "HelpTran", "E", "", "", 1, "/Scenario_Dynamic/Navigation/Position_5", "Code4")
  else
    CallFunction(o1662, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o1662, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1664.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o1663.Value ~= True) then
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
o1663 = { [nil] = {}, GetCalculated = function()
  if not (o1010.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1663.SetStateValue(o1663.GetCalculated())
end, StartCalculate = function()
  o1663["Value"] = o1663.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1663.Value == L0) then
    o1663["Value"] = L0
    CallFunction(o1662, "ProcesseStateChange")
  end
end }
o1664 = { [nil] = {}, GetCalculated = function()
  if not (o357.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1664.SetStateValue(o1664.GetCalculated())
end, StartCalculate = function()
  o1664["Value"] = o1664.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1664.Value == L0) then
    DelayedFunction(5, o1664, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1664.Value == L0) then
    o1664["Value"] = L0
    CallFunction(o1662, "ProcesseStateChange")
  end
end }
S_o1710 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1710, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1710, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1710, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/FightArea_1", "/Scenario_Dynamic/Navigation/FightArea_1", "/Scenario_Dynamic/Navigation/DefendArea_1", "HelpTran", "E", "", "", 1, "/Scenario_Dynamic/Navigation/Position_2", "Code4")
  else
    CallFunction(o1710, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o1710, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Born = function(L0, L1)
  o1714.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1712.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o1711.Value ~= True) then
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
o1711 = { [nil] = {}, GetCalculated = function()
  if not (o1010.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1711.SetStateValue(o1711.GetCalculated())
end, StartCalculate = function()
  o1711["Value"] = o1711.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1711.Value == L0) then
    o1711["Value"] = L0
    CallFunction(o1710, "ProcesseStateChange")
  end
end }
o1712 = { [nil] = {}, GetCalculated = function()
  if not (o357.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1712.SetStateValue(o1712.GetCalculated())
end, StartCalculate = function()
  o1712["Value"] = o1712.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1712.Value == L0) then
    DelayedFunction(5, o1712, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1712.Value == L0) then
    o1712["Value"] = L0
    CallFunction(o1710, "ProcesseStateChange")
  end
end }
o1714 = { [nil] = {}, Start = function()
  o1714["Value"] = False
  o1868.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1714.Value == L0) then
    o1714["Value"] = L0
    o1868.ReCalculate()
  end
end }
S_o1758 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1758, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1758, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1758, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/FightArea_1", "/Scenario_Dynamic/Navigation/FightArea_1", "/Scenario_Dynamic/Navigation/DefendArea_1", "HelpTran", "E", "", "", 1, "/Scenario_Dynamic/Navigation/Position_4", "Code4")
  else
    CallFunction(o1758, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o1758, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1760.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o1759.Value ~= True) then
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
o1759 = { [nil] = {}, GetCalculated = function()
  if not (o1010.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1759.SetStateValue(o1759.GetCalculated())
end, StartCalculate = function()
  o1759["Value"] = o1759.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1759.Value == L0) then
    o1759["Value"] = L0
    CallFunction(o1758, "ProcesseStateChange")
  end
end }
o1760 = { [nil] = {}, GetCalculated = function()
  if not (o357.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1760.SetStateValue(o1760.GetCalculated())
end, StartCalculate = function()
  o1760["Value"] = o1760.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1760.Value == L0) then
    DelayedFunction(5, o1760, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1760.Value == L0) then
    o1760["Value"] = L0
    CallFunction(o1758, "ProcesseStateChange")
  end
end }
S_o1806 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1806, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1806, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1806, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/FightArea_1", "/Scenario_Dynamic/Navigation/FightArea_1", "/Scenario_Dynamic/Navigation/DefendArea_1", "HelpTran", "E", "", "", 1, "/Scenario_Dynamic/Navigation/Position_4", "Code4")
  else
    CallFunction(o1806, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o1806, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1808.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o1807.Value ~= True) then
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
o1807 = { [nil] = {}, GetCalculated = function()
  if not (o1010.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1807.SetStateValue(o1807.GetCalculated())
end, StartCalculate = function()
  o1807["Value"] = o1807.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1807.Value == L0) then
    o1807["Value"] = L0
    CallFunction(o1806, "ProcesseStateChange")
  end
end }
o1808 = { [nil] = {}, GetCalculated = function()
  if not (o357.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1808.SetStateValue(o1808.GetCalculated())
end, StartCalculate = function()
  o1808["Value"] = o1808.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1808.Value == L0) then
    DelayedFunction(5, o1808, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1808.Value == L0) then
    o1808["Value"] = L0
    CallFunction(o1806, "ProcesseStateChange")
  end
end }
S_o1854 = { [nil] = {}, Start = function(L0)

end }
S_o1855 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "agressive")
  Director_BeginCutscene(L0.Node)
  FormationLib.PlaceFormationPath(o341, o340, "/Scenario_Dynamic/Navigation/Approach_Intro")
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_Cut(L0.Node, 1)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_MoveTo(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MBMY", 50)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 2, "MMMN", 0)
  Camera_MoveTo(L0.Node, "/Scenario_Dynamic/Object/player1", 3, "LMMY", 20)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 2, "MMMN", 0)
  CallFunction(o1855, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code11")
  else
    CallFunction(o1855, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_MoveTo(L0.Node, "/Scenario_Dynamic/Object/SSchiff_d", 3, "RMTY", 200)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/tz_sco1v1_3", 2, "MFTN", 0)
  CallFunction(o1855, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code15")
  else
    CallFunction(o1855, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_MoveTo(L0.Node, "/Scenario_Dynamic/Object/tz_sco1v1_3", 6, "RMTY", 10)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/tz_sco1v1_3", 1, "MFTN", 0)
  CallFunction(o1855, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 13, "Code19")
  else
    CallFunction(o1855, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  Camera_MoveTo(L0.Node, "/Scenario_Dynamic/Object/player1", 3, "MBTY", 10)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/tz_sco1v1_3", 2, "MFMN", -10)
  CallFunction(o1855, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 13, "Code22")
  else
    CallFunction(o1855, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  Camera_Cut(L0.Node, 1)
  CallFunction(o1039, "Code6")
  Director_EndCutscene(L0.Node)
  SED_SetTaskTextKey(1351, -1, -1)
  CallFunction(o1855, "Code26")
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1861 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o341, o340, "/Scenario_Dynamic/Navigation/Approach_Intro", "pos_1", "pos_6", 1, 1, "Code1")
  else
    CallFunction(o1861, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1863 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code1")
  else
    CallFunction(o1863, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o1088.Node, o1088.Node, 34)
  SendRadioMessageTake(o1088.Node, o1088.Node, 32)
  SendRadioMessageTake(o1088.Node, o1088.Node, 33)
  SendRadioMessageTake(o1088.Node, o1088.Node, 35)
  CallFunction(o1863, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1866 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1866, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SetEnemyMatrixElement(0, 3, N)
  SetEnemyMatrixElement(3, 0, N)
  Game_PlayMusic(GetGameNode(), "agressive")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_MoveTo(L0.Node, "/Scenario_Dynamic/Object/HelpTran", 0, "MBMY", 150)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/HelpTran", 2, "MMMN", 0)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o1866, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 30, "Code11")
  else
    CallFunction(o1866, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_MoveTo(L0.Node, "/Scenario_Dynamic/Object/HelpTran", 0, "MBMY", 150)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/tz_scout1v2_3", 3, "MMMN", 0)
  CallFunction(o1866, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code15")
  else
    CallFunction(o1866, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_MoveTo(L0.Node, "/Scenario_Dynamic/Object/HelpTran", 0, "MBMY", 150)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/HelpTran", 3, "MMMN", 0)
  SetEnemyMatrixElement(0, 3, E)
  SetEnemyMatrixElement(3, 0, E)
  Director_EndCutscene(L0.Node)
  SED_SetTaskTextKey(1352, -1, -1)
  CallFunction(o1866, "Code22")
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o1867.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 10) then
    if not (L0.CodeIndex >= 11) then
      if not (o1868.Value ~= True) then
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
o1867 = { [nil] = {}, GetCalculated = function()
  if not (o357.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1867.SetStateValue(o1867.GetCalculated())
end, StartCalculate = function()
  o1867["Value"] = o1867.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1867.Value == L0) then
    o1867["Value"] = L0
    CallFunction(o1866, "ProcesseStateChange")
  end
end }
o1868 = { [nil] = {}, GetCalculated = function()
  if not (o1714.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1868.SetStateValue(o1868.GetCalculated())
end, StartCalculate = function()
  o1868["Value"] = o1868.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1868.Value == L0) then
    o1868["Value"] = L0
    CallFunction(o1866, "ProcesseStateChange")
  end
end }
S_o1871 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1871, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code2")
  else
    CallFunction(o1871, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o1088.Node, o1088.Node, 40)
  CallFunction(o1871, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
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
  if not (o357.Value ~= True) then
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
    o1872["Value"] = L0
    CallFunction(o1871, "ProcesseStateChange")
  end
end }
S_o1875 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1875, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SetEnemyMatrixElement(0, 3, N)
  SetEnemyMatrixElement(3, 0, N)
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_MoveTo(L0.Node, "/Scenario_Dynamic/Object/HelpTran", 0, "MBMY", 150)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/HelpTran", 2, "MMMN", 0)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o1875, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code10")
  else
    CallFunction(o1875, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  SetEnemyMatrixElement(0, 3, E)
  SetEnemyMatrixElement(3, 0, E)
  Director_EndCutscene(L0.Node)
  CallFunction(o1875, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o1876.Value ~= True) then
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
o1876 = { [nil] = {}, GetCalculated = function()
  if not (o996.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1876.SetStateValue(o1876.GetCalculated())
end, StartCalculate = function()
  o1876["Value"] = o1876.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1876.Value == L0) then
    o1876["Value"] = L0
    CallFunction(o1875, "ProcesseStateChange")
  end
end }
S_o1879 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1879, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o1039.Node, o1088.Node, 37)
  SendRadioMessageTake(o1088.Node, o1088.Node, 38)
  SendRadioMessageTake(o1039.Node, o1088.Node, 39)
  CallFunction(o1879, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o1880.Value ~= True) then
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
o1880 = { [nil] = {}, GetCalculated = function()
  if not (o1123.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1880.SetStateValue(o1880.GetCalculated())
end, StartCalculate = function()
  o1880["Value"] = o1880.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1880.Value == L0) then
    o1880["Value"] = L0
    CallFunction(o1879, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 133)
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
  o342 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Position_1", S_o342)
  o343 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Position_5", S_o343)
  o344 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Position_2", S_o344)
  o345 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Position_4", S_o345)
  o346 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_1", S_o346)
  o351.Start()
  o352 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_2", S_o352)
  o357.Start()
  o358 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scoA_1", S_o358)
  o364.Start()
  o409 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scoA_4", S_o409)
  o415.Start()
  o460 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scoA_2", S_o460)
  o466.Start()
  o511 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scoA_3", S_o511)
  o517.Start()
  o562 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_sco1v1_3", S_o562)
  o568.Start()
  o613 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_sco1v1_4", S_o613)
  o619.Start()
  o664 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_sco1v2_1", S_o664)
  o669.Start()
  o714 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_sco1v2_2", S_o714)
  o719.Start()
  o764 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_sco1v2A_1", S_o764)
  o769.Start()
  o814 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_contain_1", S_o814)
  o848 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_contain_2", S_o848)
  o882 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_contain_3", S_o882)
  o916 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_contain_4", S_o916)
  o950 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_contain_5", S_o950)
  o984 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "HelpTran", S_o984)
  o992.Start()
  o993.Start()
  o996.Start()
  o1002.Start()
  o1039 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_pico", S_o1039)
  o1088 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o1088)
  o1121 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "SSchiff_d", S_o1121)
  o1123.Start()
  o1156 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_schrott2a_low_1", S_o1156)
  o1192 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_schrott2b_low_1", S_o1192)
  o1228 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_schrott2a_bui_1", S_o1228)
  o1263 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_schrott3_1", S_o1263)
  o1299 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_schrott3a_bui_1", S_o1299)
  o1334 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_schrott3a_low_1", S_o1334)
  o1370 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_schrott3b_low_1", S_o1370)
  o1406 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_schrott2b_low_2", S_o1406)
  o1442 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_schrott3a_low_2", S_o1442)
  o1478 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_container_1", S_o1478)
  o1512 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_container_2", S_o1512)
  o1546 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_container_3", S_o1546)
  o1580 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_container_4", S_o1580)
  o1614 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_1", S_o1614)
  o1662 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_2", S_o1662)
  o1710 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_3", S_o1710)
  o1714.Start()
  o1758 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_4", S_o1758)
  o1806 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_5", S_o1806)
  o1854 = BindEasy(Node_Find("/"), "Camera", S_o1854)
  o1855 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_V", S_o1855)
  o1861 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_AddOn_V", S_o1861)
  o1863 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_A", S_o1863)
  o1866 = BindEasy(Node_Find("/IngameSequences/Director"), "Cut_1", S_o1866)
  o1871 = BindEasy(Node_Find("/IngameSequences/Director"), "Cut_1_Audio", S_o1871)
  o1875 = BindEasy(Node_Find("/IngameSequences/Director"), "Cut_2", S_o1875)
  o1879 = BindEasy(Node_Find("/IngameSequences/Director"), "Pico_1", S_o1879)
  o341 = { {}, o1088, o1039 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end