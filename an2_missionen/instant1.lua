-- dekompiliert aus instant1.sco
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
  Terrain_LoadTerrain(node1, "map/1H2/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/1H2/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/1H2/Lmsh/", "map/1H2/Ltex/")
  Game_SetTerrainDepth(node0, 2283)
  Game_SetDecompressionHeight(node0, 350)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.14902, 0.133333, 0.12549)
  Game_SetParallelLightT(node0, 0.298039, 0.262745, 0.247059)
  Game_SetParallelLightB(node0, 0.14902, 0.133333, 0.12549)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_instant1.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_1H2.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient2.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit3.sam", 1)
  Game_SetNPCHitFactor(node0, 1)
  Game_SetEnvironmentCubeMap(node0, "map/1H2/CubeMap/envcubemap.dds")
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
  Body_SetFriendOrFoeID(node8, 5)
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
  Body_SetFriendOrFoeID(node9, 5)
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
  Body_SetFriendOrFoeID(node10, 5)
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
  Body_SetFriendOrFoeID(node11, 5)
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
  Body_SetFriendOrFoeID(node12, 5)
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
  Body_SetFriendOrFoeID(node13, 5)
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
  Body_SetFriendOrFoeID(node14, 5)
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
  Body_SetFriendOrFoeID(node15, 5)
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
  Body_SetFriendOrFoeID(node16, 5)
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
  Body_SetFriendOrFoeID(node17, 5)
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
  Body_SetFriendOrFoeID(node18, 5)
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
  Body_SetFriendOrFoeID(node19, 5)
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
  Body_SetFriendOrFoeID(node20, 5)
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
  Body_SetFriendOrFoeID(node21, 5)
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
  Body_SetFriendOrFoeID(node22, 5)
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
  Body_SetFriendOrFoeID(node23, 5)
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
  Body_SetFriendOrFoeID(node24, 5)
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
  Body_SetFriendOrFoeID(node25, 5)
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
  Body_SetFriendOrFoeID(node26, 5)
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
  Body_SetFriendOrFoeID(node27, 5)
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
  Body_SetFriendOrFoeID(node28, 5)
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
  Body_SetFriendOrFoeID(node29, 5)
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
  Body_SetFriendOrFoeID(node30, 5)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "ent_beacon_1")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(1775, 1625, 165), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node31, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node31, 5)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "ent_beacon_2")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(1747, 2636, 175), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node32, 5)
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
  Body_SetFriendOrFoeID(node33, 5)
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
  Body_SetFriendOrFoeID(node34, 5)
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
  Body_SetFriendOrFoeID(node35, 5)
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
  Body_SetFriendOrFoeID(node36, 5)
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
  Body_SetFriendOrFoeID(node37, 5)
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
  Body_SetFriendOrFoeID(node38, 5)
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
  Body_SetFriendOrFoeID(node39, 5)
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
  Body_SetFriendOrFoeID(node40, 5)
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
  Body_SetFriendOrFoeID(node41, 5)
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
  Body_SetFriendOrFoeID(node42, 5)
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
  Body_SetFriendOrFoeID(node43, 5)
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
  Body_SetFriendOrFoeID(node44, 5)
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
  Body_SetFriendOrFoeID(node45, 5)
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
  Body_SetFriendOrFoeID(node46, 5)
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
  Body_SetFriendOrFoeID(node47, 5)
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
  Body_SetFriendOrFoeID(node48, 5)
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
  Body_SetFriendOrFoeID(node49, 5)
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
  Body_SetFriendOrFoeID(node50, 5)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_turret_socket_1")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(1697.039847, 1479.980543, 231.559031), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node51, 5)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "gen_turret_socket_2")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(1889.920072, 2114.94406, 185.134016), MAT_Vector3(-112.282311, 0, 0))
  Node_ParseIniFile(node52, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node52, 5)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_turret_socket_3")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(1887.140175, 2525.581685, 173.997596), MAT_Vector3(-56.113123, 0, 0))
  Node_ParseIniFile(node53, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node53, 5)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "gen_turret_socket_4")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(1653.625819, 2867.701693, 192.310798), MAT_Vector3(-56.11312, 0, 0))
  Node_ParseIniFile(node54, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node54, 5)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "gen_turret_socket_5")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(1654.20082, 2759.348363, 192.3108), MAT_Vector3(-126.968964, 0, 0))
  Node_ParseIniFile(node55, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node55, 5)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "gen_turret_socket_6")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(1600.047551, 3063.553588, 192.3108), MAT_Vector3(-55.450399, 0, 0))
  Node_ParseIniFile(node56, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node56, 5)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "gen_elfnote_1")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(2924.501039, 2095.38639, 280.719676), MAT_Vector3(-73.920929, 5.120089, -7.85608))
  Node_ParseIniFile(node57, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node57, 5)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "gen_elfnote_2")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(3581.253461, 2735.211851, 224.886415), MAT_Vector3(21.919827, -4.653346, -11.328382))
  Node_ParseIniFile(node58, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node58, 5)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "gen_elfnote_3")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(2726.110942, 2691.927157, 182.315192), MAT_Vector3(-5.451338, -10.20487, 0.950234))
  Node_ParseIniFile(node59, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node59, 5)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "gen_elfnote_4")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(2501.251219, 3787.404008, 159.870319), MAT_Vector3(27.962952, -4.161162, -2.028789))
  Node_ParseIniFile(node60, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node60, 5)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "gen_rohr_small03_3")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(2790.836881, 2481.693489, 121.92018), MAT_Vector3(21.585199, 0, 0))
  Node_ParseIniFile(node61, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node61, 5)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "gen_rohr_small01_1")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(2894.545513, 2139.773974, 264.480917), MAT_Vector3(26.506674, -13.558576, 8.723426))
  Node_ParseIniFile(node62, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node62, 5)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "gen_rohr_small01_2")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(2970.090132, 2132.02902, 269.103788), MAT_Vector3(-47.832042, -7.220287, 7.891378))
  Node_ParseIniFile(node63, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node63, 5)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "gen_rohr_small01_3")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(2746.324179, 2631.249585, 161.178635), MAT_Vector3(-162.984186, -12.08491, 3.605199))
  Node_ParseIniFile(node64, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node64, 5)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "gen_rohr_small01_4")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(2706.593113, 2745.126556, 162.329802), MAT_Vector3(16.292933, -12.08491, 3.605199))
  Node_ParseIniFile(node65, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node65, 5)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "gen_rohr_small01_5")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(2512.251893, 3729.150354, 140.452929), MAT_Vector3(-166.581415, -12.08491, 3.605199))
  Node_ParseIniFile(node66, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node66, 5)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "gen_rohr_small01_6")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(2436.672512, 3787.015545, 140.4529), MAT_Vector3(93.680608, -12.08491, 3.605199))
  Node_ParseIniFile(node67, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node67, 5)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_fx_sky", "fx_sky_1H2_1")
  Node_AddSon(node7, node68)
  Node_ParseIniFile(node68, "osd/fx_sky/fx_sky_1H2.osd")
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_fx_rays", "fx_rays_1H2_1")
  Node_AddSon(node7, node69)
  Node_ParseIniFile(node69, "osd/fx_rays/fx_rays_1H2.osd")
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_fx_flare", "fx_flare_1H2_1")
  Node_AddSon(node7, node70)
  Node_ParseIniFile(node70, "osd/fx_flare/fx_flare_1H2.osd")
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_fx_plankton", "fx_plankton_lava_n_1")
  Node_AddSon(node7, node71)
  Node_ParseIniFile(node71, "osd/fx_plankton/fx_plankton_lava_n.osd")
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node7, node72)
  Node_ParseIniFile(node72, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node72, "map/1H2/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node73)
  Node_ParseIniFile(node73, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node73, "map/1H2/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_fx_plant", "org_redcoral_1")
  Node_AddSon(node7, node74)
  Node_ParseIniFile(node74, "osd/fx_plant/org_redcoral.osd")
  FX_Plant_SetMap(node74, "map/1H2/Terrain/org_redcoral.tga")
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node75)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node75, node76)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node75, node77)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_1")
  Node_AddSon(node77, node78)
  PatrolArea_SetPosition(node78, MAT_Vector3(2370, 2230, 265))
  PatrolArea_SetRadius(node78, 100)
  PatrolArea_SetMinZ(node78, -50)
  PatrolArea_SetMaxZ(node78, 50)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("NOD_PatrolArea", "TriggerArea_1")
  Node_AddSon(node77, node79)
  PatrolArea_SetPosition(node79, MAT_Vector3(2370, 2230, 265))
  PatrolArea_SetRadius(node79, 600)
  PatrolArea_SetMinZ(node79, -260)
  PatrolArea_SetMaxZ(node79, 200)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("NOD_PatrolArea", "FollowArea_1")
  Node_AddSon(node77, node80)
  PatrolArea_SetPosition(node80, MAT_Vector3(2370, 2230, 265))
  PatrolArea_SetRadius(node80, 750)
  PatrolArea_SetMinZ(node80, -260)
  PatrolArea_SetMaxZ(node80, 80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node75, node81)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node75, node82)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node75, node83)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_vessel", "dir_cammesh_1")
  Node_AddSon(node83, node84)
  Body_SetCS(node84, MAT_Vector3(1671.872148, 2319.554325, 177), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node84, "osd/dir/dir_cammesh.osd")
  Body_SetFriendOrFoeID(node84, 15)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node83, node85)
  Body_SetCS(node85, MAT_Vector3(1948.044174, 2135.999291, 247.417508), MAT_Vector3(-75.960291, 0, 0))
  Node_ParseIniFile(node85, "osd/pla/pla_instant_atlscout.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_vessel", "tz_scout_narrow_1_1")
  Node_AddSon(node83, node86)
  Body_SetCS(node86, MAT_Vector3(2336.024, 2217.558, 221.8052), MAT_Vector3(101.5872, 0, 0))
  Node_ParseIniFile(node86, "osd/tz/tz_scout_narrow.osd")
  Body_SetFriendOrFoeID(node86, 1)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_vessel", "tz_scout_narrow_2_1")
  Node_AddSon(node83, node87)
  Body_SetCS(node87, MAT_Vector3(2366.704, 2255.66, 221.8052), MAT_Vector3(101.5872, 0, 0))
  Node_ParseIniFile(node87, "osd/tz/tz_scout_narrow.osd")
  Body_SetFriendOrFoeID(node87, 1)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_vessel", "tz_scout_narrow_2_2")
  Node_AddSon(node83, node88)
  Body_SetCS(node88, MAT_Vector3(2375.611, 2211.373, 221.8052), MAT_Vector3(101.5872, 0, 0))
  Node_ParseIniFile(node88, "osd/tz/tz_scout_narrow.osd")
  Body_SetFriendOrFoeID(node88, 1)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_vessel", "tz_scout_narrow_3_1")
  Node_AddSon(node83, node89)
  Body_SetCS(node89, MAT_Vector3(2345.179, 2221.022, 221.8052), MAT_Vector3(101.5872, 0, 0))
  Node_ParseIniFile(node89, "osd/tz/tz_scout_narrow.osd")
  Body_SetFriendOrFoeID(node89, 1)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_vessel", "tz_scout_narrow_3_2")
  Node_AddSon(node83, node90)
  Body_SetCS(node90, MAT_Vector3(2351.364, 2238.341, 221.8052), MAT_Vector3(101.5872, 0, 0))
  Node_ParseIniFile(node90, "osd/tz/tz_scout_narrow.osd")
  Body_SetFriendOrFoeID(node90, 1)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_vessel", "tz_scout_narrow_3_3")
  Node_AddSon(node83, node91)
  Body_SetCS(node91, MAT_Vector3(2360.519, 2202.713, 221.8052), MAT_Vector3(101.5872, 0, 0))
  Node_ParseIniFile(node91, "osd/tz/tz_scout_narrow.osd")
  Body_SetFriendOrFoeID(node91, 1)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_vessel", "tz_bomber_1")
  Node_AddSon(node83, node92)
  Body_SetCS(node92, MAT_Vector3(2383.52419, 2234.935953, 244.183306), MAT_Vector3(102.377766, 0, 0))
  Node_ParseIniFile(node92, "osd/tz/tz_bomber.osd")
  Body_SetFriendOrFoeID(node92, 1)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_vessel", "atl_scout1_wide_1_1")
  Node_AddSon(node83, node93)
  Body_SetCS(node93, MAT_Vector3(2346.435461, 2193.803349, 278.182107), MAT_Vector3(118.240996, 0, 0))
  Node_ParseIniFile(node93, "osd/atl/atl_scout1_wide.osd")
  Body_SetFriendOrFoeID(node93, 1)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_vessel", "atl_scout1_wide_2_1")
  Node_AddSon(node83, node94)
  Body_SetCS(node94, MAT_Vector3(2340.760954, 2248.770318, 271.096553), MAT_Vector3(118.241, 0, 0))
  Node_ParseIniFile(node94, "osd/atl/atl_scout1_wide.osd")
  Body_SetFriendOrFoeID(node94, 1)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_vessel", "atl_scout1_wide_2_2")
  Node_AddSon(node83, node95)
  Body_SetCS(node95, MAT_Vector3(2358.492393, 2224.300678, 270.974062), MAT_Vector3(118.241, 0, 0))
  Node_ParseIniFile(node95, "osd/atl/atl_scout1_wide.osd")
  Body_SetFriendOrFoeID(node95, 1)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_vessel", "atl_scout1_wide_3_1")
  Node_AddSon(node83, node96)
  Body_SetCS(node96, MAT_Vector3(2380.124927, 2234.939719, 258.918222), MAT_Vector3(118.241, 0, 0))
  Node_ParseIniFile(node96, "osd/atl/atl_scout1_wide.osd")
  Body_SetFriendOrFoeID(node96, 1)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_vessel", "atl_scout1_wide_3_2")
  Node_AddSon(node83, node97)
  Body_SetCS(node97, MAT_Vector3(2374.450954, 2260.473206, 258.9182), MAT_Vector3(118.241, 0, 0))
  Node_ParseIniFile(node97, "osd/atl/atl_scout1_wide.osd")
  Body_SetFriendOrFoeID(node97, 1)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_vessel", "atl_scout1_wide_3_3")
  Node_AddSon(node83, node98)
  Body_SetCS(node98, MAT_Vector3(2396.083299, 2217.563029, 258.9182), MAT_Vector3(118.241, 0, 0))
  Node_ParseIniFile(node98, "osd/atl/atl_scout1_wide.osd")
  Body_SetFriendOrFoeID(node98, 1)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_vessel", "atl_scout2_narrow_1_1")
  Node_AddSon(node83, node99)
  Body_SetCS(node99, MAT_Vector3(2364.26868, 2230.047849, 250.497991), MAT_Vector3(114.790292, 0, 0))
  Node_ParseIniFile(node99, "osd/atl/atl_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node99, 1)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_vessel", "atl_scout2_narrow_2_1")
  Node_AddSon(node83, node100)
  Body_SetCS(node100, MAT_Vector3(2363.559744, 2244.587742, 250.498), MAT_Vector3(114.7903, 0, 0))
  Node_ParseIniFile(node100, "osd/atl/atl_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node100, 1)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_vessel", "atl_scout2_narrow_2_2")
  Node_AddSon(node83, node101)
  Body_SetCS(node101, MAT_Vector3(2378.099742, 2213.02612, 250.498), MAT_Vector3(114.7903, 0, 0))
  Node_ParseIniFile(node101, "osd/atl/atl_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node101, 1)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_vessel", "atl_scout2_narrow_3_1")
  Node_AddSon(node83, node102)
  Body_SetCS(node102, MAT_Vector3(2345.119609, 2219.409301, 250.498), MAT_Vector3(114.7903, 0, 0))
  Node_ParseIniFile(node102, "osd/atl/atl_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node102, 1)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_vessel", "atl_scout2_narrow_3_2")
  Node_AddSon(node83, node103)
  Body_SetCS(node103, MAT_Vector3(2350.439418, 2238.558904, 250.498), MAT_Vector3(114.7903, 0, 0))
  Node_ParseIniFile(node103, "osd/atl/atl_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node103, 1)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_vessel", "atl_scout2_narrow_3_3")
  Node_AddSon(node83, node104)
  Body_SetCS(node104, MAT_Vector3(2363.205603, 2218.69984, 250.498), MAT_Vector3(114.7903, 0, 0))
  Node_ParseIniFile(node104, "osd/atl/atl_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node104, 1)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_vessel", "atl_bomber_1")
  Node_AddSon(node83, node105)
  Body_SetCS(node105, MAT_Vector3(2385.356336, 2238.397915, 270.521634), MAT_Vector3(112.229088, 0, 0))
  Node_ParseIniFile(node105, "osd/atl/atl_bomber.osd")
  Body_SetFriendOrFoeID(node105, 1)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_vessel", "cra_scout1_wide_1_1")
  Node_AddSon(node83, node106)
  Body_SetCS(node106, MAT_Vector3(2355.99195, 2216.558018, 139.601545), MAT_Vector3(128.23641, 16.147081, -2.130391))
  Node_ParseIniFile(node106, "osd/cra/cra_scout1_wide.osd")
  Body_SetFriendOrFoeID(node106, 1)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_vessel", "cra_scout1_wide_2_1")
  Node_AddSon(node83, node107)
  Body_SetCS(node107, MAT_Vector3(2356.71442, 2241.522614, 157.361031), MAT_Vector3(125.717015, 12.518637, -1.367084))
  Node_ParseIniFile(node107, "osd/cra/cra_scout1_wide.osd")
  Body_SetFriendOrFoeID(node107, 1)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_vessel", "cra_scout1_wide_2_2")
  Node_AddSon(node83, node108)
  Body_SetCS(node108, MAT_Vector3(2369.118294, 2207.92302, 138.640639), MAT_Vector3(117.6078, 0, 0))
  Node_ParseIniFile(node108, "osd/cra/cra_scout1_wide.osd")
  Body_SetFriendOrFoeID(node108, 1)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_vessel", "cra_scout1_wide_3_1")
  Node_AddSon(node83, node109)
  Body_SetCS(node109, MAT_Vector3(2352.739809, 2247.544502, 149.680826), MAT_Vector3(117.6078, 0, 0))
  Node_ParseIniFile(node109, "osd/cra/cra_scout1_wide.osd")
  Body_SetFriendOrFoeID(node109, 1)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_vessel", "cra_scout1_wide_3_2")
  Node_AddSon(node83, node110)
  Body_SetCS(node110, MAT_Vector3(2376.103236, 2195.398297, 139.777119), MAT_Vector3(117.6078, 0, 0))
  Node_ParseIniFile(node110, "osd/cra/cra_scout1_wide.osd")
  Body_SetFriendOrFoeID(node110, 1)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_vessel", "cra_scout1_wide_3_3")
  Node_AddSon(node83, node111)
  Body_SetCS(node111, MAT_Vector3(2362.494406, 2222.253898, 142.732223), MAT_Vector3(114.034937, 6.737866, -2.66004))
  Node_ParseIniFile(node111, "osd/cra/cra_scout1_wide.osd")
  Body_SetFriendOrFoeID(node111, 1)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_vessel", "cra_scout2_wide_1_1")
  Node_AddSon(node83, node112)
  Body_SetCS(node112, MAT_Vector3(2363.127028, 2225.686253, 150.236184), MAT_Vector3(114.892901, 0, 0))
  Node_ParseIniFile(node112, "osd/cra/cra_scout2_wide.osd")
  Body_SetFriendOrFoeID(node112, 1)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_vessel", "cra_scout2_wide_2_1")
  Node_AddSon(node83, node113)
  Body_SetCS(node113, MAT_Vector3(2363.48829, 2238.812874, 161.482424), MAT_Vector3(110.341284, 8.79738, -2.918014))
  Node_ParseIniFile(node113, "osd/cra/cra_scout2_wide.osd")
  Body_SetFriendOrFoeID(node113, 1)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_vessel", "cra_scout2_wide_2_2")
  Node_AddSon(node83, node114)
  Body_SetCS(node114, MAT_Vector3(2372.640683, 2218.339894, 138.989936), MAT_Vector3(105.310439, 19.505628, -5.570876))
  Node_ParseIniFile(node114, "osd/cra/cra_scout2_wide.osd")
  Body_SetFriendOrFoeID(node114, 1)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_vessel", "cra_scout2_wide_3_1")
  Node_AddSon(node83, node115)
  Body_SetCS(node115, MAT_Vector3(2372.88186, 2232.309884, 148.191409), MAT_Vector3(104.03287, 22.326448, -6.123684))
  Node_ParseIniFile(node115, "osd/cra/cra_scout2_wide.osd")
  Body_SetFriendOrFoeID(node115, 1)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_vessel", "cra_scout2_wide_3_2")
  Node_AddSon(node83, node116)
  Body_SetCS(node116, MAT_Vector3(2376.494901, 2253.264826, 164.805178), MAT_Vector3(111.158783, 7.145417, -2.425407))
  Node_ParseIniFile(node116, "osd/cra/cra_scout2_wide.osd")
  Body_SetFriendOrFoeID(node116, 1)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_vessel", "cra_scout2_wide_3_3")
  Node_AddSon(node83, node117)
  Body_SetCS(node117, MAT_Vector3(2387.935853, 2224.120932, 138.73434), MAT_Vector3(106.677887, 16.519467, -4.920834))
  Node_ParseIniFile(node117, "osd/cra/cra_scout2_wide.osd")
  Body_SetFriendOrFoeID(node117, 1)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_vessel", "cra_bomber_1")
  Node_AddSon(node83, node118)
  Body_SetCS(node118, MAT_Vector3(2385.798165, 2239.480804, 239.920377), MAT_Vector3(113.82215, 0, 0))
  Node_ParseIniFile(node118, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node118, 1)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide_1_1")
  Node_AddSon(node83, node119)
  Body_SetCS(node119, MAT_Vector3(2349.448059, 2216.948865, 225.127646), MAT_Vector3(119.137483, 0, 0))
  Node_ParseIniFile(node119, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node119, 1)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide_2_1")
  Node_AddSon(node83, node120)
  Body_SetCS(node120, MAT_Vector3(2340.788459, 2238.22673, 225.1276), MAT_Vector3(119.1375, 0, 0))
  Node_ParseIniFile(node120, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node120, 1)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide_2_2")
  Node_AddSon(node83, node121)
  Body_SetCS(node121, MAT_Vector3(2368.251575, 2189.485884, 225.1276), MAT_Vector3(119.1375, 0, 0))
  Node_ParseIniFile(node121, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node121, 1)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide_3_1")
  Node_AddSon(node83, node122)
  Body_SetCS(node122, MAT_Vector3(2369.736068, 2226.845618, 225.1276), MAT_Vector3(119.1375, 0, 0))
  Node_ParseIniFile(node122, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node122, 1)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide_3_2")
  Node_AddSon(node83, node123)
  Body_SetCS(node123, MAT_Vector3(2372.705053, 2249.11301, 225.1276), MAT_Vector3(119.1375, 0, 0))
  Node_ParseIniFile(node123, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node123, 1)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide_3_3")
  Node_AddSon(node83, node124)
  Body_SetCS(node124, MAT_Vector3(2387.549981, 2216.206754, 225.1276), MAT_Vector3(119.1375, 0, 0))
  Node_ParseIniFile(node124, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node124, 1)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_vessel", "pir_sho_bomber_1")
  Node_AddSon(node83, node125)
  Body_SetCS(node125, MAT_Vector3(2374.66859, 2234.739393, 252.073391), MAT_Vector3(112.196318, 0, 0))
  Node_ParseIniFile(node125, "osd/pir_sho/pir_sho_bomber.osd")
  Body_SetFriendOrFoeID(node125, 1)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node126)
  Camera_SetBackPlane(node126, 1024)
  Node_EnterSimulation(node126)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, E)
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
                                                                                                    if not (True ~= True) then
                                                                                                      if not (True ~= True) then
                                                                                                        if not (True ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (o2873.Value ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
                                                                                                                                                if not (True ~= True) then
                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                          if not (True ~= True) then
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
S_o30 = { [nil] = {}, Start = function(L0)

end }
S_o76 = { [nil] = {}, Start = function(L0)

end }
S_o122 = { [nil] = {}, Start = function(L0)

end }
S_o168 = { [nil] = {}, Start = function(L0)

end }
S_o214 = { [nil] = {}, Start = function(L0)

end }
S_o260 = { [nil] = {}, Start = function(L0)

end }
S_o306 = { [nil] = {}, Start = function(L0)

end }
S_o352 = { [nil] = {}, Start = function(L0)

end }
S_o398 = { [nil] = {}, Start = function(L0)

end }
S_o444 = { [nil] = {}, Start = function(L0)

end }
S_o490 = { [nil] = {}, Start = function(L0)

end }
S_o536 = { [nil] = {}, Start = function(L0)

end }
S_o582 = { [nil] = {}, Start = function(L0)

end }
S_o628 = { [nil] = {}, Start = function(L0)

end }
S_o674 = { [nil] = {}, Start = function(L0)

end }
S_o720 = { [nil] = {}, Start = function(L0)

end }
S_o766 = { [nil] = {}, Start = function(L0)

end }
S_o812 = { [nil] = {}, Start = function(L0)

end }
S_o858 = { [nil] = {}, Start = function(L0)

end }
S_o904 = { [nil] = {}, Start = function(L0)

end }
S_o950 = { [nil] = {}, Start = function(L0)

end }
S_o996 = { [nil] = {}, Start = function(L0)

end }
S_o1042 = { [nil] = {}, Start = function(L0)

end }
S_o1088 = { [nil] = {}, Start = function(L0)

end }
S_o1134 = { [nil] = {}, Start = function(L0)

end }
S_o1180 = { [nil] = {}, Start = function(L0)

end }
S_o1226 = { [nil] = {}, Start = function(L0)

end }
S_o1272 = { [nil] = {}, Start = function(L0)

end }
S_o1318 = { [nil] = {}, Start = function(L0)

end }
S_o1364 = { [nil] = {}, Start = function(L0)

end }
S_o1410 = { [nil] = {}, Start = function(L0)

end }
S_o1456 = { [nil] = {}, Start = function(L0)

end }
S_o1502 = { [nil] = {}, Start = function(L0)

end }
S_o1548 = { [nil] = {}, Start = function(L0)

end }
S_o1594 = { [nil] = {}, Start = function(L0)

end }
S_o1640 = { [nil] = {}, Start = function(L0)

end }
S_o1686 = { [nil] = {}, Start = function(L0)

end }
S_o1732 = { [nil] = {}, Start = function(L0)

end }
S_o1778 = { [nil] = {}, Start = function(L0)

end }
S_o1824 = { [nil] = {}, Start = function(L0)

end }
S_o1870 = { [nil] = {}, Start = function(L0)

end }
S_o1916 = { [nil] = {}, Start = function(L0)

end }
S_o1962 = { [nil] = {}, Start = function(L0)

end }
S_o2008 = { [nil] = {}, Start = function(L0)

end }
S_o2052 = { [nil] = {}, Start = function(L0)

end }
S_o2096 = { [nil] = {}, Start = function(L0)

end }
S_o2140 = { [nil] = {}, Start = function(L0)

end }
S_o2184 = { [nil] = {}, Start = function(L0)

end }
S_o2228 = { [nil] = {}, Start = function(L0)

end }
S_o2272 = { [nil] = {}, Start = function(L0)

end }
S_o2318 = { [nil] = {}, Start = function(L0)

end }
S_o2364 = { [nil] = {}, Start = function(L0)

end }
S_o2410 = { [nil] = {}, Start = function(L0)

end }
S_o2456 = { [nil] = {}, Start = function(L0)

end }
S_o2502 = { [nil] = {}, Start = function(L0)

end }
S_o2548 = { [nil] = {}, Start = function(L0)

end }
S_o2594 = { [nil] = {}, Start = function(L0)

end }
S_o2640 = { [nil] = {}, Start = function(L0)

end }
S_o2686 = { [nil] = {}, Start = function(L0)

end }
S_o2732 = { [nil] = {}, Start = function(L0)

end }
S_o2778 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2778, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2778, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2778, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code4")
  else
    CallFunction(o2778, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2778, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Born = function(L0, L1)
  o2782.SetStateValue(L1)
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
o2782 = { [nil] = {}, Start = function()
  o2782["Value"] = False
  o2903.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2782.Value == L0) then
    o2782["Value"] = L0
    o2903.ReCalculate()
  end
end }
S_o2834 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_vendetta1", 1)
  Body_AddItem(L0.Node, "gun_vendettagatlin", 1)
  Body_AddItem(L0.Node, "gun_lasergatlin", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_energy", 1000)
  Body_AddItem(L0.Node, "ammo_shell", 999999)
  Body_AddItem(L0.Node, "device_repair2", 1)
  Body_AddItem(L0.Node, "device_generator1", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 8)
  Body_AddItem(L0.Node, "torpedo_maneater", 6)
  CallFunction(o2834, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2834, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Body_AddItem(L0.Node, "ammo_energy", 500)
  Body_AddItem(L0.Node, "ammo_shell", 999999)
  Body_AddItem(L0.Node, "buzzer_normal", 4)
  Body_AddItem(L0.Node, "torpedo_maneater", 4)
  CallFunction(o2834, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2834, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Body_AddItem(L0.Node, "ammo_energy", 500)
  Body_AddItem(L0.Node, "ammo_shell", 999999)
  Body_AddItem(L0.Node, "buzzer_normal", 4)
  Body_AddItem(L0.Node, "torpedo_maneater", 4)
  CallFunction(o2834, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2834, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  Body_AddItem(L0.Node, "ammo_energy", 500)
  Body_AddItem(L0.Node, "ammo_shell", 999999)
  Body_AddItem(L0.Node, "buzzer_normal", 4)
  Body_AddItem(L0.Node, "torpedo_maneater", 4)
  CallFunction(o2834, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
end, Player_FirstWarning = function(L0)
  CallFunction(L0.Thread, "SetStateValue_FriendlyFire1", True)
end, Player_SecondWarning = function(L0)
  CallFunction(L0.Thread, "SetStateValue_FriendlyFire2", True)
end, Player_ThirdWarning = function(L0)
  CallFunction(L0.Thread, "SetStateValue_FriendlyFire3", True)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 10) then
    if not (L0.CodeIndex >= 11) then
      if not (o2835.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 15) then
    if not (L0.CodeIndex >= 16) then
      if not (o2836.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 20) then
    if not (L0.CodeIndex >= 21) then
      if not (o2837.Value ~= True) then
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
  if not (o2854.Value ~= True) then
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
o2836 = { [nil] = {}, GetCalculated = function()
  if not (o2861.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2836.SetStateValue(o2836.GetCalculated())
end, StartCalculate = function()
  o2836["Value"] = o2836.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2836.Value == L0) then
    o2836["Value"] = L0
    CallFunction(o2834, "ProcesseStateChange")
  end
end }
o2837 = { [nil] = {}, GetCalculated = function()
  if not (o4708.Value ~= True) then
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
o2851 = { [nil] = {}, GetCalculated = function()
  if not (o2916.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2851.SetStateValue(o2851.GetCalculated())
end, StartCalculate = function()
  o2851["Value"] = o2851.GetCalculated()
  o2959.StartCalculate()
  o3015.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2851.Value == L0) then
    DelayedFunction(5, o2851, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2851.Value == L0) then
    o2851["Value"] = L0
    o2959.ReCalculate()
    o3015.ReCalculate()
  end
end }
o2852 = { [nil] = {}, GetCalculated = function()
  if not (o2972.Value ~= True) then
    if not (o3028.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2852.SetStateValue(o2852.GetCalculated())
end, StartCalculate = function()
  o2852["Value"] = o2852.GetCalculated()
  o3071.StartCalculate()
  o3127.StartCalculate()
  o3183.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2852.Value == L0) then
    DelayedFunction(5, o2852, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2852.Value == L0) then
    o2852["Value"] = L0
    o3071.ReCalculate()
    o3127.ReCalculate()
    o3183.ReCalculate()
  end
end }
o2853 = { [nil] = {}, GetCalculated = function()
  if not (o3084.Value ~= True) then
    if not (o3140.Value ~= True) then
      if not (o3196.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o2853.SetStateValue(o2853.GetCalculated())
end, StartCalculate = function()
  o2853["Value"] = o2853.GetCalculated()
  o3239.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2853.Value == L0) then
    DelayedFunction(5, o2853, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2853.Value == L0) then
    o2853["Value"] = L0
    o3239.ReCalculate()
  end
end }
o2854 = { [nil] = {}, GetCalculated = function()
  if not (o3252.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2854.SetStateValue(o2854.GetCalculated())
end, StartCalculate = function()
  o2854["Value"] = o2854.GetCalculated()
  o2835.StartCalculate()
  o3295.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
  SED_SetTaskTextKey(0, -1, -1)
end, SetStateValue = function(L0)
  if not (o2854.Value == L0) then
    DelayedFunction(5, o2854, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2854.Value == L0) then
    o2854["Value"] = L0
    o2835.ReCalculate()
    o3295.ReCalculate()
    if not (L0 ~= 1) then
      o2854.ChangeTo1()
    end
  end
end }
o2855 = { [nil] = {}, GetCalculated = function()
  if not (o3308.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2855.SetStateValue(o2855.GetCalculated())
end, StartCalculate = function()
  o2855["Value"] = o2855.GetCalculated()
  o3351.StartCalculate()
  o3407.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2855.Value == L0) then
    DelayedFunction(5, o2855, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2855.Value == L0) then
    o2855["Value"] = L0
    o3351.ReCalculate()
    o3407.ReCalculate()
  end
end }
o2856 = { [nil] = {}, GetCalculated = function()
  if not (o3364.Value ~= True) then
    if not (o3420.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2856.SetStateValue(o2856.GetCalculated())
end, StartCalculate = function()
  o2856["Value"] = o2856.GetCalculated()
  o3463.StartCalculate()
  o3519.StartCalculate()
  o3575.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2856.Value == L0) then
    DelayedFunction(5, o2856, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2856.Value == L0) then
    o2856["Value"] = L0
    o3463.ReCalculate()
    o3519.ReCalculate()
    o3575.ReCalculate()
  end
end }
o2857 = { [nil] = {}, GetCalculated = function()
  if not (o3476.Value ~= True) then
    if not (o3532.Value ~= True) then
      if not (o3588.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o2857.SetStateValue(o2857.GetCalculated())
end, StartCalculate = function()
  o2857["Value"] = o2857.GetCalculated()
  o3631.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2857.Value == L0) then
    DelayedFunction(5, o2857, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2857.Value == L0) then
    o2857["Value"] = L0
    o3631.ReCalculate()
  end
end }
o2858 = { [nil] = {}, GetCalculated = function()
  if not (o3644.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2858.SetStateValue(o2858.GetCalculated())
end, StartCalculate = function()
  o2858["Value"] = o2858.GetCalculated()
  o3687.StartCalculate()
  o3743.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2858.Value == L0) then
    DelayedFunction(5, o2858, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2858.Value == L0) then
    o2858["Value"] = L0
    o3687.ReCalculate()
    o3743.ReCalculate()
  end
end }
o2859 = { [nil] = {}, GetCalculated = function()
  if not (o3700.Value ~= True) then
    if not (o3756.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2859.SetStateValue(o2859.GetCalculated())
end, StartCalculate = function()
  o2859["Value"] = o2859.GetCalculated()
  o3799.StartCalculate()
  o3855.StartCalculate()
  o3911.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2859.Value == L0) then
    DelayedFunction(5, o2859, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2859.Value == L0) then
    o2859["Value"] = L0
    o3799.ReCalculate()
    o3855.ReCalculate()
    o3911.ReCalculate()
  end
end }
o2860 = { [nil] = {}, GetCalculated = function()
  if not (o3812.Value ~= True) then
    if not (o3868.Value ~= True) then
      if not (o3924.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o2860.SetStateValue(o2860.GetCalculated())
end, StartCalculate = function()
  o2860["Value"] = o2860.GetCalculated()
  o3967.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2860.Value == L0) then
    DelayedFunction(5, o2860, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2860.Value == L0) then
    o2860["Value"] = L0
    o3967.ReCalculate()
  end
end }
o2861 = { [nil] = {}, GetCalculated = function()
  if not (o3980.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2861.SetStateValue(o2861.GetCalculated())
end, StartCalculate = function()
  o2861["Value"] = o2861.GetCalculated()
  o2836.StartCalculate()
  o4023.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2101)
  SED_SetTaskTextKey(0, -1, -1)
end, SetStateValue = function(L0)
  if not (o2861.Value == L0) then
    DelayedFunction(5, o2861, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2861.Value == L0) then
    o2861["Value"] = L0
    o2836.ReCalculate()
    o4023.ReCalculate()
    if not (L0 ~= 1) then
      o2861.ChangeTo1()
    end
  end
end }
o2862 = { [nil] = {}, GetCalculated = function()
  if not (o4036.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2862.SetStateValue(o2862.GetCalculated())
end, StartCalculate = function()
  o2862["Value"] = o2862.GetCalculated()
  o4079.StartCalculate()
  o4135.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2862.Value == L0) then
    DelayedFunction(5, o2862, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2862.Value == L0) then
    o2862["Value"] = L0
    o4079.ReCalculate()
    o4135.ReCalculate()
  end
end }
o2863 = { [nil] = {}, GetCalculated = function()
  if not (o4092.Value ~= True) then
    if not (o4148.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2863.SetStateValue(o2863.GetCalculated())
end, StartCalculate = function()
  o2863["Value"] = o2863.GetCalculated()
  o4191.StartCalculate()
  o4247.StartCalculate()
  o4303.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2863.Value == L0) then
    DelayedFunction(5, o2863, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2863.Value == L0) then
    o2863["Value"] = L0
    o4191.ReCalculate()
    o4247.ReCalculate()
    o4303.ReCalculate()
  end
end }
o2864 = { [nil] = {}, GetCalculated = function()
  if not (o4204.Value ~= True) then
    if not (o4260.Value ~= True) then
      if not (o4316.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o2864.SetStateValue(o2864.GetCalculated())
end, StartCalculate = function()
  o2864["Value"] = o2864.GetCalculated()
  o4359.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2864.Value == L0) then
    DelayedFunction(5, o2864, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2864.Value == L0) then
    o2864["Value"] = L0
    o4359.ReCalculate()
  end
end }
o2865 = { [nil] = {}, GetCalculated = function()
  if not (o4372.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2865.SetStateValue(o2865.GetCalculated())
end, StartCalculate = function()
  o2865["Value"] = o2865.GetCalculated()
  o4415.StartCalculate()
  o4471.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2865.Value == L0) then
    DelayedFunction(5, o2865, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2865.Value == L0) then
    o2865["Value"] = L0
    o4415.ReCalculate()
    o4471.ReCalculate()
  end
end }
o2866 = { [nil] = {}, GetCalculated = function()
  if not (o4428.Value ~= True) then
    if not (o4484.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2866.SetStateValue(o2866.GetCalculated())
end, StartCalculate = function()
  o2866["Value"] = o2866.GetCalculated()
  o4527.StartCalculate()
  o4583.StartCalculate()
  o4639.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2866.Value == L0) then
    DelayedFunction(5, o2866, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2866.Value == L0) then
    o2866["Value"] = L0
    o4527.ReCalculate()
    o4583.ReCalculate()
    o4639.ReCalculate()
  end
end }
o2867 = { [nil] = {}, GetCalculated = function()
  if not (o4540.Value ~= True) then
    if not (o4596.Value ~= True) then
      if not (o4652.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o2867.SetStateValue(o2867.GetCalculated())
end, StartCalculate = function()
  o2867["Value"] = o2867.GetCalculated()
  o4695.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2867.Value == L0) then
    DelayedFunction(5, o2867, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2867.Value == L0) then
    o2867["Value"] = L0
    o4695.ReCalculate()
  end
end }
o2868 = { [nil] = {}, GetCalculated = function()
  if not (o4708.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2868.SetStateValue(o2868.GetCalculated())
end, StartCalculate = function()
  o2868["Value"] = o2868.GetCalculated()
  o4751.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2102)
  SED_SetTaskTextKey(0, -1, -1)
end, SetStateValue = function(L0)
  if not (o2868.Value == L0) then
    DelayedFunction(5, o2868, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2868.Value == L0) then
    o2868["Value"] = L0
    o4751.ReCalculate()
    if not (L0 ~= 1) then
      o2868.ChangeTo1()
    end
  end
end }
o2869 = { [nil] = {}, GetCalculated = function()
  if not (o4764.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2869.SetStateValue(o2869.GetCalculated())
end, StartCalculate = function()
  o2869["Value"] = o2869.GetCalculated()
  o4807.StartCalculate()
  o4863.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2869.Value == L0) then
    DelayedFunction(5, o2869, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2869.Value == L0) then
    o2869["Value"] = L0
    o4807.ReCalculate()
    o4863.ReCalculate()
  end
end }
o2870 = { [nil] = {}, GetCalculated = function()
  if not (o4820.Value ~= True) then
    if not (o4876.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2870.SetStateValue(o2870.GetCalculated())
end, StartCalculate = function()
  o2870["Value"] = o2870.GetCalculated()
  o4919.StartCalculate()
  o4975.StartCalculate()
  o5031.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2870.Value == L0) then
    DelayedFunction(5, o2870, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2870.Value == L0) then
    o2870["Value"] = L0
    o4919.ReCalculate()
    o4975.ReCalculate()
    o5031.ReCalculate()
  end
end }
o2871 = { [nil] = {}, GetCalculated = function()
  if not (o4932.Value ~= True) then
    if not (o4988.Value ~= True) then
      if not (o5044.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o2871.SetStateValue(o2871.GetCalculated())
end, StartCalculate = function()
  o2871["Value"] = o2871.GetCalculated()
  o5087.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2871.Value == L0) then
    DelayedFunction(5, o2871, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2871.Value == L0) then
    o2871["Value"] = L0
    o5087.ReCalculate()
  end
end }
o2872 = { [nil] = {}, GetCalculated = function()
  if not (o5100.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2872.SetStateValue(o2872.GetCalculated())
end, StartCalculate = function()
  o2872["Value"] = o2872.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2103)
  SED_SetTaskTextKey(0, -1, -1)
end, SetStateValue = function(L0)
  if not (o2872.Value == L0) then
    DelayedFunction(5, o2872, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2872.Value == L0) then
    o2872["Value"] = L0
    if not (L0 ~= 1) then
      o2872.ChangeTo1()
    end
  end
end }
o2873 = { [nil] = {}, GetCalculated = function()
  if not (o5100.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2873.SetStateValue(o2873.GetCalculated())
end, StartCalculate = function()
  o2873["Value"] = o2873.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2873.Value == L0) then
    o2873["Value"] = L0
    o2.ReCalculate()
  end
end }
S_o2901 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Atmo")
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2901, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2901, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code4")
  else
    CallFunction(o2901, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Game_PlayMusic(GetGameNode(), "Agressive")
  SED_SetTaskTextKey(2100, -1, -1)
  CallFunction(o2901, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code7")
  else
    CallFunction(o2901, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_DestEmp = function(L0, L1)
  o2916.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 2) then
    if not (L0.CodeIndex >= 3) then
      if not (o2903.Value ~= True) then
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
o2903 = { [nil] = {}, GetCalculated = function()
  if not (o2782.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2903.SetStateValue(o2903.GetCalculated())
end, StartCalculate = function()
  o2903["Value"] = o2903.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2903.Value == L0) then
    DelayedFunction(5, o2903, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2903.Value == L0) then
    o2903["Value"] = L0
    CallFunction(o2901, "ProcesseStateChange")
  end
end }
o2916 = { [nil] = {}, Start = function()
  o2916["Value"] = False
  o2851.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2916.Value == L0) then
    o2916["Value"] = L0
    o2851.ReCalculate()
  end
end }
S_o2957 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2957, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2957, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2957, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o2957, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2972.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2959.Value ~= True) then
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
o2959 = { [nil] = {}, GetCalculated = function()
  if not (o2851.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2959.SetStateValue(o2959.GetCalculated())
end, StartCalculate = function()
  o2959["Value"] = o2959.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2959.Value == L0) then
    o2959["Value"] = L0
    CallFunction(o2957, "ProcesseStateChange")
  end
end }
o2972 = { [nil] = {}, Start = function()
  o2972["Value"] = False
  o2852.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2972.Value == L0) then
    o2972["Value"] = L0
    o2852.ReCalculate()
  end
end }
S_o3013 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3013, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3013, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3013, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o3013, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3028.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3015.Value ~= True) then
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
o3015 = { [nil] = {}, GetCalculated = function()
  if not (o2851.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3015.SetStateValue(o3015.GetCalculated())
end, StartCalculate = function()
  o3015["Value"] = o3015.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3015.Value == L0) then
    o3015["Value"] = L0
    CallFunction(o3013, "ProcesseStateChange")
  end
end }
o3028 = { [nil] = {}, Start = function()
  o3028["Value"] = False
  o2852.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3028.Value == L0) then
    o3028["Value"] = L0
    o2852.ReCalculate()
  end
end }
S_o3069 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3069, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3069, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3069, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o3069, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3084.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3071.Value ~= True) then
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
o3071 = { [nil] = {}, GetCalculated = function()
  if not (o2852.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3071.SetStateValue(o3071.GetCalculated())
end, StartCalculate = function()
  o3071["Value"] = o3071.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3071.Value == L0) then
    o3071["Value"] = L0
    CallFunction(o3069, "ProcesseStateChange")
  end
end }
o3084 = { [nil] = {}, Start = function()
  o3084["Value"] = False
  o2853.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3084.Value == L0) then
    o3084["Value"] = L0
    o2853.ReCalculate()
  end
end }
S_o3125 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3125, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3125, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3125, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o3125, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3140.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3127.Value ~= True) then
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
o3127 = { [nil] = {}, GetCalculated = function()
  if not (o2852.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3127.SetStateValue(o3127.GetCalculated())
end, StartCalculate = function()
  o3127["Value"] = o3127.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3127.Value == L0) then
    o3127["Value"] = L0
    CallFunction(o3125, "ProcesseStateChange")
  end
end }
o3140 = { [nil] = {}, Start = function()
  o3140["Value"] = False
  o2853.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3140.Value == L0) then
    o3140["Value"] = L0
    o2853.ReCalculate()
  end
end }
S_o3181 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3181, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3181, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3181, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o3181, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3196.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3183.Value ~= True) then
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
o3183 = { [nil] = {}, GetCalculated = function()
  if not (o2852.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3183.SetStateValue(o3183.GetCalculated())
end, StartCalculate = function()
  o3183["Value"] = o3183.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3183.Value == L0) then
    o3183["Value"] = L0
    CallFunction(o3181, "ProcesseStateChange")
  end
end }
o3196 = { [nil] = {}, Start = function()
  o3196["Value"] = False
  o2853.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3196.Value == L0) then
    o3196["Value"] = L0
    o2853.ReCalculate()
  end
