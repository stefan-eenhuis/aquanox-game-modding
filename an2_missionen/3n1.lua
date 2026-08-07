-- dekompiliert aus 3n1.sco
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
  Game_LoadTextTable(node0, "dat/sty/de/minfo_3n1.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_3N1.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient1.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit3.sam", 1)
  Game_SetNPCHitFactor(node0, 1)
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
  Body_SetCS(node28, MAT_Vector3(3617.001, 2176.212, 533.9815), MAT_Vector3(70, 0, 0))
  Node_ParseIniFile(node28, "osd/arg/arg_asylum.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "gen_stern_1")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(3249.533, 1695.217, 454.3003), MAT_Vector3(89.76219, 0, 0))
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
  Body_SetCS(node30, MAT_Vector3(3169.956, 1766.83, 457.0038), MAT_Vector3(-0.6115, 0, 0))
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
  Body_SetCS(node32, MAT_Vector3(3237.587, 1923.987, 457.1771), MAT_Vector3(-29.93103, 0, 0))
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
  Body_SetCS(node33, MAT_Vector3(3221.304, 1868.939, 463.8024), MAT_Vector3(-1.318791, 0, 0))
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
  Body_SetCS(node34, MAT_Vector3(3323.306, 1755.044, 495.1758), MAT_Vector3(145.7814, 0, 0))
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
  Body_SetCS(node35, MAT_Vector3(3344.636, 1860.143, 450.9551), MAT_Vector3(-121.9453, 0, 0))
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
  Body_SetCS(node36, MAT_Vector3(3256.312, 1787.727, 454.3426), MAT_Vector3(57.10079, 0, 0))
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
  Body_SetCS(node37, MAT_Vector3(3320.915, 1825.963, 431.2692), MAT_Vector3(-33.22471, 0, 0))
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
  Body_SetCS(node38, MAT_Vector3(3354.524, 2247.661, 531.3847), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node39, MAT_Vector3(3679.502, 2645.287, 456.8061), MAT_Vector3(-60, 0, 0))
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
  Body_SetCS(node41, MAT_Vector3(3119.068, 1171.25, 293.0873), MAT_Vector3(178.549, 0, 0))
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
  Body_SetCS(node42, MAT_Vector3(3356.811, 2249.456, 572.7), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node43, MAT_Vector3(3356.827, 2207.494, 572.7), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node47, MAT_Vector3(2880.589, 1369.422, 247.5695), MAT_Vector3(23.20825, 0, 0))
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
  Body_SetCS(node80, MAT_Vector3(2802.772, 1335.983, 229.5912), MAT_Vector3(-67.17546, -0.9, 0.303835))
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
  Body_SetCS(node81, MAT_Vector3(2582.651, 1242.975, 230.1233), MAT_Vector3(-67.07941, 0.585846, 0))
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
  Body_SetCS(node82, MAT_Vector3(1762.578, 905.9236, 236.2376), MAT_Vector3(110.5642, 1.195201, -1.795765))
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
  Body_SetCS(node83, MAT_Vector3(1431.948, 786.3549, 250.6967), MAT_Vector3(-65.43207, -0.282934, 0.348599))
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
  Body_SetCS(node84, MAT_Vector3(1218.846, 686.6851, 272.7251), MAT_Vector3(-64.35908, -10.83569, 0.801525))
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
  Body_SetCS(node85, MAT_Vector3(958.6501, 564.7503, 316.0588), MAT_Vector3(-65.22985, -0.353834, -0.908186))
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
  Body_SetCS(node86, MAT_Vector3(1974.047, 987.3726, 259.9698), MAT_Vector3(-68.72128, -5.489678, 0.609938))
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
  Body_SetCS(node87, MAT_Vector3(2386.611, 1158.753, 223.1824), MAT_Vector3(113.6435, 0, 0))
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
  Body_SetCS(node104, MAT_Vector3(3119.775, 1254.37, 332.4744), MAT_Vector3(108, 0, 0))
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
  node109 = Node_CreateNode("nod_fx_rays", "fx_rays_3H3_1")
  Node_AddSon(node7, node109)
  Node_ParseIniFile(node109, "osd/fx_rays/fx_rays_3H3.osd")
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_fx_sky", "fx_sky_3H3_1")
  Node_AddSon(node7, node110)
  Node_ParseIniFile(node110, "osd/fx_sky/fx_sky_3H3.osd")
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
  node113 = Node_CreateNode("nod_generic", "org_fungus_l_1")
  Node_AddSon(node7, node113)
  Body_SetCS(node113, MAT_Vector3(2375.832, 1587.356, 222.9846), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node113, "osd/fungus/org_fungus_l.osd")
  Body_SetFriendOrFoeID(node113, 0)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node7, node114)
  Node_ParseIniFile(node114, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node114, "map/3H3/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_fx_plant", "org_grass_l_1")
  Node_AddSon(node7, node115)
  Node_ParseIniFile(node115, "osd/fx_plant/org_grass_l.osd")
  FX_Plant_SetMap(node115, "map/3H3/Terrain/org_grass_l.tga")
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node7, node116)
  Node_ParseIniFile(node116, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node116, "map/3H3/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node117)
  Node_ParseIniFile(node117, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node117, "map/3H3/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_fx_plant", "org_redcoral_1")
  Node_AddSon(node7, node118)
  Node_ParseIniFile(node118, "osd/fx_plant/org_redcoral.osd")
  FX_Plant_SetMap(node118, "map/3H3/Terrain/org_redcoral.tga")
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_fx_plant", "org_fungus_s01_1")
  Node_AddSon(node7, node119)
  Node_ParseIniFile(node119, "osd/fx_plant/org_fungus_s01.osd")
  FX_Plant_SetMap(node119, "map/3H3/Terrain/org_fungus_s01.tga")
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_generic", "org_fungus_m_1")
  Node_AddSon(node7, node120)
  Body_SetCS(node120, MAT_Vector3(2347.4, 1557.85, 222.9082), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node120, "osd/fungus/org_fungus_m.osd")
  Body_SetFriendOrFoeID(node120, 0)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
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
  node124 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_1")
  Node_AddSon(node123, node124)
  PatrolArea_SetPosition(node124, MAT_Vector3(3290.193106, 2084.72083, 449.838939))
  PatrolArea_SetRadius(node124, 750)
  PatrolArea_SetMinZ(node124, -230)
  PatrolArea_SetMaxZ(node124, 250)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_PatrolArea", "DockArea")
  Node_AddSon(node123, node125)
  PatrolArea_SetPosition(node125, MAT_Vector3(2813.405, 2391.398, 507.264))
  PatrolArea_SetRadius(node125, 100)
  PatrolArea_SetMinZ(node125, -20)
  PatrolArea_SetMaxZ(node125, 40)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_Path", "ApproachPath")
  Node_AddSon(node123, node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node126, node127)
  Position_SetPosition(node127, MAT_Vector3(2827.914, 2388.736, 521.0512))
  Position_SetRadius(node127, 5)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node126, node128)
  Position_SetPosition(node128, MAT_Vector3(2950.855, 2378.989, 528.277))
  Position_SetRadius(node128, 5)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("NOD_Path", "DockPath")
  Node_AddSon(node123, node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node129, node130)
  Position_SetPosition(node130, MAT_Vector3(2969.477, 2377.518, 527.8868))
  Position_SetRadius(node130, 5)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node129, node131)
  Position_SetPosition(node131, MAT_Vector3(3027.509, 2377.547, 527.956))
  Position_SetRadius(node131, 5)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_Path", "FreighterPath_1")
  Node_AddSon(node123, node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node132, node133)
  Position_SetPosition(node133, MAT_Vector3(2720.498991, 1477.895232, 455.483892))
  Position_SetRadius(node133, 5)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node132, node134)
  Position_SetPosition(node134, MAT_Vector3(2493.868581, 1398.208778, 438.79894))
  Position_SetRadius(node134, 5)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("NOD_Path", "FreighterPath_2")
  Node_AddSon(node123, node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node135, node136)
  Position_SetPosition(node136, MAT_Vector3(2515.789716, 1851.810311, 436.933219))
  Position_SetRadius(node136, 5)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node135, node137)
  Position_SetPosition(node137, MAT_Vector3(2347.188917, 1661.144665, 437.771986))
  Position_SetRadius(node137, 5)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node121, node138)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node121, node139)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node121, node140)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node140, node141)
  Body_SetCS(node141, MAT_Vector3(2957.329, 2432.775, 517.4609), MAT_Vector3(87.61703, 0, 0))
  Node_ParseIniFile(node141, "osd/pla/pla_ship3.osd")
  Body_SetFriendOrFoeID(node141, 1)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("nod_vessel", "pir_tz_scout1_wide_1")
  Node_AddSon(node140, node142)
  Body_SetCS(node142, MAT_Vector3(3294.673, 2256.152, 636.4264), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node142, "osd/pir_tz/pir_tz_scout1_wide.osd")
  Body_SetFriendOrFoeID(node142, 2)
  Body_SetNameKey(node142, -1)
  Body_SetCargoKey(node142, -1, 0)
  Body_SetCargoKey(node142, -1, 1)
  Body_SetCargoKey(node142, -1, 2)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("nod_vessel", "pir_tz_scout1_wide_2")
  Node_AddSon(node140, node143)
  Body_SetCS(node143, MAT_Vector3(3345.202, 2066.896, 650.1805), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node143, "osd/pir_tz/pir_tz_scout1_wide.osd")
  Body_SetFriendOrFoeID(node143, 2)
  Body_SetNameKey(node143, -1)
  Body_SetCargoKey(node143, -1, 0)
  Body_SetCargoKey(node143, -1, 1)
  Body_SetCargoKey(node143, -1, 2)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("nod_vessel", "pir_tz_scout1_wide_3")
  Node_AddSon(node140, node144)
  Body_SetCS(node144, MAT_Vector3(3462.535, 1781.761, 554.7567), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node144, "osd/pir_tz/pir_tz_scout1_wide.osd")
  Body_SetFriendOrFoeID(node144, 2)
  Body_SetNameKey(node144, -1)
  Body_SetCargoKey(node144, -1, 0)
  Body_SetCargoKey(node144, -1, 1)
  Body_SetCargoKey(node144, -1, 2)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("nod_vessel", "pir_tz_scout2_wide_1")
  Node_AddSon(node140, node145)
  Body_SetCS(node145, MAT_Vector3(2899.033, 2671.675, 330.5579), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node145, "osd/pir_tz/pir_tz_scout2_wide.osd")
  Body_SetFriendOrFoeID(node145, 2)
  Body_SetNameKey(node145, -1)
  Body_SetCargoKey(node145, -1, 0)
  Body_SetCargoKey(node145, -1, 1)
  Body_SetCargoKey(node145, -1, 2)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("nod_vessel", "pir_tz_scout3_wide_1")
  Node_AddSon(node140, node146)
  Body_SetCS(node146, MAT_Vector3(3462.522, 2389.509, 620.887), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node146, "osd/pir_tz/pir_tz_scout2_wide.osd")
  Body_SetFriendOrFoeID(node146, 2)
  Body_SetNameKey(node146, -1)
  Body_SetCargoKey(node146, -1, 0)
  Body_SetCargoKey(node146, -1, 1)
  Body_SetCargoKey(node146, -1, 2)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("nod_vessel", "pir_tz_scout1_wide_4")
  Node_AddSon(node140, node147)
  Body_SetCS(node147, MAT_Vector3(3121.769008, 1802.312472, 636.4264), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node147, "osd/pir_tz/pir_tz_scout1_wide.osd")
  Body_SetFriendOrFoeID(node147, 2)
  Body_SetNameKey(node147, -1)
  Body_SetCargoKey(node147, -1, 0)
  Body_SetCargoKey(node147, -1, 1)
  Body_SetCargoKey(node147, -1, 2)
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("nod_vessel", "pir_tz_scout1_wide_5")
  Node_AddSon(node140, node148)
  Body_SetCS(node148, MAT_Vector3(3593.43422, 1914.198182, 598.694869), MAT_Vector3(156.974693, 0, 0))
  Node_ParseIniFile(node148, "osd/pir_tz/pir_tz_scout1_wide.osd")
  Body_SetFriendOrFoeID(node148, 2)
  Body_SetNameKey(node148, -1)
  Body_SetCargoKey(node148, -1, 0)
  Body_SetCargoKey(node148, -1, 1)
  Body_SetCargoKey(node148, -1, 2)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Directory", "SecondWave")
  Node_AddSon(node140, node149)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("nod_vessel", "pir_tz_scout1_wide_1_2")
  Node_AddSon(node149, node150)
  Body_SetCS(node150, MAT_Vector3(3289.836, 2251.431, 664.4867), MAT_Vector3(-67.17178, 0, 0))
  Node_ParseIniFile(node150, "osd/pir_tz/pir_tz_scout1_wide.osd")
  Body_SetFriendOrFoeID(node150, 2)
  Body_SetNameKey(node150, -1)
  Body_SetCargoKey(node150, -1, 0)
  Body_SetCargoKey(node150, -1, 1)
  Body_SetCargoKey(node150, -1, 2)
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("nod_vessel", "pir_tz_scout1_wide_2_2")
  Node_AddSon(node149, node151)
  Body_SetCS(node151, MAT_Vector3(3345.202, 2066.896, 650.1805), MAT_Vector3(-58.75614, 0, 0))
  Node_ParseIniFile(node151, "osd/pir_tz/pir_tz_scout1_wide.osd")
  Body_SetFriendOrFoeID(node151, 2)
  Body_SetNameKey(node151, -1)
  Body_SetCargoKey(node151, -1, 0)
  Body_SetCargoKey(node151, -1, 1)
  Body_SetCargoKey(node151, -1, 2)
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("nod_vessel", "pir_tz_scout1_wide_3_2")
  Node_AddSon(node149, node152)
  Body_SetCS(node152, MAT_Vector3(3462.535, 1781.761, 554.7567), MAT_Vector3(-43.02093, 0, 0))
  Node_ParseIniFile(node152, "osd/pir_tz/pir_tz_scout1_wide.osd")
  Body_SetFriendOrFoeID(node152, 2)
  Body_SetNameKey(node152, -1)
  Body_SetCargoKey(node152, -1, 0)
  Body_SetCargoKey(node152, -1, 1)
  Body_SetCargoKey(node152, -1, 2)
  Node_EnterSimulation(node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("nod_vessel", "pir_tz_scout2_wide_1_2")
  Node_AddSon(node149, node153)
  Body_SetCS(node153, MAT_Vector3(2899.033, 2671.675, 472.5602), MAT_Vector3(-93.61363, 0, 0))
  Node_ParseIniFile(node153, "osd/pir_tz/pir_tz_scout2_wide.osd")
  Body_SetFriendOrFoeID(node153, 2)
  Body_SetNameKey(node153, -1)
  Body_SetCargoKey(node153, -1, 0)
  Body_SetCargoKey(node153, -1, 1)
  Body_SetCargoKey(node153, -1, 2)
  Node_EnterSimulation(node153)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("nod_vessel", "pir_tz_scout3_wide_1_2")
  Node_AddSon(node149, node154)
  Body_SetCS(node154, MAT_Vector3(2754.938, 1819.517, 641.2407), MAT_Vector3(-57.32524, 0, 0))
  Node_ParseIniFile(node154, "osd/pir_tz/pir_tz_scout2_wide.osd")
  Body_SetFriendOrFoeID(node154, 2)
  Body_SetNameKey(node154, -1)
  Body_SetCargoKey(node154, -1, 0)
  Body_SetCargoKey(node154, -1, 1)
  Body_SetCargoKey(node154, -1, 2)
  Node_EnterSimulation(node154)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("nod_vessel", "gen_transporter_1")
  Node_AddSon(node140, node155)
  Body_SetCS(node155, MAT_Vector3(2747.749122, 1677.386159, 454.8026), MAT_Vector3(-52.76656, 0.252522, -0.881127))
  Node_ParseIniFile(node155, "osd/gen/gen_transporter.osd")
  Body_SetFriendOrFoeID(node155, 4)
  Body_SetNameKey(node155, -1)
  Body_SetCargoKey(node155, 1112, 0)
  Body_SetCargoKey(node155, -1, 1)
  Body_SetCargoKey(node155, -1, 2)
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("nod_vessel", "gen_transporter_2")
  Node_AddSon(node140, node156)
  Body_SetCS(node156, MAT_Vector3(2658.750018, 1778.235122, 434.7764), MAT_Vector3(-52.76656, 0.252522, -0.881127))
  Node_ParseIniFile(node156, "osd/gen/gen_transporter.osd")
  Body_SetFriendOrFoeID(node156, 4)
  Body_SetNameKey(node156, -1)
  Body_SetCargoKey(node156, 1121, 0)
  Body_SetCargoKey(node156, -1, 1)
  Body_SetCargoKey(node156, -1, 2)
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("nod_vessel", "pir_sho_redbeard_wide_1")
  Node_AddSon(node140, node157)
  Body_SetCS(node157, MAT_Vector3(2732.169, 1752.459, 455.4697), MAT_Vector3(-52.41306, 0, 0))
  Node_ParseIniFile(node157, "osd/pir_sho/pir_sho_redbeard_wide.osd")
  Body_SetFriendOrFoeID(node157, 4)
  Body_SetNameKey(node157, -1)
  Body_SetCargoKey(node157, -1, 0)
  Body_SetCargoKey(node157, -1, 1)
  Body_SetCargoKey(node157, -1, 2)
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node158)
  Camera_SetBackPlane(node158, 750)
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node159)
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node159, node160)
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node159, node161)
  Node_EnterSimulation(node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node161, node162)
  Position_SetPosition(node162, MAT_Vector3(2952.483093, 2332.171724, 525.173314))
  Position_SetRadius(node162, 5)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Path", "PlayerPath_1")
  Node_AddSon(node161, node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node163, node164)
  Position_SetPosition(node164, MAT_Vector3(3027.509, 2377.547, 527.956))
  Position_SetRadius(node164, 5)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node163, node165)
  Position_SetPosition(node165, MAT_Vector3(2910.937443, 2380.887316, 527.8868))
  Position_SetRadius(node165, 5)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node159, node166)
  Node_EnterSimulation(node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Director", "Intro")
  Node_AddSon(node166, node167)
  Node_EnterSimulation(node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node159, node168)
  Node_EnterSimulation(node168)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node159, node169)
  Node_EnterSimulation(node169)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, F)
