-- dekompiliert aus 4h3.sco
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
  Terrain_LoadTerrain(node1, "map/4H2/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/4H2/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/4H2/Lmsh/", "map/4H2/Ltex/")
  Game_SetTerrainDepth(node0, 3897)
  Game_SetDecompressionHeight(node0, 130)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.14902, 0.133333, 0.12549)
  Game_SetParallelLightT(node0, 0.298039, 0.262745, 0.247059)
  Game_SetParallelLightB(node0, 0.14902, 0.133333, 0.12549)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_4h3.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_4H3.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_mystery.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit3.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient2.sam", 2)
  Game_SetNPCHitFactor(node0, 1)
  Game_SetEnvironmentCubeMap(node0, "map/4H2/CubeMap/envcubemap.dds")
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
  node7 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_1")
  Node_AddSon(node6, node7)
  Body_SetFriendOrFoeID(node7, 0)
  Body_SetCS(node7, MAT_Vector3(695.264197, 3099.036482, 109.353974), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node7, 20, 5220, 20)
  Node_EnterSimulation(node7)
  Game_LoadProgress_Advance(node0)
  node8 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_2")
  Node_AddSon(node6, node8)
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetCS(node8, MAT_Vector3(691.356676, 3234.368892, 109.354), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node8, 5220, 20, 20)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node2, node9)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "pla_harvester_1")
  Node_AddSon(node9, node10)
  Body_SetCS(node10, MAT_Vector3(2838.640974, 782.787083, 276.667645), MAT_Vector3(51.326994, -0.725521, -1.498206))
  Node_ParseIniFile(node10, "osd/pla/pla_harvester.osd")
  Body_SetFriendOrFoeID(node10, 2)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "gen_juan_screw_off_1")
  Node_AddSon(node9, node11)
  Body_SetCS(node11, MAT_Vector3(690, 2737, 50), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node11, "osd/gen/gen_juan_screw_off.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "dir_cammesh_static_1")
  Node_AddSon(node9, node12)
  Body_SetCS(node12, MAT_Vector3(691.549856, 2738.64952, 88.325482), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node12, "osd/dir/dir_cammesh_static.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "gen_juan_wallhole_1")
  Node_AddSon(node9, node13)
  Body_SetCS(node13, MAT_Vector3(781.512311, 2818.997902, 25.915834), MAT_Vector3(-91.362558, 0, 0))
  Node_ParseIniFile(node13, "osd/gen/gen_juan_wallhole.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "gen_juan_wall_1")
  Node_AddSon(node9, node14)
  Body_SetCS(node14, MAT_Vector3(642.4709, 3512.5, 53), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node14, "osd/gen/gen_juan_wall.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "gen_juan_wall_2")
  Node_AddSon(node9, node15)
  Body_SetCS(node15, MAT_Vector3(642.7204, 3643, 53), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node15, "osd/gen/gen_juan_wall.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "gen_juan_wall_3")
  Node_AddSon(node9, node16)
  Body_SetCS(node16, MAT_Vector3(642.200836, 3773.594, 53), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node16, "osd/gen/gen_juan_wall.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "gen_juan_wall_4")
  Node_AddSon(node9, node17)
  Body_SetCS(node17, MAT_Vector3(749.4693, 3512.5, 53), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node17, "osd/gen/gen_juan_wall.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "gen_juan_wall_5")
  Node_AddSon(node9, node18)
  Body_SetCS(node18, MAT_Vector3(750.7169, 3643, 53), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node18, "osd/gen/gen_juan_wall.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "gen_juan_wall_6")
  Node_AddSon(node9, node19)
  Body_SetCS(node19, MAT_Vector3(751.097215, 3774, 53), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node19, "osd/gen/gen_juan_wall.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "gen_juan_circle_1")
  Node_AddSon(node9, node20)
  Body_SetCS(node20, MAT_Vector3(713.081955, 3185.488301, 50), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node20, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "gen_juan_circle_2")
  Node_AddSon(node9, node21)
  Body_SetCS(node21, MAT_Vector3(674.13881, 3183.68213, 50), MAT_Vector3(55, 0, 0))
  Node_ParseIniFile(node21, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "gen_juan_circle_3")
  Node_AddSon(node9, node22)
  Body_SetCS(node22, MAT_Vector3(676.813214, 3208.425069, 50), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node22, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "gen_juan_circle_4")
  Node_AddSon(node9, node23)
  Body_SetCS(node23, MAT_Vector3(715.31605, 3207.455937, 50), MAT_Vector3(-124.5, 0, 0))
  Node_ParseIniFile(node23, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "gen_rohr_big01_1")
  Node_AddSon(node9, node24)
  Body_SetCS(node24, MAT_Vector3(596.460997, 3379.337944, 56.163826), MAT_Vector3(-70.213271, -0.05417, 0.176292))
  Node_ParseIniFile(node24, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "gen_rohr_big01_3")
  Node_AddSon(node9, node25)
  Body_SetCS(node25, MAT_Vector3(549.019817, 3352.937516, 55.329491), MAT_Vector3(-50.899551, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_rohr_big01_4")
  Node_AddSon(node9, node26)
  Body_SetCS(node26, MAT_Vector3(416.454321, 3265.118145, 54.128242), MAT_Vector3(-89.46168, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "gen_rohr_big01_2")
  Node_AddSon(node9, node27)
  Body_SetCS(node27, MAT_Vector3(651.2729, 3389.198, 50.339641), MAT_Vector3(-88.43747, 0, 0))
  Node_ParseIniFile(node27, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "gen_rohr_big02_1")
  Node_AddSon(node9, node28)
  Body_SetCS(node28, MAT_Vector3(485.208124, 3300.917026, 54.967682), MAT_Vector3(-50.377079, 0, 0))
  Node_ParseIniFile(node28, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "gen_rohr_big02_2")
  Node_AddSon(node9, node29)
  Body_SetCS(node29, MAT_Vector3(447.119322, 3214.247841, 51.267014), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node29, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "gen_rohr_big02_2_2")
  Node_AddSon(node9, node30)
  Body_SetCS(node30, MAT_Vector3(335.026337, 3214.563417, 51.26701), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node30, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "gen_rohr_big02_2_3")
  Node_AddSon(node9, node31)
  Body_SetCS(node31, MAT_Vector3(333.077111, 3264.65322, 53.508565), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node31, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "gen_rohr_big02_3")
  Node_AddSon(node9, node32)
  Body_SetCS(node32, MAT_Vector3(562.992459, 3215.478792, 49.450672), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_rohr_big02_4")
  Node_AddSon(node9, node33)
  Body_SetCS(node33, MAT_Vector3(680.25124, 3216.660932, 49.45067), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node33, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "gen_rohr_big02_5")
  Node_AddSon(node9, node34)
  Body_SetCS(node34, MAT_Vector3(793.503874, 3216.633143, 49.45067), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "gen_rohr_big02_6")
  Node_AddSon(node9, node35)
  Body_SetCS(node35, MAT_Vector3(911.321647, 3217.574193, 49.45067), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node35, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_rohr_big02_7")
  Node_AddSon(node9, node36)
  Body_SetCS(node36, MAT_Vector3(1029.837186, 3217.844618, 47.519488), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "gen_juan_trafo_a_1")
  Node_AddSon(node9, node37)
  Body_SetCS(node37, MAT_Vector3(1310.374223, 3151.053636, 46.007795), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node37, "osd/gen/gen_juan_trafo.osd")
  Body_SetFriendOrFoeID(node37, 1)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "gen_juan_trafo_a_2")
  Node_AddSon(node9, node38)
  Body_SetCS(node38, MAT_Vector3(1315.163372, 3198.871781, 45.639812), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node38, "osd/gen/gen_juan_trafo.osd")
  Body_SetFriendOrFoeID(node38, 1)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_juan_trafo_xl_1")
  Node_AddSon(node9, node39)
  Body_SetCS(node39, MAT_Vector3(259.544574, 3220.92177, 61.975475), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_juan_trafo.osd")
  Body_SetFriendOrFoeID(node39, 1)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_juan_trafo_xl_2")
  Node_AddSon(node9, node40)
  Body_SetCS(node40, MAT_Vector3(258.599331, 3244.481086, 62.081253), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_juan_trafo.osd")
  Body_SetFriendOrFoeID(node40, 1)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_juan_trafo_xl_3")
  Node_AddSon(node9, node41)
  Body_SetCS(node41, MAT_Vector3(258.212709, 3267.453861, 62.314567), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_juan_trafo.osd")
  Body_SetFriendOrFoeID(node41, 1)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_rohr_small03_1")
  Node_AddSon(node9, node42)
  Body_SetCS(node42, MAT_Vector3(1219.42671, 3183.476237, 52.555296), MAT_Vector3(81.039843, 0, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_juan_circle_5")
  Node_AddSon(node9, node43)
  Body_SetCS(node43, MAT_Vector3(1291.072829, 3221.941562, 45), MAT_Vector3(-162.294177, -0.00088, -0.000479))
  Node_ParseIniFile(node43, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_juan_circle_6")
  Node_AddSon(node9, node44)
  Body_SetCS(node44, MAT_Vector3(1244.781788, 3191.463652, 45), MAT_Vector3(-70.263966, -0.00088, -0.000479))
  Node_ParseIniFile(node44, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_juan_circle_7")
  Node_AddSon(node9, node45)
  Body_SetCS(node45, MAT_Vector3(1274.625889, 3149.639597, 45), MAT_Vector3(18.932077, -0.00088, -0.000479))
  Node_ParseIniFile(node45, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_juan_circle_8")
  Node_AddSon(node9, node46)
  Body_SetCS(node46, MAT_Vector3(298.486946, 3206.998641, 45), MAT_Vector3(30.203625, 0, 0))
  Node_ParseIniFile(node46, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "gen_juan_circle_9")
  Node_AddSon(node9, node47)
  Body_SetCS(node47, MAT_Vector3(299.832879, 3278.126468, 45), MAT_Vector3(-156.215029, 0, 0))
  Node_ParseIniFile(node47, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "gen_juan_circle_10")
  Node_AddSon(node9, node48)
  Body_SetCS(node48, MAT_Vector3(333.076114, 3241.30164, 45), MAT_Vector3(116.762935, 0, 0))
  Node_ParseIniFile(node48, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "gen_juan_circle_90")
  Node_AddSon(node9, node49)
  Body_SetCS(node49, MAT_Vector3(713.606381, 4046.75243, 50), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node49, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "gen_juan_circle_91")
  Node_AddSon(node9, node50)
  Body_SetCS(node50, MAT_Vector3(674.744816, 4044.937983, 50), MAT_Vector3(55, 0, 0))
  Node_ParseIniFile(node50, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_juan_circle_92")
  Node_AddSon(node9, node51)
  Body_SetCS(node51, MAT_Vector3(676.8132, 4058.425, 50), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "gen_juan_circle_93")
  Node_AddSon(node9, node52)
  Body_SetCS(node52, MAT_Vector3(715.3161, 4057.456, 50), MAT_Vector3(-124.5, 0, 0))
  Node_ParseIniFile(node52, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "atl_dock1_4_1")
  Node_AddSon(node9, node53)
  Body_SetCS(node53, MAT_Vector3(695.8494, 4052.403, -34.067564), MAT_Vector3(-90.3302, 0, 0))
  Node_ParseIniFile(node53, "osd/gen/gen_juan_dock.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_turret", "gen_juan_turret_m_1")
  Node_AddSon(node9, node54)
  Body_SetCS(node54, MAT_Vector3(605.708, 3046.684, 67.01917), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node54, "osd/gen/gen_juan_turret_h.osd")
  Body_SetFriendOrFoeID(node54, 1)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_turret", "gen_juan_turret_m_2")
  Node_AddSon(node9, node55)
  Body_SetCS(node55, MAT_Vector3(630.5831, 2979.888, 65.96054), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node55, "osd/gen/gen_juan_turret_h.osd")
  Body_SetFriendOrFoeID(node55, 1)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_turret", "gen_juan_turret_m_3")
  Node_AddSon(node9, node56)
  Body_SetCS(node56, MAT_Vector3(779.2806, 3053.347, 63.81781), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node56, "osd/gen/gen_juan_turret_h.osd")
  Body_SetFriendOrFoeID(node56, 1)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_turret", "gen_juan_turret_m_4")
  Node_AddSon(node9, node57)
  Body_SetCS(node57, MAT_Vector3(757.7487, 2976.352, 57.44584), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node57, "osd/gen/gen_juan_turret_h.osd")
  Body_SetFriendOrFoeID(node57, 1)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_fx_sky", "fx_sky_4H2_1")
  Node_AddSon(node9, node58)
  Node_ParseIniFile(node58, "osd/fx_sky/fx_sky_4H2.osd")
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_fx_rays", "fx_rays_4H2_1")
  Node_AddSon(node9, node59)
  Node_ParseIniFile(node59, "osd/fx_rays/fx_rays_4H2.osd")
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_fx_plankton", "fx_plankton_lava_n_1")
  Node_AddSon(node9, node60)
  Node_ParseIniFile(node60, "osd/fx_plankton/fx_plankton_lava_n.osd")
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "gen_juan_laserwall_rail_b_1")
  Node_AddSon(node9, node61)
  Body_SetCS(node61, MAT_Vector3(657.303997, 3512.538824, 53), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node61, "osd/gen/gen_juan_laserwall_rail_bottom.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "gen_juan_laserwall_rail_b_2")
  Node_AddSon(node9, node62)
  Body_SetCS(node62, MAT_Vector3(658.558926, 3642.962145, 53), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node62, "osd/gen/gen_juan_laserwall_rail_bottom.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "gen_juan_laserwall_rail_b_3")
  Node_AddSon(node9, node63)
  Body_SetCS(node63, MAT_Vector3(651.369697, 3773.956573, 53), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node63, "osd/gen/gen_juan_laserwall_rail_bottom.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "gen_juan_laserwall_rail_top_1")
  Node_AddSon(node9, node64)
  Body_SetCS(node64, MAT_Vector3(698.856839, 3512.60618, 53), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node64, "osd/gen/gen_juan_laserwall_rail_top.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "gen_juan_laserwall_rail_top_2")
  Node_AddSon(node9, node65)
  Body_SetCS(node65, MAT_Vector3(694.271076, 3644.001276, 53), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node65, "osd/gen/gen_juan_laserwall_rail_top.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "gen_juan_laserwall_rail_top_3")
  Node_AddSon(node9, node66)
  Body_SetCS(node66, MAT_Vector3(694.181109, 3777.981548, 53), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node66, "osd/gen/gen_juan_laserwall_rail_top.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_fx_flare", "fx_flare_4H2_1")
  Node_AddSon(node9, node67)
  Node_ParseIniFile(node67, "osd/fx_flare/fx_flare_4H2.osd")
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "gen_juan_trafo_EMP_4")
  Node_AddSon(node9, node68)
  Body_SetCS(node68, MAT_Vector3(831.524758, 3889.592067, 53.193039), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node68, "osd/gen/gen_juan_trafo.osd")
  Body_SetFriendOrFoeID(node68, 1)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_turret", "gen_juan_turret_h_1")
  Node_AddSon(node9, node69)
  Body_SetCS(node69, MAT_Vector3(643.80571, 3247.028685, 59.201993), MAT_Vector3(-137.923844, 0, 0))
  Node_ParseIniFile(node69, "osd/gen/gen_juan_turret_h.osd")
  Body_SetFriendOrFoeID(node69, 1)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_turret", "gen_juan_turret_h_2")
  Node_AddSon(node9, node70)
  Body_SetCS(node70, MAT_Vector3(644.986639, 3154.916205, 61.320761), MAT_Vector3(-37.967318, 0, 0))
  Node_ParseIniFile(node70, "osd/gen/gen_juan_turret_h.osd")
  Body_SetFriendOrFoeID(node70, 1)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_turret", "gen_juan_turret_h_3")
  Node_AddSon(node9, node71)
  Body_SetCS(node71, MAT_Vector3(745.365625, 3243.485898, 58.293949), MAT_Vector3(138.485948, 0, 0))
  Node_ParseIniFile(node71, "osd/gen/gen_juan_turret_h.osd")
  Body_SetFriendOrFoeID(node71, 1)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_turret", "gen_juan_turret_h_4")
  Node_AddSon(node9, node72)
  Body_SetCS(node72, MAT_Vector3(747.727483, 3153.735275, 59.504674), MAT_Vector3(53.835153, 0, 0))
  Node_ParseIniFile(node72, "osd/gen/gen_juan_turret_h.osd")
  Body_SetFriendOrFoeID(node72, 1)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_turret", "gen_juan_turret_xl_1")
  Node_AddSon(node9, node73)
  Body_SetCS(node73, MAT_Vector3(694.140053, 3390.641085, 52.12721), MAT_Vector3(-177.863816, 0, 0))
  Node_ParseIniFile(node73, "osd/gen/gen_juan_turret_xl.osd")
  Body_SetFriendOrFoeID(node73, 1)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_turret", "gen_juan_turret_a_1")
  Node_AddSon(node9, node74)
  Body_SetCS(node74, MAT_Vector3(275.302142, 3204.316366, 62.014835), MAT_Vector3(-52.143421, 0, 0))
  Node_ParseIniFile(node74, "osd/gen/gen_juan_turret_h.osd")
  Body_SetFriendOrFoeID(node74, 1)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_turret", "gen_juan_turret_a_2")
  Node_AddSon(node9, node75)
  Body_SetCS(node75, MAT_Vector3(271.373451, 3278.27527, 65.646581), MAT_Vector3(-99.899486, 0, 0))
  Node_ParseIniFile(node75, "osd/gen/gen_juan_turret_h.osd")
  Body_SetFriendOrFoeID(node75, 1)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_turret", "gen_juan_turret_a_3")
  Node_AddSon(node9, node76)
  Body_SetCS(node76, MAT_Vector3(1294.121182, 3216.240052, 59.716557), MAT_Vector3(-52.14342, 0, 0))
  Node_ParseIniFile(node76, "osd/gen/gen_juan_turret_h.osd")
  Body_SetFriendOrFoeID(node76, 1)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_turret", "gen_juan_turret_a_4")
  Node_AddSon(node9, node77)
  Body_SetCS(node77, MAT_Vector3(1287.549897, 3156.974486, 49.879386), MAT_Vector3(-99.89949, 0, 0))
  Node_ParseIniFile(node77, "osd/gen/gen_juan_turret_h.osd")
  Body_SetFriendOrFoeID(node77, 1)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "ter_megalith_l_01_1")
  Node_AddSon(node9, node78)
  Body_SetCS(node78, MAT_Vector3(1358.149, 1914.373, 24.6024), MAT_Vector3(0.855421, 75, 6.702622))
  Node_ParseIniFile(node78, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "ter_bridgering_l_1")
  Node_AddSon(node9, node79)
  Body_SetCS(node79, MAT_Vector3(1426.605, 2134.844, 66.60594), MAT_Vector3(-41.12411, -2.444907, 27.49478))
  Node_ParseIniFile(node79, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "ter_bridgering_l_2")
  Node_AddSon(node9, node80)
  Body_SetCS(node80, MAT_Vector3(1490.04, 2200.623, 66.60594), MAT_Vector3(-41.12411, -2.444907, 27.49478))
  Node_ParseIniFile(node80, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_generic", "ter_bridgering_l_3")
  Node_AddSon(node9, node81)
  Body_SetCS(node81, MAT_Vector3(1562.541, 2267.446, 66.60594), MAT_Vector3(-53.47412, -2.444907, 27.49478))
  Node_ParseIniFile(node81, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_generic", "ter_bridgering_l_4")
  Node_AddSon(node9, node82)
  Body_SetCS(node82, MAT_Vector3(1664.088, 2330.594, 61.34041), MAT_Vector3(-59.53815, -2.444907, 27.49478))
  Node_ParseIniFile(node82, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_generic", "ter_rock_m_01_1")
  Node_AddSon(node9, node83)
  Body_SetCS(node83, MAT_Vector3(1373.016, 1982.024, 63.33778), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node83, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_generic", "ter_rock_l_01_1")
  Node_AddSon(node9, node84)
  Body_SetCS(node84, MAT_Vector3(1405.426, 1919.712, 51.37621), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node84, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_generic", "ter_rock_s_01_1")
  Node_AddSon(node9, node85)
  Body_SetCS(node85, MAT_Vector3(1419.454, 1962.059, 56.25508), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node85, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "ter_rock_l_01_2")
  Node_AddSon(node9, node86)
  Body_SetCS(node86, MAT_Vector3(1269.587, 1962.34, 48.47971), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node86, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "ter_claw_l_02_1")
  Node_AddSon(node9, node87)
  Body_SetCS(node87, MAT_Vector3(1815.558, 2329.638, 40.28431), MAT_Vector3(-68.78568, 0, 0))
  Node_ParseIniFile(node87, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "ter_claw_l_02_2")
  Node_AddSon(node9, node88)
  Body_SetCS(node88, MAT_Vector3(1892.67, 2359.3, 42.81692), MAT_Vector3(-70.97128, 0, 0))
  Node_ParseIniFile(node88, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "ter_claw_l_02_3")
  Node_AddSon(node9, node89)
  Body_SetCS(node89, MAT_Vector3(1957.47, 2384.826, 41.47682), MAT_Vector3(-70.89827, 0, 0))
  Node_ParseIniFile(node89, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_generic", "ter_claw_l_01_1")
  Node_AddSon(node9, node90)
  Body_SetCS(node90, MAT_Vector3(2032.725, 2395.977, 31.20635), MAT_Vector3(-148.4354, 0, 0))
  Node_ParseIniFile(node90, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node90, 0)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_generic", "ter_claw_l_01_2")
  Node_AddSon(node9, node91)
  Body_SetCS(node91, MAT_Vector3(2100.868, 2399.986, 32.02969), MAT_Vector3(174.3391, 0, 0))
  Node_ParseIniFile(node91, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node91, 0)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_generic", "ter_claw_l_01_3")
  Node_AddSon(node9, node92)
  Body_SetCS(node92, MAT_Vector3(2162.084, 2394.088, 39.02056), MAT_Vector3(151.1695, 0, 0))
  Node_ParseIniFile(node92, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node92, 0)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "ter_claw_l_01_4")
  Node_AddSon(node9, node93)
  Body_SetCS(node93, MAT_Vector3(2235.02, 2385.617, 32.27968), MAT_Vector3(-154.7928, 0, 0))
  Node_ParseIniFile(node93, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node93, 0)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_generic", "ter_claw_l_01_5")
  Node_AddSon(node9, node94)
  Body_SetCS(node94, MAT_Vector3(2298.861, 2373.416, 40.68901), MAT_Vector3(161.5265, 0, 0))
  Node_ParseIniFile(node94, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node94, 0)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_generic", "ter_claw_l_02_4")
  Node_AddSon(node9, node95)
  Body_SetCS(node95, MAT_Vector3(2371.683, 2329.983, 43.93576), MAT_Vector3(-95.82724, 0, 0))
  Node_ParseIniFile(node95, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node95, 0)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_generic", "ter_claw_l_01_6")
  Node_AddSon(node9, node96)
  Body_SetCS(node96, MAT_Vector3(2412.007, 2287.703, 33.54967), MAT_Vector3(131.4859, 0, 0))
  Node_ParseIniFile(node96, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node96, 0)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_generic", "ter_claw_l_02_5")
  Node_AddSon(node9, node97)
  Body_SetCS(node97, MAT_Vector3(2463.321, 2231.231, 32.18031), MAT_Vector3(-134.9016, 0, 0))
  Node_ParseIniFile(node97, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node97, 0)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_generic", "ter_megalith_l_03_1")
  Node_AddSon(node9, node98)
  Body_SetCS(node98, MAT_Vector3(2466.432, 2983.992, 55.32321), MAT_Vector3(17.05644, 11.44936, -4.452402))
  Node_ParseIniFile(node98, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node98, 0)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_generic", "ter_rock_m_01_x")
  Node_AddSon(node9, node99)
  Body_SetCS(node99, MAT_Vector3(3100.824, 2402.94, 68.1202), MAT_Vector3(-58.16622, 23.75991, 44.42))
  Node_ParseIniFile(node99, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node99, 0)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_generic", "ter_rock_m_01_y")
  Node_AddSon(node9, node100)
  Body_SetCS(node100, MAT_Vector3(3107.631, 2449.776, 71.79271), MAT_Vector3(-58.16622, 23.75991, 44.42))
  Node_ParseIniFile(node100, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node100, 0)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_generic", "ter_rock_l_01_x")
  Node_AddSon(node9, node101)
  Body_SetCS(node101, MAT_Vector3(3139.401, 2442.809, 92.49287), MAT_Vector3(-76.71892, -0.39183, 70.91686))
  Node_ParseIniFile(node101, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node101, 0)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_generic", "ter_rock_s_01_x")
  Node_AddSon(node9, node102)
  Body_SetCS(node102, MAT_Vector3(3075.332, 2434.913, 70.84384), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node102, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node102, 0)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_generic", "ter_rock_s_01_y")
  Node_AddSon(node9, node103)
  Body_SetCS(node103, MAT_Vector3(3154.276, 2387.005, 95.49108), MAT_Vector3(-54.62281, -58.63304, -158.8292))
  Node_ParseIniFile(node103, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node103, 0)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_generic", "ter_rock_s_01_z")
  Node_AddSon(node9, node104)
  Body_SetCS(node104, MAT_Vector3(3098.958, 2473.169, 78.58466), MAT_Vector3(-33.5501, -42.65285, -68.31232))
  Node_ParseIniFile(node104, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node104, 0)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1")
  Node_AddSon(node9, node105)
  Body_SetCS(node105, MAT_Vector3(2538.17279, 2780.506854, 115.492192), MAT_Vector3(-74.27483, -13.181991, -18.381448))
  Node_ParseIniFile(node105, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node105, 0)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1")
  Node_AddSon(node9, node106)
  Body_SetCS(node106, MAT_Vector3(2638.680283, 2724.931035, 116.84461), MAT_Vector3(-179.736628, 21.616681, -20.395623))
  Node_ParseIniFile(node106, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node106, 0)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node9, node107)
  Node_ParseIniFile(node107, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node107, "map/4H2/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_fx_plant", "org_redcoral_1")
  Node_AddSon(node9, node108)
  Node_ParseIniFile(node108, "osd/fx_plant/org_redcoral.osd")
  FX_Plant_SetMap(node108, "map/4H2/Terrain/org_redcoral.tga")
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_generic", "ter_megalith_l_03_2")
  Node_AddSon(node9, node109)
  Body_SetCS(node109, MAT_Vector3(3391.847, 752.4295, 118.8387), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node109, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node109, 0)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_generic", "ter_megalith_l_02_1")
  Node_AddSon(node9, node110)
  Body_SetCS(node110, MAT_Vector3(3192.032, 386.0555, 173.8884), MAT_Vector3(-8.808737, 4.344672, -3.340706))
  Node_ParseIniFile(node110, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node110, 0)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_generic", "ter_megalith_s_01_2")
  Node_AddSon(node9, node111)
  Body_SetCS(node111, MAT_Vector3(2623.247, 429.4843, 113.2048), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node111, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node111, 0)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_generic", "ter_megalith_s_02_1")
  Node_AddSon(node9, node112)
  Body_SetCS(node112, MAT_Vector3(3140.606, 395.9766, 159.2633), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node112, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node112, 0)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_generic", "ter_megalith_s_03_2")
  Node_AddSon(node9, node113)
  Body_SetCS(node113, MAT_Vector3(3149.72, 428.804, 157.6776), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node113, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node113, 0)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_generic", "ter_megalith_m_02_1")
  Node_AddSon(node9, node114)
  Body_SetCS(node114, MAT_Vector3(3188.118, 289.8403, 181.3995), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node114, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node114, 0)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_generic", "ter_megalith_m_01_1")
  Node_AddSon(node9, node115)
  Body_SetCS(node115, MAT_Vector3(2739.246, 494.5893, 53.09118), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node115, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node115, 0)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_generic", "ter_megalith_s_02_2")
  Node_AddSon(node9, node116)
  Body_SetCS(node116, MAT_Vector3(2799.266, 422.5359, 53.3556), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node116, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node116, 0)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_generic", "ter_megalith_s_03_3")
  Node_AddSon(node9, node117)
  Body_SetCS(node117, MAT_Vector3(2867.482, 458.337, 49.21062), MAT_Vector3(-19.44813, 18.67477, 11.0289))
  Node_ParseIniFile(node117, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node117, 0)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_generic", "ter_megalith_l_01_2")
  Node_AddSon(node9, node118)
  Body_SetCS(node118, MAT_Vector3(2722.513, 418.3692, 53.86566), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node118, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node118, 0)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_generic", "ter_rock_l_01_3")
  Node_AddSon(node9, node119)
  Body_SetCS(node119, MAT_Vector3(2488.408, 654.9302, 128.7682), MAT_Vector3(107.5625, 6.005624, 81.11793))
  Node_ParseIniFile(node119, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node119, 0)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_generic", "ter_rock_l_01_a")
  Node_AddSon(node9, node120)
  Body_SetCS(node120, MAT_Vector3(2085.85, 662.6282, 138.7738), MAT_Vector3(-155.1837, -32.49794, -91.65487))
  Node_ParseIniFile(node120, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node120, 0)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_generic", "ter_rock_l_01_b")
  Node_AddSon(node9, node121)
  Body_SetCS(node121, MAT_Vector3(1620.235, 983.0194, 110.5636), MAT_Vector3(-86.99737, -64.2953, -37.15942))
  Node_ParseIniFile(node121, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node121, 0)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_generic", "ter_rock_m_01_2")
  Node_AddSon(node9, node122)
  Body_SetCS(node122, MAT_Vector3(2314.648, 660.8525, 116.1968), MAT_Vector3(24.56729, 12.27368, 52.46404))
  Node_ParseIniFile(node122, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node122, 0)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_generic", "ter_rock_m_01_a")
  Node_AddSon(node9, node123)
  Body_SetCS(node123, MAT_Vector3(2041.518, 652.0708, 137.8371), MAT_Vector3(4.242436, 45.46484, -138.1657))
  Node_ParseIniFile(node123, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node123, 0)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_generic", "ter_rock_s_01_2")
  Node_AddSon(node9, node124)
  Body_SetCS(node124, MAT_Vector3(2316.609, 764.3593, 115.63), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node124, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node124, 0)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_generic", "ter_rock_s_01_a")
  Node_AddSon(node9, node125)
  Body_SetCS(node125, MAT_Vector3(1611.865, 927.9378, 107.2061), MAT_Vector3(-11.86514, -20.87488, -5.080705))
  Node_ParseIniFile(node125, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node125, 0)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_generic", "ter_megalith_s_01_3")
  Node_AddSon(node9, node126)
  Body_SetCS(node126, MAT_Vector3(1417.605, 756.0128, 56.3308), MAT_Vector3(5.801736, 5.695712, 1.934941))
  Node_ParseIniFile(node126, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node126, 0)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, -1, 0)
  Body_SetCargoKey(node126, -1, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_generic", "ter_megalith_s_02_3")
  Node_AddSon(node9, node127)
  Body_SetCS(node127, MAT_Vector3(1415.311, 779.8336, 72.48507), MAT_Vector3(-15.36978, -12.38755, -5.609395))
  Node_ParseIniFile(node127, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node127, 0)
  Body_SetNameKey(node127, -1)
  Body_SetCargoKey(node127, -1, 0)
  Body_SetCargoKey(node127, -1, 1)
  Body_SetCargoKey(node127, -1, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_generic", "ter_megalith_s_03_4")
  Node_AddSon(node9, node128)
  Body_SetCS(node128, MAT_Vector3(1574.63, 710.3343, 73.77903), MAT_Vector3(-27.34445, -17.50812, -20.54661))
  Node_ParseIniFile(node128, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node128, 0)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, -1, 0)
  Body_SetCargoKey(node128, -1, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_generic", "ter_megalith_s_02_a")
  Node_AddSon(node9, node129)
  Body_SetCS(node129, MAT_Vector3(1360.102, 691.0106, 59.76629), MAT_Vector3(5.256879, 5.693096, 3.446345))
  Node_ParseIniFile(node129, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node129, 0)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_generic", "ter_megalith_s_02_3x")
  Node_AddSon(node9, node130)
  Body_SetCS(node130, MAT_Vector3(1230.907, 690.9358, 61.07379), MAT_Vector3(-15.36978, -12.38755, -5.609395))
  Node_ParseIniFile(node130, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node130, 0)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_generic", "ter_megalith_s_03_a")
  Node_AddSon(node9, node131)
  Body_SetCS(node131, MAT_Vector3(1207.356, 819.9157, 69.61721), MAT_Vector3(78.9569, 5.887067, -1.173196))
  Node_ParseIniFile(node131, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node131, 0)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_generic", "ter_megalith_s_01_a")
  Node_AddSon(node9, node132)
  Body_SetCS(node132, MAT_Vector3(1202.74, 786.1048, 65.99637), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node132, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node132, 0)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node133)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node133, node134)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node133, node135)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_1")
  Node_AddSon(node135, node136)
  PatrolArea_SetPosition(node136, MAT_Vector3(1625.67371, 1901.834893, 50))
  PatrolArea_SetRadius(node136, 450)
  PatrolArea_SetMinZ(node136, -420)
  PatrolArea_SetMaxZ(node136, 420)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("NOD_Path", "AmitabPath_1")
  Node_AddSon(node135, node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node137, node138)
  Position_SetPosition(node138, MAT_Vector3(685.840292, 2922.049713, 105.345861))
  Position_SetRadius(node138, 5)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node137, node139)
  Position_SetPosition(node139, MAT_Vector3(693.463253, 3059.084022, 106.514395))
  Position_SetRadius(node139, 5)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("NOD_Path", "AmitabPath_2")
  Node_AddSon(node135, node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node140, node141)
  Position_SetPosition(node141, MAT_Vector3(692.57779, 3077.002144, 105.3459))
  Position_SetRadius(node141, 5)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node140, node142)
  Position_SetPosition(node142, MAT_Vector3(693.408805, 3196.380682, 106.5144))
  Position_SetRadius(node142, 5)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Path", "AmitabPath_3")
  Node_AddSon(node135, node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node143, node144)
  Position_SetPosition(node144, MAT_Vector3(693.302675, 3217.549032, 105.3459))
  Position_SetRadius(node144, 5)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node143, node145)
  Position_SetPosition(node145, MAT_Vector3(694.798266, 3419.636531, 106.5144))
  Position_SetRadius(node145, 5)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Path", "AmitabPath_4")
  Node_AddSon(node135, node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node146, node147)
  Position_SetPosition(node147, MAT_Vector3(694.563084, 3451.47154, 105.3459))
  Position_SetRadius(node147, 5)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node146, node148)
  Position_SetPosition(node148, MAT_Vector3(696.559515, 3868.247386, 106.5144))
  Position_SetRadius(node148, 5)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Path", "AmitabPath_5")
  Node_AddSon(node135, node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node149, node150)
  Position_SetPosition(node150, MAT_Vector3(696.5595, 3868.247, 106.5144))
  Position_SetRadius(node150, 5)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node149, node151)
  Position_SetPosition(node151, MAT_Vector3(695.161223, 2794.563493, 105.3459))
  Position_SetRadius(node151, 5)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Path", "AmitabPath_6")
  Node_AddSon(node135, node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node152, node153)
  Position_SetPosition(node153, MAT_Vector3(693.845768, 2775.713977, 105.3459))
  Position_SetRadius(node153, 5)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node152, node154)
  Position_SetPosition(node154, MAT_Vector3(697.738157, 2601.126005, 105.143324))
  Position_SetRadius(node154, 5)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Path", "DockPath_1")
  Node_AddSon(node135, node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node155, node156)
  Position_SetPosition(node156, MAT_Vector3(696.474385, 3956.888903, 105.3459))
  Position_SetRadius(node156, 5)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node155, node157)
  Position_SetPosition(node157, MAT_Vector3(697.474504, 4044.938996, 106.5144))
  Position_SetRadius(node157, 5)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Path", "ApproachPath_1")
  Node_AddSon(node135, node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node158, node159)
  Position_SetPosition(node159, MAT_Vector3(696.4259, 3879.87, 105.3459))
  Position_SetRadius(node159, 5)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node158, node160)
  Position_SetPosition(node160, MAT_Vector3(694.994438, 3939.942199, 106.5144))
  Position_SetRadius(node160, 5)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_2")
  Node_AddSon(node135, node161)
  PatrolArea_SetPosition(node161, MAT_Vector3(698.988127, 3197.465423, 106.701772))
  PatrolArea_SetRadius(node161, 120)
  PatrolArea_SetMinZ(node161, -60)
  PatrolArea_SetMaxZ(node161, 40)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_3")
  Node_AddSon(node135, node162)
  PatrolArea_SetPosition(node162, MAT_Vector3(696.21327, 3392.313355, 103.951867))
  PatrolArea_SetRadius(node162, 80)
  PatrolArea_SetMinZ(node162, -20)
  PatrolArea_SetMaxZ(node162, 20)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node135, node163)
  Position_SetPosition(node163, MAT_Vector3(694.004342, 3390.135949, 131.42316))
  Position_SetRadius(node163, 120)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_PatrolArea", "DockArea_1")
  Node_AddSon(node135, node164)
  PatrolArea_SetPosition(node164, MAT_Vector3(695.039849, 3940.018594, 101.245347))
  PatrolArea_SetRadius(node164, 50)
  PatrolArea_SetMinZ(node164, -20)
  PatrolArea_SetMaxZ(node164, 20)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_FX_Stream", "DamageStream_1")
  Node_AddSon(node135, node165)
  Body_SetCS(node165, MAT_Vector3(1895.917, 2047.324, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node165, 620, 420, 20)
  Stream_SetCurrentDirection(node165, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_FX_Stream", "DamageStream_2")
  Node_AddSon(node135, node166)
  Body_SetCS(node166, MAT_Vector3(2022.691, 2064.483, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node166, 420, 120, 120)
  Stream_SetCurrentDirection(node166, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_FX_Stream", "DamageStream_3")
  Node_AddSon(node135, node167)
  Body_SetCS(node167, MAT_Vector3(1880.179, 1885.658, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node167, 420, 120, 120)
  Stream_SetCurrentDirection(node167, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_FX_Stream", "DamageStream_4")
  Node_AddSon(node135, node168)
  Body_SetCS(node168, MAT_Vector3(2097.366, 2218.515, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node168, 220, 120, 120)
  Stream_SetCurrentDirection(node168, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_FX_Stream", "DamageStream_5")
  Node_AddSon(node135, node169)
  Body_SetCS(node169, MAT_Vector3(1971.764, 2180.527, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node169, 220, 120, 120)
  Stream_SetCurrentDirection(node169, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_FX_Stream", "DamageStream_6")
  Node_AddSon(node135, node170)
  Body_SetCS(node170, MAT_Vector3(1886.87, 2136.087, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node170, 220, 120, 120)
  Stream_SetCurrentDirection(node170, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_FX_Stream", "DamageStream_7")
  Node_AddSon(node135, node171)
  Body_SetCS(node171, MAT_Vector3(1730.566, 1991.184, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node171, 220, 120, 120)
  Stream_SetCurrentDirection(node171, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_FX_Stream", "DamageStream_8")
  Node_AddSon(node135, node172)
  Body_SetCS(node172, MAT_Vector3(2172.745, 2152.964, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node172, 220, 120, 120)
  Stream_SetCurrentDirection(node172, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_FX_Stream", "DamageStream_9")
  Node_AddSon(node135, node173)
  Body_SetCS(node173, MAT_Vector3(1461.525, 1828.048, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node173, 50, 50, 120)
  Stream_SetCurrentDirection(node173, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_FX_Stream", "DamageStream_10")
  Node_AddSon(node135, node174)
  Body_SetCS(node174, MAT_Vector3(1295.513, 1787.081, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node174, 50, 50, 120)
  Stream_SetCurrentDirection(node174, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_FX_Stream", "DamageStream_11")
  Node_AddSon(node135, node175)
  Body_SetCS(node175, MAT_Vector3(1520.465, 2006.494, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node175, 50, 50, 120)
  Stream_SetCurrentDirection(node175, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_FX_Stream", "DamageStream_12")
  Node_AddSon(node135, node176)
  Body_SetCS(node176, MAT_Vector3(1601.732, 2113.131, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node176, 50, 50, 120)
  Stream_SetCurrentDirection(node176, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_FX_Stream", "DamageStream_13")
  Node_AddSon(node135, node177)
  Body_SetCS(node177, MAT_Vector3(1674.742, 2184.254, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node177, 50, 50, 120)
  Stream_SetCurrentDirection(node177, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_FX_Stream", "DamageStream_14")
  Node_AddSon(node135, node178)
  Body_SetCS(node178, MAT_Vector3(1763.701, 2240.697, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node178, 50, 50, 120)
  Stream_SetCurrentDirection(node178, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_FX_Stream", "DamageStream_15")
  Node_AddSon(node135, node179)
  Body_SetCS(node179, MAT_Vector3(1865.775, 2278.6, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node179, 50, 50, 120)
  Stream_SetCurrentDirection(node179, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_FX_Stream", "DamageStream_16")
  Node_AddSon(node135, node180)
  Body_SetCS(node180, MAT_Vector3(2105.424, 2323.886, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node180, 150, 50, 120)
  Stream_SetCurrentDirection(node180, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_FX_Stream", "DamageStream_17")
  Node_AddSon(node135, node181)
  Body_SetCS(node181, MAT_Vector3(1951.887, 2308.92, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node181, 50, 50, 120)
  Stream_SetCurrentDirection(node181, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("NOD_FX_Stream", "DamageStream_18")
  Node_AddSon(node135, node182)
  Body_SetCS(node182, MAT_Vector3(2050.871, 2344.638, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node182, 50, 50, 120)
  Stream_SetCurrentDirection(node182, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_FX_Stream", "DamageStream_19")
  Node_AddSon(node135, node183)
  Body_SetCS(node183, MAT_Vector3(2153.823, 2343.29, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node183, 50, 50, 120)
  Stream_SetCurrentDirection(node183, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_FX_Stream", "DamageStream_20")
  Node_AddSon(node135, node184)
  Body_SetCS(node184, MAT_Vector3(2254.409, 2315.75, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node184, 50, 50, 120)
  Stream_SetCurrentDirection(node184, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_FX_Stream", "DamageStream_21")
  Node_AddSon(node135, node185)
  Body_SetCS(node185, MAT_Vector3(2320.587, 2274.274, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node185, 50, 50, 120)
  Stream_SetCurrentDirection(node185, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_FX_Stream", "DamageStream_22")
  Node_AddSon(node135, node186)
  Body_SetCS(node186, MAT_Vector3(2382.288, 2204.172, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node186, 50, 50, 120)
  Stream_SetCurrentDirection(node186, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_FX_Stream", "DamageStream_23")
  Node_AddSon(node135, node187)
  Body_SetCS(node187, MAT_Vector3(2433.519, 2125.999, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node187, 50, 50, 120)
  Stream_SetCurrentDirection(node187, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_FX_Stream", "DamageStream_24")
  Node_AddSon(node135, node188)
  Body_SetCS(node188, MAT_Vector3(2623.041, 2264.24, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node188, 60, 60, 60)
  Stream_SetCurrentDirection(node188, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_Path", "MinePath_1")
  Node_AddSon(node135, node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node189, node190)
  Position_SetPosition(node190, MAT_Vector3(696.5595, 3868.247, 106.5144))
  Position_SetRadius(node190, 5)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node189, node191)
  Position_SetPosition(node191, MAT_Vector3(687.704675, 2845.440556, 105.3459))
  Position_SetRadius(node191, 5)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Path", "MinePath_2")
  Node_AddSon(node135, node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node192, node193)
  Position_SetPosition(node193, MAT_Vector3(846.071614, 3945.610231, 138.515614))
  Position_SetRadius(node193, 5)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node192, node194)
  Position_SetPosition(node194, MAT_Vector3(770.394152, 3906.14535, 132.030537))
  Position_SetRadius(node194, 5)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node192, node195)
  Position_SetPosition(node195, MAT_Vector3(711.5595, 3868.247, 77.11165))
  Position_SetRadius(node195, 5)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node192, node196)
  Position_SetPosition(node196, MAT_Vector3(700.127053, 3356.590712, 129.696977))
  Position_SetRadius(node196, 5)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node192, node197)
  Position_SetPosition(node197, MAT_Vector3(704.910926, 2842.932727, 105.3459))
  Position_SetRadius(node197, 5)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("NOD_Path", "MinePath_3")
  Node_AddSon(node135, node198)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node198, node199)
  Position_SetPosition(node199, MAT_Vector3(538.834913, 3973.106964, 131.295816))
  Position_SetRadius(node199, 5)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node198, node200)
  Position_SetPosition(node200, MAT_Vector3(616.493898, 3908.462683, 131.522189))
  Position_SetRadius(node200, 5)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node198, node201)
  Position_SetPosition(node201, MAT_Vector3(681.5595, 3868.247, 128.525599))
  Position_SetRadius(node201, 5)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node198, node202)
  Position_SetPosition(node202, MAT_Vector3(687.367395, 3434.86805, 131.682943))
  Position_SetRadius(node202, 5)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node198, node203)
  Position_SetPosition(node203, MAT_Vector3(680.813346, 2842.829364, 105.3459))
  Position_SetRadius(node203, 5)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("NOD_Path", "DockPath_2")
  Node_AddSon(node135, node204)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node204, node205)
  Position_SetPosition(node205, MAT_Vector3(2912.394401, 555.702524, 254.134869))
  Position_SetRadius(node205, 5)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node204, node206)
  Position_SetPosition(node206, MAT_Vector3(2971.83264, 627.603174, 254.699917))
  Position_SetRadius(node206, 5)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("NOD_Path", "ApproachPath_2")
  Node_AddSon(node135, node207)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node207, node208)
  Position_SetPosition(node208, MAT_Vector3(2807.315983, 535.955723, 252.615708))
  Position_SetRadius(node208, 5)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node207, node209)
  Position_SetPosition(node209, MAT_Vector3(2889.393954, 536.671345, 252.762151))
  Position_SetRadius(node209, 5)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("NOD_PatrolArea", "DockArea_2")
  Node_AddSon(node135, node210)
  PatrolArea_SetPosition(node210, MAT_Vector3(2734.528586, 595.620951, 256.264896))
  PatrolArea_SetRadius(node210, 100)
  PatrolArea_SetMinZ(node210, -20)
  PatrolArea_SetMaxZ(node210, 20)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node133, node211)
  Node_EnterSimulation(node211)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node133, node212)
  Node_EnterSimulation(node212)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("NOD_Trigger", "DipolTurretsTrigger_1")
  Node_AddSon(node212, node213)
  Body_SetFriendOrFoeID(node213, 0)
  Body_SetCS(node213, MAT_Vector3(693.436303, 3177.531898, 107.667345), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node213, 120, 20, 220)
  Node_EnterSimulation(node213)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("NOD_Trigger", "DipolTurretsTrigger_2")
  Node_AddSon(node212, node214)
  Body_SetFriendOrFoeID(node214, 0)
  Body_SetCS(node214, MAT_Vector3(354.054485, 3237.397032, 153.364683), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node214, 20, 120, 120)
  Node_EnterSimulation(node214)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("NOD_Trigger", "DipolTurretsTrigger_3")
  Node_AddSon(node212, node215)
  Body_SetFriendOrFoeID(node215, 0)
  Body_SetCS(node215, MAT_Vector3(1213.750063, 3189.892333, 153.3647), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node215, 20, 120, 120)
  Node_EnterSimulation(node215)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("NOD_Trigger", "Send_009_Trigger")
  Node_AddSon(node212, node216)
  Body_SetFriendOrFoeID(node216, 0)
  Body_SetCS(node216, MAT_Vector3(395.636636, 3237.338815, 153.3647), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node216, 20, 120, 120)
  Node_EnterSimulation(node216)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("NOD_Trigger", "Send_009_Trigger_2")
  Node_AddSon(node212, node217)
  Body_SetFriendOrFoeID(node217, 0)
  Body_SetCS(node217, MAT_Vector3(1174.047115, 3189.805255, 153.3647), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node217, 20, 120, 120)
  Node_EnterSimulation(node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("NOD_Trigger", "TriggerPresence_1")
  Node_AddSon(node212, node218)
  Body_SetFriendOrFoeID(node218, 0)
  Body_SetPosition(node218, MAT_Vector3(688.725683, 2811.606813, 101.658241))
  Trigger_SetPresenceSphere(node218, 50)
  Node_EnterSimulation(node218)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node133, node219)
  Node_EnterSimulation(node219)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("NOD_Directory", "Laserbeams")
  Node_AddSon(node219, node220)
  Node_EnterSimulation(node220)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("nod_trash", "1gen_laserbeam_1")
  Node_AddSon(node220, node221)
  Body_SetCS(node221, MAT_Vector3(679.628538, 3462.850719, 186.678358), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node221, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node221, 0)
  Node_EnterSimulation(node221)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("nod_trash", "1gen_laserbeam_2")
  Node_AddSon(node220, node222)
  Body_SetCS(node222, MAT_Vector3(679.167513, 3462.842706, 179.479553), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node222, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node222, 0)
  Node_EnterSimulation(node222)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("nod_trash", "1gen_laserbeam_3")
  Node_AddSon(node220, node223)
  Body_SetCS(node223, MAT_Vector3(679.6285, 3462.851, 171.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node223, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node223, 0)
  Node_EnterSimulation(node223)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("nod_trash", "1gen_laserbeam_4")
  Node_AddSon(node220, node224)
  Body_SetCS(node224, MAT_Vector3(679.1675, 3462.843, 164.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node224, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node224, 0)
  Node_EnterSimulation(node224)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("nod_trash", "1gen_laserbeam_5")
  Node_AddSon(node220, node225)
  Body_SetCS(node225, MAT_Vector3(679.6285, 3462.851, 156.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node225, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node225, 0)
  Node_EnterSimulation(node225)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("nod_trash", "1gen_laserbeam_6")
  Node_AddSon(node220, node226)
  Body_SetCS(node226, MAT_Vector3(679.1675, 3462.843, 149.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node226, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node226, 0)
  Node_EnterSimulation(node226)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("nod_trash", "1gen_laserbeam_7")
  Node_AddSon(node220, node227)
  Body_SetCS(node227, MAT_Vector3(679.6285, 3462.851, 141.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node227, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node227, 0)
  Node_EnterSimulation(node227)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("nod_trash", "1gen_laserbeam_8")
  Node_AddSon(node220, node228)
  Body_SetCS(node228, MAT_Vector3(679.1675, 3462.843, 134.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node228, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node228, 0)
  Node_EnterSimulation(node228)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("nod_trash", "1gen_laserbeam_9")
  Node_AddSon(node220, node229)
  Body_SetCS(node229, MAT_Vector3(679.6285, 3462.851, 126.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node229, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node229, 0)
  Node_EnterSimulation(node229)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("nod_trash", "1gen_laserbeam_10")
  Node_AddSon(node220, node230)
  Body_SetCS(node230, MAT_Vector3(679.1675, 3462.843, 119.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node230, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node230, 0)
  Node_EnterSimulation(node230)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("nod_trash", "1gen_laserbeam_11")
  Node_AddSon(node220, node231)
  Body_SetCS(node231, MAT_Vector3(679.6285, 3462.851, 111.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node231, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node231, 0)
  Node_EnterSimulation(node231)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("nod_trash", "1gen_laserbeam_12")
  Node_AddSon(node220, node232)
  Body_SetCS(node232, MAT_Vector3(679.1675, 3462.843, 104.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node232, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node232, 0)
  Node_EnterSimulation(node232)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("nod_trash", "1gen_laserbeam_13")
  Node_AddSon(node220, node233)
  Body_SetCS(node233, MAT_Vector3(679.6285, 3462.851, 96.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node233, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node233, 0)
  Node_EnterSimulation(node233)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("nod_trash", "1gen_laserbeam_14")
  Node_AddSon(node220, node234)
  Body_SetCS(node234, MAT_Vector3(679.1675, 3462.843, 89.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node234, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node234, 0)
  Node_EnterSimulation(node234)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("nod_trash", "1gen_laserbeam_15")
  Node_AddSon(node220, node235)
  Body_SetCS(node235, MAT_Vector3(679.6285, 3462.851, 81.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node235, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node235, 0)
  Node_EnterSimulation(node235)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("nod_trash", "1gen_laserbeam_16")
  Node_AddSon(node220, node236)
  Body_SetCS(node236, MAT_Vector3(679.1675, 3462.843, 74.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node236, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node236, 0)
  Node_EnterSimulation(node236)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("nod_trash", "1gen_laserbeam_17")
  Node_AddSon(node220, node237)
  Body_SetCS(node237, MAT_Vector3(679.6285, 3462.851, 69.351078), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node237, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node237, 0)
  Node_EnterSimulation(node237)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("nod_trash", "1gen_laserbeam_18")
  Node_AddSon(node220, node238)
  Body_SetCS(node238, MAT_Vector3(679.1675, 3462.843, 63.714063), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node238, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node238, 0)
  Node_EnterSimulation(node238)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("nod_trash", "2gen_laserbeam_1")
  Node_AddSon(node220, node239)
  Body_SetCS(node239, MAT_Vector3(679.6285, 3530.851, 186.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node239, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node239, 0)
  Node_EnterSimulation(node239)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("nod_trash", "2gen_laserbeam_2")
  Node_AddSon(node220, node240)
  Body_SetCS(node240, MAT_Vector3(679.1675, 3530.843, 179.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node240, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node240, 0)
  Node_EnterSimulation(node240)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("nod_trash", "2gen_laserbeam_3")
  Node_AddSon(node220, node241)
  Body_SetCS(node241, MAT_Vector3(679.6285, 3530.851, 171.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node241, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node241, 0)
  Node_EnterSimulation(node241)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("nod_trash", "2gen_laserbeam_4")
  Node_AddSon(node220, node242)
  Body_SetCS(node242, MAT_Vector3(679.1675, 3530.843, 164.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node242, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node242, 0)
  Node_EnterSimulation(node242)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("nod_trash", "2gen_laserbeam_5")
  Node_AddSon(node220, node243)
  Body_SetCS(node243, MAT_Vector3(679.6285, 3530.851, 156.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node243, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node243, 0)
  Node_EnterSimulation(node243)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("nod_trash", "2gen_laserbeam_6")
  Node_AddSon(node220, node244)
  Body_SetCS(node244, MAT_Vector3(679.1675, 3530.843, 149.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node244, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node244, 0)
  Node_EnterSimulation(node244)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("nod_trash", "2gen_laserbeam_7")
  Node_AddSon(node220, node245)
  Body_SetCS(node245, MAT_Vector3(679.6285, 3530.851, 141.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node245, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node245, 0)
  Node_EnterSimulation(node245)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("nod_trash", "2gen_laserbeam_8")
  Node_AddSon(node220, node246)
  Body_SetCS(node246, MAT_Vector3(679.1675, 3530.843, 134.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node246, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node246, 0)
  Node_EnterSimulation(node246)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("nod_trash", "2gen_laserbeam_9")
  Node_AddSon(node220, node247)
  Body_SetCS(node247, MAT_Vector3(679.6285, 3530.851, 126.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node247, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node247, 0)
  Node_EnterSimulation(node247)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("nod_trash", "2gen_laserbeam_10")
  Node_AddSon(node220, node248)
  Body_SetCS(node248, MAT_Vector3(679.1675, 3530.843, 119.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node248, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node248, 0)
  Node_EnterSimulation(node248)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("nod_trash", "2gen_laserbeam_11")
  Node_AddSon(node220, node249)
  Body_SetCS(node249, MAT_Vector3(679.6285, 3530.851, 111.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node249, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node249, 0)
  Node_EnterSimulation(node249)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("nod_trash", "2gen_laserbeam_12")
  Node_AddSon(node220, node250)
  Body_SetCS(node250, MAT_Vector3(679.1675, 3530.843, 104.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node250, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node250, 0)
  Node_EnterSimulation(node250)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("nod_trash", "2gen_laserbeam_13")
  Node_AddSon(node220, node251)
  Body_SetCS(node251, MAT_Vector3(679.6285, 3530.851, 96.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node251, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node251, 0)
  Node_EnterSimulation(node251)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("nod_trash", "2gen_laserbeam_14")
  Node_AddSon(node220, node252)
  Body_SetCS(node252, MAT_Vector3(679.1675, 3530.843, 89.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node252, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node252, 0)
  Node_EnterSimulation(node252)
  Game_LoadProgress_Advance(node0)
  node253 = Node_CreateNode("nod_trash", "2gen_laserbeam_15")
  Node_AddSon(node220, node253)
  Body_SetCS(node253, MAT_Vector3(679.6285, 3530.851, 81.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node253, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node253, 0)
  Node_EnterSimulation(node253)
  Game_LoadProgress_Advance(node0)
  node254 = Node_CreateNode("nod_trash", "2gen_laserbeam_16")
  Node_AddSon(node220, node254)
  Body_SetCS(node254, MAT_Vector3(679.1675, 3530.843, 74.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node254, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node254, 0)
  Node_EnterSimulation(node254)
  Game_LoadProgress_Advance(node0)
  node255 = Node_CreateNode("nod_trash", "2gen_laserbeam_17")
  Node_AddSon(node220, node255)
  Body_SetCS(node255, MAT_Vector3(679.6285, 3530.851, 69.35108), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node255, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node255, 0)
  Node_EnterSimulation(node255)
  Game_LoadProgress_Advance(node0)
  node256 = Node_CreateNode("nod_trash", "2gen_laserbeam_18")
  Node_AddSon(node220, node256)
  Body_SetCS(node256, MAT_Vector3(679.1675, 3530.843, 63.71406), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node256, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node256, 0)
  Node_EnterSimulation(node256)
  Game_LoadProgress_Advance(node0)
  node257 = Node_CreateNode("nod_trash", "3gen_laserbeam_1")
  Node_AddSon(node220, node257)
  Body_SetCS(node257, MAT_Vector3(679.6285, 3593.851, 186.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node257, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node257, 0)
  Node_EnterSimulation(node257)
  Game_LoadProgress_Advance(node0)
  node258 = Node_CreateNode("nod_trash", "3gen_laserbeam_2")
  Node_AddSon(node220, node258)
  Body_SetCS(node258, MAT_Vector3(679.1675, 3593.843, 179.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node258, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node258, 0)
  Node_EnterSimulation(node258)
  Game_LoadProgress_Advance(node0)
  node259 = Node_CreateNode("nod_trash", "3gen_laserbeam_3")
  Node_AddSon(node220, node259)
  Body_SetCS(node259, MAT_Vector3(679.6285, 3593.851, 171.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node259, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node259, 0)
  Node_EnterSimulation(node259)
  Game_LoadProgress_Advance(node0)
  node260 = Node_CreateNode("nod_trash", "3gen_laserbeam_4")
  Node_AddSon(node220, node260)
  Body_SetCS(node260, MAT_Vector3(679.1675, 3593.843, 164.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node260, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node260, 0)
  Node_EnterSimulation(node260)
  Game_LoadProgress_Advance(node0)
  node261 = Node_CreateNode("nod_trash", "3gen_laserbeam_5")
  Node_AddSon(node220, node261)
  Body_SetCS(node261, MAT_Vector3(679.6285, 3593.851, 156.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node261, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node261, 0)
  Node_EnterSimulation(node261)
  Game_LoadProgress_Advance(node0)
  node262 = Node_CreateNode("nod_trash", "3gen_laserbeam_6")
  Node_AddSon(node220, node262)
  Body_SetCS(node262, MAT_Vector3(679.1675, 3593.843, 149.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node262, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node262, 0)
  Node_EnterSimulation(node262)
  Game_LoadProgress_Advance(node0)
  node263 = Node_CreateNode("nod_trash", "3gen_laserbeam_7")
  Node_AddSon(node220, node263)
  Body_SetCS(node263, MAT_Vector3(679.6285, 3593.851, 141.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node263, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node263, 0)
  Node_EnterSimulation(node263)
  Game_LoadProgress_Advance(node0)
  node264 = Node_CreateNode("nod_trash", "3gen_laserbeam_8")
  Node_AddSon(node220, node264)
  Body_SetCS(node264, MAT_Vector3(679.1675, 3593.843, 134.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node264, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node264, 0)
  Node_EnterSimulation(node264)
  Game_LoadProgress_Advance(node0)
  node265 = Node_CreateNode("nod_trash", "3gen_laserbeam_9")
  Node_AddSon(node220, node265)
  Body_SetCS(node265, MAT_Vector3(679.6285, 3593.851, 126.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node265, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node265, 0)
  Node_EnterSimulation(node265)
  Game_LoadProgress_Advance(node0)
  node266 = Node_CreateNode("nod_trash", "3gen_laserbeam_10")
  Node_AddSon(node220, node266)
  Body_SetCS(node266, MAT_Vector3(679.1675, 3593.843, 119.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node266, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node266, 0)
  Node_EnterSimulation(node266)
  Game_LoadProgress_Advance(node0)
  node267 = Node_CreateNode("nod_trash", "3gen_laserbeam_11")
  Node_AddSon(node220, node267)
  Body_SetCS(node267, MAT_Vector3(679.6285, 3593.851, 111.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node267, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node267, 0)
  Node_EnterSimulation(node267)
  Game_LoadProgress_Advance(node0)
  node268 = Node_CreateNode("nod_trash", "3gen_laserbeam_12")
  Node_AddSon(node220, node268)
  Body_SetCS(node268, MAT_Vector3(679.1675, 3593.843, 104.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node268, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node268, 0)
  Node_EnterSimulation(node268)
  Game_LoadProgress_Advance(node0)
  node269 = Node_CreateNode("nod_trash", "3gen_laserbeam_13")
  Node_AddSon(node220, node269)
  Body_SetCS(node269, MAT_Vector3(679.6285, 3593.851, 96.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node269, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node269, 0)
  Node_EnterSimulation(node269)
  Game_LoadProgress_Advance(node0)
  node270 = Node_CreateNode("nod_trash", "3gen_laserbeam_14")
  Node_AddSon(node220, node270)
  Body_SetCS(node270, MAT_Vector3(679.1675, 3593.843, 89.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node270, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node270, 0)
  Node_EnterSimulation(node270)
  Game_LoadProgress_Advance(node0)
  node271 = Node_CreateNode("nod_trash", "3gen_laserbeam_15")
  Node_AddSon(node220, node271)
  Body_SetCS(node271, MAT_Vector3(679.6285, 3593.851, 81.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node271, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node271, 0)
  Node_EnterSimulation(node271)
  Game_LoadProgress_Advance(node0)
  node272 = Node_CreateNode("nod_trash", "3gen_laserbeam_16")
  Node_AddSon(node220, node272)
  Body_SetCS(node272, MAT_Vector3(679.1675, 3593.843, 74.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node272, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node272, 0)
  Node_EnterSimulation(node272)
  Game_LoadProgress_Advance(node0)
  node273 = Node_CreateNode("nod_trash", "3gen_laserbeam_17")
  Node_AddSon(node220, node273)
  Body_SetCS(node273, MAT_Vector3(679.6285, 3593.851, 69.35108), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node273, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node273, 0)
  Node_EnterSimulation(node273)
  Game_LoadProgress_Advance(node0)
  node274 = Node_CreateNode("nod_trash", "3gen_laserbeam_18")
  Node_AddSon(node220, node274)
  Body_SetCS(node274, MAT_Vector3(679.1675, 3593.843, 63.71406), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node274, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node274, 0)
  Node_EnterSimulation(node274)
  Game_LoadProgress_Advance(node0)
  node275 = Node_CreateNode("nod_trash", "4gen_laserbeam_1")
  Node_AddSon(node220, node275)
  Body_SetCS(node275, MAT_Vector3(679.6285, 3659.851, 186.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node275, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node275, 0)
  Node_EnterSimulation(node275)
  Game_LoadProgress_Advance(node0)
  node276 = Node_CreateNode("nod_trash", "4gen_laserbeam_2")
  Node_AddSon(node220, node276)
  Body_SetCS(node276, MAT_Vector3(679.1675, 3659.843, 179.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node276, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node276, 0)
  Node_EnterSimulation(node276)
  Game_LoadProgress_Advance(node0)
  node277 = Node_CreateNode("nod_trash", "4gen_laserbeam_3")
  Node_AddSon(node220, node277)
  Body_SetCS(node277, MAT_Vector3(679.6285, 3659.851, 171.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node277, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node277, 0)
  Node_EnterSimulation(node277)
  Game_LoadProgress_Advance(node0)
  node278 = Node_CreateNode("nod_trash", "4gen_laserbeam_4")
  Node_AddSon(node220, node278)
  Body_SetCS(node278, MAT_Vector3(679.1675, 3659.843, 164.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node278, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node278, 0)
  Node_EnterSimulation(node278)
  Game_LoadProgress_Advance(node0)
  node279 = Node_CreateNode("nod_trash", "4gen_laserbeam_5")
  Node_AddSon(node220, node279)
  Body_SetCS(node279, MAT_Vector3(679.6285, 3659.851, 156.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node279, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node279, 0)
  Node_EnterSimulation(node279)
  Game_LoadProgress_Advance(node0)
  node280 = Node_CreateNode("nod_trash", "4gen_laserbeam_6")
  Node_AddSon(node220, node280)
  Body_SetCS(node280, MAT_Vector3(679.1675, 3659.843, 149.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node280, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node280, 0)
  Node_EnterSimulation(node280)
  Game_LoadProgress_Advance(node0)
  node281 = Node_CreateNode("nod_trash", "4gen_laserbeam_7")
  Node_AddSon(node220, node281)
  Body_SetCS(node281, MAT_Vector3(679.6285, 3659.851, 141.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node281, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node281, 0)
  Node_EnterSimulation(node281)
  Game_LoadProgress_Advance(node0)
  node282 = Node_CreateNode("nod_trash", "4gen_laserbeam_8")
  Node_AddSon(node220, node282)
  Body_SetCS(node282, MAT_Vector3(679.1675, 3659.843, 134.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node282, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node282, 0)
  Node_EnterSimulation(node282)
  Game_LoadProgress_Advance(node0)
  node283 = Node_CreateNode("nod_trash", "4gen_laserbeam_9")
  Node_AddSon(node220, node283)
  Body_SetCS(node283, MAT_Vector3(679.6285, 3659.851, 126.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node283, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node283, 0)
  Node_EnterSimulation(node283)
  Game_LoadProgress_Advance(node0)
  node284 = Node_CreateNode("nod_trash", "4gen_laserbeam_10")
  Node_AddSon(node220, node284)
  Body_SetCS(node284, MAT_Vector3(679.1675, 3659.843, 119.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node284, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node284, 0)
  Node_EnterSimulation(node284)
  Game_LoadProgress_Advance(node0)
  node285 = Node_CreateNode("nod_trash", "4gen_laserbeam_11")
  Node_AddSon(node220, node285)
  Body_SetCS(node285, MAT_Vector3(679.6285, 3659.851, 111.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node285, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node285, 0)
  Node_EnterSimulation(node285)
  Game_LoadProgress_Advance(node0)
  node286 = Node_CreateNode("nod_trash", "4gen_laserbeam_12")
  Node_AddSon(node220, node286)
  Body_SetCS(node286, MAT_Vector3(679.1675, 3659.843, 104.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node286, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node286, 0)
  Node_EnterSimulation(node286)
  Game_LoadProgress_Advance(node0)
  node287 = Node_CreateNode("nod_trash", "4gen_laserbeam_13")
  Node_AddSon(node220, node287)
  Body_SetCS(node287, MAT_Vector3(679.6285, 3659.851, 96.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node287, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node287, 0)
  Node_EnterSimulation(node287)
  Game_LoadProgress_Advance(node0)
  node288 = Node_CreateNode("nod_trash", "4gen_laserbeam_14")
  Node_AddSon(node220, node288)
  Body_SetCS(node288, MAT_Vector3(679.1675, 3659.843, 89.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node288, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node288, 0)
  Node_EnterSimulation(node288)
  Game_LoadProgress_Advance(node0)
  node289 = Node_CreateNode("nod_trash", "4gen_laserbeam_15")
  Node_AddSon(node220, node289)
  Body_SetCS(node289, MAT_Vector3(679.6285, 3659.851, 81.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node289, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node289, 0)
  Node_EnterSimulation(node289)
  Game_LoadProgress_Advance(node0)
  node290 = Node_CreateNode("nod_trash", "4gen_laserbeam_16")
  Node_AddSon(node220, node290)
  Body_SetCS(node290, MAT_Vector3(679.1675, 3659.843, 74.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node290, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node290, 0)
  Node_EnterSimulation(node290)
  Game_LoadProgress_Advance(node0)
  node291 = Node_CreateNode("nod_trash", "4gen_laserbeam_17")
  Node_AddSon(node220, node291)
  Body_SetCS(node291, MAT_Vector3(679.6285, 3659.851, 69.35108), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node291, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node291, 0)
  Node_EnterSimulation(node291)
  Game_LoadProgress_Advance(node0)
  node292 = Node_CreateNode("nod_trash", "4gen_laserbeam_18")
  Node_AddSon(node220, node292)
  Body_SetCS(node292, MAT_Vector3(679.1675, 3659.843, 63.71406), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node292, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node292, 0)
  Node_EnterSimulation(node292)
  Game_LoadProgress_Advance(node0)
  node293 = Node_CreateNode("nod_trash", "5gen_laserbeam_1")
  Node_AddSon(node220, node293)
  Body_SetCS(node293, MAT_Vector3(679.6285, 3724.851, 186.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node293, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node293, 0)
  Node_EnterSimulation(node293)
  Game_LoadProgress_Advance(node0)
  node294 = Node_CreateNode("nod_trash", "5gen_laserbeam_2")
  Node_AddSon(node220, node294)
  Body_SetCS(node294, MAT_Vector3(679.1675, 3724.843, 179.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node294, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node294, 0)
  Node_EnterSimulation(node294)
  Game_LoadProgress_Advance(node0)
  node295 = Node_CreateNode("nod_trash", "5gen_laserbeam_3")
  Node_AddSon(node220, node295)
  Body_SetCS(node295, MAT_Vector3(679.6285, 3724.851, 171.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node295, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node295, 0)
  Node_EnterSimulation(node295)
  Game_LoadProgress_Advance(node0)
  node296 = Node_CreateNode("nod_trash", "5gen_laserbeam_4")
  Node_AddSon(node220, node296)
  Body_SetCS(node296, MAT_Vector3(679.1675, 3724.843, 164.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node296, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node296, 0)
  Node_EnterSimulation(node296)
  Game_LoadProgress_Advance(node0)
  node297 = Node_CreateNode("nod_trash", "5gen_laserbeam_5")
  Node_AddSon(node220, node297)
  Body_SetCS(node297, MAT_Vector3(679.6285, 3724.851, 156.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node297, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node297, 0)
  Node_EnterSimulation(node297)
  Game_LoadProgress_Advance(node0)
  node298 = Node_CreateNode("nod_trash", "5gen_laserbeam_6")
  Node_AddSon(node220, node298)
  Body_SetCS(node298, MAT_Vector3(679.1675, 3724.843, 149.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node298, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node298, 0)
  Node_EnterSimulation(node298)
  Game_LoadProgress_Advance(node0)
  node299 = Node_CreateNode("nod_trash", "5gen_laserbeam_7")
  Node_AddSon(node220, node299)
  Body_SetCS(node299, MAT_Vector3(679.6285, 3724.851, 141.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node299, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node299, 0)
  Node_EnterSimulation(node299)
  Game_LoadProgress_Advance(node0)
  node300 = Node_CreateNode("nod_trash", "5gen_laserbeam_8")
  Node_AddSon(node220, node300)
  Body_SetCS(node300, MAT_Vector3(679.1675, 3724.843, 134.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node300, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node300, 0)
  Node_EnterSimulation(node300)
  Game_LoadProgress_Advance(node0)
  node301 = Node_CreateNode("nod_trash", "5gen_laserbeam_9")
  Node_AddSon(node220, node301)
  Body_SetCS(node301, MAT_Vector3(679.6285, 3724.851, 126.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node301, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node301, 0)
  Node_EnterSimulation(node301)
  Game_LoadProgress_Advance(node0)
  node302 = Node_CreateNode("nod_trash", "5gen_laserbeam_10")
  Node_AddSon(node220, node302)
  Body_SetCS(node302, MAT_Vector3(679.1675, 3724.843, 119.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node302, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node302, 0)
  Node_EnterSimulation(node302)
  Game_LoadProgress_Advance(node0)
  node303 = Node_CreateNode("nod_trash", "5gen_laserbeam_11")
  Node_AddSon(node220, node303)
  Body_SetCS(node303, MAT_Vector3(679.6285, 3724.851, 111.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node303, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node303, 0)
  Node_EnterSimulation(node303)
  Game_LoadProgress_Advance(node0)
  node304 = Node_CreateNode("nod_trash", "5gen_laserbeam_12")
  Node_AddSon(node220, node304)
  Body_SetCS(node304, MAT_Vector3(679.1675, 3724.843, 104.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node304, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node304, 0)
  Node_EnterSimulation(node304)
  Game_LoadProgress_Advance(node0)
  node305 = Node_CreateNode("nod_trash", "5gen_laserbeam_13")
  Node_AddSon(node220, node305)
  Body_SetCS(node305, MAT_Vector3(679.6285, 3724.851, 96.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node305, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node305, 0)
  Node_EnterSimulation(node305)
  Game_LoadProgress_Advance(node0)
  node306 = Node_CreateNode("nod_trash", "5gen_laserbeam_14")
  Node_AddSon(node220, node306)
  Body_SetCS(node306, MAT_Vector3(679.1675, 3724.843, 89.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node306, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node306, 0)
  Node_EnterSimulation(node306)
  Game_LoadProgress_Advance(node0)
  node307 = Node_CreateNode("nod_trash", "5gen_laserbeam_15")
  Node_AddSon(node220, node307)
  Body_SetCS(node307, MAT_Vector3(679.6285, 3724.851, 81.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node307, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node307, 0)
  Node_EnterSimulation(node307)
  Game_LoadProgress_Advance(node0)
  node308 = Node_CreateNode("nod_trash", "5gen_laserbeam_16")
  Node_AddSon(node220, node308)
  Body_SetCS(node308, MAT_Vector3(679.1675, 3724.843, 74.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node308, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node308, 0)
  Node_EnterSimulation(node308)
  Game_LoadProgress_Advance(node0)
  node309 = Node_CreateNode("nod_trash", "5gen_laserbeam_17")
  Node_AddSon(node220, node309)
  Body_SetCS(node309, MAT_Vector3(679.6285, 3724.851, 69.35108), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node309, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node309, 0)
  Node_EnterSimulation(node309)
  Game_LoadProgress_Advance(node0)
  node310 = Node_CreateNode("nod_trash", "5gen_laserbeam_18")
  Node_AddSon(node220, node310)
  Body_SetCS(node310, MAT_Vector3(679.1675, 3724.843, 63.71406), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node310, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node310, 0)
  Node_EnterSimulation(node310)
  Game_LoadProgress_Advance(node0)
  node311 = Node_CreateNode("nod_trash", "6gen_laserbeam_1")
  Node_AddSon(node220, node311)
  Body_SetCS(node311, MAT_Vector3(679.6285, 3791.851, 186.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node311, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node311, 0)
  Node_EnterSimulation(node311)
  Game_LoadProgress_Advance(node0)
  node312 = Node_CreateNode("nod_trash", "6gen_laserbeam_2")
  Node_AddSon(node220, node312)
  Body_SetCS(node312, MAT_Vector3(679.1675, 3791.843, 179.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node312, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node312, 0)
  Node_EnterSimulation(node312)
  Game_LoadProgress_Advance(node0)
  node313 = Node_CreateNode("nod_trash", "6gen_laserbeam_3")
  Node_AddSon(node220, node313)
  Body_SetCS(node313, MAT_Vector3(679.6285, 3791.851, 171.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node313, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node313, 0)
  Node_EnterSimulation(node313)
  Game_LoadProgress_Advance(node0)
  node314 = Node_CreateNode("nod_trash", "6gen_laserbeam_4")
  Node_AddSon(node220, node314)
  Body_SetCS(node314, MAT_Vector3(679.1675, 3791.843, 164.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node314, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node314, 0)
  Node_EnterSimulation(node314)
  Game_LoadProgress_Advance(node0)
  node315 = Node_CreateNode("nod_trash", "6gen_laserbeam_5")
  Node_AddSon(node220, node315)
  Body_SetCS(node315, MAT_Vector3(679.6285, 3791.851, 156.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node315, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node315, 0)
  Node_EnterSimulation(node315)
  Game_LoadProgress_Advance(node0)
  node316 = Node_CreateNode("nod_trash", "6gen_laserbeam_6")
  Node_AddSon(node220, node316)
  Body_SetCS(node316, MAT_Vector3(679.1675, 3791.843, 149.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node316, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node316, 0)
  Node_EnterSimulation(node316)
  Game_LoadProgress_Advance(node0)
  node317 = Node_CreateNode("nod_trash", "6gen_laserbeam_7")
  Node_AddSon(node220, node317)
  Body_SetCS(node317, MAT_Vector3(679.6285, 3791.851, 141.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node317, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node317, 0)
  Node_EnterSimulation(node317)
  Game_LoadProgress_Advance(node0)
  node318 = Node_CreateNode("nod_trash", "6gen_laserbeam_8")
  Node_AddSon(node220, node318)
  Body_SetCS(node318, MAT_Vector3(679.1675, 3791.843, 134.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node318, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node318, 0)
  Node_EnterSimulation(node318)
  Game_LoadProgress_Advance(node0)
  node319 = Node_CreateNode("nod_trash", "6gen_laserbeam_9")
  Node_AddSon(node220, node319)
  Body_SetCS(node319, MAT_Vector3(679.6285, 3791.851, 126.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node319, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node319, 0)
  Node_EnterSimulation(node319)
  Game_LoadProgress_Advance(node0)
  node320 = Node_CreateNode("nod_trash", "6gen_laserbeam_10")
  Node_AddSon(node220, node320)
  Body_SetCS(node320, MAT_Vector3(679.1675, 3791.843, 119.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node320, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node320, 0)
  Node_EnterSimulation(node320)
  Game_LoadProgress_Advance(node0)
  node321 = Node_CreateNode("nod_trash", "6gen_laserbeam_11")
  Node_AddSon(node220, node321)
  Body_SetCS(node321, MAT_Vector3(679.6285, 3791.851, 111.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node321, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node321, 0)
  Node_EnterSimulation(node321)
  Game_LoadProgress_Advance(node0)
  node322 = Node_CreateNode("nod_trash", "6gen_laserbeam_12")
  Node_AddSon(node220, node322)
  Body_SetCS(node322, MAT_Vector3(679.1675, 3791.843, 104.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node322, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node322, 0)
  Node_EnterSimulation(node322)
  Game_LoadProgress_Advance(node0)
  node323 = Node_CreateNode("nod_trash", "6gen_laserbeam_13")
  Node_AddSon(node220, node323)
  Body_SetCS(node323, MAT_Vector3(679.6285, 3791.851, 96.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node323, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node323, 0)
  Node_EnterSimulation(node323)
  Game_LoadProgress_Advance(node0)
  node324 = Node_CreateNode("nod_trash", "6gen_laserbeam_14")
  Node_AddSon(node220, node324)
  Body_SetCS(node324, MAT_Vector3(679.1675, 3791.843, 89.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node324, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node324, 0)
  Node_EnterSimulation(node324)
  Game_LoadProgress_Advance(node0)
  node325 = Node_CreateNode("nod_trash", "6gen_laserbeam_15")
  Node_AddSon(node220, node325)
  Body_SetCS(node325, MAT_Vector3(679.6285, 3791.851, 81.6784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node325, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node325, 0)
  Node_EnterSimulation(node325)
  Game_LoadProgress_Advance(node0)
  node326 = Node_CreateNode("nod_trash", "6gen_laserbeam_16")
  Node_AddSon(node220, node326)
  Body_SetCS(node326, MAT_Vector3(679.1675, 3791.843, 74.4796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node326, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node326, 0)
  Node_EnterSimulation(node326)
  Game_LoadProgress_Advance(node0)
  node327 = Node_CreateNode("nod_trash", "6gen_laserbeam_17")
  Node_AddSon(node220, node327)
  Body_SetCS(node327, MAT_Vector3(679.6285, 3791.851, 69.35108), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node327, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node327, 0)
  Node_EnterSimulation(node327)
  Game_LoadProgress_Advance(node0)
  node328 = Node_CreateNode("nod_trash", "6gen_laserbeam_18")
  Node_AddSon(node220, node328)
  Body_SetCS(node328, MAT_Vector3(679.1675, 3791.843, 63.71406), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node328, "osd/gen/gen_laserbeam.osd")
  Body_SetFriendOrFoeID(node328, 0)
  Node_EnterSimulation(node328)
  Game_LoadProgress_Advance(node0)
  node329 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node219, node329)
  Body_SetCS(node329, MAT_Vector3(2491.0042, 864.297353, 90.116766), MAT_Vector3(69.565136, 0, 0))
  Node_ParseIniFile(node329, "osd/pla/pla_ship1.osd")
  Body_SetFriendOrFoeID(node329, 2)
  Node_EnterSimulation(node329)
  Game_LoadProgress_Advance(node0)
  node330 = Node_CreateNode("nod_vessel", "wng_techbomber_1")
  Node_AddSon(node219, node330)
  Body_SetCS(node330, MAT_Vector3(2552.250108, 845.186081, 90.234108), MAT_Vector3(75.395076, 0, 0))
  Node_ParseIniFile(node330, "osd/wng/wng_techbomber.osd")
  Body_SetFriendOrFoeID(node330, 2)
  Body_SetNameKey(node330, -1)
  Body_SetCargoKey(node330, -1, 0)
  Body_SetCargoKey(node330, -1, 1)
  Body_SetCargoKey(node330, -1, 2)
  Node_EnterSimulation(node330)
  Game_LoadProgress_Advance(node0)
  node331 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_lava_juan_1")
  Node_AddSon(node219, node331)
  ParticleEmitter_SetCone(node331, MAT_Vector3(1340.829501, 1753.251998, 33.997557), MAT_Vector3(0, 90, 0), 120, 20)
  Node_ParseIniFile(node331, "osd/fx_pe/fx_pe_lava_juan.osd")
  Node_EnterSimulation(node331)
  Game_LoadProgress_Advance(node0)
  node332 = Node_CreateNode("nod_waypoint", "nav_waypoint_1")
  Node_AddSon(node219, node332)
  Body_SetPosition(node332, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node332, 110)
  Node_ParseIniFile(node332, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node332)
  Game_LoadProgress_Advance(node0)
  node333 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_1")
  Node_AddSon(node219, node333)
  Body_SetPosition(node333, MAT_Vector3(697.369163, 3874.807008, 102.626269))
  WayPoint_SetRadius(node333, 50)
  Node_ParseIniFile(node333, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node333)
  Game_LoadProgress_Advance(node0)
  node334 = Node_CreateNode("nod_laserwall", "gen_laserwall_1")
  Node_AddSon(node219, node334)
  Body_SetCS(node334, MAT_Vector3(697.842626, 3464.677501, 79.706593), MAT_Vector3(0, 0, 0))
  LaserWall_SetWallExtensionX(node334, 50)
  LaserWall_SetWallExtensionZ(node334, 150)
  Node_ParseIniFile(node334, "osd/gen/gen_laserwall.osd")
  Node_EnterSimulation(node334)
  Game_LoadProgress_Advance(node0)
  node335 = Node_CreateNode("nod_vessel", "wng_techbomber_2")
  Node_AddSon(node219, node335)
  Body_SetCS(node335, MAT_Vector3(695.039849, 3940.018594, 201.245347), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node335, "osd/wng/wng_techbomber.osd")
  Body_SetFriendOrFoeID(node335, 2)
  Body_SetNameKey(node335, -1)
  Body_SetCargoKey(node335, -1, 0)
  Body_SetCargoKey(node335, -1, 1)
  Body_SetCargoKey(node335, -1, 2)
  Node_EnterSimulation(node335)
  Game_LoadProgress_Advance(node0)
  node336 = Node_CreateNode("nod_laserwall", "gen_laserwall_2")
  Node_AddSon(node219, node336)
  Body_SetCS(node336, MAT_Vector3(686.1868, 2737.085, 92.11497), MAT_Vector3(0, 0, 0))
  LaserWall_SetWallExtensionX(node336, 50)
  LaserWall_SetWallExtensionZ(node336, 50)
  Node_ParseIniFile(node336, "osd/gen/gen_laserwall.osd")
  Node_EnterSimulation(node336)
  Game_LoadProgress_Advance(node0)
  node337 = Node_CreateNode("nod_vessel", "gen_juan_mine_1")
  Node_AddSon(node219, node337)
  Body_SetCS(node337, MAT_Vector3(875.874639, 3978.81391, 136.880243), MAT_Vector3(136, 0, 0))
  Node_ParseIniFile(node337, "osd/gen/gen_juan_mine.osd")
  Body_SetFriendOrFoeID(node337, 1)
  Body_SetNameKey(node337, -1)
  Body_SetCargoKey(node337, -1, 0)
  Body_SetCargoKey(node337, -1, 1)
  Body_SetCargoKey(node337, -1, 2)
  Node_EnterSimulation(node337)
  Game_LoadProgress_Advance(node0)
  node338 = Node_CreateNode("nod_vessel", "gen_juan_mine_5")
  Node_AddSon(node219, node338)
  Body_SetCS(node338, MAT_Vector3(875.8746, 3978.814, 136.8802), MAT_Vector3(136, 0, 0))
  Node_ParseIniFile(node338, "osd/gen/gen_juan_mine.osd")
  Body_SetFriendOrFoeID(node338, 1)
  Body_SetNameKey(node338, -1)
  Body_SetCargoKey(node338, -1, 0)
  Body_SetCargoKey(node338, -1, 1)
  Body_SetCargoKey(node338, -1, 2)
  Node_EnterSimulation(node338)
  Game_LoadProgress_Advance(node0)
  node339 = Node_CreateNode("nod_vessel", "gen_juan_mine_6")
  Node_AddSon(node219, node339)
  Body_SetCS(node339, MAT_Vector3(875.8746, 3978.814, 136.8802), MAT_Vector3(136, 0, 0))
  Node_ParseIniFile(node339, "osd/gen/gen_juan_mine.osd")
  Body_SetFriendOrFoeID(node339, 1)
  Body_SetNameKey(node339, -1)
  Body_SetCargoKey(node339, -1, 0)
  Body_SetCargoKey(node339, -1, 1)
  Body_SetCargoKey(node339, -1, 2)
  Node_EnterSimulation(node339)
  Game_LoadProgress_Advance(node0)
  node340 = Node_CreateNode("nod_vessel", "gen_juan_mine_10")
  Node_AddSon(node219, node340)
  Body_SetCS(node340, MAT_Vector3(875.8746, 3978.814, 136.8802), MAT_Vector3(136, 0, 0))
  Node_ParseIniFile(node340, "osd/gen/gen_juan_mine.osd")
  Body_SetFriendOrFoeID(node340, 1)
  Body_SetNameKey(node340, -1)
  Body_SetCargoKey(node340, -1, 0)
  Body_SetCargoKey(node340, -1, 1)
  Body_SetCargoKey(node340, -1, 2)
  Node_EnterSimulation(node340)
  Game_LoadProgress_Advance(node0)
  node341 = Node_CreateNode("nod_vessel", "2gen_juan_mine_1")
  Node_AddSon(node219, node341)
  Body_SetCS(node341, MAT_Vector3(523.756894, 3994.784758, 135.635924), MAT_Vector3(-135.991574, 0, 0))
  Node_ParseIniFile(node341, "osd/gen/gen_juan_mine.osd")
  Body_SetFriendOrFoeID(node341, 1)
  Body_SetNameKey(node341, -1)
  Body_SetCargoKey(node341, -1, 0)
  Body_SetCargoKey(node341, -1, 1)
  Body_SetCargoKey(node341, -1, 2)
  Node_EnterSimulation(node341)
  Game_LoadProgress_Advance(node0)
  node342 = Node_CreateNode("nod_vessel", "2gen_juan_mine_2")
  Node_AddSon(node219, node342)
  Body_SetCS(node342, MAT_Vector3(523.7569, 3994.785, 135.6359), MAT_Vector3(-135.9916, 0, 0))
  Node_ParseIniFile(node342, "osd/gen/gen_juan_mine.osd")
  Body_SetFriendOrFoeID(node342, 1)
  Body_SetNameKey(node342, -1)
  Body_SetCargoKey(node342, -1, 0)
  Body_SetCargoKey(node342, -1, 1)
  Body_SetCargoKey(node342, -1, 2)
  Node_EnterSimulation(node342)
  Game_LoadProgress_Advance(node0)
  node343 = Node_CreateNode("nod_vessel", "2gen_juan_mine_5")
  Node_AddSon(node219, node343)
  Body_SetCS(node343, MAT_Vector3(523.7569, 3994.785, 135.6359), MAT_Vector3(-135.9916, 0, 0))
  Node_ParseIniFile(node343, "osd/gen/gen_juan_mine.osd")
  Body_SetFriendOrFoeID(node343, 1)
  Body_SetNameKey(node343, -1)
  Body_SetCargoKey(node343, -1, 0)
  Body_SetCargoKey(node343, -1, 1)
  Body_SetCargoKey(node343, -1, 2)
  Node_EnterSimulation(node343)
  Game_LoadProgress_Advance(node0)
  node344 = Node_CreateNode("nod_vessel", "2gen_juan_mine_10")
  Node_AddSon(node219, node344)
  Body_SetCS(node344, MAT_Vector3(523.7569, 3994.785, 135.6359), MAT_Vector3(-135.9916, 0, 0))
  Node_ParseIniFile(node344, "osd/gen/gen_juan_mine.osd")
  Body_SetFriendOrFoeID(node344, 1)
  Body_SetNameKey(node344, -1)
  Body_SetCargoKey(node344, -1, 0)
  Body_SetCargoKey(node344, -1, 1)
  Body_SetCargoKey(node344, -1, 2)
  Node_EnterSimulation(node344)
  Game_LoadProgress_Advance(node0)
  node345 = Node_CreateNode("nod_vessel", "1gen_juan_mine_1")
  Node_AddSon(node219, node345)
  Body_SetCS(node345, MAT_Vector3(714.860791, 3860.120892, 153.621818), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node345, "osd/gen/gen_juan_mine.osd")
  Body_SetFriendOrFoeID(node345, 1)
  Body_SetNameKey(node345, -1)
  Body_SetCargoKey(node345, -1, 0)
  Body_SetCargoKey(node345, -1, 1)
  Body_SetCargoKey(node345, -1, 2)
  Node_EnterSimulation(node345)
  Game_LoadProgress_Advance(node0)
  node346 = Node_CreateNode("nod_vessel", "1gen_juan_mine_3")
  Node_AddSon(node219, node346)
  Body_SetCS(node346, MAT_Vector3(714.8608, 3860.121, 153.6218), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node346, "osd/gen/gen_juan_mine.osd")
  Body_SetFriendOrFoeID(node346, 1)
  Body_SetNameKey(node346, -1)
  Body_SetCargoKey(node346, -1, 0)
  Body_SetCargoKey(node346, -1, 1)
  Body_SetCargoKey(node346, -1, 2)
  Node_EnterSimulation(node346)
  Game_LoadProgress_Advance(node0)
  node347 = Node_CreateNode("nod_vessel", "1gen_juan_mine_5")
  Node_AddSon(node219, node347)
  Body_SetCS(node347, MAT_Vector3(714.8608, 3860.121, 153.6218), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node347, "osd/gen/gen_juan_mine.osd")
  Body_SetFriendOrFoeID(node347, 1)
  Body_SetNameKey(node347, -1)
  Body_SetCargoKey(node347, -1, 0)
  Body_SetCargoKey(node347, -1, 1)
  Body_SetCargoKey(node347, -1, 2)
  Node_EnterSimulation(node347)
  Game_LoadProgress_Advance(node0)
  node348 = Node_CreateNode("nod_vessel", "1gen_juan_mine_10")
  Node_AddSon(node219, node348)
  Body_SetCS(node348, MAT_Vector3(714.8608, 3860.121, 153.6218), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node348, "osd/gen/gen_juan_mine.osd")
  Body_SetFriendOrFoeID(node348, 1)
  Body_SetNameKey(node348, -1)
  Body_SetCargoKey(node348, -1, 0)
  Body_SetCargoKey(node348, -1, 1)
  Body_SetCargoKey(node348, -1, 2)
  Node_EnterSimulation(node348)
  Game_LoadProgress_Advance(node0)
  node349 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node349)
  Camera_SetBackPlane(node349, 2048)
  Node_EnterSimulation(node349)
  Game_LoadProgress_Advance(node0)
  node350 = Node_CreateNode("NOD_Scenario", "IngameSequences")
  Node_AddSon(node0, node350)
  Node_EnterSimulation(node350)
  Game_LoadProgress_Advance(node0)
  node351 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node350, node351)
  Node_EnterSimulation(node351)
  Game_LoadProgress_Advance(node0)
  node352 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node350, node352)
  Node_EnterSimulation(node352)
  Game_LoadProgress_Advance(node0)
  node353 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node352, node353)
  Position_SetPosition(node353, MAT_Vector3(2854.988676, 588.374905, 257.409801))
  Position_SetRadius(node353, 5)
  Game_LoadProgress_Advance(node0)
  node354 = Node_CreateNode("NOD_Position", "Position_11")
  Node_AddSon(node352, node354)
  Position_SetPosition(node354, MAT_Vector3(2891.260798, 651.272578, 249.1429))
  Position_SetRadius(node354, 5)
  Game_LoadProgress_Advance(node0)
  node355 = Node_CreateNode("NOD_Path", "Path_1")
  Node_AddSon(node352, node355)
  Game_LoadProgress_Advance(node0)
  node356 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node355, node356)
  Position_SetPosition(node356, MAT_Vector3(2971.032231, 631.55828, 250.042606))
  Position_SetRadius(node356, 5)
  Game_LoadProgress_Advance(node0)
  node357 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node355, node357)
  Position_SetPosition(node357, MAT_Vector3(2569.156435, 788.464554, 250.318336))
  Position_SetRadius(node357, 5)
  Game_LoadProgress_Advance(node0)
  node358 = Node_CreateNode("NOD_Path", "Path_2")
  Node_AddSon(node352, node358)
  Game_LoadProgress_Advance(node0)
  node359 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node358, node359)
  Position_SetPosition(node359, MAT_Vector3(696.367732, 2383.450069, 102))
  Position_SetRadius(node359, 5)
  Game_LoadProgress_Advance(node0)
  node360 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node358, node360)
  Position_SetPosition(node360, MAT_Vector3(690.253658, 2743.400263, 102))
  Position_SetRadius(node360, 5)
  Game_LoadProgress_Advance(node0)
  node361 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node358, node361)
  Position_SetPosition(node361, MAT_Vector3(686.160482, 2968.733866, 109.57748))
  Position_SetRadius(node361, 5)
  Game_LoadProgress_Advance(node0)
  node362 = Node_CreateNode("NOD_Position", "Position_2")
  Node_AddSon(node352, node362)
  Position_SetPosition(node362, MAT_Vector3(694.322882, 2506.920195, 102))
  Position_SetRadius(node362, 5)
  Game_LoadProgress_Advance(node0)
  node363 = Node_CreateNode("NOD_Position", "Position_3")
  Node_AddSon(node352, node363)
  Position_SetPosition(node363, MAT_Vector3(690.582144, 2766.114257, 102))
  Position_SetRadius(node363, 5)
  Game_LoadProgress_Advance(node0)
  node364 = Node_CreateNode("NOD_Position", "Position_4")
  Node_AddSon(node352, node364)
  Position_SetPosition(node364, MAT_Vector3(756.815738, 2764.800313, 102))
  Position_SetRadius(node364, 5)
  Game_LoadProgress_Advance(node0)
  node365 = Node_CreateNode("NOD_Path", "Path_3")
  Node_AddSon(node352, node365)
  Game_LoadProgress_Advance(node0)
  node366 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node365, node366)
  Position_SetPosition(node366, MAT_Vector3(687.058985, 2922.380886, 75.980083))
  Position_SetRadius(node366, 5)
  Game_LoadProgress_Advance(node0)
  node367 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node365, node367)
  Position_SetPosition(node367, MAT_Vector3(687.557443, 3030.706373, 73.624719))
  Position_SetRadius(node367, 5)
  Game_LoadProgress_Advance(node0)
  node368 = Node_CreateNode("NOD_Position", "EndPosition_1")
  Node_AddSon(node352, node368)
  Position_SetPosition(node368, MAT_Vector3(714.278642, 3925.626743, 105.459038))
  Position_SetRadius(node368, 5)
  Game_LoadProgress_Advance(node0)
  node369 = Node_CreateNode("NOD_Position", "EndPosition_2")
  Node_AddSon(node352, node369)
  Position_SetPosition(node369, MAT_Vector3(694.581195, 3478.600973, 102.236888))
  Position_SetRadius(node369, 5)
  Game_LoadProgress_Advance(node0)
  node370 = Node_CreateNode("NOD_Position", "EndPosition_3")
  Node_AddSon(node352, node370)
  Position_SetPosition(node370, MAT_Vector3(0, 0, 0))
  Position_SetRadius(node370, 5)
  Game_LoadProgress_Advance(node0)
  node371 = Node_CreateNode("NOD_Path", "WallPath_1")
  Node_AddSon(node352, node371)
  Game_LoadProgress_Advance(node0)
  node372 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node371, node372)
  Position_SetPosition(node372, MAT_Vector3(632.250616, 3775.450248, 53))
  Position_SetRadius(node372, 5)
  Game_LoadProgress_Advance(node0)
  node373 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node371, node373)
  Position_SetPosition(node373, MAT_Vector3(604.142511, 3775.306587, 53))
  Position_SetRadius(node373, 5)
  Game_LoadProgress_Advance(node0)
  node374 = Node_CreateNode("NOD_Path", "WallPath_2")
  Node_AddSon(node352, node374)
  Game_LoadProgress_Advance(node0)
  node375 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node374, node375)
  Position_SetPosition(node375, MAT_Vector3(756.048244, 3776.325889, 53))
  Position_SetRadius(node375, 5)
  Game_LoadProgress_Advance(node0)
  node376 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node374, node376)
  Position_SetPosition(node376, MAT_Vector3(780.13807, 3776.259224, 53))
  Position_SetRadius(node376, 5)
  Game_LoadProgress_Advance(node0)
  node377 = Node_CreateNode("NOD_Path", "Path_6")
  Node_AddSon(node352, node377)
  Game_LoadProgress_Advance(node0)
  node378 = Node_CreateNode("NOD_Path", "Path_7")
  Node_AddSon(node352, node378)
  Game_LoadProgress_Advance(node0)
  node379 = Node_CreateNode("NOD_Path", "Path_8")
  Node_AddSon(node352, node379)
  Game_LoadProgress_Advance(node0)
  node380 = Node_CreateNode("NOD_Path", "Path_9")
  Node_AddSon(node352, node380)
  Game_LoadProgress_Advance(node0)
  node381 = Node_CreateNode("NOD_Path", "PlayerEndPath_1")
  Node_AddSon(node352, node381)
  Game_LoadProgress_Advance(node0)
  node382 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node381, node382)
  Position_SetPosition(node382, MAT_Vector3(696.08333, 3905.903888, 76.5144))
  Position_SetRadius(node382, 5)
  Game_LoadProgress_Advance(node0)
  node383 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node381, node383)
  Position_SetPosition(node383, MAT_Vector3(694.562, 3452.057, 75.3459))
  Position_SetRadius(node383, 5)
  Game_LoadProgress_Advance(node0)
  node384 = Node_CreateNode("NOD_Path", "EndOfEndPath_1")
  Node_AddSon(node352, node384)
  Game_LoadProgress_Advance(node0)
  node385 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node384, node385)
  Position_SetPosition(node385, MAT_Vector3(687.391966, 2859.393599, 71.845489))
  Position_SetRadius(node385, 5)
  Game_LoadProgress_Advance(node0)
  node386 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node384, node386)
  Position_SetPosition(node386, MAT_Vector3(686.225429, 2670.880269, 71.948741))
  Position_SetRadius(node386, 5)
  Game_LoadProgress_Advance(node0)
  node387 = Node_CreateNode("NOD_Path", "EndOfEndPath_2")
  Node_AddSon(node352, node387)
  Game_LoadProgress_Advance(node0)
  node388 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node387, node388)
  Position_SetPosition(node388, MAT_Vector3(662.627391, 2689.79295, 96.03324))
  Position_SetRadius(node388, 5)
  Game_LoadProgress_Advance(node0)
  node389 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node387, node389)
  Position_SetPosition(node389, MAT_Vector3(670.512202, 2634.291861, 77.03323))
  Position_SetRadius(node389, 5)
  Game_LoadProgress_Advance(node0)
  node390 = Node_CreateNode("NOD_Path", "Amitab2HarvesterPath_1")
  Node_AddSon(node352, node390)
  Game_LoadProgress_Advance(node0)
  node391 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node390, node391)
  Position_SetPosition(node391, MAT_Vector3(722.028805, 2491.103462, 104.095449))
  Position_SetRadius(node391, 5)
  Game_LoadProgress_Advance(node0)
  node392 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node390, node392)
  Position_SetPosition(node392, MAT_Vector3(736.692652, 2372.715143, 141.492504))
  Position_SetRadius(node392, 5)
  Game_LoadProgress_Advance(node0)
  node393 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node390, node393)
  Position_SetPosition(node393, MAT_Vector3(726.756604, 2110.500425, 150.369794))
  Position_SetRadius(node393, 5)
  Game_LoadProgress_Advance(node0)
  node394 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node390, node394)
  Position_SetPosition(node394, MAT_Vector3(565.076168, 1998.843034, 147.413558))
  Position_SetRadius(node394, 5)
  Game_LoadProgress_Advance(node0)
  node395 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node390, node395)
  Position_SetPosition(node395, MAT_Vector3(576.646198, 1895.459366, 155))
  Position_SetRadius(node395, 5)
  Game_LoadProgress_Advance(node0)
  node396 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node390, node396)
  Position_SetPosition(node396, MAT_Vector3(1110.632521, 1951.226765, 169.465351))
  Position_SetRadius(node396, 5)
  Game_LoadProgress_Advance(node0)
  node397 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node390, node397)
  Position_SetPosition(node397, MAT_Vector3(1354.880843, 1945.218974, 144.136395))
  Position_SetRadius(node397, 5)
  Game_LoadProgress_Advance(node0)
  node398 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node390, node398)
  Position_SetPosition(node398, MAT_Vector3(1397.793773, 1636.680943, 171.761761))
  Position_SetRadius(node398, 5)
  Game_LoadProgress_Advance(node0)
  node399 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node390, node399)
  Position_SetPosition(node399, MAT_Vector3(1261.802033, 1474.705241, 139.242749))
  Position_SetRadius(node399, 5)
  Game_LoadProgress_Advance(node0)
  node400 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node390, node400)
  Position_SetPosition(node400, MAT_Vector3(1455.15905, 1147.950696, 141.36071))
  Position_SetRadius(node400, 5)
  Game_LoadProgress_Advance(node0)
  node401 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node390, node401)
  Position_SetPosition(node401, MAT_Vector3(1782.484457, 938.350672, 163.621908))
  Position_SetRadius(node401, 5)
  Game_LoadProgress_Advance(node0)
  node402 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node390, node402)
  Position_SetPosition(node402, MAT_Vector3(2313.946763, 864.748073, 165.560254))
  Position_SetRadius(node402, 5)
  Game_LoadProgress_Advance(node0)
  node403 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node390, node403)
  Position_SetPosition(node403, MAT_Vector3(2485.968244, 610.998805, 241.795721))
  Position_SetRadius(node403, 5)
  Game_LoadProgress_Advance(node0)
  node404 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node390, node404)
  Position_SetPosition(node404, MAT_Vector3(2586.836138, 576.571055, 253.374076))
  Position_SetRadius(node404, 5)
  Game_LoadProgress_Advance(node0)
  node405 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node390, node405)
  Position_SetPosition(node405, MAT_Vector3(2654.866963, 580.290103, 250.335298))
  Position_SetRadius(node405, 5)
  Game_LoadProgress_Advance(node0)
  node406 = Node_CreateNode("NOD_Position", "Position_5")
  Node_AddSon(node352, node406)
  Position_SetPosition(node406, MAT_Vector3(734.217887, 2842.736072, 176.433047))
  Position_SetRadius(node406, 5)
  Game_LoadProgress_Advance(node0)
  node407 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node350, node407)
  Node_EnterSimulation(node407)
  Game_LoadProgress_Advance(node0)
  node408 = Node_CreateNode("NOD_Director", "Intro")
  Node_AddSon(node407, node408)
  Node_EnterSimulation(node408)
  Game_LoadProgress_Advance(node0)
  node409 = Node_CreateNode("NOD_Director", "Director_1")
  Node_AddSon(node407, node409)
  Node_EnterSimulation(node409)
  Game_LoadProgress_Advance(node0)
  node410 = Node_CreateNode("NOD_Director", "End_1")
  Node_AddSon(node407, node410)
  Node_EnterSimulation(node410)
  Game_LoadProgress_Advance(node0)
  node411 = Node_CreateNode("NOD_Director", "End_2")
  Node_AddSon(node407, node411)
  Node_EnterSimulation(node411)
  Game_LoadProgress_Advance(node0)
  node412 = Node_CreateNode("NOD_Director", "KickOutPlayer")
  Node_AddSon(node407, node412)
  Node_EnterSimulation(node412)
  Game_LoadProgress_Advance(node0)
  node413 = Node_CreateNode("NOD_Director", "KickOutPlayer2")
  Node_AddSon(node407, node413)
  Node_EnterSimulation(node413)
  Game_LoadProgress_Advance(node0)
  node414 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node350, node414)
  Node_EnterSimulation(node414)
  Game_LoadProgress_Advance(node0)
  node415 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_1")
  Node_AddSon(node414, node415)
  Body_SetFriendOrFoeID(node415, 0)
  Body_SetCS(node415, MAT_Vector3(694.969727, 2810.170396, 101.743994), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node415, 20, 20, 20)
  Node_EnterSimulation(node415)
  Game_LoadProgress_Advance(node0)
  node416 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_2")
  Node_AddSon(node414, node416)
  Body_SetFriendOrFoeID(node416, 0)
  Body_SetCS(node416, MAT_Vector3(696.312019, 3006.263295, 101.744), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node416, 20, 20, 20)
  Node_EnterSimulation(node416)
  Game_LoadProgress_Advance(node0)
  node417 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node350, node417)
  Node_EnterSimulation(node417)
  Game_LoadProgress_Advance(node0)
  node418 = Node_CreateNode("NOD_Scenario", "vfx")
  Node_AddSon(node0, node418)
  Node_EnterSimulation(node418)
  Game_LoadProgress_Advance(node0)
  node419 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node418, node419)
  Node_EnterSimulation(node419)
  Game_LoadProgress_Advance(node0)
  node420 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node418, node420)
  Node_EnterSimulation(node420)
  Game_LoadProgress_Advance(node0)
  node421 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node418, node421)
  Node_EnterSimulation(node421)
  Game_LoadProgress_Advance(node0)
  node422 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node418, node422)
  Node_EnterSimulation(node422)
  Game_LoadProgress_Advance(node0)
  node423 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node418, node423)
  Node_EnterSimulation(node423)
  Game_LoadProgress_Advance(node0)
  node424 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_01")
  Node_AddSon(node423, node424)
  ParticleEmitter_SetCone(node424, MAT_Vector3(2110.869, 2360.051, 39.72141), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node424, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node424)
  Game_LoadProgress_Advance(node0)
  node425 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_02")
  Node_AddSon(node423, node425)
  ParticleEmitter_SetCone(node425, MAT_Vector3(2231.342, 2046.946, 26.87178), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node425, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node425)
  Game_LoadProgress_Advance(node0)
  node426 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_03")
  Node_AddSon(node423, node426)
  ParticleEmitter_SetCone(node426, MAT_Vector3(2177.743, 2301.132, 23.08167), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node426, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node426)
  Game_LoadProgress_Advance(node0)
  node427 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_04")
  Node_AddSon(node423, node427)
  ParticleEmitter_SetCone(node427, MAT_Vector3(2280.612, 2081.538, 19.78745), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node427, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node427)
  Game_LoadProgress_Advance(node0)
  node428 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_05")
  Node_AddSon(node423, node428)
  ParticleEmitter_SetCone(node428, MAT_Vector3(2171.049, 1976.902, 20.91576), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node428, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node428)
  Game_LoadProgress_Advance(node0)
  node429 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_06")
  Node_AddSon(node423, node429)
  ParticleEmitter_SetCone(node429, MAT_Vector3(2178.731, 2082.336, 20.72636), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node429, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node429)
  Game_LoadProgress_Advance(node0)
  node430 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_07")
  Node_AddSon(node423, node430)
  ParticleEmitter_SetCone(node430, MAT_Vector3(2113.017, 2195.421, 15.57232), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node430, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node430)
  Game_LoadProgress_Advance(node0)
  node431 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_08")
  Node_AddSon(node423, node431)
  ParticleEmitter_SetCone(node431, MAT_Vector3(2145.499, 2244.835, 14.94798), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node431, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node431)
  Game_LoadProgress_Advance(node0)
  node432 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_09")
  Node_AddSon(node423, node432)
  ParticleEmitter_SetCone(node432, MAT_Vector3(2416.857, 2208.243, 18.05464), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node432, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node432)
  Game_LoadProgress_Advance(node0)
  node433 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_10")
  Node_AddSon(node423, node433)
  ParticleEmitter_SetCone(node433, MAT_Vector3(2148.25, 2030.052, 20.55466), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node433, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node433)
  Game_LoadProgress_Advance(node0)
  node434 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_11")
  Node_AddSon(node423, node434)
  ParticleEmitter_SetCone(node434, MAT_Vector3(2200.669, 2219.666, 15.79469), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node434, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node434)
  Game_LoadProgress_Advance(node0)
  node435 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_12")
  Node_AddSon(node423, node435)
  ParticleEmitter_SetCone(node435, MAT_Vector3(2234.19, 1989.222, 24.39825), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node435, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node435)
  Game_LoadProgress_Advance(node0)
  node436 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_13")
  Node_AddSon(node423, node436)
  ParticleEmitter_SetCone(node436, MAT_Vector3(2289.211, 2233.433, 18.42352), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node436, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node436)
  Game_LoadProgress_Advance(node0)
  node437 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_14")
  Node_AddSon(node423, node437)
  ParticleEmitter_SetCone(node437, MAT_Vector3(2118.602, 2130.725, 20.76195), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node437, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node437)
  Game_LoadProgress_Advance(node0)
  node438 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_15")
  Node_AddSon(node423, node438)
  ParticleEmitter_SetCone(node438, MAT_Vector3(2100.21, 2072.212, 16.19517), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node438, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node438)
  Game_LoadProgress_Advance(node0)
  node439 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_16")
  Node_AddSon(node423, node439)
  ParticleEmitter_SetCone(node439, MAT_Vector3(2263.481, 2181.603, 13.93456), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node439, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node439)
  Game_LoadProgress_Advance(node0)
  node440 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_17")
  Node_AddSon(node423, node440)
  ParticleEmitter_SetCone(node440, MAT_Vector3(2372.038, 2262.14, 16.40661), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node440, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node440)
  Game_LoadProgress_Advance(node0)
  node441 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_18")
  Node_AddSon(node423, node441)
  ParticleEmitter_SetCone(node441, MAT_Vector3(2295.825, 2004.793, 23.82274), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node441, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node441)
  Game_LoadProgress_Advance(node0)
  node442 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_19")
  Node_AddSon(node423, node442)
  ParticleEmitter_SetCone(node442, MAT_Vector3(2403.559, 2072.276, 23.82274), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node442, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node442)
  Game_LoadProgress_Advance(node0)
  node443 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_20")
  Node_AddSon(node423, node443)
  ParticleEmitter_SetCone(node443, MAT_Vector3(2451.325, 2138.114, 13.86037), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node443, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node443)
  Game_LoadProgress_Advance(node0)
  node444 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_21")
  Node_AddSon(node423, node444)
  ParticleEmitter_SetCone(node444, MAT_Vector3(2361.472, 2019.282, 23.82274), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node444, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node444)
  Game_LoadProgress_Advance(node0)
  node445 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_22")
  Node_AddSon(node423, node445)
  ParticleEmitter_SetCone(node445, MAT_Vector3(2380.367, 2144.784, 23.82274), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node445, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node445)
  Game_LoadProgress_Advance(node0)
  node446 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_23")
  Node_AddSon(node423, node446)
  ParticleEmitter_SetCone(node446, MAT_Vector3(2346.452, 2089.274, 23.82274), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node446, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node446)
  Game_LoadProgress_Advance(node0)
  node447 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_24")
  Node_AddSon(node423, node447)
  ParticleEmitter_SetCone(node447, MAT_Vector3(2180.13, 2154.291, 23.82274), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node447, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node447)
  Game_LoadProgress_Advance(node0)
  node448 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_25")
  Node_AddSon(node423, node448)
  ParticleEmitter_SetCone(node448, MAT_Vector3(2314.486, 2300.457, 13.93456), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node448, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node448)
  Game_LoadProgress_Advance(node0)
  node449 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_26")
  Node_AddSon(node423, node449)
  ParticleEmitter_SetCone(node449, MAT_Vector3(2353.989, 2199.384, 13.93456), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node449, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node449)
  Game_LoadProgress_Advance(node0)
  node450 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_27")
  Node_AddSon(node423, node450)
  ParticleEmitter_SetCone(node450, MAT_Vector3(2304.991, 2145.87, 23.82274), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node450, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node450)
  Game_LoadProgress_Advance(node0)
  node451 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_28")
  Node_AddSon(node423, node451)
  ParticleEmitter_SetCone(node451, MAT_Vector3(2242.004, 2268.82, 18.05464), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node451, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node451)
  Game_LoadProgress_Advance(node0)
  node452 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_29")
  Node_AddSon(node423, node452)
  ParticleEmitter_SetCone(node452, MAT_Vector3(2231.142, 2119.05, 23.82274), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node452, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node452)
  Game_LoadProgress_Advance(node0)
  node453 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_30")
  Node_AddSon(node423, node453)
  ParticleEmitter_SetCone(node453, MAT_Vector3(1900.16, 1892.939, 23.82274), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node453, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node453)
  Game_LoadProgress_Advance(node0)
  node454 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_31")
  Node_AddSon(node423, node454)
  ParticleEmitter_SetCone(node454, MAT_Vector3(2078.033, 2004.945, 20.56577), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node454, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node454)
  Game_LoadProgress_Advance(node0)
  node455 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_32")
  Node_AddSon(node423, node455)
  ParticleEmitter_SetCone(node455, MAT_Vector3(2103.081, 2286.812, 26.58282), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node455, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node455)
  Game_LoadProgress_Advance(node0)
  node456 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_33")
  Node_AddSon(node423, node456)
  ParticleEmitter_SetCone(node456, MAT_Vector3(2021.197, 2048.697, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node456, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node456)
  Game_LoadProgress_Advance(node0)
  node457 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_34")
  Node_AddSon(node423, node457)
  ParticleEmitter_SetCone(node457, MAT_Vector3(2040.601, 2103.966, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node457, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node457)
  Game_LoadProgress_Advance(node0)
  node458 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_35")
  Node_AddSon(node423, node458)
  ParticleEmitter_SetCone(node458, MAT_Vector3(2047.267, 2167.765, 27.18843), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node458, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node458)
  Game_LoadProgress_Advance(node0)
  node459 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_36")
  Node_AddSon(node423, node459)
  ParticleEmitter_SetCone(node459, MAT_Vector3(2052.815, 2352.078, 35.06141), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node459, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node459)
  Game_LoadProgress_Advance(node0)
  node460 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_37")
  Node_AddSon(node423, node460)
  ParticleEmitter_SetCone(node460, MAT_Vector3(2049.023, 2238.963, 44.75122), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node460, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node460)
  Game_LoadProgress_Advance(node0)
  node461 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_38")
  Node_AddSon(node423, node461)
  ParticleEmitter_SetCone(node461, MAT_Vector3(2032.674, 2297.516, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node461, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node461)
  Game_LoadProgress_Advance(node0)
  node462 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_39")
  Node_AddSon(node423, node462)
  ParticleEmitter_SetCone(node462, MAT_Vector3(2250.009, 2339.706, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node462, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node462)
  Game_LoadProgress_Advance(node0)
  node463 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_40")
  Node_AddSon(node423, node463)
  ParticleEmitter_SetCone(node463, MAT_Vector3(1982.385, 2343.085, 26.58282), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node463, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node463)
  Game_LoadProgress_Advance(node0)
  node464 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_41")
  Node_AddSon(node423, node464)
  ParticleEmitter_SetCone(node464, MAT_Vector3(1970.905, 2267.891, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node464, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node464)
  Game_LoadProgress_Advance(node0)
  node465 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_42")
  Node_AddSon(node423, node465)
  ParticleEmitter_SetCone(node465, MAT_Vector3(2182.145, 2351.447, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node465, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node465)
  Game_LoadProgress_Advance(node0)
  node466 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_43")
  Node_AddSon(node423, node466)
  ParticleEmitter_SetCone(node466, MAT_Vector3(1782.322, 2273.641, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node466, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node466)
  Game_LoadProgress_Advance(node0)
  node467 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_44")
  Node_AddSon(node423, node467)
  ParticleEmitter_SetCone(node467, MAT_Vector3(1987.921, 2195.192, 22.34352), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node467, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node467)
  Game_LoadProgress_Advance(node0)
  node468 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_45")
  Node_AddSon(node423, node468)
  ParticleEmitter_SetCone(node468, MAT_Vector3(1923.922, 2314.067, 25.37159), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node468, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node468)
  Game_LoadProgress_Advance(node0)
  node469 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_46")
  Node_AddSon(node423, node469)
  ParticleEmitter_SetCone(node469, MAT_Vector3(1851.982, 2285.819, 24.76598), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node469, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node469)
  Game_LoadProgress_Advance(node0)
  node470 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_47")
  Node_AddSon(node423, node470)
  ParticleEmitter_SetCone(node470, MAT_Vector3(1904.218, 2241.294, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node470, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node470)
  Game_LoadProgress_Advance(node0)
  node471 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_48")
  Node_AddSon(node423, node471)
  ParticleEmitter_SetCone(node471, MAT_Vector3(1918.502, 2176.844, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node471, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node471)
  Game_LoadProgress_Advance(node0)
  node472 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_49")
  Node_AddSon(node423, node472)
  ParticleEmitter_SetCone(node472, MAT_Vector3(1972.429, 2124.648, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node472, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node472)
  Game_LoadProgress_Advance(node0)
  node473 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_50")
  Node_AddSon(node423, node473)
  ParticleEmitter_SetCone(node473, MAT_Vector3(1837.626, 2216.134, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node473, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node473)
  Game_LoadProgress_Advance(node0)
  node474 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_51")
  Node_AddSon(node423, node474)
  ParticleEmitter_SetCone(node474, MAT_Vector3(1862.713, 2145.409, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node474, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node474)
  Game_LoadProgress_Advance(node0)
  node475 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_52")
  Node_AddSon(node423, node475)
  ParticleEmitter_SetCone(node475, MAT_Vector3(1913.253, 2087.261, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node475, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node475)
  Game_LoadProgress_Advance(node0)
  node476 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_53")
  Node_AddSon(node423, node476)
  ParticleEmitter_SetCone(node476, MAT_Vector3(1956.682, 2025.802, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node476, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node476)
  Game_LoadProgress_Advance(node0)
  node477 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_54")
  Node_AddSon(node423, node477)
  ParticleEmitter_SetCone(node477, MAT_Vector3(2012.502, 1979.226, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node477, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node477)
  Game_LoadProgress_Advance(node0)
  node478 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_55")
  Node_AddSon(node423, node478)
  ParticleEmitter_SetCone(node478, MAT_Vector3(1741.889, 2235.453, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node478, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node478)
  Game_LoadProgress_Advance(node0)
  node479 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_56")
  Node_AddSon(node423, node479)
  ParticleEmitter_SetCone(node479, MAT_Vector3(1781.954, 2176.078, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node479, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node479)
  Game_LoadProgress_Advance(node0)
  node480 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_57")
  Node_AddSon(node423, node480)
  ParticleEmitter_SetCone(node480, MAT_Vector3(1820.464, 2109.49, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node480, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node480)
  Game_LoadProgress_Advance(node0)
  node481 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_58")
  Node_AddSon(node423, node481)
  ParticleEmitter_SetCone(node481, MAT_Vector3(1862.063, 2043.763, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node481, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node481)
  Game_LoadProgress_Advance(node0)
  node482 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_59")
  Node_AddSon(node423, node482)
  ParticleEmitter_SetCone(node482, MAT_Vector3(1905.207, 1978.466, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node482, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node482)
  Game_LoadProgress_Advance(node0)
  node483 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_60")
  Node_AddSon(node423, node483)
  ParticleEmitter_SetCone(node483, MAT_Vector3(1960.161, 1930.514, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node483, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node483)
  Game_LoadProgress_Advance(node0)
  node484 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_61")
  Node_AddSon(node423, node484)
  ParticleEmitter_SetCone(node484, MAT_Vector3(1682.939, 2202.976, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node484, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node484)
  Game_LoadProgress_Advance(node0)
  node485 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_62")
  Node_AddSon(node423, node485)
  ParticleEmitter_SetCone(node485, MAT_Vector3(1725.446, 2133.987, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node485, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node485)
  Game_LoadProgress_Advance(node0)
  node486 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_63")
  Node_AddSon(node423, node486)
  ParticleEmitter_SetCone(node486, MAT_Vector3(1768.589, 2068.69, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node486, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node486)
  Game_LoadProgress_Advance(node0)
  node487 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_64")
  Node_AddSon(node423, node487)
  ParticleEmitter_SetCone(node487, MAT_Vector3(1808.19, 2004.163, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node487, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node487)
  Game_LoadProgress_Advance(node0)
  node488 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_65")
  Node_AddSon(node423, node488)
  ParticleEmitter_SetCone(node488, MAT_Vector3(1844.907, 1942.1, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node488, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node488)
  Game_LoadProgress_Advance(node0)
  node489 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_66")
  Node_AddSon(node423, node489)
  ParticleEmitter_SetCone(node489, MAT_Vector3(1625.593, 2157.847, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node489, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node489)
  Game_LoadProgress_Advance(node0)
  node490 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_67")
  Node_AddSon(node423, node490)
  ParticleEmitter_SetCone(node490, MAT_Vector3(1663.74, 2091.327, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node490, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node490)
  Game_LoadProgress_Advance(node0)
  node491 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_68")
  Node_AddSon(node423, node491)
  ParticleEmitter_SetCone(node491, MAT_Vector3(1572.813, 2106.858, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node491, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node491)
  Game_LoadProgress_Advance(node0)
  node492 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_69")
  Node_AddSon(node423, node492)
  ParticleEmitter_SetCone(node492, MAT_Vector3(1511.634, 2047.638, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node492, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node492)
  Game_LoadProgress_Advance(node0)
  node493 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_71")
  Node_AddSon(node423, node493)
  ParticleEmitter_SetCone(node493, MAT_Vector3(1607.974, 2048.985, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node493, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node493)
  Game_LoadProgress_Advance(node0)
  node494 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_70")
  Node_AddSon(node423, node494)
  ParticleEmitter_SetCone(node494, MAT_Vector3(1702.859, 2033.804, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node494, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node494)
  Game_LoadProgress_Advance(node0)
  node495 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_72")
  Node_AddSon(node423, node495)
  ParticleEmitter_SetCone(node495, MAT_Vector3(1739.908, 1975.073, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node495, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node495)
  Game_LoadProgress_Advance(node0)
  node496 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_73")
  Node_AddSon(node423, node496)
  ParticleEmitter_SetCone(node496, MAT_Vector3(1642.589, 1984.914, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node496, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node496)
  Game_LoadProgress_Advance(node0)
  node497 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_74")
  Node_AddSon(node423, node497)
  ParticleEmitter_SetCone(node497, MAT_Vector3(1776.047, 1906.012, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node497, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node497)
  Game_LoadProgress_Advance(node0)
  node498 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_75")
  Node_AddSon(node423, node498)
  ParticleEmitter_SetCone(node498, MAT_Vector3(1567.076, 1985.922, 12.3648), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node498, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node498)
  Game_LoadProgress_Advance(node0)
  node499 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_76")
  Node_AddSon(node423, node499)
  ParticleEmitter_SetCone(node499, MAT_Vector3(1481.086, 1990.615, 16.44574), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node499, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node499)
  Game_LoadProgress_Advance(node0)
  node500 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_77")
  Node_AddSon(node423, node500)
  ParticleEmitter_SetCone(node500, MAT_Vector3(1679.274, 1922.051, 11.45792), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node500, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node500)
  Game_LoadProgress_Advance(node0)
  node501 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_78")
  Node_AddSon(node423, node501)
  ParticleEmitter_SetCone(node501, MAT_Vector3(1822.123, 1853.392, 19.6198), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node501, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node501)
  Game_LoadProgress_Advance(node0)
  node502 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_79")
  Node_AddSon(node423, node502)
  ParticleEmitter_SetCone(node502, MAT_Vector3(2107.179, 1945.57, 17.35261), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node502, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node502)
  Game_LoadProgress_Advance(node0)
  node503 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_80")
  Node_AddSon(node423, node503)
  ParticleEmitter_SetCone(node503, MAT_Vector3(1598.892, 1930.142, 8.737292), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node503, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node503)
  Game_LoadProgress_Advance(node0)
  node504 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_81")
  Node_AddSon(node423, node504)
  ParticleEmitter_SetCone(node504, MAT_Vector3(1719.19, 1860.979, 8.283854), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node504, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node504)
  Game_LoadProgress_Advance(node0)
  node505 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_82")
  Node_AddSon(node423, node505)
  ParticleEmitter_SetCone(node505, MAT_Vector3(1637.795, 1868.036, 8.737292), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node505, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node505)
  Game_LoadProgress_Advance(node0)
  node506 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_83")
  Node_AddSon(node423, node506)
  ParticleEmitter_SetCone(node506, MAT_Vector3(1747.399, 1796.488, 19.16637), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node506, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node506)
  Game_LoadProgress_Advance(node0)
  node507 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_84")
  Node_AddSon(node423, node507)
  ParticleEmitter_SetCone(node507, MAT_Vector3(1673.875, 1801.907, 12.3648), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node507, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node507)
  Game_LoadProgress_Advance(node0)
  node508 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_85")
  Node_AddSon(node423, node508)
  ParticleEmitter_SetCone(node508, MAT_Vector3(1522.84, 1920.938, 16.44574), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node508, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node508)
  Game_LoadProgress_Advance(node0)
  node509 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_86")
  Node_AddSon(node423, node509)
  ParticleEmitter_SetCone(node509, MAT_Vector3(1568.576, 1859.386, 11.91136), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node509, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node509)
  Game_LoadProgress_Advance(node0)
  node510 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_87")
  Node_AddSon(node423, node510)
  ParticleEmitter_SetCone(node510, MAT_Vector3(1599.608, 1798.918, 13.27167), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node510, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node510)
  Game_LoadProgress_Advance(node0)
  node511 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_88")
  Node_AddSon(node423, node511)
  ParticleEmitter_SetCone(node511, MAT_Vector3(1462.185, 1922.196, 23.24731), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node511, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node511)
  Game_LoadProgress_Advance(node0)
  node512 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_89")
  Node_AddSon(node423, node512)
  ParticleEmitter_SetCone(node512, MAT_Vector3(2041.373, 1919.743, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node512, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node512)
  Game_LoadProgress_Advance(node0)
  node513 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_90")
  Node_AddSon(node423, node513)
  ParticleEmitter_SetCone(node513, MAT_Vector3(1496.054, 1861.844, 9.19073), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node513, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node513)
  Game_LoadProgress_Advance(node0)
  node514 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_91")
  Node_AddSon(node423, node514)
  ParticleEmitter_SetCone(node514, MAT_Vector3(1531.697, 1799.645, 11.00448), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node514, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node514)
  Game_LoadProgress_Advance(node0)
  node515 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_92")
  Node_AddSon(node423, node515)
  ParticleEmitter_SetCone(node515, MAT_Vector3(1438.991, 1847.447, 14.17855), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node515, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node515)
  Game_LoadProgress_Advance(node0)
  node516 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_93")
  Node_AddSon(node423, node516)
  ParticleEmitter_SetCone(node516, MAT_Vector3(1303.35, 1760.965, 8.865322), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node516, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node516)
  Game_LoadProgress_Advance(node0)
  node517 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_95")
  Node_AddSon(node423, node517)
  ParticleEmitter_SetCone(node517, MAT_Vector3(1335.879, 1803.397, 10.09761), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node517, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node517)
  Game_LoadProgress_Advance(node0)
  node518 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_94")
  Node_AddSon(node423, node518)
  ParticleEmitter_SetCone(node518, MAT_Vector3(1392.154, 1815.732, 3.749473), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node518, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node518)
  Game_LoadProgress_Advance(node0)
  node519 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_96")
  Node_AddSon(node423, node519)
  ParticleEmitter_SetCone(node519, MAT_Vector3(1253.802, 1793.03, 18.52598), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node519, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node519)
  Game_LoadProgress_Advance(node0)
  node520 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_97")
  Node_AddSon(node423, node520)
  ParticleEmitter_SetCone(node520, MAT_Vector3(1184.764, 1650.483, 26.93882), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node520, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node520)
  Game_LoadProgress_Advance(node0)
  node521 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_98")
  Node_AddSon(node423, node521)
  ParticleEmitter_SetCone(node521, MAT_Vector3(1146.46, 1624.25, 26.93882), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node521, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node521)
  Game_LoadProgress_Advance(node0)
  node522 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_99")
  Node_AddSon(node423, node522)
  ParticleEmitter_SetCone(node522, MAT_Vector3(1084.11, 1574.038, 35.45715), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node522, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node522)
  Game_LoadProgress_Advance(node0)
  node523 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_100")
  Node_AddSon(node423, node523)
  ParticleEmitter_SetCone(node523, MAT_Vector3(1460.298, 1794.91, 10.09761), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node523, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node523)
  Game_LoadProgress_Advance(node0)
  node524 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_101")
  Node_AddSon(node423, node524)
  ParticleEmitter_SetCone(node524, MAT_Vector3(1273.395, 1833.957, 16.64015), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node524, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node524)
  Game_LoadProgress_Advance(node0)
  node525 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_102")
  Node_AddSon(node423, node525)
  ParticleEmitter_SetCone(node525, MAT_Vector3(1213.741, 1829.706, 17.03962), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node525, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node525)
  Game_LoadProgress_Advance(node0)
  node526 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_103")
  Node_AddSon(node423, node526)
  ParticleEmitter_SetCone(node526, MAT_Vector3(1165.678, 1872.843, 17.03962), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node526, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node526)
  Game_LoadProgress_Advance(node0)
  node527 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_104")
  Node_AddSon(node423, node527)
  ParticleEmitter_SetCone(node527, MAT_Vector3(1127.432, 1855.536, 12.0409), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node527, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node527)
  Game_LoadProgress_Advance(node0)
  node528 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_105")
  Node_AddSon(node423, node528)
  ParticleEmitter_SetCone(node528, MAT_Vector3(1219.047, 1870.538, 23.01705), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node528, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node528)
  Game_LoadProgress_Advance(node0)
  node529 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_106")
  Node_AddSon(node423, node529)
  ParticleEmitter_SetCone(node529, MAT_Vector3(1046.804, 1582.454, 53.8841), MAT_Vector3(50, 120, 0), 50, 50)
  Node_ParseIniFile(node529, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node529)
  Game_LoadProgress_Advance(node0)
  node530 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_107")
  Node_AddSon(node423, node530)
  ParticleEmitter_SetCone(node530, MAT_Vector3(1123.22, 1592.569, 38.3451), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node530, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node530)
  Game_LoadProgress_Advance(node0)
  node531 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_108")
  Node_AddSon(node423, node531)
  ParticleEmitter_SetCone(node531, MAT_Vector3(1219.453, 1671.569, 25.75401), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node531, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node531)
  Game_LoadProgress_Advance(node0)
  node532 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_109")
  Node_AddSon(node423, node532)
  ParticleEmitter_SetCone(node532, MAT_Vector3(1244.003, 1703.301, 23.05844), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node532, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node532)
  Game_LoadProgress_Advance(node0)
  node533 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_110")
  Node_AddSon(node423, node533)
  ParticleEmitter_SetCone(node533, MAT_Vector3(1261.212, 1729.656, 17.21804), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node533, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node533)
  Game_LoadProgress_Advance(node0)
  node534 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_111")
  Node_AddSon(node423, node534)
  ParticleEmitter_SetCone(node534, MAT_Vector3(1010.57, 1596.785, 85.36851), MAT_Vector3(45, 135, 0), 50, 50)
  Node_ParseIniFile(node534, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node534)
  Game_LoadProgress_Advance(node0)
  node535 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_112")
  Node_AddSon(node423, node535)
  ParticleEmitter_SetCone(node535, MAT_Vector3(966.4508, 1614.111, 117.1514), MAT_Vector3(45, 135, 0), 50, 50)
  Node_ParseIniFile(node535, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node535)
  Game_LoadProgress_Advance(node0)
  node536 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_113")
  Node_AddSon(node423, node536)
  ParticleEmitter_SetCone(node536, MAT_Vector3(946.1016, 1619.436, 153.859), MAT_Vector3(60, 145, 0), 50, 50)
  Node_ParseIniFile(node536, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node536)
  Game_LoadProgress_Advance(node0)
  node537 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_114")
  Node_AddSon(node423, node537)
  ParticleEmitter_SetCone(node537, MAT_Vector3(920.0522, 1620.167, 186.1445), MAT_Vector3(90, 145, 0), 50, 50)
  Node_ParseIniFile(node537, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node537)
  Game_LoadProgress_Advance(node0)
  node538 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_115")
  Node_AddSon(node423, node538)
  ParticleEmitter_SetCone(node538, MAT_Vector3(851.7745, 1667.287, 295.6727), MAT_Vector3(90, 145, 0), 50, 50)
  Node_ParseIniFile(node538, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node538)
  Game_LoadProgress_Advance(node0)
  node539 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_116")
  Node_AddSon(node423, node539)
  ParticleEmitter_SetCone(node539, MAT_Vector3(840.4026, 1666.637, 344.1366), MAT_Vector3(100, 145, 0), 50, 50)
  Node_ParseIniFile(node539, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node539)
  Game_LoadProgress_Advance(node0)
  node540 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_117")
  Node_AddSon(node423, node540)
  ParticleEmitter_SetCone(node540, MAT_Vector3(815.3444, 1655.371, 367.5622), MAT_Vector3(110, 145, 0), 50, 50)
  Node_ParseIniFile(node540, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node540)
  Game_LoadProgress_Advance(node0)
  node541 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_118")
  Node_AddSon(node423, node541)
  ParticleEmitter_SetCone(node541, MAT_Vector3(792.7054, 1653.062, 389.7267), MAT_Vector3(110, 145, 0), 50, 50)
  Node_ParseIniFile(node541, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node541)
  Game_LoadProgress_Advance(node0)
  node542 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_119")
  Node_AddSon(node423, node542)
  ParticleEmitter_SetCone(node542, MAT_Vector3(895.4108, 1638.634, 230.1876), MAT_Vector3(90, 145, 0), 50, 50)
  Node_ParseIniFile(node542, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node542)
  Game_LoadProgress_Advance(node0)
  node543 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_120")
  Node_AddSon(node423, node543)
  ParticleEmitter_SetCone(node543, MAT_Vector3(874.2393, 1651.445, 263.5022), MAT_Vector3(90, 145, 0), 50, 50)
  Node_ParseIniFile(node543, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node543)
  Game_LoadProgress_Advance(node0)
  node544 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_121")
  Node_AddSon(node423, node544)
  ParticleEmitter_SetCone(node544, MAT_Vector3(770.9587, 1633.989, 433.8863), MAT_Vector3(140, 145, 0), 50, 50)
  Node_ParseIniFile(node544, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node544)
  Game_LoadProgress_Advance(node0)
  node545 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_122")
  Node_AddSon(node423, node545)
  ParticleEmitter_SetCone(node545, MAT_Vector3(751.1696, 1607.234, 465.0083), MAT_Vector3(140, 145, 0), 50, 50)
  Node_ParseIniFile(node545, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node545)
  Game_LoadProgress_Advance(node0)
  node546 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_123")
  Node_AddSon(node423, node546)
  ParticleEmitter_SetCone(node546, MAT_Vector3(727.8955, 1581.524, 492.4594), MAT_Vector3(140, 145, 0), 50, 50)
  Node_ParseIniFile(node546, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node546)
  Game_LoadProgress_Advance(node0)
  node547 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_124")
  Node_AddSon(node423, node547)
  ParticleEmitter_SetCone(node547, MAT_Vector3(724.6546, 1548.427, 498.652), MAT_Vector3(160, 145, 0), 50, 50)
  Node_ParseIniFile(node547, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node547)
  Game_LoadProgress_Advance(node0)
  node548 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_125")
  Node_AddSon(node423, node548)
  ParticleEmitter_SetCone(node548, MAT_Vector3(2506.512, 2153.906, 20.24035), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node548, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node548)
  Game_LoadProgress_Advance(node0)
  node549 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_126")
  Node_AddSon(node423, node549)
  ParticleEmitter_SetCone(node549, MAT_Vector3(2472.399, 2083.546, 20.24035), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node549, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node549)
  Game_LoadProgress_Advance(node0)
  node550 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_127")
  Node_AddSon(node423, node550)
  ParticleEmitter_SetCone(node550, MAT_Vector3(2508.355, 2107.199, 20.24035), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node550, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node550)
  Game_LoadProgress_Advance(node0)
  node551 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_128")
  Node_AddSon(node423, node551)
  ParticleEmitter_SetCone(node551, MAT_Vector3(2562.341, 2124.077, 20.24035), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node551, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node551)
  Game_LoadProgress_Advance(node0)
  node552 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_129")
  Node_AddSon(node423, node552)
  ParticleEmitter_SetCone(node552, MAT_Vector3(2547.759, 2167.978, 20.24035), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node552, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node552)
  Game_LoadProgress_Advance(node0)
  node553 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_130")
  Node_AddSon(node423, node553)
  ParticleEmitter_SetCone(node553, MAT_Vector3(2564.935, 2205.728, 20.24035), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node553, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node553)
  Game_LoadProgress_Advance(node0)
  node554 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_131")
  Node_AddSon(node423, node554)
  ParticleEmitter_SetCone(node554, MAT_Vector3(2613.568, 2177.83, 29.67611), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node554, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node554)
  Game_LoadProgress_Advance(node0)
  node555 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_132")
  Node_AddSon(node423, node555)
  ParticleEmitter_SetCone(node555, MAT_Vector3(2656.76, 2184.038, 29.67611), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node555, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node555)
  Game_LoadProgress_Advance(node0)
  node556 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_133")
  Node_AddSon(node423, node556)
  ParticleEmitter_SetCone(node556, MAT_Vector3(2613.568, 2177.83, 29.67611), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node556, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node556)
  Game_LoadProgress_Advance(node0)
  node557 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_134")
  Node_AddSon(node423, node557)
  ParticleEmitter_SetCone(node557, MAT_Vector3(2586.7, 2242.688, 29.67611), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node557, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node557)
  Game_LoadProgress_Advance(node0)
  node558 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_135")
  Node_AddSon(node423, node558)
  ParticleEmitter_SetCone(node558, MAT_Vector3(2637.187, 2242.374, 29.67611), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node558, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node558)
  Game_LoadProgress_Advance(node0)
  node559 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_136")
  Node_AddSon(node423, node559)
  ParticleEmitter_SetCone(node559, MAT_Vector3(2685.073, 2217.252, 29.67611), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node559, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node559)
  Game_LoadProgress_Advance(node0)
  node560 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_137")
  Node_AddSon(node423, node560)
  ParticleEmitter_SetCone(node560, MAT_Vector3(2670.283, 2266.667, 29.67611), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node560, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node560)
  Game_LoadProgress_Advance(node0)
  node561 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_138")
  Node_AddSon(node423, node561)
  ParticleEmitter_SetCone(node561, MAT_Vector3(2695.439, 2169.272, 29.67611), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node561, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node561)
  Game_LoadProgress_Advance(node0)
  node562 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_139")
  Node_AddSon(node423, node562)
  ParticleEmitter_SetCone(node562, MAT_Vector3(2756.795, 2173.167, 29.67611), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node562, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node562)
  Game_LoadProgress_Advance(node0)
  node563 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_140")
  Node_AddSon(node423, node563)
  ParticleEmitter_SetCone(node563, MAT_Vector3(2739.984, 2216.137, 29.67611), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node563, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node563)
  Game_LoadProgress_Advance(node0)
  node564 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_147")
  Node_AddSon(node423, node564)
  ParticleEmitter_SetCone(node564, MAT_Vector3(2629.472, 2306.222, 29.67611), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node564, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node564)
  Game_LoadProgress_Advance(node0)
  node565 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_149")
  Node_AddSon(node423, node565)
  ParticleEmitter_SetCone(node565, MAT_Vector3(667.1136, 1184.598, 602.1949), MAT_Vector3(-115.4836, 35, -180), 50, 50)
  Node_ParseIniFile(node565, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node565)
  Game_LoadProgress_Advance(node0)
  node566 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_150")
  Node_AddSon(node423, node566)
  ParticleEmitter_SetCone(node566, MAT_Vector3(705.1836, 1172.435, 591.8071), MAT_Vector3(-101.7652, 35, 180), 50, 50)
  Node_ParseIniFile(node566, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node566)
  Game_LoadProgress_Advance(node0)
  node567 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_151")
  Node_AddSon(node423, node567)
  ParticleEmitter_SetCone(node567, MAT_Vector3(747.1833, 1170.818, 582.0643), MAT_Vector3(-116.8598, 35, -180), 50, 50)
  Node_ParseIniFile(node567, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node567)
  Game_LoadProgress_Advance(node0)
  node568 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_152")
  Node_AddSon(node423, node568)
  ParticleEmitter_SetCone(node568, MAT_Vector3(785.4175, 1158.479, 526.2915), MAT_Vector3(-151.3341, 35, 180), 50, 50)
  Node_ParseIniFile(node568, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node568)
  Game_LoadProgress_Advance(node0)
  node569 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_153")
  Node_AddSon(node423, node569)
  ParticleEmitter_SetCone(node569, MAT_Vector3(790.1091, 1139.552, 497.3302), MAT_Vector3(-156.8122, 35, -180), 50, 50)
  Node_ParseIniFile(node569, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node569)
  Game_LoadProgress_Advance(node0)
  node570 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_154")
  Node_AddSon(node423, node570)
  ParticleEmitter_SetCone(node570, MAT_Vector3(804.2464, 1126.717, 450.5213), MAT_Vector3(-176.6218, 35, 180), 50, 50)
  Node_ParseIniFile(node570, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node570)
  Game_LoadProgress_Advance(node0)
  node571 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_155")
  Node_AddSon(node423, node571)
  ParticleEmitter_SetCone(node571, MAT_Vector3(812.1871, 1098.755, 413.3963), MAT_Vector3(157.2497, 35, -180), 50, 50)
  Node_ParseIniFile(node571, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node571)
  Game_LoadProgress_Advance(node0)
  node572 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_156")
  Node_AddSon(node423, node572)
  ParticleEmitter_SetCone(node572, MAT_Vector3(785.3954, 1033.98, 385.8094), MAT_Vector3(143.9095, 35, 180), 50, 50)
  Node_ParseIniFile(node572, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node572)
  Game_LoadProgress_Advance(node0)
  node573 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_157")
  Node_AddSon(node423, node573)
  ParticleEmitter_SetCone(node573, MAT_Vector3(803.8555, 1065.955, 399.3066), MAT_Vector3(157.6715, 35, -180), 50, 50)
  Node_ParseIniFile(node573, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node573)
  Game_LoadProgress_Advance(node0)
  node574 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_158")
  Node_AddSon(node423, node574)
  ParticleEmitter_SetCone(node574, MAT_Vector3(748.0999, 1001.29, 342.9111), MAT_Vector3(-153.3041, 35, 180), 50, 50)
  Node_ParseIniFile(node574, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node574)
  Game_LoadProgress_Advance(node0)
  node575 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_159")
  Node_AddSon(node423, node575)
  ParticleEmitter_SetCone(node575, MAT_Vector3(767.9996, 946.5728, 283.9678), MAT_Vector3(-118.2799, 35, -180), 50, 50)
  Node_ParseIniFile(node575, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node575)
  Game_LoadProgress_Advance(node0)
  node576 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_160")
  Node_AddSon(node423, node576)
  ParticleEmitter_SetCone(node576, MAT_Vector3(798.2232, 935.6341, 263.8444), MAT_Vector3(-99.35088, 35, 180), 50, 50)
  Node_ParseIniFile(node576, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node576)
  Game_LoadProgress_Advance(node0)
  node577 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_161")
  Node_AddSon(node423, node577)
  ParticleEmitter_SetCone(node577, MAT_Vector3(832.1228, 932.894, 251.4886), MAT_Vector3(-96.25769, 35, -180), 50, 50)
  Node_ParseIniFile(node577, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node577)
  Game_LoadProgress_Advance(node0)
  node578 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_162")
  Node_AddSon(node423, node578)
  ParticleEmitter_SetCone(node578, MAT_Vector3(859.1765, 928.0873, 225.6964), MAT_Vector3(-101.4136, 35, 180), 50, 50)
  Node_ParseIniFile(node578, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node578)
  Game_LoadProgress_Advance(node0)
  node579 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_163")
  Node_AddSon(node423, node579)
  ParticleEmitter_SetCone(node579, MAT_Vector3(884.1865, 922.227, 201.1448), MAT_Vector3(-110.0749, 35, -180), 50, 50)
  Node_ParseIniFile(node579, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node579)
  Game_LoadProgress_Advance(node0)
  node580 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_164")
  Node_AddSon(node423, node580)
  ParticleEmitter_SetCone(node580, MAT_Vector3(643.9588, 1217.589, 622.2265), MAT_Vector3(-137.3376, 35, 180), 50, 50)
  Node_ParseIniFile(node580, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node580)
  Game_LoadProgress_Advance(node0)
  node581 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_166")
  Node_AddSon(node423, node581)
  ParticleEmitter_SetCone(node581, MAT_Vector3(749.0978, 968.2905, 302.478), MAT_Vector3(-137.3376, 45, 180), 50, 50)
  Node_ParseIniFile(node581, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node581)
end
SetEnemyMatrixElement(0, 0, N)
SetEnemyMatrixElement(1, 0, N)
SetEnemyMatrixElement(2, 0, N)
SetEnemyMatrixElement(3, 0, N)
SetEnemyMatrixElement(4, 0, E)
SetEnemyMatrixElement(5, 0, U)
SetEnemyMatrixElement(6, 0, N)
SetEnemyMatrixElement(7, 0, U)
SetEnemyMatrixElement(8, 0, U)
SetEnemyMatrixElement(9, 0, U)
SetEnemyMatrixElement(10, 0, N)
SetEnemyMatrixElement(11, 0, N)
SetEnemyMatrixElement(12, 0, N)
SetEnemyMatrixElement(13, 0, N)
SetEnemyMatrixElement(14, 0, N)
SetEnemyMatrixElement(15, 0, N)
SetEnemyMatrixElement(0, 1, N)
SetEnemyMatrixElement(1, 1, N)
SetEnemyMatrixElement(2, 1, E)
SetEnemyMatrixElement(3, 1, N)
SetEnemyMatrixElement(4, 1, E)
SetEnemyMatrixElement(5, 1, U)
SetEnemyMatrixElement(6, 1, N)
SetEnemyMatrixElement(7, 1, U)
SetEnemyMatrixElement(8, 1, U)
SetEnemyMatrixElement(9, 1, U)
SetEnemyMatrixElement(10, 1, N)
SetEnemyMatrixElement(11, 1, N)
SetEnemyMatrixElement(12, 1, N)
SetEnemyMatrixElement(13, 1, N)
SetEnemyMatrixElement(14, 1, N)
SetEnemyMatrixElement(15, 1, N)
SetEnemyMatrixElement(0, 2, N)
SetEnemyMatrixElement(1, 2, E)
SetEnemyMatrixElement(2, 2, F)
SetEnemyMatrixElement(3, 2, F)
SetEnemyMatrixElement(4, 2, E)
SetEnemyMatrixElement(5, 2, U)
SetEnemyMatrixElement(6, 2, N)
SetEnemyMatrixElement(7, 2, U)
SetEnemyMatrixElement(8, 2, U)
SetEnemyMatrixElement(9, 2, U)
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
SetEnemyMatrixElement(5, 3, U)
SetEnemyMatrixElement(6, 3, N)
SetEnemyMatrixElement(7, 3, U)
SetEnemyMatrixElement(8, 3, U)
SetEnemyMatrixElement(9, 3, U)
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
SetEnemyMatrixElement(5, 4, U)
SetEnemyMatrixElement(6, 4, N)
SetEnemyMatrixElement(7, 4, U)
SetEnemyMatrixElement(8, 4, U)
SetEnemyMatrixElement(9, 4, U)
SetEnemyMatrixElement(10, 4, N)
SetEnemyMatrixElement(11, 4, N)
SetEnemyMatrixElement(12, 4, N)
SetEnemyMatrixElement(13, 4, N)
SetEnemyMatrixElement(14, 4, N)
SetEnemyMatrixElement(15, 4, N)
SetEnemyMatrixElement(0, 5, U)
SetEnemyMatrixElement(1, 5, U)
SetEnemyMatrixElement(2, 5, N)
SetEnemyMatrixElement(3, 5, N)
SetEnemyMatrixElement(4, 5, F)
SetEnemyMatrixElement(5, 5, U)
SetEnemyMatrixElement(6, 5, N)
SetEnemyMatrixElement(7, 5, U)
SetEnemyMatrixElement(8, 5, U)
SetEnemyMatrixElement(9, 5, U)
SetEnemyMatrixElement(10, 5, N)
SetEnemyMatrixElement(11, 5, N)
SetEnemyMatrixElement(12, 5, N)
SetEnemyMatrixElement(13, 5, N)
SetEnemyMatrixElement(14, 5, N)
SetEnemyMatrixElement(15, 5, N)
SetEnemyMatrixElement(0, 6, U)
SetEnemyMatrixElement(1, 6, U)
SetEnemyMatrixElement(2, 6, N)
SetEnemyMatrixElement(3, 6, N)
SetEnemyMatrixElement(4, 6, N)
SetEnemyMatrixElement(5, 6, N)
SetEnemyMatrixElement(6, 6, N)
SetEnemyMatrixElement(7, 6, U)
SetEnemyMatrixElement(8, 6, U)
SetEnemyMatrixElement(9, 6, U)
SetEnemyMatrixElement(10, 6, N)
SetEnemyMatrixElement(11, 6, N)
SetEnemyMatrixElement(12, 6, N)
SetEnemyMatrixElement(13, 6, N)
SetEnemyMatrixElement(14, 6, N)
SetEnemyMatrixElement(15, 6, N)
SetEnemyMatrixElement(0, 7, U)
SetEnemyMatrixElement(1, 7, E)
SetEnemyMatrixElement(2, 7, N)
SetEnemyMatrixElement(3, 7, N)
SetEnemyMatrixElement(4, 7, N)
SetEnemyMatrixElement(5, 7, N)
SetEnemyMatrixElement(6, 7, N)
SetEnemyMatrixElement(7, 7, U)
SetEnemyMatrixElement(8, 7, U)
SetEnemyMatrixElement(9, 7, U)
SetEnemyMatrixElement(10, 7, N)
SetEnemyMatrixElement(11, 7, N)
SetEnemyMatrixElement(12, 7, N)
SetEnemyMatrixElement(13, 7, N)
SetEnemyMatrixElement(14, 7, N)
SetEnemyMatrixElement(15, 7, N)
SetEnemyMatrixElement(0, 8, U)
SetEnemyMatrixElement(1, 8, E)
SetEnemyMatrixElement(2, 8, N)
SetEnemyMatrixElement(3, 8, N)
SetEnemyMatrixElement(4, 8, N)
SetEnemyMatrixElement(5, 8, N)
SetEnemyMatrixElement(6, 8, N)
SetEnemyMatrixElement(7, 8, U)
SetEnemyMatrixElement(8, 8, U)
SetEnemyMatrixElement(9, 8, U)
SetEnemyMatrixElement(10, 8, N)
SetEnemyMatrixElement(11, 8, N)
SetEnemyMatrixElement(12, 8, N)
SetEnemyMatrixElement(13, 8, N)
SetEnemyMatrixElement(14, 8, N)
SetEnemyMatrixElement(15, 8, N)
SetEnemyMatrixElement(0, 9, U)
SetEnemyMatrixElement(1, 9, E)
SetEnemyMatrixElement(2, 9, N)
SetEnemyMatrixElement(3, 9, N)
SetEnemyMatrixElement(4, 9, N)
SetEnemyMatrixElement(5, 9, N)
SetEnemyMatrixElement(6, 9, N)
SetEnemyMatrixElement(7, 9, U)
SetEnemyMatrixElement(8, 9, U)
SetEnemyMatrixElement(9, 9, U)
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
                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (o10192.Value ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
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
                                                                                                      end
                                                                                                    end
                                                                                                  end
                                                                                                end
                                                                                              end
                                                                                            end
                                                                                          end
                                                                                        end
                                                                                      end
                                                                                    end
                                                                                  end
                                                                                end
                                                                              end
                                                                            end
                                                                          end
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
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
                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (o10216.Value == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
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
                                                                                                                                                                                              end
                                                                                                                                                                                            end
                                                                                                                                                                                          end
                                                                                                                                                                                        end
                                                                                                                                                                                      end
                                                                                                                                                                                    end
                                                                                                                                                                                  end
                                                                                                                                                                                end
                                                                                                                                                                              end
                                                                                                                                                                            end
                                                                                                                                                                          end
                                                                                                                                                                        end
                                                                                                                                                                      end
                                                                                                                                                                    end
                                                                                                                                                                  end
                                                                                                                                                                end
                                                                                                                                                              end
                                                                                                                                                            end
                                                                                                                                                          end
                                                                                                                                                        end
                                                                                                                                                      end
                                                                                                                                                    end
                                                                                                                                                  end
                                                                                                                                                end
                                                                                                                                              end
                                                                                                                                            end
                                                                                                                                          end
                                                                                                                                        end
                                                                                                                                      end
                                                                                                                                    end
                                                                                                                                  end
                                                                                                                                end
                                                                                                                              end
                                                                                                                            end
                                                                                                                          end
                                                                                                                        end
                                                                                                                      end
                                                                                                                    end
                                                                                                                  end
                                                                                                                end
                                                                                                              end
                                                                                                            end
                                                                                                          end
                                                                                                        end
                                                                                                      end
                                                                                                    end
                                                                                                  end
                                                                                                end
                                                                                              end
                                                                                            end
                                                                                          end
                                                                                        end
                                                                                      end
                                                                                    end
                                                                                  end
                                                                                end
                                                                              end
                                                                            end
                                                                          end
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
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
                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (o10217.Value == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
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
                                                                                                                                                                                              end
                                                                                                                                                                                            end
                                                                                                                                                                                          end
                                                                                                                                                                                        end
                                                                                                                                                                                      end
                                                                                                                                                                                    end
                                                                                                                                                                                  end
                                                                                                                                                                                end
                                                                                                                                                                              end
                                                                                                                                                                            end
                                                                                                                                                                          end
                                                                                                                                                                        end
                                                                                                                                                                      end
                                                                                                                                                                    end
                                                                                                                                                                  end
                                                                                                                                                                end
                                                                                                                                                              end
                                                                                                                                                            end
                                                                                                                                                          end
                                                                                                                                                        end
                                                                                                                                                      end
                                                                                                                                                    end
                                                                                                                                                  end
                                                                                                                                                end
                                                                                                                                              end
                                                                                                                                            end
                                                                                                                                          end
                                                                                                                                        end
                                                                                                                                      end
                                                                                                                                    end
                                                                                                                                  end
                                                                                                                                end
                                                                                                                              end
                                                                                                                            end
                                                                                                                          end
                                                                                                                        end
                                                                                                                      end
                                                                                                                    end
                                                                                                                  end
                                                                                                                end
                                                                                                              end
                                                                                                            end
                                                                                                          end
                                                                                                        end
                                                                                                      end
                                                                                                    end
                                                                                                  end
                                                                                                end
                                                                                              end
                                                                                            end
                                                                                          end
                                                                                        end
                                                                                      end
                                                                                    end
                                                                                  end
                                                                                end
                                                                              end
                                                                            end
                                                                          end
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
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
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "", "", "", "", False, False, True)
  CallFunction(o30, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o30, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o30, "Code6")
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
S_o36 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o36, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o36, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o36, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "", "", "", "", False, False, True)
  CallFunction(o36, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o36, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o36, "Code6")
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
S_o42 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o42, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o42, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o42, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o46.SetStateValue(L1)
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
o46 = { [nil] = {}, Start = function()
  o46["Value"] = False
  o10217.StartCalculate()
end, SetStateValue = function(L0)
  if not (o46.Value == L0) then
    o46["Value"] = L0
    o10217.ReCalculate()
  end
end }
S_o97 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o97, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o97, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o97, "Code3")
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
S_o144 = { [nil] = {}, Start = function(L0)

end }
S_o190 = { [nil] = {}, Start = function(L0)

end }
S_o236 = { [nil] = {}, Start = function(L0)

end }
S_o282 = { [nil] = {}, Start = function(L0)

end }
S_o328 = { [nil] = {}, Start = function(L0)

end }
S_o374 = { [nil] = {}, Start = function(L0)

end }
S_o420 = { [nil] = {}, Start = function(L0)

end }
S_o466 = { [nil] = {}, Start = function(L0)

end }
S_o512 = { [nil] = {}, Start = function(L0)

end }
S_o558 = { [nil] = {}, Start = function(L0)

end }
S_o604 = { [nil] = {}, Start = function(L0)

end }
S_o650 = { [nil] = {}, Start = function(L0)

end }
S_o696 = { [nil] = {}, Start = function(L0)

end }
S_o742 = { [nil] = {}, Start = function(L0)

end }
S_o788 = { [nil] = {}, Start = function(L0)

end }
S_o834 = { [nil] = {}, Start = function(L0)

end }
S_o880 = { [nil] = {}, Start = function(L0)

end }
S_o926 = { [nil] = {}, Start = function(L0)

end }
S_o972 = { [nil] = {}, Start = function(L0)

end }
S_o1018 = { [nil] = {}, Start = function(L0)

end }
S_o1064 = { [nil] = {}, Start = function(L0)

end }
S_o1110 = { [nil] = {}, Start = function(L0)

end }
S_o1156 = { [nil] = {}, Start = function(L0)

end }
S_o1202 = { [nil] = {}, Start = function(L0)

end }
S_o1248 = { [nil] = {}, Start = function(L0)

end }
S_o1294 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1294, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1294, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1294, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Attacked = function(L0, L1)
  o1296.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o1297.SetStateValue(L1)
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
o1296 = { [nil] = {}, Start = function()
  o1296["Value"] = False
  o10171.StartCalculate()
  o10188.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1296.Value == L0) then
    o1296["Value"] = L0
    o10171.ReCalculate()
    o10188.ReCalculate()
  end
end }
o1297 = { [nil] = {}, Start = function()
  o1297["Value"] = False
  o10173.StartCalculate()
  o10176.StartCalculate()
  o10189.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1297.Value == L0) then
    o1297["Value"] = L0
    o10173.ReCalculate()
    o10176.ReCalculate()
    o10189.ReCalculate()
  end
end }
S_o1341 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1341, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1341, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1341, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Attacked = function(L0, L1)
  o1343.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o1344.SetStateValue(L1)
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
o1343 = { [nil] = {}, Start = function()
  o1343["Value"] = False
  o10171.StartCalculate()
  o10188.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1343.Value == L0) then
    o1343["Value"] = L0
    o10171.ReCalculate()
    o10188.ReCalculate()
  end
end }
o1344 = { [nil] = {}, Start = function()
  o1344["Value"] = False
  o10173.StartCalculate()
  o10176.StartCalculate()
  o10189.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1344.Value == L0) then
    o1344["Value"] = L0
    o10173.ReCalculate()
    o10176.ReCalculate()
    o10189.ReCalculate()
  end
end }
S_o1388 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1388, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1388, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1388, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Attacked = function(L0, L1)
  o1390.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o1391.SetStateValue(L1)
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
o1390 = { [nil] = {}, Start = function()
  o1390["Value"] = False
  o10170.StartCalculate()
  o10188.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1390.Value == L0) then
    o1390["Value"] = L0
    o10170.ReCalculate()
    o10188.ReCalculate()
  end
end }
o1391 = { [nil] = {}, Start = function()
  o1391["Value"] = False
  o10173.StartCalculate()
  o10176.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1391.Value == L0) then
    o1391["Value"] = L0
    o10173.ReCalculate()
    o10176.ReCalculate()
  end
end }
S_o1435 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1435, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1435, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1435, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Attacked = function(L0, L1)
  o1437.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o1438.SetStateValue(L1)
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
o1437 = { [nil] = {}, Start = function()
  o1437["Value"] = False
  o10170.StartCalculate()
  o10188.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1437.Value == L0) then
    o1437["Value"] = L0
    o10170.ReCalculate()
    o10188.ReCalculate()
  end
end }
o1438 = { [nil] = {}, Start = function()
  o1438["Value"] = False
  o10173.StartCalculate()
  o10176.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1438.Value == L0) then
    o1438["Value"] = L0
    o10173.ReCalculate()
    o10176.ReCalculate()
  end
end }
S_o1482 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1482, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1482, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1482, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Attacked = function(L0, L1)
  o1484.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o1485.SetStateValue(L1)
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
o1484 = { [nil] = {}, Start = function()
  o1484["Value"] = False
  o10170.StartCalculate()
  o10188.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1484.Value == L0) then
    o1484["Value"] = L0
    o10170.ReCalculate()
    o10188.ReCalculate()
  end
end }
o1485 = { [nil] = {}, Start = function()
  o1485["Value"] = False
  o10173.StartCalculate()
  o10176.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1485.Value == L0) then
    o1485["Value"] = L0
    o10173.ReCalculate()
    o10176.ReCalculate()
  end
end }
S_o1529 = { [nil] = {}, Start = function(L0)

end }
S_o1575 = { [nil] = {}, Start = function(L0)

end }
S_o1621 = { [nil] = {}, Start = function(L0)

end }
S_o1667 = { [nil] = {}, Start = function(L0)

end }
S_o1713 = { [nil] = {}, Start = function(L0)

end }
S_o1759 = { [nil] = {}, Start = function(L0)

end }
S_o1805 = { [nil] = {}, Start = function(L0)

end }
S_o1851 = { [nil] = {}, Start = function(L0)

end }
S_o1897 = { [nil] = {}, Start = function(L0)

end }
S_o1943 = { [nil] = {}, Start = function(L0)

end }
S_o1989 = { [nil] = {}, Start = function(L0)

end }
S_o2035 = { [nil] = {}, Start = function(L0)

end }
S_o2081 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2081, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2081, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2081, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o2081, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 350, "", "", "", "", "Code5")
  else
    CallFunction(o2081, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 350, "wng", "pla", "", "", "Code6")
  else
    CallFunction(o2081, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o2091.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2082.Value ~= True) then
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
o2082 = { [nil] = {}, GetCalculated = function()
  if not (o11095.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2082.SetStateValue(o2082.GetCalculated())
end, StartCalculate = function()
  o2082["Value"] = o2082.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2082.Value == L0) then
    o2082["Value"] = L0
    CallFunction(o2081, "ProcesseStateChange")
  end
end }
o2091 = { [nil] = {}, Start = function()
  o2091["Value"] = False
  o10229.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2091.Value == L0) then
    o2091["Value"] = L0
    o10229.ReCalculate()
  end
end }
S_o2128 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2128, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2128, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2128, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o2128, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 350, "", "", "", "", "Code5")
  else
    CallFunction(o2128, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 350, "wng", "pla", "", "", "Code6")
  else
    CallFunction(o2128, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o2138.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2129.Value ~= True) then
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
o2129 = { [nil] = {}, GetCalculated = function()
  if not (o11095.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2129.SetStateValue(o2129.GetCalculated())
end, StartCalculate = function()
  o2129["Value"] = o2129.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2129.Value == L0) then
    o2129["Value"] = L0
    CallFunction(o2128, "ProcesseStateChange")
  end
end }
o2138 = { [nil] = {}, Start = function()
  o2138["Value"] = False
  o10229.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2138.Value == L0) then
    o2138["Value"] = L0
    o10229.ReCalculate()
  end
end }
S_o2175 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2175, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2175, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2175, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o2175, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 350, "", "", "", "", "Code5")
  else
    CallFunction(o2175, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 350, "wng", "pla", "", "", "Code6")
  else
    CallFunction(o2175, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o2185.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2176.Value ~= True) then
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
o2176 = { [nil] = {}, GetCalculated = function()
  if not (o11095.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2176.SetStateValue(o2176.GetCalculated())
end, StartCalculate = function()
  o2176["Value"] = o2176.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2176.Value == L0) then
    o2176["Value"] = L0
    CallFunction(o2175, "ProcesseStateChange")
  end
end }
o2185 = { [nil] = {}, Start = function()
  o2185["Value"] = False
  o10229.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2185.Value == L0) then
    o2185["Value"] = L0
    o10229.ReCalculate()
  end
end }
S_o2222 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2222, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2222, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2222, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o2222, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 350, "", "", "", "", "Code5")
  else
    CallFunction(o2222, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 350, "wng", "pla", "", "", "Code6")
  else
    CallFunction(o2222, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o2232.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2223.Value ~= True) then
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
o2223 = { [nil] = {}, GetCalculated = function()
  if not (o11095.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2223.SetStateValue(o2223.GetCalculated())
end, StartCalculate = function()
  o2223["Value"] = o2223.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2223.Value == L0) then
    o2223["Value"] = L0
    CallFunction(o2222, "ProcesseStateChange")
  end
end }
o2232 = { [nil] = {}, Start = function()
  o2232["Value"] = False
  o10229.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2232.Value == L0) then
    o2232["Value"] = L0
    o10229.ReCalculate()
  end
end }
S_o2269 = { [nil] = {}, Start = function(L0)

end }
S_o2315 = { [nil] = {}, Start = function(L0)

end }
S_o2361 = { [nil] = {}, Start = function(L0)

end }
S_o2407 = { [nil] = {}, Start = function(L0)

end }
S_o2453 = { [nil] = {}, Start = function(L0)

end }
S_o2499 = { [nil] = {}, Start = function(L0)

end }
S_o2545 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2545, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2545, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2545, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o2548.SetStateValue(L1)
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
o2548 = { [nil] = {}, Start = function()
  o2548["Value"] = False
  o10166.StartCalculate()
  o10191.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2548.Value == L0) then
    o2548["Value"] = L0
    o10166.ReCalculate()
    o10191.ReCalculate()
  end
end }
S_o2592 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_DipolInLeaveSimulation(L0.Node)
  CallFunction(o2592, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2592, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_TurretDipolIn(L0, "Code3")
  else
    CallFunction(o2592, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o2592, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 350, "wng", "pla", "", "", "Code5")
  else
    CallFunction(o2592, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o2601.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2594.Value ~= True) then
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
o2594 = { [nil] = {}, GetCalculated = function()
  if not (o10167.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2594.SetStateValue(o2594.GetCalculated())
end, StartCalculate = function()
  o2594["Value"] = o2594.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2594.Value == L0) then
    o2594["Value"] = L0
    CallFunction(o2592, "ProcesseStateChange")
  end
end }
o2601 = { [nil] = {}, Start = function()
  o2601["Value"] = False
  o10169.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2601.Value == L0) then
    o2601["Value"] = L0
    o10169.ReCalculate()
  end
end }
S_o2638 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_DipolInLeaveSimulation(L0.Node)
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
    DipolLib.InUtero_TurretDipolIn(L0, "Code3")
  else
    CallFunction(o2638, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o2638, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 350, "wng", "pla", "", "", "Code5")
  else
    CallFunction(o2638, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o2647.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2640.Value ~= True) then
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
o2640 = { [nil] = {}, GetCalculated = function()
  if not (o10167.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2640.SetStateValue(o2640.GetCalculated())
end, StartCalculate = function()
  o2640["Value"] = o2640.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2640.Value == L0) then
    o2640["Value"] = L0
    CallFunction(o2638, "ProcesseStateChange")
  end
end }
o2647 = { [nil] = {}, Start = function()
  o2647["Value"] = False
  o10169.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2647.Value == L0) then
    o2647["Value"] = L0
    o10169.ReCalculate()
  end
end }
S_o2684 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_DipolInLeaveSimulation(L0.Node)
  CallFunction(o2684, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2684, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_TurretDipolIn(L0, "Code3")
  else
    CallFunction(o2684, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o2684, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 350, "wng", "pla", "", "", "Code5")
  else
    CallFunction(o2684, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o2693.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2686.Value ~= True) then
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
o2686 = { [nil] = {}, GetCalculated = function()
  if not (o10167.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2686.SetStateValue(o2686.GetCalculated())
end, StartCalculate = function()
  o2686["Value"] = o2686.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2686.Value == L0) then
    o2686["Value"] = L0
    CallFunction(o2684, "ProcesseStateChange")
  end
end }
o2693 = { [nil] = {}, Start = function()
  o2693["Value"] = False
  o10169.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2693.Value == L0) then
    o2693["Value"] = L0
    o10169.ReCalculate()
  end
end }
S_o2730 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_DipolInLeaveSimulation(L0.Node)
  CallFunction(o2730, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2730, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_TurretDipolIn(L0, "Code3")
  else
    CallFunction(o2730, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o2730, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 350, "wng", "pla", "", "", "Code5")
  else
    CallFunction(o2730, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o2739.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2732.Value ~= True) then
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
o2732 = { [nil] = {}, GetCalculated = function()
  if not (o10167.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2732.SetStateValue(o2732.GetCalculated())
end, StartCalculate = function()
  o2732["Value"] = o2732.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2732.Value == L0) then
    o2732["Value"] = L0
    CallFunction(o2730, "ProcesseStateChange")
  end
end }
o2739 = { [nil] = {}, Start = function()
  o2739["Value"] = False
  o10169.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2739.Value == L0) then
    o2739["Value"] = L0
    o10169.ReCalculate()
  end
end }
S_o2776 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2776, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2776, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2776, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, 10, 60)
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o2776, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 120, 120, "player1", "", "", "", "Code6")
  else
    CallFunction(o2776, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2776, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Emp = function(L0, L1)
  o2784.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2777.Value ~= True) then
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
o2777 = { [nil] = {}, GetCalculated = function()
  if not (o10173.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2777.SetStateValue(o2777.GetCalculated())
end, StartCalculate = function()
  o2777["Value"] = o2777.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2777.Value == L0) then
    o2777["Value"] = L0
    CallFunction(o2776, "ProcesseStateChange")
  end
end }
o2784 = { [nil] = {}, Start = function()
  o2784["Value"] = False
  o10177.StartCalculate()
  o10231.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2784.Value == L0) then
    o2784["Value"] = L0
    o10177.ReCalculate()
    o10231.ReCalculate()
  end
end }
S_o2822 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_DipolInLeaveSimulation(L0.Node)
  CallFunction(o2822, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2822, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_TurretDipolIn(L0, "Code3")
  else
    CallFunction(o2822, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o2822, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 350, "wng", "pla", "", "", "Code5")
  else
    CallFunction(o2822, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2824.Value ~= True) then
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
o2824 = { [nil] = {}, GetCalculated = function()
  if not (o10170.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2824.SetStateValue(o2824.GetCalculated())
end, StartCalculate = function()
  o2824["Value"] = o2824.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2824.Value == L0) then
    o2824["Value"] = L0
    CallFunction(o2822, "ProcesseStateChange")
  end
end }
S_o2868 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_DipolInLeaveSimulation(L0.Node)
  CallFunction(o2868, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2868, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_TurretDipolIn(L0, "Code3")
  else
    CallFunction(o2868, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o2868, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 350, "wng", "pla", "", "", "Code5")
  else
    CallFunction(o2868, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2870.Value ~= True) then
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
o2870 = { [nil] = {}, GetCalculated = function()
  if not (o10170.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2870.SetStateValue(o2870.GetCalculated())
end, StartCalculate = function()
  o2870["Value"] = o2870.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2870.Value == L0) then
    o2870["Value"] = L0
    CallFunction(o2868, "ProcesseStateChange")
  end
end }
S_o2914 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_DipolInLeaveSimulation(L0.Node)
  CallFunction(o2914, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2914, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_TurretDipolIn(L0, "Code3")
  else
    CallFunction(o2914, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o2914, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 350, "wng", "pla", "", "", "Code5")
  else
    CallFunction(o2914, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2916.Value ~= True) then
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
o2916 = { [nil] = {}, GetCalculated = function()
  if not (o10171.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2916.SetStateValue(o2916.GetCalculated())
end, StartCalculate = function()
  o2916["Value"] = o2916.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2916.Value == L0) then
    o2916["Value"] = L0
    CallFunction(o2914, "ProcesseStateChange")
  end
end }
S_o2960 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_DipolInLeaveSimulation(L0.Node)
  CallFunction(o2960, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2960, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_TurretDipolIn(L0, "Code3")
  else
    CallFunction(o2960, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o2960, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 350, "wng", "pla", "", "", "Code5")
  else
    CallFunction(o2960, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2962.Value ~= True) then
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
o2962 = { [nil] = {}, GetCalculated = function()
  if not (o10171.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2962.SetStateValue(o2962.GetCalculated())
end, StartCalculate = function()
  o2962["Value"] = o2962.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2962.Value == L0) then
    o2962["Value"] = L0
    CallFunction(o2960, "ProcesseStateChange")
  end
end }
S_o3006 = { [nil] = {}, Start = function(L0)

end }
S_o3052 = { [nil] = {}, Start = function(L0)

end }
S_o3098 = { [nil] = {}, Start = function(L0)

end }
S_o3144 = { [nil] = {}, Start = function(L0)

end }
S_o3190 = { [nil] = {}, Start = function(L0)

end }
S_o3236 = { [nil] = {}, Start = function(L0)

end }
S_o3282 = { [nil] = {}, Start = function(L0)

end }
S_o3328 = { [nil] = {}, Start = function(L0)

end }
S_o3374 = { [nil] = {}, Start = function(L0)

end }
S_o3420 = { [nil] = {}, Start = function(L0)

end }
S_o3466 = { [nil] = {}, Start = function(L0)

end }
S_o3512 = { [nil] = {}, Start = function(L0)

end }
S_o3558 = { [nil] = {}, Start = function(L0)

end }
S_o3604 = { [nil] = {}, Start = function(L0)

end }
S_o3650 = { [nil] = {}, Start = function(L0)

end }
S_o3696 = { [nil] = {}, Start = function(L0)

end }
S_o3742 = { [nil] = {}, Start = function(L0)

end }
S_o3788 = { [nil] = {}, Start = function(L0)

end }
S_o3834 = { [nil] = {}, Start = function(L0)

end }
S_o3880 = { [nil] = {}, Start = function(L0)

end }
S_o3926 = { [nil] = {}, Start = function(L0)

end }
S_o3972 = { [nil] = {}, Start = function(L0)

end }
S_o4018 = { [nil] = {}, Start = function(L0)

end }
S_o4064 = { [nil] = {}, Start = function(L0)

end }
S_o4110 = { [nil] = {}, Start = function(L0)

end }
S_o4156 = { [nil] = {}, Start = function(L0)

end }
S_o4202 = { [nil] = {}, Start = function(L0)

end }
S_o4248 = { [nil] = {}, Start = function(L0)

end }
S_o4294 = { [nil] = {}, Start = function(L0)

end }
S_o4340 = { [nil] = {}, Start = function(L0)

end }
S_o4386 = { [nil] = {}, Start = function(L0)

end }
S_o4432 = { [nil] = {}, Start = function(L0)

end }
S_o4478 = { [nil] = {}, Start = function(L0)

end }
S_o4524 = { [nil] = {}, Start = function(L0)

end }
S_o4570 = { [nil] = {}, Start = function(L0)

end }
S_o4616 = { [nil] = {}, Start = function(L0)

end }
S_o4662 = { [nil] = {}, Start = function(L0)

end }
S_o4708 = { [nil] = {}, Start = function(L0)

end }
S_o4754 = { [nil] = {}, Start = function(L0)

end }
S_o4800 = { [nil] = {}, Start = function(L0)

end }
S_o4846 = { [nil] = {}, Start = function(L0)

end }
S_o4892 = { [nil] = {}, Start = function(L0)

end }
S_o4938 = { [nil] = {}, Start = function(L0)

end }
S_o4984 = { [nil] = {}, Start = function(L0)

end }
S_o5030 = { [nil] = {}, Start = function(L0)

end }
S_o5076 = { [nil] = {}, Start = function(L0)

end }
S_o5122 = { [nil] = {}, Start = function(L0)

end }
S_o5168 = { [nil] = {}, Start = function(L0)

end }
S_o5214 = { [nil] = {}, Start = function(L0)

end }
S_o5260 = { [nil] = {}, Start = function(L0)

end }
S_o5306 = { [nil] = {}, Start = function(L0)

end }
S_o5352 = { [nil] = {}, Start = function(L0)

end }
S_o5398 = { [nil] = {}, Start = function(L0)

end }
S_o5444 = { [nil] = {}, Start = function(L0)

end }
o5445 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/ApproachPath_1", "/Scenario_Dynamic/Navigation/DockPath_1", "/Scenario_Dynamic/Navigation/DockArea_1")
S_o5446 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o5446, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5447 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o5447, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5448 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o5448, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5449 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o5449, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5450 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o5450, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5451 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o5451, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5452 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o5452, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5453 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o5453, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5454 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o5454, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
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
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o5455, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5456 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o5456, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5457 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o5457, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5458 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o5458, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5459 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o5459, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5460 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o5460, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5461 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o5461, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5462 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o5462, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5463 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o5463, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5464 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o5464, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5465 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o5465, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5466 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o5466, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5467 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o5467, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5468 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o5468, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5469 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o5469, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5470 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/ApproachPath_2", "/Scenario_Dynamic/Navigation/DockPath_2", "/Scenario_Dynamic/Navigation/DockArea_2")
S_o5471 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5471, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5471, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5471, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "wng", "", "", "", False, False, True)
  CallFunction(o5471, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5471, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5471, "Code6")
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
S_o5477 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5477, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5477, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5477, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o5477, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5477, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5477, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5482.SetStateValue(L1)
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
o5482 = { [nil] = {}, Start = function()
  o5482["Value"] = False
  o10170.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5482.Value == L0) then
    o5482["Value"] = L0
    o10170.ReCalculate()
  end
end }
S_o5483 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5483, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5483, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5483, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o5483, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5483, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5483, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5488.SetStateValue(L1)
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
o5488 = { [nil] = {}, Start = function()
  o5488["Value"] = False
  o10171.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5488.Value == L0) then
    o5488["Value"] = L0
    o10171.ReCalculate()
  end
end }
S_o5489 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5489, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5489, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5489, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o5489, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5489, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5489, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5494.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5490.Value ~= True) then
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
o5490 = { [nil] = {}, GetCalculated = function()
  if not (o10174.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5490.SetStateValue(o5490.GetCalculated())
end, StartCalculate = function()
  o5490["Value"] = o5490.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5490.Value == L0) then
    o5490["Value"] = L0
    CallFunction(o5489, "ProcesseStateChange")
  end
end }
o5494 = { [nil] = {}, Start = function()
  o5494["Value"] = False
  o10175.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5494.Value == L0) then
    o5494["Value"] = L0
    o10175.ReCalculate()
  end
end }
S_o5495 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5495, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5495, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5495, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o5495, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5495, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5495, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5500.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5496.Value ~= True) then
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
o5496 = { [nil] = {}, GetCalculated = function()
  if not (o10174.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5496.SetStateValue(o5496.GetCalculated())
end, StartCalculate = function()
  o5496["Value"] = o5496.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5496.Value == L0) then
    o5496["Value"] = L0
    CallFunction(o5495, "ProcesseStateChange")
  end
end }
o5500 = { [nil] = {}, Start = function()
  o5500["Value"] = False
  o10175.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5500.Value == L0) then
    o5500["Value"] = L0
    o10175.ReCalculate()
  end
end }
S_o5501 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5501, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5501, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5501, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "wng_", "", "", "", False, False, True)
  CallFunction(o5501, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5501, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5501, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5506.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5502.Value ~= True) then
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
o5502 = { [nil] = {}, GetCalculated = function()
  if not (o10186.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5502.SetStateValue(o5502.GetCalculated())
end, StartCalculate = function()
  o5502["Value"] = o5502.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5502.Value == L0) then
    o5502["Value"] = L0
    CallFunction(o5501, "ProcesseStateChange")
  end
end }
o5506 = { [nil] = {}, Start = function()
  o5506["Value"] = False
  o10361.StartCalculate()
  o10417.StartCalculate()
  o10473.StartCalculate()
  o10529.StartCalculate()
  o10585.StartCalculate()
  o10641.StartCalculate()
  o10697.StartCalculate()
  o10753.StartCalculate()
  o10809.StartCalculate()
  o10865.StartCalculate()
  o10921.StartCalculate()
  o10977.StartCalculate()
  o11073.StartCalculate()
  o11081.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5506.Value == L0) then
    o5506["Value"] = L0
    o10361.ReCalculate()
    o10417.ReCalculate()
    o10473.ReCalculate()
    o10529.ReCalculate()
    o10585.ReCalculate()
    o10641.ReCalculate()
    o10697.ReCalculate()
    o10753.ReCalculate()
    o10809.ReCalculate()
    o10865.ReCalculate()
    o10921.ReCalculate()
    o10977.ReCalculate()
    o11073.ReCalculate()
    o11081.ReCalculate()
  end
end }
S_o5507 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5507, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5507, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5507, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5507, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5507, "Code5")
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
      if not (o5508.Value ~= True) then
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
o5508 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5508.SetStateValue(o5508.GetCalculated())
end, StartCalculate = function()
  o5508["Value"] = o5508.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5508.Value == L0) then
    o5508["Value"] = L0
    CallFunction(o5507, "ProcesseStateChange")
  end
end }
S_o5550 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5550, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5550, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5550, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5550, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5550, "Code5")
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
      if not (o5551.Value ~= True) then
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
o5551 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5551.SetStateValue(o5551.GetCalculated())
end, StartCalculate = function()
  o5551["Value"] = o5551.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5551.Value == L0) then
    o5551["Value"] = L0
    CallFunction(o5550, "ProcesseStateChange")
  end
end }
S_o5593 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5593, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5593, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5593, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5593, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5593, "Code5")
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
      if not (o5594.Value ~= True) then
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
o5594 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5594.SetStateValue(o5594.GetCalculated())
end, StartCalculate = function()
  o5594["Value"] = o5594.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5594.Value == L0) then
    o5594["Value"] = L0
    CallFunction(o5593, "ProcesseStateChange")
  end
end }
S_o5636 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5636, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5636, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5636, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5636, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5636, "Code5")
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
      if not (o5637.Value ~= True) then
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
o5637 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5637.SetStateValue(o5637.GetCalculated())
end, StartCalculate = function()
  o5637["Value"] = o5637.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5637.Value == L0) then
    o5637["Value"] = L0
    CallFunction(o5636, "ProcesseStateChange")
  end
end }
S_o5679 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5679, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5679, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5679, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5679, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5679, "Code5")
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
      if not (o5680.Value ~= True) then
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
o5680 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5680.SetStateValue(o5680.GetCalculated())
end, StartCalculate = function()
  o5680["Value"] = o5680.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5680.Value == L0) then
    o5680["Value"] = L0
    CallFunction(o5679, "ProcesseStateChange")
  end
end }
S_o5722 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5722, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5722, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5722, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5722, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5722, "Code5")
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
      if not (o5723.Value ~= True) then
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
o5723 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5723.SetStateValue(o5723.GetCalculated())
end, StartCalculate = function()
  o5723["Value"] = o5723.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5723.Value == L0) then
    o5723["Value"] = L0
    CallFunction(o5722, "ProcesseStateChange")
  end
end }
S_o5765 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5765, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5765, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5765, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5765, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5765, "Code5")
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
      if not (o5766.Value ~= True) then
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
o5766 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5766.SetStateValue(o5766.GetCalculated())
end, StartCalculate = function()
  o5766["Value"] = o5766.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5766.Value == L0) then
    o5766["Value"] = L0
    CallFunction(o5765, "ProcesseStateChange")
  end
end }
S_o5808 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5808, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5808, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5808, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5808, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5808, "Code5")
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
      if not (o5809.Value ~= True) then
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
o5809 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5809.SetStateValue(o5809.GetCalculated())
end, StartCalculate = function()
  o5809["Value"] = o5809.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5809.Value == L0) then
    o5809["Value"] = L0
    CallFunction(o5808, "ProcesseStateChange")
  end
end }
S_o5851 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5851, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5851, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5851, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5851, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5851, "Code5")
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
      if not (o5852.Value ~= True) then
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
o5852 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5852.SetStateValue(o5852.GetCalculated())
end, StartCalculate = function()
  o5852["Value"] = o5852.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5852.Value == L0) then
    o5852["Value"] = L0
    CallFunction(o5851, "ProcesseStateChange")
  end
end }
S_o5894 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5894, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5894, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5894, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5894, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5894, "Code5")
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
      if not (o5895.Value ~= True) then
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
o5895 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5895.SetStateValue(o5895.GetCalculated())
end, StartCalculate = function()
  o5895["Value"] = o5895.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5895.Value == L0) then
    o5895["Value"] = L0
    CallFunction(o5894, "ProcesseStateChange")
  end
end }
S_o5937 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5937, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5937, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5937, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5937, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5937, "Code5")
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
      if not (o5938.Value ~= True) then
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
o5938 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5938.SetStateValue(o5938.GetCalculated())
end, StartCalculate = function()
  o5938["Value"] = o5938.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5938.Value == L0) then
    o5938["Value"] = L0
    CallFunction(o5937, "ProcesseStateChange")
  end
end }
S_o5980 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5980, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5980, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5980, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5980, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5980, "Code5")
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
      if not (o5981.Value ~= True) then
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
o5981 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5981.SetStateValue(o5981.GetCalculated())
end, StartCalculate = function()
  o5981["Value"] = o5981.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5981.Value == L0) then
    o5981["Value"] = L0
    CallFunction(o5980, "ProcesseStateChange")
  end
end }
S_o6023 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6023, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6023, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6023, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6023, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6023, "Code5")
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
      if not (o6024.Value ~= True) then
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
o6024 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6024.SetStateValue(o6024.GetCalculated())
end, StartCalculate = function()
  o6024["Value"] = o6024.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6024.Value == L0) then
    o6024["Value"] = L0
    CallFunction(o6023, "ProcesseStateChange")
  end
end }
S_o6066 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6066, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6066, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6066, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6066, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6066, "Code5")
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
      if not (o6067.Value ~= True) then
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
o6067 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6067.SetStateValue(o6067.GetCalculated())
end, StartCalculate = function()
  o6067["Value"] = o6067.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6067.Value == L0) then
    o6067["Value"] = L0
    CallFunction(o6066, "ProcesseStateChange")
  end
end }
S_o6109 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6109, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6109, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6109, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6109, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6109, "Code5")
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
      if not (o6110.Value ~= True) then
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
o6110 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6110.SetStateValue(o6110.GetCalculated())
end, StartCalculate = function()
  o6110["Value"] = o6110.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6110.Value == L0) then
    o6110["Value"] = L0
    CallFunction(o6109, "ProcesseStateChange")
  end
end }
S_o6152 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6152, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6152, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6152, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6152, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6152, "Code5")
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
      if not (o6153.Value ~= True) then
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
o6153 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6153.SetStateValue(o6153.GetCalculated())
end, StartCalculate = function()
  o6153["Value"] = o6153.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6153.Value == L0) then
    o6153["Value"] = L0
    CallFunction(o6152, "ProcesseStateChange")
  end
end }
S_o6195 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6195, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6195, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6195, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6195, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6195, "Code5")
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
      if not (o6196.Value ~= True) then
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
o6196 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6196.SetStateValue(o6196.GetCalculated())
end, StartCalculate = function()
  o6196["Value"] = o6196.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6196.Value == L0) then
    o6196["Value"] = L0
    CallFunction(o6195, "ProcesseStateChange")
  end
end }
S_o6238 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6238, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6238, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6238, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6238, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6238, "Code5")
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
o6239 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
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
    CallFunction(o6238, "ProcesseStateChange")
  end
end }
S_o6281 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6281, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6281, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6281, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6281, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6281, "Code5")
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
      if not (o6282.Value ~= True) then
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
o6282 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6282.SetStateValue(o6282.GetCalculated())
end, StartCalculate = function()
  o6282["Value"] = o6282.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6282.Value == L0) then
    o6282["Value"] = L0
    CallFunction(o6281, "ProcesseStateChange")
  end
end }
S_o6324 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6324, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6324, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6324, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6324, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6324, "Code5")
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
      if not (o6325.Value ~= True) then
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
o6325 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6325.SetStateValue(o6325.GetCalculated())
end, StartCalculate = function()
  o6325["Value"] = o6325.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6325.Value == L0) then
    o6325["Value"] = L0
    CallFunction(o6324, "ProcesseStateChange")
  end
end }
S_o6367 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6367, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6367, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6367, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6367, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6367, "Code5")
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
      if not (o6368.Value ~= True) then
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
o6368 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6368.SetStateValue(o6368.GetCalculated())
end, StartCalculate = function()
  o6368["Value"] = o6368.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6368.Value == L0) then
    o6368["Value"] = L0
    CallFunction(o6367, "ProcesseStateChange")
  end
end }
S_o6410 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6410, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6410, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6410, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6410, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6410, "Code5")
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
      if not (o6411.Value ~= True) then
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
o6411 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6411.SetStateValue(o6411.GetCalculated())
end, StartCalculate = function()
  o6411["Value"] = o6411.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6411.Value == L0) then
    o6411["Value"] = L0
    CallFunction(o6410, "ProcesseStateChange")
  end
end }
S_o6453 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6453, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6453, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6453, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6453, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6453, "Code5")
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
      if not (o6454.Value ~= True) then
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
o6454 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6454.SetStateValue(o6454.GetCalculated())
end, StartCalculate = function()
  o6454["Value"] = o6454.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6454.Value == L0) then
    o6454["Value"] = L0
    CallFunction(o6453, "ProcesseStateChange")
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
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6496, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6496, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6496, "Code5")
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
      if not (o6497.Value ~= True) then
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
o6497 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6497.SetStateValue(o6497.GetCalculated())
end, StartCalculate = function()
  o6497["Value"] = o6497.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6497.Value == L0) then
    o6497["Value"] = L0
    CallFunction(o6496, "ProcesseStateChange")
  end
end }
S_o6539 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6539, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6539, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6539, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6539, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6539, "Code5")
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
      if not (o6540.Value ~= True) then
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
o6540 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6540.SetStateValue(o6540.GetCalculated())
end, StartCalculate = function()
  o6540["Value"] = o6540.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6540.Value == L0) then
    o6540["Value"] = L0
    CallFunction(o6539, "ProcesseStateChange")
  end
end }
S_o6582 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6582, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6582, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6582, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6582, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6582, "Code5")
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
      if not (o6583.Value ~= True) then
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
o6583 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6583.SetStateValue(o6583.GetCalculated())
end, StartCalculate = function()
  o6583["Value"] = o6583.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6583.Value == L0) then
    o6583["Value"] = L0
    CallFunction(o6582, "ProcesseStateChange")
  end
end }
S_o6625 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6625, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6625, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6625, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6625, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6625, "Code5")
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
      if not (o6626.Value ~= True) then
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
o6626 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6626.SetStateValue(o6626.GetCalculated())
end, StartCalculate = function()
  o6626["Value"] = o6626.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6626.Value == L0) then
    o6626["Value"] = L0
    CallFunction(o6625, "ProcesseStateChange")
  end
end }
S_o6668 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6668, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6668, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6668, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6668, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6668, "Code5")
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
      if not (o6669.Value ~= True) then
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
o6669 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6669.SetStateValue(o6669.GetCalculated())
end, StartCalculate = function()
  o6669["Value"] = o6669.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6669.Value == L0) then
    o6669["Value"] = L0
    CallFunction(o6668, "ProcesseStateChange")
  end
end }
S_o6711 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6711, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6711, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6711, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6711, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6711, "Code5")
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
      if not (o6712.Value ~= True) then
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
o6712 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6712.SetStateValue(o6712.GetCalculated())
end, StartCalculate = function()
  o6712["Value"] = o6712.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6712.Value == L0) then
    o6712["Value"] = L0
    CallFunction(o6711, "ProcesseStateChange")
  end
end }
S_o6754 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6754, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6754, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6754, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6754, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6754, "Code5")
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
      if not (o6755.Value ~= True) then
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
o6755 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6755.SetStateValue(o6755.GetCalculated())
end, StartCalculate = function()
  o6755["Value"] = o6755.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6755.Value == L0) then
    o6755["Value"] = L0
    CallFunction(o6754, "ProcesseStateChange")
  end
end }
S_o6797 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6797, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6797, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6797, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6797, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6797, "Code5")
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
      if not (o6798.Value ~= True) then
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
o6798 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6798.SetStateValue(o6798.GetCalculated())
end, StartCalculate = function()
  o6798["Value"] = o6798.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6798.Value == L0) then
    o6798["Value"] = L0
    CallFunction(o6797, "ProcesseStateChange")
  end
end }
S_o6840 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6840, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6840, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6840, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6840, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6840, "Code5")
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
      if not (o6841.Value ~= True) then
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
o6841 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6841.SetStateValue(o6841.GetCalculated())
end, StartCalculate = function()
  o6841["Value"] = o6841.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6841.Value == L0) then
    o6841["Value"] = L0
    CallFunction(o6840, "ProcesseStateChange")
  end
end }
S_o6883 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6883, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6883, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6883, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6883, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6883, "Code5")
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
      if not (o6884.Value ~= True) then
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
o6884 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6884.SetStateValue(o6884.GetCalculated())
end, StartCalculate = function()
  o6884["Value"] = o6884.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6884.Value == L0) then
    o6884["Value"] = L0
    CallFunction(o6883, "ProcesseStateChange")
  end
end }
S_o6926 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6926, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6926, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6926, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6926, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6926, "Code5")
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
      if not (o6927.Value ~= True) then
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
o6927 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6927.SetStateValue(o6927.GetCalculated())
end, StartCalculate = function()
  o6927["Value"] = o6927.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6927.Value == L0) then
    o6927["Value"] = L0
    CallFunction(o6926, "ProcesseStateChange")
  end
end }
S_o6969 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6969, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6969, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6969, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6969, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6969, "Code5")
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
      if not (o6970.Value ~= True) then
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
o6970 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6970.SetStateValue(o6970.GetCalculated())
end, StartCalculate = function()
  o6970["Value"] = o6970.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6970.Value == L0) then
    o6970["Value"] = L0
    CallFunction(o6969, "ProcesseStateChange")
  end
end }
S_o7012 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7012, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7012, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7012, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7012, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7012, "Code5")
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
      if not (o7013.Value ~= True) then
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
o7013 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7013.SetStateValue(o7013.GetCalculated())
end, StartCalculate = function()
  o7013["Value"] = o7013.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7013.Value == L0) then
    o7013["Value"] = L0
    CallFunction(o7012, "ProcesseStateChange")
  end
end }
S_o7055 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7055, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7055, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7055, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7055, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7055, "Code5")
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
      if not (o7056.Value ~= True) then
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
o7056 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7056.SetStateValue(o7056.GetCalculated())
end, StartCalculate = function()
  o7056["Value"] = o7056.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7056.Value == L0) then
    o7056["Value"] = L0
    CallFunction(o7055, "ProcesseStateChange")
  end