end }
S_o3237 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3237, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3237, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3237, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o3237, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3252.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3239.Value ~= True) then
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
o3239 = { [nil] = {}, GetCalculated = function()
  if not (o2853.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3239.SetStateValue(o3239.GetCalculated())
end, StartCalculate = function()
  o3239["Value"] = o3239.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3239.Value == L0) then
    DelayedFunction(10, o3239, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3239.Value == L0) then
    o3239["Value"] = L0
    CallFunction(o3237, "ProcesseStateChange")
  end
end }
o3252 = { [nil] = {}, Start = function()
  o3252["Value"] = False
  o2854.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3252.Value == L0) then
    o3252["Value"] = L0
    o2854.ReCalculate()
  end
end }
S_o3293 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3293, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3293, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3293, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o3293, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3308.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3295.Value ~= True) then
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
o3295 = { [nil] = {}, GetCalculated = function()
  if not (o2854.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3295.SetStateValue(o3295.GetCalculated())
end, StartCalculate = function()
  o3295["Value"] = o3295.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3295.Value == L0) then
    DelayedFunction(10, o3295, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3295.Value == L0) then
    o3295["Value"] = L0
    CallFunction(o3293, "ProcesseStateChange")
  end
end }
o3308 = { [nil] = {}, Start = function()
  o3308["Value"] = False
  o2855.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3308.Value == L0) then
    o3308["Value"] = L0
    o2855.ReCalculate()
  end