SetEnemyMatrixElement(2, 0, E)
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
SetEnemyMatrixElement(2, 1, E)
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
SetEnemyMatrixElement(1, 2, E)
SetEnemyMatrixElement(2, 2, N)
SetEnemyMatrixElement(3, 2, E)
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
SetEnemyMatrixElement(0, 3, F)
SetEnemyMatrixElement(1, 3, F)
SetEnemyMatrixElement(2, 3, E)
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
SetEnemyMatrixElement(1, 4, E)
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
    if not (o5648.Value ~= True) then
      return 1
    else
      return 0
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
    if not (o5672.Value ~= True) then
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

end, SetStateValue_Destroyed = function(L0, L1)
  o906.SetStateValue(L1)
end }
o906 = { [nil] = {}, Start = function()
  o906["Value"] = False
  o4802.StartCalculate()
end, SetStateValue = function(L0)
  if not (o906.Value == L0) then
    o906["Value"] = L0
    o4802.ReCalculate()
  end
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
S_o2652 = { [nil] = {}, Start = function(L0)

end }
S_o2698 = { [nil] = {}, Start = function(L0)

end }
S_o2744 = { [nil] = {}, Start = function(L0)

end }
S_o2790 = { [nil] = {}, Start = function(L0)

end }
S_o2836 = { [nil] = {}, Start = function(L0)

end }
S_o2882 = { [nil] = {}, Start = function(L0)

end }
S_o2928 = { [nil] = {}, Start = function(L0)

end }
S_o2974 = { [nil] = {}, Start = function(L0)

end }
S_o3020 = { [nil] = {}, Start = function(L0)

end }
S_o3066 = { [nil] = {}, Start = function(L0)

end }
S_o3112 = { [nil] = {}, Start = function(L0)

end }
S_o3158 = { [nil] = {}, Start = function(L0)

end }
S_o3204 = { [nil] = {}, Start = function(L0)

end }
S_o3250 = { [nil] = {}, Start = function(L0)

end }
S_o3296 = { [nil] = {}, Start = function(L0)

end }
S_o3342 = { [nil] = {}, Start = function(L0)

end }
S_o3388 = { [nil] = {}, Start = function(L0)

end }
S_o3434 = { [nil] = {}, Start = function(L0)

end }
S_o3480 = { [nil] = {}, Start = function(L0)

end }
S_o3526 = { [nil] = {}, Start = function(L0)

end }
S_o3572 = { [nil] = {}, Start = function(L0)

end }
S_o3618 = { [nil] = {}, Start = function(L0)

end }
S_o3664 = { [nil] = {}, Start = function(L0)

end }
S_o3710 = { [nil] = {}, Start = function(L0)

end }
S_o3756 = { [nil] = {}, Start = function(L0)

end }
S_o3802 = { [nil] = {}, Start = function(L0)

end }
S_o3848 = { [nil] = {}, Start = function(L0)

end }
S_o3894 = { [nil] = {}, Start = function(L0)

end }
S_o3940 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3940, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3940, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3940, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o3940, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o3940, "Code5")
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
S_o3986 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3986, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3986, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3986, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o3986, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o3986, "Code5")
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
S_o4032 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4032, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4032, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4032, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4032, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4032, "Code5")
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
S_o4078 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4078, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4078, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4078, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4078, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4078, "Code5")
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
S_o4124 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4124, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4124, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4124, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4124, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4124, "Code5")
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
S_o4170 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4170, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4170, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4170, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4170, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4170, "Code5")
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
S_o4216 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4216, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4216, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4216, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4216, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4216, "Code5")
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
S_o4262 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4262, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4262, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4262, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4262, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4262, "Code5")
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
S_o4308 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4308, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4308, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4308, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4308, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4308, "Code5")
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
S_o4354 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4354, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4354, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4354, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4354, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4354, "Code5")
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
S_o4400 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4400, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4400, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4400, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4400, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4400, "Code5")
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
S_o4446 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4446, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4446, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4446, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4446, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4446, "Code5")
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
S_o4492 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4492, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4492, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4492, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4492, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4492, "Code5")
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
S_o4538 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4538, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4538, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4538, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4538, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4538, "Code5")
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
S_o4584 = { [nil] = {}, Start = function(L0)

end }
S_o4630 = { [nil] = {}, Start = function(L0)

end }
S_o4676 = { [nil] = {}, Start = function(L0)

end }
o4750 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/ApproachPath", "/Scenario_Dynamic/Navigation/DockPath", "/Scenario_Dynamic/Navigation/DockArea")
S_o4751 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o4751, "Code11")
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
o4765 = { [nil] = {}, GetCalculated = function()
  if not (o4811.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o4867.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o4923.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o4979.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o5035.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o5091.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o5147.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 < 3) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4765.SetStateValue(o4765.GetCalculated())
end, StartCalculate = function()
  o4765["Value"] = o4765.GetCalculated()
  o5200.StartCalculate()
  o5256.StartCalculate()
  o5312.StartCalculate()
  o5368.StartCalculate()
  o5424.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4765.Value == L0) then
    o4765["Value"] = L0
    o5200.ReCalculate()
    o5256.ReCalculate()
    o5312.ReCalculate()
    o5368.ReCalculate()
    o5424.ReCalculate()
  end