end }
S_o7098 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7098, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7098, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7098, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7098, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7098, "Code5")
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
      if not (o7099.Value ~= True) then
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
o7099 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7099.SetStateValue(o7099.GetCalculated())
end, StartCalculate = function()
  o7099["Value"] = o7099.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7099.Value == L0) then
    o7099["Value"] = L0
    CallFunction(o7098, "ProcesseStateChange")
  end
end }
S_o7141 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7141, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7141, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7141, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7141, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7141, "Code5")
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
      if not (o7142.Value ~= True) then
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
o7142 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7142.SetStateValue(o7142.GetCalculated())
end, StartCalculate = function()
  o7142["Value"] = o7142.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7142.Value == L0) then
    o7142["Value"] = L0
    CallFunction(o7141, "ProcesseStateChange")
  end
end }
S_o7184 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7184, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7184, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7184, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7184, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7184, "Code5")
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
      if not (o7185.Value ~= True) then
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
o7185 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7185.SetStateValue(o7185.GetCalculated())
end, StartCalculate = function()
  o7185["Value"] = o7185.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7185.Value == L0) then
    o7185["Value"] = L0
    CallFunction(o7184, "ProcesseStateChange")
  end
end }
S_o7227 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7227, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7227, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7227, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7227, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7227, "Code5")
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
      if not (o7228.Value ~= True) then
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
o7228 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7228.SetStateValue(o7228.GetCalculated())
end, StartCalculate = function()
  o7228["Value"] = o7228.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7228.Value == L0) then
    o7228["Value"] = L0
    CallFunction(o7227, "ProcesseStateChange")
  end
