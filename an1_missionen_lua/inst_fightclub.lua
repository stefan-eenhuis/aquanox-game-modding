-- dekompiliert aus map\inst_fightclub\script\inst_fightclub.sco
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
  Game_SetDecompressionHeight(node0, 280)
  Game_SetAmbientLight(node0, 0.047059, 0.090196, 0.007843)
  Game_SetParallelLightT(node0, 0.094118, 0.180392, 0.015686)
  Game_SetParallelLightB(node0, 0.784314, 0.156863, 0)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/inst_fightclub_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_fightclub_atmo.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_badend.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_fightclub_won.sam", 2)
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
  node75 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_1")
  Node_AddSon(node74, node75)
  PatrolArea_SetPosition(node75, MAT_Vector3(2264.357899, 2348.556588, 189.403388))
  PatrolArea_SetRadius(node75, 450)
  PatrolArea_SetMinZ(node75, -220)
  PatrolArea_SetMaxZ(node75, 90)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node72, node76)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node72, node77)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("NOD_Trigger", "BombTrigger")
  Node_AddSon(node77, node78)
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetPosition(node78, MAT_Vector3(1608, 1899, 207))
  Trigger_SetVisibilityCone(node78, MAT_Vector3(0, 0, 0), 75, 180)
  Trigger_SetVisibilityBlockingStatus(node78, 1)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node72, node79)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node79, node80)
  Body_SetCS(node80, MAT_Vector3(1965.880698, 2519.026768, 177.373734), MAT_Vector3(-179.665226, 0, 0))
  Node_ParseIniFile(node80, "osd/pla/pla_avenger.osd")
  Body_SetFriendOrFoeID(node80, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_vessel", "gen_toiler_inst_1")
  Node_AddSon(node79, node81)
  Body_SetCS(node81, MAT_Vector3(2109.148464, 2288.980445, 198.444253), MAT_Vector3(44.381023, 0, 0))
  Node_ParseIniFile(node81, "osd/gen/gen_toiler_inst.osd")
  Body_SetFriendOrFoeID(node81, 4)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_vessel", "gen_skipjack_inst_1")
  Node_AddSon(node79, node82)
  Body_SetCS(node82, MAT_Vector3(2109.646501, 2292.209037, 198.233991), MAT_Vector3(45.829625, 0, 0))
  Node_ParseIniFile(node82, "osd/gen/gen_skipjack_inst.osd")
  Body_SetFriendOrFoeID(node82, 4)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_vessel", "gen_voodoobreath_inst_1")
  Node_AddSon(node79, node83)
  Body_SetCS(node83, MAT_Vector3(2110.437811, 2288.538358, 197.170653), MAT_Vector3(40.445539, 0, 0))
  Node_ParseIniFile(node83, "osd/gen/gen_voodoobreath_inst.osd")
  Body_SetFriendOrFoeID(node83, 4)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_vessel", "gen_succubus2_inst_1")
  Node_AddSon(node79, node84)
  Body_SetCS(node84, MAT_Vector3(2108.789963, 2289.246337, 200.433585), MAT_Vector3(46.728204, 0, 0))
  Node_ParseIniFile(node84, "osd/gen/gen_succubus2_inst.osd")
  Body_SetFriendOrFoeID(node84, 4)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_vessel", "gen_phobocaster_inst_1")
  Node_AddSon(node79, node85)
  Body_SetCS(node85, MAT_Vector3(2109.518669, 2287.762043, 196.577393), MAT_Vector3(45.169335, 0, 0))
  Node_ParseIniFile(node85, "osd/gen/gen_phobocaster_inst.osd")
  Body_SetFriendOrFoeID(node85, 4)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_waypoint", "nav_waypoint_01_1")
  Node_AddSon(node79, node86)
  Body_SetPosition(node86, MAT_Vector3(1987.984635, 2384.743174, 200.255698))
  WayPoint_SetRadius(node86, 5)
  Node_ParseIniFile(node86, "osd/nav/nav_waypoint_01.osd")
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node87)
  Camera_SetBackPlane(node87, 512)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Scenario", "IngameSequences")
  Node_AddSon(node0, node88)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node88, node89)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node88, node90)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node88, node91)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Director", "Director_1")
  Node_AddSon(node91, node92)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Director", "Director_2")
  Node_AddSon(node91, node93)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node88, node94)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node88, node95)
  Node_EnterSimulation(node95)
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
SetEnemyMatrixElement(1, 4, E)
SetEnemyMatrixElement(2, 4, E)
SetEnemyMatrixElement(3, 4, E)
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
                                                                                                    if not (o1731.Value ~= True) then
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
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
end, ChangeTo1 = function()
  Game_MissionEnd(GetGameNode(), 1)