end }
o4767 = { [nil] = {}, GetCalculated = function()
  if not (o4811.Value ~= True) then
    if not (o4867.Value ~= True) then
      if not (o4923.Value ~= True) then
        if not (o4979.Value ~= True) then
          if not (o5035.Value ~= True) then
            if not (o5203.Value ~= True) then
              if not (o5259.Value ~= True) then
                if not (o5315.Value ~= True) then
                  if not (o5371.Value ~= True) then
                    if not (o5427.Value ~= True) then
                      if not (o5091.Value ~= True) then
                        if not (o5147.Value ~= True) then
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
end, ReCalculate = function()
  o4767.SetStateValue(o4767.GetCalculated())
end, StartCalculate = function()
  o4767["Value"] = o4767.GetCalculated()
  o4789.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4767.Value == L0) then
    o4767["Value"] = L0
    o4789.ReCalculate()
  end
end }
o4768 = { [nil] = {}, GetCalculated = function()
  if not (o5484.Value == True) then
    if not (o5541.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o4768.SetStateValue(o4768.GetCalculated())
end, StartCalculate = function()
  o4768["Value"] = o4768.GetCalculated()
  o4770.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4768.Value == L0) then
    o4768["Value"] = L0
    o4770.ReCalculate()
  end
end }
o4770 = { [nil] = {}, GetCalculated = function()
  if not (o4768.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4770.SetStateValue(o4770.GetCalculated())
end, StartCalculate = function()
  o4770["Value"] = o4770.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4751.Node, o4751.Node, 290)
end, SetStateValue = function(L0)
  if not (o4770.Value == L0) then
    DelayedFunction(2, o4770, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4770.Value == L0) then
    o4770["Value"] = L0
    if not (L0 ~= 1) then
      o4770.ChangeTo1()
    end
  end
end }
o4771 = { [nil] = {}, GetCalculated = function()
  if not (o5596.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4771.SetStateValue(o4771.GetCalculated())
end, StartCalculate = function()
  o4771["Value"] = o4771.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5592.Node, o4751.Node, 292)
  SendRadioMessageTake(o4751.Node, o4751.Node, 287)
end, SetStateValue = function(L0)
  if not (o4771.Value == L0) then
    DelayedFunction(15, o4771, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4771.Value == L0) then
    o4771["Value"] = L0
    if not (L0 ~= 1) then
      o4771.ChangeTo1()
    end
  end
end }
o4772 = { [nil] = {}, GetCalculated = function()
  if not (o5496.Value ~= True) then
    if not (o4820.Value ~= True) then
      if not (o4876.Value ~= True) then
        if not (o4932.Value ~= True) then
          if not (o4988.Value ~= True) then
            if not (o5044.Value ~= True) then
              if not (o5212.Value ~= True) then
                if not (o5268.Value ~= True) then
                  if not (o5324.Value ~= True) then
                    if not (o5380.Value ~= True) then
                      if not (o5436.Value ~= True) then
                        if not (o5553.Value ~= True) then
                          if not (o5103.Value ~= True) then
                            if not (o5159.Value ~= True) then
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
end, ReCalculate = function()
  o4772.SetStateValue(o4772.GetCalculated())
end, StartCalculate = function()
  o4772["Value"] = o4772.GetCalculated()
  o4778.StartCalculate()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o4772.Value == L0) then
    DelayedFunction(8, o4772, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4772.Value == L0) then
    o4772["Value"] = L0
    o4778.ReCalculate()
    if not (L0 ~= 1) then
      o4772.ChangeTo1()
    end
  end