end }
S_o7270 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7270, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7270, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7270, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7270, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7270, "Code5")
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
      if not (o7271.Value ~= True) then
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
o7271 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7271.SetStateValue(o7271.GetCalculated())
end, StartCalculate = function()
  o7271["Value"] = o7271.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7271.Value == L0) then
    o7271["Value"] = L0
    CallFunction(o7270, "ProcesseStateChange")
  end
end }
S_o7313 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7313, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7313, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7313, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7313, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7313, "Code5")
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
      if not (o7314.Value ~= True) then
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
o7314 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7314.SetStateValue(o7314.GetCalculated())
end, StartCalculate = function()
  o7314["Value"] = o7314.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7314.Value == L0) then
    o7314["Value"] = L0
    CallFunction(o7313, "ProcesseStateChange")
  end
end }
S_o7356 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7356, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7356, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7356, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7356, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7356, "Code5")
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
      if not (o7357.Value ~= True) then
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
o7357 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7357.SetStateValue(o7357.GetCalculated())
end, StartCalculate = function()
  o7357["Value"] = o7357.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7357.Value == L0) then
    o7357["Value"] = L0
    CallFunction(o7356, "ProcesseStateChange")
  end
end }
S_o7399 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7399, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7399, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7399, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7399, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7399, "Code5")
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
      if not (o7400.Value ~= True) then
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
o7400 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7400.SetStateValue(o7400.GetCalculated())
end, StartCalculate = function()
  o7400["Value"] = o7400.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7400.Value == L0) then
    o7400["Value"] = L0
    CallFunction(o7399, "ProcesseStateChange")
  end
