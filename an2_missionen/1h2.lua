-- dekompiliert aus 1h2.sco
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
  Game_SetDecompressionHeight(node0, 500)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.082353, 0.058824, 0.047059)
  Game_SetParallelLightT(node0, 0.164706, 0.113725, 0.094118)
  Game_SetParallelLightB(node0, 0.109804, 0.117647, 0.109804)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_1h2.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_1H2.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient1.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit4.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit2.sam", 2)
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
  node8 = Node_CreateNode("NOD_Directory", "Des_Buildings_Dir")
  Node_AddSon(node7, node8)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "gen_tank_big_des_1")
  Node_AddSon(node8, node9)
  Body_SetCS(node9, MAT_Vector3(1678.176, 3060.437, 168.6089), MAT_Vector3(7.786298, 6.995975, -2.949058))
  Node_ParseIniFile(node9, "osd/gen/gen_tank_big_des.osd")
  Body_SetFriendOrFoeID(node9, 1)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "gen_tank_big_des_2")
  Node_AddSon(node8, node10)
  Body_SetCS(node10, MAT_Vector3(1730.906, 3057.965, 167.4746), MAT_Vector3(-8.695628, 2.195397, -1.859261))
  Node_ParseIniFile(node10, "osd/gen/gen_tank_big_des.osd")
  Body_SetFriendOrFoeID(node10, 1)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "gen_trafo_des_1")
  Node_AddSon(node8, node11)
  Body_SetCS(node11, MAT_Vector3(1648.123, 2897.98, 177.8686), MAT_Vector3(-5.997817, -5.841205, 1.670109))
  Node_ParseIniFile(node11, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node11, 1)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "gen_trafo_des_2")
  Node_AddSon(node8, node12)
  Body_SetCS(node12, MAT_Vector3(1648.123, 2939.999, 169.7123), MAT_Vector3(13.39306, -0.364284, -1.40298))
  Node_ParseIniFile(node12, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node12, 1)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "gen_trafo_des_3")
  Node_AddSon(node8, node13)
  Body_SetCS(node13, MAT_Vector3(1649.771, 2976.251, 166.7994), MAT_Vector3(21.38467, 5.884119, -5.998844))
  Node_ParseIniFile(node13, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node13, 1)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "gen_tank_big_des_3")
  Node_AddSon(node8, node14)
  Body_SetCS(node14, MAT_Vector3(1775.796, 1954.528, 175.5821), MAT_Vector3(-83.36621, 3.236338, 0.880428))
  Node_ParseIniFile(node14, "osd/gen/gen_tank_big_des.osd")
  Body_SetFriendOrFoeID(node14, 1)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "gen_tank_big_des_4")
  Node_AddSon(node8, node15)
  Body_SetCS(node15, MAT_Vector3(1749.431, 1830.118, 169.3434), MAT_Vector3(-5.602778, -3.130237, 2.785631))
  Node_ParseIniFile(node15, "osd/gen/gen_tank_big_des.osd")
  Body_SetFriendOrFoeID(node15, 1)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "gen_trafo_des_4")
  Node_AddSon(node8, node16)
  Body_SetCS(node16, MAT_Vector3(1753.221, 1653.67, 175.2985), MAT_Vector3(2.383146, 0.101545, -1.70103))
  Node_ParseIniFile(node16, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node16, 1)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "gen_trafo_des_5")
  Node_AddSon(node8, node17)
  Body_SetCS(node17, MAT_Vector3(1778.762, 1652.846, 175.2985), MAT_Vector3(72.80415, 0.101545, -1.70103))
  Node_ParseIniFile(node17, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node17, 1)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "gen_tank_big_des_5")
  Node_AddSon(node8, node18)
  Body_SetCS(node18, MAT_Vector3(1147.667, 2237.212, 174.3529), MAT_Vector3(6.121786, 0.46061, -5.571994))
  Node_ParseIniFile(node18, "osd/gen/gen_tank_big_des.osd")
  Body_SetFriendOrFoeID(node18, 1)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "gen_tank_big_des_6")
  Node_AddSon(node8, node19)
  Body_SetCS(node19, MAT_Vector3(1093.344, 2234.85, 170.3823), MAT_Vector3(3.983198, 0.462701, -3.131291))
  Node_ParseIniFile(node19, "osd/gen/gen_tank_big_des.osd")
  Body_SetFriendOrFoeID(node19, 1)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "gen_tank_big_des_7")
  Node_AddSon(node8, node20)
  Body_SetCS(node20, MAT_Vector3(1040.202, 2234.85, 176.3382), MAT_Vector3(4.572796, -0.406556, -7.687513))
  Node_ParseIniFile(node20, "osd/gen/gen_tank_big_des.osd")
  Body_SetFriendOrFoeID(node20, 1)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "gen_tank_big_des_8")
  Node_AddSon(node8, node21)
  Body_SetCS(node21, MAT_Vector3(1044.322, 2168.938, 174.0412), MAT_Vector3(8.017442, -3.594103, -14.34447))
  Node_ParseIniFile(node21, "osd/gen/gen_tank_big_des.osd")
  Body_SetFriendOrFoeID(node21, 1)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "tz_element01a_1")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(1677.376, 2405.316, 202.3833), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node22, "osd/tz/tz_element01a.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "tz_element04_1_1")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(1740.34, 2423.732, 194.3238), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node23, "osd/tz/tz_element04_1.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "tz_elem03_r_1")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(1569.945, 1903.618, 188.9098), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node24, "osd/tz/tz_element03_raw.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "tz_elem07_r_1")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(1589.755, 2208.481, 205.942767), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node25, "osd/tz/tz_element07_raw.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_dock_1")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(1548.617933, 2900.155716, 180.8001), MAT_Vector3(90.040355, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_dock.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "tz_elem07_1")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(1550.047, 2454.902, 198.2599), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node27, "osd/tz/tz_element07.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "tz_elem03_1")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(1646.463, 2498.748, 196.4346), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node28, "osd/tz/tz_element03.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "tz_elem03_3")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(1632.034, 2110.313, 193.9842), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node29, "osd/tz/tz_element03.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "tz_elem03_4")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(1451.407, 2497.627, 195.393), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node30, "osd/tz/tz_element03.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "tz_elem01_1")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(1762.525, 2179.152, 184.866045), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node31, "osd/tz/tz_element01.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "tz_elem01_2")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(1608.778, 1705.525, 196.922), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node32, "osd/tz/tz_element01.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "tz_elem05_1")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(1779.687, 2371.668, 176.1227), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node33, "osd/tz/tz_element05.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "tz_elem05_2")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(1657.423, 2638.587, 196.8598), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node34, "osd/tz/tz_element05.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "tz_elem06_1")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(1630.224, 1917.451, 192.7454), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node35, "osd/tz/tz_element06.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "tz_elem01_r_1")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(1643.018, 1737.153, 193.6451), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node36, "osd/tz/tz_element01_raw.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "gen_schwim_1")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(1591.536835, 1616.064786, 176.358735), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node37, "osd/gen/gen_chimney1_2.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "gen_shelter_1")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(1690.268701, 1646.263748, 188), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node38, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_shelter_docking_1")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(1750.00471, 2084.013507, 190.733338), MAT_Vector3(-90.100286, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_shelter_docking.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_tank_big_1")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(1777.609807, 2006.54581, 178.429875), MAT_Vector3(-90.182145, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_tank_big2_1")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(1454.0652, 1776.474289, 163.05288), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_tank_big2.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_tank_sml3_1")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(1459.691852, 1906.344687, 178.770848), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_tank_sml3.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_parabolic_1")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(1698.788967, 1669.643662, 229.039083), MAT_Vector3(-53.96324, 0, 0))
  Node_ParseIniFile(node43, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_parabolic_2")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(1772.015511, 2091.955742, 230.733482), MAT_Vector3(-52.093829, 0, 0))
  Node_ParseIniFile(node44, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "ent_beacon_1")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(1775, 1625, 165), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node45, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "ent_beacon_2")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(1747, 2636, 175), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node46, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "gen_tank_sml2_1")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(1518.937184, 1686.896263, 162.820388), MAT_Vector3(164.951216, 0, 0))
  Node_ParseIniFile(node47, "osd/gen/gen_tank_sml2.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "gen_rohr_big02_1")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(1567.489547, 2710.035484, 197.382089), MAT_Vector3(-179.852038, 0, 0))
  Node_ParseIniFile(node48, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "gen_rohr_big02_2")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(1610.009908, 2711.044867, 196.865525), MAT_Vector3(-179.852, 0, 0))
  Node_ParseIniFile(node49, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "gen_pplant22_1")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(1713.941492, 1897.350739, 164.325606), MAT_Vector3(-90.097372, 0, 0))
  Node_ParseIniFile(node50, "osd/gen/gen_pplant22.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_rohr_big02_3")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(1715.759351, 1985.708311, 184.323138), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "gen_rohr_small03_1")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(1706.089637, 1745.304734, 202), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node52, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_rohr_small03_2")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(1706.09, 1745.305, 217.2024), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node53, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "gen_rohr_big03_1")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(1720.352048, 1710.045928, 178.702012), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node54, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "gen_shelter_2")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(1689.256909, 1505.33988, 188), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node55, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "tz_element05a_1")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(1456.433154, 2027.938788, 191.825979), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node56, "osd/tz/tz_element05a.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "gen_rohr_small02_1")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(1558.623586, 2033.948024, 272.250536), MAT_Vector3(90.180584, 0, 0))
  Node_ParseIniFile(node57, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "gen_rohr_small02_2")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(1558.212047, 2023.23721, 242.969451), MAT_Vector3(90.18058, 0, 0))
  Node_ParseIniFile(node58, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "gen_rohr_small02_3")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(1558.172932, 2033.17457, 235.253548), MAT_Vector3(90.18058, 0, 0))
  Node_ParseIniFile(node59, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "gen_rohr_small02_4")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(1557.713981, 2026.662273, 213.292713), MAT_Vector3(90.18058, 0, 0))
  Node_ParseIniFile(node60, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "tz_element01a_2")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(1582.725342, 1965.994847, 190.381765), MAT_Vector3(-179.91113, 0, 0))
  Node_ParseIniFile(node61, "osd/tz/tz_element01a.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "tz_element01_1")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(1553.38783, 1793.305095, 188.796165), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node62, "osd/tz/tz_element01.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "tz_element04_1_2")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(1539.381412, 1859.217649, 90.140642), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node63, "osd/tz/tz_element04_1.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "tz_element04_1_3")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(1539.381, 1859.218, 193.539177), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node64, "osd/tz/tz_element04_1.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "gen_turret_socket_1")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(1697.039847, 1479.980543, 231.559031), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node65, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "gen_turret_socket_2")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(1889.920072, 2114.94406, 185.134016), MAT_Vector3(-112.282311, 0, 0))
  Node_ParseIniFile(node66, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "gen_turret_socket_3")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(1887.140175, 2525.581685, 173.997596), MAT_Vector3(-56.113123, 0, 0))
  Node_ParseIniFile(node67, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "gen_turret_socket_4")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(1653.625819, 2867.701693, 192.310798), MAT_Vector3(-56.11312, 0, 0))
  Node_ParseIniFile(node68, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "gen_turret_socket_5")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(1654.20082, 2759.348363, 192.3108), MAT_Vector3(-126.968964, 0, 0))
  Node_ParseIniFile(node69, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "gen_turret_socket_6")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(1600.047551, 3063.553588, 192.3108), MAT_Vector3(-55.450399, 0, 0))
  Node_ParseIniFile(node70, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "gen_elfnote_1")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(2924.501039, 2095.38639, 280.719676), MAT_Vector3(-73.920929, 5.120089, -7.85608))
  Node_ParseIniFile(node71, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "gen_elfnote_2")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(3581.253461, 2735.211851, 224.886415), MAT_Vector3(21.919827, -4.653346, -11.328382))
  Node_ParseIniFile(node72, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "gen_elfnote_3")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(2726.110942, 2691.927157, 182.315192), MAT_Vector3(-5.451338, -10.20487, 0.950234))
  Node_ParseIniFile(node73, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "gen_elfnote_4")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(2501.251219, 3787.404008, 159.870319), MAT_Vector3(27.962952, -4.161162, -2.028789))
  Node_ParseIniFile(node74, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "gen_rohr_small03_3")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(2790.836881, 2481.693489, 121.92018), MAT_Vector3(21.585199, 0, 0))
  Node_ParseIniFile(node75, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "gen_rohr_small01_1")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(2894.545513, 2139.773974, 264.480917), MAT_Vector3(26.506674, -13.558576, 8.723426))
  Node_ParseIniFile(node76, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "gen_rohr_small01_2")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(2970.090132, 2132.02902, 269.103788), MAT_Vector3(-47.832042, -7.220287, 7.891378))
  Node_ParseIniFile(node77, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "gen_rohr_small01_3")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(2746.324179, 2631.249585, 161.178635), MAT_Vector3(-162.984186, -12.08491, 3.605199))
  Node_ParseIniFile(node78, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "gen_rohr_small01_4")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(2706.593113, 2745.126556, 162.329802), MAT_Vector3(16.292933, -12.08491, 3.605199))
  Node_ParseIniFile(node79, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "gen_rohr_small01_5")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(2512.251893, 3729.150354, 140.452929), MAT_Vector3(-166.581415, -12.08491, 3.605199))
  Node_ParseIniFile(node80, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_generic", "gen_rohr_small01_6")
  Node_AddSon(node7, node81)
  Body_SetCS(node81, MAT_Vector3(2436.672512, 3787.015545, 140.4529), MAT_Vector3(93.680608, -12.08491, 3.605199))
  Node_ParseIniFile(node81, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_fx_rays", "fx_rays_1H2_1")
  Node_AddSon(node7, node82)
  Node_ParseIniFile(node82, "osd/fx_rays/fx_rays_1H2.osd")
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_generic", "pla_harvester_1")
  Node_AddSon(node7, node83)
  Body_SetCS(node83, MAT_Vector3(2926.18589, 4048.612269, 301.027623), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node83, "osd/pla/pla_harvester.osd")
  Body_SetFriendOrFoeID(node83, 2)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_fx_flare", "fx_flare_1H2_1")
  Node_AddSon(node7, node84)
  Node_ParseIniFile(node84, "osd/fx_flare/fx_flare_1H2.osd")
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_fx_plankton", "fx_plankton_lava_n_1")
  Node_AddSon(node7, node85)
  Node_ParseIniFile(node85, "osd/fx_plankton/fx_plankton_lava_n.osd")
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "ter_claw_l_01_1")
  Node_AddSon(node7, node86)
  Body_SetCS(node86, MAT_Vector3(2889.161551, 3111.10567, 113.873806), MAT_Vector3(12.208902, 11.014822, -4.078384))
  Node_ParseIniFile(node86, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "ter_claw_l_02_1")
  Node_AddSon(node7, node87)
  Body_SetCS(node87, MAT_Vector3(2896.196386, 3019.751066, 109.332411), MAT_Vector3(-83.219176, 0, 0))
  Node_ParseIniFile(node87, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "ter_claw_l_01_2")
  Node_AddSon(node7, node88)
  Body_SetCS(node88, MAT_Vector3(2838.903711, 2989.991763, 110.533688), MAT_Vector3(-145.925301, 14.988774, -6.52949))
  Node_ParseIniFile(node88, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "ter_claw_l_02_2")
  Node_AddSon(node7, node89)
  Body_SetCS(node89, MAT_Vector3(2807.214112, 3083.191791, 102.652177), MAT_Vector3(72.42829, 0, 0))
  Node_ParseIniFile(node89, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_generic", "ter_claw_l_01_3")
  Node_AddSon(node7, node90)
  Body_SetCS(node90, MAT_Vector3(2397.608285, 2138.323135, 133.946534), MAT_Vector3(8.695196, 3.870486, -7.020546))
  Node_ParseIniFile(node90, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node90, 0)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_generic", "ter_claw_l_02_3")
  Node_AddSon(node7, node91)
  Body_SetCS(node91, MAT_Vector3(2402.501527, 2168.069381, 134.089868), MAT_Vector3(-75.634971, 1.788379, -8.229872))
  Node_ParseIniFile(node91, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node91, 0)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_generic", "ter_claw_s_01_1")
  Node_AddSon(node7, node92)
  Body_SetCS(node92, MAT_Vector3(2764.449617, 2980.845074, 110.109818), MAT_Vector3(-162.756317, 6.575564, -1.838528))
  Node_ParseIniFile(node92, "osd/ter/ter_claw_s_01.osd")
  Body_SetFriendOrFoeID(node92, 0)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "ter_claw_s_02_1")
  Node_AddSon(node7, node93)
  Body_SetCS(node93, MAT_Vector3(2748.668879, 3057.136361, 111.682597), MAT_Vector3(9.847792, -8.711292, 0.825948))
  Node_ParseIniFile(node93, "osd/ter/ter_claw_s_02.osd")
  Body_SetFriendOrFoeID(node93, 0)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_generic", "ter_claw_s_01_2")
  Node_AddSon(node7, node94)
  Body_SetCS(node94, MAT_Vector3(3715.203788, 2752.472322, 263.441706), MAT_Vector3(-155.714048, 6.575564, -1.838528))
  Node_ParseIniFile(node94, "osd/ter/ter_claw_s_01.osd")
  Body_SetFriendOrFoeID(node94, 0)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_generic", "ter_claw_s_02_2")
  Node_AddSon(node7, node95)
  Body_SetCS(node95, MAT_Vector3(3444.836494, 2285.437059, 111.6826), MAT_Vector3(-54.313155, -8.711292, 0.825948))
  Node_ParseIniFile(node95, "osd/ter/ter_claw_s_02.osd")
  Body_SetFriendOrFoeID(node95, 0)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_generic", "ter_claw_s_01_3")
  Node_AddSon(node7, node96)
  Body_SetCS(node96, MAT_Vector3(3467.683286, 2246.995521, 109.64251), MAT_Vector3(-45.892367, 19.631685, -9.494475))
  Node_ParseIniFile(node96, "osd/ter/ter_claw_s_01.osd")
  Body_SetFriendOrFoeID(node96, 0)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_generic", "ter_claw_l_02_4")
  Node_AddSon(node7, node97)
  Body_SetCS(node97, MAT_Vector3(3389.304671, 2224.506449, 84.478176), MAT_Vector3(-150.345277, -1.22592, -22.138569))
  Node_ParseIniFile(node97, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node97, 0)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_generic", "ter_claw_l_02_5")
  Node_AddSon(node7, node98)
  Body_SetCS(node98, MAT_Vector3(1676.016063, 3783.895508, 111.636966), MAT_Vector3(-35.332893, 0, 0))
  Node_ParseIniFile(node98, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node98, 0)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_generic", "ter_claw_l_02_6")
  Node_AddSon(node7, node99)
  Body_SetCS(node99, MAT_Vector3(1604.454, 3824.219, 102.6522), MAT_Vector3(119.0587, 0, 0))
  Node_ParseIniFile(node99, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node99, 0)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_generic", "ter_claw_l_01_4")
  Node_AddSon(node7, node100)
  Body_SetCS(node100, MAT_Vector3(1631.215514, 3753.283, 114.124868), MAT_Vector3(-168.33559, 3.870486, -7.020546))
  Node_ParseIniFile(node100, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node100, 0)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_generic", "ter_claw_l_01_5")
  Node_AddSon(node7, node101)
  Body_SetCS(node101, MAT_Vector3(1675.942047, 3830.200047, 116.585165), MAT_Vector3(-21.032215, 3.870486, -7.020546))
  Node_ParseIniFile(node101, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node101, 0)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_generic", "ter_claw_s_02_3")
  Node_AddSon(node7, node102)
  Body_SetCS(node102, MAT_Vector3(1594.214955, 3784.049706, 116.526515), MAT_Vector3(110.030692, -8.711292, 0.825948))
  Node_ParseIniFile(node102, "osd/ter/ter_claw_s_02.osd")
  Body_SetFriendOrFoeID(node102, 0)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_generic", "ter_claw_s_01_4")
  Node_AddSon(node7, node103)
  Body_SetCS(node103, MAT_Vector3(1640.201626, 3842.944966, 116.755995), MAT_Vector3(24.419742, 0.721773, -6.997001))
  Node_ParseIniFile(node103, "osd/ter/ter_claw_s_01.osd")
  Body_SetFriendOrFoeID(node103, 0)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_generic", "ter_megalith_l_01_1")
  Node_AddSon(node7, node104)
  Body_SetCS(node104, MAT_Vector3(2575.130506, 3084.741559, 131.276593), MAT_Vector3(61.022079, 6.960825, -8.406102))
  Node_ParseIniFile(node104, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node104, 0)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_generic", "ter_megalith_l_02_1")
  Node_AddSon(node7, node105)
  Body_SetCS(node105, MAT_Vector3(2057.593712, 2527.8812, 95.621558), MAT_Vector3(3.451345, -1.750936, 2.181017))
  Node_ParseIniFile(node105, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node105, 0)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_generic", "ter_megalith_l_03_1")
  Node_AddSon(node7, node106)
  Body_SetCS(node106, MAT_Vector3(3302.644743, 2723.422694, 107.054561), MAT_Vector3(-13.603506, 8.939071, -8.02539))
  Node_ParseIniFile(node106, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node106, 0)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_generic", "ter_megalith_m_01_1")
  Node_AddSon(node7, node107)
  Body_SetCS(node107, MAT_Vector3(2553.170829, 1876.152078, 130.611303), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node107, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node107, 0)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_generic", "ter_megalith_m_02_1")
  Node_AddSon(node7, node108)
  Body_SetCS(node108, MAT_Vector3(3435.733736, 1970.380497, 121.438675), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node108, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node108, 0)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1")
  Node_AddSon(node7, node109)
  Body_SetCS(node109, MAT_Vector3(2546.810535, 3149.60062, 130.620843), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node109, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node109, 0)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_generic", "ter_megalith_s_02_1")
  Node_AddSon(node7, node110)
  Body_SetCS(node110, MAT_Vector3(3409.254211, 2001.796718, 117.323507), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node110, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node110, 0)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1")
  Node_AddSon(node7, node111)
  Body_SetCS(node111, MAT_Vector3(2510.245868, 1901.441597, 136.084413), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node111, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node111, 0)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_fx_sky", "fx_sky_1H2_1")
  Node_AddSon(node7, node112)
  Node_ParseIniFile(node112, "osd/fx_sky/fx_sky_1H2.osd")
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node7, node113)
  Node_ParseIniFile(node113, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node113, "map/1H2/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node114)
  Node_ParseIniFile(node114, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node114, "map/1H2/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_fx_plant", "org_redcoral_1")
  Node_AddSon(node7, node115)
  Node_ParseIniFile(node115, "osd/fx_plant/org_redcoral.osd")
  FX_Plant_SetMap(node115, "map/1H2/Terrain/org_redcoral.tga")
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node116)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node116, node117)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node116, node118)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_FX_Stream", "Stream_1")
  Node_AddSon(node118, node119)
  Body_SetCS(node119, MAT_Vector3(2000, 2000, 45), MAT_Vector3())
  Stream_SetBoxExtension(node119, 2500, 2500, 50)
  Stream_SetCurrentDirection(node119, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("NOD_PatrolArea", "NAV1_PatrolArea")
  Node_AddSon(node118, node120)
  PatrolArea_SetPosition(node120, MAT_Vector3(1852.739107, 2949.999967, 223.81051))
  PatrolArea_SetRadius(node120, 80)
  PatrolArea_SetMinZ(node120, -20)
  PatrolArea_SetMaxZ(node120, 20)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_PatrolArea", "NAV1_TriggerArea")
  Node_AddSon(node118, node121)
  PatrolArea_SetPosition(node121, MAT_Vector3(1852.739, 2950, 223.8105))
  PatrolArea_SetRadius(node121, 350)
  PatrolArea_SetMinZ(node121, -150)
  PatrolArea_SetMaxZ(node121, 275)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("NOD_PatrolArea", "NAV1_AttackArea")
  Node_AddSon(node118, node122)
  PatrolArea_SetPosition(node122, MAT_Vector3(1852.739, 2950, 223.8105))
  PatrolArea_SetRadius(node122, 400)
  PatrolArea_SetMinZ(node122, -150)
  PatrolArea_SetMaxZ(node122, 275)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("NOD_PatrolArea", "NAV2_PatrolArea")
  Node_AddSon(node118, node123)
  PatrolArea_SetPosition(node123, MAT_Vector3(2029.30225, 1774.619761, 223.8105))
  PatrolArea_SetRadius(node123, 80)
  PatrolArea_SetMinZ(node123, -20)
  PatrolArea_SetMaxZ(node123, 20)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_PatrolArea", "NAV2_TriggerArea")
  Node_AddSon(node118, node124)
  PatrolArea_SetPosition(node124, MAT_Vector3(2029.30225, 1775.671078, 223.8105))
  PatrolArea_SetRadius(node124, 350)
  PatrolArea_SetMinZ(node124, -150)
  PatrolArea_SetMaxZ(node124, 275)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_PatrolArea", "NAV2_AttackArea")
  Node_AddSon(node118, node125)
  PatrolArea_SetPosition(node125, MAT_Vector3(2034.154529, 1774.619761, 223.8105))
  PatrolArea_SetRadius(node125, 400)
  PatrolArea_SetMinZ(node125, -150)
  PatrolArea_SetMaxZ(node125, 275)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_PatrolArea", "NAV3_PatrolArea")
  Node_AddSon(node118, node126)
  PatrolArea_SetPosition(node126, MAT_Vector3(1035.954711, 2184.63755, 260.518409))
  PatrolArea_SetRadius(node126, 100)
  PatrolArea_SetMinZ(node126, -40)
  PatrolArea_SetMaxZ(node126, 40)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_PatrolArea", "NAV3_TriggerArea")
  Node_AddSon(node118, node127)
  PatrolArea_SetPosition(node127, MAT_Vector3(1033.528571, 2185.688411, 223.8105))
  PatrolArea_SetRadius(node127, 350)
  PatrolArea_SetMinZ(node127, -150)
  PatrolArea_SetMaxZ(node127, 275)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("NOD_PatrolArea", "NAV3_AttackArea")
  Node_AddSon(node118, node128)
  PatrolArea_SetPosition(node128, MAT_Vector3(1033.528571, 2184.63755, 225.170052))
  PatrolArea_SetRadius(node128, 400)
  PatrolArea_SetMinZ(node128, -150)
  PatrolArea_SetMaxZ(node128, 275)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("NOD_Path", "MayDay_Path1")
  Node_AddSon(node118, node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node129, node130)
  Position_SetPosition(node130, MAT_Vector3(2144.605301, 3374.679985, 220))
  Position_SetRadius(node130, 5)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node129, node131)
  Position_SetPosition(node131, MAT_Vector3(2084.765838, 3318.885486, 220))
  Position_SetRadius(node131, 5)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_Path", "Stoney_Path1")
  Node_AddSon(node118, node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node132, node133)
  Position_SetPosition(node133, MAT_Vector3(2173.718678, 3347.992462, 220))
  Position_SetRadius(node133, 5)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node132, node134)
  Position_SetPosition(node134, MAT_Vector3(2116.611617, 3299.746849, 220))
  Position_SetRadius(node134, 5)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("NOD_Path", "MayDay_Path2")
  Node_AddSon(node118, node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node135, node136)
  Position_SetPosition(node136, MAT_Vector3(2025.296461, 2415.057291, 205.594433))
  Position_SetRadius(node136, 5)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node135, node137)
  Position_SetPosition(node137, MAT_Vector3(1990.645868, 2199.811299, 199.890095))
  Position_SetRadius(node137, 5)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("NOD_Path", "Stoney_Path2")
  Node_AddSon(node118, node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node138, node139)
  Position_SetPosition(node139, MAT_Vector3(1962.673709, 2409.855375, 217.650951))
  Position_SetRadius(node139, 5)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node138, node140)
  Position_SetPosition(node140, MAT_Vector3(1902.357272, 2216.700767, 212.736171))
  Position_SetRadius(node140, 5)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_Path", "MayDay_Path3")
  Node_AddSon(node118, node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node141, node142)
  Position_SetPosition(node142, MAT_Vector3(1984.739131, 2140.922006, 214.425))
  Position_SetRadius(node142, 5)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node141, node143)
  Position_SetPosition(node143, MAT_Vector3(1896.62512, 2054.35648, 278.8193))
  Position_SetRadius(node143, 5)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node141, node144)
  Position_SetPosition(node144, MAT_Vector3(1679.754, 2052.206, 284.113436))
  Position_SetRadius(node144, 5)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node141, node145)
  Position_SetPosition(node145, MAT_Vector3(1591.736, 2052.206, 271.539899))
  Position_SetRadius(node145, 5)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node141, node146)
  Position_SetPosition(node146, MAT_Vector3(1530.570868, 2091.538598, 243.084))
  Position_SetRadius(node146, 5)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node141, node147)
  Position_SetPosition(node147, MAT_Vector3(1478.267935, 2091.644232, 257))
  Position_SetRadius(node147, 5)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Path", "Stoney_Path3")
  Node_AddSon(node118, node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node148, node149)
  Position_SetPosition(node149, MAT_Vector3(1884.765663, 2162.657896, 214.425))
  Position_SetRadius(node149, 5)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node148, node150)
  Position_SetPosition(node150, MAT_Vector3(1842.46, 2091.595, 278.8193))
  Position_SetRadius(node150, 5)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node148, node151)
  Position_SetPosition(node151, MAT_Vector3(1679.754, 2052.206, 243.084))
  Position_SetRadius(node151, 5)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node148, node152)
  Position_SetPosition(node152, MAT_Vector3(1591.736, 2052.206, 243.084))
  Position_SetRadius(node152, 5)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node148, node153)
  Position_SetPosition(node153, MAT_Vector3(1528.235795, 2062.393544, 233.464481))
  Position_SetRadius(node153, 5)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node148, node154)
  Position_SetPosition(node154, MAT_Vector3(1478.267935, 2061.983614, 257))
  Position_SetRadius(node154, 5)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Path", "Stoney_PathHome")
  Node_AddSon(node118, node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node155, node156)
  Position_SetPosition(node156, MAT_Vector3(1123.451943, 2221.310995, 318.476062))
  Position_SetRadius(node156, 5)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Path", "MayDay_PathHome")
  Node_AddSon(node118, node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node157, node158)
  Position_SetPosition(node158, MAT_Vector3(1218.350876, 2512.458838, 252.505366))
  Position_SetRadius(node158, 5)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node157, node159)
  Position_SetPosition(node159, MAT_Vector3(1361.06953, 2685.527807, 104.566509))
  Position_SetRadius(node159, 5)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node157, node160)
  Position_SetPosition(node160, MAT_Vector3(1487.354707, 2722.20595, 181.002231))
  Position_SetRadius(node160, 5)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node157, node161)
  Position_SetPosition(node161, MAT_Vector3(1708.012874, 2722.660331, 108.223687))
  Position_SetRadius(node161, 5)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node157, node162)
  Position_SetPosition(node162, MAT_Vector3(1959.457377, 2649.548611, 64.327624))
  Position_SetRadius(node162, 5)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node157, node163)
  Position_SetPosition(node163, MAT_Vector3(2093.450064, 2666.185039, 72.784453))
  Position_SetRadius(node163, 5)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node157, node164)
  Position_SetPosition(node164, MAT_Vector3(2273.865463, 2750.971952, 63.314957))
  Position_SetRadius(node164, 5)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node157, node165)
  Position_SetPosition(node165, MAT_Vector3(2352.178437, 2950.736437, 69.079225))
  Position_SetRadius(node165, 5)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node157, node166)
  Position_SetPosition(node166, MAT_Vector3(2319.141535, 3118.054618, 64.667891))
  Position_SetRadius(node166, 5)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node157, node167)
  Position_SetPosition(node167, MAT_Vector3(2240.046523, 3200.445255, 100.131605))
  Position_SetRadius(node167, 5)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node157, node168)
  Position_SetPosition(node168, MAT_Vector3(2226.864021, 3311.672615, 96.828957))
  Position_SetRadius(node168, 5)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node157, node169)
  Position_SetPosition(node169, MAT_Vector3(2209.079038, 3397.543372, 138.631937))
  Position_SetRadius(node169, 5)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node157, node170)
  Position_SetPosition(node170, MAT_Vector3(2307.379448, 3486.866881, 141.058077))
  Position_SetRadius(node170, 5)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node157, node171)
  Position_SetPosition(node171, MAT_Vector3(2428.788543, 3541.7114, 153.355592))
  Position_SetRadius(node171, 5)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node157, node172)
  Position_SetPosition(node172, MAT_Vector3(2544.040653, 3609.653623, 161.696712))
  Position_SetRadius(node172, 5)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node157, node173)
  Position_SetPosition(node173, MAT_Vector3(2577.820814, 3674.742226, 158.184646))
  Position_SetRadius(node173, 5)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node157, node174)
  Position_SetPosition(node174, MAT_Vector3(2599.24238, 3734.063485, 222.292986))
  Position_SetRadius(node174, 5)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_PatrolArea", "Bonus2_AttackArea")
  Node_AddSon(node118, node175)
  PatrolArea_SetPosition(node175, MAT_Vector3(3007.507455, 2157.514321, 226.505373))
  PatrolArea_SetRadius(node175, 512)
  PatrolArea_SetMinZ(node175, -150)
  PatrolArea_SetMaxZ(node175, 350)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_Path", "WingmenEscapePath")
  Node_AddSon(node118, node176)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node176, node177)
  Position_SetPosition(node177, MAT_Vector3(2264.871284, 2480.632621, 387.178922))
  Position_SetRadius(node177, 20)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node176, node178)
  Position_SetPosition(node178, MAT_Vector3(2459.779892, 2968.952036, 103.259225))
  Position_SetRadius(node178, 5)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node176, node179)
  Position_SetPosition(node179, MAT_Vector3(2507.983096, 3300.087089, 205.837643))
  Position_SetRadius(node179, 5)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node176, node180)
  Position_SetPosition(node180, MAT_Vector3(2709.179078, 3555.773649, 206.742983))
  Position_SetRadius(node180, 5)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node176, node181)
  Position_SetPosition(node181, MAT_Vector3(2818.369755, 3825.166148, 172.521948))
  Position_SetRadius(node181, 5)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("NOD_Path", "Harvester_1_ApproachPath")
  Node_AddSon(node118, node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node182, node183)
  Position_SetPosition(node183, MAT_Vector3(2830.860472, 3881.09795, 232.228464))
  Position_SetRadius(node183, 5)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node182, node184)
  Position_SetPosition(node184, MAT_Vector3(2830.625992, 3950.895717, 274.194624))
  Position_SetRadius(node184, 5)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_Path", "Harvester_1_DockPath")
  Node_AddSon(node118, node185)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node185, node186)
  Position_SetPosition(node186, MAT_Vector3(2822.329027, 3967.243951, 279.465673))
  Position_SetRadius(node186, 5)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node185, node187)
  Position_SetPosition(node187, MAT_Vector3(2784.658941, 4003.678937, 278.69257))
  Position_SetRadius(node187, 5)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_PatrolArea", "Harvester_1_DockArea")
  Node_AddSon(node118, node188)
  PatrolArea_SetPosition(node188, MAT_Vector3(2861.69292, 3897.726686, 260.138668))
  PatrolArea_SetRadius(node188, 100)
  PatrolArea_SetMinZ(node188, -50)
  PatrolArea_SetMaxZ(node188, 50)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_PatrolArea", "NAV1_WingArea")
  Node_AddSon(node118, node189)
  PatrolArea_SetPosition(node189, MAT_Vector3(2091.691404, 3316.959934, 175.619066))
  PatrolArea_SetRadius(node189, 125)
  PatrolArea_SetMinZ(node189, -75)
  PatrolArea_SetMaxZ(node189, 200)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node116, node190)
  Node_EnterSimulation(node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node116, node191)
  Node_EnterSimulation(node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Trigger", "TriggerNAV1Battle")
  Node_AddSon(node191, node192)
  Body_SetFriendOrFoeID(node192, 0)
  Body_SetPosition(node192, MAT_Vector3(1849.490734, 2946.952705, 225.749184))
  Trigger_SetPresenceSphere(node192, 450)
  Node_EnterSimulation(node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Trigger", "TriggerNAV2Battle")
  Node_AddSon(node191, node193)
  Body_SetFriendOrFoeID(node193, 0)
  Body_SetPosition(node193, MAT_Vector3(2028.156891, 1775.050153, 225.7492))
  Trigger_SetPresenceSphere(node193, 450)
  Node_EnterSimulation(node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Trigger", "TriggerNAV3Battle")
  Node_AddSon(node191, node194)
  Body_SetFriendOrFoeID(node194, 0)
  Body_SetPosition(node194, MAT_Vector3(1038.774284, 2188.867371, 225.7492))
  Trigger_SetPresenceSphere(node194, 450)
  Node_EnterSimulation(node194)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Trigger", "TriggerBonus2")
  Node_AddSon(node191, node195)
  Body_SetFriendOrFoeID(node195, 0)
  Body_SetPosition(node195, MAT_Vector3(3005.375918, 2154.54451, 324.813636))
  Trigger_SetPresenceSphere(node195, 550)
  Node_EnterSimulation(node195)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node116, node196)
  Node_EnterSimulation(node196)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node196, node197)
  Body_SetCS(node197, MAT_Vector3(2841.106459, 3917.594822, 207.946672), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node197, "osd/pla/pla_ship1.osd")
  Body_SetFriendOrFoeID(node197, 2)
  Node_EnterSimulation(node197)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("nod_vessel", "wng_mayday_1")
  Node_AddSon(node196, node198)
  Body_SetCS(node198, MAT_Vector3(2889.391338, 3981.111069, 222.011691), MAT_Vector3(129.263342, 0, 0))
  Node_ParseIniFile(node198, "osd/wng/wng_mayday.osd")
  Body_SetFriendOrFoeID(node198, 3)
  Body_SetNameKey(node198, -1)
  Body_SetCargoKey(node198, -1, 0)
  Body_SetCargoKey(node198, -1, 1)
  Body_SetCargoKey(node198, -1, 2)
  Node_EnterSimulation(node198)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("nod_vessel", "wng_stoney_1")
  Node_AddSon(node196, node199)
  Body_SetCS(node199, MAT_Vector3(2932.25928, 3939.530564, 200.590123), MAT_Vector3(122.769823, 0, 0))
  Node_ParseIniFile(node199, "osd/wng/wng_stoney.osd")
  Body_SetFriendOrFoeID(node199, 3)
  Body_SetNameKey(node199, -1)
  Body_SetCargoKey(node199, -1, 0)
  Body_SetCargoKey(node199, -1, 1)
  Body_SetCargoKey(node199, -1, 2)
  Node_EnterSimulation(node199)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("nod_waypoint", "nav_waypoint_1")
  Node_AddSon(node196, node200)
  Body_SetPosition(node200, MAT_Vector3(1861.758183, 3035.691622, 262.469557))
  WayPoint_SetRadius(node200, 50)
  Node_ParseIniFile(node200, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node200)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("nod_waypoint", "nav_waypoint_2")
  Node_AddSon(node196, node201)
  Body_SetPosition(node201, MAT_Vector3(2050.873278, 1753.941104, 208.750883))
  WayPoint_SetRadius(node201, 50)
  Node_ParseIniFile(node201, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node201)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("nod_waypoint", "nav_waypoint_3")
  Node_AddSon(node196, node202)
  Body_SetPosition(node202, MAT_Vector3(1061.545035, 2151.216665, 238.701331))
  WayPoint_SetRadius(node202, 50)
  Node_ParseIniFile(node202, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node202)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("NOD_Directory", "NAV1_Bandits")
  Node_AddSon(node196, node203)
  Node_EnterSimulation(node203)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("nod_vessel", "nav1_neoyuppie_1")
  Node_AddSon(node203, node204)
  Body_SetCS(node204, MAT_Vector3(1848.893783, 2945.478336, 200.685059), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node204, "osd/atl/atl_neoyuppie_narrow.osd")
  Body_SetFriendOrFoeID(node204, 4)
  Body_SetNameKey(node204, -1)
  Body_SetCargoKey(node204, -1, 0)
  Body_SetCargoKey(node204, -1, 1)
  Body_SetCargoKey(node204, -1, 2)
  Node_EnterSimulation(node204)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("nod_vessel", "nav1_neoyuppie_2")
  Node_AddSon(node203, node205)
  Body_SetCS(node205, MAT_Vector3(1872.613153, 2934.897899, 200.6851), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node205, "osd/atl/atl_neoyuppie_narrow.osd")
  Body_SetFriendOrFoeID(node205, 4)
  Body_SetNameKey(node205, -1)
  Body_SetCargoKey(node205, -1, 0)
  Body_SetCargoKey(node205, -1, 1)
  Body_SetCargoKey(node205, -1, 2)
  Node_EnterSimulation(node205)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("NOD_Directory", "NAV2_Bandits")
  Node_AddSon(node196, node206)
  Node_EnterSimulation(node206)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("nod_vessel", "nav2_neoyuppie_1")
  Node_AddSon(node206, node207)
  Body_SetCS(node207, MAT_Vector3(2039.435535, 1757.503848, 213.066451), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node207, "osd/atl/atl_neoyuppie_narrow.osd")
  Body_SetFriendOrFoeID(node207, 4)
  Body_SetNameKey(node207, -1)
  Body_SetCargoKey(node207, -1, 0)
  Body_SetCargoKey(node207, -1, 1)
  Body_SetCargoKey(node207, -1, 2)
  Node_EnterSimulation(node207)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("NOD_Directory", "NAV3_Bandits")
  Node_AddSon(node196, node208)
  Node_EnterSimulation(node208)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("nod_vessel", "nav3_neoyuppie_1")
  Node_AddSon(node208, node209)
  Body_SetCS(node209, MAT_Vector3(958.865632, 2170.839104, 227.244019), MAT_Vector3(-48.606601, 0, 0))
  Node_ParseIniFile(node209, "osd/atl/atl_neoyuppie_narrow.osd")
  Body_SetFriendOrFoeID(node209, 4)
  Body_SetNameKey(node209, -1)
  Body_SetCargoKey(node209, -1, 0)
  Body_SetCargoKey(node209, -1, 1)
  Body_SetCargoKey(node209, -1, 2)
  Node_EnterSimulation(node209)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("nod_vessel", "nav3_neoyuppie_2")
  Node_AddSon(node208, node210)
  Body_SetCS(node210, MAT_Vector3(1018.148629, 2124.152563, 227.244), MAT_Vector3(3.381292, 0, 0))
  Node_ParseIniFile(node210, "osd/atl/atl_neoyuppie_narrow.osd")
  Body_SetFriendOrFoeID(node210, 4)
  Body_SetNameKey(node210, -1)
  Body_SetCargoKey(node210, -1, 0)
  Body_SetCargoKey(node210, -1, 1)
  Body_SetCargoKey(node210, -1, 2)
  Node_EnterSimulation(node210)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("nod_vessel", "nav3_neoyuppie_3")
  Node_AddSon(node208, node211)
  Body_SetCS(node211, MAT_Vector3(1099.733509, 2203.083789, 227.244), MAT_Vector3(31.083236, 0, 0))
  Node_ParseIniFile(node211, "osd/atl/atl_neoyuppie_narrow.osd")
  Body_SetFriendOrFoeID(node211, 4)
  Body_SetNameKey(node211, -1)
  Body_SetCargoKey(node211, -1, 0)
  Body_SetCargoKey(node211, -1, 1)
  Body_SetCargoKey(node211, -1, 2)
  Node_EnterSimulation(node211)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("nod_vessel", "nav3_neoyuppie_4")
  Node_AddSon(node208, node212)
  Body_SetCS(node212, MAT_Vector3(1050.598505, 2274.025001, 227.244), MAT_Vector3(158.570911, 0, 0))
  Node_ParseIniFile(node212, "osd/atl/atl_neoyuppie_narrow.osd")
  Body_SetFriendOrFoeID(node212, 4)
  Body_SetNameKey(node212, -1)
  Body_SetCargoKey(node212, -1, 0)
  Body_SetCargoKey(node212, -1, 1)
  Body_SetCargoKey(node212, -1, 2)
  Node_EnterSimulation(node212)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("nod_vessel", "atl_bomber_weak_1")
  Node_AddSon(node208, node213)
  Body_SetCS(node213, MAT_Vector3(1083.188674, 2194.220373, 282.230164), MAT_Vector3(9.605519, 0, 0))
  Node_ParseIniFile(node213, "osd/atl/atl_bomber_weak.osd")
  Body_SetFriendOrFoeID(node213, 4)
  Body_SetNameKey(node213, -1)
  Body_SetCargoKey(node213, -1, 0)
  Body_SetCargoKey(node213, -1, 1)
  Body_SetCargoKey(node213, -1, 2)
  Node_EnterSimulation(node213)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("NOD_Directory", "BonusTarget2_Dir")
  Node_AddSon(node196, node214)
  Node_EnterSimulation(node214)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("nod_trash", "gen_clunker_freighter_1")
  Node_AddSon(node214, node215)
  Body_SetCS(node215, MAT_Vector3(3006.426011, 2150.340872, 377.999114), MAT_Vector3(-4.391863, -22.513528, 8.682171))
  Node_ParseIniFile(node215, "osd/gen/gen_clunker_freighter.osd")
  Body_SetFriendOrFoeID(node215, 0)
  Node_EnterSimulation(node215)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("nod_vessel", "pir_tz_scout1_1")
  Node_AddSon(node214, node216)
  Body_SetCS(node216, MAT_Vector3(2905.569384, 2184.494281, 401.212686), MAT_Vector3(-106.787554, 0, 0))
  Node_ParseIniFile(node216, "osd/pir_tz/pir_tz_scout1_wide.osd")
  Body_SetFriendOrFoeID(node216, 4)
  Body_SetNameKey(node216, -1)
  Body_SetCargoKey(node216, -1, 0)
  Body_SetCargoKey(node216, -1, 1)
  Body_SetCargoKey(node216, -1, 2)
  Node_EnterSimulation(node216)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("nod_vessel", "pir_tz_scout1_2")
  Node_AddSon(node214, node217)
  Body_SetCS(node217, MAT_Vector3(3069.718118, 2049.868105, 401.2127), MAT_Vector3(20.884462, 0, 0))
  Node_ParseIniFile(node217, "osd/pir_tz/pir_tz_scout1_wide.osd")
  Body_SetFriendOrFoeID(node217, 4)
  Body_SetNameKey(node217, -1)
  Body_SetCargoKey(node217, -1, 0)
  Body_SetCargoKey(node217, -1, 1)
  Body_SetCargoKey(node217, -1, 2)
  Node_EnterSimulation(node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node218)
  Camera_SetBackPlane(node218, 1024)
  Node_EnterSimulation(node218)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("NOD_Scenario", "IngameScenes")
  Node_AddSon(node0, node219)
  Node_EnterSimulation(node219)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node219, node220)
  Node_EnterSimulation(node220)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node219, node221)
  Node_EnterSimulation(node221)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("NOD_Path", "PlayerPath_1")
  Node_AddSon(node221, node222)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node222, node223)
  Position_SetPosition(node223, MAT_Vector3(2780.635401, 4007.127959, 278.6926))
  Position_SetRadius(node223, 5)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node222, node224)
  Position_SetPosition(node224, MAT_Vector3(2822.329, 3967.244, 279.4657))
  Position_SetRadius(node224, 5)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node222, node225)
  Position_SetPosition(node225, MAT_Vector3(2823.823316, 3909.742926, 175.002678))
  Position_SetRadius(node225, 5)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node222, node226)
  Position_SetPosition(node226, MAT_Vector3(2778.948005, 3840.0681, 176.810689))
  Position_SetRadius(node226, 5)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node222, node227)
  Position_SetPosition(node227, MAT_Vector3(2652.588576, 3726.698893, 216.703515))
  Position_SetRadius(node227, 5)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node222, node228)
  Position_SetPosition(node228, MAT_Vector3(2489.620341, 3627.500837, 224.849075))
  Position_SetRadius(node228, 5)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node222, node229)
  Position_SetPosition(node229, MAT_Vector3(2321.928389, 3542.473932, 194.215278))
  Position_SetRadius(node229, 5)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node221, node230)
  Position_SetPosition(node230, MAT_Vector3(2818.341558, 3970.322563, 274.377192))
  Position_SetRadius(node230, 5)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("NOD_Position", "LookFrom_2")
  Node_AddSon(node221, node231)
  Position_SetPosition(node231, MAT_Vector3(2451.572063, 3613.749723, 218.237945))
  Position_SetRadius(node231, 5)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node219, node232)
  Node_EnterSimulation(node232)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("NOD_Director", "Intro")
  Node_AddSon(node232, node233)
  Node_EnterSimulation(node233)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("NOD_Director", "Intro_AddOn")
  Node_AddSon(node232, node234)
  Node_EnterSimulation(node234)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("NOD_Director", "Intro_Audio")
  Node_AddSon(node232, node235)
  Node_EnterSimulation(node235)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node219, node236)
  Node_EnterSimulation(node236)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node219, node237)
  Node_EnterSimulation(node237)
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
SetEnemyMatrixElement(2, 1, N)
SetEnemyMatrixElement(3, 1, N)
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
SetEnemyMatrixElement(0, 2, N)
SetEnemyMatrixElement(1, 2, N)
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
SetEnemyMatrixElement(0, 3, N)
SetEnemyMatrixElement(1, 3, N)
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
SetEnemyMatrixElement(0, 4, E)
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
                                                                                                                                                                                                          if not (o4677.Value ~= True) then
                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                  if not (True ~= True) then
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
S_o2054 = { [nil] = {}, Start = function(L0)

end }
S_o2100 = { [nil] = {}, Start = function(L0)

end }
S_o2146 = { [nil] = {}, Start = function(L0)

end }
S_o2192 = { [nil] = {}, Start = function(L0)

end }
S_o2238 = { [nil] = {}, Start = function(L0)

end }
S_o2284 = { [nil] = {}, Start = function(L0)

end }
S_o2330 = { [nil] = {}, Start = function(L0)

end }
S_o2376 = { [nil] = {}, Start = function(L0)

end }
S_o2422 = { [nil] = {}, Start = function(L0)

end }
S_o2468 = { [nil] = {}, Start = function(L0)

end }
S_o2514 = { [nil] = {}, Start = function(L0)

end }
S_o2560 = { [nil] = {}, Start = function(L0)

end }
S_o2606 = { [nil] = {}, Start = function(L0)

end }
S_o2650 = { [nil] = {}, Start = function(L0)

end }
S_o2694 = { [nil] = {}, Start = function(L0)

end }
S_o2738 = { [nil] = {}, Start = function(L0)

end }
S_o2782 = { [nil] = {}, Start = function(L0)

end }
S_o2826 = { [nil] = {}, Start = function(L0)

end }
S_o2870 = { [nil] = {}, Start = function(L0)

end }
S_o2916 = { [nil] = {}, Start = function(L0)

end }
S_o2962 = { [nil] = {}, Start = function(L0)

end }
S_o3008 = { [nil] = {}, Start = function(L0)

end }
S_o3054 = { [nil] = {}, Start = function(L0)

end }
S_o3100 = { [nil] = {}, Start = function(L0)

end }
S_o3146 = { [nil] = {}, Start = function(L0)

end }
S_o3192 = { [nil] = {}, Start = function(L0)

end }
S_o3238 = { [nil] = {}, Start = function(L0)

end }
S_o3284 = { [nil] = {}, Start = function(L0)

end }
S_o3330 = { [nil] = {}, Start = function(L0)

end }
S_o3376 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3376, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3376, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3376, "Code3")
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
S_o3423 = { [nil] = {}, Start = function(L0)

end }
S_o3469 = { [nil] = {}, Start = function(L0)

end }
S_o3515 = { [nil] = {}, Start = function(L0)

end }
S_o3561 = { [nil] = {}, Start = function(L0)

end }
S_o3607 = { [nil] = {}, Start = function(L0)

end }
S_o3653 = { [nil] = {}, Start = function(L0)

end }
S_o3699 = { [nil] = {}, Start = function(L0)

end }
S_o3745 = { [nil] = {}, Start = function(L0)

end }
S_o3791 = { [nil] = {}, Start = function(L0)

end }
S_o3837 = { [nil] = {}, Start = function(L0)

end }
S_o3883 = { [nil] = {}, Start = function(L0)

end }
S_o3929 = { [nil] = {}, Start = function(L0)

end }
S_o3975 = { [nil] = {}, Start = function(L0)

end }
S_o4021 = { [nil] = {}, Start = function(L0)

end }
S_o4067 = { [nil] = {}, Start = function(L0)

end }
S_o4113 = { [nil] = {}, Start = function(L0)

end }
S_o4159 = { [nil] = {}, Start = function(L0)

end }
S_o4205 = { [nil] = {}, Start = function(L0)

end }
S_o4251 = { [nil] = {}, Start = function(L0)

end }
S_o4297 = { [nil] = {}, Start = function(L0)

end }
S_o4343 = { [nil] = {}, Start = function(L0)

end }
S_o4389 = { [nil] = {}, Start = function(L0)

end }
S_o4435 = { [nil] = {}, Start = function(L0)

end }
S_o4481 = { [nil] = {}, Start = function(L0)

end }
S_o4527 = { [nil] = {}, Start = function(L0)

end }
S_o4573 = { [nil] = {}, Start = function(L0)

end }
S_o4619 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 30, 0.9)
  CallFunction(o4619, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4620 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/Harvester_1_ApproachPath", "/Scenario_Dynamic/Navigation/Harvester_1_DockPath", "/Scenario_Dynamic/Navigation/Harvester_1_DockArea")
S_o4621 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4621, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4621, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4621, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o4621, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4621, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4621, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4626.SetStateValue(L1)
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
o4626 = { [nil] = {}, Start = function()
  o4626["Value"] = False
  o4659.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4626.Value == L0) then
    o4626["Value"] = L0
    o4659.ReCalculate()
  end
end }
S_o4627 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4627, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4627, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4627, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o4627, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4627, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4627, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4632.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4628.Value ~= True) then
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
o4628 = { [nil] = {}, GetCalculated = function()
  if not (o4662.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4628.SetStateValue(o4628.GetCalculated())
end, StartCalculate = function()
  o4628["Value"] = o4628.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4628.Value == L0) then
    o4628["Value"] = L0
    CallFunction(o4627, "ProcesseStateChange")
  end
end }
o4632 = { [nil] = {}, Start = function()
  o4632["Value"] = False
  o4663.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4632.Value == L0) then
    o4632["Value"] = L0
    o4663.ReCalculate()
  end