end }
o4773 = { [nil] = {}, GetCalculated = function()
  if not (o5496.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o4820.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o4876.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o4932.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o4988.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o5044.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o5212.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o5268.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o5324.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o5380.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o5436.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o5553.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o5103.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o5159.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 < 10) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4773.SetStateValue(o4773.GetCalculated())
end, StartCalculate = function()
  o4773["Value"] = o4773.GetCalculated()
  o4774.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4773.Value == L0) then
    o4773["Value"] = L0
    o4774.ReCalculate()
  end
end }
o4774 = { [nil] = {}, GetCalculated = function()
  if not (o4773.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4774.SetStateValue(o4774.GetCalculated())
end, StartCalculate = function()
  o4774["Value"] = o4774.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4751.Node, o4751.Node, 288)
end, SetStateValue = function(L0)
  if not (o4774.Value == L0) then
    DelayedFunction(2, o4774, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4774.Value == L0) then
    o4774["Value"] = L0
    if not (L0 ~= 1) then
      o4774.ChangeTo1()
    end
  end
end }
o4775 = { [nil] = {}, GetCalculated = function()
  if not (o5496.Value == True) then
    if not (o5553.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o4775.SetStateValue(o4775.GetCalculated())
end, StartCalculate = function()
  o4775["Value"] = o4775.GetCalculated()
  o4807.StartCalculate()
  o4863.StartCalculate()
  o5199.StartCalculate()
  o5311.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4775.Value == L0) then
    o4775["Value"] = L0
    o4807.ReCalculate()
    o4863.ReCalculate()
    o5199.ReCalculate()
    o5311.ReCalculate()
  end
end }
o4776 = { [nil] = {}, GetCalculated = function()
  if not (o5484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4776.SetStateValue(o4776.GetCalculated())
end, StartCalculate = function()
  o4776["Value"] = o4776.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveFailed(GetGameNode(), 2, 0, 0)
end, SetStateValue = function(L0)
  if not (o4776.Value == L0) then
    o4776["Value"] = L0
    if not (L0 ~= 1) then
      o4776.ChangeTo1()
    end
  end
end }
o4777 = { [nil] = {}, GetCalculated = function()
  if not (o5541.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4777.SetStateValue(o4777.GetCalculated())
end, StartCalculate = function()
  o4777["Value"] = o4777.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveFailed(GetGameNode(), 3, 0, 0)
end, SetStateValue = function(L0)
  if not (o4777.Value == L0) then
    o4777["Value"] = L0
    if not (L0 ~= 1) then
      o4777.ChangeTo1()
    end
  end
end }
o4778 = { [nil] = {}, GetCalculated = function()
  if not (o4772.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4778.SetStateValue(o4778.GetCalculated())
end, StartCalculate = function()
  o4778["Value"] = o4778.GetCalculated()
  o5648.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4751.Node, o4751.Node, 289)
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
end, SetStateValue = function(L0)
  if not (o4778.Value == L0) then
    o4778["Value"] = L0
    o5648.ReCalculate()
    if not (L0 ~= 1) then
      o4778.ChangeTo1()
    end
  end
end }
o4786 = { [nil] = {}, GetCalculated = function()
  if not (o5598.Value ~= True) then
    if not (o5597.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o4786.SetStateValue(o4786.GetCalculated())
end, StartCalculate = function()
  o4786["Value"] = o4786.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 1, 2002, 2104)
end, SetStateValue = function(L0)
  if not (o4786.Value == L0) then
    o4786["Value"] = L0
    if not (L0 ~= 1) then
      o4786.ChangeTo1()
    end
  end
end }
o4787 = { [nil] = {}, GetCalculated = function()
  if not (o5492.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4787.SetStateValue(o4787.GetCalculated())
end, StartCalculate = function()
  o4787["Value"] = o4787.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4751.Node, o4751.Node, 291)
  Game_BonusObjectiveReached(GetGameNode(), 2, 2002, 2101)
end, SetStateValue = function(L0)
  if not (o4787.Value == L0) then
    o4787["Value"] = L0
    if not (L0 ~= 1) then
      o4787.ChangeTo1()
    end
  end
end }
o4788 = { [nil] = {}, GetCalculated = function()
  if not (o5549.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4788.SetStateValue(o4788.GetCalculated())
end, StartCalculate = function()
  o4788["Value"] = o4788.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 3, 2002, 2102)
end, SetStateValue = function(L0)
  if not (o4788.Value == L0) then
    o4788["Value"] = L0
    if not (L0 ~= 1) then
      o4788.ChangeTo1()
    end
  end
end }
o4789 = { [nil] = {}, GetCalculated = function()
  if not (o4767.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4789.SetStateValue(o4789.GetCalculated())
end, StartCalculate = function()
  o4789["Value"] = o4789.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 4, 2002, 2103)
end, SetStateValue = function(L0)
  if not (o4789.Value == L0) then
    o4789["Value"] = L0
    if not (L0 ~= 1) then
      o4789.ChangeTo1()
    end
  end
end }
o4802 = { [nil] = {}, GetCalculated = function()
  if not (o906.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4802.SetStateValue(o4802.GetCalculated())
end, StartCalculate = function()
  o4802["Value"] = o4802.GetCalculated()
  o5672.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 1, 2001, 2100)
end, SetStateValue = function(L0)
  if not (o4802.Value == L0) then
    o4802["Value"] = L0
    o5672.ReCalculate()
    if not (L0 ~= 1) then
      o4802.ChangeTo1()
    end
  end
end }
S_o4806 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4806, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4806, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4806, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 2000, 1, "Code4")
  else
    CallFunction(o4806, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o4806, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o4811.SetStateValue(L1)
end, SetStateValue_DestJump = function(L0, L1)
  o4820.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
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
  if not (o4775.Value ~= True) then
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
    o4807["Value"] = L0
    CallFunction(o4806, "ProcesseStateChange")
  end
end }
o4811 = { [nil] = {}, Start = function()
  o4811["Value"] = False
  o4765.StartCalculate()
  o4767.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4811.Value == L0) then
    o4811["Value"] = L0
    o4765.ReCalculate()
    o4767.ReCalculate()
  end
end }
o4820 = { [nil] = {}, Start = function()
  o4820["Value"] = False
  o4772.StartCalculate()
  o4773.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4820.Value == L0) then
    o4820["Value"] = L0
    o4772.ReCalculate()
    o4773.ReCalculate()
  end