end }
S_o3349 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3349, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3349, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3349, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o3349, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3364.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3351.Value ~= True) then
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
o3351 = { [nil] = {}, GetCalculated = function()
  if not (o2855.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3351.SetStateValue(o3351.GetCalculated())
end, StartCalculate = function()
  o3351["Value"] = o3351.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3351.Value == L0) then
    DelayedFunction(5, o3351, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3351.Value == L0) then
    o3351["Value"] = L0
    CallFunction(o3349, "ProcesseStateChange")
  end
end }
o3364 = { [nil] = {}, Start = function()
  o3364["Value"] = False
  o2856.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3364.Value == L0) then
    o3364["Value"] = L0
    o2856.ReCalculate()
  end
end }
S_o3405 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3405, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3405, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3405, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o3405, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3420.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3407.Value ~= True) then
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
o3407 = { [nil] = {}, GetCalculated = function()
  if not (o2855.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3407.SetStateValue(o3407.GetCalculated())
end, StartCalculate = function()
  o3407["Value"] = o3407.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3407.Value == L0) then
    DelayedFunction(5, o3407, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3407.Value == L0) then
    o3407["Value"] = L0
    CallFunction(o3405, "ProcesseStateChange")
  end
end }
o3420 = { [nil] = {}, Start = function()
  o3420["Value"] = False
  o2856.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3420.Value == L0) then
    o3420["Value"] = L0
    o2856.ReCalculate()
  end