end }
S_o4633 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4633, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4633, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4633, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o4633, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4633, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4633, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4638.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4634.Value ~= True) then
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
o4634 = { [nil] = {}, GetCalculated = function()
  if not (o4665.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4634.SetStateValue(o4634.GetCalculated())
end, StartCalculate = function()
  o4634["Value"] = o4634.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4634.Value == L0) then
    o4634["Value"] = L0
    CallFunction(o4633, "ProcesseStateChange")
  end
end }
o4638 = { [nil] = {}, Start = function()
  o4638["Value"] = False
  o4666.StartCalculate()
  o4795.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4638.Value == L0) then
    o4638["Value"] = L0
    o4666.ReCalculate()
    o4795.ReCalculate()
  end
end }
S_o4639 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4639, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4639, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4639, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o4639, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4639, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4639, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4644.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4641.Value ~= True) then
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
o4641 = { [nil] = {}, GetCalculated = function()
  if not (o5319.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4641.SetStateValue(o4641.GetCalculated())
end, StartCalculate = function()
  o4641["Value"] = o4641.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4641.Value == L0) then
    o4641["Value"] = L0
    CallFunction(o4639, "ProcesseStateChange")
  end
end }
o4644 = { [nil] = {}, Start = function()
  o4644["Value"] = False
  o4670.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4644.Value == L0) then
    o4644["Value"] = L0
    o4670.ReCalculate()
  end