end }
S_o4862 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4862, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4862, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4862, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 2000, 1, "Code4")
  else
    CallFunction(o4862, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o4862, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o4867.SetStateValue(L1)
end, SetStateValue_DestJump = function(L0, L1)
  o4876.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
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
  if not (o4775.Value ~= True) then
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
    o4863["Value"] = L0
    CallFunction(o4862, "ProcesseStateChange")
  end
end }
o4867 = { [nil] = {}, Start = function()
  o4867["Value"] = False
  o4765.StartCalculate()
  o4767.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4867.Value == L0) then
    o4867["Value"] = L0
    o4765.ReCalculate()
    o4767.ReCalculate()
  end
end }
o4876 = { [nil] = {}, Start = function()
  o4876["Value"] = False
  o4772.StartCalculate()
  o4773.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4876.Value == L0) then
    o4876["Value"] = L0
    o4772.ReCalculate()
    o4773.ReCalculate()
  end
end }
S_o4918 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4918, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4918, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4918, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4918, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o4923.SetStateValue(L1)
end, SetStateValue_DestJump = function(L0, L1)
  o4932.SetStateValue(L1)
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
o4923 = { [nil] = {}, Start = function()
  o4923["Value"] = False
  o4765.StartCalculate()
  o4767.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4923.Value == L0) then
    o4923["Value"] = L0
    o4765.ReCalculate()
    o4767.ReCalculate()
  end
end }
o4932 = { [nil] = {}, Start = function()
  o4932["Value"] = False
  o4772.StartCalculate()
  o4773.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4932.Value == L0) then
    o4932["Value"] = L0
    o4772.ReCalculate()
    o4773.ReCalculate()
  end
end }
S_o4974 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4974, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4974, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4974, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4974, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o4979.SetStateValue(L1)
end, SetStateValue_DestJump = function(L0, L1)
  o4988.SetStateValue(L1)
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
o4979 = { [nil] = {}, Start = function()
  o4979["Value"] = False
  o4765.StartCalculate()
  o4767.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4979.Value == L0) then
    o4979["Value"] = L0
    o4765.ReCalculate()
    o4767.ReCalculate()
  end