end, SetStateValue = function(L0)
  if not (o2.Value == L0) then
    o2["Value"] = L0
    if not (L0 ~= 1) then
      o2.ChangeTo1()
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
S_o1529 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1529, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1529, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1529, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1529, "Code4")
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
S_o1566 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1566, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1566, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1566, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1566, "Code4")
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
S_o1603 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1603, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1603, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1603, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1603, "Code4")
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
S_o1640 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1640, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1640, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1640, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1640, "Code4")
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
S_o1677 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1677, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1677, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1677, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1677, "Code4")
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
S_o1714 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1714, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1714, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1714, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, True, False)
  CallFunction(o1714, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1714, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1714, "Code6")
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
S_o1720 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "GUN_PLASMAGATLIN", 1)
  Body_AddItem(L0.Node, "DEVICE_REPAIR1", 1)
  Body_AddItem(L0.Node, "DEVICE_GENERATOR1", 1)
  Body_AddItem(L0.Node, "ammo_shell", 2000)
  Body_AddItem(L0.Node, "ammo_energy", 10)
  Body_AddItem(L0.Node, "torpedo_tigershark", 2)
  Body_AddItem(L0.Node, "buzzer_normal", 5)
  Body_AddItem(L0.Node, "GUN_DOOMMORTAR", 1)
  Body_AddItem(L0.Node, "GUN_VENDETTAGATLIN", 99)
  Body_AddItem(L0.Node, "GUN_TORPEDOLAUNCHER", 1)
  Body_AddItem(L0.Node, "TORPEDO_BULLSHARK", 2)
  Body_AddItem(L0.Node, "TORPEDO_MANEATER", 2)
  CallFunction(o1720, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
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
o1725 = { [nil] = {}, Start = function()
  o1725["Value"] = False
  o1761.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1725.Value == L0) then
    o1725["Value"] = L0
    o1761.ReCalculate()
  end
end }
o1726 = { [nil] = {}, GetCalculated = function()
  if not (o1811.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1726.SetStateValue(o1726.GetCalculated())
end, StartCalculate = function()
  o1726["Value"] = o1726.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1720.Node, o1720.Node, 317)
end, SetStateValue = function(L0)
  if not (o1726.Value == L0) then
    DelayedFunction(10, o1726, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1726.Value == L0) then
    o1726["Value"] = L0
    if not (L0 ~= 1) then
      o1726.ChangeTo1()
    end
  end
end }
o1727 = { [nil] = {}, GetCalculated = function()
  if not (o1859.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1727.SetStateValue(o1727.GetCalculated())
end, StartCalculate = function()
  o1727["Value"] = o1727.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1720.Node, o1720.Node, 318)
end, SetStateValue = function(L0)
  if not (o1727.Value == L0) then
    DelayedFunction(13, o1727, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1727.Value == L0) then
    o1727["Value"] = L0
    if not (L0 ~= 1) then
      o1727.ChangeTo1()
    end
  end
end }
o1728 = { [nil] = {}, GetCalculated = function()
  if not (o1907.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1728.SetStateValue(o1728.GetCalculated())
end, StartCalculate = function()
  o1728["Value"] = o1728.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1720.Node, o1720.Node, 319)
end, SetStateValue = function(L0)
  if not (o1728.Value == L0) then
    DelayedFunction(15, o1728, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1728.Value == L0) then
    o1728["Value"] = L0
    if not (L0 ~= 1) then
      o1728.ChangeTo1()
    end
  end
end }
o1729 = { [nil] = {}, GetCalculated = function()
  if not (o1955.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1729.SetStateValue(o1729.GetCalculated())
end, StartCalculate = function()
  o1729["Value"] = o1729.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1720.Node, o1720.Node, 320)
end, SetStateValue = function(L0)
  if not (o1729.Value == L0) then
    DelayedFunction(16, o1729, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1729.Value == L0) then
    o1729["Value"] = L0
    if not (L0 ~= 1) then
      o1729.ChangeTo1()
    end
  end
end }
o1730 = { [nil] = {}, GetCalculated = function()
  if not (o1956.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1730.SetStateValue(o1730.GetCalculated())
end, StartCalculate = function()
  o1730["Value"] = o1730.GetCalculated()
  o1731.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1730.Value == L0) then
    DelayedFunction(6, o1730, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1730.Value == L0) then
    o1730["Value"] = L0
    o1731.ReCalculate()
  end
end }
o1731 = { [nil] = {}, GetCalculated = function()
  if not (o1730.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1731.SetStateValue(o1731.GetCalculated())
end, StartCalculate = function()
  o1731["Value"] = o1731.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1731.Value == L0) then
    o1731["Value"] = L0
    o2.ReCalculate()
  end
end }
S_o1759 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1759, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1759, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1759, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o1759, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o1764.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1761.Value ~= True) then
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
o1761 = { [nil] = {}, GetCalculated = function()
  if not (o1725.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1761.SetStateValue(o1761.GetCalculated())
end, StartCalculate = function()
  o1761["Value"] = o1761.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1761.Value == L0) then
    o1761["Value"] = L0
    CallFunction(o1759, "ProcesseStateChange")
  end
end }
o1764 = { [nil] = {}, Start = function()
  o1764["Value"] = False
  o1809.StartCalculate()
  o2018.StartCalculate()
  o2025.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1764.Value == L0) then
    o1764["Value"] = L0
    o1809.ReCalculate()
    o2018.ReCalculate()
    o2025.ReCalculate()
  end