end }
S_o7442 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7442, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7442, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7442, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7442, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7442, "Code5")
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
      if not (o7443.Value ~= True) then
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
o7443 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7443.SetStateValue(o7443.GetCalculated())
end, StartCalculate = function()
  o7443["Value"] = o7443.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7443.Value == L0) then
    o7443["Value"] = L0
    CallFunction(o7442, "ProcesseStateChange")
  end
end }
S_o7485 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7485, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7485, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7485, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7485, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7485, "Code5")
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
      if not (o7486.Value ~= True) then
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
o7486 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7486.SetStateValue(o7486.GetCalculated())
end, StartCalculate = function()
  o7486["Value"] = o7486.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7486.Value == L0) then
    o7486["Value"] = L0
    CallFunction(o7485, "ProcesseStateChange")
  end
end }
S_o7528 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7528, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7528, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7528, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7528, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7528, "Code5")
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
      if not (o7529.Value ~= True) then
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
o7529 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7529.SetStateValue(o7529.GetCalculated())
end, StartCalculate = function()
  o7529["Value"] = o7529.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7529.Value == L0) then
    o7529["Value"] = L0
    CallFunction(o7528, "ProcesseStateChange")
  end
end }
S_o7571 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7571, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7571, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7571, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7571, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7571, "Code5")
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
      if not (o7572.Value ~= True) then
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
o7572 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7572.SetStateValue(o7572.GetCalculated())
end, StartCalculate = function()
  o7572["Value"] = o7572.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7572.Value == L0) then
    o7572["Value"] = L0
    CallFunction(o7571, "ProcesseStateChange")
  end
