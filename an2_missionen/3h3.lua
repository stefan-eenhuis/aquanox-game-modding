-- dekompiliert aus 3h3.sco
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
  Terrain_LoadTerrain(node1, "map/3H3/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/3H3/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/3H3/Lmsh/", "map/3H3/Ltex/")
  Game_SetTerrainDepth(node0, 2826)
  Game_SetDecompressionHeight(node0, 700)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.109804, 0.101961, 0.082353)
  Game_SetParallelLightT(node0, 0.219608, 0.203922, 0.164706)
  Game_SetParallelLightB(node0, 0.109804, 0.101961, 0.082353)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_3h3.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_3H3.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient1.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit4.sam", 1)
  Game_SetNPCHitFactor(node0, 0.2)
  Game_SetEnvironmentCubeMap(node0, "map/3H3/CubeMap/envcubemap.dds")
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
  node8 = Node_CreateNode("NOD_Directory", "Poles")
  Node_AddSon(node7, node8)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "gen_stab3_4")
  Node_AddSon(node8, node9)
  Body_SetCS(node9, MAT_Vector3(422.5018, 1524.084, 256.0326), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node9, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "gen_stab2_2")
  Node_AddSon(node8, node10)
  Body_SetCS(node10, MAT_Vector3(2920.571, 1916.739, 480.961), MAT_Vector3(-44.77398, 0, 0))
  Node_ParseIniFile(node10, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "gen_stab1_2")
  Node_AddSon(node8, node11)
  Body_SetCS(node11, MAT_Vector3(2561.216, 2020.617, 341.6315), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node11, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "gen_stab2_5")
  Node_AddSon(node8, node12)
  Body_SetCS(node12, MAT_Vector3(1004.163, 3181.412, 470.2561), MAT_Vector3(-163.3424, -3.7, 0.6))
  Node_ParseIniFile(node12, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "gen_stab2_6")
  Node_AddSon(node8, node13)
  Body_SetCS(node13, MAT_Vector3(1633.54, 2392.969, 351.388), MAT_Vector3(-41.9275, 0, 0))
  Node_ParseIniFile(node13, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "gen_stab2_7")
  Node_AddSon(node8, node14)
  Body_SetCS(node14, MAT_Vector3(1809.118, 2223.653, 430.245), MAT_Vector3(-70.9353, 0.07263, 2.489263))
  Node_ParseIniFile(node14, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "gen_stab2_8")
  Node_AddSon(node8, node15)
  Body_SetCS(node15, MAT_Vector3(2133.744, 2257.638, 353.4179), MAT_Vector3(-61.964, 0.075462, 2.183281))
  Node_ParseIniFile(node15, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "gen_stab2_9")
  Node_AddSon(node8, node16)
  Body_SetCS(node16, MAT_Vector3(353.6323, 3364.956, 415.5874), MAT_Vector3(-44.07952, 0.075462, 2.183281))
  Node_ParseIniFile(node16, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "gen_stab1_4")
  Node_AddSon(node8, node17)
  Body_SetCS(node17, MAT_Vector3(2993.551, 1874.826, 507.5157), MAT_Vector3(-46.60574, 0, 0))
  Node_ParseIniFile(node17, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "gen_stab1_5")
  Node_AddSon(node8, node18)
  Body_SetCS(node18, MAT_Vector3(3027.939, 2444.169, 466.0923), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node18, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "gen_stab2_4")
  Node_AddSon(node8, node19)
  Body_SetCS(node19, MAT_Vector3(3021.271, 1492.073, 309.6024), MAT_Vector3(-30.66857, 0, 0))
  Node_ParseIniFile(node19, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "gen_stab3_5")
  Node_AddSon(node8, node20)
  Body_SetCS(node20, MAT_Vector3(2990.832, 1482.195, 312.1592), MAT_Vector3(-30.5884, 0, 0))
  Node_ParseIniFile(node20, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "gen_stab3_6")
  Node_AddSon(node8, node21)
  Body_SetCS(node21, MAT_Vector3(284.7546, 3293.029, 419.919), MAT_Vector3(-19.66623, 0, 0))
  Node_ParseIniFile(node21, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "gen_stabK_1")
  Node_AddSon(node8, node22)
  Body_SetCS(node22, MAT_Vector3(1490.318, 567.6155, 284.5867), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node22, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "gen_stabK_2")
  Node_AddSon(node8, node23)
  Body_SetCS(node23, MAT_Vector3(1503.193, 567.7105, 284.5867), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node23, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "gen_stabK_3")
  Node_AddSon(node8, node24)
  Body_SetCS(node24, MAT_Vector3(1589.232, 710.4586, 350), MAT_Vector3(-47.87754, 0, 0))
  Node_ParseIniFile(node24, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "gen_stabK_4")
  Node_AddSon(node8, node25)
  Body_SetCS(node25, MAT_Vector3(1641.899, 759.8557, 350), MAT_Vector3(-47.87754, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_stabK_5")
  Node_AddSon(node8, node26)
  Body_SetCS(node26, MAT_Vector3(1643.198, 709.8461, 350), MAT_Vector3(-44.5292, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "gen_stabK_6")
  Node_AddSon(node8, node27)
  Body_SetCS(node27, MAT_Vector3(1590.227, 760.1093, 350), MAT_Vector3(-41.64381, 0, 0))
  Node_ParseIniFile(node27, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "arg_asylum_des_1")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(3617.00142, 2176.211592, 533.981452), MAT_Vector3(70, 0, 0))
  Node_ParseIniFile(node28, "osd/arg/arg_asylum_des.osd")
  Body_SetFriendOrFoeID(node28, 1)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "gen_stern_1")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(3249.532734, 1695.216684, 454.300305), MAT_Vector3(89.76219, 0, 0))
  Node_ParseIniFile(node29, "osd/gen/gen_starfound.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "gen_stern_2")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(3169.956355, 1766.83011, 457.003811), MAT_Vector3(-0.6115, 0, 0))
  Node_ParseIniFile(node30, "osd/gen/gen_starfound.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "gen_stern_3")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(2993.91, 1875.056, 494.3174), MAT_Vector3(-46.59192, 0, 0))
  Node_ParseIniFile(node31, "osd/gen/gen_starfound.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "gen_turm_1")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(3237.58655, 1923.987411, 457.177131), MAT_Vector3(-29.93103, 0, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_turm_2")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(3221.303649, 1868.939362, 463.802369), MAT_Vector3(-1.318791, 0, 0))
  Node_ParseIniFile(node33, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "gen_parabo_4")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(3323.305733, 1755.044057, 495.175827), MAT_Vector3(145.781397, 0, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "atl_dock3_1")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(3344.63571, 1860.14291, 450.955078), MAT_Vector3(-121.945289, 0, 0))
  Node_ParseIniFile(node35, "osd/atl/atl_dock3.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_tnk_g_1")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(3256.311743, 1787.726594, 454.342561), MAT_Vector3(57.100785, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "gen_mhaus2_1")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(3320.914779, 1825.962649, 431.269217), MAT_Vector3(-33.224712, 0, 0))
  Node_ParseIniFile(node37, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "gen_beacon_1")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(3354.524276, 2247.661396, 531.384656), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node38, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_beacon_2")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(3679.502, 2645.287, 456.806062), MAT_Vector3(-60, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_beacon_3")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(1684.874, 577.7724, 207.5939), MAT_Vector3(-88.7, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_beacon_4")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(3119.068, 1171.25, 293.087286), MAT_Vector3(178.549, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_kuppel_1")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(3356.810525, 2249.456456, 572.7), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_scoop.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_kuppel_2")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(3356.826939, 2207.494365, 572.7), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node43, "osd/gen/gen_scoop.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_bunker_1")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(3015.672, 1457.603, 267.8674), MAT_Vector3(-162.0425, 0, 0))
  Node_ParseIniFile(node44, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_kraft2_1")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(3145.072, 2082.023, 473.6655), MAT_Vector3(89.68196, 0, 0))
  Node_ParseIniFile(node45, "osd/gen/gen_pplant2.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_tnk_k3_1_des")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(3114.282, 1401.433, 278.3898), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node46, "osd/gen/gen_tank_sml3_des.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "gen_elf-kn_1")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(2880.588977, 1369.422185, 247.5695), MAT_Vector3(23.20825, 0, 0))
  Node_ParseIniFile(node47, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "gen_elf-kn_2")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(2443.447, 1182.932, 243.4679), MAT_Vector3(23.20825, 0, 0))
  Node_ParseIniFile(node48, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "gen_elf-kn_3")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(1899.773, 957.6254, 257.088), MAT_Vector3(20.14182, -5.2719, -10.7131))
  Node_ParseIniFile(node49, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "gen_elfnode_des")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(1087.408, 623.4961, 313.5813), MAT_Vector3(24.81806, -1.6749, 6.20081))
  Node_ParseIniFile(node50, "osd/gen/gen_elfnote_des.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_stern2_1")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(1619.422, 2461.366, 341.2643), MAT_Vector3(-42.6643, 0, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_starfound2.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "Atl_Dock")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(688.2823, 3278.86, 432.6543), MAT_Vector3(-53.71848, -0.4397, -1.5663))
  Node_ParseIniFile(node52, "osd/atl/atl_dock1_1.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_tnk_k_1")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(301.7893, 1312.008, 240.3933), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node53, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "gen_tnk_k_2")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(237.8026, 1392.025, 233.4711), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node54, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "Elt_Dock")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(3096.573, 2289.542, 484.1468), MAT_Vector3(-89.6382, 0, 0))
  Node_ParseIniFile(node55, "osd/gen/gen_dock.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "atl_wb3a_1")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(976.1702, 3447.791, 387.9368), MAT_Vector3(34.78522, 0, 0))
  Node_ParseIniFile(node56, "osd/atl/atl_wblock3a_raw.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "atl_wb3b_1")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(833.6489, 3346.338, 418.8053), MAT_Vector3(-53.2897, 0, 0))
  Node_ParseIniFile(node57, "osd/atl/atl_wblock3b_raw.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "atl_wb3a_r4_1")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(709.4717, 3408.654, 451.3678), MAT_Vector3(35.93632, 0, 0))
  Node_ParseIniFile(node58, "osd/atl/atl_wblock3a_raw_04.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "atl_wb3a_r4_2")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(613.844, 3338.428, 450.6557), MAT_Vector3(35.93632, 0, 0))
  Node_ParseIniFile(node59, "osd/atl/atl_wblock3a_raw_04.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "atl_wb3a_r4_3")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(879.8643, 3379.442, 453.7884), MAT_Vector3(35.93632, 0, 0))
  Node_ParseIniFile(node60, "osd/atl/atl_wblock3a_raw_04.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "atl_wb3a_r1_1")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(661.37, 3377.731, 389.6781), MAT_Vector3(-144.2648, 0, 0))
  Node_ParseIniFile(node61, "osd/atl/atl_wblock3a_raw_01.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "gen_werk3_1")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(1617.248, 735.5005, 307.9047), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node62, "osd/gen/gen_industry3.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "gen_parabo_1")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(3026.94, 1441.382, 310.5635), MAT_Vector3(146.0772, 0, 0))
  Node_ParseIniFile(node63, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "gen_parabo_2")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(3030.369, 1890.742, 484.6713), MAT_Vector3(65.9028, 0, 0))
  Node_ParseIniFile(node64, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "gen_parabo_3")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(2909.97, 1941.282, 485.4152), MAT_Vector3(67.1958, 0, 0))
  Node_ParseIniFile(node65, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "gen_stab2_4")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(3021.271, 1492.073, 309.6024), MAT_Vector3(-30.66857, 0, 0))
  Node_ParseIniFile(node66, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "gen_stab3_5")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(2990.832, 1482.195, 312.1592), MAT_Vector3(-30.5884, 0, 0))
  Node_ParseIniFile(node67, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "gen_stab3_6")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(284.7546, 3293.029, 419.919), MAT_Vector3(-19.66623, 0, 0))
  Node_ParseIniFile(node68, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "gen_kraft1_1")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(1666.638, 2402.006, 354.3945), MAT_Vector3(25.56546, 0, 0))
  Node_ParseIniFile(node69, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "gen_kraft22_1")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(312.1271, 3377.488, 383.4694), MAT_Vector3(-43.75403, 0, 0))
  Node_ParseIniFile(node70, "osd/gen/gen_pplant22.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "gen_trafo_1")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(322.5277, 3312.45, 422.175), MAT_Vector3(-45.7154, 0, 0))
  Node_ParseIniFile(node71, "osd/gen/gen_trafo.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "gen_turm_3")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(201.5773, 3266.767, 426.9823), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node72, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "gen_schorn2_1")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(294.798, 3288.874, 417.8064), MAT_Vector3(3.308766, 0, 0))
  Node_ParseIniFile(node73, "osd/gen/gen_chimney2.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "gen_schorn2_2")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(275.4914, 3296.838, 418.1965), MAT_Vector3(0.77868, 0, 0))
  Node_ParseIniFile(node74, "osd/gen/gen_chimney2.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "gen_gang1_1")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(688.2655, 3334.66, 467.0563), MAT_Vector3(36.09075, 0, 0))
  Node_ParseIniFile(node75, "osd/gen/gen_gangway01.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "gen_gang1_2")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(555.9357, 3255.208, 466.3056), MAT_Vector3(-11.9089, 0, 0))
  Node_ParseIniFile(node76, "osd/gen/gen_gangway01.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "gen_rohrs2_1")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(708.2077, 3407.484, 539.8235), MAT_Vector3(-53.89787, 0, 0))
  Node_ParseIniFile(node77, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "gen_rohrs2_2")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(615.7937, 3340.072, 539.8235), MAT_Vector3(-53.89787, 0, 0))
  Node_ParseIniFile(node78, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "gen_gang2_1")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(1070.829, 3515.572, 426.2798), MAT_Vector3(-55.06956, 0, 0))
  Node_ParseIniFile(node79, "osd/gen/gen_gangway02.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "gen_rohrb3_1")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(2802.772051, 1335.983201, 229.591227), MAT_Vector3(-67.175456, -0.9, 0.303835))
  Node_ParseIniFile(node80, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_generic", "gen_rohrb3_2")
  Node_AddSon(node7, node81)
  Body_SetCS(node81, MAT_Vector3(2582.651296, 1242.9751, 230.123325), MAT_Vector3(-67.07941, 0.585846, 0))
  Node_ParseIniFile(node81, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_generic", "gen_rohrb3_3")
  Node_AddSon(node7, node82)
  Body_SetCS(node82, MAT_Vector3(1762.577712, 905.923642, 236.23763), MAT_Vector3(110.564166, 1.195201, -1.795765))
  Node_ParseIniFile(node82, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_generic", "gen_rohrb3_4")
  Node_AddSon(node7, node83)
  Body_SetCS(node83, MAT_Vector3(1431.948183, 786.354894, 250.696715), MAT_Vector3(-65.432072, -0.282934, 0.348599))
  Node_ParseIniFile(node83, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_generic", "gen_rohrb3_5")
  Node_AddSon(node7, node84)
  Body_SetCS(node84, MAT_Vector3(1218.84551, 686.685068, 272.725107), MAT_Vector3(-64.359082, -10.835686, 0.801525))
  Node_ParseIniFile(node84, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_generic", "gen_rohrb3_6")
  Node_AddSon(node7, node85)
  Body_SetCS(node85, MAT_Vector3(958.650067, 564.750272, 316.058773), MAT_Vector3(-65.229849, -0.353834, -0.908186))
  Node_ParseIniFile(node85, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "gen_rohrb2_1")
  Node_AddSon(node7, node86)
  Body_SetCS(node86, MAT_Vector3(1974.046711, 987.372623, 259.96979), MAT_Vector3(-68.721277, -5.489678, 0.609938))
  Node_ParseIniFile(node86, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "gen_rohr_big01_1")
  Node_AddSon(node7, node87)
  Body_SetCS(node87, MAT_Vector3(2386.611197, 1158.752841, 223.182414), MAT_Vector3(113.643459, 0, 0))
  Node_ParseIniFile(node87, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "atl_wb4a_1_1")
  Node_AddSon(node7, node88)
  Body_SetCS(node88, MAT_Vector3(563.8476, 3300.951, 422.1553), MAT_Vector3(35.84784, 0, 0))
  Node_ParseIniFile(node88, "osd/atl/atl_wblock3a_raw_02.osd")
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "gen_bunker2_1")
  Node_AddSon(node7, node89)
  Body_SetCS(node89, MAT_Vector3(2971.509, 1917.725, 399.2279), MAT_Vector3(43.24234, 0, 0))
  Node_ParseIniFile(node89, "osd/gen/gen_shelter2.osd")
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_generic", "delphin_1")
  Node_AddSon(node7, node90)
  Body_SetCS(node90, MAT_Vector3(549.8084, 3189.27, 398.7453), MAT_Vector3(-50.08266, 0, 0))
  Node_ParseIniFile(node90, "osd/gen/gen_dolphinhab.osd")
  Body_SetFriendOrFoeID(node90, 0)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_generic", "delphin_big_1")
  Node_AddSon(node7, node91)
  Body_SetCS(node91, MAT_Vector3(1179.829, 3573.342, 325.6947), MAT_Vector3(-55.07216, 0, 0))
  Node_ParseIniFile(node91, "osd/gen/gen_dolphinhab_big.osd")
  Body_SetFriendOrFoeID(node91, 0)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_generic", "gen_mhaus3_1")
  Node_AddSon(node7, node92)
  Body_SetCS(node92, MAT_Vector3(1511.518, 625.7001, 245.5667), MAT_Vector3(-90.14067, 0, 0))
  Node_ParseIniFile(node92, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node92, 0)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "gen_mhaus1_1")
  Node_AddSon(node7, node93)
  Body_SetCS(node93, MAT_Vector3(1515.786, 627.793, 221.8657), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node93, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node93, 0)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_turret", "gen_turret_medium_1")
  Node_AddSon(node7, node94)
  Body_SetCS(node94, MAT_Vector3(3191.22, 1676.63, 452.6102), MAT_Vector3(130, 0, 0))
  Node_ParseIniFile(node94, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node94, 1)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_turret", "gen_turret_medium_2")
  Node_AddSon(node7, node95)
  Body_SetCS(node95, MAT_Vector3(3490.229, 1748.714, 458.8689), MAT_Vector3(160.5, 0, 0))
  Node_ParseIniFile(node95, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node95, 1)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_turret", "gen_turret_medium_3")
  Node_AddSon(node7, node96)
  Body_SetCS(node96, MAT_Vector3(3286.49, 1647.222, 456.0765), MAT_Vector3(163, 0, 0))
  Node_ParseIniFile(node96, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node96, 1)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_turret", "gen_turret_medium_4")
  Node_AddSon(node7, node97)
  Body_SetCS(node97, MAT_Vector3(3356.483, 2167.634, 571.1023), MAT_Vector3(108, 0, 0))
  Node_ParseIniFile(node97, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node97, 1)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_turret", "gen_turret_medium_5")
  Node_AddSon(node7, node98)
  Body_SetCS(node98, MAT_Vector3(3355.539, 2285.729, 571.1312), MAT_Vector3(68, 0, 0))
  Node_ParseIniFile(node98, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node98, 1)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_turret", "gen_turret_medium_6")
  Node_AddSon(node7, node99)
  Body_SetCS(node99, MAT_Vector3(1567.401, 583.5451, 312.4211), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node99, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node99, 1)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_turret", "gen_turret_medium_7")
  Node_AddSon(node7, node100)
  Body_SetCS(node100, MAT_Vector3(2992.018, 2426.774, 495.714), MAT_Vector3(75.5, 0, 0))
  Node_ParseIniFile(node100, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node100, 1)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_turret", "gen_turret_medium_8")
  Node_AddSon(node7, node101)
  Body_SetCS(node101, MAT_Vector3(2992.364, 2328.658, 495.5075), MAT_Vector3(130, 0, 0))
  Node_ParseIniFile(node101, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node101, 1)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_turret", "gen_turret_medium_9")
  Node_AddSon(node7, node102)
  Body_SetCS(node102, MAT_Vector3(3086.273, 2062.3, 486.3187), MAT_Vector3(130, 0, 0))
  Node_ParseIniFile(node102, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node102, 1)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_turret", "gen_turret_medium_10")
  Node_AddSon(node7, node103)
  Body_SetCS(node103, MAT_Vector3(2952.85, 1973.024, 493.8606), MAT_Vector3(55.9, 0, 0))
  Node_ParseIniFile(node103, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node103, 1)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_turret", "gen_turret_medium_11")
  Node_AddSon(node7, node104)
  Body_SetCS(node104, MAT_Vector3(3119.775432, 1254.370308, 332.474402), MAT_Vector3(108, 0, 0))
  Node_ParseIniFile(node104, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node104, 1)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_turret", "gen_turret_medium_12")
  Node_AddSon(node7, node105)
  Body_SetCS(node105, MAT_Vector3(3006.765, 1458.488, 312.0639), MAT_Vector3(112, 0, 0))
  Node_ParseIniFile(node105, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node105, 1)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_turret", "gen_turret_medium_13")
  Node_AddSon(node7, node106)
  Body_SetCS(node106, MAT_Vector3(3698.927, 2656.395, 492.7281), MAT_Vector3(30, 0, 0))
  Node_ParseIniFile(node106, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node106, 1)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_turret", "gen_turret_medium_14")
  Node_AddSon(node7, node107)
  Body_SetCS(node107, MAT_Vector3(3608.608, 2603.049, 492.7253), MAT_Vector3(36, 0, 0))
  Node_ParseIniFile(node107, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node107, 1)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_generic", "atl_digmod_1")
  Node_AddSon(node7, node108)
  Body_SetCS(node108, MAT_Vector3(371.6244, 1390.315, 245.6682), MAT_Vector3(8.938035, 0, 0))
  Node_ParseIniFile(node108, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node108, 0)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_fx_sky", "fx_sky_3H3_1")
  Node_AddSon(node7, node109)
  Node_ParseIniFile(node109, "osd/fx_sky/fx_sky_3H3.osd")
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_fx_rays", "fx_rays_3H3_1")
  Node_AddSon(node7, node110)
  Node_ParseIniFile(node110, "osd/fx_rays/fx_rays_3H3.osd")
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_fx_flare", "fx_flare_3H3_1")
  Node_AddSon(node7, node111)
  Node_ParseIniFile(node111, "osd/fx_flare/fx_flare_3H3.osd")
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_fx_plankton", "fx_plankton_amber_n_1")
  Node_AddSon(node7, node112)
  Node_ParseIniFile(node112, "osd/fx_plankton/fx_plankton_amber_n.osd")
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_generic", "ter_megalith_l_01_1")
  Node_AddSon(node7, node113)
  Body_SetCS(node113, MAT_Vector3(2353.567875, 1227.768641, 217.593425), MAT_Vector3(2.255644, 2.283477, -0.651964))
  Node_ParseIniFile(node113, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node113, 0)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_generic", "ter_megalith_l_02_1")
  Node_AddSon(node7, node114)
  Body_SetCS(node114, MAT_Vector3(1204.938619, 821.075028, 260.526085), MAT_Vector3(-4.34068, -3.364054, -2.9917))
  Node_ParseIniFile(node114, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node114, 0)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_generic", "ter_megalith_l_03_1")
  Node_AddSon(node7, node115)
  Body_SetCS(node115, MAT_Vector3(1728.955853, 671.845706, 184.964603), MAT_Vector3(-14.692613, -15.582672, 2.052551))
  Node_ParseIniFile(node115, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node115, 0)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_generic", "ter_megalith_l_04_1")
  Node_AddSon(node7, node116)
  Body_SetCS(node116, MAT_Vector3(3031.34916, 1207.54897, 228.758287), MAT_Vector3(-2.982822, -8.21596, -11.63936))
  Node_ParseIniFile(node116, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node116, 0)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_generic", "ter_megalith_l_05_1")
  Node_AddSon(node7, node117)
  Body_SetCS(node117, MAT_Vector3(3693.834099, 1136.69455, 286.466265), MAT_Vector3(-9.982925, -9.271708, -1.164685))
  Node_ParseIniFile(node117, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node117, 0)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_generic", "ter_megalith_l_08_1")
  Node_AddSon(node7, node118)
  Body_SetCS(node118, MAT_Vector3(3423.706781, 3015.750331, 163.488893), MAT_Vector3(-9.982925, -9.271708, -1.164685))
  Node_ParseIniFile(node118, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node118, 0)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_generic", "ter_megalith_l_09_1")
  Node_AddSon(node7, node119)
  Body_SetCS(node119, MAT_Vector3(235.86147, 3041.765887, 169.638154), MAT_Vector3(0.652599, -6.449678, -17.84351))
  Node_ParseIniFile(node119, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node119, 0)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1")
  Node_AddSon(node7, node120)
  Body_SetCS(node120, MAT_Vector3(2424.694983, 1253.682651, 223.593051), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node120, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node120, 0)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_generic", "ter_megalith_s_02_1")
  Node_AddSon(node7, node121)
  Body_SetCS(node121, MAT_Vector3(1177.751302, 787.388282, 289.135746), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node121, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node121, 0)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_generic", "ter_megalith_s_04_1")
  Node_AddSon(node7, node122)
  Body_SetCS(node122, MAT_Vector3(1387.235376, 621.550795, 226.404937), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node122, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node122, 0)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_generic", "ter_megalith_s_06_1")
  Node_AddSon(node7, node123)
  Body_SetCS(node123, MAT_Vector3(3695.180251, 1243.744364, 288.817374), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node123, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node123, 0)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_generic", "ter_megalith_s_05_1")
  Node_AddSon(node7, node124)
  Body_SetCS(node124, MAT_Vector3(3145.369452, 845.009181, 200.205164), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node124, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node124, 0)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1")
  Node_AddSon(node7, node125)
  Body_SetCS(node125, MAT_Vector3(1256.281681, 804.188523, 275.981843), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node125, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node125, 0)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_generic", "ter_megalith_m_02_1")
  Node_AddSon(node7, node126)
  Body_SetCS(node126, MAT_Vector3(1858.706011, 850.368831, 240.278642), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node126, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node126, 0)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, -1, 0)
  Body_SetCargoKey(node126, -1, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_generic", "ter_rock_l_01_1")
  Node_AddSon(node7, node127)
  Body_SetCS(node127, MAT_Vector3(2905.24643, 905.483818, 198.906368), MAT_Vector3(-27.664855, -24.27007, -10.325342))
  Node_ParseIniFile(node127, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node127, 0)
  Body_SetNameKey(node127, -1)
  Body_SetCargoKey(node127, -1, 0)
  Body_SetCargoKey(node127, -1, 1)
  Body_SetCargoKey(node127, -1, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_generic", "ter_rock_m_01_1")
  Node_AddSon(node7, node128)
  Body_SetCS(node128, MAT_Vector3(2706.446065, 1076.823643, 218.675414), MAT_Vector3(-54.082843, -36.461829, -26.917377))
  Node_ParseIniFile(node128, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node128, 0)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, -1, 0)
  Body_SetCargoKey(node128, -1, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_generic", "ter_rock_m_02_1")
  Node_AddSon(node7, node129)
  Body_SetCS(node129, MAT_Vector3(3561.616287, 2314.735091, 533.428101), MAT_Vector3(-108.123543, 8.813695, 13.913088))
  Node_ParseIniFile(node129, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node129, 0)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_generic", "ter_rock_s_01_1")
  Node_AddSon(node7, node130)
  Body_SetCS(node130, MAT_Vector3(2742.437298, 1048.300524, 215.081042), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node130, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node130, 0)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_generic", "ter_rock_s_02_1")
  Node_AddSon(node7, node131)
  Body_SetCS(node131, MAT_Vector3(3503.606489, 2325.894929, 541.518341), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node131, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node131, 0)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_generic", "ter_megalith_s_02_2")
  Node_AddSon(node7, node132)
  Body_SetCS(node132, MAT_Vector3(3744.806776, 1130.361264, 290.254231), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node132, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node132, 0)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node7, node133)
  Node_ParseIniFile(node133, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node133, "map/3H3/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_fx_plant", "org_grass_l_1")
  Node_AddSon(node7, node134)
  Node_ParseIniFile(node134, "osd/fx_plant/org_grass_l.osd")
  FX_Plant_SetMap(node134, "map/3H3/Terrain/org_grass_l.tga")
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node7, node135)
  Node_ParseIniFile(node135, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node135, "map/3H3/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node136)
  Node_ParseIniFile(node136, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node136, "map/3H3/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_fx_plant", "org_redcoral_1")
  Node_AddSon(node7, node137)
  Node_ParseIniFile(node137, "osd/fx_plant/org_redcoral.osd")
  FX_Plant_SetMap(node137, "map/3H3/Terrain/org_redcoral.tga")
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_fx_plant", "org_fungus_s01_1")
  Node_AddSon(node7, node138)
  Node_ParseIniFile(node138, "osd/fx_plant/org_fungus_s01.osd")
  FX_Plant_SetMap(node138, "map/3H3/Terrain/org_fungus_s01.tga")
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_generic", "org_fungus_l_1")
  Node_AddSon(node7, node139)
  Body_SetCS(node139, MAT_Vector3(2375.832276, 1587.356268, 222.984562), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node139, "osd/fungus/org_fungus_l.osd")
  Body_SetFriendOrFoeID(node139, 0)
  Body_SetNameKey(node139, -1)
  Body_SetCargoKey(node139, -1, 0)
  Body_SetCargoKey(node139, -1, 1)
  Body_SetCargoKey(node139, -1, 2)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_generic", "org_fungus_m_1")
  Node_AddSon(node7, node140)
  Body_SetCS(node140, MAT_Vector3(2347.399703, 1557.849985, 222.908202), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node140, "osd/fungus/org_fungus_m.osd")
  Body_SetFriendOrFoeID(node140, 0)
  Body_SetNameKey(node140, -1)
  Body_SetCargoKey(node140, -1, 0)
  Body_SetCargoKey(node140, -1, 1)
  Body_SetCargoKey(node140, -1, 2)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node141)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node141, node142)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node141, node143)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Path", "WngPlaPath_1")
  Node_AddSon(node143, node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node144, node145)
  Position_SetPosition(node145, MAT_Vector3(3308.252337, 2183.803762, 617.689814))
  Position_SetRadius(node145, 5)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node144, node146)
  Position_SetPosition(node146, MAT_Vector3(3316.342509, 2459.425853, 611.364331))
  Position_SetRadius(node146, 5)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node144, node147)
  Position_SetPosition(node147, MAT_Vector3(3427.279678, 2503.862205, 609.230893))
  Position_SetRadius(node147, 5)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node144, node148)
  Position_SetPosition(node148, MAT_Vector3(3713.696897, 2405.30694, 631.113976))
  Position_SetRadius(node148, 5)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node144, node149)
  Position_SetPosition(node149, MAT_Vector3(3832.213709, 2272.304574, 636.312634))
  Position_SetRadius(node149, 5)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Position", "CamPosition_1")
  Node_AddSon(node143, node150)
  Position_SetPosition(node150, MAT_Vector3(3258.920664, 2264.463076, 617.45123))
  Position_SetRadius(node150, 5)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Position", "CamPosition_2")
  Node_AddSon(node143, node151)
  Position_SetPosition(node151, MAT_Vector3(3130.066361, 2012.372327, 617.342003))
  Position_SetRadius(node151, 5)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Path", "MayDayPath_1")
  Node_AddSon(node143, node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node152, node153)
  Position_SetPosition(node153, MAT_Vector3(3874.852734, 2303.659056, 587.842462))
  Position_SetRadius(node153, 5)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node152, node154)
  Position_SetPosition(node154, MAT_Vector3(3907.264124, 2182.460797, 596.730684))
  Position_SetRadius(node154, 5)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Path", "MayDayPath_2")
  Node_AddSon(node143, node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node155, node156)
  Position_SetPosition(node156, MAT_Vector3(3840.512232, 2038.644973, 579.9382))
  Position_SetRadius(node156, 5)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node155, node157)
  Position_SetPosition(node157, MAT_Vector3(3653.74904, 1787.772723, 586.936143))
  Position_SetRadius(node157, 5)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Path", "MayDayPath_3")
  Node_AddSon(node143, node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node158, node159)
  Position_SetPosition(node159, MAT_Vector3(3542.717018, 1723.068665, 527.47761))
  Position_SetRadius(node159, 5)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node158, node160)
  Position_SetPosition(node160, MAT_Vector3(3353.285729, 1581.647013, 489.757217))
  Position_SetRadius(node160, 5)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Path", "MayDayPath_4")
  Node_AddSon(node143, node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node161, node162)
  Position_SetPosition(node162, MAT_Vector3(2968.029262, 1301.922179, 399.221807))
  Position_SetRadius(node162, 5)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node161, node163)
  Position_SetPosition(node163, MAT_Vector3(2235.263274, 945.37666, 265.206506))
  Position_SetRadius(node163, 5)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_PatrolArea", "ElTopoPatrolArea_1")
  Node_AddSon(node143, node164)
  PatrolArea_SetPosition(node164, MAT_Vector3(3636.423693, 2163.045846, 500.406425))
  PatrolArea_SetRadius(node164, 800)
  PatrolArea_SetMinZ(node164, -300)
  PatrolArea_SetMaxZ(node164, 200)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_PatrolArea", "DockArea")
  Node_AddSon(node143, node165)
  PatrolArea_SetPosition(node165, MAT_Vector3(2813.40515, 2391.397944, 507.263999))
  PatrolArea_SetRadius(node165, 100)
  PatrolArea_SetMinZ(node165, -20)
  PatrolArea_SetMaxZ(node165, 40)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Path", "ApproachPath")
  Node_AddSon(node143, node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node166, node167)
  Position_SetPosition(node167, MAT_Vector3(2827.914435, 2388.735538, 521.051175))
  Position_SetRadius(node167, 5)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node166, node168)
  Position_SetPosition(node168, MAT_Vector3(2950.855378, 2378.989366, 528.277027))
  Position_SetRadius(node168, 5)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Path", "DockPath")
  Node_AddSon(node143, node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node169, node170)
  Position_SetPosition(node170, MAT_Vector3(2969.476874, 2377.517811, 527.886806))
  Position_SetRadius(node170, 5)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node169, node171)
  Position_SetPosition(node171, MAT_Vector3(3027.508887, 2377.5468, 527.955977))
  Position_SetRadius(node171, 5)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_2")
  Node_AddSon(node143, node172)
  PatrolArea_SetPosition(node172, MAT_Vector3(3117.605364, 1403.366285, 344.169052))
  PatrolArea_SetRadius(node172, 250)
  PatrolArea_SetMinZ(node172, -220)
  PatrolArea_SetMaxZ(node172, 220)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_PatrolArea", "MayDayPatrolArea_1")
  Node_AddSon(node143, node173)
  PatrolArea_SetPosition(node173, MAT_Vector3(2235.757442, 943.584579, 265.837952))
  PatrolArea_SetRadius(node173, 100)
  PatrolArea_SetMinZ(node173, -100)
  PatrolArea_SetMaxZ(node173, 100)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_PatrolArea", "MayDayFollowArea_1")
  Node_AddSon(node143, node174)
  PatrolArea_SetPosition(node174, MAT_Vector3(2237.453375, 945.608631, 252.666717))
  PatrolArea_SetRadius(node174, 650)
  PatrolArea_SetMinZ(node174, -100)
  PatrolArea_SetMaxZ(node174, 450)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_PatrolArea", "BonusPatrolArea_1")
  Node_AddSon(node143, node175)
  PatrolArea_SetPosition(node175, MAT_Vector3(1087.008779, 624.187426, 355.713227))
  PatrolArea_SetRadius(node175, 550)
  PatrolArea_SetMinZ(node175, -120)
  PatrolArea_SetMaxZ(node175, 350)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node141, node176)
  Node_EnterSimulation(node176)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node141, node177)
  Node_EnterSimulation(node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_Trigger", "BonusTriggerPresence_1")
  Node_AddSon(node177, node178)
  Body_SetFriendOrFoeID(node178, 0)
  Body_SetPosition(node178, MAT_Vector3(1081.407677, 620.252258, 359.596045))
  Trigger_SetPresenceSphere(node178, 612)
  Node_EnterSimulation(node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node141, node179)
  Node_EnterSimulation(node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node179, node180)
  Body_SetCS(node180, MAT_Vector3(2923.485468, 2130.829646, 517.460949), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node180, "osd/pla/pla_ship3.osd")
  Body_SetFriendOrFoeID(node180, 0)
  Node_EnterSimulation(node180)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("nod_vessel", "wng_mayday_1")
  Node_AddSon(node179, node181)
  Body_SetCS(node181, MAT_Vector3(2899.617208, 2128.678788, 514.467451), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node181, "osd/wng/wng_mayday_evil.osd")
  Body_SetFriendOrFoeID(node181, 6)
  Body_SetNameKey(node181, -1)
  Body_SetCargoKey(node181, -1, 0)
  Body_SetCargoKey(node181, -1, 1)
  Body_SetCargoKey(node181, -1, 2)
  Node_EnterSimulation(node181)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("nod_waypoint", "nav_waypoint_1")
  Node_AddSon(node179, node182)
  Body_SetPosition(node182, MAT_Vector3(3869.371624, 2192.436816, 606.074412))
  WayPoint_SetRadius(node182, 50)
  Node_ParseIniFile(node182, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_1")
  Node_AddSon(node179, node183)
  Body_SetPosition(node183, MAT_Vector3(3635.036745, 1803.591247, 575.063631))
  WayPoint_SetRadius(node183, 50)
  Node_ParseIniFile(node183, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node183)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_2")
  Node_AddSon(node179, node184)
  Body_SetPosition(node184, MAT_Vector3(3341.0112, 1605.074344, 480.99916))
  WayPoint_SetRadius(node184, 50)
  Node_ParseIniFile(node184, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node184)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_3")
  Node_AddSon(node179, node185)
  Body_SetPosition(node185, MAT_Vector3(2205.220536, 960.662968, 273.259726))
  WayPoint_SetRadius(node185, 50)
  Node_ParseIniFile(node185, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node185)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("nod_waypoint", "nav_guard_1")
  Node_AddSon(node179, node186)
  Body_SetPosition(node186, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node186, 5)
  Node_ParseIniFile(node186, "osd/nav/nav_guard.osd")
  Node_EnterSimulation(node186)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("nod_vessel", "ent_bomber_1")
  Node_AddSon(node179, node187)
  Body_SetCS(node187, MAT_Vector3(3829.595761, 2483.914937, 654.7311), MAT_Vector3(134.29017, 0, 0))
  Node_ParseIniFile(node187, "osd/ent/ent_bomber_at_big.osd")
  Body_SetFriendOrFoeID(node187, 3)
  Body_SetNameKey(node187, -1)
  Body_SetCargoKey(node187, -1, 0)
  Body_SetCargoKey(node187, -1, 1)
  Body_SetCargoKey(node187, -1, 2)
  Node_EnterSimulation(node187)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("nod_vessel", "ent_bomber_2")
  Node_AddSon(node179, node188)
  Body_SetCS(node188, MAT_Vector3(3865.249438, 1835.422749, 616.579775), MAT_Vector3(33.479384, 0, 0))
  Node_ParseIniFile(node188, "osd/ent/ent_bomber_at_big.osd")
  Body_SetFriendOrFoeID(node188, 3)
  Body_SetNameKey(node188, -1)
  Body_SetCargoKey(node188, -1, 0)
  Body_SetCargoKey(node188, -1, 1)
  Body_SetCargoKey(node188, -1, 2)
  Node_EnterSimulation(node188)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("nod_vessel", "ent_scout_wide_1")
  Node_AddSon(node179, node189)
  Body_SetCS(node189, MAT_Vector3(2847.366549, 2390.569965, 646.808766), MAT_Vector3(-117.623419, 0, 0))
  Node_ParseIniFile(node189, "osd/ent/ent_scout_at_big.osd")
  Body_SetFriendOrFoeID(node189, 3)
  Body_SetNameKey(node189, -1)
  Body_SetCargoKey(node189, -1, 0)
  Body_SetCargoKey(node189, -1, 1)
  Body_SetCargoKey(node189, -1, 2)
  Node_EnterSimulation(node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("nod_vessel", "ent_scout_wide_2")
  Node_AddSon(node179, node190)
  Body_SetCS(node190, MAT_Vector3(3534.384255, 1496.530576, 649.638168), MAT_Vector3(-16.195561, 0, 0))
  Node_ParseIniFile(node190, "osd/ent/ent_scout_at_big.osd")
  Body_SetFriendOrFoeID(node190, 3)
  Body_SetNameKey(node190, -1)
  Body_SetCargoKey(node190, -1, 0)
  Body_SetCargoKey(node190, -1, 1)
  Body_SetCargoKey(node190, -1, 2)
  Node_EnterSimulation(node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("nod_vessel", "ent_scout_wide_3")
  Node_AddSon(node179, node191)
  Body_SetCS(node191, MAT_Vector3(3556.433168, 2666.079078, 706.143902), MAT_Vector3(178.423288, 0, 0))
  Node_ParseIniFile(node191, "osd/ent/ent_scout_at_big.osd")
  Body_SetFriendOrFoeID(node191, 3)
  Body_SetNameKey(node191, -1)
  Body_SetCargoKey(node191, -1, 0)
  Body_SetCargoKey(node191, -1, 1)
  Body_SetCargoKey(node191, -1, 2)
  Node_EnterSimulation(node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("nod_vessel", "ent_scout_wide_4")
  Node_AddSon(node179, node192)
  Body_SetCS(node192, MAT_Vector3(3395.065439, 2590.481777, 619.837996), MAT_Vector3(174.839419, 0, 0))
  Node_ParseIniFile(node192, "osd/ent/ent_scout_wide.osd")
  Body_SetFriendOrFoeID(node192, 3)
  Body_SetNameKey(node192, -1)
  Body_SetCargoKey(node192, -1, 0)
  Body_SetCargoKey(node192, -1, 1)
  Body_SetCargoKey(node192, -1, 2)
  Node_EnterSimulation(node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("nod_vessel", "wng_animal_1")
  Node_AddSon(node179, node193)
  Body_SetCS(node193, MAT_Vector3(2813.40515, 2391.397944, 480.089627), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node193, "osd/wng/wng_animal.osd")
  Body_SetFriendOrFoeID(node193, 8)
  Body_SetNameKey(node193, -1)
  Body_SetCargoKey(node193, -1, 0)
  Body_SetCargoKey(node193, -1, 1)
  Body_SetCargoKey(node193, -1, 2)
  Node_EnterSimulation(node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("nod_vessel", "wng_stoney_1")
  Node_AddSon(node179, node194)
  Body_SetCS(node194, MAT_Vector3(2813.40515, 2391.397944, 480.089627), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node194, "osd/wng/wng_stoney.osd")
  Body_SetFriendOrFoeID(node194, 8)
  Body_SetNameKey(node194, -1)
  Body_SetCargoKey(node194, -1, 0)
  Body_SetCargoKey(node194, -1, 1)
  Body_SetCargoKey(node194, -1, 2)
  Node_EnterSimulation(node194)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("nod_vessel", "ent_bomber_1_2")
  Node_AddSon(node179, node195)
  Body_SetCS(node195, MAT_Vector3(3744.466821, 1672.957883, 636.265289), MAT_Vector3(27.104152, 0, 0))
  Node_ParseIniFile(node195, "osd/ent/ent_bomber_at_big.osd")
  Body_SetFriendOrFoeID(node195, 3)
  Body_SetNameKey(node195, -1)
  Body_SetCargoKey(node195, -1, 0)
  Body_SetCargoKey(node195, -1, 1)
  Body_SetCargoKey(node195, -1, 2)
  Node_EnterSimulation(node195)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("nod_vessel", "ent_scout_wide_1_2")
  Node_AddSon(node179, node196)
  Body_SetCS(node196, MAT_Vector3(3986.918216, 1926.516491, 653.18091), MAT_Vector3(52.173019, 0, 0))
  Node_ParseIniFile(node196, "osd/ent/ent_scout_at_big.osd")
  Body_SetFriendOrFoeID(node196, 3)
  Body_SetNameKey(node196, -1)
  Body_SetCargoKey(node196, -1, 0)
  Body_SetCargoKey(node196, -1, 1)
  Body_SetCargoKey(node196, -1, 2)
  Node_EnterSimulation(node196)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("nod_vessel", "ent_scout_wide_2_2")
  Node_AddSon(node179, node197)
  Body_SetCS(node197, MAT_Vector3(3381.830027, 2683.621899, 770.208948), MAT_Vector3(-162.499547, 0, 0))
  Node_ParseIniFile(node197, "osd/ent/ent_scout_at_big.osd")
  Body_SetFriendOrFoeID(node197, 3)
  Body_SetNameKey(node197, -1)
  Body_SetCargoKey(node197, -1, 0)
  Body_SetCargoKey(node197, -1, 1)
  Body_SetCargoKey(node197, -1, 2)
  Node_EnterSimulation(node197)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("nod_vessel", "ent_scout_wide_3_2")
  Node_AddSon(node179, node198)
  Body_SetCS(node198, MAT_Vector3(3196.573133, 2563.283173, 774.868133), MAT_Vector3(-132.023049, 0, 0))
  Node_ParseIniFile(node198, "osd/ent/ent_scout_wide.osd")
  Body_SetFriendOrFoeID(node198, 3)
  Body_SetNameKey(node198, -1)
  Body_SetCargoKey(node198, -1, 0)
  Body_SetCargoKey(node198, -1, 1)
  Body_SetCargoKey(node198, -1, 2)
  Node_EnterSimulation(node198)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("nod_vessel", "ent_pla_scout_wide_1")
  Node_AddSon(node179, node199)
  Body_SetCS(node199, MAT_Vector3(2916.171934, 1288.67932, 390.999254), MAT_Vector3(-64.467778, 0, 0))
  Node_ParseIniFile(node199, "osd/ent/ent_scout_wide.osd")
  Body_SetFriendOrFoeID(node199, 7)
  Body_SetNameKey(node199, -1)
  Body_SetCargoKey(node199, -1, 0)
  Body_SetCargoKey(node199, -1, 1)
  Body_SetCargoKey(node199, -1, 2)
  Node_EnterSimulation(node199)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("nod_vessel", "pir_tz_scout2_wide_1")
  Node_AddSon(node179, node200)
  Body_SetCS(node200, MAT_Vector3(1215.416781, 607.144715, 358.58035), MAT_Vector3(-110.225913, 0, 0))
  Node_ParseIniFile(node200, "osd/pir_tz/pir_tz_scout2_wide.osd")
  Body_SetFriendOrFoeID(node200, 7)
  Body_SetNameKey(node200, -1)
  Body_SetCargoKey(node200, -1, 0)
  Body_SetCargoKey(node200, -1, 1)
  Body_SetCargoKey(node200, -1, 2)
  Node_EnterSimulation(node200)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("nod_vessel", "pir_tz_scout2_wide_2")
  Node_AddSon(node179, node201)
  Body_SetCS(node201, MAT_Vector3(937.08958, 727.020681, 358.58035), MAT_Vector3(-120.492498, 0, 0))
  Node_ParseIniFile(node201, "osd/pir_tz/pir_tz_scout2_wide.osd")
  Body_SetFriendOrFoeID(node201, 7)
  Body_SetNameKey(node201, -1)
  Body_SetCargoKey(node201, -1, 0)
  Body_SetCargoKey(node201, -1, 1)
  Body_SetCargoKey(node201, -1, 2)
  Node_EnterSimulation(node201)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("nod_waypoint", "nav_guard_2")
  Node_AddSon(node179, node202)
  Body_SetPosition(node202, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node202, 5)
  Node_ParseIniFile(node202, "osd/nav/nav_guard.osd")
  Node_EnterSimulation(node202)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("nod_vessel", "gen_transporter_1")
  Node_AddSon(node179, node203)
  Body_SetCS(node203, MAT_Vector3(376.192636, 2833.450086, 391.818928), MAT_Vector3(-122.396481, 0, 0))
  Node_ParseIniFile(node203, "osd/gen/gen_transporter.osd")
  Body_SetFriendOrFoeID(node203, 2)
  Body_SetNameKey(node203, -1)
  Body_SetCargoKey(node203, 1100, 0)
  Body_SetCargoKey(node203, -1, 1)
  Body_SetCargoKey(node203, -1, 2)
  Node_EnterSimulation(node203)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node204)
  Camera_SetBackPlane(node204, 750)
  Node_EnterSimulation(node204)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node205)
  Node_EnterSimulation(node205)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node205, node206)
  Node_EnterSimulation(node206)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node205, node207)
  Node_EnterSimulation(node207)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node207, node208)
  Position_SetPosition(node208, MAT_Vector3(2950.152841, 2351.000594, 527.310831))
  Position_SetRadius(node208, 5)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("NOD_Path", "PlayerPath_1")
  Node_AddSon(node207, node209)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node209, node210)
  Position_SetPosition(node210, MAT_Vector3(3027.509, 2377.547, 527.956))
  Position_SetRadius(node210, 5)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node209, node211)
  Position_SetPosition(node211, MAT_Vector3(2919.529133, 2375.039214, 527.8868))
  Position_SetRadius(node211, 5)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node205, node212)
  Node_EnterSimulation(node212)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("NOD_Director", "UnDock")
  Node_AddSon(node212, node213)
  Node_EnterSimulation(node213)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("NOD_Director", "Intro")
  Node_AddSon(node212, node214)
  Node_EnterSimulation(node214)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("NOD_Director", "Director_1")
  Node_AddSon(node212, node215)
  Node_EnterSimulation(node215)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("NOD_Director", "Director_2")
  Node_AddSon(node212, node216)
  Node_EnterSimulation(node216)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node205, node217)
  Node_EnterSimulation(node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node205, node218)
  Node_EnterSimulation(node218)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, F)