end }
S_o1807 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1807, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1807, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1807, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o1807, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Born = function(L0, L1)
  o1811.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o1812.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1809.Value ~= True) then
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
o1809 = { [nil] = {}, GetCalculated = function()
  if not (o1764.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1809.SetStateValue(o1809.GetCalculated())
end, StartCalculate = function()
  o1809["Value"] = o1809.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1809.Value == L0) then
    DelayedFunction(10, o1809, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1809.Value == L0) then
    o1809["Value"] = L0
    CallFunction(o1807, "ProcesseStateChange")
  end
end }
o1811 = { [nil] = {}, Start = function()
  o1811["Value"] = False
  o1726.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1811.Value == L0) then
    o1811["Value"] = L0
    o1726.ReCalculate()
  end
end }
o1812 = { [nil] = {}, Start = function()
  o1812["Value"] = False
  o1857.StartCalculate()
  o2019.StartCalculate()
  o2027.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1812.Value == L0) then
    o1812["Value"] = L0
    o1857.ReCalculate()
    o2019.ReCalculate()
    o2027.ReCalculate()
  end
end }
S_o1855 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1855, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1855, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1855, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o1855, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Born = function(L0, L1)
  o1859.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o1860.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1857.Value ~= True) then
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
o1857 = { [nil] = {}, GetCalculated = function()
  if not (o1812.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1857.SetStateValue(o1857.GetCalculated())
end, StartCalculate = function()
  o1857["Value"] = o1857.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1857.Value == L0) then
    DelayedFunction(11, o1857, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1857.Value == L0) then
    o1857["Value"] = L0
    CallFunction(o1855, "ProcesseStateChange")
  end
end }
o1859 = { [nil] = {}, Start = function()
  o1859["Value"] = False
  o1727.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1859.Value == L0) then
    o1859["Value"] = L0
    o1727.ReCalculate()
  end
end }
o1860 = { [nil] = {}, Start = function()
  o1860["Value"] = False
  o1905.StartCalculate()
  o2020.StartCalculate()
  o2029.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1860.Value == L0) then
    o1860["Value"] = L0
    o1905.ReCalculate()
    o2020.ReCalculate()
    o2029.ReCalculate()
  end