end }
S_o3461 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3461, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3461, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3461, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o3461, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3476.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3463.Value ~= True) then
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
o3463 = { [nil] = {}, GetCalculated = function()
  if not (o2856.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3463.SetStateValue(o3463.GetCalculated())
end, StartCalculate = function()
  o3463["Value"] = o3463.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3463.Value == L0) then
    DelayedFunction(5, o3463, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3463.Value == L0) then
    o3463["Value"] = L0
    CallFunction(o3461, "ProcesseStateChange")
  end
end }
o3476 = { [nil] = {}, Start = function()
  o3476["Value"] = False
  o2857.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3476.Value == L0) then
    o3476["Value"] = L0
    o2857.ReCalculate()
  end
end }
S_o3517 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3517, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3517, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3517, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o3517, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3532.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3519.Value ~= True) then
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
o3519 = { [nil] = {}, GetCalculated = function()
  if not (o2856.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3519.SetStateValue(o3519.GetCalculated())
end, StartCalculate = function()
  o3519["Value"] = o3519.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3519.Value == L0) then
    DelayedFunction(5, o3519, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3519.Value == L0) then
    o3519["Value"] = L0
    CallFunction(o3517, "ProcesseStateChange")
  end
end }
o3532 = { [nil] = {}, Start = function()
  o3532["Value"] = False
  o2857.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3532.Value == L0) then
    o3532["Value"] = L0
    o2857.ReCalculate()
  end