end }
S_o4645 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_vendetta2", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_shell", 9999)
  Body_AddItem(L0.Node, "torpedo_stanley", 2)
  Body_AddItem(L0.Node, "buzzer_normal", 4)
  Body_AddItem(L0.Node, "device_generator0", 1)
  CallFunction(o4645, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
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
o4659 = { [nil] = {}, GetCalculated = function()
  if not (o4626.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4659.SetStateValue(o4659.GetCalculated())
end, StartCalculate = function()
  o4659["Value"] = o4659.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
  SendRadioMessageTake(o3376.Node, o4645.Node, 13)
  SendRadioMessageTake(o4705.Node, o4645.Node, 14)
  SendRadioMessageTake(o4780.Node, o4645.Node, 15)
  SED_SetTaskTextKey(2101, -1, -1)
  Game_PlayMusic(GetGameNode(), "Agressive")
end, SetStateValue = function(L0)
  if not (o4659.Value == L0) then
    o4659["Value"] = L0
    if not (L0 ~= 1) then
      o4659.ChangeTo1()
    end
  end
end }
o4660 = { [nil] = {}, GetCalculated = function()
  if not (o4885.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4660.SetStateValue(o4660.GetCalculated())
end, StartCalculate = function()
  o4660["Value"] = o4660.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4705.Node, o4645.Node, 16)
end, SetStateValue = function(L0)
  if not (o4660.Value == L0) then
    o4660["Value"] = L0
    if not (L0 ~= 1) then
      o4660.ChangeTo1()
    end
  end
end }
o4661 = { [nil] = {}, GetCalculated = function()
  if not (o4941.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4661.SetStateValue(o4661.GetCalculated())
end, StartCalculate = function()
  o4661["Value"] = o4661.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4780.Node, o4645.Node, 17)
end, SetStateValue = function(L0)
  if not (o4661.Value == L0) then
    o4661["Value"] = L0
    if not (L0 ~= 1) then
      o4661.ChangeTo1()
    end
  end
end }
o4662 = { [nil] = {}, GetCalculated = function()
  if not (o4885.Value ~= True) then
    if not (o4941.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o4662.SetStateValue(o4662.GetCalculated())
end, StartCalculate = function()
  o4662["Value"] = o4662.GetCalculated()
  o4628.StartCalculate()
  o4675.StartCalculate()
  o4709.StartCalculate()
  o4719.StartCalculate()
  o4784.StartCalculate()
  o4793.StartCalculate()
  o4982.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2101)
  Game_SetWayPoint(GetGameNode(), o4858.Node)
  SendRadioMessageTake(o3376.Node, o4645.Node, 18)
  SED_SetTaskTextKey(2102, -1, -1)
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o4662.Value == L0) then
    DelayedFunction(5, o4662, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4662.Value == L0) then
    o4662["Value"] = L0
    o4628.ReCalculate()
    o4675.ReCalculate()
    o4709.ReCalculate()
    o4719.ReCalculate()
    o4784.ReCalculate()
    o4793.ReCalculate()
    o4982.ReCalculate()
    if not (L0 ~= 1) then
      o4662.ChangeTo1()
    end
  end
end }
o4663 = { [nil] = {}, GetCalculated = function()
  if not (o4632.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4663.SetStateValue(o4663.GetCalculated())
end, StartCalculate = function()
  o4663["Value"] = o4663.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2102)
  SendRadioMessageTake(o3376.Node, o4645.Node, 19)
  SED_SetTaskTextKey(2103, -1, -1)
  Game_PlayMusic(GetGameNode(), "Track3")
end, SetStateValue = function(L0)
  if not (o4663.Value == L0) then
    o4663["Value"] = L0
    if not (L0 ~= 1) then
      o4663.ChangeTo1()
    end
  end
end }
o4664 = { [nil] = {}, GetCalculated = function()
  if not (o4997.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4664.SetStateValue(o4664.GetCalculated())
end, StartCalculate = function()
  o4664["Value"] = o4664.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4780.Node, o4645.Node, 20)
  SendRadioMessageTake(o4705.Node, o4645.Node, 21)
end, SetStateValue = function(L0)
  if not (o4664.Value == L0) then
    o4664["Value"] = L0
    if not (L0 ~= 1) then
      o4664.ChangeTo1()
    end
  end
end }
o4665 = { [nil] = {}, GetCalculated = function()
  if not (o4997.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4665.SetStateValue(o4665.GetCalculated())
end, StartCalculate = function()
  o4665["Value"] = o4665.GetCalculated()
  o4634.StartCalculate()
  o4675.StartCalculate()
  o4720.StartCalculate()
  o4794.StartCalculate()
  o5038.StartCalculate()
  o5094.StartCalculate()
  o5150.StartCalculate()
  o5206.StartCalculate()
  o5262.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 2, 2000, 2103)
  SendRadioMessageTake(o3376.Node, o4645.Node, 22)
  SED_SetTaskTextKey(2104, -1, -1)
  Game_SetWayPoint(GetGameNode(), o4863.Node)
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o4665.Value == L0) then
    DelayedFunction(5, o4665, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4665.Value == L0) then
    o4665["Value"] = L0
    o4634.ReCalculate()
    o4675.ReCalculate()
    o4720.ReCalculate()
    o4794.ReCalculate()
    o5038.ReCalculate()
    o5094.ReCalculate()
    o5150.ReCalculate()
    o5206.ReCalculate()
    o5262.ReCalculate()
    if not (L0 ~= 1) then
      o4665.ChangeTo1()
    end
  end
end }
o4666 = { [nil] = {}, GetCalculated = function()
  if not (o4638.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4666.SetStateValue(o4666.GetCalculated())
end, StartCalculate = function()
  o4666["Value"] = o4666.GetCalculated()
  o4721.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3376.Node, o4645.Node, 23)
  SendRadioMessageTake(o4780.Node, o4645.Node, 24)
  SendRadioMessageTake(o3376.Node, o4645.Node, 25)
  SendRadioMessageTake(o4705.Node, o4645.Node, 26)
  SendRadioMessageTake(o4780.Node, o4645.Node, 27)
  SendRadioMessageTake(o4705.Node, o4645.Node, 28)
  SendRadioMessageTake(o3376.Node, o4645.Node, 29)
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2104)
  SED_SetTaskTextKey(2101, -1, -1)
  Game_PlayMusic(GetGameNode(), "Agressive")