end }
S_o1903 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1903, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1903, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1903, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o1903, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Born = function(L0, L1)
  o1907.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o1908.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1905.Value ~= True) then
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
o1905 = { [nil] = {}, GetCalculated = function()
  if not (o1860.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1905.SetStateValue(o1905.GetCalculated())
end, StartCalculate = function()
  o1905["Value"] = o1905.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1905.Value == L0) then
    DelayedFunction(9, o1905, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1905.Value == L0) then
    o1905["Value"] = L0
    CallFunction(o1903, "ProcesseStateChange")
  end
end }
o1907 = { [nil] = {}, Start = function()
  o1907["Value"] = False
  o1728.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1907.Value == L0) then
    o1907["Value"] = L0
    o1728.ReCalculate()
  end
end }
o1908 = { [nil] = {}, Start = function()
  o1908["Value"] = False
  o1953.StartCalculate()
  o2021.StartCalculate()
  o2031.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1908.Value == L0) then
    o1908["Value"] = L0
    o1953.ReCalculate()
    o2021.ReCalculate()
    o2031.ReCalculate()
  end
end }
S_o1951 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1951, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1951, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1951, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o1951, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Born = function(L0, L1)
  o1955.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o1956.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1953.Value ~= True) then
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
o1953 = { [nil] = {}, GetCalculated = function()
  if not (o1908.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1953.SetStateValue(o1953.GetCalculated())
end, StartCalculate = function()
  o1953["Value"] = o1953.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1953.Value == L0) then
    DelayedFunction(12, o1953, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1953.Value == L0) then
    o1953["Value"] = L0
    CallFunction(o1951, "ProcesseStateChange")
  end
end }
o1955 = { [nil] = {}, Start = function()
  o1955["Value"] = False
  o1729.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1955.Value == L0) then
    o1955["Value"] = L0
    o1729.ReCalculate()
  end
end }
o1956 = { [nil] = {}, Start = function()
  o1956["Value"] = False
  o1730.StartCalculate()
  o2022.StartCalculate()
  o2033.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1956.Value == L0) then
    o1956["Value"] = L0
    o1730.ReCalculate()
    o2022.ReCalculate()
    o2033.ReCalculate()
  end