end }
S_o3573 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3573, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3573, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3573, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o3573, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3588.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3575.Value ~= True) then
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
o3575 = { [nil] = {}, GetCalculated = function()
  if not (o2856.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3575.SetStateValue(o3575.GetCalculated())
end, StartCalculate = function()
  o3575["Value"] = o3575.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3575.Value == L0) then
    DelayedFunction(5, o3575, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3575.Value == L0) then
    o3575["Value"] = L0
    CallFunction(o3573, "ProcesseStateChange")
  end
end }
o3588 = { [nil] = {}, Start = function()
  o3588["Value"] = False
  o2857.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3588.Value == L0) then
    o3588["Value"] = L0
    o2857.ReCalculate()
  end
end }
S_o3629 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3629, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3629, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3629, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o3629, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3644.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3631.Value ~= True) then
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
o3631 = { [nil] = {}, GetCalculated = function()
  if not (o2857.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3631.SetStateValue(o3631.GetCalculated())
end, StartCalculate = function()
  o3631["Value"] = o3631.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3631.Value == L0) then
    DelayedFunction(5, o3631, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3631.Value == L0) then
    o3631["Value"] = L0
    CallFunction(o3629, "ProcesseStateChange")
  end
end }
o3644 = { [nil] = {}, Start = function()
  o3644["Value"] = False
  o2858.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3644.Value == L0) then
    o3644["Value"] = L0
    o2858.ReCalculate()
  end