SetEnemyMatrixElement(2, 0, N)
SetEnemyMatrixElement(3, 0, E)
SetEnemyMatrixElement(4, 0, E)
SetEnemyMatrixElement(5, 0, N)
SetEnemyMatrixElement(6, 0, F)
SetEnemyMatrixElement(7, 0, E)
SetEnemyMatrixElement(8, 0, F)
SetEnemyMatrixElement(9, 0, N)
SetEnemyMatrixElement(10, 0, N)
SetEnemyMatrixElement(11, 0, N)
SetEnemyMatrixElement(12, 0, N)
SetEnemyMatrixElement(13, 0, N)
SetEnemyMatrixElement(14, 0, N)
SetEnemyMatrixElement(15, 0, N)
SetEnemyMatrixElement(0, 1, F)
SetEnemyMatrixElement(1, 1, F)
SetEnemyMatrixElement(2, 1, N)
SetEnemyMatrixElement(3, 1, E)
SetEnemyMatrixElement(4, 1, N)
SetEnemyMatrixElement(5, 1, N)
SetEnemyMatrixElement(6, 1, N)
SetEnemyMatrixElement(7, 1, N)
SetEnemyMatrixElement(8, 1, F)
SetEnemyMatrixElement(9, 1, N)
SetEnemyMatrixElement(10, 1, N)
SetEnemyMatrixElement(11, 1, N)
SetEnemyMatrixElement(12, 1, N)
SetEnemyMatrixElement(13, 1, N)
SetEnemyMatrixElement(14, 1, N)
SetEnemyMatrixElement(15, 1, N)
SetEnemyMatrixElement(0, 2, N)
SetEnemyMatrixElement(1, 2, N)
SetEnemyMatrixElement(2, 2, N)
SetEnemyMatrixElement(3, 2, E)
SetEnemyMatrixElement(4, 2, N)
SetEnemyMatrixElement(5, 2, N)
SetEnemyMatrixElement(6, 2, N)
SetEnemyMatrixElement(7, 2, N)
SetEnemyMatrixElement(8, 2, F)
SetEnemyMatrixElement(9, 2, N)
SetEnemyMatrixElement(10, 2, N)
SetEnemyMatrixElement(11, 2, N)
SetEnemyMatrixElement(12, 2, N)
SetEnemyMatrixElement(13, 2, N)
SetEnemyMatrixElement(14, 2, N)
SetEnemyMatrixElement(15, 2, N)
SetEnemyMatrixElement(0, 3, E)
SetEnemyMatrixElement(1, 3, E)
SetEnemyMatrixElement(2, 3, E)
SetEnemyMatrixElement(3, 3, F)
SetEnemyMatrixElement(4, 3, F)
SetEnemyMatrixElement(5, 3, N)
SetEnemyMatrixElement(6, 3, N)
SetEnemyMatrixElement(7, 3, N)
SetEnemyMatrixElement(8, 3, E)
SetEnemyMatrixElement(9, 3, N)
SetEnemyMatrixElement(10, 3, N)
SetEnemyMatrixElement(11, 3, N)
SetEnemyMatrixElement(12, 3, N)
SetEnemyMatrixElement(13, 3, N)
SetEnemyMatrixElement(14, 3, N)
SetEnemyMatrixElement(15, 3, N)
SetEnemyMatrixElement(0, 4, E)
SetEnemyMatrixElement(1, 4, N)
SetEnemyMatrixElement(2, 4, N)
SetEnemyMatrixElement(3, 4, F)
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
SetEnemyMatrixElement(0, 6, F)
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
SetEnemyMatrixElement(0, 7, E)
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
SetEnemyMatrixElement(0, 8, F)
SetEnemyMatrixElement(1, 8, F)
SetEnemyMatrixElement(2, 8, F)
SetEnemyMatrixElement(3, 8, E)
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
o3 = { [nil] = {}, GetCalculated = function()
  if not (True ~= True) then
    if not (o6764.Value ~= True) then
      return 1
    else
      return 0
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
    if not (o6787.Value ~= True) then
      return 1
    else
      return 0
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
    if not (o6788.Value ~= True) then
      return 1
    else
      return 0
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
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o904, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o904, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o904, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetFriendlyFireMode(L0.Node, 0)
  CallFunction(o904, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o907.SetStateValue(L1)
end, SetStateValue_KineticShield75 = function(L0, L1)
  o908.SetStateValue(L1)
end, SetStateValue_KineticShield25 = function(L0, L1)
  o910.SetStateValue(L1)
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
o907 = { [nil] = {}, Start = function()
  o907["Value"] = False
  o5725.StartCalculate()
end, SetStateValue = function(L0)
  if not (o907.Value == L0) then
    o907["Value"] = L0
    o5725.ReCalculate()
  end
end }
o908 = { [nil] = {}, Start = function()
  o908["Value"] = False
  o5732.StartCalculate()
end, SetStateValue = function(L0)
  if not (o908.Value == L0) then
    o908["Value"] = L0
    o5732.ReCalculate()
  end
end }
o910 = { [nil] = {}, Start = function()
  o910["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o910.Value == L0) then
    o910["Value"] = L0
    o5733.ReCalculate()
  end
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

end }
S_o1457 = { [nil] = {}, Start = function(L0)

end }
S_o1503 = { [nil] = {}, Start = function(L0)

end }
S_o1549 = { [nil] = {}, Start = function(L0)

end }
S_o1595 = { [nil] = {}, Start = function(L0)

end }
S_o1641 = { [nil] = {}, Start = function(L0)

end }
S_o1687 = { [nil] = {}, Start = function(L0)

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
  ShieldedBody_SetFriendlyFireMode(L0.Node, 0)
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o1733, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1733, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetKineticShield(L0.Node, 0, 0.42)
  CallFunction(o1733, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1733, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  ShieldedBody_SetShieldBarrier(L0.Node, 0.01, 0)
  CallFunction(o1733, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, SetStateValue_Destroyed = function(L0, L1)
  o1738.SetStateValue(L1)
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
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o1735.Value ~= True) then
        L1 = 0
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
  if not (o5723.Value ~= True) then
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
    DelayedFunction(25, o1734, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1734.Value == L0) then
    o1734["Value"] = L0
    CallFunction(o1733, "ProcesseStateChange")
  end
end }
o1735 = { [nil] = {}, GetCalculated = function()
  if not (o6540.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1735.SetStateValue(o1735.GetCalculated())
end, StartCalculate = function()
  o1735["Value"] = o1735.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1735.Value == L0) then
    o1735["Value"] = L0
    CallFunction(o1733, "ProcesseStateChange")
  end
end }
o1738 = { [nil] = {}, Start = function()
  o1738["Value"] = False
  o5726.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1738.Value == L0) then
    o1738["Value"] = L0
    o5726.ReCalculate()
  end
end }
S_o1782 = { [nil] = {}, Start = function(L0)

end }
S_o1828 = { [nil] = {}, Start = function(L0)

end }
S_o1874 = { [nil] = {}, Start = function(L0)

end }
S_o1920 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1920, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1920, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1920, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetFriendlyFireMode(L0.Node, 0)
  CallFunction(o1920, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1920, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o1920, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1920, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o1920, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Attacked = function(L0, L1)
  o1924.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o1925.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1921.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o1922.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1921 = { [nil] = {}, GetCalculated = function()
  if not (o1924.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1921.SetStateValue(o1921.GetCalculated())
end, StartCalculate = function()
  o1921["Value"] = o1921.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1921.Value == L0) then
    o1921["Value"] = L0
    CallFunction(o1920, "ProcesseStateChange")
  end
end }
o1922 = { [nil] = {}, GetCalculated = function()
  if not (o5727.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1922.SetStateValue(o1922.GetCalculated())
end, StartCalculate = function()
  o1922["Value"] = o1922.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1922.Value == L0) then
    o1922["Value"] = L0
    CallFunction(o1920, "ProcesseStateChange")
  end
end }
o1924 = { [nil] = {}, Start = function()
  o1924["Value"] = False
  o1921.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1924.Value == L0) then
    o1924["Value"] = L0
    o1921.ReCalculate()
  end
end }
o1925 = { [nil] = {}, Start = function()
  o1925["Value"] = False
  o5729.StartCalculate()
  o5730.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1925.Value == L0) then
    o1925["Value"] = L0
    o5729.ReCalculate()
    o5730.ReCalculate()
  end
end }
S_o1969 = { [nil] = {}, Start = function(L0)

end }
S_o2015 = { [nil] = {}, Start = function(L0)

end }
S_o2061 = { [nil] = {}, Start = function(L0)

end }
S_o2107 = { [nil] = {}, Start = function(L0)

end }
S_o2153 = { [nil] = {}, Start = function(L0)

end }
S_o2199 = { [nil] = {}, Start = function(L0)

end }
S_o2245 = { [nil] = {}, Start = function(L0)

end }
S_o2291 = { [nil] = {}, Start = function(L0)

end }
S_o2337 = { [nil] = {}, Start = function(L0)

end }
S_o2383 = { [nil] = {}, Start = function(L0)

end }
S_o2429 = { [nil] = {}, Start = function(L0)

end }
S_o2475 = { [nil] = {}, Start = function(L0)

end }
S_o2521 = { [nil] = {}, Start = function(L0)

end }
S_o2567 = { [nil] = {}, Start = function(L0)

end }
S_o2613 = { [nil] = {}, Start = function(L0)

end }
S_o2659 = { [nil] = {}, Start = function(L0)

end }
S_o2705 = { [nil] = {}, Start = function(L0)

end }
S_o2751 = { [nil] = {}, Start = function(L0)

end }
S_o2797 = { [nil] = {}, Start = function(L0)

end }
S_o2843 = { [nil] = {}, Start = function(L0)

end }
S_o2889 = { [nil] = {}, Start = function(L0)

end }
S_o2935 = { [nil] = {}, Start = function(L0)

end }
S_o2981 = { [nil] = {}, Start = function(L0)

end }
S_o3027 = { [nil] = {}, Start = function(L0)

end }
S_o3073 = { [nil] = {}, Start = function(L0)

end }
S_o3119 = { [nil] = {}, Start = function(L0)

end }
S_o3165 = { [nil] = {}, Start = function(L0)

end }
S_o3211 = { [nil] = {}, Start = function(L0)

end }
S_o3257 = { [nil] = {}, Start = function(L0)

end }
S_o3303 = { [nil] = {}, Start = function(L0)

end }
S_o3349 = { [nil] = {}, Start = function(L0)

end }
S_o3395 = { [nil] = {}, Start = function(L0)

end }
S_o3441 = { [nil] = {}, Start = function(L0)

end }
S_o3487 = { [nil] = {}, Start = function(L0)

end }
S_o3533 = { [nil] = {}, Start = function(L0)

end }
S_o3579 = { [nil] = {}, Start = function(L0)

end }
S_o3625 = { [nil] = {}, Start = function(L0)

end }
S_o3671 = { [nil] = {}, Start = function(L0)

end }
S_o3717 = { [nil] = {}, Start = function(L0)

end }
S_o3763 = { [nil] = {}, Start = function(L0)

end }
S_o3809 = { [nil] = {}, Start = function(L0)

end }
S_o3855 = { [nil] = {}, Start = function(L0)

end }
S_o3901 = { [nil] = {}, Start = function(L0)

end }
S_o3947 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3947, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3947, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3947, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o3947, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o3947, "Code5")
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
S_o3993 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3993, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3993, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3993, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o3993, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o3993, "Code5")
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
S_o4039 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4039, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4039, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4039, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4039, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4039, "Code5")
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
S_o4085 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4085, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4085, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4085, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4085, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4085, "Code5")
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
S_o4131 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4131, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4131, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4131, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4131, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4131, "Code5")
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
S_o4177 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4177, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4177, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4177, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4177, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4177, "Code5")
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
S_o4223 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4223, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4223, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4223, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4223, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4223, "Code5")
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
S_o4269 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4269, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4269, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4269, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4269, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4269, "Code5")
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
S_o4315 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4315, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4315, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4315, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4315, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4315, "Code5")
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
S_o4361 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4361, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4361, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4361, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4361, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4361, "Code5")
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
S_o4407 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4407, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4407, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4407, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4407, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4407, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o4407, "Code6")
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
      if not (o4408.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4408 = { [nil] = {}, GetCalculated = function()
  if not (o5784.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4408.SetStateValue(o4408.GetCalculated())
end, StartCalculate = function()
  o4408["Value"] = o4408.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4408.Value == L0) then
    DelayedFunction(5, o4408, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4408.Value == L0) then
    o4408["Value"] = L0
    CallFunction(o4407, "ProcesseStateChange")
  end
end }
S_o4453 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4453, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4453, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4453, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4453, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4453, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o4453, "Code6")
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
      if not (o4454.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4454 = { [nil] = {}, GetCalculated = function()
  if not (o5784.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4454.SetStateValue(o4454.GetCalculated())
end, StartCalculate = function()
  o4454["Value"] = o4454.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4454.Value == L0) then
    DelayedFunction(5, o4454, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4454.Value == L0) then
    o4454["Value"] = L0
    CallFunction(o4453, "ProcesseStateChange")
  end
end }
S_o4499 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4499, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4499, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4499, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4499, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4499, "Code5")
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
S_o4545 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4545, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4545, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4545, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4545, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4545, "Code5")
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
S_o4591 = { [nil] = {}, Start = function(L0)

end }
S_o4637 = { [nil] = {}, Start = function(L0)

end }
S_o4683 = { [nil] = {}, Start = function(L0)

end }
S_o4729 = { [nil] = {}, Start = function(L0)

end }
S_o4775 = { [nil] = {}, Start = function(L0)

end }
S_o4821 = { [nil] = {}, Start = function(L0)

end }
S_o4867 = { [nil] = {}, Start = function(L0)

end }
S_o4913 = { [nil] = {}, Start = function(L0)

end }
S_o4959 = { [nil] = {}, Start = function(L0)

end }
S_o5005 = { [nil] = {}, Start = function(L0)

end }
S_o5051 = { [nil] = {}, Start = function(L0)

end }
S_o5097 = { [nil] = {}, Start = function(L0)

end }
S_o5143 = { [nil] = {}, Start = function(L0)

end }
S_o5189 = { [nil] = {}, Start = function(L0)

end }
S_o5235 = { [nil] = {}, Start = function(L0)

end }
S_o5281 = { [nil] = {}, Start = function(L0)

end }
S_o5327 = { [nil] = {}, Start = function(L0)

end }
S_o5373 = { [nil] = {}, Start = function(L0)

end }
S_o5419 = { [nil] = {}, Start = function(L0)

end }
S_o5465 = { [nil] = {}, Start = function(L0)

end }
S_o5511 = { [nil] = {}, Start = function(L0)

end }
S_o5557 = { [nil] = {}, Start = function(L0)

end }
S_o5603 = { [nil] = {}, Start = function(L0)

end }
o5677 = FormationLib.CreateFormation("InverseTriangle", "", "", "", 30, 20)
S_o5679 = { [nil] = {}, Start = function(L0)

end }
S_o5680 = { [nil] = {}, Start = function(L0)

end }
o5681 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/ApproachPath", "/Scenario_Dynamic/Navigation/DockPath", "/Scenario_Dynamic/Navigation/DockArea")
S_o5682 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5682, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5682, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5682, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o5682, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5682, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5682, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5687.SetStateValue(L1)
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
o5687 = { [nil] = {}, Start = function()
  o5687["Value"] = False
  o5727.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5687.Value == L0) then
    o5687["Value"] = L0
    o5727.ReCalculate()
  end