end }
S_o1999 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 0, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 0, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), 0)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o1999, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2004 = { [nil] = {}, Start = function(L0)

end }
S_o2005 = { [nil] = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3, "Code1")
  else
    CallFunction(o2005, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SED_SetTaskTextKey(6000, -1, -1)
  CallFunction(o2005, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code3")
  else
    CallFunction(o2005, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SED_SetTaskTextKey(6001, -1, -1)
  CallFunction(o2005, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code5")
  else
    CallFunction(o2005, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  SED_SetTaskTextKey(6002, -1, -1)
  CallFunction(o2005, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code7")
  else
    CallFunction(o2005, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  SED_SetTaskTextKey(6003, -1, -1)
  CallFunction(o2005, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code9")
  else
    CallFunction(o2005, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  SED_SetTaskTextKey(6004, -1, -1)
  CallFunction(o2005, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code11")
  else
    CallFunction(o2005, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  SED_SetTaskTextKey(6005, -1, -1)
  CallFunction(o2005, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code13")
  else
    CallFunction(o2005, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  SED_SetTaskTextKey(6006, -1, -1)
  CallFunction(o2005, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code15")
  else
    CallFunction(o2005, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  SED_SetTaskTextKey(6007, -1, -1)
  CallFunction(o2005, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code17")
  else
    CallFunction(o2005, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  SED_SetTaskTextKey(6008, -1, -1)
  CallFunction(o2005, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code19")
  else
    CallFunction(o2005, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  o1725.SetStateValue(True)
  Game_SetWayPoint(GetGameNode(), o1999.Node)
  CallFunction(o2005, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code22")
  else
    CallFunction(o2005, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  SED_SetTaskTextKey(6009, -1, -1)
  CallFunction(o2005, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code24")
  else
    CallFunction(o2005, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  SendRadioMessageTake(o1720.Node, o1720.Node, 316)
  CallFunction(o2005, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2005, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  SED_SetTaskTextKey(6010, -1, -1)
  CallFunction(o2005, "Code27")
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2005, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  SED_SetTaskTextKey(6011, -1, -1)
  CallFunction(o2005, "Code29")
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2005, "Code30")
  end
end, Code30 = function(L0)
  L0["CodeIndex"] = 30
  SED_SetTaskTextKey(6012, -1, -1)
  CallFunction(o2005, "Code31")
end }, Code31 = function(L0)
  L0["CodeIndex"] = 31
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2005, "Code32")
  end
end, Code32 = function(L0)
  L0["CodeIndex"] = 32
  SED_SetTaskTextKey(6013, -1, -1)
  CallFunction(o2005, "Code33")
end, Code33 = function(L0)
  L0["CodeIndex"] = 33
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2005, "Code34")
  end
end, Code34 = function(L0)
  L0["CodeIndex"] = 34
  SED_SetTaskTextKey(6014, -1, -1)
  CallFunction(o2005, "Code35")
end, Code35 = function(L0)
  L0["CodeIndex"] = 35
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 25) then
    if not (L0.CodeIndex >= 26) then
      if not (o2018.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 27) then
    if not (L0.CodeIndex >= 28) then
      if not (o2019.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 29) then
    if not (L0.CodeIndex >= 30) then
      if not (o2020.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 31) then
    if not (L0.CodeIndex >= 32) then
      if not (o2021.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 33) then
    if not (L0.CodeIndex >= 34) then
      if not (o2022.Value ~= True) then
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
o2018 = { [nil] = {}, GetCalculated = function()
  if not (o1764.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2018.SetStateValue(o2018.GetCalculated())
end, StartCalculate = function()
  o2018["Value"] = o2018.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2018.Value == L0) then
    DelayedFunction(2, o2018, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2018.Value == L0) then
    o2018["Value"] = L0
    CallFunction(o2005, "ProcesseStateChange")
  end
end }
o2019 = { [nil] = {}, GetCalculated = function()
  if not (o1812.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2019.SetStateValue(o2019.GetCalculated())
end, StartCalculate = function()
  o2019["Value"] = o2019.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2019.Value == L0) then
    DelayedFunction(2, o2019, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2019.Value == L0) then
    o2019["Value"] = L0
    CallFunction(o2005, "ProcesseStateChange")
  end
end }
o2020 = { [nil] = {}, GetCalculated = function()
  if not (o1860.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2020.SetStateValue(o2020.GetCalculated())
end, StartCalculate = function()
  o2020["Value"] = o2020.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2020.Value == L0) then
    DelayedFunction(2, o2020, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2020.Value == L0) then
    o2020["Value"] = L0
    CallFunction(o2005, "ProcesseStateChange")
  end
end }
o2021 = { [nil] = {}, GetCalculated = function()
  if not (o1908.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2021.SetStateValue(o2021.GetCalculated())
end, StartCalculate = function()
  o2021["Value"] = o2021.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2021.Value == L0) then
    DelayedFunction(2, o2021, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2021.Value == L0) then
    o2021["Value"] = L0
    CallFunction(o2005, "ProcesseStateChange")
  end
end }
o2022 = { [nil] = {}, GetCalculated = function()
  if not (o1956.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2022.SetStateValue(o2022.GetCalculated())
end, StartCalculate = function()
  o2022["Value"] = o2022.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2022.Value == L0) then
    DelayedFunction(2, o2022, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2022.Value == L0) then
    o2022["Value"] = L0
    CallFunction(o2005, "ProcesseStateChange")
  end
end }
S_o2024 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "atmo")
  CallFunction(o2024, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2024, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  Game_PlayMusic(GetGameNode(), "track3")
  CallFunction(o2024, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code4")
  else
    CallFunction(o2024, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Game_PlayMusic(GetGameNode(), "atmo")
  CallFunction(o2024, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2024, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Game_PlayMusic(GetGameNode(), "track3")
  CallFunction(o2024, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code8")
  else
    CallFunction(o2024, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  Game_PlayMusic(GetGameNode(), "atmo")
  CallFunction(o2024, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2024, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Game_PlayMusic(GetGameNode(), "track3")
  CallFunction(o2024, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code12")
  else
    CallFunction(o2024, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Game_PlayMusic(GetGameNode(), "atmo")
  CallFunction(o2024, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2024, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Game_PlayMusic(GetGameNode(), "track3")
  CallFunction(o2024, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code16")
  else
    CallFunction(o2024, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Game_PlayMusic(GetGameNode(), "atmo")
  CallFunction(o2024, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2024, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  Game_PlayMusic(GetGameNode(), "track3")
  CallFunction(o2024, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code20")
  else
    CallFunction(o2024, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  Game_PlayMusic(GetGameNode(), "atmo")
  CallFunction(o2024, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2025.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2027.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o2029.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 13) then
    if not (L0.CodeIndex >= 14) then
      if not (o2031.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 17) then
    if not (L0.CodeIndex >= 18) then
      if not (o2033.Value ~= True) then
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
o2025 = { [nil] = {}, GetCalculated = function()
  if not (o1764.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2025.SetStateValue(o2025.GetCalculated())
end, StartCalculate = function()
  o2025["Value"] = o2025.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2025.Value == L0) then
    DelayedFunction(1, o2025, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2025.Value == L0) then
    o2025["Value"] = L0
    CallFunction(o2024, "ProcesseStateChange")
  end
end }
o2027 = { [nil] = {}, GetCalculated = function()
  if not (o1812.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2027.SetStateValue(o2027.GetCalculated())
end, StartCalculate = function()
  o2027["Value"] = o2027.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2027.Value == L0) then
    DelayedFunction(1, o2027, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2027.Value == L0) then
    o2027["Value"] = L0
    CallFunction(o2024, "ProcesseStateChange")
  end
end }
o2029 = { [nil] = {}, GetCalculated = function()
  if not (o1860.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2029.SetStateValue(o2029.GetCalculated())
end, StartCalculate = function()
  o2029["Value"] = o2029.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2029.Value == L0) then
    DelayedFunction(1, o2029, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2029.Value == L0) then
    o2029["Value"] = L0
    CallFunction(o2024, "ProcesseStateChange")
  end
end }
o2031 = { [nil] = {}, GetCalculated = function()
  if not (o1908.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2031.SetStateValue(o2031.GetCalculated())
end, StartCalculate = function()
  o2031["Value"] = o2031.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2031.Value == L0) then
    DelayedFunction(1, o2031, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2031.Value == L0) then
    o2031["Value"] = L0
    CallFunction(o2024, "ProcesseStateChange")
  end
end }
o2033 = { [nil] = {}, GetCalculated = function()
  if not (o1956.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2033.SetStateValue(o2033.GetCalculated())
end, StartCalculate = function()
  o2033["Value"] = o2033.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2033.Value == L0) then
    DelayedFunction(1, o2033, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2033.Value == L0) then
    o2033["Value"] = L0
    CallFunction(o2024, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 95)
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
  o1529 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_2/Turm1", S_o1529)
  o1566 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_3/Turm1", S_o1566)
  o1603 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_4/Turm1", S_o1603)
  o1640 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_5/Turm1", S_o1640)
  o1677 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_6/Turm1", S_o1677)
  o1714 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "BombTrigger", S_o1714)
  o1720 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o1720)
  o1725.Start()
  o1759 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_toiler_inst_1", S_o1759)
  o1764.Start()
  o1807 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_skipjack_inst_1", S_o1807)
  o1811.Start()
  o1812.Start()
  o1855 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_voodoobreath_inst_1", S_o1855)
  o1859.Start()
  o1860.Start()
  o1903 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_succubus2_inst_1", S_o1903)
  o1907.Start()
  o1908.Start()
  o1951 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_phobocaster_inst_1", S_o1951)
  o1955.Start()
  o1956.Start()
  o1999 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_01_1", S_o1999)
  o2004 = BindEasy(Node_Find("/"), "Camera", S_o2004)
  o2005 = BindEasy(Node_Find("/IngameSequences/Director"), "Director_1", S_o2005)
  o2024 = BindEasy(Node_Find("/IngameSequences/Director"), "Director_2", S_o2024)
  Game_LoadProgress_Leave(Node_Find("/"))
end