end }
S_o7614 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7614, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7614, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7614, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7614, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7614, "Code5")
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
      if not (o7615.Value ~= True) then
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
o7615 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7615.SetStateValue(o7615.GetCalculated())
end, StartCalculate = function()
  o7615["Value"] = o7615.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7615.Value == L0) then
    o7615["Value"] = L0
    CallFunction(o7614, "ProcesseStateChange")
  end
end }
S_o7657 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7657, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7657, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7657, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7657, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7657, "Code5")
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
      if not (o7658.Value ~= True) then
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
o7658 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7658.SetStateValue(o7658.GetCalculated())
end, StartCalculate = function()
  o7658["Value"] = o7658.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7658.Value == L0) then
    o7658["Value"] = L0
    CallFunction(o7657, "ProcesseStateChange")
  end
end }
S_o7700 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7700, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7700, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7700, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7700, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7700, "Code5")
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
      if not (o7701.Value ~= True) then
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
o7701 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7701.SetStateValue(o7701.GetCalculated())
end, StartCalculate = function()
  o7701["Value"] = o7701.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7701.Value == L0) then
    o7701["Value"] = L0
    CallFunction(o7700, "ProcesseStateChange")
  end
end }
S_o7743 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7743, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7743, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7743, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7743, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7743, "Code5")
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
      if not (o7744.Value ~= True) then
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
o7744 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7744.SetStateValue(o7744.GetCalculated())
end, StartCalculate = function()
  o7744["Value"] = o7744.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7744.Value == L0) then
    o7744["Value"] = L0
    CallFunction(o7743, "ProcesseStateChange")
  end