end, SetStateValue = function(L0)
  if not (o4666.Value == L0) then
    o4666["Value"] = L0
    o4721.ReCalculate()
    if not (L0 ~= 1) then
      o4666.ChangeTo1()
    end
  end
end }
o4667 = { [nil] = {}, GetCalculated = function()
  if not (o5053.Value ~= True) then
    if not (o5109.Value ~= True) then
      if not (o5165.Value ~= True) then
        if not (o5221.Value ~= True) then
          if not (o5277.Value ~= True) then
            return 1
          else
            return 0
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o4667.SetStateValue(o4667.GetCalculated())
end, StartCalculate = function()
  o4667["Value"] = o4667.GetCalculated()
  o4675.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 3, 2000, 2101)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  SED_SetTaskTextKey(0, -1, -1)
  Game_PlayMusic(GetGameNode(), "Atmo")
  SendRadioMessageTake(o4780.Node, o4645.Node, 31)
end, SetStateValue = function(L0)
  if not (o4667.Value == L0) then
    DelayedFunction(5, o4667, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4667.Value == L0) then
    o4667["Value"] = L0
    o4675.ReCalculate()
    if not (L0 ~= 1) then
      o4667.ChangeTo1()
    end
  end
end }
o4668 = { [nil] = {}, Start = function()
  o4668["Value"] = False
  o4669.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4668.Value == L0) then
    o4668["Value"] = L0
    o4669.ReCalculate()
  end