end }
o4988 = { [nil] = {}, Start = function()
  o4988["Value"] = False
  o4772.StartCalculate()
  o4773.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4988.Value == L0) then
    o4988["Value"] = L0
    o4772.ReCalculate()
    o4773.ReCalculate()
  end
end }
S_o5030 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5030, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5030, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5030, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o5030, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o5035.SetStateValue(L1)
end, SetStateValue_DestJump = function(L0, L1)
  o5044.SetStateValue(L1)
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
o5035 = { [nil] = {}, Start = function()
  o5035["Value"] = False
  o4765.StartCalculate()
  o4767.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5035.Value == L0) then
    o5035["Value"] = L0
    o4765.ReCalculate()
    o4767.ReCalculate()
  end
end }
o5044 = { [nil] = {}, Start = function()
  o5044["Value"] = False
  o4772.StartCalculate()
  o4773.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5044.Value == L0) then
    o5044["Value"] = L0
    o4772.ReCalculate()
    o4773.ReCalculate()
  end
end }
S_o5086 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5086, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5086, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5086, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o5086, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o5091.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o5103.SetStateValue(L1)
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
o5091 = { [nil] = {}, Start = function()
  o5091["Value"] = False
  o4765.StartCalculate()
  o4767.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5091.Value == L0) then
    o5091["Value"] = L0
    o4765.ReCalculate()
    o4767.ReCalculate()
  end
end }
o5103 = { [nil] = {}, Start = function()
  o5103["Value"] = False
  o4772.StartCalculate()
  o4773.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5103.Value == L0) then
    o5103["Value"] = L0
    o4772.ReCalculate()
    o4773.ReCalculate()
  end
end }
S_o5142 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5142, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5142, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5142, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o5142, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o5147.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o5159.SetStateValue(L1)
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
o5147 = { [nil] = {}, Start = function()
  o5147["Value"] = False
  o4765.StartCalculate()
  o4767.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5147.Value == L0) then
    o5147["Value"] = L0
    o4765.ReCalculate()
    o4767.ReCalculate()
  end
end }
o5159 = { [nil] = {}, Start = function()
  o5159["Value"] = False
  o4772.StartCalculate()
  o4773.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5159.Value == L0) then
    o5159["Value"] = L0
    o4772.ReCalculate()
    o4773.ReCalculate()
  end
end }
S_o5198 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5198, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5198, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5198, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 2000, 1, "Code4")
  else
    CallFunction(o5198, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o5198, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o5203.SetStateValue(L1)
end, SetStateValue_DestJump = function(L0, L1)
  o5212.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5200.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o5199.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5199 = { [nil] = {}, GetCalculated = function()
  if not (o4775.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5199.SetStateValue(o5199.GetCalculated())
end, StartCalculate = function()
  o5199["Value"] = o5199.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5199.Value == L0) then
    o5199["Value"] = L0
    CallFunction(o5198, "ProcesseStateChange")
  end
end }
o5200 = { [nil] = {}, GetCalculated = function()
  if not (o4765.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5200.SetStateValue(o5200.GetCalculated())
end, StartCalculate = function()
  o5200["Value"] = o5200.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5200.Value == L0) then
    o5200["Value"] = L0
    CallFunction(o5198, "ProcesseStateChange")
  end
end }
o5203 = { [nil] = {}, Start = function()
  o5203["Value"] = False
  o4767.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5203.Value == L0) then
    o5203["Value"] = L0
    o4767.ReCalculate()
  end
end }
o5212 = { [nil] = {}, Start = function()
  o5212["Value"] = False
  o4772.StartCalculate()
  o4773.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5212.Value == L0) then
    o5212["Value"] = L0
    o4772.ReCalculate()
    o4773.ReCalculate()
  end
end }
S_o5254 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5254, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5254, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5254, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o5254, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o5259.SetStateValue(L1)
end, SetStateValue_DestJump = function(L0, L1)
  o5268.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5256.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5256 = { [nil] = {}, GetCalculated = function()
  if not (o4765.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5256.SetStateValue(o5256.GetCalculated())
end, StartCalculate = function()
  o5256["Value"] = o5256.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5256.Value == L0) then
    o5256["Value"] = L0
    CallFunction(o5254, "ProcesseStateChange")
  end
end }
o5259 = { [nil] = {}, Start = function()
  o5259["Value"] = False
  o4767.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5259.Value == L0) then
    o5259["Value"] = L0
    o4767.ReCalculate()
  end
end }
o5268 = { [nil] = {}, Start = function()
  o5268["Value"] = False
  o4772.StartCalculate()
  o4773.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5268.Value == L0) then
    o5268["Value"] = L0
    o4772.ReCalculate()
    o4773.ReCalculate()
  end
end }
S_o5310 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5310, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5310, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5310, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 2000, 1, "Code4")
  else
    CallFunction(o5310, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o5310, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o5315.SetStateValue(L1)
end, SetStateValue_DestJump = function(L0, L1)
  o5324.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5312.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o5311.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5311 = { [nil] = {}, GetCalculated = function()
  if not (o4775.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5311.SetStateValue(o5311.GetCalculated())
end, StartCalculate = function()
  o5311["Value"] = o5311.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5311.Value == L0) then
    o5311["Value"] = L0
    CallFunction(o5310, "ProcesseStateChange")
  end
end }
o5312 = { [nil] = {}, GetCalculated = function()
  if not (o4765.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5312.SetStateValue(o5312.GetCalculated())
end, StartCalculate = function()
  o5312["Value"] = o5312.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5312.Value == L0) then
    o5312["Value"] = L0
    CallFunction(o5310, "ProcesseStateChange")
  end
end }
o5315 = { [nil] = {}, Start = function()
  o5315["Value"] = False
  o4767.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5315.Value == L0) then
    o5315["Value"] = L0
    o4767.ReCalculate()
  end
end }
o5324 = { [nil] = {}, Start = function()
  o5324["Value"] = False
  o4772.StartCalculate()
  o4773.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5324.Value == L0) then
    o5324["Value"] = L0
    o4772.ReCalculate()
    o4773.ReCalculate()
  end
end }
S_o5366 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5366, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5366, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5366, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o5366, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o5371.SetStateValue(L1)
end, SetStateValue_DestJump = function(L0, L1)
  o5380.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5368.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5368 = { [nil] = {}, GetCalculated = function()
  if not (o4765.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5368.SetStateValue(o5368.GetCalculated())
end, StartCalculate = function()
  o5368["Value"] = o5368.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5368.Value == L0) then
    o5368["Value"] = L0
    CallFunction(o5366, "ProcesseStateChange")
  end
end }
o5371 = { [nil] = {}, Start = function()
  o5371["Value"] = False
  o4767.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5371.Value == L0) then
    o5371["Value"] = L0
    o4767.ReCalculate()
  end
end }
o5380 = { [nil] = {}, Start = function()
  o5380["Value"] = False
  o4772.StartCalculate()
  o4773.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5380.Value == L0) then
    o5380["Value"] = L0
    o4772.ReCalculate()
    o4773.ReCalculate()
  end