end }
S_o7786 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7786, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7786, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7786, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7786, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7786, "Code5")
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
      if not (o7787.Value ~= True) then
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
o7787 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7787.SetStateValue(o7787.GetCalculated())
end, StartCalculate = function()
  o7787["Value"] = o7787.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7787.Value == L0) then
    o7787["Value"] = L0
    CallFunction(o7786, "ProcesseStateChange")
  end
end }
S_o7829 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7829, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7829, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7829, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7829, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7829, "Code5")
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
      if not (o7830.Value ~= True) then
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
o7830 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7830.SetStateValue(o7830.GetCalculated())
end, StartCalculate = function()
  o7830["Value"] = o7830.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7830.Value == L0) then
    o7830["Value"] = L0
    CallFunction(o7829, "ProcesseStateChange")
  end
end }
S_o7872 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7872, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7872, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7872, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7872, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7872, "Code5")
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
      if not (o7873.Value ~= True) then
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
o7873 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7873.SetStateValue(o7873.GetCalculated())
end, StartCalculate = function()
  o7873["Value"] = o7873.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7873.Value == L0) then
    o7873["Value"] = L0
    CallFunction(o7872, "ProcesseStateChange")
  end
end }
S_o7915 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7915, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7915, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7915, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7915, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7915, "Code5")
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
      if not (o7916.Value ~= True) then
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
o7916 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7916.SetStateValue(o7916.GetCalculated())
end, StartCalculate = function()
  o7916["Value"] = o7916.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7916.Value == L0) then
    o7916["Value"] = L0
    CallFunction(o7915, "ProcesseStateChange")
  end
end }
S_o7958 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7958, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7958, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7958, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7958, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7958, "Code5")
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
      if not (o7959.Value ~= True) then
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
o7959 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7959.SetStateValue(o7959.GetCalculated())
end, StartCalculate = function()
  o7959["Value"] = o7959.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7959.Value == L0) then
    o7959["Value"] = L0
    CallFunction(o7958, "ProcesseStateChange")
  end
end }
S_o8001 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8001, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8001, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8001, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8001, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o8001, "Code5")
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
      if not (o8002.Value ~= True) then
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
o8002 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8002.SetStateValue(o8002.GetCalculated())
end, StartCalculate = function()
  o8002["Value"] = o8002.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8002.Value == L0) then
    o8002["Value"] = L0
    CallFunction(o8001, "ProcesseStateChange")
  end
end }
S_o8044 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8044, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8044, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8044, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8044, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o8044, "Code5")
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
      if not (o8045.Value ~= True) then
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
o8045 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8045.SetStateValue(o8045.GetCalculated())
end, StartCalculate = function()
  o8045["Value"] = o8045.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8045.Value == L0) then
    o8045["Value"] = L0
    CallFunction(o8044, "ProcesseStateChange")
  end
end }
S_o8087 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8087, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8087, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8087, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8087, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o8087, "Code5")
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
      if not (o8088.Value ~= True) then
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
o8088 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8088.SetStateValue(o8088.GetCalculated())
end, StartCalculate = function()
  o8088["Value"] = o8088.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8088.Value == L0) then
    o8088["Value"] = L0
    CallFunction(o8087, "ProcesseStateChange")
  end
end }
S_o8130 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8130, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8130, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8130, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8130, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o8130, "Code5")
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
      if not (o8131.Value ~= True) then
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
o8131 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8131.SetStateValue(o8131.GetCalculated())
end, StartCalculate = function()
  o8131["Value"] = o8131.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8131.Value == L0) then
    o8131["Value"] = L0
    CallFunction(o8130, "ProcesseStateChange")
  end
end }
S_o8173 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8173, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8173, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8173, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8173, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o8173, "Code5")
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
      if not (o8174.Value ~= True) then
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
o8174 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8174.SetStateValue(o8174.GetCalculated())
end, StartCalculate = function()
  o8174["Value"] = o8174.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8174.Value == L0) then
    o8174["Value"] = L0
    CallFunction(o8173, "ProcesseStateChange")
  end
end }
S_o8216 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8216, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8216, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8216, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8216, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o8216, "Code5")
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
      if not (o8217.Value ~= True) then
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
o8217 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8217.SetStateValue(o8217.GetCalculated())
end, StartCalculate = function()
  o8217["Value"] = o8217.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8217.Value == L0) then
    o8217["Value"] = L0
    CallFunction(o8216, "ProcesseStateChange")
  end
end }
S_o8259 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8259, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8259, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8259, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8259, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o8259, "Code5")
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
      if not (o8260.Value ~= True) then
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
o8260 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8260.SetStateValue(o8260.GetCalculated())
end, StartCalculate = function()
  o8260["Value"] = o8260.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8260.Value == L0) then
    o8260["Value"] = L0
    CallFunction(o8259, "ProcesseStateChange")
  end
end }
S_o8302 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8302, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8302, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8302, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8302, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o8302, "Code5")
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
      if not (o8303.Value ~= True) then
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
o8303 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8303.SetStateValue(o8303.GetCalculated())
end, StartCalculate = function()
  o8303["Value"] = o8303.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8303.Value == L0) then
    o8303["Value"] = L0
    CallFunction(o8302, "ProcesseStateChange")
  end
end }
S_o8345 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8345, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8345, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8345, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8345, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o8345, "Code5")
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
      if not (o8346.Value ~= True) then
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
o8346 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8346.SetStateValue(o8346.GetCalculated())
end, StartCalculate = function()
  o8346["Value"] = o8346.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8346.Value == L0) then
    o8346["Value"] = L0
    CallFunction(o8345, "ProcesseStateChange")
  end
end }
S_o8388 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8388, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8388, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8388, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8388, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o8388, "Code5")
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
      if not (o8389.Value ~= True) then
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
o8389 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8389.SetStateValue(o8389.GetCalculated())
end, StartCalculate = function()
  o8389["Value"] = o8389.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8389.Value == L0) then
    o8389["Value"] = L0
    CallFunction(o8388, "ProcesseStateChange")
  end
end }
S_o8431 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8431, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8431, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8431, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8431, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o8431, "Code5")
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
      if not (o8432.Value ~= True) then
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
o8432 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8432.SetStateValue(o8432.GetCalculated())
end, StartCalculate = function()
  o8432["Value"] = o8432.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8432.Value == L0) then
    o8432["Value"] = L0
    CallFunction(o8431, "ProcesseStateChange")
  end
end }
S_o8474 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8474, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8474, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8474, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8474, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o8474, "Code5")
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
      if not (o8475.Value ~= True) then
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
o8475 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8475.SetStateValue(o8475.GetCalculated())
end, StartCalculate = function()
  o8475["Value"] = o8475.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8475.Value == L0) then
    o8475["Value"] = L0
    CallFunction(o8474, "ProcesseStateChange")
  end
end }
S_o8517 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8517, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8517, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8517, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8517, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o8517, "Code5")
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
      if not (o8518.Value ~= True) then
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
o8518 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8518.SetStateValue(o8518.GetCalculated())
end, StartCalculate = function()
  o8518["Value"] = o8518.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8518.Value == L0) then
    o8518["Value"] = L0
    CallFunction(o8517, "ProcesseStateChange")
  end
end }
S_o8560 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8560, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8560, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8560, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8560, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o8560, "Code5")
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
      if not (o8561.Value ~= True) then
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
o8561 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8561.SetStateValue(o8561.GetCalculated())
end, StartCalculate = function()
  o8561["Value"] = o8561.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8561.Value == L0) then
    o8561["Value"] = L0
    CallFunction(o8560, "ProcesseStateChange")
  end
end }
S_o8603 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8603, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8603, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8603, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8603, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o8603, "Code5")
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
      if not (o8604.Value ~= True) then
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
o8604 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8604.SetStateValue(o8604.GetCalculated())
end, StartCalculate = function()
  o8604["Value"] = o8604.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8604.Value == L0) then
    o8604["Value"] = L0
    CallFunction(o8603, "ProcesseStateChange")
  end
end }
S_o8646 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8646, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8646, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8646, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8646, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o8646, "Code5")
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
      if not (o8647.Value ~= True) then
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
o8647 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8647.SetStateValue(o8647.GetCalculated())
end, StartCalculate = function()
  o8647["Value"] = o8647.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8647.Value == L0) then
    o8647["Value"] = L0
    CallFunction(o8646, "ProcesseStateChange")
  end
end }
S_o8689 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8689, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8689, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8689, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8689, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o8689, "Code5")
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
      if not (o8690.Value ~= True) then
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
o8690 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8690.SetStateValue(o8690.GetCalculated())
end, StartCalculate = function()
  o8690["Value"] = o8690.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8690.Value == L0) then
    o8690["Value"] = L0
    CallFunction(o8689, "ProcesseStateChange")
  end
end }
S_o8732 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8732, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8732, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8732, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8732, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o8732, "Code5")
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
      if not (o8733.Value ~= True) then
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
o8733 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8733.SetStateValue(o8733.GetCalculated())
end, StartCalculate = function()
  o8733["Value"] = o8733.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8733.Value == L0) then
    o8733["Value"] = L0
    CallFunction(o8732, "ProcesseStateChange")
  end
end }
S_o8775 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8775, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8775, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8775, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8775, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o8775, "Code5")
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
      if not (o8776.Value ~= True) then
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
o8776 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8776.SetStateValue(o8776.GetCalculated())
end, StartCalculate = function()
  o8776["Value"] = o8776.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8776.Value == L0) then
    o8776["Value"] = L0
    CallFunction(o8775, "ProcesseStateChange")
  end
end }
S_o8818 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8818, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8818, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8818, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8818, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o8818, "Code5")
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
      if not (o8819.Value ~= True) then
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
o8819 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8819.SetStateValue(o8819.GetCalculated())
end, StartCalculate = function()
  o8819["Value"] = o8819.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8819.Value == L0) then
    o8819["Value"] = L0
    CallFunction(o8818, "ProcesseStateChange")
  end
end }
S_o8861 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8861, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8861, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8861, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8861, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o8861, "Code5")
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
      if not (o8862.Value ~= True) then
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
o8862 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8862.SetStateValue(o8862.GetCalculated())
end, StartCalculate = function()
  o8862["Value"] = o8862.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8862.Value == L0) then
    o8862["Value"] = L0
    CallFunction(o8861, "ProcesseStateChange")
  end
end }
S_o8904 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8904, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8904, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8904, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8904, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o8904, "Code5")
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
      if not (o8905.Value ~= True) then
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
o8905 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8905.SetStateValue(o8905.GetCalculated())
end, StartCalculate = function()
  o8905["Value"] = o8905.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8905.Value == L0) then
    o8905["Value"] = L0
    CallFunction(o8904, "ProcesseStateChange")
  end
end }
S_o8947 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8947, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8947, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8947, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8947, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o8947, "Code5")
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
      if not (o8948.Value ~= True) then
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
o8948 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8948.SetStateValue(o8948.GetCalculated())
end, StartCalculate = function()
  o8948["Value"] = o8948.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8948.Value == L0) then
    o8948["Value"] = L0
    CallFunction(o8947, "ProcesseStateChange")
  end
end }
S_o8990 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8990, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8990, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8990, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8990, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o8990, "Code5")
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
      if not (o8991.Value ~= True) then
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
o8991 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8991.SetStateValue(o8991.GetCalculated())
end, StartCalculate = function()
  o8991["Value"] = o8991.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8991.Value == L0) then
    o8991["Value"] = L0
    CallFunction(o8990, "ProcesseStateChange")
  end
end }
S_o9033 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9033, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9033, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9033, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9033, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9033, "Code5")
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
      if not (o9034.Value ~= True) then
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
o9034 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9034.SetStateValue(o9034.GetCalculated())
end, StartCalculate = function()
  o9034["Value"] = o9034.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9034.Value == L0) then
    o9034["Value"] = L0
    CallFunction(o9033, "ProcesseStateChange")
  end
end }
S_o9076 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9076, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9076, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9076, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9076, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9076, "Code5")
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
      if not (o9077.Value ~= True) then
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
o9077 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9077.SetStateValue(o9077.GetCalculated())
end, StartCalculate = function()
  o9077["Value"] = o9077.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9077.Value == L0) then
    o9077["Value"] = L0
    CallFunction(o9076, "ProcesseStateChange")
  end
end }
S_o9119 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9119, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9119, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9119, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9119, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9119, "Code5")
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
      if not (o9120.Value ~= True) then
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
o9120 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9120.SetStateValue(o9120.GetCalculated())
end, StartCalculate = function()
  o9120["Value"] = o9120.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9120.Value == L0) then
    o9120["Value"] = L0
    CallFunction(o9119, "ProcesseStateChange")
  end
end }
S_o9162 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9162, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9162, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9162, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9162, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9162, "Code5")
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
      if not (o9163.Value ~= True) then
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
o9163 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9163.SetStateValue(o9163.GetCalculated())
end, StartCalculate = function()
  o9163["Value"] = o9163.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9163.Value == L0) then
    o9163["Value"] = L0
    CallFunction(o9162, "ProcesseStateChange")
  end
end }
S_o9205 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9205, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9205, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9205, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9205, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9205, "Code5")
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
      if not (o9206.Value ~= True) then
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
o9206 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9206.SetStateValue(o9206.GetCalculated())
end, StartCalculate = function()
  o9206["Value"] = o9206.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9206.Value == L0) then
    o9206["Value"] = L0
    CallFunction(o9205, "ProcesseStateChange")
  end
end }
S_o9248 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9248, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9248, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9248, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9248, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9248, "Code5")
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
      if not (o9249.Value ~= True) then
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
o9249 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9249.SetStateValue(o9249.GetCalculated())
end, StartCalculate = function()
  o9249["Value"] = o9249.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9249.Value == L0) then
    o9249["Value"] = L0
    CallFunction(o9248, "ProcesseStateChange")
  end
end }
S_o9291 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9291, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9291, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9291, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9291, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9291, "Code5")
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
      if not (o9292.Value ~= True) then
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
o9292 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9292.SetStateValue(o9292.GetCalculated())
end, StartCalculate = function()
  o9292["Value"] = o9292.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9292.Value == L0) then
    o9292["Value"] = L0
    CallFunction(o9291, "ProcesseStateChange")
  end
end }
S_o9334 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9334, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9334, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9334, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9334, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9334, "Code5")
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
      if not (o9335.Value ~= True) then
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
o9335 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9335.SetStateValue(o9335.GetCalculated())
end, StartCalculate = function()
  o9335["Value"] = o9335.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9335.Value == L0) then
    o9335["Value"] = L0
    CallFunction(o9334, "ProcesseStateChange")
  end
end }
S_o9377 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9377, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9377, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9377, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9377, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9377, "Code5")
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
      if not (o9378.Value ~= True) then
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
o9378 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9378.SetStateValue(o9378.GetCalculated())
end, StartCalculate = function()
  o9378["Value"] = o9378.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9378.Value == L0) then
    o9378["Value"] = L0
    CallFunction(o9377, "ProcesseStateChange")
  end
end }
S_o9420 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9420, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9420, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9420, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9420, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9420, "Code5")
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
      if not (o9421.Value ~= True) then
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
o9421 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9421.SetStateValue(o9421.GetCalculated())
end, StartCalculate = function()
  o9421["Value"] = o9421.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9421.Value == L0) then
    o9421["Value"] = L0
    CallFunction(o9420, "ProcesseStateChange")
  end
end }
S_o9463 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9463, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9463, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9463, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9463, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9463, "Code5")
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
      if not (o9464.Value ~= True) then
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
o9464 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9464.SetStateValue(o9464.GetCalculated())
end, StartCalculate = function()
  o9464["Value"] = o9464.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9464.Value == L0) then
    o9464["Value"] = L0
    CallFunction(o9463, "ProcesseStateChange")
  end
end }
S_o9506 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9506, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9506, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9506, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9506, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9506, "Code5")
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
      if not (o9507.Value ~= True) then
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
o9507 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9507.SetStateValue(o9507.GetCalculated())
end, StartCalculate = function()
  o9507["Value"] = o9507.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9507.Value == L0) then
    o9507["Value"] = L0
    CallFunction(o9506, "ProcesseStateChange")
  end
end }
S_o9549 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9549, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9549, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9549, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9549, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9549, "Code5")
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
      if not (o9550.Value ~= True) then
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
o9550 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9550.SetStateValue(o9550.GetCalculated())
end, StartCalculate = function()
  o9550["Value"] = o9550.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9550.Value == L0) then
    o9550["Value"] = L0
    CallFunction(o9549, "ProcesseStateChange")
  end
end }
S_o9592 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9592, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9592, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9592, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9592, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9592, "Code5")
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
      if not (o9593.Value ~= True) then
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
o9593 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9593.SetStateValue(o9593.GetCalculated())
end, StartCalculate = function()
  o9593["Value"] = o9593.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9593.Value == L0) then
    o9593["Value"] = L0
    CallFunction(o9592, "ProcesseStateChange")
  end
end }
S_o9635 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9635, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9635, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9635, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9635, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9635, "Code5")
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
      if not (o9636.Value ~= True) then
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
o9636 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9636.SetStateValue(o9636.GetCalculated())
end, StartCalculate = function()
  o9636["Value"] = o9636.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9636.Value == L0) then
    o9636["Value"] = L0
    CallFunction(o9635, "ProcesseStateChange")
  end
end }
S_o9678 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9678, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9678, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9678, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9678, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9678, "Code5")
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
      if not (o9679.Value ~= True) then
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
o9679 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9679.SetStateValue(o9679.GetCalculated())
end, StartCalculate = function()
  o9679["Value"] = o9679.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9679.Value == L0) then
    o9679["Value"] = L0
    CallFunction(o9678, "ProcesseStateChange")
  end
end }
S_o9721 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9721, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9721, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9721, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9721, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9721, "Code5")
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
      if not (o9722.Value ~= True) then
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
o9722 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9722.SetStateValue(o9722.GetCalculated())
end, StartCalculate = function()
  o9722["Value"] = o9722.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9722.Value == L0) then
    o9722["Value"] = L0
    CallFunction(o9721, "ProcesseStateChange")
  end
end }
S_o9764 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9764, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9764, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9764, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9764, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9764, "Code5")
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
      if not (o9765.Value ~= True) then
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
o9765 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9765.SetStateValue(o9765.GetCalculated())
end, StartCalculate = function()
  o9765["Value"] = o9765.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9765.Value == L0) then
    o9765["Value"] = L0
    CallFunction(o9764, "ProcesseStateChange")
  end
