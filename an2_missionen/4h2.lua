-- dekompiliert aus 4h2.sco
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
  Game_SetAmbientLight(node0, 0.109804, 0.117647, 0.109804)
  Game_SetParallelLightT(node0, 0.219608, 0.235294, 0.219608)
  Game_SetParallelLightB(node0, 0.109804, 0.117647, 0.109804)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_4h2.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_4H2.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_unhancy1.sam", 0)
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
  node7 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node2, node7)
  Node_EnterSimulation(node7)
  Game_LoadProgress_Advance(node0)
  node8 = Node_CreateNode("nod_fx_rays", "fx_rays_4H2_1")
  Node_AddSon(node7, node8)
  Node_ParseIniFile(node8, "osd/fx_rays/fx_rays_4H2.osd")
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_fx_sky", "fx_sky_4H2_1")
  Node_AddSon(node7, node9)
  Node_ParseIniFile(node9, "osd/fx_sky/fx_sky_4H2.osd")
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_fx_plankton", "fx_plankton_lava_n_1")
  Node_AddSon(node7, node10)
  Node_ParseIniFile(node10, "osd/fx_plankton/fx_plankton_lava_n.osd")
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "pla_harvester_1")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(2838.640974, 782.787083, 276.667645), MAT_Vector3(51.326994, -0.725521, -1.498206))
  Node_ParseIniFile(node11, "osd/pla/pla_harvester.osd")
  Body_SetFriendOrFoeID(node11, 3)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "gen_juan_screw_1")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(690, 2737, 50), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node12, "osd/gen/gen_juan_screw.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "gen_juan_screw_off_1")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(690, 2737, 50), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node13, "osd/gen/gen_juan_screw_off.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "gen_juan_trafo_EMP_1")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(652.1207, 2789.867, 48.68655), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node14, "osd/gen/gen_juan_trafo.osd")
  Body_SetFriendOrFoeID(node14, 2)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "dir_cammesh_static_1")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(691.549856, 2738.64952, 88.325482), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node15, "osd/dir/dir_cammesh_static.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "gen_juan_wallhole_1")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(781.5123, 2818.998, 25.91583), MAT_Vector3(-91.36256, 0, 0))
  Node_ParseIniFile(node16, "osd/gen/gen_juan_wallhole.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "gen_juan_wall_1")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(642.4709, 3512.5, 53), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node17, "osd/gen/gen_juan_wall.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "gen_juan_wall_2")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(642.7204, 3643, 53), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node18, "osd/gen/gen_juan_wall.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "gen_juan_wall_3")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(642.2008, 3773.594, 53), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node19, "osd/gen/gen_juan_wall.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "gen_juan_wall_4")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(749.4693, 3512.5, 53), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node20, "osd/gen/gen_juan_wall.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "gen_juan_wall_5")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(750.7169, 3643, 53), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node21, "osd/gen/gen_juan_wall.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "gen_juan_wall_6")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(751.0972, 3774, 53), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node22, "osd/gen/gen_juan_wall.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "gen_juan_circle_1")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(713.082, 3185.488, 50), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node23, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "gen_juan_circle_2")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(674.1388, 3183.682, 50), MAT_Vector3(55, 0, 0))
  Node_ParseIniFile(node24, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "gen_juan_circle_3")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(676.8132, 3208.425, 50), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_juan_circle_4")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(715.3161, 3207.456, 50), MAT_Vector3(-124.5, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "gen_rohr_big01_1")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(596.461, 3379.338, 56.16383), MAT_Vector3(-70.21327, -0.05417, 0.176292))
  Node_ParseIniFile(node27, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "gen_rohr_big01_2")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(651.2729, 3389.198, 57.22303), MAT_Vector3(-88.43747, 0, 0))
  Node_ParseIniFile(node28, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "gen_rohr_big01_3")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(549.0198, 3352.938, 55.32949), MAT_Vector3(-50.89955, 0, 0))
  Node_ParseIniFile(node29, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "gen_rohr_big01_4")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(416.4543, 3265.118, 54.12824), MAT_Vector3(-89.46168, 0, 0))
  Node_ParseIniFile(node30, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "gen_rohr_big02_1")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(485.2081, 3300.917, 54.96768), MAT_Vector3(-50.37708, 0, 0))
  Node_ParseIniFile(node31, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "gen_rohr_big02_2")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(447.1193, 3214.248, 51.26701), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_rohr_big02_2_2")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(335.0263, 3214.563, 51.26701), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node33, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "gen_rohr_big02_2_3")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(333.0771, 3264.653, 53.50857), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "gen_rohr_big02_3")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(562.9925, 3215.479, 49.45067), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node35, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_rohr_big02_4")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(680.2512, 3216.661, 49.45067), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "gen_rohr_big02_5")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(793.5039, 3216.633, 49.45067), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node37, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "gen_rohr_big02_6")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(911.3216, 3217.574, 49.45067), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node38, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_rohr_big02_7")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(1029.837, 3217.845, 47.51949), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_juan_trafo_EMP_2")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(1310.575, 3155.557, 46.00779), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_juan_trafo_EMP.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_juan_trafo_EMP_3")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(1311.242, 3181.368, 45.63981), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_juan_trafo_EMP.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_trafo2_1")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(260.5843, 3253.038, 29.14863), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_trafo2.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_rohr_small03_1")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(1219.427, 3183.476, 52.5553), MAT_Vector3(81.03984, 0, 0))
  Node_ParseIniFile(node43, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_juan_circle_5")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(1291.073, 3221.942, 45), MAT_Vector3(-162.2942, -0.00088, -0.000479))
  Node_ParseIniFile(node44, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_juan_circle_6")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(1244.782, 3191.464, 45), MAT_Vector3(-70.26397, -0.00088, -0.000479))
  Node_ParseIniFile(node45, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_juan_circle_7")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(1274.626, 3149.64, 45), MAT_Vector3(18.93208, -0.00088, -0.000479))
  Node_ParseIniFile(node46, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "gen_juan_circle_8")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(298.4869, 3206.999, 45), MAT_Vector3(30.20363, 0, 0))
  Node_ParseIniFile(node47, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "gen_juan_circle_9")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(299.8329, 3278.126, 45), MAT_Vector3(-156.215, 0, 0))
  Node_ParseIniFile(node48, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "gen_juan_circle_10")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(333.0761, 3241.302, 45), MAT_Vector3(116.7629, 0, 0))
  Node_ParseIniFile(node49, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "gen_juan_circle_90")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(713.082, 4035.488, 50), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node50, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_juan_circle_91")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(674.1388, 4033.682, 50), MAT_Vector3(55, 0, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "gen_juan_circle_92")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(676.8132, 4058.425, 50), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node52, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_juan_circle_93")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(715.3161, 4057.456, 50), MAT_Vector3(-124.5, 0, 0))
  Node_ParseIniFile(node53, "osd/gen/gen_juan_circle.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "atl_dock1_4_1")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(695.8494, 4052.403, 3.88054), MAT_Vector3(-90.3302, 0, 0))
  Node_ParseIniFile(node54, "osd/gen/gen_juan_dock.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "gen_juan_laserwall_rail_b_1")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(657.304, 3512.539, 53), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node55, "osd/gen/gen_juan_laserwall_rail_bottom.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "gen_juan_laserwall_rail_b_2")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(658.5589, 3642.962, 53), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node56, "osd/gen/gen_juan_laserwall_rail_bottom.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "gen_juan_laserwall_rail_b_3")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(651.3697, 3773.957, 53), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node57, "osd/gen/gen_juan_laserwall_rail_bottom.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "gen_juan_laserwall_rail_top_1")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(698.8568, 3512.606, 53), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node58, "osd/gen/gen_juan_laserwall_rail_top.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "gen_juan_laserwall_rail_top_2")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(694.2711, 3644.001, 53), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node59, "osd/gen/gen_juan_laserwall_rail_top.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "gen_juan_laserwall_rail_top_3")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(694.1811, 3777.982, 53), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node60, "osd/gen/gen_juan_laserwall_rail_top.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "ter_megalith_l_01_1")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(1358.149, 1914.373, 24.6024), MAT_Vector3(0.855421, 75, 6.702622))
  Node_ParseIniFile(node61, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "ter_bridgering_l_1")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(1426.605, 2134.844, 66.60594), MAT_Vector3(-41.12411, -2.444907, 27.49478))
  Node_ParseIniFile(node62, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "ter_bridgering_l_2")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(1490.04, 2200.623, 66.60594), MAT_Vector3(-41.12411, -2.444907, 27.49478))
  Node_ParseIniFile(node63, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "ter_bridgering_l_3")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(1562.541, 2267.446, 66.60594), MAT_Vector3(-53.47412, -2.444907, 27.49478))
  Node_ParseIniFile(node64, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "ter_bridgering_l_4")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(1664.088, 2330.594, 61.34041), MAT_Vector3(-59.53815, -2.444907, 27.49478))
  Node_ParseIniFile(node65, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "ter_rock_m_01_1")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(1373.016, 1982.024, 63.33778), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node66, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "ter_rock_l_01_1")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(1405.426, 1919.712, 51.37621), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node67, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "ter_rock_s_01_1")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(1419.454, 1962.059, 56.25508), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node68, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "ter_rock_l_01_2")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(1269.587, 1962.34, 48.47971), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node69, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "ter_claw_l_02_1")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(1815.558, 2329.638, 40.28431), MAT_Vector3(-68.78568, 0, 0))
  Node_ParseIniFile(node70, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "ter_claw_l_02_2")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(1892.67, 2359.3, 42.81692), MAT_Vector3(-70.97128, 0, 0))
  Node_ParseIniFile(node71, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "ter_claw_l_02_3")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(1957.47, 2384.826, 41.47682), MAT_Vector3(-70.89827, 0, 0))
  Node_ParseIniFile(node72, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "ter_claw_l_01_1")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(2032.725, 2395.977, 31.20635), MAT_Vector3(-148.4354, 0, 0))
  Node_ParseIniFile(node73, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "ter_claw_l_01_2")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(2100.868, 2399.986, 32.02969), MAT_Vector3(174.3391, 0, 0))
  Node_ParseIniFile(node74, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "ter_claw_l_01_3")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(2162.084, 2394.088, 39.02056), MAT_Vector3(151.1695, 0, 0))
  Node_ParseIniFile(node75, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "ter_claw_l_01_4")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(2235.02, 2385.617, 32.27968), MAT_Vector3(-154.7928, 0, 0))
  Node_ParseIniFile(node76, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "ter_claw_l_01_5")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(2298.861, 2373.416, 40.68901), MAT_Vector3(161.5265, 0, 0))
  Node_ParseIniFile(node77, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "ter_claw_l_02_4")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(2371.683, 2329.983, 43.93576), MAT_Vector3(-95.82724, 0, 0))
  Node_ParseIniFile(node78, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "ter_claw_l_01_6")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(2412.007, 2287.703, 33.54967), MAT_Vector3(131.4859, 0, 0))
  Node_ParseIniFile(node79, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "ter_claw_l_02_5")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(2463.321, 2231.231, 32.18031), MAT_Vector3(-134.9016, 0, 0))
  Node_ParseIniFile(node80, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_generic", "ter_megalith_l_03_1")
  Node_AddSon(node7, node81)
  Body_SetCS(node81, MAT_Vector3(2466.432, 2983.992, 55.32321), MAT_Vector3(17.05644, 11.44936, -4.452402))
  Node_ParseIniFile(node81, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_generic", "ter_rock_m_01_x")
  Node_AddSon(node7, node82)
  Body_SetCS(node82, MAT_Vector3(3100.824, 2402.94, 68.1202), MAT_Vector3(-58.16622, 23.75991, 44.42))
  Node_ParseIniFile(node82, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_generic", "ter_rock_m_01_y")
  Node_AddSon(node7, node83)
  Body_SetCS(node83, MAT_Vector3(3107.631, 2449.776, 71.79271), MAT_Vector3(-58.16622, 23.75991, 44.42))
  Node_ParseIniFile(node83, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_generic", "ter_rock_l_01_x")
  Node_AddSon(node7, node84)
  Body_SetCS(node84, MAT_Vector3(3139.401, 2442.809, 92.49287), MAT_Vector3(-76.71892, -0.39183, 70.91686))
  Node_ParseIniFile(node84, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_generic", "ter_rock_s_01_x")
  Node_AddSon(node7, node85)
  Body_SetCS(node85, MAT_Vector3(3075.332, 2434.913, 70.84384), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node85, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "ter_rock_s_01_y")
  Node_AddSon(node7, node86)
  Body_SetCS(node86, MAT_Vector3(3154.276, 2387.005, 95.49108), MAT_Vector3(-54.62281, -58.63304, -158.8292))
  Node_ParseIniFile(node86, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "ter_rock_s_01_z")
  Node_AddSon(node7, node87)
  Body_SetCS(node87, MAT_Vector3(3098.958, 2473.169, 78.58466), MAT_Vector3(-33.5501, -42.65285, -68.31232))
  Node_ParseIniFile(node87, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1")
  Node_AddSon(node7, node88)
  Body_SetCS(node88, MAT_Vector3(2538.173, 2780.507, 115.4922), MAT_Vector3(-74.27483, -13.18199, -18.38145))
  Node_ParseIniFile(node88, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1")
  Node_AddSon(node7, node89)
  Body_SetCS(node89, MAT_Vector3(2638.68, 2724.931, 116.8446), MAT_Vector3(-179.7366, 21.61668, -20.39562))
  Node_ParseIniFile(node89, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_fx_flare", "fx_flare_4H2_1")
  Node_AddSon(node7, node90)
  Node_ParseIniFile(node90, "osd/fx_flare/fx_flare_4H2.osd")
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node91)
  Node_ParseIniFile(node91, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node91, "map/4H2/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_fx_plant", "org_redcoral_1")
  Node_AddSon(node7, node92)
  Node_ParseIniFile(node92, "osd/fx_plant/org_redcoral.osd")
  FX_Plant_SetMap(node92, "map/4H2/Terrain/org_redcoral.tga")
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "ter_megalith_l_03_2")
  Node_AddSon(node7, node93)
  Body_SetCS(node93, MAT_Vector3(3391.846888, 752.429452, 118.838678), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node93, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node93, 0)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_generic", "ter_megalith_l_02_1")
  Node_AddSon(node7, node94)
  Body_SetCS(node94, MAT_Vector3(3192.032155, 386.055501, 173.888413), MAT_Vector3(-8.808737, 4.344672, -3.340706))
  Node_ParseIniFile(node94, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node94, 0)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_generic", "ter_megalith_s_01_2")
  Node_AddSon(node7, node95)
  Body_SetCS(node95, MAT_Vector3(2623.247136, 429.484347, 113.204809), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node95, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node95, 0)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_generic", "ter_megalith_s_02_1")
  Node_AddSon(node7, node96)
  Body_SetCS(node96, MAT_Vector3(3140.605582, 395.976571, 159.263308), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node96, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node96, 0)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_generic", "ter_megalith_s_03_2")
  Node_AddSon(node7, node97)
  Body_SetCS(node97, MAT_Vector3(3149.719667, 428.804018, 157.677648), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node97, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node97, 0)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_generic", "ter_megalith_m_02_1")
  Node_AddSon(node7, node98)
  Body_SetCS(node98, MAT_Vector3(3188.117684, 289.840332, 181.399536), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node98, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node98, 0)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_generic", "ter_megalith_m_01_1")
  Node_AddSon(node7, node99)
  Body_SetCS(node99, MAT_Vector3(2739.246052, 494.589334, 53.091175), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node99, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node99, 0)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_generic", "ter_megalith_s_02_2")
  Node_AddSon(node7, node100)
  Body_SetCS(node100, MAT_Vector3(2799.265971, 422.535871, 53.355603), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node100, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node100, 0)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_generic", "ter_megalith_s_03_3")
  Node_AddSon(node7, node101)
  Body_SetCS(node101, MAT_Vector3(2867.481579, 458.337041, 49.21062), MAT_Vector3(-19.448133, 18.674773, 11.0289))
  Node_ParseIniFile(node101, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node101, 0)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_generic", "ter_megalith_l_01_2")
  Node_AddSon(node7, node102)
  Body_SetCS(node102, MAT_Vector3(2722.513059, 418.369209, 53.865662), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node102, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node102, 0)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_generic", "ter_rock_l_01_3")
  Node_AddSon(node7, node103)
  Body_SetCS(node103, MAT_Vector3(2488.407763, 654.930165, 128.768168), MAT_Vector3(107.562523, 6.005624, 81.117935))
  Node_ParseIniFile(node103, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node103, 0)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_generic", "ter_rock_l_01_a")
  Node_AddSon(node7, node104)
  Body_SetCS(node104, MAT_Vector3(2085.849549, 662.628228, 138.773837), MAT_Vector3(-155.183672, -32.49794, -91.654871))
  Node_ParseIniFile(node104, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node104, 0)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_generic", "ter_rock_l_01_b")
  Node_AddSon(node7, node105)
  Body_SetCS(node105, MAT_Vector3(1620.235206, 983.019445, 110.563582), MAT_Vector3(-86.997373, -64.295301, -37.159424))
  Node_ParseIniFile(node105, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node105, 0)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_generic", "ter_rock_m_01_2")
  Node_AddSon(node7, node106)
  Body_SetCS(node106, MAT_Vector3(2314.647844, 660.85255, 116.196812), MAT_Vector3(24.567291, 12.273684, 52.464044))
  Node_ParseIniFile(node106, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node106, 0)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_generic", "ter_rock_m_01_a")
  Node_AddSon(node7, node107)
  Body_SetCS(node107, MAT_Vector3(2041.518271, 652.070791, 137.837073), MAT_Vector3(4.242436, 45.464841, -138.165668))
  Node_ParseIniFile(node107, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node107, 0)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_generic", "ter_rock_s_01_2")
  Node_AddSon(node7, node108)
  Body_SetCS(node108, MAT_Vector3(2316.609483, 764.359319, 115.630035), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node108, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node108, 0)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_generic", "ter_rock_s_01_a")
  Node_AddSon(node7, node109)
  Body_SetCS(node109, MAT_Vector3(1611.864632, 927.937817, 107.206104), MAT_Vector3(-11.865139, -20.874877, -5.080705))
  Node_ParseIniFile(node109, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node109, 0)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_generic", "ter_megalith_s_01_3")
  Node_AddSon(node7, node110)
  Body_SetCS(node110, MAT_Vector3(1417.604888, 756.012773, 56.330801), MAT_Vector3(5.801736, 5.695712, 1.934941))
  Node_ParseIniFile(node110, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node110, 0)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_generic", "ter_megalith_s_02_3")
  Node_AddSon(node7, node111)
  Body_SetCS(node111, MAT_Vector3(1415.310508, 779.833633, 72.485071), MAT_Vector3(-15.369782, -12.387545, -5.609395))
  Node_ParseIniFile(node111, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node111, 0)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_generic", "ter_megalith_s_03_4")
  Node_AddSon(node7, node112)
  Body_SetCS(node112, MAT_Vector3(1574.629568, 710.334326, 73.779032), MAT_Vector3(-27.344445, -17.508118, -20.54661))
  Node_ParseIniFile(node112, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node112, 0)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_generic", "ter_megalith_s_02_a")
  Node_AddSon(node7, node113)
  Body_SetCS(node113, MAT_Vector3(1360.101531, 691.010615, 59.766292), MAT_Vector3(5.256879, 5.693096, 3.446345))
  Node_ParseIniFile(node113, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node113, 0)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_generic", "ter_megalith_s_02_3x")
  Node_AddSon(node7, node114)
  Body_SetCS(node114, MAT_Vector3(1230.906526, 690.935791, 61.073794), MAT_Vector3(-15.36978, -12.38755, -5.609395))
  Node_ParseIniFile(node114, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node114, 0)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_generic", "ter_megalith_s_03_a")
  Node_AddSon(node7, node115)
  Body_SetCS(node115, MAT_Vector3(1207.356063, 819.915743, 69.617208), MAT_Vector3(78.956899, 5.887067, -1.173196))
  Node_ParseIniFile(node115, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node115, 0)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_generic", "ter_megalith_s_01_a")
  Node_AddSon(node7, node116)
  Body_SetCS(node116, MAT_Vector3(1202.739952, 786.104785, 65.996368), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node116, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node116, 0)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node117)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node117, node118)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node117, node119)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("NOD_FX_Stream", "Stream_1")
  Node_AddSon(node119, node120)
  Body_SetCS(node120, MAT_Vector3(705.892907, 2573.03492, 104.878132), MAT_Vector3())
  Stream_SetBoxExtension(node120, 100, 280, 35)
  Stream_SetCurrentDirection(node120, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_FX_Stream", "Stream_2")
  Node_AddSon(node119, node121)
  Body_SetCS(node121, MAT_Vector3(796.510226, 2247.666742, 104.8781), MAT_Vector3())
  Stream_SetBoxExtension(node121, 150, 120, 35)
  Stream_SetCurrentDirection(node121, MAT_Vector3(-27.30885, 0, 0))
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("NOD_FX_Stream", "Stream_3")
  Node_AddSon(node119, node122)
  Body_SetCS(node122, MAT_Vector3(676.292093, 2081.357482, 104.8781), MAT_Vector3())
  Stream_SetBoxExtension(node122, 150, 60, 35)
  Stream_SetCurrentDirection(node122, MAT_Vector3(-41.993014, 0, 0))
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("NOD_FX_Stream", "DamageStream_1")
  Node_AddSon(node119, node123)
  Body_SetCS(node123, MAT_Vector3(1895.916725, 2047.324272, 31.075757), MAT_Vector3())
  Stream_SetBoxExtension(node123, 620, 420, 20)
  Stream_SetCurrentDirection(node123, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_FX_Stream", "DamageStream_2")
  Node_AddSon(node119, node124)
  Body_SetCS(node124, MAT_Vector3(2022.690539, 2064.482833, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node124, 420, 120, 120)
  Stream_SetCurrentDirection(node124, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_FX_Stream", "DamageStream_3")
  Node_AddSon(node119, node125)
  Body_SetCS(node125, MAT_Vector3(1880.179133, 1885.657829, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node125, 420, 120, 120)
  Stream_SetCurrentDirection(node125, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_FX_Stream", "DamageStream_4")
  Node_AddSon(node119, node126)
  Body_SetCS(node126, MAT_Vector3(2097.365569, 2218.515439, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node126, 220, 120, 120)
  Stream_SetCurrentDirection(node126, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_FX_Stream", "DamageStream_5")
  Node_AddSon(node119, node127)
  Body_SetCS(node127, MAT_Vector3(1971.763773, 2180.526737, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node127, 220, 120, 120)
  Stream_SetCurrentDirection(node127, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("NOD_FX_Stream", "DamageStream_6")
  Node_AddSon(node119, node128)
  Body_SetCS(node128, MAT_Vector3(1886.870484, 2136.086701, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node128, 220, 120, 120)
  Stream_SetCurrentDirection(node128, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("NOD_FX_Stream", "DamageStream_7")
  Node_AddSon(node119, node129)
  Body_SetCS(node129, MAT_Vector3(1730.566392, 1991.183833, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node129, 220, 120, 120)
  Stream_SetCurrentDirection(node129, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("NOD_FX_Stream", "DamageStream_8")
  Node_AddSon(node119, node130)
  Body_SetCS(node130, MAT_Vector3(2172.744888, 2152.964461, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node130, 220, 120, 120)
  Stream_SetCurrentDirection(node130, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("NOD_FX_Stream", "DamageStream_9")
  Node_AddSon(node119, node131)
  Body_SetCS(node131, MAT_Vector3(1461.525478, 1828.047816, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node131, 50, 50, 120)
  Stream_SetCurrentDirection(node131, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_FX_Stream", "DamageStream_10")
  Node_AddSon(node119, node132)
  Body_SetCS(node132, MAT_Vector3(1295.512911, 1787.080558, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node132, 50, 50, 120)
  Stream_SetCurrentDirection(node132, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("NOD_FX_Stream", "DamageStream_11")
  Node_AddSon(node119, node133)
  Body_SetCS(node133, MAT_Vector3(1520.46502, 2006.494442, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node133, 50, 50, 120)
  Stream_SetCurrentDirection(node133, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("NOD_FX_Stream", "DamageStream_12")
  Node_AddSon(node119, node134)
  Body_SetCS(node134, MAT_Vector3(1601.731721, 2113.130566, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node134, 50, 50, 120)
  Stream_SetCurrentDirection(node134, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("NOD_FX_Stream", "DamageStream_13")
  Node_AddSon(node119, node135)
  Body_SetCS(node135, MAT_Vector3(1674.741561, 2184.253826, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node135, 50, 50, 120)
  Stream_SetCurrentDirection(node135, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("NOD_FX_Stream", "DamageStream_14")
  Node_AddSon(node119, node136)
  Body_SetCS(node136, MAT_Vector3(1763.700535, 2240.696682, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node136, 50, 50, 120)
  Stream_SetCurrentDirection(node136, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("NOD_FX_Stream", "DamageStream_15")
  Node_AddSon(node119, node137)
  Body_SetCS(node137, MAT_Vector3(1865.775037, 2278.600491, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node137, 50, 50, 120)
  Stream_SetCurrentDirection(node137, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("NOD_FX_Stream", "DamageStream_16")
  Node_AddSon(node119, node138)
  Body_SetCS(node138, MAT_Vector3(2105.423673, 2323.886352, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node138, 150, 50, 120)
  Stream_SetCurrentDirection(node138, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("NOD_FX_Stream", "DamageStream_17")
  Node_AddSon(node119, node139)
  Body_SetCS(node139, MAT_Vector3(1951.886924, 2308.920165, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node139, 50, 50, 120)
  Stream_SetCurrentDirection(node139, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("NOD_FX_Stream", "DamageStream_18")
  Node_AddSon(node119, node140)
  Body_SetCS(node140, MAT_Vector3(2050.871172, 2344.637574, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node140, 50, 50, 120)
  Stream_SetCurrentDirection(node140, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_FX_Stream", "DamageStream_19")
  Node_AddSon(node119, node141)
  Body_SetCS(node141, MAT_Vector3(2153.822705, 2343.290332, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node141, 50, 50, 120)
  Stream_SetCurrentDirection(node141, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_FX_Stream", "DamageStream_20")
  Node_AddSon(node119, node142)
  Body_SetCS(node142, MAT_Vector3(2254.408634, 2315.750034, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node142, 50, 50, 120)
  Stream_SetCurrentDirection(node142, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_FX_Stream", "DamageStream_21")
  Node_AddSon(node119, node143)
  Body_SetCS(node143, MAT_Vector3(2320.586904, 2274.273707, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node143, 50, 50, 120)
  Stream_SetCurrentDirection(node143, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_FX_Stream", "DamageStream_22")
  Node_AddSon(node119, node144)
  Body_SetCS(node144, MAT_Vector3(2382.288408, 2204.171928, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node144, 50, 50, 120)
  Stream_SetCurrentDirection(node144, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_FX_Stream", "DamageStream_23")
  Node_AddSon(node119, node145)
  Body_SetCS(node145, MAT_Vector3(2433.519128, 2125.998723, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node145, 50, 50, 120)
  Stream_SetCurrentDirection(node145, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_FX_Stream", "DamageStream_24")
  Node_AddSon(node119, node146)
  Body_SetCS(node146, MAT_Vector3(2623.041189, 2264.239775, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node146, 60, 60, 60)
  Stream_SetCurrentDirection(node146, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_FX_Stream", "DamageStream_25")
  Node_AddSon(node119, node147)
  Body_SetCS(node147, MAT_Vector3(1222.595125, 1836.573189, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node147, 50, 50, 120)
  Stream_SetCurrentDirection(node147, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_FX_Stream", "DamageStream_26")
  Node_AddSon(node119, node148)
  Body_SetCS(node148, MAT_Vector3(1142.943904, 1859.097268, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node148, 40, 40, 120)
  Stream_SetCurrentDirection(node148, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_FX_Stream", "DamageStream_27")
  Node_AddSon(node119, node149)
  Body_SetCS(node149, MAT_Vector3(1245.659329, 1702.358908, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node149, 40, 40, 120)
  Stream_SetCurrentDirection(node149, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_FX_Stream", "DamageStream_28")
  Node_AddSon(node119, node150)
  Body_SetCS(node150, MAT_Vector3(1209.982287, 1656.192174, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node150, 40, 40, 120)
  Stream_SetCurrentDirection(node150, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_FX_Stream", "DamageStream_29")
  Node_AddSon(node119, node151)
  Body_SetCS(node151, MAT_Vector3(1151.023076, 1621.371463, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node151, 40, 40, 120)
  Stream_SetCurrentDirection(node151, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_FX_Stream", "DamageStream_30")
  Node_AddSon(node119, node152)
  Body_SetCS(node152, MAT_Vector3(1096.424127, 1574.602122, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node152, 40, 40, 120)
  Stream_SetCurrentDirection(node152, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_FX_Stream", "DamageStream_31")
  Node_AddSon(node119, node153)
  Body_SetCS(node153, MAT_Vector3(1034.225527, 1588.321458, 132.144378), MAT_Vector3())
  Stream_SetBoxExtension(node153, 40, 40, 120)
  Stream_SetCurrentDirection(node153, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_FX_Stream", "DamageStream_32")
  Node_AddSon(node119, node154)
  Body_SetCS(node154, MAT_Vector3(966.861896, 1606.343025, 198.670579), MAT_Vector3())
  Stream_SetBoxExtension(node154, 40, 40, 120)
  Stream_SetCurrentDirection(node154, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_FX_Stream", "DamageStream_33")
  Node_AddSon(node119, node155)
  Body_SetCS(node155, MAT_Vector3(2717.76118, 2147.219267, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node155, 160, 60, 60)
  Stream_SetCurrentDirection(node155, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_FX_Stream", "DamageStream_34")
  Node_AddSon(node119, node156)
  Body_SetCS(node156, MAT_Vector3(2512.586079, 2125.845745, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node156, 60, 60, 60)
  Stream_SetCurrentDirection(node156, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_FX_Stream", "DamageStream_35")
  Node_AddSon(node119, node157)
  Body_SetCS(node157, MAT_Vector3(2883.711957, 2187.184506, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node157, 60, 60, 60)
  Stream_SetCurrentDirection(node157, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_FX_Stream", "DamageStream_36")
  Node_AddSon(node119, node158)
  Body_SetCS(node158, MAT_Vector3(2835.990076, 2281.895176, 31.07576), MAT_Vector3())
  Stream_SetBoxExtension(node158, 60, 60, 60)
  Stream_SetCurrentDirection(node158, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_FX_Stream", "Stream_4")
  Node_AddSon(node119, node159)
  Body_SetCS(node159, MAT_Vector3(808.944871, 2804.147436, 69.703335), MAT_Vector3())
  Stream_SetBoxExtension(node159, 120, 60, 80)
  Stream_SetCurrentDirection(node159, MAT_Vector3(0, 90, 0))
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node117, node160)
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node117, node161)
  Node_EnterSimulation(node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_1")
  Node_AddSon(node161, node162)
  Body_SetFriendOrFoeID(node162, 0)
  Body_SetCS(node162, MAT_Vector3(691.450328, 1895.909755, 132.904235), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node162, 20, 100, 60)
  Node_EnterSimulation(node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_2")
  Node_AddSon(node161, node163)
  Body_SetFriendOrFoeID(node163, 0)
  Body_SetCS(node163, MAT_Vector3(747.92252, 2131.543436, 132.9042), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node163, 100, 20, 60)
  Node_EnterSimulation(node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_3")
  Node_AddSon(node161, node164)
  Body_SetFriendOrFoeID(node164, 0)
  Body_SetCS(node164, MAT_Vector3(2496.758341, 2238.650311, 116.716692), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node164, 20, 220, 220)
  Node_EnterSimulation(node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_4")
  Node_AddSon(node161, node165)
  Body_SetFriendOrFoeID(node165, 0)
  Body_SetCS(node165, MAT_Vector3(1844.830653, 2973.231041, 116.7167), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node165, 20, 220, 220)
  Node_EnterSimulation(node165)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_5")
  Node_AddSon(node161, node166)
  Body_SetFriendOrFoeID(node166, 0)
  Body_SetCS(node166, MAT_Vector3(852.413942, 2821.50368, 116.7167), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node166, 20, 220, 220)
  Node_EnterSimulation(node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node117, node167)
  Node_EnterSimulation(node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node167, node168)
  Body_SetCS(node168, MAT_Vector3(2786.86024, 670.787138, 113.157008), MAT_Vector3(116.565702, 0, 0))
  Node_ParseIniFile(node168, "osd/pla/pla_ship1.osd")
  Body_SetFriendOrFoeID(node168, 1)
  Node_EnterSimulation(node168)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("nod_waypoint", "nav_waypoint_1")
  Node_AddSon(node167, node169)
  Body_SetPosition(node169, MAT_Vector3(1064.005204, 753.787801, 111.869492))
  WayPoint_SetRadius(node169, 50)
  Node_ParseIniFile(node169, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_1")
  Node_AddSon(node167, node170)
  Body_SetPosition(node170, MAT_Vector3(1357.941681, 1932.174856, 100.976615))
  WayPoint_SetRadius(node170, 30)
  Node_ParseIniFile(node170, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node170)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_2")
  Node_AddSon(node167, node171)
  Body_SetPosition(node171, MAT_Vector3(763.216751, 2233.337301, 100.9766))
  WayPoint_SetRadius(node171, 10)
  Node_ParseIniFile(node171, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("nod_waypoint", "nav_emp_1")
  Node_AddSon(node167, node172)
  Body_SetPosition(node172, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node172, 5)
  Node_ParseIniFile(node172, "osd/nav/nav_attack.osd")
  Node_EnterSimulation(node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_3")
  Node_AddSon(node167, node173)
  Body_SetPosition(node173, MAT_Vector3(1218.841546, 1935.196104, 100.617546))
  WayPoint_SetRadius(node173, 30)
  Node_ParseIniFile(node173, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node173)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_4")
  Node_AddSon(node167, node174)
  Body_SetPosition(node174, MAT_Vector3(2599.806876, 2208.431979, 87.779044))
  WayPoint_SetRadius(node174, 60)
  Node_ParseIniFile(node174, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node174)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("nod_waypoint", "nav_check")
  Node_AddSon(node167, node175)
  Body_SetPosition(node175, MAT_Vector3(3132.996039, 2471.131026, 124.162491))
  WayPoint_SetRadius(node175, 100)
  Node_ParseIniFile(node175, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("nod_waypoint", "nav_emp_2")
  Node_AddSon(node167, node176)
  Body_SetPosition(node176, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node176, 5)
  Node_ParseIniFile(node176, "osd/nav/nav_attack.osd")
  Node_EnterSimulation(node176)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("nod_laserwall", "gen_laserwall_1")
  Node_AddSon(node167, node177)
  Body_SetCS(node177, MAT_Vector3(686.186844, 2737.084509, 92.114972), MAT_Vector3(0, 0, 0))
  LaserWall_SetWallExtensionX(node177, 50)
  LaserWall_SetWallExtensionZ(node177, 50)
  Node_ParseIniFile(node177, "osd/gen/gen_laserwall.osd")
  Node_EnterSimulation(node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("nod_generic", "dir_explosion_gen_juan_screw_1")
  Node_AddSon(node167, node178)
  Body_SetCS(node178, MAT_Vector3(690.10004, 2737.19185, 83.221769), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node178, "osd/dir/dir_explosion_gen_juan_screw.osd")
  Body_SetFriendOrFoeID(node178, 0)
  Body_SetNameKey(node178, -1)
  Body_SetCargoKey(node178, -1, 0)
  Body_SetCargoKey(node178, -1, 1)
  Body_SetCargoKey(node178, -1, 2)
  Node_EnterSimulation(node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node179)
  Camera_SetBackPlane(node179, 2048)
  Node_EnterSimulation(node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_Scenario", "IngameSequences")
  Node_AddSon(node0, node180)
  Node_EnterSimulation(node180)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node180, node181)
  Node_EnterSimulation(node181)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node180, node182)
  Node_EnterSimulation(node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_Path", "PlaPath_1")
  Node_AddSon(node182, node183)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node183, node184)
  Position_SetPosition(node184, MAT_Vector3(2917.599187, 657.051401, 249.675528))
  Position_SetRadius(node184, 5)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node183, node185)
  Position_SetPosition(node185, MAT_Vector3(2839.902732, 660.833821, 249.67549))
  Position_SetRadius(node185, 5)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node183, node186)
  Position_SetPosition(node186, MAT_Vector3(2556.696118, 741.853225, 117.674603))
  Position_SetRadius(node186, 5)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node182, node187)
  Position_SetPosition(node187, MAT_Vector3(2725.176188, 639.148598, 250.269234))
  Position_SetRadius(node187, 5)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node180, node188)
  Node_EnterSimulation(node188)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_Director", "Intro")
  Node_AddSon(node188, node189)
  Node_EnterSimulation(node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Director", "Director_1")
  Node_AddSon(node188, node190)
  Node_EnterSimulation(node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node180, node191)
  Node_EnterSimulation(node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node180, node192)
  Node_EnterSimulation(node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Scenario", "vfx")
  Node_AddSon(node0, node193)
  Node_EnterSimulation(node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node193, node194)
  Node_EnterSimulation(node194)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node193, node195)
  Node_EnterSimulation(node195)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node193, node196)
  Node_EnterSimulation(node196)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node193, node197)
  Node_EnterSimulation(node197)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node193, node198)
  Node_EnterSimulation(node198)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_01")
  Node_AddSon(node198, node199)
  ParticleEmitter_SetCone(node199, MAT_Vector3(2110.869, 2360.051, 39.72141), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node199, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node199)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_02")
  Node_AddSon(node198, node200)
  ParticleEmitter_SetCone(node200, MAT_Vector3(2231.342, 2046.946, 26.87178), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node200, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node200)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_03")
  Node_AddSon(node198, node201)
  ParticleEmitter_SetCone(node201, MAT_Vector3(2177.743, 2301.132, 23.08167), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node201, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node201)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_04")
  Node_AddSon(node198, node202)
  ParticleEmitter_SetCone(node202, MAT_Vector3(2280.612, 2081.538, 19.78745), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node202, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node202)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_05")
  Node_AddSon(node198, node203)
  ParticleEmitter_SetCone(node203, MAT_Vector3(2171.049, 1976.902, 20.91576), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node203, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node203)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_06")
  Node_AddSon(node198, node204)
  ParticleEmitter_SetCone(node204, MAT_Vector3(2178.731, 2082.336, 20.72636), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node204, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node204)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_07")
  Node_AddSon(node198, node205)
  ParticleEmitter_SetCone(node205, MAT_Vector3(2113.017, 2195.421, 15.57232), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node205, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node205)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_08")
  Node_AddSon(node198, node206)
  ParticleEmitter_SetCone(node206, MAT_Vector3(2145.499, 2244.835, 14.94798), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node206, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node206)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_09")
  Node_AddSon(node198, node207)
  ParticleEmitter_SetCone(node207, MAT_Vector3(2416.857, 2208.243, 18.05464), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node207, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node207)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_10")
  Node_AddSon(node198, node208)
  ParticleEmitter_SetCone(node208, MAT_Vector3(2148.25, 2030.052, 20.55466), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node208, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node208)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_11")
  Node_AddSon(node198, node209)
  ParticleEmitter_SetCone(node209, MAT_Vector3(2200.669, 2219.666, 15.79469), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node209, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node209)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_12")
  Node_AddSon(node198, node210)
  ParticleEmitter_SetCone(node210, MAT_Vector3(2234.19, 1989.222, 24.39825), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node210, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node210)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_13")
  Node_AddSon(node198, node211)
  ParticleEmitter_SetCone(node211, MAT_Vector3(2289.211, 2233.433, 18.42352), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node211, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node211)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_14")
  Node_AddSon(node198, node212)
  ParticleEmitter_SetCone(node212, MAT_Vector3(2118.602, 2130.725, 20.76195), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node212, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node212)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_15")
  Node_AddSon(node198, node213)
  ParticleEmitter_SetCone(node213, MAT_Vector3(2100.21, 2072.212, 16.19517), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node213, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node213)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_16")
  Node_AddSon(node198, node214)
  ParticleEmitter_SetCone(node214, MAT_Vector3(2263.481, 2181.603, 13.93456), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node214, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node214)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_17")
  Node_AddSon(node198, node215)
  ParticleEmitter_SetCone(node215, MAT_Vector3(2372.038, 2262.14, 16.40661), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node215, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node215)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_18")
  Node_AddSon(node198, node216)
  ParticleEmitter_SetCone(node216, MAT_Vector3(2295.825, 2004.793, 23.82274), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node216, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node216)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_19")
  Node_AddSon(node198, node217)
  ParticleEmitter_SetCone(node217, MAT_Vector3(2403.559, 2072.276, 23.82274), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node217, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_20")
  Node_AddSon(node198, node218)
  ParticleEmitter_SetCone(node218, MAT_Vector3(2451.325, 2138.114, 13.86037), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node218, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node218)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_21")
  Node_AddSon(node198, node219)
  ParticleEmitter_SetCone(node219, MAT_Vector3(2361.472, 2019.282, 23.82274), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node219, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node219)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_22")
  Node_AddSon(node198, node220)
  ParticleEmitter_SetCone(node220, MAT_Vector3(2380.367, 2144.784, 23.82274), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node220, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node220)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_23")
  Node_AddSon(node198, node221)
  ParticleEmitter_SetCone(node221, MAT_Vector3(2346.452, 2089.274, 23.82274), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node221, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node221)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_24")
  Node_AddSon(node198, node222)
  ParticleEmitter_SetCone(node222, MAT_Vector3(2180.13, 2154.291, 23.82274), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node222, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node222)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_25")
  Node_AddSon(node198, node223)
  ParticleEmitter_SetCone(node223, MAT_Vector3(2314.486, 2300.457, 13.93456), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node223, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node223)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_26")
  Node_AddSon(node198, node224)
  ParticleEmitter_SetCone(node224, MAT_Vector3(2353.989, 2199.384, 13.93456), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node224, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node224)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_27")
  Node_AddSon(node198, node225)
  ParticleEmitter_SetCone(node225, MAT_Vector3(2304.991, 2145.87, 23.82274), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node225, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node225)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_28")
  Node_AddSon(node198, node226)
  ParticleEmitter_SetCone(node226, MAT_Vector3(2242.004, 2268.82, 18.05464), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node226, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node226)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_29")
  Node_AddSon(node198, node227)
  ParticleEmitter_SetCone(node227, MAT_Vector3(2231.142, 2119.05, 23.82274), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node227, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node227)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_30")
  Node_AddSon(node198, node228)
  ParticleEmitter_SetCone(node228, MAT_Vector3(1900.16, 1892.939, 23.82274), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node228, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node228)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_31")
  Node_AddSon(node198, node229)
  ParticleEmitter_SetCone(node229, MAT_Vector3(2078.033, 2004.945, 20.56577), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node229, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node229)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_32")
  Node_AddSon(node198, node230)
  ParticleEmitter_SetCone(node230, MAT_Vector3(2103.081, 2286.812, 26.58282), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node230, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node230)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_33")
  Node_AddSon(node198, node231)
  ParticleEmitter_SetCone(node231, MAT_Vector3(2021.197, 2048.697, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node231, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node231)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_34")
  Node_AddSon(node198, node232)
  ParticleEmitter_SetCone(node232, MAT_Vector3(2040.601, 2103.966, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node232, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node232)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_35")
  Node_AddSon(node198, node233)
  ParticleEmitter_SetCone(node233, MAT_Vector3(2047.267, 2167.765, 27.18843), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node233, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node233)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_36")
  Node_AddSon(node198, node234)
  ParticleEmitter_SetCone(node234, MAT_Vector3(2052.815, 2352.078, 35.06141), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node234, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node234)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_37")
  Node_AddSon(node198, node235)
  ParticleEmitter_SetCone(node235, MAT_Vector3(2049.023, 2238.963, 44.75122), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node235, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node235)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_38")
  Node_AddSon(node198, node236)
  ParticleEmitter_SetCone(node236, MAT_Vector3(2032.674, 2297.516, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node236, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node236)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_39")
  Node_AddSon(node198, node237)
  ParticleEmitter_SetCone(node237, MAT_Vector3(2250.009, 2339.706, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node237, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node237)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_40")
  Node_AddSon(node198, node238)
  ParticleEmitter_SetCone(node238, MAT_Vector3(1982.385, 2343.085, 26.58282), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node238, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node238)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_41")
  Node_AddSon(node198, node239)
  ParticleEmitter_SetCone(node239, MAT_Vector3(1970.905, 2267.891, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node239, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node239)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_42")
  Node_AddSon(node198, node240)
  ParticleEmitter_SetCone(node240, MAT_Vector3(2182.145, 2351.447, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node240, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node240)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_43")
  Node_AddSon(node198, node241)
  ParticleEmitter_SetCone(node241, MAT_Vector3(1782.322, 2273.641, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node241, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node241)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_44")
  Node_AddSon(node198, node242)
  ParticleEmitter_SetCone(node242, MAT_Vector3(1987.921, 2195.192, 22.34352), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node242, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node242)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_45")
  Node_AddSon(node198, node243)
  ParticleEmitter_SetCone(node243, MAT_Vector3(1923.922, 2314.067, 25.37159), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node243, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node243)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_46")
  Node_AddSon(node198, node244)
  ParticleEmitter_SetCone(node244, MAT_Vector3(1851.982, 2285.819, 24.76598), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node244, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node244)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_47")
  Node_AddSon(node198, node245)
  ParticleEmitter_SetCone(node245, MAT_Vector3(1904.218, 2241.294, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node245, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node245)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_48")
  Node_AddSon(node198, node246)
  ParticleEmitter_SetCone(node246, MAT_Vector3(1918.502, 2176.844, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node246, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node246)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_49")
  Node_AddSon(node198, node247)
  ParticleEmitter_SetCone(node247, MAT_Vector3(1972.429, 2124.648, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node247, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node247)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_50")
  Node_AddSon(node198, node248)
  ParticleEmitter_SetCone(node248, MAT_Vector3(1837.626, 2216.134, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node248, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node248)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_51")
  Node_AddSon(node198, node249)
  ParticleEmitter_SetCone(node249, MAT_Vector3(1862.713, 2145.409, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node249, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node249)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_52")
  Node_AddSon(node198, node250)
  ParticleEmitter_SetCone(node250, MAT_Vector3(1913.253, 2087.261, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node250, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node250)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_53")
  Node_AddSon(node198, node251)
  ParticleEmitter_SetCone(node251, MAT_Vector3(1956.682, 2025.802, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node251, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node251)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_54")
  Node_AddSon(node198, node252)
  ParticleEmitter_SetCone(node252, MAT_Vector3(2012.502, 1979.226, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node252, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node252)
  Game_LoadProgress_Advance(node0)
  node253 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_55")
  Node_AddSon(node198, node253)
  ParticleEmitter_SetCone(node253, MAT_Vector3(1741.889, 2235.453, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node253, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node253)
  Game_LoadProgress_Advance(node0)
  node254 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_56")
  Node_AddSon(node198, node254)
  ParticleEmitter_SetCone(node254, MAT_Vector3(1781.954, 2176.078, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node254, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node254)
  Game_LoadProgress_Advance(node0)
  node255 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_57")
  Node_AddSon(node198, node255)
  ParticleEmitter_SetCone(node255, MAT_Vector3(1820.464, 2109.49, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node255, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node255)
  Game_LoadProgress_Advance(node0)
  node256 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_58")
  Node_AddSon(node198, node256)
  ParticleEmitter_SetCone(node256, MAT_Vector3(1862.063, 2043.763, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node256, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node256)
  Game_LoadProgress_Advance(node0)
  node257 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_59")
  Node_AddSon(node198, node257)
  ParticleEmitter_SetCone(node257, MAT_Vector3(1905.207, 1978.466, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node257, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node257)
  Game_LoadProgress_Advance(node0)
  node258 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_60")
  Node_AddSon(node198, node258)
  ParticleEmitter_SetCone(node258, MAT_Vector3(1960.161, 1930.514, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node258, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node258)
  Game_LoadProgress_Advance(node0)
  node259 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_61")
  Node_AddSon(node198, node259)
  ParticleEmitter_SetCone(node259, MAT_Vector3(1682.939, 2202.976, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node259, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node259)
  Game_LoadProgress_Advance(node0)
  node260 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_62")
  Node_AddSon(node198, node260)
  ParticleEmitter_SetCone(node260, MAT_Vector3(1725.446, 2133.987, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node260, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node260)
  Game_LoadProgress_Advance(node0)
  node261 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_63")
  Node_AddSon(node198, node261)
  ParticleEmitter_SetCone(node261, MAT_Vector3(1768.589, 2068.69, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node261, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node261)
  Game_LoadProgress_Advance(node0)
  node262 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_64")
  Node_AddSon(node198, node262)
  ParticleEmitter_SetCone(node262, MAT_Vector3(1808.19, 2004.163, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node262, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node262)
  Game_LoadProgress_Advance(node0)
  node263 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_65")
  Node_AddSon(node198, node263)
  ParticleEmitter_SetCone(node263, MAT_Vector3(1844.907, 1942.1, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node263, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node263)
  Game_LoadProgress_Advance(node0)
  node264 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_66")
  Node_AddSon(node198, node264)
  ParticleEmitter_SetCone(node264, MAT_Vector3(1625.593, 2157.847, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node264, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node264)
  Game_LoadProgress_Advance(node0)
  node265 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_67")
  Node_AddSon(node198, node265)
  ParticleEmitter_SetCone(node265, MAT_Vector3(1663.74, 2091.327, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node265, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node265)
  Game_LoadProgress_Advance(node0)
  node266 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_68")
  Node_AddSon(node198, node266)
  ParticleEmitter_SetCone(node266, MAT_Vector3(1572.813, 2106.858, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node266, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node266)
  Game_LoadProgress_Advance(node0)
  node267 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_69")
  Node_AddSon(node198, node267)
  ParticleEmitter_SetCone(node267, MAT_Vector3(1511.634, 2047.638, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node267, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node267)
  Game_LoadProgress_Advance(node0)
  node268 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_71")
  Node_AddSon(node198, node268)
  ParticleEmitter_SetCone(node268, MAT_Vector3(1607.974, 2048.985, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node268, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node268)
  Game_LoadProgress_Advance(node0)
  node269 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_70")
  Node_AddSon(node198, node269)
  ParticleEmitter_SetCone(node269, MAT_Vector3(1702.859, 2033.804, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node269, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node269)
  Game_LoadProgress_Advance(node0)
  node270 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_72")
  Node_AddSon(node198, node270)
  ParticleEmitter_SetCone(node270, MAT_Vector3(1739.908, 1975.073, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node270, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node270)
  Game_LoadProgress_Advance(node0)
  node271 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_73")
  Node_AddSon(node198, node271)
  ParticleEmitter_SetCone(node271, MAT_Vector3(1642.589, 1984.914, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node271, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node271)
  Game_LoadProgress_Advance(node0)
  node272 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_74")
  Node_AddSon(node198, node272)
  ParticleEmitter_SetCone(node272, MAT_Vector3(1776.047, 1906.012, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node272, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node272)
  Game_LoadProgress_Advance(node0)
  node273 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_75")
  Node_AddSon(node198, node273)
  ParticleEmitter_SetCone(node273, MAT_Vector3(1567.076, 1985.922, 12.3648), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node273, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node273)
  Game_LoadProgress_Advance(node0)
  node274 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_76")
  Node_AddSon(node198, node274)
  ParticleEmitter_SetCone(node274, MAT_Vector3(1481.086, 1990.615, 16.44574), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node274, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node274)
  Game_LoadProgress_Advance(node0)
  node275 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_77")
  Node_AddSon(node198, node275)
  ParticleEmitter_SetCone(node275, MAT_Vector3(1679.274, 1922.051, 11.45792), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node275, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node275)
  Game_LoadProgress_Advance(node0)
  node276 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_78")
  Node_AddSon(node198, node276)
  ParticleEmitter_SetCone(node276, MAT_Vector3(1822.123, 1853.392, 19.6198), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node276, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node276)
  Game_LoadProgress_Advance(node0)
  node277 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_79")
  Node_AddSon(node198, node277)
  ParticleEmitter_SetCone(node277, MAT_Vector3(2107.179, 1945.57, 17.35261), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node277, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node277)
  Game_LoadProgress_Advance(node0)
  node278 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_80")
  Node_AddSon(node198, node278)
  ParticleEmitter_SetCone(node278, MAT_Vector3(1598.892, 1930.142, 8.737292), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node278, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node278)
  Game_LoadProgress_Advance(node0)
  node279 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_81")
  Node_AddSon(node198, node279)
  ParticleEmitter_SetCone(node279, MAT_Vector3(1719.19, 1860.979, 8.283854), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node279, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node279)
  Game_LoadProgress_Advance(node0)
  node280 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_82")
  Node_AddSon(node198, node280)
  ParticleEmitter_SetCone(node280, MAT_Vector3(1637.795, 1868.036, 8.737292), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node280, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node280)
  Game_LoadProgress_Advance(node0)
  node281 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_83")
  Node_AddSon(node198, node281)
  ParticleEmitter_SetCone(node281, MAT_Vector3(1747.399, 1796.488, 19.16637), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node281, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node281)
  Game_LoadProgress_Advance(node0)
  node282 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_84")
  Node_AddSon(node198, node282)
  ParticleEmitter_SetCone(node282, MAT_Vector3(1673.875, 1801.907, 12.3648), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node282, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node282)
  Game_LoadProgress_Advance(node0)
  node283 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_85")
  Node_AddSon(node198, node283)
  ParticleEmitter_SetCone(node283, MAT_Vector3(1522.84, 1920.938, 16.44574), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node283, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node283)
  Game_LoadProgress_Advance(node0)
  node284 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_86")
  Node_AddSon(node198, node284)
  ParticleEmitter_SetCone(node284, MAT_Vector3(1568.576, 1859.386, 11.91136), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node284, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node284)
  Game_LoadProgress_Advance(node0)
  node285 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_87")
  Node_AddSon(node198, node285)
  ParticleEmitter_SetCone(node285, MAT_Vector3(1599.608, 1798.918, 13.27167), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node285, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node285)
  Game_LoadProgress_Advance(node0)
  node286 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_88")
  Node_AddSon(node198, node286)
  ParticleEmitter_SetCone(node286, MAT_Vector3(1462.185, 1922.196, 23.24731), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node286, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node286)
  Game_LoadProgress_Advance(node0)
  node287 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_89")
  Node_AddSon(node198, node287)
  ParticleEmitter_SetCone(node287, MAT_Vector3(2041.373, 1919.743, 20.52668), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node287, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node287)
  Game_LoadProgress_Advance(node0)
  node288 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_90")
  Node_AddSon(node198, node288)
  ParticleEmitter_SetCone(node288, MAT_Vector3(1496.054, 1861.844, 9.19073), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node288, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node288)
  Game_LoadProgress_Advance(node0)
  node289 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_91")
  Node_AddSon(node198, node289)
  ParticleEmitter_SetCone(node289, MAT_Vector3(1531.697, 1799.645, 11.00448), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node289, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node289)
  Game_LoadProgress_Advance(node0)
  node290 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_92")
  Node_AddSon(node198, node290)
  ParticleEmitter_SetCone(node290, MAT_Vector3(1438.991, 1847.447, 14.17855), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node290, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node290)
  Game_LoadProgress_Advance(node0)
  node291 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_93")
  Node_AddSon(node198, node291)
  ParticleEmitter_SetCone(node291, MAT_Vector3(1303.35, 1760.965, 8.865322), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node291, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node291)
  Game_LoadProgress_Advance(node0)
  node292 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_95")
  Node_AddSon(node198, node292)
  ParticleEmitter_SetCone(node292, MAT_Vector3(1335.879, 1803.397, 10.09761), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node292, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node292)
  Game_LoadProgress_Advance(node0)
  node293 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_94")
  Node_AddSon(node198, node293)
  ParticleEmitter_SetCone(node293, MAT_Vector3(1392.154, 1815.732, 3.749473), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node293, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node293)
  Game_LoadProgress_Advance(node0)
  node294 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_96")
  Node_AddSon(node198, node294)
  ParticleEmitter_SetCone(node294, MAT_Vector3(1253.802, 1793.03, 18.52598), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node294, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node294)
  Game_LoadProgress_Advance(node0)
  node295 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_97")
  Node_AddSon(node198, node295)
  ParticleEmitter_SetCone(node295, MAT_Vector3(1184.764, 1650.483, 26.93882), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node295, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node295)
  Game_LoadProgress_Advance(node0)
  node296 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_98")
  Node_AddSon(node198, node296)
  ParticleEmitter_SetCone(node296, MAT_Vector3(1146.46, 1624.25, 26.93882), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node296, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node296)
  Game_LoadProgress_Advance(node0)
  node297 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_99")
  Node_AddSon(node198, node297)
  ParticleEmitter_SetCone(node297, MAT_Vector3(1084.11, 1574.038, 35.45715), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node297, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node297)
  Game_LoadProgress_Advance(node0)
  node298 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_100")
  Node_AddSon(node198, node298)
  ParticleEmitter_SetCone(node298, MAT_Vector3(1460.298, 1794.91, 10.09761), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node298, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node298)
  Game_LoadProgress_Advance(node0)
  node299 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_101")
  Node_AddSon(node198, node299)
  ParticleEmitter_SetCone(node299, MAT_Vector3(1273.395, 1833.957, 16.64015), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node299, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node299)
  Game_LoadProgress_Advance(node0)
  node300 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_102")
  Node_AddSon(node198, node300)
  ParticleEmitter_SetCone(node300, MAT_Vector3(1213.741, 1829.706, 17.03962), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node300, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node300)
  Game_LoadProgress_Advance(node0)
  node301 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_103")
  Node_AddSon(node198, node301)
  ParticleEmitter_SetCone(node301, MAT_Vector3(1165.678, 1872.843, 17.03962), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node301, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node301)
  Game_LoadProgress_Advance(node0)
  node302 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_104")
  Node_AddSon(node198, node302)
  ParticleEmitter_SetCone(node302, MAT_Vector3(1127.432, 1855.536, 12.0409), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node302, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node302)
  Game_LoadProgress_Advance(node0)
  node303 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_105")
  Node_AddSon(node198, node303)
  ParticleEmitter_SetCone(node303, MAT_Vector3(1219.047, 1870.538, 23.01705), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node303, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node303)
  Game_LoadProgress_Advance(node0)
  node304 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_106")
  Node_AddSon(node198, node304)
  ParticleEmitter_SetCone(node304, MAT_Vector3(1046.804, 1582.454, 53.8841), MAT_Vector3(50, 120, 0), 50, 50)
  Node_ParseIniFile(node304, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node304)
  Game_LoadProgress_Advance(node0)
  node305 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_107")
  Node_AddSon(node198, node305)
  ParticleEmitter_SetCone(node305, MAT_Vector3(1123.22, 1592.569, 38.3451), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node305, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node305)
  Game_LoadProgress_Advance(node0)
  node306 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_108")
  Node_AddSon(node198, node306)
  ParticleEmitter_SetCone(node306, MAT_Vector3(1219.453, 1671.569, 25.75401), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node306, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node306)
  Game_LoadProgress_Advance(node0)
  node307 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_109")
  Node_AddSon(node198, node307)
  ParticleEmitter_SetCone(node307, MAT_Vector3(1244.003, 1703.301, 23.05844), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node307, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node307)
  Game_LoadProgress_Advance(node0)
  node308 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_110")
  Node_AddSon(node198, node308)
  ParticleEmitter_SetCone(node308, MAT_Vector3(1261.212, 1729.656, 17.21804), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node308, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node308)
  Game_LoadProgress_Advance(node0)
  node309 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_111")
  Node_AddSon(node198, node309)
  ParticleEmitter_SetCone(node309, MAT_Vector3(1010.57, 1596.785, 85.36851), MAT_Vector3(45, 135, 0), 50, 50)
  Node_ParseIniFile(node309, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node309)
  Game_LoadProgress_Advance(node0)
  node310 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_112")
  Node_AddSon(node198, node310)
  ParticleEmitter_SetCone(node310, MAT_Vector3(966.4508, 1614.111, 117.1514), MAT_Vector3(45, 135, 0), 50, 50)
  Node_ParseIniFile(node310, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node310)
  Game_LoadProgress_Advance(node0)
  node311 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_113")
  Node_AddSon(node198, node311)
  ParticleEmitter_SetCone(node311, MAT_Vector3(946.1016, 1619.436, 153.859), MAT_Vector3(60, 145, 0), 50, 50)
  Node_ParseIniFile(node311, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node311)
  Game_LoadProgress_Advance(node0)
  node312 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_114")
  Node_AddSon(node198, node312)
  ParticleEmitter_SetCone(node312, MAT_Vector3(920.0522, 1620.167, 186.1445), MAT_Vector3(90, 145, 0), 50, 50)
  Node_ParseIniFile(node312, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node312)
  Game_LoadProgress_Advance(node0)
  node313 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_115")
  Node_AddSon(node198, node313)
  ParticleEmitter_SetCone(node313, MAT_Vector3(851.7745, 1667.287, 295.6727), MAT_Vector3(90, 145, 0), 50, 50)
  Node_ParseIniFile(node313, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node313)
  Game_LoadProgress_Advance(node0)
  node314 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_116")
  Node_AddSon(node198, node314)
  ParticleEmitter_SetCone(node314, MAT_Vector3(840.4026, 1666.637, 344.1366), MAT_Vector3(100, 145, 0), 50, 50)
  Node_ParseIniFile(node314, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node314)
  Game_LoadProgress_Advance(node0)
  node315 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_117")
  Node_AddSon(node198, node315)
  ParticleEmitter_SetCone(node315, MAT_Vector3(815.3444, 1655.371, 367.5622), MAT_Vector3(110, 145, 0), 50, 50)
  Node_ParseIniFile(node315, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node315)
  Game_LoadProgress_Advance(node0)
  node316 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_118")
  Node_AddSon(node198, node316)
  ParticleEmitter_SetCone(node316, MAT_Vector3(792.7054, 1653.062, 389.7267), MAT_Vector3(110, 145, 0), 50, 50)
  Node_ParseIniFile(node316, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node316)
  Game_LoadProgress_Advance(node0)
  node317 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_119")
  Node_AddSon(node198, node317)
  ParticleEmitter_SetCone(node317, MAT_Vector3(895.4108, 1638.634, 230.1876), MAT_Vector3(90, 145, 0), 50, 50)
  Node_ParseIniFile(node317, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node317)
  Game_LoadProgress_Advance(node0)
  node318 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_120")
  Node_AddSon(node198, node318)
  ParticleEmitter_SetCone(node318, MAT_Vector3(874.2393, 1651.445, 263.5022), MAT_Vector3(90, 145, 0), 50, 50)
  Node_ParseIniFile(node318, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node318)
  Game_LoadProgress_Advance(node0)
  node319 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_121")
  Node_AddSon(node198, node319)
  ParticleEmitter_SetCone(node319, MAT_Vector3(770.9587, 1633.989, 433.8863), MAT_Vector3(140, 145, 0), 50, 50)
  Node_ParseIniFile(node319, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node319)
  Game_LoadProgress_Advance(node0)
  node320 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_122")
  Node_AddSon(node198, node320)
  ParticleEmitter_SetCone(node320, MAT_Vector3(751.1696, 1607.234, 465.0083), MAT_Vector3(140, 145, 0), 50, 50)
  Node_ParseIniFile(node320, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node320)
  Game_LoadProgress_Advance(node0)
  node321 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_123")
  Node_AddSon(node198, node321)
  ParticleEmitter_SetCone(node321, MAT_Vector3(727.8955, 1581.524, 492.4594), MAT_Vector3(140, 145, 0), 50, 50)
  Node_ParseIniFile(node321, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node321)
  Game_LoadProgress_Advance(node0)
  node322 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_124")
  Node_AddSon(node198, node322)
  ParticleEmitter_SetCone(node322, MAT_Vector3(724.6546, 1548.427, 498.652), MAT_Vector3(160, 145, 0), 50, 50)
  Node_ParseIniFile(node322, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node322)
  Game_LoadProgress_Advance(node0)
  node323 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_125")
  Node_AddSon(node198, node323)
  ParticleEmitter_SetCone(node323, MAT_Vector3(2506.512, 2153.906, 20.24035), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node323, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node323)
  Game_LoadProgress_Advance(node0)
  node324 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_126")
  Node_AddSon(node198, node324)
  ParticleEmitter_SetCone(node324, MAT_Vector3(2472.399, 2083.546, 20.24035), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node324, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node324)
  Game_LoadProgress_Advance(node0)
  node325 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_127")
  Node_AddSon(node198, node325)
  ParticleEmitter_SetCone(node325, MAT_Vector3(2508.355, 2107.199, 20.24035), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node325, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node325)
  Game_LoadProgress_Advance(node0)
  node326 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_128")
  Node_AddSon(node198, node326)
  ParticleEmitter_SetCone(node326, MAT_Vector3(2562.341, 2124.077, 20.24035), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node326, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node326)
  Game_LoadProgress_Advance(node0)
  node327 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_129")
  Node_AddSon(node198, node327)
  ParticleEmitter_SetCone(node327, MAT_Vector3(2547.759, 2167.978, 20.24035), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node327, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node327)
  Game_LoadProgress_Advance(node0)
  node328 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_130")
  Node_AddSon(node198, node328)
  ParticleEmitter_SetCone(node328, MAT_Vector3(2564.935, 2205.728, 20.24035), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node328, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node328)
  Game_LoadProgress_Advance(node0)
  node329 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_131")
  Node_AddSon(node198, node329)
  ParticleEmitter_SetCone(node329, MAT_Vector3(2613.568, 2177.83, 29.67611), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node329, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node329)
  Game_LoadProgress_Advance(node0)
  node330 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_132")
  Node_AddSon(node198, node330)
  ParticleEmitter_SetCone(node330, MAT_Vector3(2656.76, 2184.038, 29.67611), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node330, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node330)
  Game_LoadProgress_Advance(node0)
  node331 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_133")
  Node_AddSon(node198, node331)
  ParticleEmitter_SetCone(node331, MAT_Vector3(2613.568, 2177.83, 29.67611), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node331, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node331)
  Game_LoadProgress_Advance(node0)
  node332 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_134")
  Node_AddSon(node198, node332)
  ParticleEmitter_SetCone(node332, MAT_Vector3(2586.7, 2242.688, 29.67611), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node332, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node332)
  Game_LoadProgress_Advance(node0)
  node333 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_135")
  Node_AddSon(node198, node333)
  ParticleEmitter_SetCone(node333, MAT_Vector3(2637.187, 2242.374, 29.67611), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node333, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node333)
  Game_LoadProgress_Advance(node0)
  node334 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_136")
  Node_AddSon(node198, node334)
  ParticleEmitter_SetCone(node334, MAT_Vector3(2685.073, 2217.252, 29.67611), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node334, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node334)
  Game_LoadProgress_Advance(node0)
  node335 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_137")
  Node_AddSon(node198, node335)
  ParticleEmitter_SetCone(node335, MAT_Vector3(2670.283, 2266.667, 29.67611), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node335, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node335)
  Game_LoadProgress_Advance(node0)
  node336 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_138")
  Node_AddSon(node198, node336)
  ParticleEmitter_SetCone(node336, MAT_Vector3(2695.439, 2169.272, 29.67611), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node336, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node336)
  Game_LoadProgress_Advance(node0)
  node337 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_139")
  Node_AddSon(node198, node337)
  ParticleEmitter_SetCone(node337, MAT_Vector3(2756.795, 2173.167, 29.67611), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node337, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node337)
  Game_LoadProgress_Advance(node0)
  node338 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_140")
  Node_AddSon(node198, node338)
  ParticleEmitter_SetCone(node338, MAT_Vector3(2739.984, 2216.137, 29.67611), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node338, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node338)
  Game_LoadProgress_Advance(node0)
  node339 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_147")
  Node_AddSon(node198, node339)
  ParticleEmitter_SetCone(node339, MAT_Vector3(2629.472, 2306.222, 29.67611), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node339, "osd/fx_pe/fx_pe_magma03.osd")
  Node_EnterSimulation(node339)
  Game_LoadProgress_Advance(node0)
  node340 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_149")
  Node_AddSon(node198, node340)
  ParticleEmitter_SetCone(node340, MAT_Vector3(667.113606, 1184.598295, 602.194856), MAT_Vector3(-115.483623, 35, -180), 50, 50)
  Node_ParseIniFile(node340, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node340)
  Game_LoadProgress_Advance(node0)
  node341 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_150")
  Node_AddSon(node198, node341)
  ParticleEmitter_SetCone(node341, MAT_Vector3(705.183565, 1172.434725, 591.807051), MAT_Vector3(-101.765169, 35, 180), 50, 50)
  Node_ParseIniFile(node341, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node341)
  Game_LoadProgress_Advance(node0)
  node342 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_151")
  Node_AddSon(node198, node342)
  ParticleEmitter_SetCone(node342, MAT_Vector3(747.183291, 1170.818189, 582.064306), MAT_Vector3(-116.859797, 35, -180), 50, 50)
  Node_ParseIniFile(node342, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node342)
  Game_LoadProgress_Advance(node0)
  node343 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_152")
  Node_AddSon(node198, node343)
  ParticleEmitter_SetCone(node343, MAT_Vector3(785.417483, 1158.479351, 526.291498), MAT_Vector3(-151.334137, 35, 180), 50, 50)
  Node_ParseIniFile(node343, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node343)
  Game_LoadProgress_Advance(node0)
  node344 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_153")
  Node_AddSon(node198, node344)
  ParticleEmitter_SetCone(node344, MAT_Vector3(790.109115, 1139.551605, 497.330212), MAT_Vector3(-156.812154, 35, -180), 50, 50)
  Node_ParseIniFile(node344, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node344)
  Game_LoadProgress_Advance(node0)
  node345 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_154")
  Node_AddSon(node198, node345)
  ParticleEmitter_SetCone(node345, MAT_Vector3(804.246389, 1126.717085, 450.521324), MAT_Vector3(-176.62176, 35, 180), 50, 50)
  Node_ParseIniFile(node345, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node345)
  Game_LoadProgress_Advance(node0)
  node346 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_155")
  Node_AddSon(node198, node346)
  ParticleEmitter_SetCone(node346, MAT_Vector3(812.1871, 1098.754762, 413.396326), MAT_Vector3(157.24969, 35, -180), 50, 50)
  Node_ParseIniFile(node346, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node346)
  Game_LoadProgress_Advance(node0)
  node347 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_156")
  Node_AddSon(node198, node347)
  ParticleEmitter_SetCone(node347, MAT_Vector3(785.395427, 1033.979695, 385.809384), MAT_Vector3(143.909482, 35, 180), 50, 50)
  Node_ParseIniFile(node347, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node347)
  Game_LoadProgress_Advance(node0)
  node348 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_157")
  Node_AddSon(node198, node348)
  ParticleEmitter_SetCone(node348, MAT_Vector3(803.855542, 1065.954905, 399.306613), MAT_Vector3(157.671482, 35, -180), 50, 50)
  Node_ParseIniFile(node348, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node348)
  Game_LoadProgress_Advance(node0)
  node349 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_158")
  Node_AddSon(node198, node349)
  ParticleEmitter_SetCone(node349, MAT_Vector3(748.099887, 1001.290381, 342.911131), MAT_Vector3(-153.3041, 35, 180), 50, 50)
  Node_ParseIniFile(node349, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node349)
  Game_LoadProgress_Advance(node0)
  node350 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_159")
  Node_AddSon(node198, node350)
  ParticleEmitter_SetCone(node350, MAT_Vector3(767.999585, 946.572763, 283.967801), MAT_Vector3(-118.27992, 35, -180), 50, 50)
  Node_ParseIniFile(node350, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node350)
  Game_LoadProgress_Advance(node0)
  node351 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_160")
  Node_AddSon(node198, node351)
  ParticleEmitter_SetCone(node351, MAT_Vector3(798.223238, 935.634092, 263.844401), MAT_Vector3(-99.350882, 35, 180), 50, 50)
  Node_ParseIniFile(node351, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node351)
  Game_LoadProgress_Advance(node0)
  node352 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_161")
  Node_AddSon(node198, node352)
  ParticleEmitter_SetCone(node352, MAT_Vector3(832.122804, 932.894037, 251.488583), MAT_Vector3(-96.257692, 35, -180), 50, 50)
  Node_ParseIniFile(node352, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node352)
  Game_LoadProgress_Advance(node0)
  node353 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_162")
  Node_AddSon(node198, node353)
  ParticleEmitter_SetCone(node353, MAT_Vector3(859.176473, 928.087349, 225.696438), MAT_Vector3(-101.413607, 35, 180), 50, 50)
  Node_ParseIniFile(node353, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node353)
  Game_LoadProgress_Advance(node0)
  node354 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_163")
  Node_AddSon(node198, node354)
  ParticleEmitter_SetCone(node354, MAT_Vector3(884.186528, 922.226988, 201.144806), MAT_Vector3(-110.074948, 35, -180), 50, 50)
  Node_ParseIniFile(node354, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node354)
  Game_LoadProgress_Advance(node0)
  node355 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_164")
  Node_AddSon(node198, node355)
  ParticleEmitter_SetCone(node355, MAT_Vector3(643.958817, 1217.588869, 622.226458), MAT_Vector3(-137.337639, 35, 180), 50, 50)
  Node_ParseIniFile(node355, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node355)
  Game_LoadProgress_Advance(node0)
  node356 = Node_CreateNode("nod_fx_particleemitter", "fx_pe_magma03_166")
  Node_AddSon(node198, node356)
  ParticleEmitter_SetCone(node356, MAT_Vector3(749.097816, 968.290488, 302.477987), MAT_Vector3(-137.3376, 45, 180), 50, 50)
  Node_ParseIniFile(node356, "osd/fx_pe/fx_pe_magma02.osd")
  Node_EnterSimulation(node356)
  Game_LoadProgress_Advance(node0)
  node357 = Node_CreateNode("nod_vessel", "dir_explosion_magma_05_1")
  Node_AddSon(node198, node357)
  Body_SetCS(node357, MAT_Vector3(563.329903, 1364.918308, 821.788753), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node357, "osd/dir/dir_explosion_magma_05.osd")
  Body_SetFriendOrFoeID(node357, 0)
  Body_SetNameKey(node357, -1)
  Body_SetCargoKey(node357, -1, 0)
  Body_SetCargoKey(node357, -1, 1)
  Body_SetCargoKey(node357, -1, 2)
  Node_EnterSimulation(node357)
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
SetEnemyMatrixElement(3, 1, F)
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
SetEnemyMatrixElement(2, 2, N)
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
SetEnemyMatrixElement(1, 3, F)
SetEnemyMatrixElement(2, 3, F)
SetEnemyMatrixElement(3, 3, N)
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
                                                                                                                                                                                                                if not (o4887.Value ~= True) then
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
end, ReCalculate = function()
  o3.SetStateValue(o3.GetCalculated())
end, StartCalculate = function()
  o3["Value"] = o3.GetCalculated()
end, ChangeTo1 = function()
  Game_MissionEnd(GetGameNode(), 2)
end, SetStateValue = function(L0)
  if not (o3.Value == L0) then
    o3["Value"] = L0
    if not (L0 ~= 1) then
      o3.ChangeTo1()
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
                                                                                                                                                                                                                if not (o4910.Value == True) then
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
end, SetStateValue_Destroyed = function(L0, L1)
  o34.SetStateValue(L1)
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
o34 = { [nil] = {}, Start = function()
  o34["Value"] = False
  o4910.StartCalculate()
end, SetStateValue = function(L0)
  if not (o34.Value == L0) then
    o34["Value"] = L0
    o4910.ReCalculate()
  end
end }
S_o85 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o85, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o85, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o85, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o85, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o85, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o89.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o86.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o86 = { [nil] = {}, GetCalculated = function()
  if not (o183.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o86.SetStateValue(o86.GetCalculated())
end, StartCalculate = function()
  o86["Value"] = o86.GetCalculated()
end, SetStateValue = function(L0)
  if not (o86.Value == L0) then
    o86["Value"] = L0
    CallFunction(o85, "ProcesseStateChange")
  end
end }
o89 = { [nil] = {}, Start = function()
  o89["Value"] = False
  o134.StartCalculate()
  o4955.StartCalculate()
  o4957.StartCalculate()
end, SetStateValue = function(L0)
  if not (o89.Value == L0) then
    o89["Value"] = L0
    o134.ReCalculate()
    o4955.ReCalculate()
    o4957.ReCalculate()
  end
end }
S_o133 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o133, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o133, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o133, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o134.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o134 = { [nil] = {}, GetCalculated = function()
  if not (o89.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o134.SetStateValue(o134.GetCalculated())
end, StartCalculate = function()
  o134["Value"] = o134.GetCalculated()
end, SetStateValue = function(L0)
  if not (o134.Value == L0) then
    o134["Value"] = L0
    CallFunction(o133, "ProcesseStateChange")
  end
end }
S_o180 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o180, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o180, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o180, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetFriendlyFireMode(L0.Node, 0)
  CallFunction(o180, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o183.SetStateValue(L1)
end, SetStateValue_KineticShield75 = function(L0, L1)
  o184.SetStateValue(L1)
end, SetStateValue_KineticShield25 = function(L0, L1)
  o186.SetStateValue(L1)
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
o183 = { [nil] = {}, Start = function()
  o183["Value"] = False
  o86.StartCalculate()
  o4782.StartCalculate()
  o4784.StartCalculate()
  o4786.StartCalculate()
  o4881.StartCalculate()
end, SetStateValue = function(L0)
  if not (o183.Value == L0) then
    o183["Value"] = L0
    o86.ReCalculate()
    o4782.ReCalculate()
    o4784.ReCalculate()
    o4786.ReCalculate()
    o4881.ReCalculate()
  end
end }
o184 = { [nil] = {}, Start = function()
  o184["Value"] = False
  o4883.StartCalculate()
end, SetStateValue = function(L0)
  if not (o184.Value == L0) then
    o184["Value"] = L0
    o4883.ReCalculate()
  end
end }
o186 = { [nil] = {}, Start = function()
  o186["Value"] = False
  o4884.StartCalculate()
end, SetStateValue = function(L0)
  if not (o186.Value == L0) then
    o186["Value"] = L0
    o4884.ReCalculate()
  end
end }
S_o227 = { [nil] = {}, Start = function(L0)

end }
S_o273 = { [nil] = {}, Start = function(L0)

end }
S_o319 = { [nil] = {}, Start = function(L0)

end }
S_o365 = { [nil] = {}, Start = function(L0)

end }
S_o411 = { [nil] = {}, Start = function(L0)

end }
S_o457 = { [nil] = {}, Start = function(L0)

end }
S_o503 = { [nil] = {}, Start = function(L0)

end }
S_o549 = { [nil] = {}, Start = function(L0)

end }
S_o595 = { [nil] = {}, Start = function(L0)

end }
S_o641 = { [nil] = {}, Start = function(L0)

end }
S_o687 = { [nil] = {}, Start = function(L0)

end }
S_o733 = { [nil] = {}, Start = function(L0)

end }
S_o779 = { [nil] = {}, Start = function(L0)

end }
S_o825 = { [nil] = {}, Start = function(L0)

end }
S_o871 = { [nil] = {}, Start = function(L0)

end }
S_o917 = { [nil] = {}, Start = function(L0)

end }
S_o963 = { [nil] = {}, Start = function(L0)

end }
S_o1009 = { [nil] = {}, Start = function(L0)

end }
S_o1055 = { [nil] = {}, Start = function(L0)

end }
S_o1101 = { [nil] = {}, Start = function(L0)

end }
S_o1147 = { [nil] = {}, Start = function(L0)

end }
S_o1193 = { [nil] = {}, Start = function(L0)

end }
S_o1239 = { [nil] = {}, Start = function(L0)

end }
S_o1285 = { [nil] = {}, Start = function(L0)

end }
S_o1331 = { [nil] = {}, Start = function(L0)

end }
S_o1377 = { [nil] = {}, Start = function(L0)

end }
S_o1423 = { [nil] = {}, Start = function(L0)

end }
S_o1469 = { [nil] = {}, Start = function(L0)

end }
S_o1515 = { [nil] = {}, Start = function(L0)

end }
S_o1561 = { [nil] = {}, Start = function(L0)

end }
S_o1607 = { [nil] = {}, Start = function(L0)

end }
S_o1653 = { [nil] = {}, Start = function(L0)

end }
S_o1699 = { [nil] = {}, Start = function(L0)

end }
S_o1745 = { [nil] = {}, Start = function(L0)

end }
S_o1791 = { [nil] = {}, Start = function(L0)

end }
S_o1837 = { [nil] = {}, Start = function(L0)

end }
S_o1883 = { [nil] = {}, Start = function(L0)

end }
S_o1929 = { [nil] = {}, Start = function(L0)

end }
S_o1975 = { [nil] = {}, Start = function(L0)

end }
S_o2021 = { [nil] = {}, Start = function(L0)

end }
S_o2067 = { [nil] = {}, Start = function(L0)

end }
S_o2113 = { [nil] = {}, Start = function(L0)

end }
S_o2159 = { [nil] = {}, Start = function(L0)

end }
S_o2205 = { [nil] = {}, Start = function(L0)

end }
S_o2251 = { [nil] = {}, Start = function(L0)

end }
S_o2297 = { [nil] = {}, Start = function(L0)

end }
S_o2343 = { [nil] = {}, Start = function(L0)

end }
S_o2389 = { [nil] = {}, Start = function(L0)

end }
S_o2435 = { [nil] = {}, Start = function(L0)

end }
S_o2481 = { [nil] = {}, Start = function(L0)

end }
S_o2527 = { [nil] = {}, Start = function(L0)

end }
S_o2573 = { [nil] = {}, Start = function(L0)

end }
S_o2619 = { [nil] = {}, Start = function(L0)

end }
S_o2665 = { [nil] = {}, Start = function(L0)

end }
S_o2711 = { [nil] = {}, Start = function(L0)

end }
S_o2757 = { [nil] = {}, Start = function(L0)

end }
S_o2803 = { [nil] = {}, Start = function(L0)

end }
S_o2849 = { [nil] = {}, Start = function(L0)

end }
S_o2895 = { [nil] = {}, Start = function(L0)

end }
S_o2941 = { [nil] = {}, Start = function(L0)

end }
S_o2987 = { [nil] = {}, Start = function(L0)

end }
S_o3033 = { [nil] = {}, Start = function(L0)

end }
S_o3079 = { [nil] = {}, Start = function(L0)

end }
S_o3125 = { [nil] = {}, Start = function(L0)

end }
S_o3171 = { [nil] = {}, Start = function(L0)

end }
S_o3217 = { [nil] = {}, Start = function(L0)

end }
S_o3263 = { [nil] = {}, Start = function(L0)

end }
S_o3309 = { [nil] = {}, Start = function(L0)

end }
S_o3355 = { [nil] = {}, Start = function(L0)

end }
S_o3401 = { [nil] = {}, Start = function(L0)

end }
S_o3447 = { [nil] = {}, Start = function(L0)

end }
S_o3493 = { [nil] = {}, Start = function(L0)

end }
S_o3539 = { [nil] = {}, Start = function(L0)

end }
S_o3585 = { [nil] = {}, Start = function(L0)

end }
S_o3631 = { [nil] = {}, Start = function(L0)

end }
S_o3677 = { [nil] = {}, Start = function(L0)

end }
S_o3723 = { [nil] = {}, Start = function(L0)

end }
S_o3769 = { [nil] = {}, Start = function(L0)

end }
S_o3815 = { [nil] = {}, Start = function(L0)

end }
S_o3861 = { [nil] = {}, Start = function(L0)

end }
S_o3907 = { [nil] = {}, Start = function(L0)

end }
S_o3953 = { [nil] = {}, Start = function(L0)

end }
S_o3999 = { [nil] = {}, Start = function(L0)

end }
S_o4045 = { [nil] = {}, Start = function(L0)

end }
S_o4091 = { [nil] = {}, Start = function(L0)

end }
S_o4137 = { [nil] = {}, Start = function(L0)

end }
S_o4183 = { [nil] = {}, Start = function(L0)

end }
S_o4229 = { [nil] = {}, Start = function(L0)

end }
S_o4275 = { [nil] = {}, Start = function(L0)

end }
S_o4321 = { [nil] = {}, Start = function(L0)

end }
S_o4367 = { [nil] = {}, Start = function(L0)

end }
S_o4413 = { [nil] = {}, Start = function(L0)

end }
S_o4459 = { [nil] = {}, Start = function(L0)

end }
S_o4505 = { [nil] = {}, Start = function(L0)

end }
S_o4551 = { [nil] = {}, Start = function(L0)

end }
S_o4597 = { [nil] = {}, Start = function(L0)

end }
S_o4643 = { [nil] = {}, Start = function(L0)

end }
S_o4689 = { [nil] = {}, Start = function(L0)

end }
S_o4735 = { [nil] = {}, Start = function(L0)

end }
S_o4781 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 380, 5)
  CallFunction(o4781, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4781, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4781, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4782.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4782 = { [nil] = {}, GetCalculated = function()
  if not (o183.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4782.SetStateValue(o4782.GetCalculated())
end, StartCalculate = function()
  o4782["Value"] = o4782.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4782.Value == L0) then
    DelayedFunction(5, o4782, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4782.Value == L0) then
    o4782["Value"] = L0
    CallFunction(o4781, "ProcesseStateChange")
  end
end }
S_o4783 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 380, 5)
  CallFunction(o4783, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4783, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4783, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4784.Value ~= True) then
        L1 = 0
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
  if not (o183.Value ~= True) then
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
    DelayedFunction(5, o4784, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4784.Value == L0) then
    o4784["Value"] = L0
    CallFunction(o4783, "ProcesseStateChange")
  end
end }
S_o4785 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 80, 5)
  CallFunction(o4785, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4785, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4785, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4786.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4786 = { [nil] = {}, GetCalculated = function()
  if not (o183.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4786.SetStateValue(o4786.GetCalculated())
end, StartCalculate = function()
  o4786["Value"] = o4786.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4786.Value == L0) then
    DelayedFunction(5, o4786, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4786.Value == L0) then
    o4786["Value"] = L0
    CallFunction(o4785, "ProcesseStateChange")
  end
end }
S_o4787 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4787, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4788 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4788, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4789 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4789, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4790 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4790, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4791 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4791, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4792 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4792, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4793 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4793, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4794 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4794, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4795 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4795, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4796 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4796, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4797 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4797, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4798 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4798, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4799 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4799, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4800 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4800, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4801 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4801, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4802 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4802, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4803 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4803, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4804 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4804, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4805 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4805, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4806 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4806, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4807 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4807, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4808 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4808, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4809 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4809, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4810 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4810, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4811 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4811, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4812 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4812, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4813 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4813, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4814 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4814, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4815 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4815, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4816 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4816, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4817 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4817, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4818 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4818, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4819 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4819, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4820 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4820, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4821 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4821, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4822 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 300, 1)
  CallFunction(o4822, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4823 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 20, 20)
  Node_EnterSimulation(L0.Node)
  CallFunction(o4823, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4824 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4824, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4824, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4824, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o4824, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4824, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4824, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4829.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4825.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4825 = { [nil] = {}, GetCalculated = function()
  if not (o4870.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4825.SetStateValue(o4825.GetCalculated())
end, StartCalculate = function()
  o4825["Value"] = o4825.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4825.Value == L0) then
    o4825["Value"] = L0
    CallFunction(o4824, "ProcesseStateChange")
  end
end }
o4829 = { [nil] = {}, Start = function()
  o4829["Value"] = False
  o4831.StartCalculate()
  o4871.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4829.Value == L0) then
    o4829["Value"] = L0
    o4831.ReCalculate()
    o4871.ReCalculate()
  end
end }
S_o4830 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4830, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4830, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4830, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o4830, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4830, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4830, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4835.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4831.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4831 = { [nil] = {}, GetCalculated = function()
  if not (o4829.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4831.SetStateValue(o4831.GetCalculated())
end, StartCalculate = function()
  o4831["Value"] = o4831.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4831.Value == L0) then
    o4831["Value"] = L0
    CallFunction(o4830, "ProcesseStateChange")
  end
end }
o4835 = { [nil] = {}, Start = function()
  o4835["Value"] = False
  o4872.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4835.Value == L0) then
    o4835["Value"] = L0
    o4872.ReCalculate()
  end
end }
S_o4836 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4836, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4836, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4836, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o4836, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4836, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4836, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4841.SetStateValue(L1)
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
o4841 = { [nil] = {}, Start = function()
  o4841["Value"] = False
  o4877.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4841.Value == L0) then
    o4841["Value"] = L0
    o4877.ReCalculate()
  end
end }
S_o4842 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4842, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4842, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4842, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o4842, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4842, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4842, "Code6")
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
S_o4848 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4848, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4848, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4848, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o4848, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4848, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4848, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4853.SetStateValue(L1)
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
o4853 = { [nil] = {}, Start = function()
  o4853["Value"] = False
  o4880.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4853.Value == L0) then
    o4853["Value"] = L0
    o4880.ReCalculate()
  end
end }
S_o4854 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o4854, "Code9")
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
o4868 = { [nil] = {}, GetCalculated = function()
  if not (o4917.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4868.SetStateValue(o4868.GetCalculated())
end, StartCalculate = function()
  o4868["Value"] = o4868.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4854.Node, o4854.Node, 352)
  Game_SetWayPoint(GetGameNode(), o4919.Node)
  SED_SetTaskTextKey(2101, -1, -1)
end, SetStateValue = function(L0)
  if not (o4868.Value == L0) then
    DelayedFunction(10, o4868, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4868.Value == L0) then
    o4868["Value"] = L0
    if not (L0 ~= 1) then
      o4868.ChangeTo1()
    end
  end
end }
o4869 = { [nil] = {}, GetCalculated = function()
  if not (o4922.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4869.SetStateValue(o4869.GetCalculated())
end, StartCalculate = function()
  o4869["Value"] = o4869.GetCalculated()
  o4870.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4854.Node, o4854.Node, 353)
end, SetStateValue = function(L0)
  if not (o4869.Value == L0) then
    DelayedFunction(5, o4869, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4869.Value == L0) then
    o4869["Value"] = L0
    o4870.ReCalculate()
    if not (L0 ~= 1) then
      o4869.ChangeTo1()
    end
  end
end }
o4870 = { [nil] = {}, GetCalculated = function()
  if not (o4869.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4870.SetStateValue(o4870.GetCalculated())
end, StartCalculate = function()
  o4870["Value"] = o4870.GetCalculated()
  o4825.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4854.Node, o4854.Node, 354)
  SED_SetTaskTextKey(2102, -1, -1)
end, SetStateValue = function(L0)
  if not (o4870.Value == L0) then
    DelayedFunction(7, o4870, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4870.Value == L0) then
    o4870["Value"] = L0
    o4825.ReCalculate()
    if not (L0 ~= 1) then
      o4870.ChangeTo1()
    end
  end
end }
o4871 = { [nil] = {}, GetCalculated = function()
  if not (o4829.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4871.SetStateValue(o4871.GetCalculated())
end, StartCalculate = function()
  o4871["Value"] = o4871.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4854.Node, o4854.Node, 355)
  Game_SetWayPoint(GetGameNode(), o4924.Node)
  SED_SetTaskTextKey(2103, -1, -1)
end, SetStateValue = function(L0)
  if not (o4871.Value == L0) then
    o4871["Value"] = L0
    if not (L0 ~= 1) then
      o4871.ChangeTo1()
    end
  end
end }
o4872 = { [nil] = {}, GetCalculated = function()
  if not (o4835.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4872.SetStateValue(o4872.GetCalculated())
end, StartCalculate = function()
  o4872["Value"] = o4872.GetCalculated()
  o4875.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4854.Node, o4854.Node, 357)
  Game_SetWayPoint(GetGameNode(), o4929.Node)
  SED_SetTaskTextKey(2104, -1, -1)
end, SetStateValue = function(L0)
  if not (o4872.Value == L0) then
    DelayedFunction(3, o4872, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4872.Value == L0) then
    o4872["Value"] = L0
    o4875.ReCalculate()
    if not (L0 ~= 1) then
      o4872.ChangeTo1()
    end
  end
end }
o4873 = { [nil] = {}, GetCalculated = function()
  if not (o4917.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4873.SetStateValue(o4873.GetCalculated())
end, StartCalculate = function()
  o4873["Value"] = o4873.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  SED_SetTaskTextKey(2107, -1, -1)
end, SetStateValue = function(L0)
  if not (o4873.Value == L0) then
    o4873["Value"] = L0
    if not (L0 ~= 1) then
      o4873.ChangeTo1()
    end
  end
end }
o4874 = { [nil] = {}, GetCalculated = function()
  if not (o4947.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4874.SetStateValue(o4874.GetCalculated())
end, StartCalculate = function()
  o4874["Value"] = o4874.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
end, SetStateValue = function(L0)
  if not (o4874.Value == L0) then
    DelayedFunction(2, o4874, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4874.Value == L0) then
    o4874["Value"] = L0
    if not (L0 ~= 1) then
      o4874.ChangeTo1()
    end
  end
end }
o4875 = { [nil] = {}, GetCalculated = function()
  if not (o4872.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4875.SetStateValue(o4875.GetCalculated())
end, StartCalculate = function()
  o4875["Value"] = o4875.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4854.Node, o4854.Node, 358)
  SED_SetTaskTextKey(2105, -1, -1)
  Game_SetWayPoint(GetGameNode(), o4934.Node)
end, SetStateValue = function(L0)
  if not (o4875.Value == L0) then
    DelayedFunction(20, o4875, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4875.Value == L0) then
    o4875["Value"] = L0
    if not (L0 ~= 1) then
      o4875.ChangeTo1()
    end
  end
end }
o4876 = { [nil] = {}, GetCalculated = function()
  if not (o4937.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4876.SetStateValue(o4876.GetCalculated())
end, StartCalculate = function()
  o4876["Value"] = o4876.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4854.Node, o4854.Node, 359)
  SED_SetTaskTextKey(2106, -1, -1)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
end, SetStateValue = function(L0)
  if not (o4876.Value == L0) then
    DelayedFunction(3, o4876, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4876.Value == L0) then
    o4876["Value"] = L0
    if not (L0 ~= 1) then
      o4876.ChangeTo1()
    end
  end
end }
o4877 = { [nil] = {}, GetCalculated = function()
  if not (o4841.Value == True) then
    if not (o4942.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o4877.SetStateValue(o4877.GetCalculated())
end, StartCalculate = function()
  o4877["Value"] = o4877.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4854.Node, o4854.Node, 360)
  Game_SetWayPoint(GetGameNode(), o4944.Node)
  SED_SetTaskTextKey(2107, -1, -1)
end, SetStateValue = function(L0)
  if not (o4877.Value == L0) then
    o4877["Value"] = L0
    if not (L0 ~= 1) then
      o4877.ChangeTo1()
    end
  end
end }
o4878 = { [nil] = {}, GetCalculated = function()
  if not (o4947.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4878.SetStateValue(o4878.GetCalculated())
end, StartCalculate = function()
  o4878["Value"] = o4878.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4854.Node, o4854.Node, 361)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  SED_SetTaskTextKey(2108, -1, -1)
end, SetStateValue = function(L0)
  if not (o4878.Value == L0) then
    o4878["Value"] = L0
    if not (L0 ~= 1) then
      o4878.ChangeTo1()
    end
  end
end }
o4880 = { [nil] = {}, GetCalculated = function()
  if not (o4853.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4880.SetStateValue(o4880.GetCalculated())
end, StartCalculate = function()
  o4880["Value"] = o4880.GetCalculated()
  o4882.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4854.Node, o4854.Node, 362)
  SendRadioMessageTake(o4854.Node, o4854.Node, 363)
end, SetStateValue = function(L0)
  if not (o4880.Value == L0) then
    o4880["Value"] = L0
    o4882.ReCalculate()
    if not (L0 ~= 1) then
      o4880.ChangeTo1()
    end
  end
end }
o4881 = { [nil] = {}, GetCalculated = function()
  if not (o183.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4881.SetStateValue(o4881.GetCalculated())
end, StartCalculate = function()
  o4881["Value"] = o4881.GetCalculated()
  o4887.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4854.Node, o4854.Node, 366)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
end, SetStateValue = function(L0)
  if not (o4881.Value == L0) then
    DelayedFunction(3, o4881, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4881.Value == L0) then
    o4881["Value"] = L0
    o4887.ReCalculate()
    if not (L0 ~= 1) then
      o4881.ChangeTo1()
    end
  end
end }
o4882 = { [nil] = {}, GetCalculated = function()
  if not (o4880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4882.SetStateValue(o4882.GetCalculated())
end, StartCalculate = function()
  o4882["Value"] = o4882.GetCalculated()
end, ChangeTo1 = function()
  SED_SetTaskTextKey(2109, -1, -1)
  Game_SetWayPoint(GetGameNode(), o4949.Node)
end, SetStateValue = function(L0)
  if not (o4882.Value == L0) then
    DelayedFunction(8, o4882, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4882.Value == L0) then
    o4882["Value"] = L0
    if not (L0 ~= 1) then
      o4882.ChangeTo1()
    end
  end
end }
o4883 = { [nil] = {}, GetCalculated = function()
  if not (o184.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4883.SetStateValue(o4883.GetCalculated())
end, StartCalculate = function()
  o4883["Value"] = o4883.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4854.Node, o4854.Node, 364)
end, SetStateValue = function(L0)
  if not (o4883.Value == L0) then
    o4883["Value"] = L0
    if not (L0 ~= 1) then
      o4883.ChangeTo1()
    end
  end
end }
o4884 = { [nil] = {}, GetCalculated = function()
  if not (o186.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4884.SetStateValue(o4884.GetCalculated())
end, StartCalculate = function()
  o4884["Value"] = o4884.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4854.Node, o4854.Node, 365)
end, SetStateValue = function(L0)
  if not (o4884.Value == L0) then
    o4884["Value"] = L0
    if not (L0 ~= 1) then
      o4884.ChangeTo1()
    end
  end
end }
o4885 = { [nil] = {}, GetCalculated = function()
  if not (o4922.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4885.SetStateValue(o4885.GetCalculated())
end, StartCalculate = function()
  o4885["Value"] = o4885.GetCalculated()
end, ChangeTo1 = function()
  SED_SetTaskTextKey(2107, -1, -1)
end, SetStateValue = function(L0)
  if not (o4885.Value == L0) then
    o4885["Value"] = L0
    if not (L0 ~= 1) then
      o4885.ChangeTo1()
    end
  end
end }
o4887 = { [nil] = {}, GetCalculated = function()
  if not (o4881.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4887.SetStateValue(o4887.GetCalculated())
end, StartCalculate = function()
  o4887["Value"] = o4887.GetCalculated()
  o3.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2109)
end, SetStateValue = function(L0)
  if not (o4887.Value == L0) then
    o4887["Value"] = L0
    o3.ReCalculate()
    if not (L0 ~= 1) then
      o4887.ChangeTo1()
    end
  end
end }
o4910 = { [nil] = {}, GetCalculated = function()
  if not (o34.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4910.SetStateValue(o4910.GetCalculated())
end, StartCalculate = function()
  o4910["Value"] = o4910.GetCalculated()
  o26.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 2, 2001, 2110)
end, SetStateValue = function(L0)
  if not (o4910.Value == L0) then
    o4910["Value"] = L0
    o26.ReCalculate()
    if not (L0 ~= 1) then
      o4910.ChangeTo1()
    end
  end
end }
S_o4914 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o4914, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o4917.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4917 = { [nil] = {}, Start = function()
  o4917["Value"] = False
  o4868.StartCalculate()
  o4873.StartCalculate()
  o5018.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4917.Value == L0) then
    o4917["Value"] = L0
    o4868.ReCalculate()
    o4873.ReCalculate()
    o5018.ReCalculate()
  end
end }
S_o4919 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o4919, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o4922.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4922 = { [nil] = {}, Start = function()
  o4922["Value"] = False
  o4869.StartCalculate()
  o4885.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4922.Value == L0) then
    o4922["Value"] = L0
    o4869.ReCalculate()
    o4885.ReCalculate()
  end
end }
S_o4924 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o4924, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4929 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o227.Node)
  CallFunction(o4929, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4934 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o4934, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o4937.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4937 = { [nil] = {}, Start = function()
  o4937["Value"] = False
  o4876.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4937.Value == L0) then
    o4937["Value"] = L0
    o4876.ReCalculate()
  end
end }
S_o4939 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o4939, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o4942.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4942 = { [nil] = {}, Start = function()
  o4942["Value"] = False
  o4877.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4942.Value == L0) then
    o4942["Value"] = L0
    o4877.ReCalculate()
  end
end }
S_o4944 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o4944, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o4947.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4947 = { [nil] = {}, Start = function()
  o4947["Value"] = False
  o4874.StartCalculate()
  o4878.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4947.Value == L0) then
    o4947["Value"] = L0
    o4874.ReCalculate()
    o4878.ReCalculate()
  end
end }
S_o4949 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o180.Node)
  CallFunction(o4949, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4954 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4954, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Node_EnterSimulation(L0.Node)
  CallFunction(o4954, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o4955.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4955 = { [nil] = {}, GetCalculated = function()
  if not (o89.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4955.SetStateValue(o4955.GetCalculated())
end, StartCalculate = function()
  o4955["Value"] = o4955.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4955.Value == L0) then
    o4955["Value"] = L0
    CallFunction(o4954, "ProcesseStateChange")
  end
end }
S_o4956 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4956, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4956, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4956, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o4956, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4957.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4957 = { [nil] = {}, GetCalculated = function()
  if not (o89.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4957.SetStateValue(o4957.GetCalculated())
end, StartCalculate = function()
  o4957["Value"] = o4957.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4957.Value == L0) then
    o4957["Value"] = L0
    CallFunction(o4956, "ProcesseStateChange")
  end
end }
S_o5003 = { [nil] = {}, Start = function(L0)

end }
o5005 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o5006 = { [nil] = {}, Start = function(L0)

end }
S_o5007 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Atmo")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o5007, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o5007, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/Position_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o5007, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.5, "Code9")
  else
    CallFunction(o5007, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  SendRadioMessageTake(o4854.Node, o4854.Node, 351)
  CallFunction(o5007, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4.5, "Code11")
  else
    CallFunction(o5007, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Camera_Cut(L0.Node, 1)
  CallFunction(o5007, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code13")
  else
    CallFunction(o5007, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Director_EndCutscene(L0.Node)
  CallFunction(o5007, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code15")
  else
    CallFunction(o5007, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Game_SetWayPoint(GetGameNode(), o4914.Node)
  SED_SetTaskTextKey(2100, -1, -1)
  CallFunction(o5007, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5014 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  FormationLib.PlaceFormationPath(o5004, o5005, "/IngameSequences/Navigation/PlaPath_1")
  CallFunction(o5014, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o5004, o5005, "/IngameSequences/Navigation/PlaPath_1", "pos_1", "pos_2", 0.8, 1, "Code2")
  else
    CallFunction(o5014, "Code2")
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
S_o5016 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5016, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5016, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5016, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o5016, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5016, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5016, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5018.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5018 = { [nil] = {}, GetCalculated = function()
  if not (o4917.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5018.SetStateValue(o5018.GetCalculated())
end, StartCalculate = function()
  o5018["Value"] = o5018.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5018.Value == L0) then
    o5018["Value"] = L0
    CallFunction(o5016, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 357)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "pla_harvester_1", S_o30)
  o34.Start()
  o85 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_screw_1", S_o85)
  o89.Start()
  o133 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_screw_off_1", S_o133)
  o180 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_trafo_EMP_1", S_o180)
  o183.Start()
  o184.Start()
  o186.Start()
  o227 = BindEasy(Node_Find("/Scenario_Static/Object"), "dir_cammesh_static_1", S_o227)
  o273 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_wallhole_1", S_o273)
  o319 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_wall_1", S_o319)
  o365 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_wall_2", S_o365)
  o411 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_wall_3", S_o411)
  o457 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_wall_4", S_o457)
  o503 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_wall_5", S_o503)
  o549 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_wall_6", S_o549)
  o595 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_1", S_o595)
  o641 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_2", S_o641)
  o687 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_3", S_o687)
  o733 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_4", S_o733)
  o779 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big01_1", S_o779)
  o825 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big01_2", S_o825)
  o871 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big01_3", S_o871)
  o917 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big01_4", S_o917)
  o963 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_1", S_o963)
  o1009 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_2", S_o1009)
  o1055 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_2_2", S_o1055)
  o1101 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_2_3", S_o1101)
  o1147 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_3", S_o1147)
  o1193 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_4", S_o1193)
  o1239 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_5", S_o1239)
  o1285 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_6", S_o1285)
  o1331 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_7", S_o1331)
  o1377 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_trafo_EMP_2", S_o1377)
  o1423 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_trafo_EMP_3", S_o1423)
  o1469 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo2_1", S_o1469)
  o1515 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_1", S_o1515)
  o1561 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_5", S_o1561)
  o1607 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_6", S_o1607)
  o1653 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_7", S_o1653)
  o1699 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_8", S_o1699)
  o1745 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_9", S_o1745)
  o1791 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_10", S_o1791)
  o1837 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_90", S_o1837)
  o1883 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_91", S_o1883)
  o1929 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_92", S_o1929)
  o1975 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_circle_93", S_o1975)
  o2021 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock1_4_1", S_o2021)
  o2067 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_laserwall_rail_b_1", S_o2067)
  o2113 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_laserwall_rail_b_2", S_o2113)
  o2159 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_laserwall_rail_b_3", S_o2159)
  o2205 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_laserwall_rail_top_1", S_o2205)
  o2251 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_laserwall_rail_top_2", S_o2251)
  o2297 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_juan_laserwall_rail_top_3", S_o2297)
  o2343 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_1", S_o2343)
  o2389 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_1", S_o2389)
  o2435 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_2", S_o2435)
  o2481 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_3", S_o2481)
  o2527 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_4", S_o2527)
  o2573 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_1", S_o2573)
  o2619 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_1", S_o2619)
  o2665 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_1", S_o2665)
  o2711 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_2", S_o2711)
  o2757 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_02_1", S_o2757)
  o2803 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_02_2", S_o2803)
  o2849 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_02_3", S_o2849)
  o2895 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_01_1", S_o2895)
  o2941 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_01_2", S_o2941)
  o2987 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_01_3", S_o2987)
  o3033 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_01_4", S_o3033)
  o3079 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_01_5", S_o3079)
  o3125 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_02_4", S_o3125)
  o3171 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_01_6", S_o3171)
  o3217 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_02_5", S_o3217)
  o3263 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_1", S_o3263)
  o3309 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_x", S_o3309)
  o3355 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_y", S_o3355)
  o3401 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_x", S_o3401)
  o3447 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_x", S_o3447)
  o3493 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_y", S_o3493)
  o3539 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_z", S_o3539)
  o3585 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_1", S_o3585)
  o3631 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_1", S_o3631)
  o3677 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_2", S_o3677)
  o3723 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_1", S_o3723)
  o3769 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_2", S_o3769)
  o3815 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_1", S_o3815)
  o3861 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_2", S_o3861)
  o3907 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_1", S_o3907)
  o3953 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_1", S_o3953)
  o3999 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_2", S_o3999)
  o4045 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_3", S_o4045)
  o4091 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_2", S_o4091)
  o4137 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_3", S_o4137)
  o4183 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_a", S_o4183)
  o4229 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_b", S_o4229)
  o4275 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_2", S_o4275)
  o4321 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_a", S_o4321)
  o4367 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_2", S_o4367)
  o4413 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_a", S_o4413)
  o4459 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_3", S_o4459)
  o4505 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_3", S_o4505)
  o4551 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_4", S_o4551)
  o4597 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_a", S_o4597)
  o4643 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_3x", S_o4643)
  o4689 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_a", S_o4689)
  o4735 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_a", S_o4735)
  o4781 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_1", S_o4781)
  o4783 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_2", S_o4783)
  o4785 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_3", S_o4785)
  o4787 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_1", S_o4787)
  o4788 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_2", S_o4788)
  o4789 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_3", S_o4789)
  o4790 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_4", S_o4790)
  o4791 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_5", S_o4791)
  o4792 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_6", S_o4792)
  o4793 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_7", S_o4793)
  o4794 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_8", S_o4794)
  o4795 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_9", S_o4795)
  o4796 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_10", S_o4796)
  o4797 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_11", S_o4797)
  o4798 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_12", S_o4798)
  o4799 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_13", S_o4799)
  o4800 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_14", S_o4800)
  o4801 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_15", S_o4801)
  o4802 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_16", S_o4802)
  o4803 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_17", S_o4803)
  o4804 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_18", S_o4804)
  o4805 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_19", S_o4805)
  o4806 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_20", S_o4806)
  o4807 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_21", S_o4807)
  o4808 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_22", S_o4808)
  o4809 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_23", S_o4809)
  o4810 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_24", S_o4810)
  o4811 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_25", S_o4811)
  o4812 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_26", S_o4812)
  o4813 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_27", S_o4813)
  o4814 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_28", S_o4814)
  o4815 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_29", S_o4815)
  o4816 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_30", S_o4816)
  o4817 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_31", S_o4817)
  o4818 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_32", S_o4818)
  o4819 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_33", S_o4819)
  o4820 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_34", S_o4820)
  o4821 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_35", S_o4821)
  o4822 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "DamageStream_36", S_o4822)
  o4823 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_4", S_o4823)
  o4824 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresenceBox_1", S_o4824)
  o4829.Start()
  o4830 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresenceBox_2", S_o4830)
  o4835.Start()
  o4836 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresenceBox_3", S_o4836)
  o4841.Start()
  o4842 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresenceBox_4", S_o4842)
  o4848 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresenceBox_5", S_o4848)
  o4853.Start()
  o4854 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o4854)
  o4914 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1", S_o4914)
  o4917.Start()
  o4919 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_1", S_o4919)
  o4922.Start()
  o4924 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_2", S_o4924)
  o4929 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_emp_1", S_o4929)
  o4934 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_3", S_o4934)
  o4937.Start()
  o4939 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_4", S_o4939)
  o4942.Start()
  o4944 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_check", S_o4944)
  o4947.Start()
  o4949 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_emp_2", S_o4949)
  o4954 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_laserwall_1", S_o4954)
  o4956 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "dir_explosion_gen_juan_screw_1", S_o4956)
  o5003 = BindEasy(Node_Find("/"), "Camera", S_o5003)
  o5006 = BindEasy(Node_Find("/IngameSequences/Navigation"), "Position_1", S_o5006)
  o5016 = BindEasy(Node_Find("/vfx/Object"), "dir_explosion_magma_05_1", S_o5016)
  o5007 = BindEasy(Node_Find("/IngameSequences/Director"), "Intro", S_o5007)
  o5014 = BindEasy(Node_Find("/IngameSequences/Director"), "Director_1", S_o5014)
  o5004 = { {}, o4854 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