end }
S_o5688 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_vendettagatlin", 1)
  Body_AddItem(L0.Node, "gun_flak", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_energy", 200)
  Body_AddItem(L0.Node, "ammo_shell", 9999)
  Body_AddItem(L0.Node, "torpedo_threshershark", 3)
  Body_AddItem(L0.Node, "torpedo_stanley", 1)
  Body_AddItem(L0.Node, "device_repair1", 1)
  Body_AddItem(L0.Node, "device_generator1", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 8)
  Body_AddItem(L0.Node, "gun_empactor", 1)
  CallFunction(o5688, "Code11")
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
o5702 = { [nil] = {}, GetCalculated = function()
  if not (o5710.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5702.SetStateValue(o5702.GetCalculated())
end, StartCalculate = function()
  o5702["Value"] = o5702.GetCalculated()
  o5861.StartCalculate()
  o5917.StartCalculate()
  o5973.StartCalculate()
  o6029.StartCalculate()
  o6085.StartCalculate()
  o6141.StartCalculate()
  o6197.StartCalculate()
  o6255.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5702.Value == L0) then
    o5702["Value"] = L0
    o5861.ReCalculate()
    o5917.ReCalculate()
    o5973.ReCalculate()
    o6029.ReCalculate()
    o6085.ReCalculate()
    o6141.ReCalculate()
    o6197.ReCalculate()
    o6255.ReCalculate()
  end
end }
o5703 = { [nil] = {}, GetCalculated = function()
  if not (o5837.Value ~= True) then
    if not (o5714.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5703.SetStateValue(o5703.GetCalculated())
end, StartCalculate = function()
  o5703["Value"] = o5703.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o5839.Node)
end, SetStateValue = function(L0)
  if not (o5703.Value == L0) then
    o5703["Value"] = L0
    if not (L0 ~= 1) then
      o5703.ChangeTo1()
    end
  end
end }
o5704 = { [nil] = {}, GetCalculated = function()
  if not (o5842.Value ~= True) then
    if not (o5715.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5704.SetStateValue(o5704.GetCalculated())
end, StartCalculate = function()
  o5704["Value"] = o5704.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o5844.Node)
end, SetStateValue = function(L0)
  if not (o5704.Value == L0) then
    o5704["Value"] = L0
    if not (L0 ~= 1) then
      o5704.ChangeTo1()
    end
  end
end }
o5705 = { [nil] = {}, GetCalculated = function()
  if not (o5847.Value ~= True) then
    if not (o5716.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5705.SetStateValue(o5705.GetCalculated())
end, StartCalculate = function()
  o5705["Value"] = o5705.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o5849.Node)
end, SetStateValue = function(L0)
  if not (o5705.Value == L0) then
    o5705["Value"] = L0
    if not (L0 ~= 1) then
      o5705.ChangeTo1()
    end
  end
end }
o5706 = { [nil] = {}, GetCalculated = function()
  if not (o5845.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5706.SetStateValue(o5706.GetCalculated())
end, StartCalculate = function()
  o5706["Value"] = o5706.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5765.Node, o5688.Node, 240)
  SendRadioMessageTake(o5688.Node, o5688.Node, 241)
end, SetStateValue = function(L0)
  if not (o5706.Value == L0) then
    DelayedFunction(0.3, o5706, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5706.Value == L0) then
    o5706["Value"] = L0
    if not (L0 ~= 1) then
      o5706.ChangeTo1()
    end
  end
end }
o5707 = { [nil] = {}, GetCalculated = function()
  if not (o5852.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5707.SetStateValue(o5707.GetCalculated())
end, StartCalculate = function()
  o5707["Value"] = o5707.GetCalculated()
  o5708.StartCalculate()
  o5709.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5765.Node, o5688.Node, 242)
  SendRadioMessageTake(o5688.Node, o5688.Node, 243)
end, SetStateValue = function(L0)
  if not (o5707.Value == L0) then
    o5707["Value"] = L0
    o5708.ReCalculate()
    o5709.ReCalculate()
    if not (L0 ~= 1) then
      o5707.ChangeTo1()
    end
  end
end }
o5708 = { [nil] = {}, GetCalculated = function()
  if not (o5707.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5708.SetStateValue(o5708.GetCalculated())
end, StartCalculate = function()
  o5708["Value"] = o5708.GetCalculated()
end, ChangeTo1 = function()
  SetEnemyMatrixElement(6, 0, E)
  SetEnemyMatrixElement(0, 6, E)
  CallFunction(o5765, "Code30")
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  Game_PlayMusic(GetGameNode(), "Agressive")
end, SetStateValue = function(L0)
  if not (o5708.Value == L0) then
    DelayedFunction(10, o5708, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5708.Value == L0) then
    o5708["Value"] = L0
    if not (L0 ~= 1) then
      o5708.ChangeTo1()
    end
  end
end }
o5709 = { [nil] = {}, GetCalculated = function()
  if not (o5707.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5709.SetStateValue(o5709.GetCalculated())
end, StartCalculate = function()
  o5709["Value"] = o5709.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5765.Node, o5688.Node, 246)
  SendRadioMessageTake(o5688.Node, o5688.Node, 245)
end, SetStateValue = function(L0)
  if not (o5709.Value == L0) then
    DelayedFunction(13, o5709, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5709.Value == L0) then
    o5709["Value"] = L0
    if not (L0 ~= 1) then
      o5709.ChangeTo1()
    end
  end
end }
o5710 = { [nil] = {}, GetCalculated = function()
  if not (o5789.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5710.SetStateValue(o5710.GetCalculated())
end, StartCalculate = function()
  o5710["Value"] = o5710.GetCalculated()
  o5702.StartCalculate()
  o5712.StartCalculate()
  o5713.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5710.Value == L0) then
    o5710["Value"] = L0
    o5702.ReCalculate()
    o5712.ReCalculate()
    o5713.ReCalculate()
  end
end }
o5712 = { [nil] = {}, GetCalculated = function()
  if not (o5710.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5712.SetStateValue(o5712.GetCalculated())
end, StartCalculate = function()
  o5712["Value"] = o5712.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5688.Node, o5688.Node, 247)
  SendRadioMessageTake(o5765.Node, o5688.Node, 248)
end, SetStateValue = function(L0)
  if not (o5712.Value == L0) then
    o5712["Value"] = L0
    if not (L0 ~= 1) then
      o5712.ChangeTo1()
    end
  end
end }
o5713 = { [nil] = {}, GetCalculated = function()
  if not (o5710.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5713.SetStateValue(o5713.GetCalculated())
end, StartCalculate = function()
  o5713["Value"] = o5713.GetCalculated()
  o5772.StartCalculate()
end, ChangeTo1 = function()
  CallFunction(o5765, "Code39")
end, SetStateValue = function(L0)
  if not (o5713.Value == L0) then
    DelayedFunction(16, o5713, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5713.Value == L0) then
    o5713["Value"] = L0
    o5772.ReCalculate()
    if not (L0 ~= 1) then
      o5713.ChangeTo1()
    end
  end
end }
o5714 = { [nil] = {}, Start = function()
  o5714["Value"] = False
  o5703.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5714.Value == L0) then
    o5714["Value"] = L0
    o5703.ReCalculate()
  end
end }
o5715 = { [nil] = {}, Start = function()
  o5715["Value"] = False
  o5704.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5715.Value == L0) then
    o5715["Value"] = L0
    o5704.ReCalculate()
  end
end }
o5716 = { [nil] = {}, Start = function()
  o5716["Value"] = False
  o5705.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5716.Value == L0) then
    o5716["Value"] = L0
    o5705.ReCalculate()
  end
end }
o5718 = { [nil] = {}, GetCalculated = function()
  if not (o6201.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5718.SetStateValue(o5718.GetCalculated())
end, StartCalculate = function()
  o5718["Value"] = o5718.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6195.Node, o5688.Node, 249)
end, SetStateValue = function(L0)
  if not (o5718.Value == L0) then
    DelayedFunction(2, o5718, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5718.Value == L0) then
    o5718["Value"] = L0
    if not (L0 ~= 1) then
      o5718.ChangeTo1()
    end
  end
end }
o5719 = { [nil] = {}, GetCalculated = function()
  if not (o6259.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5719.SetStateValue(o5719.GetCalculated())
end, StartCalculate = function()
  o5719["Value"] = o5719.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6253.Node, o5688.Node, 250)
end, SetStateValue = function(L0)
  if not (o5719.Value == L0) then
    DelayedFunction(1, o5719, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5719.Value == L0) then
    o5719["Value"] = L0
    if not (L0 ~= 1) then
      o5719.ChangeTo1()
    end
  end
end }
o5720 = { [nil] = {}, GetCalculated = function()
  if not (o6217.Value == True) then
    if not (o5724.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5720.SetStateValue(o5720.GetCalculated())
end, StartCalculate = function()
  o5720["Value"] = o5720.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o6195, "Code7")
end, SetStateValue = function(L0)
  if not (o5720.Value == L0) then
    o5720["Value"] = L0
    if not (L0 ~= 1) then
      o5720.ChangeTo1()
    end
  end
end }
o5721 = { [nil] = {}, GetCalculated = function()
  if not (o6275.Value == True) then
    if not (o5724.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5721.SetStateValue(o5721.GetCalculated())
end, StartCalculate = function()
  o5721["Value"] = o5721.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o6253, "Code7")
end, SetStateValue = function(L0)
  if not (o5721.Value == L0) then
    o5721["Value"] = L0
    if not (L0 ~= 1) then
      o5721.ChangeTo1()
    end
  end
end }
o5722 = { [nil] = {}, GetCalculated = function()
  if not (o5863.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5722.SetStateValue(o5722.GetCalculated())
end, StartCalculate = function()
  o5722["Value"] = o5722.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o5854.Node)
  SED_SetTaskTextKey(2102, -1, -1)
end, SetStateValue = function(L0)
  if not (o5722.Value == L0) then
    DelayedFunction(1, o5722, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5722.Value == L0) then
    o5722["Value"] = L0
    if not (L0 ~= 1) then
      o5722.ChangeTo1()
    end
  end
end }
o5723 = { [nil] = {}, GetCalculated = function()
  if not (o5863.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5723.SetStateValue(o5723.GetCalculated())
end, StartCalculate = function()
  o5723["Value"] = o5723.GetCalculated()
  o1734.StartCalculate()
  o6313.StartCalculate()
  o6369.StartCalculate()
  o6425.StartCalculate()
  o6481.StartCalculate()
  o6537.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5723.Value == L0) then
    DelayedFunction(60, o5723, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5723.Value == L0) then
    o5723["Value"] = L0
    o1734.ReCalculate()
    o6313.ReCalculate()
    o6369.ReCalculate()
    o6425.ReCalculate()
    o6481.ReCalculate()
    o6537.ReCalculate()
  end
end }
o5724 = { [nil] = {}, GetCalculated = function()
  if not (o5864.Value ~= True) then
    if not (o5920.Value ~= True) then
      if not (o5976.Value ~= True) then
        if not (o6032.Value ~= True) then
          if not (o6088.Value ~= True) then
            if not (o6144.Value ~= True) then
              if not (o6316.Value ~= True) then
                if not (o6372.Value ~= True) then
                  if not (o6428.Value ~= True) then
                    if not (o6484.Value ~= True) then
                      if not (o6540.Value ~= True) then
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
end, ReCalculate = function()
  o5724.SetStateValue(o5724.GetCalculated())
end, StartCalculate = function()
  o5724["Value"] = o5724.GetCalculated()
  o5720.StartCalculate()
  o5721.StartCalculate()
  o5738.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5688.Node, o5688.Node, 251)
  SED_SetTaskTextKey(0, -1, -1)
  Game_PrimaryObjectiveReached(GetGameNode(), 2, 2000, 2102)
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o5724.Value == L0) then
    DelayedFunction(10, o5724, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5724.Value == L0) then
    o5724["Value"] = L0
    o5720.ReCalculate()
    o5721.ReCalculate()
    o5738.ReCalculate()
    if not (L0 ~= 1) then
      o5724.ChangeTo1()
    end
  end