end }
S_o9807 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9807, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9807, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9807, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9807, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9807, "Code5")
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
      if not (o9808.Value ~= True) then
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
o9808 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9808.SetStateValue(o9808.GetCalculated())
end, StartCalculate = function()
  o9808["Value"] = o9808.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9808.Value == L0) then
    o9808["Value"] = L0
    CallFunction(o9807, "ProcesseStateChange")
  end
end }
S_o9850 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9850, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9850, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9850, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9850, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9850, "Code5")
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
      if not (o9851.Value ~= True) then
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
o9851 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9851.SetStateValue(o9851.GetCalculated())
end, StartCalculate = function()
  o9851["Value"] = o9851.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9851.Value == L0) then
    o9851["Value"] = L0
    CallFunction(o9850, "ProcesseStateChange")
  end
end }
S_o9893 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9893, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9893, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9893, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9893, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9893, "Code5")
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
      if not (o9894.Value ~= True) then
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
o9894 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9894.SetStateValue(o9894.GetCalculated())
end, StartCalculate = function()
  o9894["Value"] = o9894.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9894.Value == L0) then
    o9894["Value"] = L0
    CallFunction(o9893, "ProcesseStateChange")
  end
end }
S_o9936 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9936, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9936, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9936, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9936, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9936, "Code5")
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
      if not (o9937.Value ~= True) then
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
o9937 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9937.SetStateValue(o9937.GetCalculated())
end, StartCalculate = function()
  o9937["Value"] = o9937.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9937.Value == L0) then
    o9937["Value"] = L0
    CallFunction(o9936, "ProcesseStateChange")
  end
end }
S_o9979 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9979, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9979, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9979, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9979, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9979, "Code5")
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
      if not (o9980.Value ~= True) then
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
o9980 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9980.SetStateValue(o9980.GetCalculated())
end, StartCalculate = function()
  o9980["Value"] = o9980.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9980.Value == L0) then
    o9980["Value"] = L0
    CallFunction(o9979, "ProcesseStateChange")
  end
end }
S_o10022 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10022, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10022, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10022, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10022, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o10022, "Code5")
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
      if not (o10023.Value ~= True) then
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
o10023 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10023.SetStateValue(o10023.GetCalculated())
end, StartCalculate = function()
  o10023["Value"] = o10023.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10023.Value == L0) then
    o10023["Value"] = L0
    CallFunction(o10022, "ProcesseStateChange")
  end
end }
S_o10065 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10065, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10065, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10065, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10065, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o10065, "Code5")
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
      if not (o10066.Value ~= True) then
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
o10066 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10066.SetStateValue(o10066.GetCalculated())
end, StartCalculate = function()
  o10066["Value"] = o10066.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10066.Value == L0) then
    o10066["Value"] = L0
    CallFunction(o10065, "ProcesseStateChange")
  end
end }
S_o10108 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10108, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10108, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10108, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10108, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o10108, "Code5")
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
      if not (o10109.Value ~= True) then
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
o10109 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10109.SetStateValue(o10109.GetCalculated())
end, StartCalculate = function()
  o10109["Value"] = o10109.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10109.Value == L0) then
    o10109["Value"] = L0
    CallFunction(o10108, "ProcesseStateChange")
  end