end }
S_o3685 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3685, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3685, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3685, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o3685, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3700.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3687.Value ~= True) then
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
o3687 = { [nil] = {}, GetCalculated = function()
  if not (o2858.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3687.SetStateValue(o3687.GetCalculated())
end, StartCalculate = function()
  o3687["Value"] = o3687.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3687.Value == L0) then
    DelayedFunction(5, o3687, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3687.Value == L0) then
    o3687["Value"] = L0
    CallFunction(o3685, "ProcesseStateChange")
  end
end }
o3700 = { [nil] = {}, Start = function()
  o3700["Value"] = False
  o2859.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3700.Value == L0) then
    o3700["Value"] = L0
    o2859.ReCalculate()
  end
end }
S_o3741 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3741, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3741, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3741, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o3741, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3756.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3743.Value ~= True) then
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
o3743 = { [nil] = {}, GetCalculated = function()
  if not (o2858.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3743.SetStateValue(o3743.GetCalculated())
end, StartCalculate = function()
  o3743["Value"] = o3743.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3743.Value == L0) then
    DelayedFunction(5, o3743, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3743.Value == L0) then
    o3743["Value"] = L0
    CallFunction(o3741, "ProcesseStateChange")
  end
end }
o3756 = { [nil] = {}, Start = function()
  o3756["Value"] = False
  o2859.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3756.Value == L0) then
    o3756["Value"] = L0
    o2859.ReCalculate()
  end
end }
S_o3797 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3797, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3797, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3797, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o3797, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3812.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3799.Value ~= True) then
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
o3799 = { [nil] = {}, GetCalculated = function()
  if not (o2859.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3799.SetStateValue(o3799.GetCalculated())
end, StartCalculate = function()
  o3799["Value"] = o3799.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3799.Value == L0) then
    DelayedFunction(5, o3799, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3799.Value == L0) then
    o3799["Value"] = L0
    CallFunction(o3797, "ProcesseStateChange")
  end
end }
o3812 = { [nil] = {}, Start = function()
  o3812["Value"] = False
  o2860.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3812.Value == L0) then
    o3812["Value"] = L0
    o2860.ReCalculate()
  end
end }
S_o3853 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3853, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3853, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3853, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o3853, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3868.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3855.Value ~= True) then
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
o3855 = { [nil] = {}, GetCalculated = function()
  if not (o2859.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3855.SetStateValue(o3855.GetCalculated())
end, StartCalculate = function()
  o3855["Value"] = o3855.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3855.Value == L0) then
    DelayedFunction(5, o3855, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3855.Value == L0) then
    o3855["Value"] = L0
    CallFunction(o3853, "ProcesseStateChange")
  end
end }
o3868 = { [nil] = {}, Start = function()
  o3868["Value"] = False
  o2860.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3868.Value == L0) then
    o3868["Value"] = L0
    o2860.ReCalculate()
  end
end }
S_o3909 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3909, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3909, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3909, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o3909, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3924.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3911.Value ~= True) then
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
o3911 = { [nil] = {}, GetCalculated = function()
  if not (o2859.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3911.SetStateValue(o3911.GetCalculated())
end, StartCalculate = function()
  o3911["Value"] = o3911.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3911.Value == L0) then
    DelayedFunction(5, o3911, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3911.Value == L0) then
    o3911["Value"] = L0
    CallFunction(o3909, "ProcesseStateChange")
  end
end }
o3924 = { [nil] = {}, Start = function()
  o3924["Value"] = False
  o2860.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3924.Value == L0) then
    o3924["Value"] = L0
    o2860.ReCalculate()
  end
end }
S_o3965 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3965, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3965, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3965, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o3965, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3980.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3967.Value ~= True) then
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
o3967 = { [nil] = {}, GetCalculated = function()
  if not (o2860.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3967.SetStateValue(o3967.GetCalculated())
end, StartCalculate = function()
  o3967["Value"] = o3967.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3967.Value == L0) then
    DelayedFunction(10, o3967, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3967.Value == L0) then
    o3967["Value"] = L0
    CallFunction(o3965, "ProcesseStateChange")
  end
end }
o3980 = { [nil] = {}, Start = function()
  o3980["Value"] = False
  o2861.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3980.Value == L0) then
    o3980["Value"] = L0
    o2861.ReCalculate()
  end
end }
S_o4021 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4021, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4021, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4021, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SED_SetTaskTextKey(2102, -1, -1)
  CallFunction(o4021, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code5")
  else
    CallFunction(o4021, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o4036.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4023.Value ~= True) then
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
o4023 = { [nil] = {}, GetCalculated = function()
  if not (o2861.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4023.SetStateValue(o4023.GetCalculated())
end, StartCalculate = function()
  o4023["Value"] = o4023.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4023.Value == L0) then
    DelayedFunction(10, o4023, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4023.Value == L0) then
    o4023["Value"] = L0
    CallFunction(o4021, "ProcesseStateChange")
  end
end }
o4036 = { [nil] = {}, Start = function()
  o4036["Value"] = False
  o2862.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4036.Value == L0) then
    o4036["Value"] = L0
    o2862.ReCalculate()
  end
end }
S_o4077 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4077, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4077, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4077, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o4077, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o4092.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4079.Value ~= True) then
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
o4079 = { [nil] = {}, GetCalculated = function()
  if not (o2862.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4079.SetStateValue(o4079.GetCalculated())
end, StartCalculate = function()
  o4079["Value"] = o4079.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4079.Value == L0) then
    DelayedFunction(5, o4079, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4079.Value == L0) then
    o4079["Value"] = L0
    CallFunction(o4077, "ProcesseStateChange")
  end
end }
o4092 = { [nil] = {}, Start = function()
  o4092["Value"] = False
  o2863.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4092.Value == L0) then
    o4092["Value"] = L0
    o2863.ReCalculate()
  end