end }
o5725 = { [nil] = {}, GetCalculated = function()
  if not (o907.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5725.SetStateValue(o5725.GetCalculated())
end, StartCalculate = function()
  o5725["Value"] = o5725.GetCalculated()
  o5761.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5688.Node, o5688.Node, 708)
end, SetStateValue = function(L0)
  if not (o5725.Value == L0) then
    o5725["Value"] = L0
    o5761.ReCalculate()
    if not (L0 ~= 1) then
      o5725.ChangeTo1()
    end
  end
end }
o5726 = { [nil] = {}, GetCalculated = function()
  if not (o1738.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5726.SetStateValue(o5726.GetCalculated())
end, StartCalculate = function()
  o5726["Value"] = o5726.GetCalculated()
  o5762.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5688.Node, o5688.Node, 709)
end, SetStateValue = function(L0)
  if not (o5726.Value == L0) then
    o5726["Value"] = L0
    o5762.ReCalculate()
    if not (L0 ~= 1) then
      o5726.ChangeTo1()
    end
  end
end }
o5727 = { [nil] = {}, GetCalculated = function()
  if not (o5687.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5727.SetStateValue(o5727.GetCalculated())
end, StartCalculate = function()
  o5727["Value"] = o5727.GetCalculated()
  o1922.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5727.Value == L0) then
    o5727["Value"] = L0
    o1922.ReCalculate()
  end
end }
o5728 = { [nil] = {}, GetCalculated = function()
  if not (o6540.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5728.SetStateValue(o5728.GetCalculated())
end, StartCalculate = function()
  o5728["Value"] = o5728.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o5854.Node)
  SED_SetTaskTextKey(2102, -1, -1)
end, SetStateValue = function(L0)
  if not (o5728.Value == L0) then
    o5728["Value"] = L0
    if not (L0 ~= 1) then
      o5728.ChangeTo1()
    end
  end
end }
o5729 = { [nil] = {}, GetCalculated = function()
  if not (o6596.Value ~= True) then
    if not (o6652.Value ~= True) then
      if not (o1925.Value ~= False) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o5729.SetStateValue(o5729.GetCalculated())
end, StartCalculate = function()
  o5729["Value"] = o5729.GetCalculated()
  o5745.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5729.Value == L0) then
    o5729["Value"] = L0
    o5745.ReCalculate()
  end