end }
S_o10151 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_plasmagatlin", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_shell", 9999)
  Body_AddItem(L0.Node, "gun_empactor", 1)
  Body_AddItem(L0.Node, "device_generator1", 1)
  Body_AddItem(L0.Node, "ammo_energy", 200)
  Body_AddItem(L0.Node, "torpedo_maneater", 2)
  Body_AddItem(L0.Node, "buzzer_normal", 4)
  Body_AddItem(L0.Node, "gun_doommortar", 1)
  CallFunction(o10151, "Code9")
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
o10165 = { [nil] = {}, Start = function()
  o10165["Value"] = False
  o11049.StartCalculate()
end, SetStateValue = function(L0)
  if not (o10165.Value == L0) then
    o10165["Value"] = L0
    o11049.ReCalculate()
  end
end }
o10166 = { [nil] = {}, GetCalculated = function()
  if not (o2548.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 ~= 1) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10166.SetStateValue(o10166.GetCalculated())
end, StartCalculate = function()
  o10166["Value"] = o10166.GetCalculated()
  o5508.StartCalculate()
  o5551.StartCalculate()
  o5594.StartCalculate()
  o5637.StartCalculate()
  o5680.StartCalculate()
  o5723.StartCalculate()
  o5766.StartCalculate()
  o5809.StartCalculate()
  o5852.StartCalculate()
  o5895.StartCalculate()
  o5938.StartCalculate()
  o5981.StartCalculate()
  o6024.StartCalculate()
  o6067.StartCalculate()
  o6110.StartCalculate()
  o6153.StartCalculate()
  o6196.StartCalculate()
  o6239.StartCalculate()
  o6282.StartCalculate()
  o6325.StartCalculate()
  o6368.StartCalculate()
  o6411.StartCalculate()
  o6454.StartCalculate()
  o6497.StartCalculate()
  o6540.StartCalculate()
  o6583.StartCalculate()
  o6626.StartCalculate()
  o6669.StartCalculate()
  o6712.StartCalculate()
  o6755.StartCalculate()
  o6798.StartCalculate()
  o6841.StartCalculate()
  o6884.StartCalculate()
  o6927.StartCalculate()
  o6970.StartCalculate()
  o7013.StartCalculate()
  o7056.StartCalculate()
  o7099.StartCalculate()
  o7142.StartCalculate()
  o7185.StartCalculate()
  o7228.StartCalculate()
  o7271.StartCalculate()
  o7314.StartCalculate()
  o7357.StartCalculate()
  o7400.StartCalculate()
  o7443.StartCalculate()
  o7486.StartCalculate()
  o7529.StartCalculate()
  o7572.StartCalculate()
  o7615.StartCalculate()
  o7658.StartCalculate()
  o7701.StartCalculate()
  o7744.StartCalculate()
  o7787.StartCalculate()
  o7830.StartCalculate()
  o7873.StartCalculate()
  o7916.StartCalculate()
  o7959.StartCalculate()
  o8002.StartCalculate()
  o8045.StartCalculate()
  o8088.StartCalculate()
  o8131.StartCalculate()
  o8174.StartCalculate()
  o8217.StartCalculate()
  o8260.StartCalculate()
  o8303.StartCalculate()
  o8346.StartCalculate()
  o8389.StartCalculate()
  o8432.StartCalculate()
  o8475.StartCalculate()
  o8518.StartCalculate()
  o8561.StartCalculate()
  o8604.StartCalculate()
  o8647.StartCalculate()
  o8690.StartCalculate()
  o8733.StartCalculate()
  o8776.StartCalculate()
  o8819.StartCalculate()
  o8862.StartCalculate()
  o8905.StartCalculate()
  o8948.StartCalculate()
  o8991.StartCalculate()
  o9034.StartCalculate()
  o9077.StartCalculate()
  o9120.StartCalculate()
  o9163.StartCalculate()
  o9206.StartCalculate()
  o9249.StartCalculate()
  o9292.StartCalculate()
  o9335.StartCalculate()
  o9378.StartCalculate()
  o9421.StartCalculate()
  o9464.StartCalculate()
  o9507.StartCalculate()
  o9550.StartCalculate()
  o9593.StartCalculate()
  o9636.StartCalculate()
  o9679.StartCalculate()
  o9722.StartCalculate()
  o9765.StartCalculate()
  o9808.StartCalculate()
  o9851.StartCalculate()
  o9894.StartCalculate()
  o9937.StartCalculate()
  o9980.StartCalculate()
  o10023.StartCalculate()
  o10066.StartCalculate()
  o10109.StartCalculate()
  o10232.StartCalculate()
end, SetStateValue = function(L0)
  if not (o10166.Value == L0) then
    o10166["Value"] = L0
    o5508.ReCalculate()
    o5551.ReCalculate()
    o5594.ReCalculate()
    o5637.ReCalculate()
    o5680.ReCalculate()
    o5723.ReCalculate()
    o5766.ReCalculate()
    o5809.ReCalculate()
    o5852.ReCalculate()
    o5895.ReCalculate()
    o5938.ReCalculate()
    o5981.ReCalculate()
    o6024.ReCalculate()
    o6067.ReCalculate()
    o6110.ReCalculate()
    o6153.ReCalculate()
    o6196.ReCalculate()
    o6239.ReCalculate()
    o6282.ReCalculate()
    o6325.ReCalculate()
    o6368.ReCalculate()
    o6411.ReCalculate()
    o6454.ReCalculate()
    o6497.ReCalculate()
    o6540.ReCalculate()
    o6583.ReCalculate()
    o6626.ReCalculate()
    o6669.ReCalculate()
    o6712.ReCalculate()
    o6755.ReCalculate()
    o6798.ReCalculate()
    o6841.ReCalculate()
    o6884.ReCalculate()
    o6927.ReCalculate()
    o6970.ReCalculate()
    o7013.ReCalculate()
    o7056.ReCalculate()
    o7099.ReCalculate()
    o7142.ReCalculate()
    o7185.ReCalculate()
    o7228.ReCalculate()
    o7271.ReCalculate()
    o7314.ReCalculate()
    o7357.ReCalculate()
    o7400.ReCalculate()
    o7443.ReCalculate()
    o7486.ReCalculate()
    o7529.ReCalculate()
    o7572.ReCalculate()
    o7615.ReCalculate()
    o7658.ReCalculate()
    o7701.ReCalculate()
    o7744.ReCalculate()
    o7787.ReCalculate()
    o7830.ReCalculate()
    o7873.ReCalculate()
    o7916.ReCalculate()
    o7959.ReCalculate()
    o8002.ReCalculate()
    o8045.ReCalculate()
    o8088.ReCalculate()
    o8131.ReCalculate()
    o8174.ReCalculate()
    o8217.ReCalculate()
    o8260.ReCalculate()
    o8303.ReCalculate()
    o8346.ReCalculate()
    o8389.ReCalculate()
    o8432.ReCalculate()
    o8475.ReCalculate()
    o8518.ReCalculate()
    o8561.ReCalculate()
    o8604.ReCalculate()
    o8647.ReCalculate()
    o8690.ReCalculate()
    o8733.ReCalculate()
    o8776.ReCalculate()
    o8819.ReCalculate()
    o8862.ReCalculate()
    o8905.ReCalculate()
    o8948.ReCalculate()
    o8991.ReCalculate()
    o9034.ReCalculate()
    o9077.ReCalculate()
    o9120.ReCalculate()
    o9163.ReCalculate()
    o9206.ReCalculate()
    o9249.ReCalculate()
    o9292.ReCalculate()
    o9335.ReCalculate()
    o9378.ReCalculate()
    o9421.ReCalculate()
    o9464.ReCalculate()
    o9507.ReCalculate()
    o9550.ReCalculate()
    o9593.ReCalculate()
    o9636.ReCalculate()
    o9679.ReCalculate()
    o9722.ReCalculate()
    o9765.ReCalculate()
    o9808.ReCalculate()
    o9851.ReCalculate()
    o9894.ReCalculate()
    o9937.ReCalculate()
    o9980.ReCalculate()
    o10023.ReCalculate()
    o10066.ReCalculate()
    o10109.ReCalculate()
    o10232.ReCalculate()
  end
end }
o10167 = { [nil] = {}, GetCalculated = function()
  if not (o10168.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10167.SetStateValue(o10167.GetCalculated())
end, StartCalculate = function()
  o10167["Value"] = o10167.GetCalculated()
  o2594.StartCalculate()
  o2640.StartCalculate()
  o2686.StartCalculate()
  o2732.StartCalculate()
end, SetStateValue = function(L0)
  if not (o10167.Value == L0) then
    o10167["Value"] = L0
    o2594.ReCalculate()
    o2640.ReCalculate()
    o2686.ReCalculate()
    o2732.ReCalculate()
  end
end }
o10168 = { [nil] = {}, Start = function()
  o10168["Value"] = False
  o10167.StartCalculate()
end, SetStateValue = function(L0)
  if not (o10168.Value == L0) then
    o10168["Value"] = L0
    o10167.ReCalculate()
  end
end }
o10169 = { [nil] = {}, GetCalculated = function()
  if not (o2601.Value ~= True) then
    if not (o2647.Value ~= True) then
      if not (o2693.Value ~= True) then
        if not (o2739.Value ~= True) then
          return 1
        else
          return 0
        end
      end
    end
  end
end, ReCalculate = function()
  o10169.SetStateValue(o10169.GetCalculated())
end, StartCalculate = function()
  o10169["Value"] = o10169.GetCalculated()
  o10230.StartCalculate()
end, SetStateValue = function(L0)
  if not (o10169.Value == L0) then
    DelayedFunction(3, o10169, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10169.Value == L0) then
    o10169["Value"] = L0
    o10230.ReCalculate()
  end
end }
o10170 = { [nil] = {}, GetCalculated = function()
  if not (o5482.Value == True) then
    if not (o1390.Value == True) then
      if not (o1437.Value == True) then
        if not (o1484.Value ~= True) then
          return 1
        else
          return 0
        end
      end
    end
  end
end, ReCalculate = function()
  o10170.SetStateValue(o10170.GetCalculated())
end, StartCalculate = function()
  o10170["Value"] = o10170.GetCalculated()
  o2824.StartCalculate()
  o2870.StartCalculate()
end, SetStateValue = function(L0)
  if not (o10170.Value == L0) then
    o10170["Value"] = L0
    o2824.ReCalculate()
    o2870.ReCalculate()
  end
end }
o10171 = { [nil] = {}, GetCalculated = function()
  if not (o5488.Value == True) then
    if not (o1296.Value == True) then
      if not (o1343.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o10171.SetStateValue(o10171.GetCalculated())
end, StartCalculate = function()
  o10171["Value"] = o10171.GetCalculated()
  o2916.StartCalculate()
  o2962.StartCalculate()
end, SetStateValue = function(L0)
  if not (o10171.Value == L0) then
    o10171["Value"] = L0
    o2916.ReCalculate()
    o2962.ReCalculate()
  end
end }
o10173 = { [nil] = {}, GetCalculated = function()
  if not (o1391.Value ~= True) then
    if not (o1438.Value ~= True) then
      if not (o1485.Value ~= True) then
        if not (o1297.Value ~= True) then
          if not (o1344.Value ~= True) then
            return 1
          else
            return 0
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o10173.SetStateValue(o10173.GetCalculated())
end, StartCalculate = function()
  o10173["Value"] = o10173.GetCalculated()
  o2777.StartCalculate()
  o10297.StartCalculate()
end, SetStateValue = function(L0)
  if not (o10173.Value == L0) then
    DelayedFunction(1, o10173, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10173.Value == L0) then
    o10173["Value"] = L0
    o2777.ReCalculate()
    o10297.ReCalculate()
  end
end }
o10174 = { [nil] = {}, GetCalculated = function()
  if not (o10289.Value ~= True) then
    if not (o10189.Value ~= False) then
      if not (False ~= False) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o10174.SetStateValue(o10174.GetCalculated())
end, StartCalculate = function()
  o10174["Value"] = o10174.GetCalculated()
  o5490.StartCalculate()
  o5496.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o10220.Node, o10151.Node, 374)
  SED_SetTaskTextKey(2102, -1, -1)
end, SetStateValue = function(L0)
  if not (o10174.Value == L0) then
    DelayedFunction(5, o10174, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10174.Value == L0) then
    o10174["Value"] = L0
    o5490.ReCalculate()
    o5496.ReCalculate()
    if not (L0 ~= 1) then
      o10174.ChangeTo1()
    end
  end
end }
o10175 = { [nil] = {}, GetCalculated = function()
  if not (o5494.Value == True) then
    if not (o5500.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o10175.SetStateValue(o10175.GetCalculated())
end, StartCalculate = function()
  o10175["Value"] = o10175.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o10220.Node, o10151.Node, 375)
end, SetStateValue = function(L0)
  if not (o10175.Value == L0) then
    o10175["Value"] = L0
    if not (L0 ~= 1) then
      o10175.ChangeTo1()
    end
  end
end }
o10176 = { [nil] = {}, GetCalculated = function()
  if not (o1297.Value == True) then
    if not (o1391.Value == True) then
      if not (o1438.Value == True) then
        if not (o1485.Value == True) then
          if not (o1344.Value ~= True) then
            return 1
          else
            return 0
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o10176.SetStateValue(o10176.GetCalculated())
end, StartCalculate = function()
  o10176["Value"] = o10176.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o10220.Node, o10151.Node, 376)
end, SetStateValue = function(L0)
  if not (o10176.Value == L0) then
    o10176["Value"] = L0
    if not (L0 ~= 1) then
      o10176.ChangeTo1()
    end
  end
end }
o10177 = { [nil] = {}, GetCalculated = function()
  if not (o2784.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10177.SetStateValue(o10177.GetCalculated())
end, StartCalculate = function()
  o10177["Value"] = o10177.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o10220.Node, o10151.Node, 386)
end, SetStateValue = function(L0)
  if not (o10177.Value == L0) then
    DelayedFunction(2, o10177, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10177.Value == L0) then
    o10177["Value"] = L0
    if not (L0 ~= 1) then
      o10177.ChangeTo1()
    end
  end
end }
o10178 = { [nil] = {}, GetCalculated = function()
  if not (o10294.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10178.SetStateValue(o10178.GetCalculated())
end, StartCalculate = function()
  o10178["Value"] = o10178.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o10220.Node, o10151.Node, 379)
end, SetStateValue = function(L0)
  if not (o10178.Value == L0) then
    o10178["Value"] = L0
    if not (L0 ~= 1) then
      o10178.ChangeTo1()
    end
  end
end }
o10179 = { [nil] = {}, GetCalculated = function()
  if not (o10257.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10179.SetStateValue(o10179.GetCalculated())
end, StartCalculate = function()
  o10179["Value"] = o10179.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o10220.Node, o10151.Node, 381)
end, SetStateValue = function(L0)
  if not (o10179.Value == L0) then
    DelayedFunction(2, o10179, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10179.Value == L0) then
    o10179["Value"] = L0
    if not (L0 ~= 1) then
      o10179.ChangeTo1()
    end
  end
end }
o10180 = { [nil] = {}, GetCalculated = function()
  if not (o10257.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10180.SetStateValue(o10180.GetCalculated())
end, StartCalculate = function()
  o10180["Value"] = o10180.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o10151.Node, o10151.Node, 382)
end, SetStateValue = function(L0)
  if not (o10180.Value == L0) then
    DelayedFunction(30, o10180, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10180.Value == L0) then
    o10180["Value"] = L0
    if not (L0 ~= 1) then
      o10180.ChangeTo1()
    end
  end
end }
o10181 = { [nil] = {}, GetCalculated = function()
  if not (o10306.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10181.SetStateValue(o10181.GetCalculated())
end, StartCalculate = function()
  o10181["Value"] = o10181.GetCalculated()
  o11062.StartCalculate()
  o11070.StartCalculate()
end, SetStateValue = function(L0)
  if not (o10181.Value == L0) then
    o10181["Value"] = L0
    o11062.ReCalculate()
    o11070.ReCalculate()
  end
end }
o10182 = { [nil] = {}, GetCalculated = function()
  if not (o10183.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10182.SetStateValue(o10182.GetCalculated())
end, StartCalculate = function()
  o10182["Value"] = o10182.GetCalculated()
  o10192.StartCalculate()
end, SetStateValue = function(L0)
  if not (o10182.Value == L0) then
    o10182["Value"] = L0
    o10192.ReCalculate()
  end
end }
o10183 = { [nil] = {}, Start = function()
  o10183["Value"] = False
  o10182.StartCalculate()
  o10359.StartCalculate()
end, SetStateValue = function(L0)
  if not (o10183.Value == L0) then
    o10183["Value"] = L0
    o10182.ReCalculate()
    o10359.ReCalculate()
  end
end }
o10184 = { [nil] = {}, GetCalculated = function()
  if not (o10235.Value == True) then
    if not (o10307.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o10184.SetStateValue(o10184.GetCalculated())
end, StartCalculate = function()
  o10184["Value"] = o10184.GetCalculated()
  o10216.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o10151.Node, o10151.Node, 385)
end, SetStateValue = function(L0)
  if not (o10184.Value == L0) then
    o10184["Value"] = L0
    o10216.ReCalculate()
    if not (L0 ~= 1) then
      o10184.ChangeTo1()
    end
  end
end }
o10185 = { [nil] = {}, GetCalculated = function()
  if not (o10186.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10185.SetStateValue(o10185.GetCalculated())
end, StartCalculate = function()
  o10185["Value"] = o10185.GetCalculated()
  o10362.StartCalculate()
  o10418.StartCalculate()
  o10474.StartCalculate()
  o10530.StartCalculate()
  o10586.StartCalculate()
  o10642.StartCalculate()
  o10698.StartCalculate()
  o10754.StartCalculate()
end, SetStateValue = function(L0)
  if not (o10185.Value == L0) then
    DelayedFunction(1, o10185, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10185.Value == L0) then
    o10185["Value"] = L0
    o10362.ReCalculate()
    o10418.ReCalculate()
    o10474.ReCalculate()
    o10530.ReCalculate()
    o10586.ReCalculate()
    o10642.ReCalculate()
    o10698.ReCalculate()
    o10754.ReCalculate()
  end
end }
o10186 = { [nil] = {}, Start = function()
  o10186["Value"] = False
  o5502.StartCalculate()
  o10185.StartCalculate()
  o10810.StartCalculate()
  o10866.StartCalculate()
  o10922.StartCalculate()
  o10978.StartCalculate()
end, SetStateValue = function(L0)
  if not (o10186.Value == L0) then
    o10186["Value"] = L0
    o5502.ReCalculate()
    o10185.ReCalculate()
    o10810.ReCalculate()
    o10866.ReCalculate()
    o10922.ReCalculate()
    o10978.ReCalculate()
  end
end }
o10188 = { [nil] = {}, GetCalculated = function()
  if not (o1390.Value == True) then
    if not (o1437.Value == True) then
      if not (o1484.Value == True) then
        if not (o1296.Value == True) then
          if not (o1343.Value ~= True) then
            return 1
          else
            return 0
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o10188.SetStateValue(o10188.GetCalculated())
end, StartCalculate = function()
  o10188["Value"] = o10188.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  SED_SetTaskTextKey(2102, -1, -1)
end, SetStateValue = function(L0)
  if not (o10188.Value == L0) then
    DelayedFunction(2, o10188, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10188.Value == L0) then
    o10188["Value"] = L0
    if not (L0 ~= 1) then
      o10188.ChangeTo1()
    end
  end
end }
o10189 = { [nil] = {}, GetCalculated = function()
  if not (o1297.Value ~= True) then
    if not (o1344.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o10189.SetStateValue(o10189.GetCalculated())
end, StartCalculate = function()
  o10189["Value"] = o10189.GetCalculated()
  o10174.StartCalculate()
end, SetStateValue = function(L0)
  if not (o10189.Value == L0) then
    DelayedFunction(2, o10189, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10189.Value == L0) then
    o10189["Value"] = L0
    o10174.ReCalculate()
  end
end }
o10191 = { [nil] = {}, GetCalculated = function()
  if not (o2548.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10191.SetStateValue(o10191.GetCalculated())
end, StartCalculate = function()
  o10191["Value"] = o10191.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
end, SetStateValue = function(L0)
  if not (o10191.Value == L0) then
    DelayedFunction(1, o10191, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10191.Value == L0) then
    o10191["Value"] = L0
    if not (L0 ~= 1) then
      o10191.ChangeTo1()
    end
  end
end }
o10192 = { [nil] = {}, GetCalculated = function()
  if not (o10182.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10192.SetStateValue(o10192.GetCalculated())
end, StartCalculate = function()
  o10192["Value"] = o10192.GetCalculated()
  o2.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2105)
end, SetStateValue = function(L0)
  if not (o10192.Value == L0) then
    o10192["Value"] = L0
    o2.ReCalculate()
    if not (L0 ~= 1) then
      o10192.ChangeTo1()
    end
  end
end }
o10216 = { [nil] = {}, GetCalculated = function()
  if not (o10184.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10216.SetStateValue(o10216.GetCalculated())
end, StartCalculate = function()
  o10216["Value"] = o10216.GetCalculated()
  o26.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 1, 2001, 2105)
end, SetStateValue = function(L0)
  if not (o10216.Value == L0) then
    o10216["Value"] = L0
    o26.ReCalculate()
    if not (L0 ~= 1) then
      o10216.ChangeTo1()
    end
  end
end }
o10217 = { [nil] = {}, GetCalculated = function()
  if not (o46.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10217.SetStateValue(o10217.GetCalculated())
end, StartCalculate = function()
  o10217["Value"] = o10217.GetCalculated()
  o27.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 2, 2001, 2106)
end, SetStateValue = function(L0)
  if not (o10217.Value == L0) then
    o10217["Value"] = L0
    o27.ReCalculate()
    if not (L0 ~= 1) then
      o10217.ChangeTo1()
    end
  end
end }
S_o10220 = { [nil] = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10220, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10220, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10220, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o10220, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o10220, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o10220, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o10220, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10220, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  Vessel_CollisionObjects(L0.Node, 1)
  CallFunction(o10220, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AmitabPath_1", 1, 1 } }("Code10")
  else
    CallFunction(o10220, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  SendRadioMessageTake(o10220.Node, o10151.Node, 370)
  SED_SetTaskTextKey(2100, -1, -1)
  CallFunction(o10220, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code13")
  else
    CallFunction(o10220, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10220, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Body_SetKineticShield(L0.Node, 0, 80)
  SendRadioMessageTake(o10220.Node, o10151.Node, 371)
  CallFunction(o10220, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AmitabPath_2", 0.6, 1 } }("Code17")
  else
    CallFunction(o10220, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  o10168.SetStateValue(True)
  CallFunction(o10220, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 4 } }("Code19")
  else
    CallFunction(o10220, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  SendRadioMessageTake(o10220.Node, o10151.Node, 372)
  CallFunction(o10220, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code21")
  else
    CallFunction(o10220, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10220, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  SED_SetTaskTextKey(2101, -1, -1)
  Body_SetKineticShield(L0.Node, 0, 40)
  Game_SetWayPoint(GetGameNode(), o10286.Node)
  CallFunction(o10220, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code26")
  else
    CallFunction(o10220, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10220, "Code27")
  end
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AmitabPath_3", 1, 1 } }("Code28")
  else
    CallFunction(o10220, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  SED_SetTaskTextKey(2103, -1, -1)
  SendRadioMessageTake(o10220.Node, o10151.Node, 378)
  Game_SetWayPoint(GetGameNode(), o10291.Node)
  CallFunction(o10220, "Code31")
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code32")
  else
    CallFunction(o10220, "Code32")
  end
end, Code32 = function(L0)
  L0["CodeIndex"] = 32
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10220, "Code33")
  end
end, Code33 = function(L0)
  L0["CodeIndex"] = 33
  SendRadioMessageTake(o10220.Node, o10151.Node, 377)
  CallFunction(o10220, "Code34")
end, Code34 = function(L0)
  L0["CodeIndex"] = 34
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AmitabPath_4", 1, 1 } }("Code35")
  else
    CallFunction(o10220, "Code35")
  end
end, Code35 = function(L0)
  L0["CodeIndex"] = 35
  SendRadioMessageTake(o10220.Node, o10151.Node, 380)
  SED_SetTaskTextKey(2104, -1, -1)
  CallFunction(o10220, "Code37")
end }, Code37 = function(L0)
  L0["CodeIndex"] = 37
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o5445, nil, 0, "Code38")
  else
    CallFunction(o10220, "Code38")
  end
end, Code38 = function(L0)
  L0["CodeIndex"] = 38
end, SetStateValue_Destroyed = function(L0, L1)
  o10235.SetStateValue(L1)
end, SetStateValue_DockedOn = function(L0, L1)
  o10257.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 13) then
    if not (L0.CodeIndex >= 14) then
      if not (o10229.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 21) then
    if not (L0.CodeIndex >= 22) then
      if not (o10230.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 26) then
    if not (L0.CodeIndex >= 27) then
      if not (o10231.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 32) then
    if not (L0.CodeIndex >= 33) then
      if not (o10232.Value ~= True) then
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
o10229 = { [nil] = {}, GetCalculated = function()
  if not (o2091.Value ~= True) then
    if not (o2138.Value ~= True) then
      if not (o2185.Value ~= True) then
        if not (o2232.Value ~= True) then
          return 1
        else
          return 0
        end
      end
    end
  end
end, ReCalculate = function()
  o10229.SetStateValue(o10229.GetCalculated())
end, StartCalculate = function()
  o10229["Value"] = o10229.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10229.Value == L0) then
    DelayedFunction(4, o10229, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10229.Value == L0) then
    o10229["Value"] = L0
    CallFunction(o10220, "ProcesseStateChange")
  end
end }
o10230 = { [nil] = {}, GetCalculated = function()
  if not (o10169.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10230.SetStateValue(o10230.GetCalculated())
end, StartCalculate = function()
  o10230["Value"] = o10230.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10230.Value == L0) then
    o10230["Value"] = L0
    CallFunction(o10220, "ProcesseStateChange")
  end
end }
o10231 = { [nil] = {}, GetCalculated = function()
  if not (o2784.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10231.SetStateValue(o10231.GetCalculated())
end, StartCalculate = function()
  o10231["Value"] = o10231.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10231.Value == L0) then
    o10231["Value"] = L0
    CallFunction(o10220, "ProcesseStateChange")
  end
end }
o10232 = { [nil] = {}, GetCalculated = function()
  if not (o10166.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10232.SetStateValue(o10232.GetCalculated())
end, StartCalculate = function()
  o10232["Value"] = o10232.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10232.Value == L0) then
    DelayedFunction(2, o10232, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10232.Value == L0) then
    o10232["Value"] = L0
    CallFunction(o10220, "ProcesseStateChange")
  end
end }
o10235 = { [nil] = {}, Start = function()
  o10235["Value"] = False
  o10184.StartCalculate()
end, SetStateValue = function(L0)
  if not (o10235.Value == L0) then
    o10235["Value"] = L0
    o10184.ReCalculate()
  end
end }
o10257 = { [nil] = {}, Start = function()
  o10257["Value"] = False
  o10179.StartCalculate()
  o10180.StartCalculate()
  o10301.StartCalculate()
end, SetStateValue = function(L0)
  if not (o10257.Value == L0) then
    o10257["Value"] = L0
    o10179.ReCalculate()
    o10180.ReCalculate()
    o10301.ReCalculate()
  end
end }
S_o10286 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, o10220.Node, 373)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o2776.Node)
  CallFunction(o10286, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o10289.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o10289 = { [nil] = {}, Start = function()
  o10289["Value"] = False
  o10174.StartCalculate()
end, SetStateValue = function(L0)
  if not (o10289.Value == L0) then
    o10289["Value"] = L0
    o10174.ReCalculate()
  end
end }
S_o10291 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o10291, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o10294.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o10294 = { [nil] = {}, Start = function()
  o10294["Value"] = False
  o10178.StartCalculate()
end, SetStateValue = function(L0)
  if not (o10294.Value == L0) then
    o10294["Value"] = L0
    o10178.ReCalculate()
  end
end }
S_o10296 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  CallFunction(o10296, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10296, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10296, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o10297.Value ~= True) then
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
o10297 = { [nil] = {}, GetCalculated = function()
  if not (o10173.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10297.SetStateValue(o10297.GetCalculated())
end, StartCalculate = function()
  o10297["Value"] = o10297.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10297.Value == L0) then
    o10297["Value"] = L0
    CallFunction(o10296, "ProcesseStateChange")
  end
end }
S_o10298 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5445)
  CallFunction(o10298, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10298, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5445, "Code3")
  else
    CallFunction(o10298, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o10298, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o10298, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  SendRadioMessageTake(o10220.Node, o10151.Node, 383)
  CallFunction(o10298, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/AmitabPath_5", "pos_1", "pos_2", 1, 1 } }("Code7")
  else
    CallFunction(o10298, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o10298, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/AmitabPath_6", "pos_2", "pos_1", 0.6, 1 } }("Code9")
  else
    CallFunction(o10298, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code10")
  else
    CallFunction(o10298, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10298, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  StopAllActiveBehaviours(L0)
  Vessel_CollisionTerrain(L0.Node, 1)
  Vessel_CollisionObjects(L0.Node, 1)
  CallFunction(o10298, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Amitab2HarvesterPath_1", 1, 1 } }("Code15")
  else
    CallFunction(o10298, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o5470, nil, 0, "Code16")
  else
    CallFunction(o10298, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
end, SetStateValue_Born = function(L0, L1)
  o10306.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o10307.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o10301.Value ~= True) then
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
o10301 = { [nil] = {}, GetCalculated = function()
  if not (o10257.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10301.SetStateValue(o10301.GetCalculated())
end, StartCalculate = function()
  o10301["Value"] = o10301.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10301.Value == L0) then
    DelayedFunction(60, o10301, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10301.Value == L0) then
    o10301["Value"] = L0
    CallFunction(o10298, "ProcesseStateChange")
  end
end }
o10306 = { [nil] = {}, Start = function()
  o10306["Value"] = False
  o10181.StartCalculate()
end, SetStateValue = function(L0)
  if not (o10306.Value == L0) then
    o10306["Value"] = L0
    o10181.ReCalculate()
  end
end }
o10307 = { [nil] = {}, Start = function()
  o10307["Value"] = False
  o10184.StartCalculate()
end, SetStateValue = function(L0)
  if not (o10307.Value == L0) then
    o10307["Value"] = L0
    o10184.ReCalculate()
  end
end }
S_o10358 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10358, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10358, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10358, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o10359.Value ~= True) then
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
o10359 = { [nil] = {}, GetCalculated = function()
  if not (o10183.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10359.SetStateValue(o10359.GetCalculated())
end, StartCalculate = function()
  o10359["Value"] = o10359.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10359.Value == L0) then
    o10359["Value"] = L0
    CallFunction(o10358, "ProcesseStateChange")
  end
end }
S_o10360 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10360, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10360, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o10360, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o10360, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o10360, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_AttackTurrets(L0.Node, "", "wng_", "", "", "")
  CallFunction(o10360, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MinePath_2", 1, 1 } }("Code7")
  else
    CallFunction(o10360, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o10360, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o10362.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o10361.Value ~= True) then
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
o10361 = { [nil] = {}, GetCalculated = function()
  if not (o5506.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10361.SetStateValue(o10361.GetCalculated())
end, StartCalculate = function()
  o10361["Value"] = o10361.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10361.Value == L0) then
    o10361["Value"] = L0
    CallFunction(o10360, "ProcesseStateChange")
  end
end }
o10362 = { [nil] = {}, GetCalculated = function()
  if not (o10185.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10362.SetStateValue(o10362.GetCalculated())
end, StartCalculate = function()
  o10362["Value"] = o10362.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10362.Value == L0) then
    o10362["Value"] = L0
    CallFunction(o10360, "ProcesseStateChange")
  end
end }
S_o10416 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10416, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10416, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o10416, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o10416, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o10416, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_AttackTurrets(L0.Node, "", "wng_", "", "", "")
  CallFunction(o10416, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MinePath_2", 1, 1 } }("Code7")
  else
    CallFunction(o10416, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o10416, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o10418.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o10417.Value ~= True) then
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
o10417 = { [nil] = {}, GetCalculated = function()
  if not (o5506.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10417.SetStateValue(o10417.GetCalculated())
end, StartCalculate = function()
  o10417["Value"] = o10417.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10417.Value == L0) then
    DelayedFunction(0.3, o10417, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10417.Value == L0) then
    o10417["Value"] = L0
    CallFunction(o10416, "ProcesseStateChange")
  end
end }
o10418 = { [nil] = {}, GetCalculated = function()
  if not (o10185.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10418.SetStateValue(o10418.GetCalculated())
end, StartCalculate = function()
  o10418["Value"] = o10418.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10418.Value == L0) then
    DelayedFunction(4, o10418, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10418.Value == L0) then
    o10418["Value"] = L0
    CallFunction(o10416, "ProcesseStateChange")
  end
end }
S_o10472 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10472, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10472, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o10472, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o10472, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o10472, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_AttackTurrets(L0.Node, "", "wng_", "", "", "")
  CallFunction(o10472, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MinePath_2", 1, 1 } }("Code7")
  else
    CallFunction(o10472, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o10472, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o10474.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o10473.Value ~= True) then
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
o10473 = { [nil] = {}, GetCalculated = function()
  if not (o5506.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10473.SetStateValue(o10473.GetCalculated())
end, StartCalculate = function()
  o10473["Value"] = o10473.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10473.Value == L0) then
    DelayedFunction(0.4, o10473, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10473.Value == L0) then
    o10473["Value"] = L0
    CallFunction(o10472, "ProcesseStateChange")
  end
end }
o10474 = { [nil] = {}, GetCalculated = function()
  if not (o10185.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10474.SetStateValue(o10474.GetCalculated())
end, StartCalculate = function()
  o10474["Value"] = o10474.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10474.Value == L0) then
    DelayedFunction(6, o10474, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10474.Value == L0) then
    o10474["Value"] = L0
    CallFunction(o10472, "ProcesseStateChange")
  end
end }
S_o10528 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10528, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10528, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o10528, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o10528, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o10528, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_AttackTurrets(L0.Node, "", "wng_", "", "", "")
  CallFunction(o10528, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MinePath_2", 1, 1 } }("Code7")
  else
    CallFunction(o10528, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o10528, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o10530.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o10529.Value ~= True) then
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
o10529 = { [nil] = {}, GetCalculated = function()
  if not (o5506.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10529.SetStateValue(o10529.GetCalculated())
end, StartCalculate = function()
  o10529["Value"] = o10529.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10529.Value == L0) then
    DelayedFunction(0.1, o10529, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10529.Value == L0) then
    o10529["Value"] = L0
    CallFunction(o10528, "ProcesseStateChange")
  end
end }
o10530 = { [nil] = {}, GetCalculated = function()
  if not (o10185.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10530.SetStateValue(o10530.GetCalculated())
end, StartCalculate = function()
  o10530["Value"] = o10530.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10530.Value == L0) then
    DelayedFunction(9, o10530, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10530.Value == L0) then
    o10530["Value"] = L0
    CallFunction(o10528, "ProcesseStateChange")
  end
end }
S_o10584 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10584, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10584, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o10584, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o10584, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o10584, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_AttackTurrets(L0.Node, "", "wng_", "", "", "")
  CallFunction(o10584, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MinePath_3", 1, 1 } }("Code7")
  else
    CallFunction(o10584, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o10584, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o10586.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o10585.Value ~= True) then
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
o10585 = { [nil] = {}, GetCalculated = function()
  if not (o5506.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10585.SetStateValue(o10585.GetCalculated())
end, StartCalculate = function()
  o10585["Value"] = o10585.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10585.Value == L0) then
    DelayedFunction(0.4, o10585, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10585.Value == L0) then
    o10585["Value"] = L0
    CallFunction(o10584, "ProcesseStateChange")
  end
end }
o10586 = { [nil] = {}, GetCalculated = function()
  if not (o10185.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10586.SetStateValue(o10586.GetCalculated())
end, StartCalculate = function()
  o10586["Value"] = o10586.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10586.Value == L0) then
    o10586["Value"] = L0
    CallFunction(o10584, "ProcesseStateChange")
  end
end }
S_o10640 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10640, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10640, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o10640, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o10640, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o10640, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_AttackTurrets(L0.Node, "", "wng_", "", "", "")
  CallFunction(o10640, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MinePath_3", 1, 1 } }("Code7")
  else
    CallFunction(o10640, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o10640, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o10642.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o10641.Value ~= True) then
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
o10641 = { [nil] = {}, GetCalculated = function()
  if not (o5506.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10641.SetStateValue(o10641.GetCalculated())
end, StartCalculate = function()
  o10641["Value"] = o10641.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10641.Value == L0) then
    DelayedFunction(0.08, o10641, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10641.Value == L0) then
    o10641["Value"] = L0
    CallFunction(o10640, "ProcesseStateChange")
  end
end }
o10642 = { [nil] = {}, GetCalculated = function()
  if not (o10185.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10642.SetStateValue(o10642.GetCalculated())
end, StartCalculate = function()
  o10642["Value"] = o10642.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10642.Value == L0) then
    DelayedFunction(2, o10642, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10642.Value == L0) then
    o10642["Value"] = L0
    CallFunction(o10640, "ProcesseStateChange")
  end
end }
S_o10696 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10696, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10696, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o10696, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o10696, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o10696, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_AttackTurrets(L0.Node, "", "wng_", "", "", "")
  CallFunction(o10696, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MinePath_3", 1, 1 } }("Code7")
  else
    CallFunction(o10696, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o10696, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o10698.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o10697.Value ~= True) then
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
o10697 = { [nil] = {}, GetCalculated = function()
  if not (o5506.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10697.SetStateValue(o10697.GetCalculated())
end, StartCalculate = function()
  o10697["Value"] = o10697.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10697.Value == L0) then
    DelayedFunction(0.05, o10697, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10697.Value == L0) then
    o10697["Value"] = L0
    CallFunction(o10696, "ProcesseStateChange")
  end
end }
o10698 = { [nil] = {}, GetCalculated = function()
  if not (o10185.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10698.SetStateValue(o10698.GetCalculated())
end, StartCalculate = function()
  o10698["Value"] = o10698.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10698.Value == L0) then
    DelayedFunction(4, o10698, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10698.Value == L0) then
    o10698["Value"] = L0
    CallFunction(o10696, "ProcesseStateChange")
  end
end }
S_o10752 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10752, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10752, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o10752, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o10752, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o10752, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_AttackTurrets(L0.Node, "", "wng_", "", "", "")
  CallFunction(o10752, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MinePath_3", 1, 1 } }("Code7")
  else
    CallFunction(o10752, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o10752, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o10754.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o10753.Value ~= True) then
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
o10753 = { [nil] = {}, GetCalculated = function()
  if not (o5506.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10753.SetStateValue(o10753.GetCalculated())
end, StartCalculate = function()
  o10753["Value"] = o10753.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10753.Value == L0) then
    DelayedFunction(0.6, o10753, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10753.Value == L0) then
    o10753["Value"] = L0
    CallFunction(o10752, "ProcesseStateChange")
  end
end }
o10754 = { [nil] = {}, GetCalculated = function()
  if not (o10185.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10754.SetStateValue(o10754.GetCalculated())
end, StartCalculate = function()
  o10754["Value"] = o10754.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10754.Value == L0) then
    DelayedFunction(9, o10754, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10754.Value == L0) then
    o10754["Value"] = L0
    CallFunction(o10752, "ProcesseStateChange")
  end
end }
S_o10808 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5445)
  CallFunction(o10808, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10808, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5445, "Code3")
  else
    CallFunction(o10808, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o10808, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o10808, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_AttackTurrets(L0.Node, "", "wng_", "", "", "")
  CallFunction(o10808, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MinePath_1", 1, 1 } }("Code7")
  else
    CallFunction(o10808, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o10808, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o10810.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o10809.Value ~= True) then
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
o10809 = { [nil] = {}, GetCalculated = function()
  if not (o5506.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10809.SetStateValue(o10809.GetCalculated())
end, StartCalculate = function()
  o10809["Value"] = o10809.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10809.Value == L0) then
    DelayedFunction(0.2, o10809, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10809.Value == L0) then
    o10809["Value"] = L0
    CallFunction(o10808, "ProcesseStateChange")
  end
end }
o10810 = { [nil] = {}, GetCalculated = function()
  if not (o10186.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10810.SetStateValue(o10810.GetCalculated())
end, StartCalculate = function()
  o10810["Value"] = o10810.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10810.Value == L0) then
    o10810["Value"] = L0
    CallFunction(o10808, "ProcesseStateChange")
  end
end }
S_o10864 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5445)
  CallFunction(o10864, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10864, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5445, "Code3")
  else
    CallFunction(o10864, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o10864, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o10864, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_AttackTurrets(L0.Node, "", "wng_", "", "", "")
  CallFunction(o10864, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MinePath_1", 1, 1 } }("Code7")
  else
    CallFunction(o10864, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o10864, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o10866.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o10865.Value ~= True) then
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
o10865 = { [nil] = {}, GetCalculated = function()
  if not (o5506.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10865.SetStateValue(o10865.GetCalculated())
end, StartCalculate = function()
  o10865["Value"] = o10865.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10865.Value == L0) then
    DelayedFunction(2, o10865, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10865.Value == L0) then
    o10865["Value"] = L0
    CallFunction(o10864, "ProcesseStateChange")
  end
end }
o10866 = { [nil] = {}, GetCalculated = function()
  if not (o10186.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10866.SetStateValue(o10866.GetCalculated())
end, StartCalculate = function()
  o10866["Value"] = o10866.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10866.Value == L0) then
    DelayedFunction(3, o10866, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10866.Value == L0) then
    o10866["Value"] = L0
    CallFunction(o10864, "ProcesseStateChange")
  end
end }
S_o10920 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5445)
  CallFunction(o10920, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10920, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5445, "Code3")
  else
    CallFunction(o10920, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o10920, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o10920, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_AttackTurrets(L0.Node, "", "wng_", "", "", "")
  CallFunction(o10920, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MinePath_1", 1, 1 } }("Code7")
  else
    CallFunction(o10920, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o10920, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o10922.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o10921.Value ~= True) then
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
o10921 = { [nil] = {}, GetCalculated = function()
  if not (o5506.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10921.SetStateValue(o10921.GetCalculated())
end, StartCalculate = function()
  o10921["Value"] = o10921.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10921.Value == L0) then
    DelayedFunction(0.06, o10921, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10921.Value == L0) then
    o10921["Value"] = L0
    CallFunction(o10920, "ProcesseStateChange")
  end
end }
o10922 = { [nil] = {}, GetCalculated = function()
  if not (o10186.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10922.SetStateValue(o10922.GetCalculated())
end, StartCalculate = function()
  o10922["Value"] = o10922.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10922.Value == L0) then
    DelayedFunction(4, o10922, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10922.Value == L0) then
    o10922["Value"] = L0
    CallFunction(o10920, "ProcesseStateChange")
  end
end }
S_o10976 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5445)
  CallFunction(o10976, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10976, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5445, "Code3")
  else
    CallFunction(o10976, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o10976, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o10976, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_AttackTurrets(L0.Node, "", "wng_", "", "", "")
  CallFunction(o10976, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MinePath_1", 1, 1 } }("Code7")
  else
    CallFunction(o10976, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o10976, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o10978.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o10977.Value ~= True) then
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
o10977 = { [nil] = {}, GetCalculated = function()
  if not (o5506.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10977.SetStateValue(o10977.GetCalculated())
end, StartCalculate = function()
  o10977["Value"] = o10977.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10977.Value == L0) then
    o10977["Value"] = L0
    CallFunction(o10976, "ProcesseStateChange")
  end
end }
o10978 = { [nil] = {}, GetCalculated = function()
  if not (o10186.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o10978.SetStateValue(o10978.GetCalculated())
end, StartCalculate = function()
  o10978["Value"] = o10978.GetCalculated()
end, SetStateValue = function(L0)
  if not (o10978.Value == L0) then
    DelayedFunction(9, o10978, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o10978.Value == L0) then
    o10978["Value"] = L0
    CallFunction(o10976, "ProcesseStateChange")
  end
end }
S_o11032 = { [nil] = {}, Start = function(L0)

end }
S_o11033 = { [nil] = {}, Start = function(L0)

end }
S_o11034 = { [nil] = {}, Start = function(L0)

end }
o11036 = FormationLib.CreateFormation("Line", "", "", "", 30, 20)
S_o11037 = { [nil] = {}, Start = function(L0)

end }
S_o11038 = { [nil] = {}, Start = function(L0)

end }
S_o11039 = { [nil] = {}, Start = function(L0)

end }
S_o11042 = { [nil] = {}, Start = function(L0)

end }
S_o11043 = { [nil] = {}, Start = function(L0)

end }
S_o11044 = { [nil] = {}, Start = function(L0)

end }
S_o11045 = { [nil] = {}, Start = function(L0)

end }
S_o11046 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Atmo")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o11046, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o11046, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/Position_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/Position_11", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o11046, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4.8, "Code9")
  else
    CallFunction(o11046, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 2, "MMMN", 0)
  SendRadioMessageTake(o10220.Node, o10151.Node, 367)
  CallFunction(o11046, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11046, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_Cut(L0.Node, 2)
  CallFunction(o11046, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code14")
  else
    CallFunction(o11046, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/Position_2", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  CallFunction(o11046, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3.8, "Code17")
  else
    CallFunction(o11046, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  SendRadioMessageTake(o10220.Node, o10151.Node, 368)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/Position_3", 3, "MMMN", 0)
  CallFunction(o11046, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6, "Code20")
  else
    CallFunction(o11046, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/Position_4", 2, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/Position_3", 2.5, "MMMN", 0)
  CallFunction(o11046, "Code22")
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11046, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/wng_techbomber_1", 1, "MMMN", 0)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/Position_3", 2, "MMMN", 0)
  SendRadioMessageTake(o10220.Node, o10151.Node, 369)
  CallFunction(o11046, "Code26")
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code27")
  else
    CallFunction(o11046, "Code27")
  end
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  Camera_Cut(L0.Node, 1)
  CallFunction(o11046, "Code28")
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code29")
  else
    CallFunction(o11046, "Code29")
  end
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  CallFunction(o10220, "Code8")
  FormationLib.PlaceFormationPath(o11040, o11036, "/IngameSequences/Navigation/Path_3")
  CallFunction(o11046, "Code31")
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.8, "Code32")
  else
    CallFunction(o11046, "Code32")
  end
end, Code32 = function(L0)
  L0["CodeIndex"] = 32
  Director_EndCutscene(L0.Node)
  CallFunction(o11046, "Code33")
end, Code33 = function(L0)
  L0["CodeIndex"] = 33
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 11) then
    if not (L0.CodeIndex >= 12) then
      if not (o11049.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 22) then
    if not (L0.CodeIndex >= 23) then
      if not (o11053.Value ~= True) then
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
o11049 = { [nil] = {}, GetCalculated = function()
  if not (o10165.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11049.SetStateValue(o11049.GetCalculated())
end, StartCalculate = function()
  o11049["Value"] = o11049.GetCalculated()
end, SetStateValue = function(L0)
  if not (o11049.Value == L0) then
    o11049["Value"] = L0
    CallFunction(o11046, "ProcesseStateChange")
  end
end }
o11053 = { [nil] = {}, GetCalculated = function()
  if not (o11089.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11053.SetStateValue(o11053.GetCalculated())
end, StartCalculate = function()
  o11053["Value"] = o11053.GetCalculated()
end, SetStateValue = function(L0)
  if not (o11053.Value == L0) then
    o11053["Value"] = L0
    CallFunction(o11046, "ProcesseStateChange")
  end
end }
S_o11058 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  FormationLib.PlaceFormationPath(o11035, o11036, "/IngameSequences/Navigation/Path_1")
  CallFunction(o11058, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o11035, o11036, "/IngameSequences/Navigation/Path_1", "pos_1", "pos_2", 0.8, 1, "Code2")
  else
    CallFunction(o11058, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  o10165.SetStateValue(True)
  CallFunction(o11058, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.1, "Code4")
  else
    CallFunction(o11058, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  FormationLib.PlaceFormationPath(o11035, o11036, "/IngameSequences/Navigation/Path_2")
  CallFunction(o11058, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o11035, o11036, "/IngameSequences/Navigation/Path_2", "pos_1", "pos_3", 0.8, 1, "Code6")
  else
    CallFunction(o11058, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o11061 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11061, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Game_PlayMusic(GetGameNode(), "Agressive")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o11061, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code5")
  else
    CallFunction(o11061, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/EndPosition_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/wng_techbomber_2", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o11061, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4.8, "Code10")
  else
    CallFunction(o11061, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  o10186.SetStateValue(True)
  CallFunction(o11061, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code12")
  else
    CallFunction(o11061, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/1gen_juan_mine_1", 2, "MMMN", 0)
  CallFunction(o11061, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 8, "Code14")
  else
    CallFunction(o11061, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Camera_Cut(L0.Node, 1)
  CallFunction(o11061, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code16")
  else
    CallFunction(o11061, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Director_EndCutscene(L0.Node)
  CallFunction(o11061, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o11062.Value ~= True) then
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
o11062 = { [nil] = {}, GetCalculated = function()
  if not (o10181.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11062.SetStateValue(o11062.GetCalculated())
end, StartCalculate = function()
  o11062["Value"] = o11062.GetCalculated()
end, SetStateValue = function(L0)
  if not (o11062.Value == L0) then
    o11062["Value"] = L0
    CallFunction(o11061, "ProcesseStateChange")
  end
end }
S_o11069 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11069, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  FormationLib.PlaceFormationPath(o11040, o11036, "/IngameSequences/Navigation/PlayerEndPath_1")
  CallFunction(o11069, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o11070.Value ~= True) then
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
o11070 = { [nil] = {}, GetCalculated = function()
  if not (o10181.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11070.SetStateValue(o11070.GetCalculated())
end, StartCalculate = function()
  o11070["Value"] = o11070.GetCalculated()
end, SetStateValue = function(L0)
  if not (o11070.Value == L0) then
    DelayedFunction(0.2, o11070, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o11070.Value == L0) then
    o11070["Value"] = L0
    CallFunction(o11069, "ProcesseStateChange")
  end
end }
S_o11072 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11072, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o11072, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o11072, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/Position_5", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/wng_techbomber_2", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o11072, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code9")
  else
    CallFunction(o11072, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 1, "MMMN", 0)
  CallFunction(o11072, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3, "Code11")
  else
    CallFunction(o11072, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Camera_Cut(L0.Node, 1)
  CallFunction(o11072, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code13")
  else
    CallFunction(o11072, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Director_EndCutscene(L0.Node)
  SendRadioMessageTake(o10151.Node, o10151.Node, 388)
  CallFunction(o10298, "Code11")
  CallFunction(o11072, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code17")
  else
    CallFunction(o11072, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  o10183.SetStateValue(True)
  Game_PlayMusic(GetGameNode(), "track3")
  CallFunction(o11072, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o11073.Value ~= True) then
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
o11073 = { [nil] = {}, GetCalculated = function()
  if not (o5506.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11073.SetStateValue(o11073.GetCalculated())
end, StartCalculate = function()
  o11073["Value"] = o11073.GetCalculated()
end, SetStateValue = function(L0)
  if not (o11073.Value == L0) then
    o11073["Value"] = L0
    CallFunction(o11072, "ProcesseStateChange")
  end
end }
S_o11080 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11080, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code2")
  else
    CallFunction(o11080, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  FormationLib.PlaceFormationPath(o11040, o11036, "/IngameSequences/Navigation/EndOfEndPath_1")
  CallFunction(o11080, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o11040, o11036, "/IngameSequences/Navigation/EndOfEndPath_1", "pos_1", "pos_2", 0.8, 1, "Code4")
  else
    CallFunction(o11080, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o11081.Value ~= True) then
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
o11081 = { [nil] = {}, GetCalculated = function()
  if not (o5506.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11081.SetStateValue(o11081.GetCalculated())
end, StartCalculate = function()
  o11081["Value"] = o11081.GetCalculated()
end, SetStateValue = function(L0)
  if not (o11081.Value == L0) then
    o11081["Value"] = L0
    CallFunction(o11080, "ProcesseStateChange")
  end
end }
S_o11084 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11084, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11084, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11084, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "wng", "", "", "", False, False, True)
  CallFunction(o11084, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11084, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11084, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o11089.SetStateValue(L1)
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
o11089 = { [nil] = {}, Start = function()
  o11089["Value"] = False
  o11053.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11089.Value == L0) then
    o11089["Value"] = L0
    o11053.ReCalculate()
  end
end }
S_o11090 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11090, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11090, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11090, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "wng", "", "", "", False, False, True)
  CallFunction(o11090, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11090, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11090, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o11095.SetStateValue(L1)
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
o11095 = { [nil] = {}, Start = function()
  o11095["Value"] = False
  o2082.StartCalculate()
  o2129.StartCalculate()
  o2176.StartCalculate()
  o2223.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11095.Value == L0) then
    o11095["Value"] = L0
    o2082.ReCalculate()
    o2129.ReCalculate()
    o2176.ReCalculate()
    o2223.ReCalculate()
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 581)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Trigger"), "TriggerPresenceBox_1", S_o30)
  o36 = BindEasy(Node_Find("/Scenario_Static/Trigger"), "TriggerPresenceBox_2", S_o36)
  o42 = BindEasy(Node_Find("/Scenario_Static/Object"), "pla_harvester_1", S_o42)
  o46.Start()
  o97 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_screw_off_1", S_o97)
  o144 = BindEasy(Node_Find("/Scenario_Static/Object"), "dir_cammesh_static_1", S_o144)
  o190 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_wallhole_1", S_o190)
  o236 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_wall_1", S_o236)
  o282 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_wall_2", S_o282)
  o328 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_wall_3", S_o328)
  o374 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_wall_4", S_o374)
  o420 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_wall_5", S_o420)
  o466 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_wall_6", S_o466)
  o512 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_1", S_o512)
  o558 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_2", S_o558)
  o604 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_3", S_o604)
  o650 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_4", S_o650)
  o696 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big01_1", S_o696)
  o742 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big01_3", S_o742)
  o788 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big01_4", S_o788)
  o834 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big01_2", S_o834)
  o880 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_1", S_o880)
  o926 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_2", S_o926)
  o972 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_2_2", S_o972)
  o1018 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_2_3", S_o1018)
  o1064 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_3", S_o1064)
  o1110 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_4", S_o1110)
  o1156 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_5", S_o1156)
  o1202 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_6", S_o1202)
  o1248 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_7", S_o1248)
  o1294 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_trafo_a_1", S_o1294)
  o1296.Start()
  o1297.Start()
  o1341 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_trafo_a_2", S_o1341)
  o1343.Start()
  o1344.Start()
  o1388 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_trafo_xl_1", S_o1388)
  o1390.Start()
  o1391.Start()
  o1435 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_trafo_xl_2", S_o1435)
  o1437.Start()
  o1438.Start()
  o1482 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_trafo_xl_3", S_o1482)
  o1484.Start()
  o1485.Start()
  o1529 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_1", S_o1529)
  o1575 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_5", S_o1575)
  o1621 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_6", S_o1621)
  o1667 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_7", S_o1667)
  o1713 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_8", S_o1713)
  o1759 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_9", S_o1759)
  o1805 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_10", S_o1805)
  o1851 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_90", S_o1851)
  o1897 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_91", S_o1897)
  o1943 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_92", S_o1943)
  o1989 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_93", S_o1989)
  o2035 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock1_4_1", S_o2035)
  o2081 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_turret_m_1/Turm1", S_o2081)
  o2091.Start()
  o2128 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_turret_m_2/Turm1", S_o2128)
  o2138.Start()
  o2175 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_turret_m_3/Turm1", S_o2175)
  o2185.Start()
  o2222 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_turret_m_4/Turm1", S_o2222)
  o2232.Start()
  o2269 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_laserwall_rail_b_1", S_o2269)
  o2315 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_laserwall_rail_b_2", S_o2315)
  o2361 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_laserwall_rail_b_3", S_o2361)
  o2407 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_laserwall_rail_top_1", S_o2407)
  o2453 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_laserwall_rail_top_2", S_o2453)
  o2499 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_laserwall_rail_top_3", S_o2499)
  o2545 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_trafo_EMP_4", S_o2545)
  o2548.Start()
  o2592 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_turret_h_1/Turm1", S_o2592)
  o2601.Start()
  o2638 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_turret_h_2/Turm1", S_o2638)
  o2647.Start()
  o2684 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_turret_h_3/Turm1", S_o2684)
  o2693.Start()
  o2730 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_turret_h_4/Turm1", S_o2730)
  o2739.Start()
  o2776 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_turret_xl_1/Turm1", S_o2776)
  o2784.Start()
  o2822 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_turret_a_1/Turm1", S_o2822)
  o2868 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_turret_a_2/Turm1", S_o2868)
  o2914 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_turret_a_3/Turm1", S_o2914)
  o2960 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_turret_a_4/Turm1", S_o2960)
  o3006 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_1", S_o3006)
  o3052 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_1", S_o3052)
  o3098 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_2", S_o3098)
  o3144 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_3", S_o3144)
  o3190 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_4", S_o3190)
  o3236 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_1", S_o3236)
  o3282 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_1", S_o3282)
  o3328 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_1", S_o3328)
  o3374 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_2", S_o3374)
  o3420 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_02_1", S_o3420)
  o3466 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_02_2", S_o3466)
  o3512 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_02_3", S_o3512)
  o3558 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_01_1", S_o3558)
  o3604 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_01_2", S_o3604)
  o3650 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_01_3", S_o3650)
  o3696 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_01_4", S_o3696)
  o3742 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_01_5", S_o3742)
  o3788 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_02_4", S_o3788)
  o3834 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_01_6", S_o3834)
  o3880 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_02_5", S_o3880)
  o3926 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_1", S_o3926)
  o3972 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_x", S_o3972)
  o4018 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_y", S_o4018)
  o4064 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_x", S_o4064)
  o4110 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_x", S_o4110)
  o4156 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_y", S_o4156)
  o4202 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_z", S_o4202)
  o4248 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_1", S_o4248)
  o4294 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_1", S_o4294)
  o4340 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_2", S_o4340)
  o4386 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_1", S_o4386)
  o4432 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_2", S_o4432)
  o4478 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_1", S_o4478)
  o4524 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_2", S_o4524)
  o4570 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_1", S_o4570)
  o4616 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_1", S_o4616)
  o4662 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_2", S_o4662)
  o4708 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_3", S_o4708)
  o4754 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_2", S_o4754)
  o4800 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_3", S_o4800)
  o4846 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_a", S_o4846)
  o4892 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_b", S_o4892)
  o4938 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_2", S_o4938)
  o4984 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_a", S_o4984)
  o5030 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_2", S_o5030)
  o5076 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_a", S_o5076)
  o5122 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_3", S_o5122)
  o5168 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_3", S_o5168)
  o5214 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_4", S_o5214)
  o5260 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_a", S_o5260)
  o5306 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_3x", S_o5306)
  o5352 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_a", S_o5352)
  o5398 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_a", S_o5398)
  o5444 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Position_1", S_o5444)
  o5446 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_1", S_o5446)
  o5447 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_2", S_o5447)
  o5448 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_3", S_o5448)
  o5449 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_4", S_o5449)
  o5450 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_5", S_o5450)
  o5451 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_6", S_o5451)
  o5452 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_7", S_o5452)
  o5453 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_8", S_o5453)
  o5454 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_9", S_o5454)
  o5455 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_10", S_o5455)
  o5456 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_11", S_o5456)
  o5457 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_12", S_o5457)
  o5458 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_13", S_o5458)
  o5459 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_14", S_o5459)
  o5460 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_15", S_o5460)
  o5461 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_16", S_o5461)
  o5462 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_17", S_o5462)
  o5463 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_18", S_o5463)
  o5464 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_19", S_o5464)
  o5465 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_20", S_o5465)
  o5466 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_21", S_o5466)
  o5467 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_22", S_o5467)
  o5468 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_23", S_o5468)
  o5469 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_24", S_o5469)
  o5471 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "DipolTurretsTrigger_1", S_o5471)
  o5477 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "DipolTurretsTrigger_2", S_o5477)
  o5482.Start()
  o5483 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "DipolTurretsTrigger_3", S_o5483)
  o5488.Start()
  o5489 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Send_009_Trigger", S_o5489)
  o5494.Start()
  o5495 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Send_009_Trigger_2", S_o5495)
  o5500.Start()
  o5501 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_1", S_o5501)
  o5506.Start()
  o5507 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "1gen_laserbeam_1", S_o5507)
  o5550 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "1gen_laserbeam_2", S_o5550)
  o5593 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "1gen_laserbeam_3", S_o5593)
  o5636 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "1gen_laserbeam_4", S_o5636)
  o5679 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "1gen_laserbeam_5", S_o5679)
  o5722 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "1gen_laserbeam_6", S_o5722)
  o5765 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "1gen_laserbeam_7", S_o5765)
  o5808 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "1gen_laserbeam_8", S_o5808)
  o5851 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "1gen_laserbeam_9", S_o5851)
  o5894 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "1gen_laserbeam_10", S_o5894)
  o5937 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "1gen_laserbeam_11", S_o5937)
  o5980 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "1gen_laserbeam_12", S_o5980)
  o6023 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "1gen_laserbeam_13", S_o6023)
  o6066 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "1gen_laserbeam_14", S_o6066)
  o6109 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "1gen_laserbeam_15", S_o6109)
  o6152 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "1gen_laserbeam_16", S_o6152)
  o6195 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "1gen_laserbeam_17", S_o6195)
  o6238 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "1gen_laserbeam_18", S_o6238)
  o6281 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "2gen_laserbeam_1", S_o6281)
  o6324 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "2gen_laserbeam_2", S_o6324)
  o6367 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "2gen_laserbeam_3", S_o6367)
  o6410 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "2gen_laserbeam_4", S_o6410)
  o6453 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "2gen_laserbeam_5", S_o6453)
  o6496 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "2gen_laserbeam_6", S_o6496)
  o6539 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "2gen_laserbeam_7", S_o6539)
  o6582 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "2gen_laserbeam_8", S_o6582)
  o6625 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "2gen_laserbeam_9", S_o6625)
  o6668 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "2gen_laserbeam_10", S_o6668)
  o6711 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "2gen_laserbeam_11", S_o6711)
  o6754 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "2gen_laserbeam_12", S_o6754)
  o6797 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "2gen_laserbeam_13", S_o6797)
  o6840 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "2gen_laserbeam_14", S_o6840)
  o6883 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "2gen_laserbeam_15", S_o6883)
  o6926 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "2gen_laserbeam_16", S_o6926)
  o6969 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "2gen_laserbeam_17", S_o6969)
  o7012 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "2gen_laserbeam_18", S_o7012)
  o7055 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "3gen_laserbeam_1", S_o7055)
  o7098 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "3gen_laserbeam_2", S_o7098)
  o7141 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "3gen_laserbeam_3", S_o7141)
  o7184 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "3gen_laserbeam_4", S_o7184)
  o7227 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "3gen_laserbeam_5", S_o7227)
  o7270 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "3gen_laserbeam_6", S_o7270)
  o7313 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "3gen_laserbeam_7", S_o7313)
  o7356 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "3gen_laserbeam_8", S_o7356)
  o7399 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "3gen_laserbeam_9", S_o7399)
  o7442 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "3gen_laserbeam_10", S_o7442)
  o7485 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "3gen_laserbeam_11", S_o7485)
  o7528 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "3gen_laserbeam_12", S_o7528)
  o7571 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "3gen_laserbeam_13", S_o7571)
  o7614 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "3gen_laserbeam_14", S_o7614)
  o7657 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "3gen_laserbeam_15", S_o7657)
  o7700 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "3gen_laserbeam_16", S_o7700)
  o7743 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "3gen_laserbeam_17", S_o7743)
  o7786 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "3gen_laserbeam_18", S_o7786)
  o7829 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "4gen_laserbeam_1", S_o7829)
  o7872 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "4gen_laserbeam_2", S_o7872)
  o7915 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "4gen_laserbeam_3", S_o7915)
  o7958 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "4gen_laserbeam_4", S_o7958)
  o8001 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "4gen_laserbeam_5", S_o8001)
  o8044 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "4gen_laserbeam_6", S_o8044)
  o8087 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "4gen_laserbeam_7", S_o8087)
  o8130 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "4gen_laserbeam_8", S_o8130)
  o8173 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "4gen_laserbeam_9", S_o8173)
  o8216 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "4gen_laserbeam_10", S_o8216)
  o8259 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "4gen_laserbeam_11", S_o8259)
  o8302 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "4gen_laserbeam_12", S_o8302)
  o8345 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "4gen_laserbeam_13", S_o8345)
  o8388 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "4gen_laserbeam_14", S_o8388)
  o8431 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "4gen_laserbeam_15", S_o8431)
  o8474 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "4gen_laserbeam_16", S_o8474)
  o8517 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "4gen_laserbeam_17", S_o8517)
  o8560 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "4gen_laserbeam_18", S_o8560)
  o8603 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "5gen_laserbeam_1", S_o8603)
  o8646 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "5gen_laserbeam_2", S_o8646)
  o8689 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "5gen_laserbeam_3", S_o8689)
  o8732 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "5gen_laserbeam_4", S_o8732)
  o8775 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "5gen_laserbeam_5", S_o8775)
  o8818 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "5gen_laserbeam_6", S_o8818)
  o8861 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "5gen_laserbeam_7", S_o8861)
  o8904 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "5gen_laserbeam_8", S_o8904)
  o8947 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "5gen_laserbeam_9", S_o8947)
  o8990 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "5gen_laserbeam_10", S_o8990)
  o9033 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "5gen_laserbeam_11", S_o9033)
  o9076 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "5gen_laserbeam_12", S_o9076)
  o9119 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "5gen_laserbeam_13", S_o9119)
  o9162 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "5gen_laserbeam_14", S_o9162)
  o9205 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "5gen_laserbeam_15", S_o9205)
  o9248 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "5gen_laserbeam_16", S_o9248)
  o9291 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "5gen_laserbeam_17", S_o9291)
  o9334 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "5gen_laserbeam_18", S_o9334)
  o9377 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "6gen_laserbeam_1", S_o9377)
  o9420 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "6gen_laserbeam_2", S_o9420)
  o9463 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "6gen_laserbeam_3", S_o9463)
  o9506 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "6gen_laserbeam_4", S_o9506)
  o9549 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "6gen_laserbeam_5", S_o9549)
  o9592 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "6gen_laserbeam_6", S_o9592)
  o9635 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "6gen_laserbeam_7", S_o9635)
  o9678 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "6gen_laserbeam_8", S_o9678)
  o9721 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "6gen_laserbeam_9", S_o9721)
  o9764 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "6gen_laserbeam_10", S_o9764)
  o9807 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "6gen_laserbeam_11", S_o9807)
  o9850 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "6gen_laserbeam_12", S_o9850)
  o9893 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "6gen_laserbeam_13", S_o9893)
  o9936 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "6gen_laserbeam_14", S_o9936)
  o9979 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "6gen_laserbeam_15", S_o9979)
  o10022 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "6gen_laserbeam_16", S_o10022)
  o10065 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "6gen_laserbeam_17", S_o10065)
  o10108 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Laserbeams"), "6gen_laserbeam_18", S_o10108)
  o10151 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o10151)
  o10165.Start()
  o10168.Start()
  o10183.Start()
  o10186.Start()
  o10220 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_techbomber_1", S_o10220)
  o10235.Start()
  o10257.Start()
  o10286 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1", S_o10286)
  o10289.Start()
  o10291 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_1", S_o10291)
  o10294.Start()
  o10296 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_laserwall_1", S_o10296)
  o10298 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_techbomber_2", S_o10298)
  o10306.Start()
  o10307.Start()
  o10358 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_laserwall_2", S_o10358)
  o10360 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_juan_mine_1", S_o10360)
  o10416 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_juan_mine_5", S_o10416)
  o10472 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_juan_mine_6", S_o10472)
  o10528 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_juan_mine_10", S_o10528)
  o10584 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "2gen_juan_mine_1", S_o10584)
  o10640 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "2gen_juan_mine_2", S_o10640)
  o10696 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "2gen_juan_mine_5", S_o10696)
  o10752 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "2gen_juan_mine_10", S_o10752)
  o10808 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "1gen_juan_mine_1", S_o10808)
  o10864 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "1gen_juan_mine_3", S_o10864)
  o10920 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "1gen_juan_mine_5", S_o10920)
  o10976 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "1gen_juan_mine_10", S_o10976)
  o11032 = BindEasy(Node_Find("/"), "Camera", S_o11032)
  o11033 = BindEasy(Node_Find("/IngameSequences/Navigation"), "Position_1", S_o11033)
  o11034 = BindEasy(Node_Find("/IngameSequences/Navigation"), "Position_11", S_o11034)
  o11037 = BindEasy(Node_Find("/IngameSequences/Navigation"), "Position_2", S_o11037)
  o11038 = BindEasy(Node_Find("/IngameSequences/Navigation"), "Position_3", S_o11038)
  o11039 = BindEasy(Node_Find("/IngameSequences/Navigation"), "Position_4", S_o11039)
  o11042 = BindEasy(Node_Find("/IngameSequences/Navigation"), "EndPosition_1", S_o11042)
  o11043 = BindEasy(Node_Find("/IngameSequences/Navigation"), "EndPosition_2", S_o11043)
  o11044 = BindEasy(Node_Find("/IngameSequences/Navigation"), "EndPosition_3", S_o11044)
  o11045 = BindEasy(Node_Find("/IngameSequences/Navigation"), "Position_5", S_o11045)
  o11084 = BindEasy(Node_Find("/IngameSequences/Trigger"), "TriggerPresenceBox_1", S_o11084)
  o11089.Start()
  o11090 = BindEasy(Node_Find("/IngameSequences/Trigger"), "TriggerPresenceBox_2", S_o11090)
  o11095.Start()
  o11046 = BindEasy(Node_Find("/IngameSequences/Director"), "Intro", S_o11046)
  o11058 = BindEasy(Node_Find("/IngameSequences/Director"), "Director_1", S_o11058)
  o11061 = BindEasy(Node_Find("/IngameSequences/Director"), "End_1", S_o11061)
  o11069 = BindEasy(Node_Find("/IngameSequences/Director"), "End_2", S_o11069)
  o11072 = BindEasy(Node_Find("/IngameSequences/Director"), "KickOutPlayer", S_o11072)
  o11080 = BindEasy(Node_Find("/IngameSequences/Director"), "KickOutPlayer2", S_o11080)
  o11035 = { {}, o10151, o10220 }()
  o11040 = { {}, o10151 }()
  o11041 = { {}, o10298 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