end }
S_o4133 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4133, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4133, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4133, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o4133, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o4148.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4135.Value ~= True) then
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
o4135 = { [nil] = {}, GetCalculated = function()
  if not (o2862.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4135.SetStateValue(o4135.GetCalculated())
end, StartCalculate = function()
  o4135["Value"] = o4135.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4135.Value == L0) then
    DelayedFunction(5, o4135, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4135.Value == L0) then
    o4135["Value"] = L0
    CallFunction(o4133, "ProcesseStateChange")
  end
end }
o4148 = { [nil] = {}, Start = function()
  o4148["Value"] = False
  o2863.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4148.Value == L0) then
    o4148["Value"] = L0
    o2863.ReCalculate()
  end
end }
S_o4189 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4189, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4189, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4189, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o4189, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o4204.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4191.Value ~= True) then
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
o4191 = { [nil] = {}, GetCalculated = function()
  if not (o2863.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4191.SetStateValue(o4191.GetCalculated())
end, StartCalculate = function()
  o4191["Value"] = o4191.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4191.Value == L0) then
    DelayedFunction(5, o4191, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4191.Value == L0) then
    o4191["Value"] = L0
    CallFunction(o4189, "ProcesseStateChange")
  end
end }
o4204 = { [nil] = {}, Start = function()
  o4204["Value"] = False
  o2864.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4204.Value == L0) then
    o4204["Value"] = L0
    o2864.ReCalculate()
  end
end }
S_o4245 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4245, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4245, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4245, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o4245, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o4260.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4247.Value ~= True) then
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
o4247 = { [nil] = {}, GetCalculated = function()
  if not (o2863.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4247.SetStateValue(o4247.GetCalculated())
end, StartCalculate = function()
  o4247["Value"] = o4247.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4247.Value == L0) then
    DelayedFunction(5, o4247, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4247.Value == L0) then
    o4247["Value"] = L0
    CallFunction(o4245, "ProcesseStateChange")
  end
end }
o4260 = { [nil] = {}, Start = function()
  o4260["Value"] = False
  o2864.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4260.Value == L0) then
    o4260["Value"] = L0
    o2864.ReCalculate()
  end
end }
S_o4301 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4301, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4301, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4301, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o4301, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o4316.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4303.Value ~= True) then
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
o4303 = { [nil] = {}, GetCalculated = function()
  if not (o2863.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4303.SetStateValue(o4303.GetCalculated())
end, StartCalculate = function()
  o4303["Value"] = o4303.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4303.Value == L0) then
    DelayedFunction(5, o4303, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4303.Value == L0) then
    o4303["Value"] = L0
    CallFunction(o4301, "ProcesseStateChange")
  end
end }
o4316 = { [nil] = {}, Start = function()
  o4316["Value"] = False
  o2864.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4316.Value == L0) then
    o4316["Value"] = L0
    o2864.ReCalculate()
  end
end }
S_o4357 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4357, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4357, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4357, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o4357, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o4372.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4359.Value ~= True) then
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
o4359 = { [nil] = {}, GetCalculated = function()
  if not (o2864.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4359.SetStateValue(o4359.GetCalculated())
end, StartCalculate = function()
  o4359["Value"] = o4359.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4359.Value == L0) then
    DelayedFunction(5, o4359, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4359.Value == L0) then
    o4359["Value"] = L0
    CallFunction(o4357, "ProcesseStateChange")
  end
end }
o4372 = { [nil] = {}, Start = function()
  o4372["Value"] = False
  o2865.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4372.Value == L0) then
    o4372["Value"] = L0
    o2865.ReCalculate()
  end
end }
S_o4413 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4413, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4413, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4413, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o4413, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o4428.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4415.Value ~= True) then
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
o4415 = { [nil] = {}, GetCalculated = function()
  if not (o2865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4415.SetStateValue(o4415.GetCalculated())
end, StartCalculate = function()
  o4415["Value"] = o4415.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4415.Value == L0) then
    DelayedFunction(5, o4415, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4415.Value == L0) then
    o4415["Value"] = L0
    CallFunction(o4413, "ProcesseStateChange")
  end
end }
o4428 = { [nil] = {}, Start = function()
  o4428["Value"] = False
  o2866.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4428.Value == L0) then
    o4428["Value"] = L0
    o2866.ReCalculate()
  end
end }
S_o4469 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4469, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4469, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4469, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o4469, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o4484.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4471.Value ~= True) then
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
o4471 = { [nil] = {}, GetCalculated = function()
  if not (o2865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4471.SetStateValue(o4471.GetCalculated())
end, StartCalculate = function()
  o4471["Value"] = o4471.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4471.Value == L0) then
    DelayedFunction(5, o4471, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4471.Value == L0) then
    o4471["Value"] = L0
    CallFunction(o4469, "ProcesseStateChange")
  end
end }
o4484 = { [nil] = {}, Start = function()
  o4484["Value"] = False
  o2866.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4484.Value == L0) then
    o4484["Value"] = L0
    o2866.ReCalculate()
  end
end }
S_o4525 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4525, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4525, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4525, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o4525, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o4540.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4527.Value ~= True) then
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
o4527 = { [nil] = {}, GetCalculated = function()
  if not (o2866.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4527.SetStateValue(o4527.GetCalculated())
end, StartCalculate = function()
  o4527["Value"] = o4527.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4527.Value == L0) then
    DelayedFunction(5, o4527, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4527.Value == L0) then
    o4527["Value"] = L0
    CallFunction(o4525, "ProcesseStateChange")
  end
end }
o4540 = { [nil] = {}, Start = function()
  o4540["Value"] = False
  o2867.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4540.Value == L0) then
    o4540["Value"] = L0
    o2867.ReCalculate()
  end
end }
S_o4581 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4581, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4581, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4581, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o4581, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o4596.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4583.Value ~= True) then
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
o4583 = { [nil] = {}, GetCalculated = function()
  if not (o2866.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4583.SetStateValue(o4583.GetCalculated())
end, StartCalculate = function()
  o4583["Value"] = o4583.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4583.Value == L0) then
    DelayedFunction(5, o4583, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4583.Value == L0) then
    o4583["Value"] = L0
    CallFunction(o4581, "ProcesseStateChange")
  end
end }
o4596 = { [nil] = {}, Start = function()
  o4596["Value"] = False
  o2867.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4596.Value == L0) then
    o4596["Value"] = L0
    o2867.ReCalculate()
  end
end }
S_o4637 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4637, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4637, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4637, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o4637, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o4652.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4639.Value ~= True) then
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
o4639 = { [nil] = {}, GetCalculated = function()
  if not (o2866.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4639.SetStateValue(o4639.GetCalculated())
end, StartCalculate = function()
  o4639["Value"] = o4639.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4639.Value == L0) then
    DelayedFunction(5, o4639, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4639.Value == L0) then
    o4639["Value"] = L0
    CallFunction(o4637, "ProcesseStateChange")
  end
end }
o4652 = { [nil] = {}, Start = function()
  o4652["Value"] = False
  o2867.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4652.Value == L0) then
    o4652["Value"] = L0
    o2867.ReCalculate()
  end
end }
S_o4693 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4693, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4693, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4693, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o4693, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o4708.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4695.Value ~= True) then
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
o4695 = { [nil] = {}, GetCalculated = function()
  if not (o2867.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4695.SetStateValue(o4695.GetCalculated())
end, StartCalculate = function()
  o4695["Value"] = o4695.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4695.Value == L0) then
    DelayedFunction(10, o4695, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4695.Value == L0) then
    o4695["Value"] = L0
    CallFunction(o4693, "ProcesseStateChange")
  end
end }
o4708 = { [nil] = {}, Start = function()
  o4708["Value"] = False
  o2837.StartCalculate()
  o2868.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4708.Value == L0) then
    o4708["Value"] = L0
    o2837.ReCalculate()
    o2868.ReCalculate()
  end
end }
S_o4749 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4749, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4749, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4749, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SED_SetTaskTextKey(2103, -1, -1)
  CallFunction(o4749, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code5")
  else
    CallFunction(o4749, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o4764.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4751.Value ~= True) then
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
o4751 = { [nil] = {}, GetCalculated = function()
  if not (o2868.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4751.SetStateValue(o4751.GetCalculated())
end, StartCalculate = function()
  o4751["Value"] = o4751.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4751.Value == L0) then
    DelayedFunction(10, o4751, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4751.Value == L0) then
    o4751["Value"] = L0
    CallFunction(o4749, "ProcesseStateChange")
  end
end }
o4764 = { [nil] = {}, Start = function()
  o4764["Value"] = False
  o2869.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4764.Value == L0) then
    o4764["Value"] = L0
    o2869.ReCalculate()
  end
end }
S_o4805 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4805, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4805, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4805, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o4805, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o4820.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4807.Value ~= True) then
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
o4807 = { [nil] = {}, GetCalculated = function()
  if not (o2869.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4807.SetStateValue(o4807.GetCalculated())
end, StartCalculate = function()
  o4807["Value"] = o4807.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4807.Value == L0) then
    DelayedFunction(5, o4807, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4807.Value == L0) then
    o4807["Value"] = L0
    CallFunction(o4805, "ProcesseStateChange")
  end
end }
o4820 = { [nil] = {}, Start = function()
  o4820["Value"] = False
  o2870.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4820.Value == L0) then
    o4820["Value"] = L0
    o2870.ReCalculate()
  end