end }
o5730 = { [nil] = {}, GetCalculated = function()
  if not (o1925.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5730.SetStateValue(o5730.GetCalculated())
end, StartCalculate = function()
  o5730["Value"] = o5730.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveFailed(GetGameNode(), 1, 0, 0)
end, SetStateValue = function(L0)
  if not (o5730.Value == L0) then
    o5730["Value"] = L0
    if not (L0 ~= 1) then
      o5730.ChangeTo1()
    end
  end
end }
o5731 = { [nil] = {}, GetCalculated = function()
  if not (o6556.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5731.SetStateValue(o5731.GetCalculated())
end, StartCalculate = function()
  o5731["Value"] = o5731.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2103)
  SED_SetTaskTextKey(2102, -1, -1)
end, SetStateValue = function(L0)
  if not (o5731.Value == L0) then
    o5731["Value"] = L0
    if not (L0 ~= 1) then
      o5731.ChangeTo1()
    end
  end
end }
o5732 = { [nil] = {}, GetCalculated = function()
  if not (o908.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5732.SetStateValue(o5732.GetCalculated())
end, StartCalculate = function()
  o5732["Value"] = o5732.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5688.Node, o5688.Node, 706)
end, SetStateValue = function(L0)
  if not (o5732.Value == L0) then
    o5732["Value"] = L0
    if not (L0 ~= 1) then
      o5732.ChangeTo1()
    end
  end
end }
o5733 = { [nil] = {}, GetCalculated = function()
  if not (o910.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5733.SetStateValue(o5733.GetCalculated())
end, StartCalculate = function()
  o5733["Value"] = o5733.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5688.Node, o5688.Node, 707)
end, SetStateValue = function(L0)
  if not (o5733.Value == L0) then
    o5733["Value"] = L0
    if not (L0 ~= 1) then
      o5733.ChangeTo1()
    end
  end
end }
o5734 = { [nil] = {}, GetCalculated = function()
  if not (o6720.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5734.SetStateValue(o5734.GetCalculated())
end, StartCalculate = function()
  o5734["Value"] = o5734.GetCalculated()
  o5746.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5734.Value == L0) then
    o5734["Value"] = L0
    o5746.ReCalculate()
  end
end }
o5735 = { [nil] = {}, GetCalculated = function()
  if not (o6712.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5735.SetStateValue(o5735.GetCalculated())
end, StartCalculate = function()
  o5735["Value"] = o5735.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveFailed(GetGameNode(), 2, 0, 0)
end, SetStateValue = function(L0)
  if not (o5735.Value == L0) then
    o5735["Value"] = L0
    if not (L0 ~= 1) then
      o5735.ChangeTo1()
    end
  end
end }
o5736 = { [nil] = {}, Start = function()
  o5736["Value"] = False
  o6800.StartCalculate()
  o6806.StartCalculate()
  o6809.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5736.Value == L0) then
    o5736["Value"] = L0
    o6800.ReCalculate()
    o6806.ReCalculate()
    o6809.ReCalculate()
  end
end }
o5738 = { [nil] = {}, GetCalculated = function()
  if not (o5724.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5738.SetStateValue(o5738.GetCalculated())
end, StartCalculate = function()
  o5738["Value"] = o5738.GetCalculated()
  o6764.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5738.Value == L0) then
    o5738["Value"] = L0
    o6764.ReCalculate()
  end
end }
o5745 = { [nil] = {}, GetCalculated = function()
  if not (o5729.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5745.SetStateValue(o5745.GetCalculated())
end, StartCalculate = function()
  o5745["Value"] = o5745.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 1, 2002, 2104)
end, SetStateValue = function(L0)
  if not (o5745.Value == L0) then
    o5745["Value"] = L0
    if not (L0 ~= 1) then
      o5745.ChangeTo1()
    end
  end
end }
o5746 = { [nil] = {}, GetCalculated = function()
  if not (o5734.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5746.SetStateValue(o5746.GetCalculated())
end, StartCalculate = function()
  o5746["Value"] = o5746.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 2, 2002, 2105)
end, SetStateValue = function(L0)
  if not (o5746.Value == L0) then
    o5746["Value"] = L0
    if not (L0 ~= 1) then
      o5746.ChangeTo1()
    end
  end
end }
o5761 = { [nil] = {}, GetCalculated = function()
  if not (o5725.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5761.SetStateValue(o5761.GetCalculated())
end, StartCalculate = function()
  o5761["Value"] = o5761.GetCalculated()
  o6787.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5761.Value == L0) then
    o5761["Value"] = L0
    o6787.ReCalculate()
  end
end }
o5762 = { [nil] = {}, GetCalculated = function()
  if not (o5726.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5762.SetStateValue(o5762.GetCalculated())
end, StartCalculate = function()
  o5762["Value"] = o5762.GetCalculated()
  o6788.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5762.Value == L0) then
    o5762["Value"] = L0
    o6788.ReCalculate()
  end
end }
S_o5765 = { [nil] = { [nil] = {}, Start = function(L0)
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
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o5765, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  ShieldedBody_SetShieldBarrier(L0.Node, 0.45, 0.01)
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o5765, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o5765, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5765, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  StopAllActiveBehaviours(L0)
  CallFunction(o5765, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code10")
  else
    CallFunction(o5765, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MayDayPath_1", 1, 1 } }("Code11")
  else
    CallFunction(o5765, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  o5714.SetStateValue(True)
  CallFunction(o5765, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code13")
  else
    CallFunction(o5765, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5765, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MayDayPath_2", 1, 1 } }("Code15")
  else
    CallFunction(o5765, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  o5715.SetStateValue(True)
  CallFunction(o5765, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code17")
  else
    CallFunction(o5765, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5765, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MayDayPath_3", 1, 1 } }("Code19")
  else
    CallFunction(o5765, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  o5716.SetStateValue(True)
  CallFunction(o5765, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code21")
  else
    CallFunction(o5765, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5765, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MayDayPath_4", 1, 1 } }("Code23")
  else
    CallFunction(o5765, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  ShieldedBody_SetShieldBarrier(L0.Node, 0.01, 0)
  CallFunction(o5765, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/MayDayPatrolArea_1", "/Scenario_Dynamic/Navigation/MayDayFollowArea_1", "/Scenario_Dynamic/Navigation/MayDayFollowArea_1", "", "", "", "", 1, "Code26")
  else
    CallFunction(o5765, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code27")
  else
    CallFunction(o5765, "Code27")
  end
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5765, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code29")
  else
    CallFunction(o5765, "Code29")
  end
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5765, "Code30")
  end
end, Code30 = function(L0)
  L0["CodeIndex"] = 30
  StopAllActiveBehaviours(L0)
  CallFunction(o5765, "Code31")
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code32")
  else
    CallFunction(o5765, "Code32")
  end
end }, Code32 = function(L0)
  L0["CodeIndex"] = 32
  ShieldedBody_MakeVulnerable(L0.Node)
  Gun_SetBullet(L0.Node, "bul_npc_generic02", 4)
  CallFunction(o5765, "Code34")
end, Code34 = function(L0)
  L0["CodeIndex"] = 34
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/MayDayPatrolArea_1", "/Scenario_Dynamic/Navigation/MayDayFollowArea_1", "/Scenario_Dynamic/Navigation/MayDayFollowArea_1", "player1", "", "", "", 1, "Code35")
  else
    CallFunction(o5765, "Code35")
  end
end, Code35 = function(L0)
  L0["CodeIndex"] = 35
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code36")
  else
    CallFunction(o5765, "Code36")
  end
end, Code36 = function(L0)
  L0["CodeIndex"] = 36
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5765, "Code37")
  end
end, Code37 = function(L0)
  L0["CodeIndex"] = 37
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code38")
  else
    CallFunction(o5765, "Code38")
  end
end, Code38 = function(L0)
  L0["CodeIndex"] = 38
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5765, "Code39")
  end
end, Code39 = function(L0)
  L0["CodeIndex"] = 39
  StopAllActiveBehaviours(L0)
  CallFunction(o5765, "Code40")
end, Code40 = function(L0)
  L0["CodeIndex"] = 40
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code41")
  else
    CallFunction(o5765, "Code41")
  end
end, Code41 = function(L0)
  L0["CodeIndex"] = 41
end, SetStateValue_DipoledOut = function(L0, L1)
  o5784.SetStateValue(L1)
end, SetStateValue_KineticShield50 = function(L0, L1)
  o5789.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 13) then
    if not (L0.CodeIndex >= 14) then
      if not (o5773.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 17) then
    if not (L0.CodeIndex >= 18) then
      if not (o5774.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 21) then
    if not (L0.CodeIndex >= 22) then
      if not (o5775.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 25) then
    if not (L0.CodeIndex >= 26) then
      if not (o5772.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5772 = { [nil] = {}, GetCalculated = function()
  if not (o5713.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5772.SetStateValue(o5772.GetCalculated())
end, StartCalculate = function()
  o5772["Value"] = o5772.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5772.Value == L0) then
    DelayedFunction(4, o5772, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5772.Value == L0) then
    o5772["Value"] = L0
    CallFunction(o5765, "ProcesseStateChange")
  end
end }
o5773 = { [nil] = {}, GetCalculated = function()
  if not (o5840.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5773.SetStateValue(o5773.GetCalculated())
end, StartCalculate = function()
  o5773["Value"] = o5773.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5773.Value == L0) then
    o5773["Value"] = L0
    CallFunction(o5765, "ProcesseStateChange")
  end
end }
o5774 = { [nil] = {}, GetCalculated = function()
  if not (o5845.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5774.SetStateValue(o5774.GetCalculated())
end, StartCalculate = function()
  o5774["Value"] = o5774.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5774.Value == L0) then
    o5774["Value"] = L0
    CallFunction(o5765, "ProcesseStateChange")
  end
end }
o5775 = { [nil] = {}, GetCalculated = function()
  if not (o5850.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5775.SetStateValue(o5775.GetCalculated())
end, StartCalculate = function()
  o5775["Value"] = o5775.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5775.Value == L0) then
    o5775["Value"] = L0
    CallFunction(o5765, "ProcesseStateChange")
  end
end }
o5784 = { [nil] = {}, Start = function()
  o5784["Value"] = False
  o4408.StartCalculate()
  o4454.StartCalculate()
  o6593.StartCalculate()
  o6649.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5784.Value == L0) then
    o5784["Value"] = L0
    o4408.ReCalculate()
    o4454.ReCalculate()
    o6593.ReCalculate()
    o6649.ReCalculate()
  end
end }
o5789 = { [nil] = {}, Start = function()
  o5789["Value"] = False
  o5710.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5789.Value == L0) then
    o5789["Value"] = L0
    o5710.ReCalculate()
  end
end }
S_o5834 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o5834, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o5837.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5837 = { [nil] = {}, Start = function()
  o5837["Value"] = False
  o5703.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5837.Value == L0) then
    o5837["Value"] = L0
    o5703.ReCalculate()
  end
end }
S_o5839 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o5839, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Activated = function(L0, L1)
  o5840.SetStateValue(L1)
end, SetStateValue_Entered = function(L0, L1)
  o5842.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5840 = { [nil] = {}, Start = function()
  o5840["Value"] = False
  o5773.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5840.Value == L0) then
    o5840["Value"] = L0
    o5773.ReCalculate()
  end
end }
o5842 = { [nil] = {}, Start = function()
  o5842["Value"] = False
  o5704.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5842.Value == L0) then
    o5842["Value"] = L0
    o5704.ReCalculate()
  end
end }
S_o5844 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o5844, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Activated = function(L0, L1)
  o5845.SetStateValue(L1)
end, SetStateValue_Entered = function(L0, L1)
  o5847.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5845 = { [nil] = {}, Start = function()
  o5845["Value"] = False
  o5706.StartCalculate()
  o5774.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5845.Value == L0) then
    o5845["Value"] = L0
    o5706.ReCalculate()
    o5774.ReCalculate()
  end
end }
o5847 = { [nil] = {}, Start = function()
  o5847["Value"] = False
  o5705.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5847.Value == L0) then
    o5847["Value"] = L0
    o5705.ReCalculate()
  end
end }
S_o5849 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o5849, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Activated = function(L0, L1)
  o5850.SetStateValue(L1)
end, SetStateValue_Entered = function(L0, L1)
  o5852.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5850 = { [nil] = {}, Start = function()
  o5850["Value"] = False
  o5775.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5850.Value == L0) then
    o5850["Value"] = L0
    o5775.ReCalculate()
  end
end }
o5852 = { [nil] = {}, Start = function()
  o5852["Value"] = False
  o5707.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5852.Value == L0) then
    o5852["Value"] = L0
    o5707.ReCalculate()
  end
end }
S_o5854 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o904.Node)
  CallFunction(o5854, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5859 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5859, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5859, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5859, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/ElTopoPatrolArea_1", "arg_asylum_des_1", "E", "", "", 21, 1, "Code4")
  else
    CallFunction(o5859, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Born = function(L0, L1)
  o5863.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o5864.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5861.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5861 = { [nil] = {}, GetCalculated = function()
  if not (o5702.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5861.SetStateValue(o5861.GetCalculated())
end, StartCalculate = function()
  o5861["Value"] = o5861.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5861.Value == L0) then
    DelayedFunction(2, o5861, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5861.Value == L0) then
    o5861["Value"] = L0
    CallFunction(o5859, "ProcesseStateChange")
  end
end }
o5863 = { [nil] = {}, Start = function()
  o5863["Value"] = False
  o5722.StartCalculate()
  o5723.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5863.Value == L0) then
    o5863["Value"] = L0
    o5722.ReCalculate()
    o5723.ReCalculate()
  end
end }
o5864 = { [nil] = {}, Start = function()
  o5864["Value"] = False
  o5724.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5864.Value == L0) then
    o5864["Value"] = L0
    o5724.ReCalculate()
  end
end }
S_o5915 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5915, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5915, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5915, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/ElTopoPatrolArea_1", "arg_asylum_des_1", "E", "", "", 21, 1, "Code4")
  else
    CallFunction(o5915, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o5920.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5917.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5917 = { [nil] = {}, GetCalculated = function()
  if not (o5702.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5917.SetStateValue(o5917.GetCalculated())
end, StartCalculate = function()
  o5917["Value"] = o5917.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5917.Value == L0) then
    DelayedFunction(2.2, o5917, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5917.Value == L0) then
    o5917["Value"] = L0
    CallFunction(o5915, "ProcesseStateChange")
  end
end }
o5920 = { [nil] = {}, Start = function()
  o5920["Value"] = False
  o5724.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5920.Value == L0) then
    o5920["Value"] = L0
    o5724.ReCalculate()
  end
end }
S_o5971 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5971, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5971, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5971, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/ElTopoPatrolArea_1", "arg_asylum_des_1", "E", "", "", 21, 1, "Code4")
  else
    CallFunction(o5971, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o5976.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5973.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5973 = { [nil] = {}, GetCalculated = function()
  if not (o5702.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5973.SetStateValue(o5973.GetCalculated())
end, StartCalculate = function()
  o5973["Value"] = o5973.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5973.Value == L0) then
    o5973["Value"] = L0
    CallFunction(o5971, "ProcesseStateChange")
  end
end }
o5976 = { [nil] = {}, Start = function()
  o5976["Value"] = False
  o5724.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5976.Value == L0) then
    o5976["Value"] = L0
    o5724.ReCalculate()
  end
end }
S_o6027 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6027, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6027, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6027, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/ElTopoPatrolArea_1", "arg_asylum_des_1", "E", "", "", 21, 1, "Code4")
  else
    CallFunction(o6027, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6032.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6029.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6029 = { [nil] = {}, GetCalculated = function()
  if not (o5702.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6029.SetStateValue(o6029.GetCalculated())
end, StartCalculate = function()
  o6029["Value"] = o6029.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6029.Value == L0) then
    DelayedFunction(0.2, o6029, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6029.Value == L0) then
    o6029["Value"] = L0
    CallFunction(o6027, "ProcesseStateChange")
  end
end }
o6032 = { [nil] = {}, Start = function()
  o6032["Value"] = False
  o5724.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6032.Value == L0) then
    o6032["Value"] = L0
    o5724.ReCalculate()
  end
end }
S_o6083 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6083, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6083, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6083, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/ElTopoPatrolArea_1", "arg_asylum_des_1", "E", "", "", 21, 1, "Code4")
  else
    CallFunction(o6083, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6088.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6085.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6085 = { [nil] = {}, GetCalculated = function()
  if not (o5702.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6085.SetStateValue(o6085.GetCalculated())
end, StartCalculate = function()
  o6085["Value"] = o6085.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6085.Value == L0) then
    DelayedFunction(0.5, o6085, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6085.Value == L0) then
    o6085["Value"] = L0
    CallFunction(o6083, "ProcesseStateChange")
  end
end }
o6088 = { [nil] = {}, Start = function()
  o6088["Value"] = False
  o5724.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6088.Value == L0) then
    o6088["Value"] = L0
    o5724.ReCalculate()
  end
end }
S_o6139 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6139, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6139, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6139, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/ElTopoPatrolArea_1", "E", "", "", "", 21, 1, "Code4")
  else
    CallFunction(o6139, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6144.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6141.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6141 = { [nil] = {}, GetCalculated = function()
  if not (o5702.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6141.SetStateValue(o6141.GetCalculated())
end, StartCalculate = function()
  o6141["Value"] = o6141.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6141.Value == L0) then
    DelayedFunction(0.1, o6141, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6141.Value == L0) then
    o6141["Value"] = L0
    CallFunction(o6139, "ProcesseStateChange")
  end
end }
o6144 = { [nil] = {}, Start = function()
  o6144["Value"] = False
  o5724.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6144.Value == L0) then
    o6144["Value"] = L0
    o5724.ReCalculate()
  end
end }
S_o6195 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5681)
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
    DipolLib.InUtero_Undock(L0, o5681, "Code3")
  else
    CallFunction(o6195, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o6195, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/ElTopoPatrolArea_1", "", "E", "", "", 21, 1, "Code5")
  else
    CallFunction(o6195, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o6195, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6195, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  StopAllActiveBehaviours(L0)
  CallFunction(o6195, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o5681, nil, 1e+32, "Code9")
  else
    CallFunction(o6195, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_Born = function(L0, L1)
  o6201.SetStateValue(L1)
end, SetStateValue_KineticShield10 = function(L0, L1)
  o6217.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6197.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6197 = { [nil] = {}, GetCalculated = function()
  if not (o5702.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6197.SetStateValue(o6197.GetCalculated())
end, StartCalculate = function()
  o6197["Value"] = o6197.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6197.Value == L0) then
    DelayedFunction(60, o6197, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6197.Value == L0) then
    o6197["Value"] = L0
    CallFunction(o6195, "ProcesseStateChange")
  end
end }
o6201 = { [nil] = {}, Start = function()
  o6201["Value"] = False
  o5718.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6201.Value == L0) then
    o6201["Value"] = L0
    o5718.ReCalculate()
  end
end }
o6217 = { [nil] = {}, Start = function()
  o6217["Value"] = False
  o5720.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6217.Value == L0) then
    o6217["Value"] = L0
    o5720.ReCalculate()
  end
end }
S_o6253 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5681)
  CallFunction(o6253, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6253, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5681, "Code3")
  else
    CallFunction(o6253, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o6253, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/ElTopoPatrolArea_1", "", "E", "", "", 21, 1, "Code5")
  else
    CallFunction(o6253, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o6253, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6253, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  StopAllActiveBehaviours(L0)
  CallFunction(o6253, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o5681, nil, 1e+32, "Code9")
  else
    CallFunction(o6253, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_Born = function(L0, L1)
  o6259.SetStateValue(L1)
end, SetStateValue_KineticShield10 = function(L0, L1)
  o6275.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6255.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6255 = { [nil] = {}, GetCalculated = function()
  if not (o5702.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6255.SetStateValue(o6255.GetCalculated())
end, StartCalculate = function()
  o6255["Value"] = o6255.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6255.Value == L0) then
    DelayedFunction(70, o6255, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6255.Value == L0) then
    o6255["Value"] = L0
    CallFunction(o6253, "ProcesseStateChange")
  end
end }
o6259 = { [nil] = {}, Start = function()
  o6259["Value"] = False
  o5719.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6259.Value == L0) then
    o6259["Value"] = L0
    o5719.ReCalculate()
  end
end }
o6275 = { [nil] = {}, Start = function()
  o6275["Value"] = False
  o5721.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6275.Value == L0) then
    o6275["Value"] = L0
    o5721.ReCalculate()
  end
end }
S_o6311 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6311, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6311, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6311, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/ElTopoPatrolArea_1", "arg_asylum_des_1", "E", "", "", 21, 1, "Code4")
  else
    CallFunction(o6311, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6316.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6313.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6313 = { [nil] = {}, GetCalculated = function()
  if not (o5723.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6313.SetStateValue(o6313.GetCalculated())
end, StartCalculate = function()
  o6313["Value"] = o6313.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6313.Value == L0) then
    DelayedFunction(2, o6313, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6313.Value == L0) then
    o6313["Value"] = L0
    CallFunction(o6311, "ProcesseStateChange")
  end
end }
o6316 = { [nil] = {}, Start = function()
  o6316["Value"] = False
  o5724.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6316.Value == L0) then
    o6316["Value"] = L0
    o5724.ReCalculate()
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
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6367, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/ElTopoPatrolArea_1", "arg_asylum_des_1", "E", "", "", 21, 1, "Code4")
  else
    CallFunction(o6367, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6372.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6369.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6369 = { [nil] = {}, GetCalculated = function()
  if not (o5723.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6369.SetStateValue(o6369.GetCalculated())
end, StartCalculate = function()
  o6369["Value"] = o6369.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6369.Value == L0) then
    o6369["Value"] = L0
    CallFunction(o6367, "ProcesseStateChange")
  end
end }
o6372 = { [nil] = {}, Start = function()
  o6372["Value"] = False
  o5724.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6372.Value == L0) then
    o6372["Value"] = L0
    o5724.ReCalculate()
  end
end }
S_o6423 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6423, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6423, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6423, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/ElTopoPatrolArea_1", "arg_asylum_des_1", "E", "", "", 21, 1, "Code4")
  else
    CallFunction(o6423, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6428.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6425.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6425 = { [nil] = {}, GetCalculated = function()
  if not (o5723.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6425.SetStateValue(o6425.GetCalculated())
end, StartCalculate = function()
  o6425["Value"] = o6425.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6425.Value == L0) then
    DelayedFunction(0.2, o6425, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6425.Value == L0) then
    o6425["Value"] = L0
    CallFunction(o6423, "ProcesseStateChange")
  end
end }
o6428 = { [nil] = {}, Start = function()
  o6428["Value"] = False
  o5724.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6428.Value == L0) then
    o6428["Value"] = L0
    o5724.ReCalculate()
  end
end }
S_o6479 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6479, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6479, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6479, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/ElTopoPatrolArea_1", "E", "", "", "", 21, 1, "Code4")
  else
    CallFunction(o6479, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6484.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6481.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6481 = { [nil] = {}, GetCalculated = function()
  if not (o5723.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6481.SetStateValue(o6481.GetCalculated())
end, StartCalculate = function()
  o6481["Value"] = o6481.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6481.Value == L0) then
    DelayedFunction(0.5, o6481, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6481.Value == L0) then
    o6481["Value"] = L0
    CallFunction(o6479, "ProcesseStateChange")
  end
end }
o6484 = { [nil] = {}, Start = function()
  o6484["Value"] = False
  o5724.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6484.Value == L0) then
    o6484["Value"] = L0
    o5724.ReCalculate()
  end
end }
S_o6535 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6535, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6535, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6535, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetObservedDestroyer(L0.Node, 1, o5688.Node)
  Game_SetWayPoint(GetGameNode(), o6703.Node)
  SED_SetTaskTextKey(2103, -1, -1)
  SendRadioMessageTake(o5688.Node, o5688.Node, 705)
  CallFunction(o6535, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "gen_tnk_k3_1", "player1", "", "", 30, 1, "Code8")
  else
    CallFunction(o6535, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Destroyed = function(L0, L1)
  o6540.SetStateValue(L1)
end, SetStateValue_DestroyedBy1 = function(L0, L1)
  o6556.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6537.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6537 = { [nil] = {}, GetCalculated = function()
  if not (o5723.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6537.SetStateValue(o6537.GetCalculated())
end, StartCalculate = function()
  o6537["Value"] = o6537.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6537.Value == L0) then
    DelayedFunction(20, o6537, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6537.Value == L0) then
    o6537["Value"] = L0
    CallFunction(o6535, "ProcesseStateChange")
  end
end }
o6540 = { [nil] = {}, Start = function()
  o6540["Value"] = False
  o1735.StartCalculate()
  o5724.StartCalculate()
  o5728.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6540.Value == L0) then
    o6540["Value"] = L0
    o1735.ReCalculate()
    o5724.ReCalculate()
    o5728.ReCalculate()
  end
end }
o6556 = { [nil] = {}, Start = function()
  o6556["Value"] = False
  o5731.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6556.Value == L0) then
    o6556["Value"] = L0
    o5731.ReCalculate()
  end
end }
S_o6591 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6591, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6591, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6591, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/BonusPatrolArea_1", "gen_elfnode_des", "player1", "", "", 20, 1, "Code4")
  else
    CallFunction(o6591, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o6591, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o6596.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6593.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6593 = { [nil] = {}, GetCalculated = function()
  if not (o5784.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6593.SetStateValue(o6593.GetCalculated())
end, StartCalculate = function()
  o6593["Value"] = o6593.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6593.Value == L0) then
    o6593["Value"] = L0
    CallFunction(o6591, "ProcesseStateChange")
  end
end }
o6596 = { [nil] = {}, Start = function()
  o6596["Value"] = False
  o5729.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6596.Value == L0) then
    o6596["Value"] = L0
    o5729.ReCalculate()
  end
end }
S_o6647 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6647, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6647, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6647, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/BonusPatrolArea_1", "gen_elfnode_des", "player1", "", "", 20, 1, "Code4")
  else
    CallFunction(o6647, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o6647, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o6652.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6649.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6649 = { [nil] = {}, GetCalculated = function()
  if not (o5784.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6649.SetStateValue(o6649.GetCalculated())
end, StartCalculate = function()
  o6649["Value"] = o6649.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6649.Value == L0) then
    o6649["Value"] = L0
    CallFunction(o6647, "ProcesseStateChange")
  end
end }
o6652 = { [nil] = {}, Start = function()
  o6652["Value"] = False
  o5729.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6652.Value == L0) then
    o6652["Value"] = L0
    o5729.ReCalculate()
  end
end }
S_o6703 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o1733.Node)
  CallFunction(o6703, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6708 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6708, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6708, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6708, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetFriendlyFireMode(L0.Node, 0)
  CallFunction(o6708, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6712.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o6720.SetStateValue(L1)
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
o6712 = { [nil] = {}, Start = function()
  o6712["Value"] = False
  o5735.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6712.Value == L0) then
    o6712["Value"] = L0
    o5735.ReCalculate()
  end
end }
o6720 = { [nil] = {}, Start = function()
  o6720["Value"] = False
  o5734.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6720.Value == L0) then
    o6720["Value"] = L0
    o5734.ReCalculate()
  end
end }
o6764 = { [nil] = {}, GetCalculated = function()
  if not (o5738.Value ~= True) then
    if not (True ~= True) then
      if not (True ~= True) then
        if not (True ~= True) then
          if not (True ~= True) then
            if not (True ~= True) then
              if not (True ~= True) then
                if not (True ~= True) then
                  if not (True ~= True) then
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
end, ReCalculate = function()
  o6764.SetStateValue(o6764.GetCalculated())
end, StartCalculate = function()
  o6764["Value"] = o6764.GetCalculated()
  o3.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6764.Value == L0) then
    o6764["Value"] = L0
    o3.ReCalculate()
  end
end }
o6787 = { [nil] = {}, GetCalculated = function()
  if not (o5761.Value == True) then
    if not (False == True) then
      if not (False == True) then
        if not (False == True) then
          if not (False == True) then
            if not (False == True) then
              if not (False == True) then
                if not (False == True) then
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
end, ReCalculate = function()
  o6787.SetStateValue(o6787.GetCalculated())
end, StartCalculate = function()
  o6787["Value"] = o6787.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6787.Value == L0) then
    o6787["Value"] = L0
    o26.ReCalculate()
  end
end }
o6788 = { [nil] = {}, GetCalculated = function()
  if not (o5762.Value == True) then
    if not (False == True) then
      if not (False == True) then
        if not (False == True) then
          if not (False == True) then
            if not (False == True) then
              if not (False == True) then
                if not (False == True) then
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
end, ReCalculate = function()
  o6788.SetStateValue(o6788.GetCalculated())
end, StartCalculate = function()
  o6788["Value"] = o6788.GetCalculated()
  o27.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6788.Value == L0) then
    o6788["Value"] = L0
    o27.ReCalculate()
  end