end }
o4669 = { [nil] = {}, GetCalculated = function()
  if not (o4668.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4669.SetStateValue(o4669.GetCalculated())
end, StartCalculate = function()
  o4669["Value"] = o4669.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3376.Node, o4645.Node, 32)
end, SetStateValue = function(L0)
  if not (o4669.Value == L0) then
    o4669["Value"] = L0
    if not (L0 ~= 1) then
      o4669.ChangeTo1()
    end
  end
end }
o4670 = { [nil] = {}, GetCalculated = function()
  if not (o4644.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4670.SetStateValue(o4670.GetCalculated())
end, StartCalculate = function()
  o4670["Value"] = o4670.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3376.Node, o4645.Node, 36)
end, SetStateValue = function(L0)
  if not (o4670.Value == L0) then
    DelayedFunction(2, o4670, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4670.Value == L0) then
    o4670["Value"] = L0
    if not (L0 ~= 1) then
      o4670.ChangeTo1()
    end
  end
end }
o4671 = { [nil] = {}, GetCalculated = function()
  if not (o5282.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4671.SetStateValue(o4671.GetCalculated())
end, StartCalculate = function()
  o4671["Value"] = o4671.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4705.Node, o4645.Node, 34)
end, SetStateValue = function(L0)
  if not (o4671.Value == L0) then
    o4671["Value"] = L0
    if not (L0 ~= 1) then
      o4671.ChangeTo1()
    end
  end
end }
o4672 = { [nil] = {}, GetCalculated = function()
  if not (o5283.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4672.SetStateValue(o4672.GetCalculated())
end, StartCalculate = function()
  o4672["Value"] = o4672.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4780.Node, o4645.Node, 35)
end, SetStateValue = function(L0)
  if not (o4672.Value == L0) then
    o4672["Value"] = L0
    if not (L0 ~= 1) then
      o4672.ChangeTo1()
    end
  end
end }
o4673 = { [nil] = {}, GetCalculated = function()
  if not (o4817.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4673.SetStateValue(o4673.GetCalculated())
end, StartCalculate = function()
  o4673["Value"] = o4673.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o4780, "Code28")
end, SetStateValue = function(L0)
  if not (o4673.Value == L0) then
    o4673["Value"] = L0
    if not (L0 ~= 1) then
      o4673.ChangeTo1()
    end
  end
end }
o4674 = { [nil] = {}, GetCalculated = function()
  if not (o4744.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4674.SetStateValue(o4674.GetCalculated())
end, StartCalculate = function()
  o4674["Value"] = o4674.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o4705, "Code32")
end, SetStateValue = function(L0)
  if not (o4674.Value == L0) then
    o4674["Value"] = L0
    if not (L0 ~= 1) then
      o4674.ChangeTo1()
    end
  end
end }
o4675 = { [nil] = {}, GetCalculated = function()
  if not (o4662.Value ~= True) then
    if not (o4665.Value ~= True) then
      if not (o4667.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o4675.SetStateValue(o4675.GetCalculated())
end, StartCalculate = function()
  o4675["Value"] = o4675.GetCalculated()
  o4677.StartCalculate()
  o4722.StartCalculate()
  o4796.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3376.Node, o4645.Node, 30)
  SendRadioMessageTake(o4780.Node, o4645.Node, 755)
end, SetStateValue = function(L0)
  if not (o4675.Value == L0) then
    DelayedFunction(5, o4675, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4675.Value == L0) then
    o4675["Value"] = L0
    o4677.ReCalculate()
    o4722.ReCalculate()
    o4796.ReCalculate()
    if not (L0 ~= 1) then
      o4675.ChangeTo1()
    end
  end
end }
o4676 = { [nil] = {}, GetCalculated = function()
  if not (o5319.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4676.SetStateValue(o4676.GetCalculated())
end, StartCalculate = function()
  o4676["Value"] = o4676.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveFailed(GetGameNode(), 2, 0, 0)
end, SetStateValue = function(L0)
  if not (o4676.Value == L0) then
    o4676["Value"] = L0
    if not (L0 ~= 1) then
      o4676.ChangeTo1()
    end
  end
end }
o4677 = { [nil] = {}, GetCalculated = function()
  if not (o4675.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4677.SetStateValue(o4677.GetCalculated())
end, StartCalculate = function()
  o4677["Value"] = o4677.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4677.Value == L0) then
    o4677["Value"] = L0
    o2.ReCalculate()
  end
end }
o4685 = { [nil] = {}, GetCalculated = function()
  if not (o5281.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4685.SetStateValue(o4685.GetCalculated())
end, StartCalculate = function()
  o4685["Value"] = o4685.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3376.Node, o4645.Node, 33)
  Game_BonusObjectiveReached(GetGameNode(), 1, 2002, 2105)
end, SetStateValue = function(L0)
  if not (o4685.Value == L0) then
    o4685["Value"] = L0
    if not (L0 ~= 1) then
      o4685.ChangeTo1()
    end
  end
end }
o4686 = { [nil] = {}, GetCalculated = function()
  if not (o5373.Value ~= True) then
    if not (o5429.Value ~= True) then
      if not (o5319.Value ~= False) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o4686.SetStateValue(o4686.GetCalculated())
end, StartCalculate = function()
  o4686["Value"] = o4686.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 2, 2002, 2106)
  SendRadioMessageTake(o3376.Node, o4645.Node, 37)
end, SetStateValue = function(L0)
  if not (o4686.Value == L0) then
    o4686["Value"] = L0
    if not (L0 ~= 1) then
      o4686.ChangeTo1()
    end
  end
end }
S_o4705 = { [nil] = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4705, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4705, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4705, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetShieldBarrier(L0.Node, 0.09, 0.1)
  CallFunction(o4705, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MayDay_Path1", 0.6, 1 } }("Code5")
  else
    CallFunction(o4705, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code6")
  else
    CallFunction(o4705, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/NAV1_WingArea", "/Scenario_Dynamic/Navigation/NAV1_WingArea", "/Scenario_Dynamic/Navigation/NAV1_WingArea", "E", "", "", "", 0, "Code7")
  else
    CallFunction(o4705, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code8")
  else
    CallFunction(o4705, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4705, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MayDay_Path2", 1, 1 } }("Code10")
  else
    CallFunction(o4705, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5 } }("Code11")
  else
    CallFunction(o4705, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code12")
  else
    CallFunction(o4705, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4705, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code14")
  else
    CallFunction(o4705, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MayDay_Path3", 1, 1 } }("Code15")
  else
    CallFunction(o4705, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code16")
  else
    CallFunction(o4705, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code17")
  else
    CallFunction(o4705, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4705, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code19")
  else
    CallFunction(o4705, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 14 } }("Code20")
  else
    CallFunction(o4705, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  o4668.SetStateValue(True)
  CallFunction(o4705, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/NAV3_AttackArea", "E", "", "", "", 10, 1, "Code22")
  else
    CallFunction(o4705, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code23")
  else
    CallFunction(o4705, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code24")
  else
    CallFunction(o4705, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4705, "Code25")
  end
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code26")
  else
    CallFunction(o4705, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MayDay_PathHome", 1, 1 } }("Code27")
  else
    CallFunction(o4705, "Code27")
  end
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o4620, nil, 1e+32, "Code28")
  else
    CallFunction(o4705, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code29")
  else
    CallFunction(o4705, "Code29")
  end
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4705, "Code30")
  end
end }, Code30 = function(L0)
  L0["CodeIndex"] = 30
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code31")
  else
    CallFunction(o4705, "Code31")
  end
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4705, "Code32")
  end
end, Code32 = function(L0)
  L0["CodeIndex"] = 32
  StopAllActiveBehaviours(L0)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o4705, "Code34")
end, Code34 = function(L0)
  L0["CodeIndex"] = 34
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code35")
  else
    CallFunction(o4705, "Code35")
  end
end, Code35 = function(L0)
  L0["CodeIndex"] = 35
  Vessel_CollisionObjects(L0.Node, 1)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o4705, "Code37")
end, Code37 = function(L0)
  L0["CodeIndex"] = 37
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/WingmenEscapePath", 1, 2 } }("Code38")
  else
    CallFunction(o4705, "Code38")
  end
end, Code38 = function(L0)
  L0["CodeIndex"] = 38
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o4620, nil, 1e+32, "Code39")
  else
    CallFunction(o4705, "Code39")
  end
end, Code39 = function(L0)
  L0["CodeIndex"] = 39
end, SetStateValue_KineticShield10 = function(L0, L1)
  o4744.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o4709.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o4719.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 12) then
    if not (L0.CodeIndex >= 13) then
      if not (o4720.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 17) then
    if not (L0.CodeIndex >= 18) then
      if not (o4721.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 24) then
    if not (L0.CodeIndex >= 25) then
      if not (o4722.Value ~= True) then
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
o4709 = { [nil] = {}, GetCalculated = function()
  if not (o4662.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4709.SetStateValue(o4709.GetCalculated())
end, StartCalculate = function()
  o4709["Value"] = o4709.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4709.Value == L0) then
    o4709["Value"] = L0
    CallFunction(o4705, "ProcesseStateChange")
  end
end }
o4719 = { [nil] = {}, GetCalculated = function()
  if not (o4662.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4719.SetStateValue(o4719.GetCalculated())
end, StartCalculate = function()
  o4719["Value"] = o4719.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4719.Value == L0) then
    DelayedFunction(6, o4719, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4719.Value == L0) then
    o4719["Value"] = L0
    CallFunction(o4705, "ProcesseStateChange")
  end
end }
o4720 = { [nil] = {}, GetCalculated = function()
  if not (o4665.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4720.SetStateValue(o4720.GetCalculated())
end, StartCalculate = function()
  o4720["Value"] = o4720.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4720.Value == L0) then
    DelayedFunction(6, o4720, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4720.Value == L0) then
    o4720["Value"] = L0
    CallFunction(o4705, "ProcesseStateChange")
  end
end }
o4721 = { [nil] = {}, GetCalculated = function()
  if not (o4666.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4721.SetStateValue(o4721.GetCalculated())
end, StartCalculate = function()
  o4721["Value"] = o4721.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4721.Value == L0) then
    DelayedFunction(6, o4721, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4721.Value == L0) then
    o4721["Value"] = L0
    CallFunction(o4705, "ProcesseStateChange")
  end
end }
o4722 = { [nil] = {}, GetCalculated = function()
  if not (o4675.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4722.SetStateValue(o4722.GetCalculated())
end, StartCalculate = function()
  o4722["Value"] = o4722.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4722.Value == L0) then
    o4722["Value"] = L0
    CallFunction(o4705, "ProcesseStateChange")
  end
end }
o4744 = { [nil] = {}, Start = function()
  o4744["Value"] = False
  o4674.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4744.Value == L0) then
    o4744["Value"] = L0
    o4674.ReCalculate()
  end
end }
S_o4780 = { [nil] = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4780, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4780, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4780, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Stoney_Path1", 0.6, 1 } }("Code4")
  else
    CallFunction(o4780, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code5")
  else
    CallFunction(o4780, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/NAV1_WingArea", "/Scenario_Dynamic/Navigation/NAV1_WingArea", "/Scenario_Dynamic/Navigation/NAV1_WingArea", "E", "", "", "", 0, "Code6")
  else
    CallFunction(o4780, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o4780, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4780, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Stoney_Path2", 1, 1 } }("Code9")
  else
    CallFunction(o4780, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5 } }("Code10")
  else
    CallFunction(o4780, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code11")
  else
    CallFunction(o4780, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4780, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code13")
  else
    CallFunction(o4780, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Stoney_Path3", 1, 1 } }("Code14")
  else
    CallFunction(o4780, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code15")
  else
    CallFunction(o4780, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code16")
  else
    CallFunction(o4780, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4780, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code18")
  else
    CallFunction(o4780, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 14 } }("Code19")
  else
    CallFunction(o4780, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/NAV3_AttackArea", "E", "", "", "", 10, 1, "Code20")
  else
    CallFunction(o4780, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code21")
  else
    CallFunction(o4780, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code22")
  else
    CallFunction(o4780, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4780, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code24")
  else
    CallFunction(o4780, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Stoney_PathHome", 1, 1 } }("Code25")
  else
    CallFunction(o4780, "Code25")
  end
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code26")
  else
    CallFunction(o4780, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code27")
  else
    CallFunction(o4780, "Code27")
  end
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4780, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  StopAllActiveBehaviours(L0)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o4780, "Code30")
end, Code30 = function(L0)
  L0["CodeIndex"] = 30
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code31")
  else
    CallFunction(o4780, "Code31")
  end
end }, Code31 = function(L0)
  L0["CodeIndex"] = 31
  Vessel_CollisionObjects(L0.Node, 1)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o4780, "Code33")
end, Code33 = function(L0)
  L0["CodeIndex"] = 33
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/WingmenEscapePath", 1, 2 } }("Code34")
  else
    CallFunction(o4780, "Code34")
  end
end, Code34 = function(L0)
  L0["CodeIndex"] = 34
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o4620, nil, 1e+32, "Code35")
  else
    CallFunction(o4780, "Code35")
  end
end, Code35 = function(L0)
  L0["CodeIndex"] = 35
end, SetStateValue_KineticShield10 = function(L0, L1)
  o4817.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o4784.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o4793.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 11) then
    if not (L0.CodeIndex >= 12) then
      if not (o4794.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 16) then
    if not (L0.CodeIndex >= 17) then
      if not (o4795.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 22) then
    if not (L0.CodeIndex >= 23) then
      if not (o4796.Value ~= True) then
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
o4784 = { [nil] = {}, GetCalculated = function()
  if not (o4662.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4784.SetStateValue(o4784.GetCalculated())
end, StartCalculate = function()
  o4784["Value"] = o4784.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4784.Value == L0) then
    o4784["Value"] = L0
    CallFunction(o4780, "ProcesseStateChange")
  end
end }
o4793 = { [nil] = {}, GetCalculated = function()
  if not (o4662.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4793.SetStateValue(o4793.GetCalculated())
end, StartCalculate = function()
  o4793["Value"] = o4793.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4793.Value == L0) then
    DelayedFunction(6, o4793, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4793.Value == L0) then
    o4793["Value"] = L0
    CallFunction(o4780, "ProcesseStateChange")
  end
end }
o4794 = { [nil] = {}, GetCalculated = function()
  if not (o4665.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4794.SetStateValue(o4794.GetCalculated())
end, StartCalculate = function()
  o4794["Value"] = o4794.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4794.Value == L0) then
    DelayedFunction(6, o4794, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4794.Value == L0) then
    o4794["Value"] = L0
    CallFunction(o4780, "ProcesseStateChange")
  end
end }
o4795 = { [nil] = {}, GetCalculated = function()
  if not (o4638.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4795.SetStateValue(o4795.GetCalculated())
end, StartCalculate = function()
  o4795["Value"] = o4795.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4795.Value == L0) then
    DelayedFunction(6, o4795, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4795.Value == L0) then
    o4795["Value"] = L0
    CallFunction(o4780, "ProcesseStateChange")
  end
end }
o4796 = { [nil] = {}, GetCalculated = function()
  if not (o4675.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4796.SetStateValue(o4796.GetCalculated())
end, StartCalculate = function()
  o4796["Value"] = o4796.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4796.Value == L0) then
    o4796["Value"] = L0
    CallFunction(o4780, "ProcesseStateChange")
  end
end }
o4817 = { [nil] = {}, Start = function()
  o4817["Value"] = False
  o4673.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4817.Value == L0) then
    o4817["Value"] = L0
    o4673.ReCalculate()
  end
end }
S_o4853 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o4853, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4858 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o4858, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4863 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o4863, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4868 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4868, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4868, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4868, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/NAV1_PatrolArea", "/Scenario_Dynamic/Navigation/NAV1_TriggerArea", "/Scenario_Dynamic/Navigation/NAV1_AttackArea", "player1", "", "", "", 0.25, "Code4")
  else
    CallFunction(o4868, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o4885.SetStateValue(L1)
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
o4885 = { [nil] = {}, Start = function()
  o4885["Value"] = False
  o4660.StartCalculate()
  o4662.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4885.Value == L0) then
    o4885["Value"] = L0
    o4660.ReCalculate()
    o4662.ReCalculate()
  end
end }
S_o4924 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4924, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4924, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4924, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/NAV1_PatrolArea", "/Scenario_Dynamic/Navigation/NAV1_TriggerArea", "/Scenario_Dynamic/Navigation/NAV1_AttackArea", "player", "", "", "", 0.25, "Code4")
  else
    CallFunction(o4924, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o4941.SetStateValue(L1)
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
o4941 = { [nil] = {}, Start = function()
  o4941["Value"] = False
  o4661.StartCalculate()
  o4662.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4941.Value == L0) then
    o4941["Value"] = L0
    o4661.ReCalculate()
    o4662.ReCalculate()
  end
end }
S_o4980 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4980, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4980, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4980, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/NAV2_PatrolArea", "/Scenario_Dynamic/Navigation/NAV2_TriggerArea", "/Scenario_Dynamic/Navigation/NAV2_AttackArea", "player1", "", "", "", 0.25, "Code4")
  else
    CallFunction(o4980, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o4997.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4982.Value ~= True) then
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
o4982 = { [nil] = {}, GetCalculated = function()
  if not (o4662.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4982.SetStateValue(o4982.GetCalculated())
end, StartCalculate = function()
  o4982["Value"] = o4982.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4982.Value == L0) then
    o4982["Value"] = L0
    CallFunction(o4980, "ProcesseStateChange")
  end
end }
o4997 = { [nil] = {}, Start = function()
  o4997["Value"] = False
  o4664.StartCalculate()
  o4665.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4997.Value == L0) then
    o4997["Value"] = L0
    o4664.ReCalculate()
    o4665.ReCalculate()
  end
end }
S_o5036 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5036, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5036, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5036, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/NAV3_PatrolArea", "/Scenario_Dynamic/Navigation/NAV3_TriggerArea", "/Scenario_Dynamic/Navigation/NAV3_AttackArea", "E", "", "", "", 0.25, "Code4")
  else
    CallFunction(o5036, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o5053.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5038.Value ~= True) then
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
o5038 = { [nil] = {}, GetCalculated = function()
  if not (o4665.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5038.SetStateValue(o5038.GetCalculated())
end, StartCalculate = function()
  o5038["Value"] = o5038.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5038.Value == L0) then
    o5038["Value"] = L0
    CallFunction(o5036, "ProcesseStateChange")
  end
end }
o5053 = { [nil] = {}, Start = function()
  o5053["Value"] = False
  o4667.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5053.Value == L0) then
    o5053["Value"] = L0
    o4667.ReCalculate()
  end
end }
S_o5092 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5092, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5092, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5092, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/NAV3_PatrolArea", "/Scenario_Dynamic/Navigation/NAV3_TriggerArea", "/Scenario_Dynamic/Navigation/NAV3_AttackArea", "E", "", "", "", 0.25, "Code4")
  else
    CallFunction(o5092, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o5109.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5094.Value ~= True) then
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
o5094 = { [nil] = {}, GetCalculated = function()
  if not (o4665.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5094.SetStateValue(o5094.GetCalculated())
end, StartCalculate = function()
  o5094["Value"] = o5094.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5094.Value == L0) then
    o5094["Value"] = L0
    CallFunction(o5092, "ProcesseStateChange")
  end
end }
o5109 = { [nil] = {}, Start = function()
  o5109["Value"] = False
  o4667.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5109.Value == L0) then
    o5109["Value"] = L0
    o4667.ReCalculate()
  end
end }
S_o5148 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5148, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5148, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5148, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/NAV3_PatrolArea", "/Scenario_Dynamic/Navigation/NAV3_TriggerArea", "/Scenario_Dynamic/Navigation/NAV3_AttackArea", "E", "", "", "", 0.25, "Code4")
  else
    CallFunction(o5148, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o5165.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5150.Value ~= True) then
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
o5150 = { [nil] = {}, GetCalculated = function()
  if not (o4665.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5150.SetStateValue(o5150.GetCalculated())
end, StartCalculate = function()
  o5150["Value"] = o5150.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5150.Value == L0) then
    o5150["Value"] = L0
    CallFunction(o5148, "ProcesseStateChange")
  end
end }
o5165 = { [nil] = {}, Start = function()
  o5165["Value"] = False
  o4667.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5165.Value == L0) then
    o5165["Value"] = L0
    o4667.ReCalculate()
  end
end }
S_o5204 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5204, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5204, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5204, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/NAV3_PatrolArea", "/Scenario_Dynamic/Navigation/NAV3_TriggerArea", "/Scenario_Dynamic/Navigation/NAV3_AttackArea", "E", "", "", "", 0.25, "Code4")
  else
    CallFunction(o5204, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o5221.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5206.Value ~= True) then
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
o5206 = { [nil] = {}, GetCalculated = function()
  if not (o4665.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5206.SetStateValue(o5206.GetCalculated())
end, StartCalculate = function()
  o5206["Value"] = o5206.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5206.Value == L0) then
    o5206["Value"] = L0
    CallFunction(o5204, "ProcesseStateChange")
  end
end }
o5221 = { [nil] = {}, Start = function()
  o5221["Value"] = False
  o4667.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5221.Value == L0) then
    o5221["Value"] = L0
    o4667.ReCalculate()
  end
end }
S_o5260 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5260, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5260, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5260, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetObservedDestroyer(L0.Node, 1, o4645.Node)
  Body_SetObservedDestroyer(L0.Node, 2, o4705.Node)
  Body_SetObservedDestroyer(L0.Node, 3, o4780.Node)
  CallFunction(o5260, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/NAV3_PatrolArea", "/Scenario_Dynamic/Navigation/NAV3_TriggerArea", "/Scenario_Dynamic/Navigation/NAV3_AttackArea", "E", "", "", "", 0.25, "Code7")
  else
    CallFunction(o5260, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_DestEmpJump = function(L0, L1)
  o5277.SetStateValue(L1)
end, SetStateValue_DestroyedBy1 = function(L0, L1)
  o5281.SetStateValue(L1)
end, SetStateValue_DestroyedBy2 = function(L0, L1)
  o5282.SetStateValue(L1)
end, SetStateValue_DestroyedBy3 = function(L0, L1)
  o5283.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5262.Value ~= True) then
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
o5262 = { [nil] = {}, GetCalculated = function()
  if not (o4665.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5262.SetStateValue(o5262.GetCalculated())
end, StartCalculate = function()
  o5262["Value"] = o5262.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5262.Value == L0) then
    o5262["Value"] = L0
    CallFunction(o5260, "ProcesseStateChange")
  end
end }
o5277 = { [nil] = {}, Start = function()
  o5277["Value"] = False
  o4667.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5277.Value == L0) then
    o5277["Value"] = L0
    o4667.ReCalculate()
  end
end }
o5281 = { [nil] = {}, Start = function()
  o5281["Value"] = False
  o4685.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5281.Value == L0) then
    o5281["Value"] = L0
    o4685.ReCalculate()
  end
end }
o5282 = { [nil] = {}, Start = function()
  o5282["Value"] = False
  o4671.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5282.Value == L0) then
    o5282["Value"] = L0
    o4671.ReCalculate()
  end
end }
o5283 = { [nil] = {}, Start = function()
  o5283["Value"] = False
  o4672.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5283.Value == L0) then
    o5283["Value"] = L0
    o4672.ReCalculate()
  end
end }
S_o5316 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5316, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5316, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5316, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o5319.SetStateValue(L1)
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
o5319 = { [nil] = {}, Start = function()
  o5319["Value"] = False
  o4641.StartCalculate()
  o4676.StartCalculate()
  o4686.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5319.Value == L0) then
    o5319["Value"] = L0
    o4641.ReCalculate()
    o4676.ReCalculate()
    o4686.ReCalculate()
  end
end }
S_o5358 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5358, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5358, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5358, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/Bonus2_AttackArea", "gen", "E", "", "", 1, 1, "Code4")
  else
    CallFunction(o5358, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o5358, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o5373.SetStateValue(L1)
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
o5373 = { [nil] = {}, Start = function()
  o5373["Value"] = False
  o4686.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5373.Value == L0) then
    o5373["Value"] = L0
    o4686.ReCalculate()
  end
end }
S_o5414 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5414, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5414, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5414, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/Bonus2_AttackArea", "gen", "E", "", "", 1, 1, "Code4")
  else
    CallFunction(o5414, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o5414, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o5429.SetStateValue(L1)
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
o5429 = { [nil] = {}, Start = function()
  o5429["Value"] = False
  o4686.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5429.Value == L0) then
    o5429["Value"] = L0
    o4686.ReCalculate()
  end
end }
S_o5470 = { [nil] = {}, Start = function(L0)

end }
o5472 = FormationLib.CreateFormation("Triangle", "", "", "", 20, 20)
S_o5473 = { [nil] = {}, Start = function(L0)

end }
S_o5474 = { [nil] = {}, Start = function(L0)

end }
S_o5475 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Atmo")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o5475, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.25, "Code4")
  else
    CallFunction(o5475, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_MoveTo(L0.Node, "/IngameScenes/Navigation/LookFrom_1", 0.25, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  FormationLib.PlaceFormationPath(o5471, o5472, "/IngameScenes/Navigation/PlayerPath_1")
  CallFunction(o5475, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o5471, o5472, "/IngameScenes/Navigation/PlayerPath_1", "pos_1", "pos_7", 0.75, 1, "Code10")
  else
    CallFunction(o5475, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Director_EndCutscene(L0.Node)
  CallFunction(o4705, "Code4")
  CallFunction(o4780, "Code3")
  CallFunction(o5475, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code14")
  else
    CallFunction(o5475, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  SED_SetTaskTextKey(2100, -1, -1)
  Game_SetWayPoint(GetGameNode(), o4853.Node)
  CallFunction(o5475, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5479 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code1")
  else
    CallFunction(o5479, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Camera_MoveTo(L0.Node, "/IngameScenes/Navigation/LookFrom_2", 12, "MMMN", 0)
  CallFunction(o5479, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
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
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code1")
  else
    CallFunction(o5482, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o3376.Node, o4645.Node, 12)
  CallFunction(o5482, "Code2")
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
  Game_LoadProgress_Enter(Node_Find("/"), 237)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object/Des_Buildings_Dir"), "gen_tank_big_des_1", S_o30)
  o76 = BindEasy(Node_Find("/Scenario_Static/Object/Des_Buildings_Dir"), "gen_tank_big_des_2", S_o76)
  o122 = BindEasy(Node_Find("/Scenario_Static/Object/Des_Buildings_Dir"), "gen_trafo_des_1", S_o122)
  o168 = BindEasy(Node_Find("/Scenario_Static/Object/Des_Buildings_Dir"), "gen_trafo_des_2", S_o168)
  o214 = BindEasy(Node_Find("/Scenario_Static/Object/Des_Buildings_Dir"), "gen_trafo_des_3", S_o214)
  o260 = BindEasy(Node_Find("/Scenario_Static/Object/Des_Buildings_Dir"), "gen_tank_big_des_3", S_o260)
  o306 = BindEasy(Node_Find("/Scenario_Static/Object/Des_Buildings_Dir"), "gen_tank_big_des_4", S_o306)
  o352 = BindEasy(Node_Find("/Scenario_Static/Object/Des_Buildings_Dir"), "gen_trafo_des_4", S_o352)
  o398 = BindEasy(Node_Find("/Scenario_Static/Object/Des_Buildings_Dir"), "gen_trafo_des_5", S_o398)
  o444 = BindEasy(Node_Find("/Scenario_Static/Object/Des_Buildings_Dir"), "gen_tank_big_des_5", S_o444)
  o490 = BindEasy(Node_Find("/Scenario_Static/Object/Des_Buildings_Dir"), "gen_tank_big_des_6", S_o490)
  o536 = BindEasy(Node_Find("/Scenario_Static/Object/Des_Buildings_Dir"), "gen_tank_big_des_7", S_o536)
  o582 = BindEasy(Node_Find("/Scenario_Static/Object/Des_Buildings_Dir"), "gen_tank_big_des_8", S_o582)
  o628 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01a_1", S_o628)
  o674 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_1_1", S_o674)
  o720 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem03_r_1", S_o720)
  o766 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem07_r_1", S_o766)
  o812 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dock_1", S_o812)
  o858 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem07_1", S_o858)
  o904 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem03_1", S_o904)
  o950 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem03_3", S_o950)
  o996 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem03_4", S_o996)
  o1042 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem01_1", S_o1042)
  o1088 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem01_2", S_o1088)
  o1134 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem05_1", S_o1134)
  o1180 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem05_2", S_o1180)
  o1226 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem06_1", S_o1226)
  o1272 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem01_r_1", S_o1272)
  o1318 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schwim_1", S_o1318)
  o1364 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_1", S_o1364)
  o1410 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_docking_1", S_o1410)
  o1456 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_big_1", S_o1456)
  o1502 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_big2_1", S_o1502)
  o1548 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml3_1", S_o1548)
  o1594 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabolic_1", S_o1594)
  o1640 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabolic_2", S_o1640)
  o1686 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_beacon_1", S_o1686)
  o1732 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_beacon_2", S_o1732)
  o1778 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml2_1", S_o1778)
  o1824 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_1", S_o1824)
  o1870 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_2", S_o1870)
  o1916 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant22_1", S_o1916)
  o1962 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_3", S_o1962)
  o2008 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_1", S_o2008)
  o2054 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_2", S_o2054)
  o2100 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big03_1", S_o2100)
  o2146 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_2", S_o2146)
  o2192 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element05a_1", S_o2192)
  o2238 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_1", S_o2238)
  o2284 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_2", S_o2284)
  o2330 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_3", S_o2330)
  o2376 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_4", S_o2376)
  o2422 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01a_2", S_o2422)
  o2468 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01_1", S_o2468)
  o2514 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_1_2", S_o2514)
  o2560 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_1_3", S_o2560)
  o2606 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_1/Turm1", S_o2606)
  o2650 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_2/Turm1", S_o2650)
  o2694 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_3/Turm1", S_o2694)
  o2738 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_4/Turm1", S_o2738)
  o2782 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_5/Turm1", S_o2782)
  o2826 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_6/Turm1", S_o2826)
  o2870 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_1", S_o2870)
  o2916 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_2", S_o2916)
  o2962 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_3", S_o2962)
  o3008 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_4", S_o3008)
  o3054 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_3", S_o3054)
  o3100 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_1", S_o3100)
  o3146 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_2", S_o3146)
  o3192 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_3", S_o3192)
  o3238 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_4", S_o3238)
  o3284 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_5", S_o3284)
  o3330 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_6", S_o3330)
  o3376 = BindEasy(Node_Find("/Scenario_Static/Object"), "pla_harvester_1", S_o3376)
  o3423 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_01_1", S_o3423)
  o3469 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_02_1", S_o3469)
  o3515 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_01_2", S_o3515)
  o3561 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_02_2", S_o3561)
  o3607 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_01_3", S_o3607)
  o3653 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_02_3", S_o3653)
  o3699 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_s_01_1", S_o3699)
  o3745 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_s_02_1", S_o3745)
  o3791 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_s_01_2", S_o3791)
  o3837 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_s_02_2", S_o3837)
  o3883 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_s_01_3", S_o3883)
  o3929 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_02_4", S_o3929)
  o3975 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_02_5", S_o3975)
  o4021 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_02_6", S_o4021)
  o4067 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_01_4", S_o4067)
  o4113 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_01_5", S_o4113)
  o4159 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_s_02_3", S_o4159)
  o4205 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_s_01_4", S_o4205)
  o4251 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_1", S_o4251)
  o4297 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_1", S_o4297)
  o4343 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_1", S_o4343)
  o4389 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_1", S_o4389)
  o4435 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_1", S_o4435)
  o4481 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_1", S_o4481)
  o4527 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_1", S_o4527)
  o4573 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_1", S_o4573)
  o4619 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_1", S_o4619)
  o4621 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerNAV1Battle", S_o4621)
  o4626.Start()
  o4627 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerNAV2Battle", S_o4627)
  o4632.Start()
  o4633 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerNAV3Battle", S_o4633)
  o4638.Start()
  o4639 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerBonus2", S_o4639)
  o4644.Start()
  o4645 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o4645)
  o4668.Start()
  o4705 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_mayday_1", S_o4705)
  o4744.Start()
  o4780 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_stoney_1", S_o4780)
  o4817.Start()
  o4853 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1", S_o4853)
  o4858 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_2", S_o4858)
  o4863 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_3", S_o4863)
  o4868 = BindEasy(Node_Find("/Scenario_Dynamic/Object/NAV1_Bandits"), "nav1_neoyuppie_1", S_o4868)
  o4885.Start()
  o4924 = BindEasy(Node_Find("/Scenario_Dynamic/Object/NAV1_Bandits"), "nav1_neoyuppie_2", S_o4924)
  o4941.Start()
  o4980 = BindEasy(Node_Find("/Scenario_Dynamic/Object/NAV2_Bandits"), "nav2_neoyuppie_1", S_o4980)
  o4997.Start()
  o5036 = BindEasy(Node_Find("/Scenario_Dynamic/Object/NAV3_Bandits"), "nav3_neoyuppie_1", S_o5036)
  o5053.Start()
  o5092 = BindEasy(Node_Find("/Scenario_Dynamic/Object/NAV3_Bandits"), "nav3_neoyuppie_2", S_o5092)
  o5109.Start()
  o5148 = BindEasy(Node_Find("/Scenario_Dynamic/Object/NAV3_Bandits"), "nav3_neoyuppie_3", S_o5148)
  o5165.Start()
  o5204 = BindEasy(Node_Find("/Scenario_Dynamic/Object/NAV3_Bandits"), "nav3_neoyuppie_4", S_o5204)
  o5221.Start()
  o5260 = BindEasy(Node_Find("/Scenario_Dynamic/Object/NAV3_Bandits"), "atl_bomber_weak_1", S_o5260)
  o5277.Start()
  o5281.Start()
  o5282.Start()
  o5283.Start()
  o5316 = BindEasy(Node_Find("/Scenario_Dynamic/Object/BonusTarget2_Dir"), "gen_clunker_freighter_1", S_o5316)
  o5319.Start()
  o5358 = BindEasy(Node_Find("/Scenario_Dynamic/Object/BonusTarget2_Dir"), "pir_tz_scout1_1", S_o5358)
  o5373.Start()
  o5414 = BindEasy(Node_Find("/Scenario_Dynamic/Object/BonusTarget2_Dir"), "pir_tz_scout1_2", S_o5414)
  o5429.Start()
  o5470 = BindEasy(Node_Find("/"), "Camera", S_o5470)
  o5473 = BindEasy(Node_Find("/IngameScenes/Navigation"), "LookFrom_1", S_o5473)
  o5474 = BindEasy(Node_Find("/IngameScenes/Navigation"), "LookFrom_2", S_o5474)
  o5475 = BindEasy(Node_Find("/IngameScenes/Director"), "Intro", S_o5475)
  o5479 = BindEasy(Node_Find("/IngameScenes/Director"), "Intro_AddOn", S_o5479)
  o5482 = BindEasy(Node_Find("/IngameScenes/Director"), "Intro_Audio", S_o5482)
  o5471 = { {}, o4645 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
