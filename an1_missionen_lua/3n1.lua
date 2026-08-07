-- dekompiliert aus map\3n1\script\3n1.sco
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
  Terrain_LoadTerrain(node1, "map/3N1/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/3N1/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrain(node0, 0.025, 0.2)
  Game_SetCausticObject(node0, 0.1, 0.2)
  Game_SetCausticBuilding(node0, 0.025, 0.2)
  Game_SetLightCache(node0, "map/3N1/Lmsh/", "map/3N1/Ltex/")
  Game_SetTerrainDepth(node0, 1728)
  Game_SetDecompressionHeight(node0, 700)
  Game_SetAmbientLight(node0, 0.047059, 0.090196, 0.007843)
  Game_SetParallelLightT(node0, 0.094118, 0.180392, 0.015686)
  Game_SetParallelLightB(node0, 0.784314, 0.156863, 0)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_3N1_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track01_frag_tension.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_track03.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_badend.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_track09_tension.sam", 3)
  Game_LoadMusic(node0, "sfx/sample/music/music_sfx_futurealarm.sam", 4)
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
  node8 = Node_CreateNode("nod_generic", "tz_element01a_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(1677.376, 2405.316, 202.3833), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node8, "osd/tz/tz_element01a.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "tz_element04_1_1")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(1740.34, 2423.732, 194.3238), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node9, "osd/tz/tz_element04_1.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "tz_elem03_r_1")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(1569.945, 1903.618, 188.9098), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node10, "osd/tz/tz_element03_raw.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "tz_elem07_r_1")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(1589.755, 2208.481, 205.942767), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node11, "osd/tz/tz_element07_raw.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "gen_dock_1")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(1548.617933, 2900.155716, 180.8001), MAT_Vector3(90.040355, 0, 0))
  Node_ParseIniFile(node12, "osd/gen/gen_dock.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "tz_elem07_1")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(1550.047, 2454.902, 198.2599), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node13, "osd/tz/tz_element07.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "tz_elem03_1")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(1646.463, 2498.748, 196.4346), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node14, "osd/tz/tz_element03.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "tz_elem03_3")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(1632.034, 2110.313, 193.9842), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node15, "osd/tz/tz_element03.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "tz_elem03_4")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(1451.407, 2497.627, 195.393), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node16, "osd/tz/tz_element03.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "tz_elem01_1")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(1762.525, 2179.152, 184.866045), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node17, "osd/tz/tz_element01.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "tz_elem01_2")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(1608.778, 1705.525, 196.922), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node18, "osd/tz/tz_element01.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "tz_elem05_1")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(1779.687, 2371.668, 176.1227), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node19, "osd/tz/tz_element05.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "tz_elem05_2")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(1657.423, 2638.587, 196.8598), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node20, "osd/tz/tz_element05.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "tz_elem06_1")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(1630.224, 1917.451, 192.7454), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node21, "osd/tz/tz_element06.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "tz_elem01_r_1")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(1643.018, 1737.153, 193.6451), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node22, "osd/tz/tz_element01_raw.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "gen_schwim_1")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(1591.536835, 1616.064786, 176.358735), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node23, "osd/gen/gen_chimney1_2.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "gen_shelter_1")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(1690.268701, 1646.263748, 188), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node24, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "gen_shelter_docking_1")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(1750.00471, 2084.013507, 190.733338), MAT_Vector3(-90.100286, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_shelter_docking.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_tank_big_1")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(1777.609807, 2006.54581, 178.429875), MAT_Vector3(-90.182145, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "gen_tank_big2_1")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(1454.0652, 1776.474289, 163.05288), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node27, "osd/gen/gen_tank_big2.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "gen_tank_sml3_1")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(1459.691852, 1906.344687, 178.770848), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node28, "osd/gen/gen_tank_sml3.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "gen_parabolic_1")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(1698.788967, 1669.643662, 229.039083), MAT_Vector3(-53.96324, 0, 0))
  Node_ParseIniFile(node29, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "gen_parabolic_2")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(1772.015511, 2091.955742, 230.733482), MAT_Vector3(-52.093829, 0, 0))
  Node_ParseIniFile(node30, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "gen_kai2_1")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(1775.102574, 1625.246349, 165.387025), MAT_Vector3(-90.428399, 0, 0))
  Node_ParseIniFile(node31, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "gen_kai2_2")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(1747.936113, 2636.627892, 176.706225), MAT_Vector3(-90.4284, 0, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_tank_sml2_1")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(1518.937184, 1686.896263, 162.820388), MAT_Vector3(164.951216, 0, 0))
  Node_ParseIniFile(node33, "osd/gen/gen_tank_sml2.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "gen_rohr_big02_1")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(1567.489547, 2710.035484, 197.382089), MAT_Vector3(-179.852038, 0, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "gen_rohr_big02_2")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(1610.009908, 2711.044867, 196.865525), MAT_Vector3(-179.852, 0, 0))
  Node_ParseIniFile(node35, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_pplant22_1")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(1713.941492, 1897.350739, 164.325606), MAT_Vector3(-90.097372, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_pplant22.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "gen_rohr_big02_3")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(1715.759351, 1985.708311, 184.323138), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node37, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "gen_rohr_small03_1")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(1706.089637, 1745.304734, 202), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node38, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_rohr_small03_2")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(1706.09, 1745.305, 217.2024), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_rohr_big03_1")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(1720.352048, 1710.045928, 178.702012), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_shelter_2")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(1689.256909, 1505.33988, 188), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "tz_element05a_1")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(1456.433154, 2027.938788, 191.825979), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node42, "osd/tz/tz_element05a.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_rohr_small02_1")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(1558.623586, 2033.948024, 272.250536), MAT_Vector3(90.180584, 0, 0))
  Node_ParseIniFile(node43, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_rohr_small02_2")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(1558.212047, 2023.23721, 242.969451), MAT_Vector3(90.18058, 0, 0))
  Node_ParseIniFile(node44, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_rohr_small02_3")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(1558.172932, 2033.17457, 235.253548), MAT_Vector3(90.18058, 0, 0))
  Node_ParseIniFile(node45, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_rohr_small02_4")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(1557.713981, 2026.662273, 213.292713), MAT_Vector3(90.18058, 0, 0))
  Node_ParseIniFile(node46, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "tz_element01a_2")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(1582.725342, 1965.994847, 190.381765), MAT_Vector3(-179.91113, 0, 0))
  Node_ParseIniFile(node47, "osd/tz/tz_element01a.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "tz_element01_1")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(1553.38783, 1793.305095, 188.796165), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node48, "osd/tz/tz_element01.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "tz_element04_1_2")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(1539.381412, 1859.217649, 90.140642), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node49, "osd/tz/tz_element04_1.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "tz_element04_1_3")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(1539.381, 1859.218, 193.539177), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node50, "osd/tz/tz_element04_1.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_turret_medium_1")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(1697.039847, 1479.980543, 233.277706), MAT_Vector3(-136.692951, 0, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "gen_turret_medium_2")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(1889.920072, 2114.94406, 185.134016), MAT_Vector3(-112.282311, 0, 0))
  Node_ParseIniFile(node52, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_turret_medium_3")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(1887.140175, 2525.581685, 173.997596), MAT_Vector3(-56.113123, 0, 0))
  Node_ParseIniFile(node53, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "gen_turret_medium_4")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(1653.625819, 2867.701693, 192.310798), MAT_Vector3(-56.11312, 0, 0))
  Node_ParseIniFile(node54, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "gen_turret_medium_5")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(1654.20082, 2759.348363, 192.3108), MAT_Vector3(-126.968964, 0, 0))
  Node_ParseIniFile(node55, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "gen_turret_medium_6")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(1600.047551, 3063.553588, 192.3108), MAT_Vector3(-55.450399, 0, 0))
  Node_ParseIniFile(node56, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node7, node57)
  Node_ParseIniFile(node57, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_fx_plankton", "fx_plankton_green_1")
  Node_AddSon(node7, node58)
  Node_ParseIniFile(node58, "osd/fx_plankton/fx_plankton_green.osd")
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_fx_sky", "fx_sky_03_1")
  Node_AddSon(node7, node59)
  Node_ParseIniFile(node59, "osd/fx_sky/fx_sky_03.osd")
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_fungus", "coral_03_1")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(2182.09492, 2604.964597, 145.818852), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node60, "osd/fungus/coral_03.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_fungus", "coral_03_2")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(3012.740805, 2282.843282, 274.702575), MAT_Vector3(64.639198, 3.201347, -0.664288))
  Node_ParseIniFile(node61, "osd/fungus/coral_03.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_fungus", "coral_03_3")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(2803.431289, 2930.407888, 126.210888), MAT_Vector3(-77.725351, 0.900181, -5.601934))
  Node_ParseIniFile(node62, "osd/fungus/coral_03.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_fungus", "coral_03_4")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(2510.738792, 1929.137667, 135), MAT_Vector3(-78.602063, 0.569081, -6.425149))
  Node_ParseIniFile(node63, "osd/fungus/coral_03.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_fungus", "fungus_02_1")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(1962.480582, 1339.560265, 250), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node64, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_fungus", "fungus_02_2")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(2042.163006, 1403.019131, 270), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node65, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_fungus", "fungus_02_3")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(1995.282868, 3445.653718, 125.735167), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node66, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_fungus", "fungus_02_4")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(2058.905912, 3532.716832, 100), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node67, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_fungus", "fungus_02_5")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(2924.524534, 2637.096977, 92.70939), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node68, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_fungus", "fungus_02_6")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(2884.341559, 2717.462928, 80), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node69, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_fungus", "fungus_02_7")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(1191.946728, 2204.391502, 120), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node70, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_fungus", "fungus_02_8")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(1158.349388, 2137.196821, 140), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node71, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node72)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node72, node73)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node72, node74)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("NOD_Path", "TZ_Freighter1_Path_1")
  Node_AddSon(node74, node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node75, node76)
  Position_SetPosition(node76, MAT_Vector3(1931.614525, 2599.879533, 302))
  Position_SetRadius(node76, 5)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node75, node77)
  Position_SetPosition(node77, MAT_Vector3(1931.615, 2081.508052, 302))
  Position_SetRadius(node77, 5)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("NOD_Path", "TZ_Freighter2_Path_1")
  Node_AddSon(node74, node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node78, node79)
  Position_SetPosition(node79, MAT_Vector3(1811.520996, 3299.82182, 302))
  Position_SetRadius(node79, 5)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node78, node80)
  Position_SetPosition(node80, MAT_Vector3(1811.520996, 3158.714822, 302))
  Position_SetRadius(node80, 5)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node78, node81)
  Position_SetPosition(node81, MAT_Vector3(1656.247945, 3159.928071, 302))
  Position_SetRadius(node81, 5)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("NOD_Path", "TZ_Freighter2_Path_2")
  Node_AddSon(node74, node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node82, node83)
  Position_SetPosition(node83, MAT_Vector3(1810.674669, 3301.627811, 302))
  Position_SetRadius(node83, 5)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node82, node84)
  Position_SetPosition(node84, MAT_Vector3(1812.366945, 3582.750137, 302))
  Position_SetRadius(node84, 5)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("NOD_Path", "genFreighter1_Path")
  Node_AddSon(node74, node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node85, node86)
  Position_SetPosition(node86, MAT_Vector3(2359.831967, 4043.103059, 252))
  Position_SetRadius(node86, 15)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_Path", "genFreighter2_Path")
  Node_AddSon(node74, node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node87, node88)
  Position_SetPosition(node88, MAT_Vector3(2446.784863, 4030.585678, 252))
  Position_SetRadius(node88, 15)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Path", "genFreighter3_Path")
  Node_AddSon(node74, node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node89, node90)
  Position_SetPosition(node90, MAT_Vector3(2551.212143, 4021.538862, 252))
  Position_SetRadius(node90, 15)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_PatrolArea", "Chapter2_BattleArea")
  Node_AddSon(node74, node91)
  PatrolArea_SetPosition(node91, MAT_Vector3(2672.639867, 3376.502792, -140.623407))
  PatrolArea_SetRadius(node91, 1111)
  PatrolArea_SetMinZ(node91, -75)
  PatrolArea_SetMaxZ(node91, 625)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node72, node92)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node72, node93)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Trigger", "BombTrigger")
  Node_AddSon(node93, node94)
  Body_SetFriendOrFoeID(node94, 0)
  Body_SetPosition(node94, MAT_Vector3(1608, 1899, 207))
  Trigger_SetVisibilityCone(node94, MAT_Vector3(0, 0, 0), 75, 180)
  Trigger_SetVisibilityBlockingStatus(node94, 1)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node72, node95)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("NOD_Directory", "TRAFFIC")
  Node_AddSon(node95, node96)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node95, node97)
  Body_SetCS(node97, MAT_Vector3(1744.363893, 3524.513198, 281.677736), MAT_Vector3(-179.665226, 0, 0))
  Node_ParseIniFile(node97, "osd/pla/pla_avenger.osd")
  Body_SetFriendOrFoeID(node97, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_generic", "bombe")
  Node_AddSon(node95, node98)
  Body_SetCS(node98, MAT_Vector3(1608, 1899, 207), MAT_Vector3(-22, 0, 0))
  Node_ParseIniFile(node98, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node98, 4)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_vessel", "tz_freighter1_1")
  Node_AddSon(node95, node99)
  Body_SetCS(node99, MAT_Vector3(1933.976069, 2746.062591, 297.445872), MAT_Vector3(-179.493959, 0, 0))
  Node_ParseIniFile(node99, "osd/gen/gen_freighter1.osd")
  Body_SetFriendOrFoeID(node99, 0)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_vessel", "tz_freighter1_2")
  Node_AddSon(node95, node100)
  Body_SetCS(node100, MAT_Vector3(1810.242784, 3442.365608, 297.4459), MAT_Vector3(-179.494, 0, 0))
  Node_ParseIniFile(node100, "osd/gen/gen_freighter1.osd")
  Body_SetFriendOrFoeID(node100, 0)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_vessel", "gen_freighter1_1")
  Node_AddSon(node95, node101)
  Body_SetCS(node101, MAT_Vector3(2396.400231, 2428.72898, 252), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node101, "osd/gen/gen_freighter1.osd")
  Body_SetFriendOrFoeID(node101, 1)
  Body_SetNameKey(node101, 11)
  Body_SetCargoKey(node101, 1136, 0)
  Body_SetCargoKey(node101, 1136, 1)
  Body_SetCargoKey(node101, 1136, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_vessel", "gen_freighter1_2")
  Node_AddSon(node95, node102)
  Body_SetCS(node102, MAT_Vector3(2545.466536, 2341.213318, 252), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node102, "osd/gen/gen_freighter1.osd")
  Body_SetFriendOrFoeID(node102, 1)
  Body_SetNameKey(node102, 13)
  Body_SetCargoKey(node102, 1136, 0)
  Body_SetCargoKey(node102, 1136, 1)
  Body_SetCargoKey(node102, 1136, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_vessel", "gen_freighter1_3")
  Node_AddSon(node95, node103)
  Body_SetCS(node103, MAT_Vector3(2690.012553, 2463.677445, 252), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node103, "osd/gen/gen_freighter1.osd")
  Body_SetFriendOrFoeID(node103, 1)
  Body_SetNameKey(node103, 15)
  Body_SetCargoKey(node103, 1136, 0)
  Body_SetCargoKey(node103, 1136, 1)
  Body_SetCargoKey(node103, 1136, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_vessel", "atl_scout2_1")
  Node_AddSon(node95, node104)
  Body_SetCS(node104, MAT_Vector3(2388.602187, 2779.720393, 106.90033), MAT_Vector3(-139.660153, 0, 0))
  Node_ParseIniFile(node104, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node104, 4)
  Body_SetNameKey(node104, 2)
  Body_SetCargoKey(node104, 1022, 0)
  Body_SetCargoKey(node104, 1023, 1)
  Body_SetCargoKey(node104, 1024, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_vessel", "atl_scout1_1")
  Node_AddSon(node95, node105)
  Body_SetCS(node105, MAT_Vector3(2347.010042, 2735.605412, 105.723661), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node105, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node105, 4)
  Body_SetNameKey(node105, 330)
  Body_SetCargoKey(node105, 1023, 0)
  Body_SetCargoKey(node105, 1024, 1)
  Body_SetCargoKey(node105, 1022, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_vessel", "atl_scout1_2")
  Node_AddSon(node95, node106)
  Body_SetCS(node106, MAT_Vector3(2433.212958, 2815.959938, 105.7237), MAT_Vector3(-154.839941, 0, 0))
  Node_ParseIniFile(node106, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node106, 4)
  Body_SetNameKey(node106, 330)
  Body_SetCargoKey(node106, 1023, 0)
  Body_SetCargoKey(node106, 1024, 1)
  Body_SetCargoKey(node106, 1022, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_waypoint", "nav_waypoint_follow_1")
  Node_AddSon(node95, node107)
  Body_SetPosition(node107, MAT_Vector3(-800, 650, -348))
  WayPoint_SetRadius(node107, 5)
  Node_ParseIniFile(node107, "osd/nav/nav_waypoint_follow.osd")
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node108)
  Camera_SetBackPlane(node108, 512)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_Scenario", "IngameSequences")
  Node_AddSon(node0, node109)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node109, node110)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node109, node111)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node111, node112)
  Position_SetPosition(node112, MAT_Vector3(1883.799274, 1235.591248, 252))
  Position_SetRadius(node112, 5)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("NOD_Position", "LookFrom_2")
  Node_AddSon(node111, node113)
  Position_SetPosition(node113, MAT_Vector3(1864.09842, 2778.919046, 252))
  Position_SetRadius(node113, 5)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Position", "LookAt_1")
  Node_AddSon(node111, node114)
  Position_SetPosition(node114, MAT_Vector3(1793.291526, 4665.329416, 232))
  Position_SetRadius(node114, 5)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Path", "Freighter2_Path_1")
  Node_AddSon(node111, node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node115, node116)
  Position_SetPosition(node116, MAT_Vector3(2001.564355, 2151.605679, 302))
  Position_SetRadius(node116, 10)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node115, node117)
  Position_SetPosition(node117, MAT_Vector3(2007.62991, 3102.931729, 302))
  Position_SetRadius(node117, 10)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Path", "Freighter1_Path_1")
  Node_AddSon(node111, node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node118, node119)
  Position_SetPosition(node119, MAT_Vector3(2162.659868, 1498.004964, 232))
  Position_SetRadius(node119, 10)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("NOD_Path", "Toiler1_Path_1")
  Node_AddSon(node111, node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node120, node121)
  Position_SetPosition(node121, MAT_Vector3(1770.421604, 2029.756265, 238))
  Position_SetRadius(node121, 5)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node120, node122)
  Position_SetPosition(node122, MAT_Vector3(1837.281654, 2030.603007, 238))
  Position_SetRadius(node122, 5)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node120, node123)
  Position_SetPosition(node123, MAT_Vector3(1838.128331, 2293.811902, 238))
  Position_SetRadius(node123, 5)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node120, node124)
  Position_SetPosition(node124, MAT_Vector3(1850.230522, 2637.029198, 238))
  Position_SetRadius(node124, 5)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node120, node125)
  Position_SetPosition(node125, MAT_Vector3(1850.198859, 2854.076966, 238))
  Position_SetRadius(node125, 5)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_1")
  Node_AddSon(node111, node126)
  PatrolArea_SetPosition(node126, MAT_Vector3(-800, 650, -348))
  PatrolArea_SetRadius(node126, 50)
  PatrolArea_SetMinZ(node126, -20)
  PatrolArea_SetMaxZ(node126, 20)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_Path", "TZPol_Path_1")
  Node_AddSon(node111, node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node127, node128)
  Position_SetPosition(node128, MAT_Vector3(1880.557773, 1425.171135, 201.210257))
  Position_SetRadius(node128, 5)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node127, node129)
  Position_SetPosition(node129, MAT_Vector3(1913.310915, 1528.28213, 202))
  Position_SetRadius(node129, 5)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node127, node130)
  Position_SetPosition(node130, MAT_Vector3(1915.737142, 1678.702896, 202))
  Position_SetRadius(node130, 5)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node127, node131)
  Position_SetPosition(node131, MAT_Vector3(1864.788021, 1780.600959, 239))
  Position_SetRadius(node131, 5)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node127, node132)
  Position_SetPosition(node132, MAT_Vector3(1863.574929, 1926.169512, 239))
  Position_SetRadius(node132, 5)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node127, node133)
  Position_SetPosition(node133, MAT_Vector3(1862.361929, 2381.071601, 239))
  Position_SetRadius(node133, 5)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node127, node134)
  Position_SetPosition(node134, MAT_Vector3(2030.97886, 2381.072, 302))
  Position_SetRadius(node134, 5)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node127, node135)
  Position_SetPosition(node135, MAT_Vector3(2169.269087, 2379.858929, 302))
  Position_SetRadius(node135, 5)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("NOD_Path", "Freighter2_2_Path_1")
  Node_AddSon(node111, node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node136, node137)
  Position_SetPosition(node137, MAT_Vector3(2125.899834, 2569.959975, 412))
  Position_SetRadius(node137, 10)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("NOD_Position", "Sink_Pos1")
  Node_AddSon(node111, node138)
  Position_SetPosition(node138, MAT_Vector3(1715.578073, 2568.983819, 402))
  Position_SetRadius(node138, 10)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("NOD_Path", "PlayerPath_1")
  Node_AddSon(node111, node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node139, node140)
  Position_SetPosition(node140, MAT_Vector3(1903.749639, 1618.312903, 192))
  Position_SetRadius(node140, 5)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node139, node141)
  Position_SetPosition(node141, MAT_Vector3(1903.75, 2046.526873, 192))
  Position_SetRadius(node141, 5)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node139, node142)
  Position_SetPosition(node142, MAT_Vector3(1920.73299, 2116.885103, 192))
  Position_SetRadius(node142, 5)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node139, node143)
  Position_SetPosition(node143, MAT_Vector3(1892.832373, 2186.030032, 192))
  Position_SetRadius(node143, 5)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node139, node144)
  Position_SetPosition(node144, MAT_Vector3(1892.832, 2448.053281, 192))
  Position_SetRadius(node144, 5)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node139, node145)
  Position_SetPosition(node145, MAT_Vector3(1860.07909, 2528.115669, 192))
  Position_SetRadius(node145, 5)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node139, node146)
  Position_SetPosition(node146, MAT_Vector3(1860.637324, 2871.054181, 192))
  Position_SetRadius(node146, 5)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node139, node147)
  Position_SetPosition(node147, MAT_Vector3(1836.118853, 2967.187942, 232))
  Position_SetRadius(node147, 5)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node139, node148)
  Position_SetPosition(node148, MAT_Vector3(1784.24613, 2873.351762, 232))
  Position_SetRadius(node148, 5)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node139, node149)
  Position_SetPosition(node149, MAT_Vector3(1783.656, 2762.448183, 232))
  Position_SetRadius(node149, 5)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node139, node150)
  Position_SetPosition(node150, MAT_Vector3(1782.47507, 2640.221761, 232))
  Position_SetRadius(node150, 5)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Path", "PlayerPath_2")
  Node_AddSon(node111, node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node151, node152)
  Position_SetPosition(node152, MAT_Vector3(1592.075156, 1857.083374, 209.789875))
  Position_SetRadius(node152, 5)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node151, node153)
  Position_SetPosition(node153, MAT_Vector3(1606.155679, 1892.879089, 209.946554))
  Position_SetRadius(node153, 5)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Position", "LookFrom_3")
  Node_AddSon(node111, node154)
  Position_SetPosition(node154, MAT_Vector3(1607.927074, 1873.393746, 217.496019))
  Position_SetRadius(node154, 5)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Position", "LookFrom_4")
  Node_AddSon(node111, node155)
  Position_SetPosition(node155, MAT_Vector3(1608.517465, 1923.583518, 215.268697))
  Position_SetRadius(node155, 5)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Position", "LookFrom_5")
  Node_AddSon(node111, node156)
  Position_SetPosition(node156, MAT_Vector3(1607.515047, 1856.915864, 246.243711))
  Position_SetRadius(node156, 5)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Position", "LookFrom_6")
  Node_AddSon(node111, node157)
  Position_SetPosition(node157, MAT_Vector3(1610.210342, 1817.607573, 213.662623))
  Position_SetRadius(node157, 5)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Position", "LookFrom_7")
  Node_AddSon(node111, node158)
  Position_SetPosition(node158, MAT_Vector3(1613.41169, 1776.696961, 474.841586))
  Position_SetRadius(node158, 5)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Position", "LookFrom_8")
  Node_AddSon(node111, node159)
  Position_SetPosition(node159, MAT_Vector3(1701.966167, 1777.910071, 410.596584))
  Position_SetRadius(node159, 5)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Path", "PlayerPath_3")
  Node_AddSon(node111, node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node160, node161)
  Position_SetPosition(node161, MAT_Vector3(1591.228669, 1857.083, 211.272806))
  Position_SetRadius(node161, 5)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node160, node162)
  Position_SetPosition(node162, MAT_Vector3(1565.532123, 1798.936285, 474.301627))
  Position_SetRadius(node162, 5)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node160, node163)
  Position_SetPosition(node163, MAT_Vector3(1745.800453, 1798.936, 474.3016))
  Position_SetRadius(node163, 5)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node160, node164)
  Position_SetPosition(node164, MAT_Vector3(1834.66473, 1897.110369, 245.455061))
  Position_SetRadius(node164, 5)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node160, node165)
  Position_SetPosition(node165, MAT_Vector3(1946.267512, 1895.896929, 245.4551))
  Position_SetRadius(node165, 5)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Position", "LookFrom_9")
  Node_AddSon(node111, node166)
  Position_SetPosition(node166, MAT_Vector3(2908.236696, 2686.82285, 262))
  Position_SetRadius(node166, 5)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Position", "LookFrom_10")
  Node_AddSon(node111, node167)
  Position_SetPosition(node167, MAT_Vector3(2409.710656, 2912.581212, 262))
  Position_SetRadius(node167, 5)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node109, node168)
  Node_EnterSimulation(node168)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Director", "Chapter1_Intro_V")
  Node_AddSon(node168, node169)
  Node_EnterSimulation(node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Director", "Chapter1_AddOn_V")
  Node_AddSon(node168, node170)
  Node_EnterSimulation(node170)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Director", "Chapter1_Intro_A")
  Node_AddSon(node168, node171)
  Node_EnterSimulation(node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_Director", "Chapter1_Extro_V")
  Node_AddSon(node168, node172)
  Node_EnterSimulation(node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_Director", "Chapter1_Extro_A")
  Node_AddSon(node168, node173)
  Node_EnterSimulation(node173)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_Director", "Chapter2_Intro_V")
  Node_AddSon(node168, node174)
  Node_EnterSimulation(node174)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_Director", "Chapter2_Intro_A")
  Node_AddSon(node168, node175)
  Node_EnterSimulation(node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node109, node176)
  Node_EnterSimulation(node176)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node109, node177)
  Node_EnterSimulation(node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("nod_vessel", "gen_freighter2_1")
  Node_AddSon(node177, node178)
  Body_SetCS(node178, MAT_Vector3(2005.929873, 1969.391467, 302), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node178, "osd/gen/gen_freighter2.osd")
  Body_SetFriendOrFoeID(node178, 0)
  Body_SetNameKey(node178, -1)
  Body_SetCargoKey(node178, -1, 0)
  Body_SetCargoKey(node178, -1, 1)
  Body_SetCargoKey(node178, -1, 2)
  Node_EnterSimulation(node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("nod_vessel", "gen_toiler_1")
  Node_AddSon(node177, node179)
  Body_SetCS(node179, MAT_Vector3(1680.018254, 2028.424814, 238), MAT_Vector3(-90.075369, 0, 0))
  Node_ParseIniFile(node179, "osd/gen/gen_toiler.osd")
  Body_SetFriendOrFoeID(node179, 0)
  Body_SetNameKey(node179, -1)
  Body_SetCargoKey(node179, -1, 0)
  Body_SetCargoKey(node179, -1, 1)
  Body_SetCargoKey(node179, -1, 2)
  Node_EnterSimulation(node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("nod_vessel", "gen_freighter1_1")
  Node_AddSon(node177, node180)
  Body_SetCS(node180, MAT_Vector3(1819.277483, 1509.502619, 232), MAT_Vector3(-90.367611, 0, 0))
  Node_ParseIniFile(node180, "osd/gen/gen_freighter1.osd")
  Body_SetFriendOrFoeID(node180, 0)
  Body_SetNameKey(node180, -1)
  Body_SetCargoKey(node180, -1, 0)
  Body_SetCargoKey(node180, -1, 1)
  Body_SetCargoKey(node180, -1, 2)
  Node_EnterSimulation(node180)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("nod_vessel", "tz_pscout_1")
  Node_AddSon(node177, node181)
  Body_SetCS(node181, MAT_Vector3(1873.279348, 1345.108453, 202.19311), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node181, "osd/tz/tz_pscout.osd")
  Body_SetFriendOrFoeID(node181, 0)
  Body_SetNameKey(node181, -1)
  Body_SetCargoKey(node181, -1, 0)
  Body_SetCargoKey(node181, -1, 1)
  Body_SetCargoKey(node181, -1, 2)
  Node_EnterSimulation(node181)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("nod_vessel", "tz_pscout_2")
  Node_AddSon(node177, node182)
  Body_SetCS(node182, MAT_Vector3(1859.770722, 1329.58835, 197.469392), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node182, "osd/tz/tz_pscout.osd")
  Body_SetFriendOrFoeID(node182, 0)
  Body_SetNameKey(node182, -1)
  Body_SetCargoKey(node182, -1, 0)
  Body_SetCargoKey(node182, -1, 1)
  Body_SetCargoKey(node182, -1, 2)
  Node_EnterSimulation(node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("nod_vessel", "tz_pscout_3")
  Node_AddSon(node177, node183)
  Body_SetCS(node183, MAT_Vector3(1884.200865, 1328.438759, 199.83125), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node183, "osd/tz/tz_pscout.osd")
  Body_SetFriendOrFoeID(node183, 0)
  Body_SetNameKey(node183, -1)
  Body_SetCargoKey(node183, -1, 0)
  Body_SetCargoKey(node183, -1, 1)
  Body_SetCargoKey(node183, -1, 2)
  Node_EnterSimulation(node183)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("nod_vessel", "gen_freighter2_corpse_1")
  Node_AddSon(node177, node184)
  Body_SetCS(node184, MAT_Vector3(1716.660556, 2569.303628, 280.783259), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node184, "osd/gen/gen_freighter2_corpse.osd")
  Body_SetFriendOrFoeID(node184, 0)
  Body_SetNameKey(node184, -1)
  Body_SetCargoKey(node184, -1, 0)
  Body_SetCargoKey(node184, -1, 1)
  Body_SetCargoKey(node184, -1, 2)
  Node_EnterSimulation(node184)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, F)
SetEnemyMatrixElement(2, 0, F)
SetEnemyMatrixElement(3, 0, F)
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
SetEnemyMatrixElement(0, 2, F)
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
SetEnemyMatrixElement(0, 4, N)
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
                                                                                                    if not (o1735.Value ~= True) then
                                                                                                      if not (True ~= True) then
                                                                                                        if not (True ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
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
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("RC1OK_092501_1543")
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
                                                                                                    if not (o1759.Value == True) then
                                                                                                      if not (False == True) then
                                                                                                        if not (False == True) then
                                                                                                          if not (False == True) then
                                                                                                            if not (False == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
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
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1492, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1492, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1492, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1492, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1492, "Code5")
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
S_o1530 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1530, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1530, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1530, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1530, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1530, "Code5")
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
S_o1568 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1568, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1568, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1568, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1568, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1568, "Code5")
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
S_o1606 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1606, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1606, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1606, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1606, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1606, "Code5")
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
S_o1644 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1644, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1644, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1644, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1644, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1644, "Code5")
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
S_o1682 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1682, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1682, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1682, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1682, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1682, "Code5")
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
S_o1720 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1720, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1720, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1720, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, True, False)
  CallFunction(o1720, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1720, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1720, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1725.SetStateValue(L1)
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
o1725 = { [nil] = {}, Start = function()
  o1725["Value"] = False
  o1731.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1725.Value == L0) then
    o1725["Value"] = L0
    o1731.ReCalculate()
  end
end }
S_o1726 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_flak", 1)
  Body_AddItem(L0.Node, "gun_plasma2", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_shell", 2000)
  Body_AddItem(L0.Node, "ammo_energy", 2000)
  Body_AddItem(L0.Node, "torpedo_tigershark", 6)
  Body_AddItem(L0.Node, "buzzer_normal", 5)
  Body_AddItem(L0.Node, "device_generator", 1)
  Body_AddItem(L0.Node, "device_booster", 99)
  Body_AddItem(L0.Node, "device_repair", 1)
  CallFunction(o1726, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
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
o1731 = { [nil] = {}, GetCalculated = function()
  if not (o1725.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1731.SetStateValue(o1731.GetCalculated())
end, StartCalculate = function()
  o1731["Value"] = o1731.GetCalculated()
  o2226.StartCalculate()
  o2237.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1726.Node, o1726.Node, 148)
  SED_SetTaskTextKey(0, -1, -1)
end, SetStateValue = function(L0)
  if not (o1731.Value == L0) then
    o1731["Value"] = L0
    o2226.ReCalculate()
    o2237.ReCalculate()
    if not (L0 ~= 1) then
      o1731.ChangeTo1()
    end
  end
end }
o1733 = { [nil] = {}, GetCalculated = function()
  if not (o2064.Value ~= True) then
    if not (o2112.Value ~= True) then
      if not (o2160.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o1733.SetStateValue(o1733.GetCalculated())
end, StartCalculate = function()
  o1733["Value"] = o1733.GetCalculated()
  o1735.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1726.Node, o1726.Node, 338)
end, SetStateValue = function(L0)
  if not (o1733.Value == L0) then
    o1733["Value"] = L0
    o1735.ReCalculate()
    if not (L0 ~= 1) then
      o1733.ChangeTo1()
    end
  end
end }
o1734 = { [nil] = {}, GetCalculated = function()
  if not (o1914.Value ~= True) then
    if not (o1964.Value ~= True) then
      if not (o2014.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o1734.SetStateValue(o1734.GetCalculated())
end, StartCalculate = function()
  o1734["Value"] = o1734.GetCalculated()
  o1759.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1734.Value == L0) then
    DelayedFunction(2, o1734, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1734.Value == L0) then
    o1734["Value"] = L0
    o1759.ReCalculate()
  end
end }
o1735 = { [nil] = {}, GetCalculated = function()
  if not (o1733.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1735.SetStateValue(o1735.GetCalculated())
end, StartCalculate = function()
  o1735["Value"] = o1735.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1735.Value == L0) then
    o1735["Value"] = L0
    o2.ReCalculate()
  end
end }
o1759 = { [nil] = {}, GetCalculated = function()
  if not (o1734.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1759.SetStateValue(o1759.GetCalculated())
end, StartCalculate = function()
  o1759["Value"] = o1759.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1759.Value == L0) then
    o1759["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o1763 = { [nil] = {}, Start = function(L0)

end }
S_o1797 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1797, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1797, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1797, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TZ_Freighter1_Path_1", 1, 1 } }("Code4")
  else
    CallFunction(o1797, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o608.Node, "DP_hor_1", "DP_hor_1", 0.25, 0.3, 6000, "Code5")
  else
    CallFunction(o1797, "Code5")
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
S_o1846 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1846, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1846, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1846, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 10 } }("Code4")
  else
    CallFunction(o1846, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TZ_Freighter2_Path_1", 0.75, 1 } }("Code5")
  else
    CallFunction(o1846, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o166.Node, "DP_hor_2", "DP_hor_1", 0.25, 0.25, 10, "Code6")
  else
    CallFunction(o1846, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TZ_Freighter2_Path_2", 0.75, 1 } }("Code7")
  else
    CallFunction(o1846, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code8")
  else
    CallFunction(o1846, "Code8")
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
S_o1897 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1897, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1897, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1897, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  Body_SetEmpShield(L0.Node, 1)
  CallFunction(o1897, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/genFreighter1_Path", 0.5, 1 } }("Code6")
  else
    CallFunction(o1897, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o1897, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1897, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o1897, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/genFreighter1_Path", 0.5, 1 } }("Code10")
  else
    CallFunction(o1897, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code11")
  else
    CallFunction(o1897, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_DestEmp = function(L0, L1)
  o1914.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1899.Value ~= True) then
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
o1899 = { [nil] = {}, GetCalculated = function()
  if not (o2235.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1899.SetStateValue(o1899.GetCalculated())
end, StartCalculate = function()
  o1899["Value"] = o1899.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1899.Value == L0) then
    o1899["Value"] = L0
    CallFunction(o1897, "ProcesseStateChange")
  end
end }
o1914 = { [nil] = {}, Start = function()
  o1914["Value"] = False
  o1734.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1914.Value == L0) then
    o1914["Value"] = L0
    o1734.ReCalculate()
  end
end }
S_o1947 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1947, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1947, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1947, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  Body_SetEmpShield(L0.Node, 1)
  CallFunction(o1947, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/genFreighter2_Path", 0.5, 1 } }("Code6")
  else
    CallFunction(o1947, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o1947, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1947, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o1947, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/genFreighter2_Path", 0.5, 1 } }("Code10")
  else
    CallFunction(o1947, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code11")
  else
    CallFunction(o1947, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_DestEmp = function(L0, L1)
  o1964.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
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
  if not (o2235.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1949.SetStateValue(o1949.GetCalculated())
end, StartCalculate = function()
  o1949["Value"] = o1949.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1949.Value == L0) then
    o1949["Value"] = L0
    CallFunction(o1947, "ProcesseStateChange")
  end
end }
o1964 = { [nil] = {}, Start = function()
  o1964["Value"] = False
  o1734.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1964.Value == L0) then
    o1964["Value"] = L0
    o1734.ReCalculate()
  end
end }
S_o1997 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1997, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1997, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1997, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  Body_SetEmpShield(L0.Node, 1)
  CallFunction(o1997, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/genFreighter3_Path", 0.5, 1 } }("Code6")
  else
    CallFunction(o1997, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o1997, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1997, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o1997, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/genFreighter3_Path", 0.5, 1 } }("Code10")
  else
    CallFunction(o1997, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code11")
  else
    CallFunction(o1997, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_DestEmp = function(L0, L1)
  o2014.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1999.Value ~= True) then
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
o1999 = { [nil] = {}, GetCalculated = function()
  if not (o2235.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1999.SetStateValue(o1999.GetCalculated())
end, StartCalculate = function()
  o1999["Value"] = o1999.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1999.Value == L0) then
    o1999["Value"] = L0
    CallFunction(o1997, "ProcesseStateChange")
  end
end }
o2014 = { [nil] = {}, Start = function()
  o2014["Value"] = False
  o1734.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2014.Value == L0) then
    o2014["Value"] = L0
    o1734.ReCalculate()
  end
end }
S_o2047 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2047, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2047, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2047, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o2047, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter2_BattleArea", "E", "", "", "", 1, 1, "Code5")
  else
    CallFunction(o2047, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o2047, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_KineticShield25 = function(L0, L1)
  o2059.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o2064.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2049.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2048.Value ~= True) then
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
o2048 = { [nil] = {}, GetCalculated = function()
  if not (o2059.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2048.SetStateValue(o2048.GetCalculated())
end, StartCalculate = function()
  o2048["Value"] = o2048.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2048.Value == L0) then
    o2048["Value"] = L0
    CallFunction(o2047, "ProcesseStateChange")
  end
end }
o2049 = { [nil] = {}, GetCalculated = function()
  if not (o2235.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2049.SetStateValue(o2049.GetCalculated())
end, StartCalculate = function()
  o2049["Value"] = o2049.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2049.Value == L0) then
    o2049["Value"] = L0
    CallFunction(o2047, "ProcesseStateChange")
  end
end }
o2059 = { [nil] = {}, Start = function()
  o2059["Value"] = False
  o2048.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2059.Value == L0) then
    o2059["Value"] = L0
    o2048.ReCalculate()
  end
end }
o2064 = { [nil] = {}, Start = function()
  o2064["Value"] = False
  o1733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2064.Value == L0) then
    o2064["Value"] = L0
    o1733.ReCalculate()
  end
end }
S_o2095 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2095, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2095, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2095, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o2095, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter2_BattleArea", "E", "", "", "", 1, 1, "Code5")
  else
    CallFunction(o2095, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o2095, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_KineticShield25 = function(L0, L1)
  o2107.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o2112.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2097.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2096.Value ~= True) then
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
o2096 = { [nil] = {}, GetCalculated = function()
  if not (o2107.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2096.SetStateValue(o2096.GetCalculated())
end, StartCalculate = function()
  o2096["Value"] = o2096.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2096.Value == L0) then
    o2096["Value"] = L0
    CallFunction(o2095, "ProcesseStateChange")
  end
end }
o2097 = { [nil] = {}, GetCalculated = function()
  if not (o2235.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2097.SetStateValue(o2097.GetCalculated())
end, StartCalculate = function()
  o2097["Value"] = o2097.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2097.Value == L0) then
    o2097["Value"] = L0
    CallFunction(o2095, "ProcesseStateChange")
  end
end }
o2107 = { [nil] = {}, Start = function()
  o2107["Value"] = False
  o2096.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2107.Value == L0) then
    o2107["Value"] = L0
    o2096.ReCalculate()
  end
end }
o2112 = { [nil] = {}, Start = function()
  o2112["Value"] = False
  o1733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2112.Value == L0) then
    o2112["Value"] = L0
    o1733.ReCalculate()
  end
end }
S_o2143 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2143, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2143, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2143, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o2143, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter2_BattleArea", "E", "", "", "", 1, 1, "Code5")
  else
    CallFunction(o2143, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o2143, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_KineticShield25 = function(L0, L1)
  o2155.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o2160.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2145.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2144.Value ~= True) then
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
o2144 = { [nil] = {}, GetCalculated = function()
  if not (o2155.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2144.SetStateValue(o2144.GetCalculated())
end, StartCalculate = function()
  o2144["Value"] = o2144.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2144.Value == L0) then
    o2144["Value"] = L0
    CallFunction(o2143, "ProcesseStateChange")
  end
end }
o2145 = { [nil] = {}, GetCalculated = function()
  if not (o2235.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2145.SetStateValue(o2145.GetCalculated())
end, StartCalculate = function()
  o2145["Value"] = o2145.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2145.Value == L0) then
    o2145["Value"] = L0
    CallFunction(o2143, "ProcesseStateChange")
  end
end }
o2155 = { [nil] = {}, Start = function()
  o2155["Value"] = False
  o2144.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2155.Value == L0) then
    o2155["Value"] = L0
    o2144.ReCalculate()
  end
end }
o2160 = { [nil] = {}, Start = function()
  o2160["Value"] = False
  o1733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2160.Value == L0) then
    o2160["Value"] = L0
    o1733.ReCalculate()
  end
end }
S_o2191 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o1947.Node)
  CallFunction(o2191, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2196 = { [nil] = {}, Start = function(L0)

end }
S_o2197 = { [nil] = {}, Start = function(L0)

end }
S_o2198 = { [nil] = {}, Start = function(L0)

end }
S_o2199 = { [nil] = {}, Start = function(L0)

end }
o2201 = FormationLib.CreateFormation("Triangle", "", "", "", 20, 20)
S_o2202 = { [nil] = {}, Start = function(L0)

end }
o2204 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o2205 = { [nil] = {}, Start = function(L0)

end }
S_o2206 = { [nil] = {}, Start = function(L0)

end }
S_o2207 = { [nil] = {}, Start = function(L0)

end }
S_o2208 = { [nil] = {}, Start = function(L0)

end }
S_o2209 = { [nil] = {}, Start = function(L0)

end }
S_o2210 = { [nil] = {}, Start = function(L0)

end }
S_o2211 = { [nil] = {}, Start = function(L0)

end }
S_o2212 = { [nil] = {}, Start = function(L0)

end }
S_o2213 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "atmo")
  Director_BeginCutscene(L0.Node)
  FormationLib.PlaceFormationPath(o2203, o2204, "/IngameSequences/Navigation/PlayerPath_1")
  Camera_Cut(L0.Node, 1)
  Camera_MoveInto(L0.Node, "/IngameSequences/Navigation/LookFrom_1")
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o2213, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.9, "Code9")
  else
    CallFunction(o2213, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 30, "MMMN", 0)
  CallFunction(o2213, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 45, "Code11")
  else
    CallFunction(o2213, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 1, "MMMN", 0)
  CallFunction(o2213, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2218 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.9, "Code1")
  else
    CallFunction(o2218, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o2203, o2204, "/IngameSequences/Navigation/PlayerPath_1", "pos_1", "pos_10", 0.85, 1, "Code2")
  else
    CallFunction(o2218, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  Director_EndCutscene(L0.Node)
  SED_SetTaskTextKey(1359, -1, -1)
  CallFunction(o2218, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2221 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2.5, "Code1")
  else
    CallFunction(o2221, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o1726.Node, o1726.Node, 146)
  CallFunction(o2221, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 20, "Code3")
  else
    CallFunction(o2221, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SendRadioMessageTake(o1726.Node, o1726.Node, 147)
  CallFunction(o2221, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2225 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2225, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  FormationLib.PlaceFormationPath(o2203, o2204, "/IngameSequences/Navigation/PlayerPath_2")
  Camera_Cut(L0.Node, 1)
  Camera_MoveInto(L0.Node, "/IngameSequences/Navigation/LookFrom_3")
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/bombe", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o2225, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 9, "Code9")
  else
    CallFunction(o2225, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_4", 6, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/bombe", 3, "MMMN", 0)
  CallFunction(o2225, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 12, "Code12")
  else
    CallFunction(o2225, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 3, "MMMN", 0)
  CallFunction(o2225, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code14")
  else
    CallFunction(o2225, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/bombe", 3, "MMMN", 0)
  CallFunction(o2225, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 7, "Code16")
  else
    CallFunction(o2225, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_3", 4, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/bombe", 1, "MMMN", 0)
  CallFunction(o2225, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 7, "Code19")
  else
    CallFunction(o2225, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_5", 7, "MMMN", 0)
  CallFunction(o2225, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 9, "Code21")
  else
    CallFunction(o2225, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_6", 5, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 1.5, "MMMN", 0)
  CallFunction(o2225, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code24")
  else
    CallFunction(o2225, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_7", 5, "MMMN", 0)
  CallFunction(o2225, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o2203, o2204, "/IngameSequences/Navigation/PlayerPath_3", "pos_1", "pos_3", 1, 1, "Code26")
  else
    CallFunction(o2225, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_8", 5, "MMMN", 0)
  CallFunction(o2225, "Code27")
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o2203, o2204, "/IngameSequences/Navigation/PlayerPath_3", "pos_3", "pos_5", 1, 1, "Code28")
  else
    CallFunction(o2225, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  o2235.SetStateValue(True)
  CallFunction(o2225, "Code29")
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o2226.Value ~= True) then
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
o2226 = { [nil] = {}, GetCalculated = function()
  if not (o1731.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2226.SetStateValue(o2226.GetCalculated())
end, StartCalculate = function()
  o2226["Value"] = o2226.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2226.Value == L0) then
    DelayedFunction(5, o2226, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2226.Value == L0) then
    o2226["Value"] = L0
    CallFunction(o2225, "ProcesseStateChange")
  end
end }
o2235 = { [nil] = {}, Start = function()
  o2235["Value"] = False
  o1899.StartCalculate()
  o1949.StartCalculate()
  o1999.StartCalculate()
  o2049.StartCalculate()
  o2097.StartCalculate()
  o2145.StartCalculate()
  o2251.StartCalculate()
  o2257.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2235.Value == L0) then
    o2235["Value"] = L0
    o1899.ReCalculate()
    o1949.ReCalculate()
    o1999.ReCalculate()
    o2049.ReCalculate()
    o2097.ReCalculate()
    o2145.ReCalculate()
    o2251.ReCalculate()
    o2257.ReCalculate()
  end
end }
S_o2236 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2236, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Game_PlayMusic(GetGameNode(), "track5")
  CallFunction(o2236, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2.5, "Code3")
  else
    CallFunction(o2236, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SendRadioMessageTake(o1726.Node, o1726.Node, 149)
  CallFunction(o2236, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code5")
  else
    CallFunction(o2236, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  SendRadioMessageTake(o1726.Node, o1726.Node, 150)
  CallFunction(o2236, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.5, "Code7")
  else
    CallFunction(o2236, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Game_PlayMusic(GetGameNode(), "track4")
  CallFunction(o2236, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3.5, "Code9")
  else
    CallFunction(o2236, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  SendRadioMessageTake(o1726.Node, o1726.Node, 151)
  CallFunction(o2236, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code11")
  else
    CallFunction(o2236, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  SendRadioMessageTake(o1726.Node, o1726.Node, 152)
  CallFunction(o2236, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 15, "Code13")
  else
    CallFunction(o2236, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  SendRadioMessageTake(o1726.Node, o1726.Node, 153)
  CallFunction(o2236, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code15")
  else
    CallFunction(o2236, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  SendRadioMessageTake(o1726.Node, o1726.Node, 154)
  CallFunction(o2236, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code17")
  else
    CallFunction(o2236, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  SendRadioMessageTake(o1726.Node, o1726.Node, 155)
  CallFunction(o2236, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code19")
  else
    CallFunction(o2236, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  Game_PlayMusic(GetGameNode(), "track5")
  SendRadioMessageTake(o1726.Node, o1726.Node, 156)
  CallFunction(o2236, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code22")
  else
    CallFunction(o2236, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  SendRadioMessageTake(o1726.Node, o1726.Node, 331)
  CallFunction(o2236, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code24")
  else
    CallFunction(o2236, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  Game_PlayMusic(GetGameNode(), "agressive")
  CallFunction(o2236, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o2237.Value ~= True) then
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
o2237 = { [nil] = {}, GetCalculated = function()
  if not (o1731.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2237.SetStateValue(o2237.GetCalculated())
end, StartCalculate = function()
  o2237["Value"] = o2237.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2237.Value == L0) then
    DelayedFunction(5, o2237, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2237.Value == L0) then
    o2237["Value"] = L0
    CallFunction(o2236, "ProcesseStateChange")
  end
end }
S_o2250 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2250, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_9", 6, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/gen_freighter1_1", 3, "MMMN", 0)
  CallFunction(o2250, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code4")
  else
    CallFunction(o2250, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_10", 6, "MMMN", 0)
  CallFunction(o2250, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code6")
  else
    CallFunction(o2250, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Director_EndCutscene(L0.Node)
  Game_SetWayPoint(GetGameNode(), o2191.Node)
  CallFunction(o1897, "Code8")
  CallFunction(o1947, "Code8")
  CallFunction(o1997, "Code8")
  SendRadioMessageTake(o1726.Node, o1726.Node, 335)
  SendRadioMessageTake(o1726.Node, o1726.Node, 337)
  SED_SetTaskTextKey(1360, -1, -1)
  CallFunction(o2250, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o2251.Value ~= True) then
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
o2251 = { [nil] = {}, GetCalculated = function()
  if not (o2235.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2251.SetStateValue(o2251.GetCalculated())
end, StartCalculate = function()
  o2251["Value"] = o2251.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2251.Value == L0) then
    o2251["Value"] = L0
    CallFunction(o2250, "ProcesseStateChange")
  end
end }
S_o2256 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2256, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.25, "Code2")
  else
    CallFunction(o2256, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o1726.Node, o1726.Node, 332)
  SendRadioMessageTake(o1726.Node, o1726.Node, 334)
  CallFunction(o2256, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o2257.Value ~= True) then
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
o2257 = { [nil] = {}, GetCalculated = function()
  if not (o2235.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2257.SetStateValue(o2257.GetCalculated())
end, StartCalculate = function()
  o2257["Value"] = o2257.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2257.Value == L0) then
    o2257["Value"] = L0
    CallFunction(o2256, "ProcesseStateChange")
  end
end }
S_o2261 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2261, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2261, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2261, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Freighter2_Path_1", 1, 1 } }("Code4")
  else
    CallFunction(o2261, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o2261, "Code5")
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
S_o2309 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2309, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2309, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2309, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o2309, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Toiler1_Path_1", 0.75, 1 } }("Code5")
  else
    CallFunction(o2309, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o2309, "Code6")
  end
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
S_o2357 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2357, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2357, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2357, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Freighter1_Path_1", 1, 1 } }("Code4")
  else
    CallFunction(o2357, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o2357, "Code5")
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
S_o2405 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2405, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2405, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2405, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o2200, { {}, "Goto", "/IngameSequences/Navigation/TZPol_Path_1", 0.95, 1 } }, o2201, "/IngameSequences/Navigation/PatrolArea_1", 1, "", "", "", "", 1, 1, False, "Code4")
  else
    CallFunction(o2405, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o2405, "Code5")
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
S_o2453 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2453, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2453, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2453, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o2200, { {}, "Goto", "/IngameSequences/Navigation/TZPol_Path_1", 0.95, 1 } }, o2201, "/IngameSequences/Navigation/PatrolArea_1", 1, "", "", "", "", 1, 1, False, "Code4")
  else
    CallFunction(o2453, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o2453, "Code5")
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
S_o2501 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2501, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2501, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2501, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o2200, { {}, "Goto", "/IngameSequences/Navigation/TZPol_Path_1", 0.95, 1 } }, o2201, "/IngameSequences/Navigation/PatrolArea_1", 1, "", "", "", "", 1, 1, False, "Code4")
  else
    CallFunction(o2501, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o2501, "Code5")
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
S_o2549 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2549, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2549, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2549, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o2549, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 17 } }("Code5")
  else
    CallFunction(o2549, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Sink", "/IngameSequences/Navigation/Sink_Pos1", 1, 1 } }("Code6")
  else
    CallFunction(o2549, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5 } }("Code7")
  else
    CallFunction(o2549, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Freighter2_2_Path_1", 1, 1 } }("Code8")
  else
    CallFunction(o2549, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o2549, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
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
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 184)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01a_1", S_o30)
  o64 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_1_1", S_o64)
  o98 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem03_r_1", S_o98)
  o132 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem07_r_1", S_o132)
  o166 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dock_1", S_o166)
  o200 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem07_1", S_o200)
  o234 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem03_1", S_o234)
  o268 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem03_3", S_o268)
  o302 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem03_4", S_o302)
  o336 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem01_1", S_o336)
  o370 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem01_2", S_o370)
  o404 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem05_1", S_o404)
  o438 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem05_2", S_o438)
  o472 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem06_1", S_o472)
  o506 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem01_r_1", S_o506)
  o540 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schwim_1", S_o540)
  o574 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_1", S_o574)
  o608 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_docking_1", S_o608)
  o642 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_big_1", S_o642)
  o676 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_big2_1", S_o676)
  o710 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml3_1", S_o710)
  o744 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabolic_1", S_o744)
  o778 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabolic_2", S_o778)
  o812 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_1", S_o812)
  o846 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_2", S_o846)
  o880 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml2_1", S_o880)
  o914 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_1", S_o914)
  o948 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_2", S_o948)
  o982 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant22_1", S_o982)
  o1016 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_3", S_o1016)
  o1050 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_1", S_o1050)
  o1084 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_2", S_o1084)
  o1118 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big03_1", S_o1118)
  o1152 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_2", S_o1152)
  o1186 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element05a_1", S_o1186)
  o1220 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_1", S_o1220)
  o1254 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_2", S_o1254)
  o1288 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_3", S_o1288)
  o1322 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_4", S_o1322)
  o1356 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01a_2", S_o1356)
  o1390 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01_1", S_o1390)
  o1424 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_1_2", S_o1424)
  o1458 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_1_3", S_o1458)
  o1492 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_1/Turm1", S_o1492)
  o1530 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_2/Turm1", S_o1530)
  o1568 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_3/Turm1", S_o1568)
  o1606 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_4/Turm1", S_o1606)
  o1644 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_5/Turm1", S_o1644)
  o1682 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_6/Turm1", S_o1682)
  o1720 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "BombTrigger", S_o1720)
  o1725.Start()
  o1726 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o1726)
  o1763 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bombe", S_o1763)
  o1797 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_freighter1_1", S_o1797)
  o1846 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_freighter1_2", S_o1846)
  o1897 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_freighter1_1", S_o1897)
  o1914.Start()
  o1947 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_freighter1_2", S_o1947)
  o1964.Start()
  o1997 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_freighter1_3", S_o1997)
  o2014.Start()
  o2047 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_1", S_o2047)
  o2059.Start()
  o2064.Start()
  o2095 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_1", S_o2095)
  o2107.Start()
  o2112.Start()
  o2143 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_2", S_o2143)
  o2155.Start()
  o2160.Start()
  o2191 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_follow_1", S_o2191)
  o2196 = BindEasy(Node_Find("/"), "Camera", S_o2196)
  o2197 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_1", S_o2197)
  o2198 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_2", S_o2198)
  o2199 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_1", S_o2199)
  o2202 = BindEasy(Node_Find("/IngameSequences/Navigation"), "Sink_Pos1", S_o2202)
  o2205 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_3", S_o2205)
  o2206 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_4", S_o2206)
  o2207 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_5", S_o2207)
  o2208 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_6", S_o2208)
  o2209 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_7", S_o2209)
  o2210 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_8", S_o2210)
  o2211 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_9", S_o2211)
  o2212 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_10", S_o2212)
  o2235.Start()
  o2261 = BindEasy(Node_Find("/IngameSequences/Object"), "gen_freighter2_1", S_o2261)
  o2309 = BindEasy(Node_Find("/IngameSequences/Object"), "gen_toiler_1", S_o2309)
  o2357 = BindEasy(Node_Find("/IngameSequences/Object"), "gen_freighter1_1", S_o2357)
  o2405 = BindEasy(Node_Find("/IngameSequences/Object"), "tz_pscout_1", S_o2405)
  o2453 = BindEasy(Node_Find("/IngameSequences/Object"), "tz_pscout_2", S_o2453)
  o2501 = BindEasy(Node_Find("/IngameSequences/Object"), "tz_pscout_3", S_o2501)
  o2549 = BindEasy(Node_Find("/IngameSequences/Object"), "gen_freighter2_corpse_1", S_o2549)
  o2213 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_V", S_o2213)
  o2218 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_AddOn_V", S_o2218)
  o2221 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_A", S_o2221)
  o2225 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Extro_V", S_o2225)
  o2236 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Extro_A", S_o2236)
  o2250 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_Intro_V", S_o2250)
  o2256 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_Intro_A", S_o2256)
  o2200 = { {}, o2405, o2453, o2501 }()
  o2203 = { {}, o1726 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end