end }
S_o4861 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4861, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4861, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4861, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o4861, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o4876.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4863.Value ~= True) then
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
o4863 = { [nil] = {}, GetCalculated = function()
  if not (o2869.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4863.SetStateValue(o4863.GetCalculated())
end, StartCalculate = function()
  o4863["Value"] = o4863.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4863.Value == L0) then
    DelayedFunction(5, o4863, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4863.Value == L0) then
    o4863["Value"] = L0
    CallFunction(o4861, "ProcesseStateChange")
  end
end }
o4876 = { [nil] = {}, Start = function()
  o4876["Value"] = False
  o2870.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4876.Value == L0) then
    o4876["Value"] = L0
    o2870.ReCalculate()
  end
end }
S_o4917 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4917, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4917, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4917, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o4917, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o4932.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4919.Value ~= True) then
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
o4919 = { [nil] = {}, GetCalculated = function()
  if not (o2870.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4919.SetStateValue(o4919.GetCalculated())
end, StartCalculate = function()
  o4919["Value"] = o4919.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4919.Value == L0) then
    DelayedFunction(5, o4919, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4919.Value == L0) then
    o4919["Value"] = L0
    CallFunction(o4917, "ProcesseStateChange")
  end
end }
o4932 = { [nil] = {}, Start = function()
  o4932["Value"] = False
  o2871.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4932.Value == L0) then
    o4932["Value"] = L0
    o2871.ReCalculate()
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
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4973, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o4973, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o4988.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4975.Value ~= True) then
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
o4975 = { [nil] = {}, GetCalculated = function()
  if not (o2870.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4975.SetStateValue(o4975.GetCalculated())
end, StartCalculate = function()
  o4975["Value"] = o4975.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4975.Value == L0) then
    DelayedFunction(5, o4975, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4975.Value == L0) then
    o4975["Value"] = L0
    CallFunction(o4973, "ProcesseStateChange")
  end
end }
o4988 = { [nil] = {}, Start = function()
  o4988["Value"] = False
  o2871.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4988.Value == L0) then
    o4988["Value"] = L0
    o2871.ReCalculate()
  end
end }
S_o5029 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5029, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5029, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5029, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o5029, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o5044.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5031.Value ~= True) then
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
o5031 = { [nil] = {}, GetCalculated = function()
  if not (o2870.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5031.SetStateValue(o5031.GetCalculated())
end, StartCalculate = function()
  o5031["Value"] = o5031.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5031.Value == L0) then
    DelayedFunction(5, o5031, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5031.Value == L0) then
    o5031["Value"] = L0
    CallFunction(o5029, "ProcesseStateChange")
  end
end }
o5044 = { [nil] = {}, Start = function()
  o5044["Value"] = False
  o2871.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5044.Value == L0) then
    o5044["Value"] = L0
    o2871.ReCalculate()
  end
end }
S_o5085 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5085, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5085, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5085, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o5085, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o5100.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5087.Value ~= True) then
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
o5087 = { [nil] = {}, GetCalculated = function()
  if not (o2871.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5087.SetStateValue(o5087.GetCalculated())
end, StartCalculate = function()
  o5087["Value"] = o5087.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5087.Value == L0) then
    DelayedFunction(10, o5087, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5087.Value == L0) then
    o5087["Value"] = L0
    CallFunction(o5085, "ProcesseStateChange")
  end
end }
o5100 = { [nil] = {}, Start = function()
  o5100["Value"] = False
  o2872.StartCalculate()
  o2873.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5100.Value == L0) then
    o5100["Value"] = L0
    o2872.ReCalculate()
    o2873.ReCalculate()
  end
end }
S_o5141 = { [nil] = {}, Start = function(L0)

end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 126)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01a_1", S_o30)
  o76 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_1_1", S_o76)
  o122 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem03_r_1", S_o122)
  o168 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem07_r_1", S_o168)
  o214 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dock_1", S_o214)
  o260 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem07_1", S_o260)
  o306 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem03_1", S_o306)
  o352 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem03_3", S_o352)
  o398 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem03_4", S_o398)
  o444 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem01_1", S_o444)
  o490 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem01_2", S_o490)
  o536 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem05_1", S_o536)
  o582 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem05_2", S_o582)
  o628 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem06_1", S_o628)
  o674 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem01_r_1", S_o674)
  o720 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schwim_1", S_o720)
  o766 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_1", S_o766)
  o812 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_docking_1", S_o812)
  o858 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_big_1", S_o858)
  o904 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_big2_1", S_o904)
  o950 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml3_1", S_o950)
  o996 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabolic_1", S_o996)
  o1042 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabolic_2", S_o1042)
  o1088 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_beacon_1", S_o1088)
  o1134 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_beacon_2", S_o1134)
  o1180 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml2_1", S_o1180)
  o1226 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_1", S_o1226)
  o1272 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_2", S_o1272)
  o1318 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant22_1", S_o1318)
  o1364 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_3", S_o1364)
  o1410 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_1", S_o1410)
  o1456 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_2", S_o1456)
  o1502 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big03_1", S_o1502)
  o1548 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_2", S_o1548)
  o1594 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element05a_1", S_o1594)
  o1640 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_1", S_o1640)
  o1686 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_2", S_o1686)
  o1732 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_3", S_o1732)
  o1778 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_4", S_o1778)
  o1824 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01a_2", S_o1824)
  o1870 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01_1", S_o1870)
  o1916 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_1_2", S_o1916)
  o1962 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_1_3", S_o1962)
  o2008 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_1/Turm1", S_o2008)
  o2052 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_2/Turm1", S_o2052)
  o2096 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_3/Turm1", S_o2096)
  o2140 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_4/Turm1", S_o2140)
  o2184 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_5/Turm1", S_o2184)
  o2228 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_6/Turm1", S_o2228)
  o2272 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_1", S_o2272)
  o2318 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_2", S_o2318)
  o2364 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_3", S_o2364)
  o2410 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_4", S_o2410)
  o2456 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_3", S_o2456)
  o2502 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_1", S_o2502)
  o2548 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_2", S_o2548)
  o2594 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_3", S_o2594)
  o2640 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_4", S_o2640)
  o2686 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_5", S_o2686)
  o2732 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_6", S_o2732)
  o2778 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "dir_cammesh_1", S_o2778)
  o2782.Start()
  o2834 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o2834)
  o2901 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout_narrow_1_1", S_o2901)
  o2916.Start()
  o2957 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout_narrow_2_1", S_o2957)
  o2972.Start()
  o3013 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout_narrow_2_2", S_o3013)
  o3028.Start()
  o3069 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout_narrow_3_1", S_o3069)
  o3084.Start()
  o3125 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout_narrow_3_2", S_o3125)
  o3140.Start()
  o3181 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout_narrow_3_3", S_o3181)
  o3196.Start()
  o3237 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_bomber_1", S_o3237)
  o3252.Start()
  o3293 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_wide_1_1", S_o3293)
  o3308.Start()
  o3349 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_wide_2_1", S_o3349)
  o3364.Start()
  o3405 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_wide_2_2", S_o3405)
  o3420.Start()
  o3461 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_wide_3_1", S_o3461)
  o3476.Start()
  o3517 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_wide_3_2", S_o3517)
  o3532.Start()
  o3573 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_wide_3_3", S_o3573)
  o3588.Start()
  o3629 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_narrow_1_1", S_o3629)
  o3644.Start()
  o3685 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_narrow_2_1", S_o3685)
  o3700.Start()
  o3741 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_narrow_2_2", S_o3741)
  o3756.Start()
  o3797 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_narrow_3_1", S_o3797)
  o3812.Start()
  o3853 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_narrow_3_2", S_o3853)
  o3868.Start()
  o3909 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_narrow_3_3", S_o3909)
  o3924.Start()
  o3965 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_bomber_1", S_o3965)
  o3980.Start()
  o4021 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_wide_1_1", S_o4021)
  o4036.Start()
  o4077 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_wide_2_1", S_o4077)
  o4092.Start()
  o4133 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_wide_2_2", S_o4133)
  o4148.Start()
  o4189 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_wide_3_1", S_o4189)
  o4204.Start()
  o4245 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_wide_3_2", S_o4245)
  o4260.Start()
  o4301 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_wide_3_3", S_o4301)
  o4316.Start()
  o4357 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2_wide_1_1", S_o4357)
  o4372.Start()
  o4413 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2_wide_2_1", S_o4413)
  o4428.Start()
  o4469 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2_wide_2_2", S_o4469)
  o4484.Start()
  o4525 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2_wide_3_1", S_o4525)
  o4540.Start()
  o4581 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2_wide_3_2", S_o4581)
  o4596.Start()
  o4637 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2_wide_3_3", S_o4637)
  o4652.Start()
  o4693 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_bomber_1", S_o4693)
  o4708.Start()
  o4749 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide_1_1", S_o4749)
  o4764.Start()
  o4805 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide_2_1", S_o4805)
  o4820.Start()
  o4861 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide_2_2", S_o4861)
  o4876.Start()
  o4917 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide_3_1", S_o4917)
  o4932.Start()
  o4973 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide_3_2", S_o4973)
  o4988.Start()
  o5029 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide_3_3", S_o5029)
  o5044.Start()
  o5085 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_bomber_1", S_o5085)
  o5100.Start()
  o5141 = BindEasy(Node_Find("/"), "Camera", S_o5141)
  Game_LoadProgress_Leave(Node_Find("/"))
end