end }
S_o5422 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5422, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5422, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5422, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o5422, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o5427.SetStateValue(L1)
end, SetStateValue_DestJump = function(L0, L1)
  o5436.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5424.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5424 = { [nil] = {}, GetCalculated = function()
  if not (o4765.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5424.SetStateValue(o5424.GetCalculated())
end, StartCalculate = function()
  o5424["Value"] = o5424.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5424.Value == L0) then
    o5424["Value"] = L0
    CallFunction(o5422, "ProcesseStateChange")
  end
end }
o5427 = { [nil] = {}, Start = function()
  o5427["Value"] = False
  o4767.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5427.Value == L0) then
    o5427["Value"] = L0
    o4767.ReCalculate()
  end
end }
o5436 = { [nil] = {}, Start = function()
  o5436["Value"] = False
  o4772.StartCalculate()
  o4773.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5436.Value == L0) then
    o5436["Value"] = L0
    o4772.ReCalculate()
    o4773.ReCalculate()
  end
end }
S_o5478 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5478, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5478, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5478, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o5478, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5478, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/FreighterPath_1", 1, 1 } }("Code6")
  else
    CallFunction(o5478, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o5478, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o5484.SetStateValue(L1)
end, SetStateValue_KineticShield50 = function(L0, L1)
  o5490.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o5492.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o5494.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o5496.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5481.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5481 = { [nil] = {}, GetCalculated = function()
  if not (o5547.Value == True) then
    if not (False ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5481.SetStateValue(o5481.GetCalculated())
end, StartCalculate = function()
  o5481["Value"] = o5481.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5481.Value == L0) then
    DelayedFunction(2, o5481, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5481.Value == L0) then
    o5481["Value"] = L0
    CallFunction(o5478, "ProcesseStateChange")
  end
end }
o5484 = { [nil] = {}, Start = function()
  o5484["Value"] = False
  o4768.StartCalculate()
  o4776.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5484.Value == L0) then
    o5484["Value"] = L0
    o4768.ReCalculate()
    o4776.ReCalculate()
  end
end }
o5490 = { [nil] = {}, Start = function()
  o5490["Value"] = False
  o5538.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5490.Value == L0) then
    o5490["Value"] = L0
    o5538.ReCalculate()
  end
end }
o5492 = { [nil] = {}, Start = function()
  o5492["Value"] = False
  o4787.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5492.Value == L0) then
    o5492["Value"] = L0
    o4787.ReCalculate()
  end
end }
o5494 = { [nil] = {}, Start = function()
  o5494["Value"] = False
  o5593.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5494.Value == L0) then
    o5494["Value"] = L0
    o5593.ReCalculate()
  end
end }
o5496 = { [nil] = {}, Start = function()
  o5496["Value"] = False
  o4772.StartCalculate()
  o4773.StartCalculate()
  o4775.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5496.Value == L0) then
    o5496["Value"] = L0
    o4772.ReCalculate()
    o4773.ReCalculate()
    o4775.ReCalculate()
  end
end }
S_o5535 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5535, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5535, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5535, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o5535, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5535, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/FreighterPath_2", 1, 1 } }("Code6")
  else
    CallFunction(o5535, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o5535, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o5541.SetStateValue(L1)
end, SetStateValue_KineticShield50 = function(L0, L1)
  o5547.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o5549.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o5551.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o5553.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5538.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5538 = { [nil] = {}, GetCalculated = function()
  if not (o5490.Value == True) then
    if not (False ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5538.SetStateValue(o5538.GetCalculated())
end, StartCalculate = function()
  o5538["Value"] = o5538.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5538.Value == L0) then
    DelayedFunction(4, o5538, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5538.Value == L0) then
    o5538["Value"] = L0
    CallFunction(o5535, "ProcesseStateChange")
  end
end }
o5541 = { [nil] = {}, Start = function()
  o5541["Value"] = False
  o4768.StartCalculate()
  o4777.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5541.Value == L0) then
    o5541["Value"] = L0
    o4768.ReCalculate()
    o4777.ReCalculate()
  end
end }
o5547 = { [nil] = {}, Start = function()
  o5547["Value"] = False
  o5481.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5547.Value == L0) then
    o5547["Value"] = L0
    o5481.ReCalculate()
  end
end }
o5549 = { [nil] = {}, Start = function()
  o5549["Value"] = False
  o4788.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5549.Value == L0) then
    o5549["Value"] = L0
    o4788.ReCalculate()
  end
end }
o5551 = { [nil] = {}, Start = function()
  o5551["Value"] = False
  o5593.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5551.Value == L0) then
    o5551["Value"] = L0
    o5593.ReCalculate()
  end
end }
o5553 = { [nil] = {}, Start = function()
  o5553["Value"] = False
  o4772.StartCalculate()
  o4773.StartCalculate()
  o4775.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5553.Value == L0) then
    o5553["Value"] = L0
    o4772.ReCalculate()
    o4773.ReCalculate()
    o4775.ReCalculate()
  end
end }
S_o5592 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5592, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5592, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5592, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "player1", "", "", "", 1, "Code4")
  else
    CallFunction(o5592, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o5592, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o5592, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Born = function(L0, L1)
  o5596.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o5597.SetStateValue(L1)
end, SetStateValue_DipoledOut = function(L0, L1)
  o5598.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o5593.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5593 = { [nil] = {}, GetCalculated = function()
  if not (o5494.Value == True) then
    if not (o5551.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5593.SetStateValue(o5593.GetCalculated())
end, StartCalculate = function()
  o5593["Value"] = o5593.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5593.Value == L0) then
    DelayedFunction(3, o5593, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5593.Value == L0) then
    o5593["Value"] = L0
    CallFunction(o5592, "ProcesseStateChange")
  end
end }
o5596 = { [nil] = {}, Start = function()
  o5596["Value"] = False
  o4771.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5596.Value == L0) then
    o5596["Value"] = L0
    o4771.ReCalculate()
  end
end }
o5597 = { [nil] = {}, Start = function()
  o5597["Value"] = False
  o4786.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5597.Value == L0) then
    o5597["Value"] = L0
    o4786.ReCalculate()
  end
end }
o5598 = { [nil] = {}, Start = function()
  o5598["Value"] = False
  o4786.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5598.Value == L0) then
    o5598["Value"] = L0
    o4786.ReCalculate()
  end
end }
o5648 = { [nil] = {}, GetCalculated = function()
  if not (o4778.Value ~= True) then
    if not (True ~= True) then
      if not (True ~= True) then
        if not (True ~= True) then
          if not (True ~= True) then
            if not (True ~= True) then
              if not (True ~= True) then
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
end, ReCalculate = function()
  o5648.SetStateValue(o5648.GetCalculated())
end, StartCalculate = function()
  o5648["Value"] = o5648.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5648.Value == L0) then
    o5648["Value"] = L0
    o2.ReCalculate()
  end