end }
S_o6791 = { [nil] = {}, Start = function(L0)

end }
S_o6792 = { [nil] = {}, Start = function(L0)

end }
o6794 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o6795 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Atmo")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o6795, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o6795, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  FormationLib.PlaceFormationPath(o6793, o6794, "/InGameSequences/Navigation/PlayerPath_1")
  CallFunction(o6795, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o6793, o6794, "/InGameSequences/Navigation/PlayerPath_1", "pos_2", "pos_1", 1, 1, "Code10")
  else
    CallFunction(o6795, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_Cut(L0.Node, 1)
  CallFunction(o6795, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code12")
  else
    CallFunction(o6795, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  o5736.SetStateValue(True)
  CallFunction(o6795, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6799 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6799, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Camera_MoveTo(L0.Node, "/Scenario_Dynamic/Navigation/CamPosition_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o6799, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3.8, "Code6")
  else
    CallFunction(o6799, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Camera_MoveTo(L0.Node, "/Scenario_Dynamic/Object/player1", 2, "LMBN", 20)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Navigation/CamPosition_2", 4, "MMMN", 0)
  CallFunction(o6799, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code9")
  else
    CallFunction(o6799, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Director_EndCutscene(L0.Node)
  CallFunction(o5765, "Code8")
  CallFunction(o6799, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code12")
  else
    CallFunction(o6799, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Game_SetWayPoint(GetGameNode(), o5834.Node)
  SED_SetTaskTextKey(2100, -1, -1)
  CallFunction(o6799, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o6800.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6800 = { [nil] = {}, GetCalculated = function()
  if not (o5736.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6800.SetStateValue(o6800.GetCalculated())
end, StartCalculate = function()
  o6800["Value"] = o6800.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6800.Value == L0) then
    o6800["Value"] = L0
    CallFunction(o6799, "ProcesseStateChange")
  end
end }
S_o6805 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6805, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  FormationLib.PlaceFormationPath(o5678, o5677, "/Scenario_Dynamic/Navigation/WngPlaPath_1")
  CallFunction(o6805, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o5678, o5677, "/Scenario_Dynamic/Navigation/WngPlaPath_1", "pos_1", "pos_5", 1, 1, "Code3")
  else
    CallFunction(o6805, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o6806.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6806 = { [nil] = {}, GetCalculated = function()
  if not (o5736.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6806.SetStateValue(o6806.GetCalculated())
end, StartCalculate = function()
  o6806["Value"] = o6806.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6806.Value == L0) then
    o6806["Value"] = L0
    CallFunction(o6805, "ProcesseStateChange")
  end
end }
S_o6808 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6808, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.5, "Code2")
  else
    CallFunction(o6808, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o5688.Node, o5688.Node, 237)
  SendRadioMessageTake(o5765.Node, o5688.Node, 238)
  SendRadioMessageTake(o5688.Node, o5688.Node, 239)
  CallFunction(o6808, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o6809.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6809 = { [nil] = {}, GetCalculated = function()
  if not (o5736.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6809.SetStateValue(o6809.GetCalculated())
end, StartCalculate = function()
  o6809["Value"] = o6809.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6809.Value == L0) then
    o6809["Value"] = L0
    CallFunction(o6808, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 218)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object/Poles"), "gen_stab3_4", S_o30)
  o76 = BindEasy(Node_Find("/Scenario_Static/Object/Poles"), "gen_stab2_2", S_o76)
  o122 = BindEasy(Node_Find("/Scenario_Static/Object/Poles"), "gen_stab1_2", S_o122)
  o168 = BindEasy(Node_Find("/Scenario_Static/Object/Poles"), "gen_stab2_5", S_o168)
  o214 = BindEasy(Node_Find("/Scenario_Static/Object/Poles"), "gen_stab2_6", S_o214)
  o260 = BindEasy(Node_Find("/Scenario_Static/Object/Poles"), "gen_stab2_7", S_o260)
  o306 = BindEasy(Node_Find("/Scenario_Static/Object/Poles"), "gen_stab2_8", S_o306)
  o352 = BindEasy(Node_Find("/Scenario_Static/Object/Poles"), "gen_stab2_9", S_o352)
  o398 = BindEasy(Node_Find("/Scenario_Static/Object/Poles"), "gen_stab1_4", S_o398)
  o444 = BindEasy(Node_Find("/Scenario_Static/Object/Poles"), "gen_stab1_5", S_o444)
  o490 = BindEasy(Node_Find("/Scenario_Static/Object/Poles"), "gen_stab2_4", S_o490)
  o536 = BindEasy(Node_Find("/Scenario_Static/Object/Poles"), "gen_stab3_5", S_o536)
  o582 = BindEasy(Node_Find("/Scenario_Static/Object/Poles"), "gen_stab3_6", S_o582)
  o628 = BindEasy(Node_Find("/Scenario_Static/Object/Poles"), "gen_stabK_1", S_o628)
  o674 = BindEasy(Node_Find("/Scenario_Static/Object/Poles"), "gen_stabK_2", S_o674)
  o720 = BindEasy(Node_Find("/Scenario_Static/Object/Poles"), "gen_stabK_3", S_o720)
  o766 = BindEasy(Node_Find("/Scenario_Static/Object/Poles"), "gen_stabK_4", S_o766)
  o812 = BindEasy(Node_Find("/Scenario_Static/Object/Poles"), "gen_stabK_5", S_o812)
  o858 = BindEasy(Node_Find("/Scenario_Static/Object/Poles"), "gen_stabK_6", S_o858)
  o904 = BindEasy(Node_Find("/Scenario_Static/Object"), "arg_asylum_des_1", S_o904)
  o907.Start()
  o908.Start()
  o910.Start()
  o951 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern_1", S_o951)
  o997 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern_2", S_o997)
  o1043 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern_3", S_o1043)
  o1089 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_1", S_o1089)
  o1135 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_2", S_o1135)
  o1181 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_4", S_o1181)
  o1227 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock3_1", S_o1227)
  o1273 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_g_1", S_o1273)
  o1319 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus2_1", S_o1319)
  o1365 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_beacon_1", S_o1365)
  o1411 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_beacon_2", S_o1411)
  o1457 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_beacon_3", S_o1457)
  o1503 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_beacon_4", S_o1503)
  o1549 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kuppel_1", S_o1549)
  o1595 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kuppel_2", S_o1595)
  o1641 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker_1", S_o1641)
  o1687 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraft2_1", S_o1687)
  o1733 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k3_1_des", S_o1733)
  o1738.Start()
  o1782 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf-kn_1", S_o1782)
  o1828 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf-kn_2", S_o1828)
  o1874 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf-kn_3", S_o1874)
  o1920 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnode_des", S_o1920)
  o1924.Start()
  o1925.Start()
  o1969 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern2_1", S_o1969)
  o2015 = BindEasy(Node_Find("/Scenario_Static/Object"), "Atl_Dock", S_o2015)
  o2061 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_1", S_o2061)
  o2107 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_2", S_o2107)
  o2153 = BindEasy(Node_Find("/Scenario_Static/Object"), "Elt_Dock", S_o2153)
  o2199 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_1", S_o2199)
  o2245 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3b_1", S_o2245)
  o2291 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r4_1", S_o2291)
  o2337 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r4_2", S_o2337)
  o2383 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r4_3", S_o2383)
  o2429 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r1_1", S_o2429)
  o2475 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk3_1", S_o2475)
  o2521 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_1", S_o2521)
  o2567 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_2", S_o2567)
  o2613 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_3", S_o2613)
  o2659 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_4", S_o2659)
  o2705 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_5", S_o2705)
  o2751 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_6", S_o2751)
  o2797 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraft1_1", S_o2797)
  o2843 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraft22_1", S_o2843)
  o2889 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_1", S_o2889)
  o2935 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_3", S_o2935)
  o2981 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schorn2_1", S_o2981)
  o3027 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schorn2_2", S_o3027)
  o3073 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gang1_1", S_o3073)
  o3119 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gang1_2", S_o3119)
  o3165 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrs2_1", S_o3165)
  o3211 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrs2_2", S_o3211)
  o3257 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gang2_1", S_o3257)
  o3303 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_1", S_o3303)
  o3349 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_2", S_o3349)
  o3395 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_3", S_o3395)
  o3441 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_4", S_o3441)
  o3487 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_5", S_o3487)
  o3533 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_6", S_o3533)
  o3579 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_1", S_o3579)
  o3625 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big01_1", S_o3625)
  o3671 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb4a_1_1", S_o3671)
  o3717 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker2_1", S_o3717)
  o3763 = BindEasy(Node_Find("/Scenario_Static/Object"), "delphin_1", S_o3763)
  o3809 = BindEasy(Node_Find("/Scenario_Static/Object"), "delphin_big_1", S_o3809)
  o3855 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus3_1", S_o3855)
  o3901 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus1_1", S_o3901)
  o3947 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_1/Turm1", S_o3947)
  o3993 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_2/Turm1", S_o3993)
  o4039 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_3/Turm1", S_o4039)
  o4085 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_4/Turm1", S_o4085)
  o4131 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_5/Turm1", S_o4131)
  o4177 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_6/Turm1", S_o4177)
  o4223 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_7/Turm1", S_o4223)
  o4269 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_8/Turm1", S_o4269)
  o4315 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_9/Turm1", S_o4315)
  o4361 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_10/Turm1", S_o4361)
  o4407 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_11/Turm1", S_o4407)
  o4453 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_12/Turm1", S_o4453)
  o4499 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_13/Turm1", S_o4499)
  o4545 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_14/Turm1", S_o4545)
  o4591 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_1", S_o4591)
  o4637 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_1", S_o4637)
  o4683 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_1", S_o4683)
  o4729 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_1", S_o4729)
  o4775 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_04_1", S_o4775)
  o4821 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_05_1", S_o4821)
  o4867 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_08_1", S_o4867)
  o4913 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_09_1", S_o4913)
  o4959 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_1", S_o4959)
  o5005 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_1", S_o5005)
  o5051 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_04_1", S_o5051)
  o5097 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_06_1", S_o5097)
  o5143 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_05_1", S_o5143)
  o5189 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_1", S_o5189)
  o5235 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_1", S_o5235)
  o5281 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_1", S_o5281)
  o5327 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_1", S_o5327)
  o5373 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_02_1", S_o5373)
  o5419 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_1", S_o5419)
  o5465 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_02_1", S_o5465)
  o5511 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_2", S_o5511)
  o5557 = BindEasy(Node_Find("/Scenario_Static/Object"), "org_fungus_l_1", S_o5557)
  o5603 = BindEasy(Node_Find("/Scenario_Static/Object"), "org_fungus_m_1", S_o5603)
  o5679 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "CamPosition_1", S_o5679)
  o5680 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "CamPosition_2", S_o5680)
  o5682 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "BonusTriggerPresence_1", S_o5682)
  o5687.Start()
  o5688 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o5688)
  o5714.Start()
  o5715.Start()
  o5716.Start()
  o5736.Start()
  o5765 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_mayday_1", S_o5765)
  o5784.Start()
  o5789.Start()
  o5834 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1", S_o5834)
  o5837.Start()
  o5839 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_1", S_o5839)
  o5840.Start()
  o5842.Start()
  o5844 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_2", S_o5844)
  o5845.Start()
  o5847.Start()
  o5849 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_3", S_o5849)
  o5850.Start()
  o5852.Start()
  o5854 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_guard_1", S_o5854)
  o5859 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_bomber_1", S_o5859)
  o5863.Start()
  o5864.Start()
  o5915 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_bomber_2", S_o5915)
  o5920.Start()
  o5971 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_wide_1", S_o5971)
  o5976.Start()
  o6027 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_wide_2", S_o6027)
  o6032.Start()
  o6083 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_wide_3", S_o6083)
  o6088.Start()
  o6139 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_wide_4", S_o6139)
  o6144.Start()
  o6195 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_animal_1", S_o6195)
  o6201.Start()
  o6217.Start()
  o6253 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_stoney_1", S_o6253)
  o6259.Start()
  o6275.Start()
  o6311 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_bomber_1_2", S_o6311)
  o6316.Start()
  o6367 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_wide_1_2", S_o6367)
  o6372.Start()
  o6423 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_wide_2_2", S_o6423)
  o6428.Start()
  o6479 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_wide_3_2", S_o6479)
  o6484.Start()
  o6535 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_pla_scout_wide_1", S_o6535)
  o6540.Start()
  o6556.Start()
  o6591 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_wide_1", S_o6591)
  o6596.Start()
  o6647 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_wide_2", S_o6647)
  o6652.Start()
  o6703 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_guard_2", S_o6703)
  o6708 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_transporter_1", S_o6708)
  o6712.Start()
  o6720.Start()
  o6791 = BindEasy(Node_Find("/"), "Camera", S_o6791)
  o6792 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_1", S_o6792)
  o6795 = BindEasy(Node_Find("/InGameSequences/Director"), "UnDock", S_o6795)
  o6799 = BindEasy(Node_Find("/InGameSequences/Director"), "Intro", S_o6799)
  o6805 = BindEasy(Node_Find("/InGameSequences/Director"), "Director_1", S_o6805)
  o6808 = BindEasy(Node_Find("/InGameSequences/Director"), "Director_2", S_o6808)
  o5678 = { {}, o5688, o5765 }()
  o6793 = { {}, o5688 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