end }
o5672 = { [nil] = {}, GetCalculated = function()
  if not (o4802.Value == True) then
    if not (False == True) then
      if not (False == True) then
        if not (False == True) then
          if not (False == True) then
            if not (False == True) then
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
end, ReCalculate = function()
  o5672.SetStateValue(o5672.GetCalculated())
end, StartCalculate = function()
  o5672["Value"] = o5672.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5672.Value == L0) then
    o5672["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o5676 = { [nil] = {}, Start = function(L0)

end }
S_o5677 = { [nil] = {}, Start = function(L0)

end }
o5679 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o5680 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Agressive")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o5680, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o5680, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  FormationLib.PlaceFormationPath(o5678, o5679, "/InGameSequences/Navigation/PlayerPath_1")
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o5680, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o5678, o5679, "/InGameSequences/Navigation/PlayerPath_1", "pos_2", "pos_1", 1, 1, "Code10")
  else
    CallFunction(o5680, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_Cut(L0.Node, 1)
  CallFunction(o5680, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code12")
  else
    CallFunction(o5680, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Director_EndCutscene(L0.Node)
  CallFunction(o5680, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code14")
  else
    CallFunction(o5680, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  SendRadioMessageTake(o4751.Node, o4751.Node, 282)
  SED_SetTaskTextKey(2100, -1, -1)
  CallFunction(o5680, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 9, "Code17")
  else
    CallFunction(o5680, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  SendRadioMessageTake(o4751.Node, o4751.Node, 283)
  CallFunction(o5680, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 169)
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
  o906.Start()
  o950 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern_1", S_o950)
  o996 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern_2", S_o996)
  o1042 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern_3", S_o1042)
  o1088 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_1", S_o1088)
  o1134 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_2", S_o1134)
  o1180 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_4", S_o1180)
  o1226 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock3_1", S_o1226)
  o1272 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_g_1", S_o1272)
  o1318 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus2_1", S_o1318)
  o1364 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_beacon_1", S_o1364)
  o1410 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_beacon_2", S_o1410)
  o1456 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_beacon_3", S_o1456)
  o1502 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_beacon_4", S_o1502)
  o1548 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kuppel_1", S_o1548)
  o1594 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kuppel_2", S_o1594)
  o1640 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker_1", S_o1640)
  o1686 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraft2_1", S_o1686)
  o1732 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k3_1_des", S_o1732)
  o1778 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf-kn_1", S_o1778)
  o1824 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf-kn_2", S_o1824)
  o1870 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf-kn_3", S_o1870)
  o1916 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnode_des", S_o1916)
  o1962 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern2_1", S_o1962)
  o2008 = BindEasy(Node_Find("/Scenario_Static/Object"), "Atl_Dock", S_o2008)
  o2054 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_1", S_o2054)
  o2100 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_2", S_o2100)
  o2146 = BindEasy(Node_Find("/Scenario_Static/Object"), "Elt_Dock", S_o2146)
  o2192 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_1", S_o2192)
  o2238 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3b_1", S_o2238)
  o2284 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r4_1", S_o2284)
  o2330 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r4_2", S_o2330)
  o2376 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r4_3", S_o2376)
  o2422 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r1_1", S_o2422)
  o2468 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk3_1", S_o2468)
  o2514 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_1", S_o2514)
  o2560 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_2", S_o2560)
  o2606 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_3", S_o2606)
  o2652 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_4", S_o2652)
  o2698 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_5", S_o2698)
  o2744 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_6", S_o2744)
  o2790 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraft1_1", S_o2790)
  o2836 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraft22_1", S_o2836)
  o2882 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_1", S_o2882)
  o2928 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_3", S_o2928)
  o2974 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schorn2_1", S_o2974)
  o3020 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schorn2_2", S_o3020)
  o3066 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gang1_1", S_o3066)
  o3112 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gang1_2", S_o3112)
  o3158 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrs2_1", S_o3158)
  o3204 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrs2_2", S_o3204)
  o3250 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gang2_1", S_o3250)
  o3296 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_1", S_o3296)
  o3342 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_2", S_o3342)
  o3388 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_3", S_o3388)
  o3434 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_4", S_o3434)
  o3480 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_5", S_o3480)
  o3526 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_6", S_o3526)
  o3572 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_1", S_o3572)
  o3618 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big01_1", S_o3618)
  o3664 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb4a_1_1", S_o3664)
  o3710 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker2_1", S_o3710)
  o3756 = BindEasy(Node_Find("/Scenario_Static/Object"), "delphin_1", S_o3756)
  o3802 = BindEasy(Node_Find("/Scenario_Static/Object"), "delphin_big_1", S_o3802)
  o3848 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus3_1", S_o3848)
  o3894 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus1_1", S_o3894)
  o3940 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_1/Turm1", S_o3940)
  o3986 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_2/Turm1", S_o3986)
  o4032 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_3/Turm1", S_o4032)
  o4078 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_4/Turm1", S_o4078)
  o4124 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_5/Turm1", S_o4124)
  o4170 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_6/Turm1", S_o4170)
  o4216 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_7/Turm1", S_o4216)
  o4262 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_8/Turm1", S_o4262)
  o4308 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_9/Turm1", S_o4308)
  o4354 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_10/Turm1", S_o4354)
  o4400 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_11/Turm1", S_o4400)
  o4446 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_12/Turm1", S_o4446)
  o4492 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_13/Turm1", S_o4492)
  o4538 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_14/Turm1", S_o4538)
  o4584 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_1", S_o4584)
  o4630 = BindEasy(Node_Find("/Scenario_Static/Object"), "org_fungus_l_1", S_o4630)
  o4676 = BindEasy(Node_Find("/Scenario_Static/Object"), "org_fungus_m_1", S_o4676)
  o4751 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o4751)
  o4806 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout1_wide_1", S_o4806)
  o4811.Start()
  o4820.Start()
  o4862 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout1_wide_2", S_o4862)
  o4867.Start()
  o4876.Start()
  o4918 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout1_wide_3", S_o4918)
  o4923.Start()
  o4932.Start()
  o4974 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_wide_1", S_o4974)
  o4979.Start()
  o4988.Start()
  o5030 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout3_wide_1", S_o5030)
  o5035.Start()
  o5044.Start()
  o5086 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout1_wide_4", S_o5086)
  o5091.Start()
  o5103.Start()
  o5142 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout1_wide_5", S_o5142)
  o5147.Start()
  o5159.Start()
  o5198 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SecondWave"), "pir_tz_scout1_wide_1_2", S_o5198)
  o5203.Start()
  o5212.Start()
  o5254 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SecondWave"), "pir_tz_scout1_wide_2_2", S_o5254)
  o5259.Start()
  o5268.Start()
  o5310 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SecondWave"), "pir_tz_scout1_wide_3_2", S_o5310)
  o5315.Start()
  o5324.Start()
  o5366 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SecondWave"), "pir_tz_scout2_wide_1_2", S_o5366)
  o5371.Start()
  o5380.Start()
  o5422 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SecondWave"), "pir_tz_scout3_wide_1_2", S_o5422)
  o5427.Start()
  o5436.Start()
  o5478 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_transporter_1", S_o5478)
  o5484.Start()
  o5490.Start()
  o5492.Start()
  o5494.Start()
  o5496.Start()
  o5535 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_transporter_2", S_o5535)
  o5541.Start()
  o5547.Start()
  o5549.Start()
  o5551.Start()
  o5553.Start()
  o5592 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_redbeard_wide_1", S_o5592)
  o5596.Start()
  o5597.Start()
  o5598.Start()
  o5676 = BindEasy(Node_Find("/"), "Camera", S_o5676)
  o5677 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_1", S_o5677)
  o5680 = BindEasy(Node_Find("/InGameSequences/Director"), "Intro", S_o5680)
  o5678 = { {}, o4751 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
