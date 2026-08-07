-- dekompiliert aus instant9.sco
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
  Game_SetDecompressionHeight(node0, 900)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.109804, 0.101961, 0.082353)
  Game_SetParallelLightT(node0, 0.219608, 0.203922, 0.164706)
  Game_SetParallelLightB(node0, 0.109804, 0.101961, 0.082353)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_instant9.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_unhancy1.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_hektik.sam", 1)
  Game_SetNPCHitFactor(node0, 0.5)
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
  Node_ParseIniFile(node28, "osd/arg/arg_asylum_des.osd")
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
  Body_SetCS(node113, MAT_Vector3(2353.568, 1227.769, 217.5934), MAT_Vector3(2.255644, 2.283477, -0.651964))
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
  Body_SetCS(node114, MAT_Vector3(1204.939, 821.075, 260.5261), MAT_Vector3(-4.34068, -3.364054, -2.9917))
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
  Body_SetCS(node115, MAT_Vector3(1728.956, 671.8457, 184.9646), MAT_Vector3(-14.69261, -15.58267, 2.052551))
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
  Body_SetCS(node116, MAT_Vector3(3031.349, 1207.549, 228.7583), MAT_Vector3(-2.982822, -8.21596, -11.63936))
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
  Body_SetCS(node117, MAT_Vector3(3693.834, 1136.695, 286.4663), MAT_Vector3(-9.982925, -9.271708, -1.164685))
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
  Body_SetCS(node118, MAT_Vector3(3423.707, 3015.75, 163.4889), MAT_Vector3(-9.982925, -9.271708, -1.164685))
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
  Body_SetCS(node119, MAT_Vector3(235.8615, 3041.766, 169.6382), MAT_Vector3(0.652599, -6.449678, -17.84351))
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
  Body_SetCS(node120, MAT_Vector3(2424.695, 1253.683, 223.5931), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node121, MAT_Vector3(1177.751, 787.3883, 289.1357), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node122, MAT_Vector3(1387.235, 621.5508, 226.4049), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node123, MAT_Vector3(3695.18, 1243.744, 288.8174), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node124, MAT_Vector3(3145.369, 845.0092, 200.2052), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node125, MAT_Vector3(1256.282, 804.1885, 275.9818), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node126, MAT_Vector3(1858.706, 850.3688, 240.2786), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node127, MAT_Vector3(2905.246, 905.4838, 198.9064), MAT_Vector3(-27.66486, -24.27007, -10.32534))
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
  Body_SetCS(node128, MAT_Vector3(2706.446, 1076.824, 218.6754), MAT_Vector3(-54.08284, -36.46183, -26.91738))
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
  Body_SetCS(node129, MAT_Vector3(3561.616, 2314.735, 533.4281), MAT_Vector3(-108.1235, 8.813695, 13.91309))
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
  Body_SetCS(node130, MAT_Vector3(2742.437, 1048.301, 215.081), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node131, MAT_Vector3(3503.606, 2325.895, 541.5183), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node132, MAT_Vector3(3744.807, 1130.361, 290.2542), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node132, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node132, 0)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_generic", "ter_megalith_s_03_2")
  Node_AddSon(node7, node133)
  Body_SetCS(node133, MAT_Vector3(3542.741, 1277.718, 288.5047), MAT_Vector3(31.94833, 22.28884, -18.92377))
  Node_ParseIniFile(node133, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node133, 0)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, -1, 0)
  Body_SetCargoKey(node133, -1, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node7, node134)
  Node_ParseIniFile(node134, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node134, "map/3H3/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_fx_plant", "org_grass_l_1")
  Node_AddSon(node7, node135)
  Node_ParseIniFile(node135, "osd/fx_plant/org_grass_l.osd")
  FX_Plant_SetMap(node135, "map/3H3/Terrain/org_grass_l.tga")
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node7, node136)
  Node_ParseIniFile(node136, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node136, "map/3H3/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node137)
  Node_ParseIniFile(node137, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node137, "map/3H3/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_fx_plant", "org_redcoral_1")
  Node_AddSon(node7, node138)
  Node_ParseIniFile(node138, "osd/fx_plant/org_redcoral.osd")
  FX_Plant_SetMap(node138, "map/3H3/Terrain/org_redcoral.tga")
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_fx_plant", "org_fungus_s01_1")
  Node_AddSon(node7, node139)
  Node_ParseIniFile(node139, "osd/fx_plant/org_fungus_s01.osd")
  FX_Plant_SetMap(node139, "map/3H3/Terrain/org_fungus_s01.tga")
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_generic", "org_fungus_l_1")
  Node_AddSon(node7, node140)
  Body_SetCS(node140, MAT_Vector3(2375.832, 1587.356, 222.9846), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node140, "osd/fungus/org_fungus_l.osd")
  Body_SetFriendOrFoeID(node140, 0)
  Body_SetNameKey(node140, -1)
  Body_SetCargoKey(node140, -1, 0)
  Body_SetCargoKey(node140, -1, 1)
  Body_SetCargoKey(node140, -1, 2)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("nod_generic", "org_fungus_m_1")
  Node_AddSon(node7, node141)
  Body_SetCS(node141, MAT_Vector3(2347.4, 1557.85, 222.9082), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node141, "osd/fungus/org_fungus_m.osd")
  Body_SetFriendOrFoeID(node141, 0)
  Body_SetNameKey(node141, -1)
  Body_SetCargoKey(node141, -1, 0)
  Body_SetCargoKey(node141, -1, 1)
  Body_SetCargoKey(node141, -1, 2)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node142)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node142, node143)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node142, node144)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_PatrolArea", "PatrolArea")
  Node_AddSon(node144, node145)
  PatrolArea_SetPosition(node145, MAT_Vector3(3176.270666, 2171.18518, 635))
  PatrolArea_SetRadius(node145, 250)
  PatrolArea_SetMinZ(node145, -10)
  PatrolArea_SetMaxZ(node145, 70)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_PatrolArea", "TriggerArea")
  Node_AddSon(node144, node146)
  PatrolArea_SetPosition(node146, MAT_Vector3(3176.270666, 2170.00425, 635))
  PatrolArea_SetRadius(node146, 500)
  PatrolArea_SetMinZ(node146, -400)
  PatrolArea_SetMaxZ(node146, 280)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_PatrolArea", "FollowArea")
  Node_AddSon(node144, node147)
  PatrolArea_SetPosition(node147, MAT_Vector3(3178.849231, 2170.00425, 635))
  PatrolArea_SetRadius(node147, 700)
  PatrolArea_SetMinZ(node147, -450)
  PatrolArea_SetMaxZ(node147, 280)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node142, node148)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node142, node149)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node142, node150)
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node150, node151)
  Body_SetCS(node151, MAT_Vector3(3408.78028, 2086.144498, 583.677586), MAT_Vector3(91.680394, 0, 0))
  Node_ParseIniFile(node151, "osd/pla/pla_instant_atlscout.osd")
  Body_SetFriendOrFoeID(node151, 0)
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("nod_vessel", "tz_scout1_1")
  Node_AddSon(node150, node152)
  Body_SetCS(node152, MAT_Vector3(3231.549442, 2087.097473, 548.341289), MAT_Vector3(-53.634046, 0, 0))
  Node_ParseIniFile(node152, "osd/tz/tz_scout_narrow.osd")
  Body_SetFriendOrFoeID(node152, 3)
  Body_SetNameKey(node152, -1)
  Body_SetCargoKey(node152, -1, 0)
  Body_SetCargoKey(node152, -1, 1)
  Body_SetCargoKey(node152, -1, 2)
  Node_EnterSimulation(node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("nod_vessel", "tz_scout1_2")
  Node_AddSon(node150, node153)
  Body_SetCS(node153, MAT_Vector3(3095.741963, 2488.613457, 563.246145), MAT_Vector3(-139.364205, 0, 0))
  Node_ParseIniFile(node153, "osd/tz/tz_scout_narrow.osd")
  Body_SetFriendOrFoeID(node153, 3)
  Body_SetNameKey(node153, -1)
  Body_SetCargoKey(node153, -1, 0)
  Body_SetCargoKey(node153, -1, 1)
  Body_SetCargoKey(node153, -1, 2)
  Node_EnterSimulation(node153)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("nod_vessel", "tz_scout1_3")
  Node_AddSon(node150, node154)
  Body_SetCS(node154, MAT_Vector3(2951.668448, 1878.0718, 563.2461), MAT_Vector3(-94.760299, 0, 0))
  Node_ParseIniFile(node154, "osd/tz/tz_scout_narrow.osd")
  Body_SetFriendOrFoeID(node154, 3)
  Body_SetNameKey(node154, -1)
  Body_SetCargoKey(node154, -1, 0)
  Body_SetCargoKey(node154, -1, 1)
  Body_SetCargoKey(node154, -1, 2)
  Node_EnterSimulation(node154)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("nod_vessel", "tz_scout1_4")
  Node_AddSon(node150, node155)
  Body_SetCS(node155, MAT_Vector3(2890.259601, 1894.605031, 563.2461), MAT_Vector3(-94.7603, 0, 0))
  Node_ParseIniFile(node155, "osd/tz/tz_scout_narrow.osd")
  Body_SetFriendOrFoeID(node155, 3)
  Body_SetNameKey(node155, -1)
  Body_SetCargoKey(node155, -1, 0)
  Body_SetCargoKey(node155, -1, 1)
  Body_SetCargoKey(node155, -1, 2)
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("nod_vessel", "tz_scout1_5")
  Node_AddSon(node150, node156)
  Body_SetCS(node156, MAT_Vector3(2772.166924, 2071.744613, 563.2461), MAT_Vector3(-94.7603, 0, 0))
  Node_ParseIniFile(node156, "osd/tz/tz_scout_narrow.osd")
  Body_SetFriendOrFoeID(node156, 3)
  Body_SetNameKey(node156, -1)
  Body_SetCargoKey(node156, -1, 0)
  Body_SetCargoKey(node156, -1, 1)
  Body_SetCargoKey(node156, -1, 2)
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("nod_vessel", "tz_scout1_6")
  Node_AddSon(node150, node157)
  Body_SetCS(node157, MAT_Vector3(2844.203776, 2188.657145, 563.2461), MAT_Vector3(-77.4708, 0, 0))
  Node_ParseIniFile(node157, "osd/tz/tz_scout_narrow.osd")
  Body_SetFriendOrFoeID(node157, 3)
  Body_SetNameKey(node157, -1)
  Body_SetCargoKey(node157, -1, 0)
  Body_SetCargoKey(node157, -1, 1)
  Body_SetCargoKey(node157, -1, 2)
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("nod_vessel", "tz_scout1_7")
  Node_AddSon(node150, node158)
  Body_SetCS(node158, MAT_Vector3(2998.315255, 1969.790519, 563.2461), MAT_Vector3(-77.4708, 0, 0))
  Node_ParseIniFile(node158, "osd/tz/tz_scout_narrow.osd")
  Body_SetFriendOrFoeID(node158, 3)
  Body_SetNameKey(node158, -1)
  Body_SetCargoKey(node158, -1, 0)
  Body_SetCargoKey(node158, -1, 1)
  Body_SetCargoKey(node158, -1, 2)
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("nod_vessel", "tz_scout1_8")
  Node_AddSon(node150, node159)
  Body_SetCS(node159, MAT_Vector3(3310.631054, 2224.201663, 600.518018), MAT_Vector3(131.306024, 0, 0))
  Node_ParseIniFile(node159, "osd/tz/tz_scout_narrow.osd")
  Body_SetFriendOrFoeID(node159, 3)
  Body_SetNameKey(node159, -1)
  Body_SetCargoKey(node159, -1, 0)
  Body_SetCargoKey(node159, -1, 1)
  Body_SetCargoKey(node159, -1, 2)
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("nod_vessel", "tz_scout1_9")
  Node_AddSon(node150, node160)
  Body_SetCS(node160, MAT_Vector3(3153.195132, 1807.18985, 563.2461), MAT_Vector3(-103.279577, 0, 0))
  Node_ParseIniFile(node160, "osd/tz/tz_scout_narrow.osd")
  Body_SetFriendOrFoeID(node160, 3)
  Body_SetNameKey(node160, -1)
  Body_SetCargoKey(node160, -1, 0)
  Body_SetCargoKey(node160, -1, 1)
  Body_SetCargoKey(node160, -1, 2)
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("nod_vessel", "tz_scout1_10")
  Node_AddSon(node150, node161)
  Body_SetCS(node161, MAT_Vector3(3253.42657, 2293.347678, 607.420226), MAT_Vector3(-75.730371, 0, 0))
  Node_ParseIniFile(node161, "osd/tz/tz_scout_narrow.osd")
  Body_SetFriendOrFoeID(node161, 3)
  Body_SetNameKey(node161, -1)
  Body_SetCargoKey(node161, -1, 0)
  Body_SetCargoKey(node161, -1, 1)
  Body_SetCargoKey(node161, -1, 2)
  Node_EnterSimulation(node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("nod_vessel", "pir_tz_scout2_1")
  Node_AddSon(node150, node162)
  Body_SetCS(node162, MAT_Vector3(2924.90228, 2232.457704, 663.31738), MAT_Vector3(-31.623594, 0, 0))
  Node_ParseIniFile(node162, "osd/pir_tz/pir_tz_scout2_wide.osd")
  Body_SetFriendOrFoeID(node162, 3)
  Body_SetNameKey(node162, -1)
  Body_SetCargoKey(node162, -1, 0)
  Body_SetCargoKey(node162, -1, 1)
  Body_SetCargoKey(node162, -1, 2)
  Node_EnterSimulation(node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("nod_vessel", "pir_tz_scout2_2")
  Node_AddSon(node150, node163)
  Body_SetCS(node163, MAT_Vector3(3168.173736, 2492.262766, 663.3174), MAT_Vector3(-120.337597, 0, 0))
  Node_ParseIniFile(node163, "osd/pir_tz/pir_tz_scout2_wide.osd")
  Body_SetFriendOrFoeID(node163, 3)
  Body_SetNameKey(node163, -1)
  Body_SetCargoKey(node163, -1, 0)
  Body_SetCargoKey(node163, -1, 1)
  Body_SetCargoKey(node163, -1, 2)
  Node_EnterSimulation(node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("nod_vessel", "pir_tz_scout2_3")
  Node_AddSon(node150, node164)
  Body_SetCS(node164, MAT_Vector3(2962.692049, 1875.817146, 663.3174), MAT_Vector3(-88.110499, 0, 0))
  Node_ParseIniFile(node164, "osd/pir_tz/pir_tz_scout2_wide.osd")
  Body_SetFriendOrFoeID(node164, 3)
  Body_SetNameKey(node164, -1)
  Body_SetCargoKey(node164, -1, 0)
  Body_SetCargoKey(node164, -1, 1)
  Body_SetCargoKey(node164, -1, 2)
  Node_EnterSimulation(node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("nod_vessel", "pir_tz_scout2_4")
  Node_AddSon(node150, node165)
  Body_SetCS(node165, MAT_Vector3(3250.839104, 2421.407009, 663.3174), MAT_Vector3(-147.16255, 0, 0))
  Node_ParseIniFile(node165, "osd/pir_tz/pir_tz_scout2_wide.osd")
  Body_SetFriendOrFoeID(node165, 3)
  Body_SetNameKey(node165, -1)
  Body_SetCargoKey(node165, -1, 0)
  Body_SetCargoKey(node165, -1, 1)
  Body_SetCargoKey(node165, -1, 2)
  Node_EnterSimulation(node165)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("nod_vessel", "pir_tz_scout2_5")
  Node_AddSon(node150, node166)
  Body_SetCS(node166, MAT_Vector3(3267.426816, 1584.319375, 663.3174), MAT_Vector3(-1.45075, 0, 0))
  Node_ParseIniFile(node166, "osd/pir_tz/pir_tz_scout2_wide.osd")
  Body_SetFriendOrFoeID(node166, 3)
  Body_SetNameKey(node166, -1)
  Body_SetCargoKey(node166, -1, 0)
  Body_SetCargoKey(node166, -1, 1)
  Body_SetCargoKey(node166, -1, 2)
  Node_EnterSimulation(node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("nod_vessel", "pir_sho_scout_1")
  Node_AddSon(node150, node167)
  Body_SetCS(node167, MAT_Vector3(3138.650747, 1841.569624, 663.31738), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node167, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node167, 3)
  Body_SetNameKey(node167, -1)
  Body_SetCargoKey(node167, -1, 0)
  Body_SetCargoKey(node167, -1, 1)
  Body_SetCargoKey(node167, -1, 2)
  Node_EnterSimulation(node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("nod_vessel", "pir_sho_scout_2")
  Node_AddSon(node150, node168)
  Body_SetCS(node168, MAT_Vector3(3257.925006, 1662.068525, 663.3174), MAT_Vector3(9.274015, 0, 0))
  Node_ParseIniFile(node168, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node168, 3)
  Body_SetNameKey(node168, -1)
  Body_SetCargoKey(node168, -1, 0)
  Body_SetCargoKey(node168, -1, 1)
  Body_SetCargoKey(node168, -1, 2)
  Node_EnterSimulation(node168)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("nod_vessel", "pir_sho_scout_3")
  Node_AddSon(node150, node169)
  Body_SetCS(node169, MAT_Vector3(3376.257996, 2484.598516, 663.3174), MAT_Vector3(-154.145364, 0, 0))
  Node_ParseIniFile(node169, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node169, 3)
  Body_SetNameKey(node169, -1)
  Body_SetCargoKey(node169, -1, 0)
  Body_SetCargoKey(node169, -1, 1)
  Body_SetCargoKey(node169, -1, 2)
  Node_EnterSimulation(node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("nod_vessel", "pir_sho_scout_4")
  Node_AddSon(node150, node170)
  Body_SetCS(node170, MAT_Vector3(2766.116694, 2001.806492, 663.3174), MAT_Vector3(-84.811115, 0, 0))
  Node_ParseIniFile(node170, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node170, 3)
  Body_SetNameKey(node170, -1)
  Body_SetCargoKey(node170, -1, 0)
  Body_SetCargoKey(node170, -1, 1)
  Body_SetCargoKey(node170, -1, 2)
  Node_EnterSimulation(node170)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("nod_vessel", "pir_sho_scout_5")
  Node_AddSon(node150, node171)
  Body_SetCS(node171, MAT_Vector3(2802.368927, 2365.973084, 663.3174), MAT_Vector3(-107.201681, 0, 0))
  Node_ParseIniFile(node171, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node171, 3)
  Body_SetNameKey(node171, -1)
  Body_SetCargoKey(node171, -1, 0)
  Body_SetCargoKey(node171, -1, 1)
  Body_SetCargoKey(node171, -1, 2)
  Node_EnterSimulation(node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("nod_vessel", "tz_bomber_1")
  Node_AddSon(node150, node172)
  Body_SetCS(node172, MAT_Vector3(2773.336491, 2204.735162, 616.053832), MAT_Vector3(-94.742591, 0, 0))
  Node_ParseIniFile(node172, "osd/tz/tz_bomber.osd")
  Body_SetFriendOrFoeID(node172, 3)
  Body_SetNameKey(node172, -1)
  Body_SetCargoKey(node172, -1, 0)
  Body_SetCargoKey(node172, -1, 1)
  Body_SetCargoKey(node172, -1, 2)
  Node_EnterSimulation(node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("nod_vessel", "pir_tz_scout2_plasma_1")
  Node_AddSon(node150, node173)
  Body_SetCS(node173, MAT_Vector3(2797.355393, 2251.219488, 612.832802), MAT_Vector3(-89.784021, 0, 0))
  Node_ParseIniFile(node173, "osd/pir_tz/pir_tz_scout2_narrow_plasma.osd")
  Body_SetFriendOrFoeID(node173, 3)
  Body_SetNameKey(node173, -1)
  Body_SetCargoKey(node173, -1, 0)
  Body_SetCargoKey(node173, -1, 1)
  Body_SetCargoKey(node173, -1, 2)
  Node_EnterSimulation(node173)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("nod_vessel", "pir_tz_scout2_plasma_2")
  Node_AddSon(node150, node174)
  Body_SetCS(node174, MAT_Vector3(2794.604858, 2154.150939, 616.053832), MAT_Vector3(-113.14888, 0, 0))
  Node_ParseIniFile(node174, "osd/pir_tz/pir_tz_scout2_narrow_plasma.osd")
  Body_SetFriendOrFoeID(node174, 3)
  Body_SetNameKey(node174, -1)
  Body_SetCargoKey(node174, -1, 0)
  Body_SetCargoKey(node174, -1, 1)
  Body_SetCargoKey(node174, -1, 2)
  Node_EnterSimulation(node174)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("nod_vessel", "pir_tz_scout2_6")
  Node_AddSon(node150, node175)
  Body_SetCS(node175, MAT_Vector3(3540.140191, 1795.239821, 633.407836), MAT_Vector3(47.778916, 0, 0))
  Node_ParseIniFile(node175, "osd/pir_tz/pir_tz_scout2_wide.osd")
  Body_SetFriendOrFoeID(node175, 3)
  Body_SetNameKey(node175, -1)
  Body_SetCargoKey(node175, -1, 0)
  Body_SetCargoKey(node175, -1, 1)
  Body_SetCargoKey(node175, -1, 2)
  Node_EnterSimulation(node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("nod_vessel", "pir_tz_scout2_7")
  Node_AddSon(node150, node176)
  Body_SetCS(node176, MAT_Vector3(3215.384042, 2579.378022, 633.4078), MAT_Vector3(-176.449002, 0, 0))
  Node_ParseIniFile(node176, "osd/pir_tz/pir_tz_scout2_wide.osd")
  Body_SetFriendOrFoeID(node176, 3)
  Body_SetNameKey(node176, -1)
  Body_SetCargoKey(node176, -1, 0)
  Body_SetCargoKey(node176, -1, 1)
  Body_SetCargoKey(node176, -1, 2)
  Node_EnterSimulation(node176)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("nod_vessel", "pir_tz_scout2_8")
  Node_AddSon(node150, node177)
  Body_SetCS(node177, MAT_Vector3(2741.830767, 2049.140091, 633.4078), MAT_Vector3(-80.392397, 0, 0))
  Node_ParseIniFile(node177, "osd/pir_tz/pir_tz_scout2_wide.osd")
  Body_SetFriendOrFoeID(node177, 3)
  Body_SetNameKey(node177, -1)
  Body_SetCargoKey(node177, -1, 0)
  Body_SetCargoKey(node177, -1, 1)
  Body_SetCargoKey(node177, -1, 2)
  Node_EnterSimulation(node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("nod_vessel", "pir_sho_scout_6")
  Node_AddSon(node150, node178)
  Body_SetCS(node178, MAT_Vector3(3598.263578, 1822.194096, 657.335487), MAT_Vector3(45.784057, 0, 0))
  Node_ParseIniFile(node178, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node178, 3)
  Body_SetNameKey(node178, -1)
  Body_SetCargoKey(node178, -1, 0)
  Body_SetCargoKey(node178, -1, 1)
  Body_SetCargoKey(node178, -1, 2)
  Node_EnterSimulation(node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("nod_vessel", "pir_sho_scout_7")
  Node_AddSon(node150, node179)
  Body_SetCS(node179, MAT_Vector3(3132.977282, 2566.180376, 657.3355), MAT_Vector3(-173.682252, 0, 0))
  Node_ParseIniFile(node179, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node179, 3)
  Body_SetNameKey(node179, -1)
  Body_SetCargoKey(node179, -1, 0)
  Body_SetCargoKey(node179, -1, 1)
  Body_SetCargoKey(node179, -1, 2)
  Node_EnterSimulation(node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("nod_vessel", "pir_sho_scout_8")
  Node_AddSon(node150, node180)
  Body_SetCS(node180, MAT_Vector3(2743.269851, 2099.712352, 657.3355), MAT_Vector3(-92.814548, 0, 0))
  Node_ParseIniFile(node180, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node180, 3)
  Body_SetNameKey(node180, -1)
  Body_SetCargoKey(node180, -1, 0)
  Body_SetCargoKey(node180, -1, 1)
  Body_SetCargoKey(node180, -1, 2)
  Node_EnterSimulation(node180)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("nod_vessel", "pir_sho_bomber_1")
  Node_AddSon(node150, node181)
  Body_SetCS(node181, MAT_Vector3(3259.398518, 2516.637489, 616.0538), MAT_Vector3(-179.632921, 0, 0))
  Node_ParseIniFile(node181, "osd/pir_sho/pir_sho_bomber.osd")
  Body_SetFriendOrFoeID(node181, 3)
  Body_SetNameKey(node181, -1)
  Body_SetCargoKey(node181, -1, 0)
  Body_SetCargoKey(node181, -1, 1)
  Body_SetCargoKey(node181, -1, 2)
  Node_EnterSimulation(node181)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("nod_vessel", "pir_tz_scout2_plasma_3")
  Node_AddSon(node150, node182)
  Body_SetCS(node182, MAT_Vector3(3203.753241, 2536.904893, 612.8328), MAT_Vector3(-155.415745, 0, 0))
  Node_ParseIniFile(node182, "osd/pir_tz/pir_tz_scout2_narrow_plasma.osd")
  Body_SetFriendOrFoeID(node182, 3)
  Body_SetNameKey(node182, -1)
  Body_SetCargoKey(node182, -1, 0)
  Body_SetCargoKey(node182, -1, 1)
  Body_SetCargoKey(node182, -1, 2)
  Node_EnterSimulation(node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("nod_vessel", "pir_tz_scout2_plasma_4")
  Node_AddSon(node150, node183)
  Body_SetCS(node183, MAT_Vector3(3295.848658, 2542.154979, 616.0538), MAT_Vector3(-175.692523, 0, 0))
  Node_ParseIniFile(node183, "osd/pir_tz/pir_tz_scout2_narrow_plasma.osd")
  Body_SetFriendOrFoeID(node183, 3)
  Body_SetNameKey(node183, -1)
  Body_SetCargoKey(node183, -1, 0)
  Body_SetCargoKey(node183, -1, 1)
  Body_SetCargoKey(node183, -1, 2)
  Node_EnterSimulation(node183)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("nod_vessel", "pir_tz_scout2_9")
  Node_AddSon(node150, node184)
  Body_SetCS(node184, MAT_Vector3(2899.530319, 2478.567375, 633.4078), MAT_Vector3(-112.164791, 0, 0))
  Node_ParseIniFile(node184, "osd/pir_tz/pir_tz_scout2_wide.osd")
  Body_SetFriendOrFoeID(node184, 3)
  Body_SetNameKey(node184, -1)
  Body_SetCargoKey(node184, -1, 0)
  Body_SetCargoKey(node184, -1, 1)
  Body_SetCargoKey(node184, -1, 2)
  Node_EnterSimulation(node184)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("nod_vessel", "pir_tz_scout2_10")
  Node_AddSon(node150, node185)
  Body_SetCS(node185, MAT_Vector3(2802.693678, 2371.102301, 633.4078), MAT_Vector3(-112.1648, 0, 0))
  Node_ParseIniFile(node185, "osd/pir_tz/pir_tz_scout2_wide.osd")
  Body_SetFriendOrFoeID(node185, 3)
  Body_SetNameKey(node185, -1)
  Body_SetCargoKey(node185, -1, 0)
  Body_SetCargoKey(node185, -1, 1)
  Body_SetCargoKey(node185, -1, 2)
  Node_EnterSimulation(node185)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("nod_vessel", "pir_sho_scout_9")
  Node_AddSon(node150, node186)
  Body_SetCS(node186, MAT_Vector3(2867.003312, 2441.798214, 657.3355), MAT_Vector3(-100.13128, 0, 0))
  Node_ParseIniFile(node186, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node186, 3)
  Body_SetNameKey(node186, -1)
  Body_SetCargoKey(node186, -1, 0)
  Body_SetCargoKey(node186, -1, 1)
  Body_SetCargoKey(node186, -1, 2)
  Node_EnterSimulation(node186)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("nod_vessel", "pir_sho_scout_10")
  Node_AddSon(node150, node187)
  Body_SetCS(node187, MAT_Vector3(2836.2988, 2381.570531, 657.3355), MAT_Vector3(-100.1313, 0, 0))
  Node_ParseIniFile(node187, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node187, 3)
  Body_SetNameKey(node187, -1)
  Body_SetCargoKey(node187, -1, 0)
  Body_SetCargoKey(node187, -1, 1)
  Body_SetCargoKey(node187, -1, 2)
  Node_EnterSimulation(node187)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("nod_vessel", "pir_tz_scout2_plasma_5")
  Node_AddSon(node150, node188)
  Body_SetCS(node188, MAT_Vector3(2940.388843, 2518.536385, 616.0538), MAT_Vector3(-164.878963, 0, 0))
  Node_ParseIniFile(node188, "osd/pir_tz/pir_tz_scout2_narrow_plasma.osd")
  Body_SetFriendOrFoeID(node188, 3)
  Body_SetNameKey(node188, -1)
  Body_SetCargoKey(node188, -1, 0)
  Body_SetCargoKey(node188, -1, 1)
  Body_SetCargoKey(node188, -1, 2)
  Node_EnterSimulation(node188)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("nod_vessel", "tz_fregatte_1")
  Node_AddSon(node150, node189)
  Body_SetCS(node189, MAT_Vector3(3240.221887, 2021.22303, 635), MAT_Vector3(-30.43001, 0, 0))
  Node_ParseIniFile(node189, "osd/tz/tz_cingan.osd")
  Body_SetFriendOrFoeID(node189, 3)
  Body_SetNameKey(node189, 354)
  Body_SetCargoKey(node189, -1, 0)
  Body_SetCargoKey(node189, -1, 1)
  Body_SetCargoKey(node189, -1, 2)
  Node_EnterSimulation(node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("nod_vessel", "pir_tz_scout2_plasma_6")
  Node_AddSon(node150, node190)
  Body_SetCS(node190, MAT_Vector3(3171.851428, 2034.35439, 616.0538), MAT_Vector3(-38.57901, 0, 0))
  Node_ParseIniFile(node190, "osd/pir_tz/pir_tz_scout2_narrow_plasma.osd")
  Body_SetFriendOrFoeID(node190, 3)
  Body_SetNameKey(node190, -1)
  Body_SetCargoKey(node190, -1, 0)
  Body_SetCargoKey(node190, -1, 1)
  Body_SetCargoKey(node190, -1, 2)
  Node_EnterSimulation(node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("nod_vessel", "pir_tz_scout2_plasma_7")
  Node_AddSon(node150, node191)
  Body_SetCS(node191, MAT_Vector3(3280.496629, 1970.583739, 616.0538), MAT_Vector3(-27.538114, 0, 0))
  Node_ParseIniFile(node191, "osd/pir_tz/pir_tz_scout2_narrow_plasma.osd")
  Body_SetFriendOrFoeID(node191, 3)
  Body_SetNameKey(node191, -1)
  Body_SetCargoKey(node191, -1, 0)
  Body_SetCargoKey(node191, -1, 1)
  Body_SetCargoKey(node191, -1, 2)
  Node_EnterSimulation(node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("nod_vessel", "pir_tz_scout2_plasma_8")
  Node_AddSon(node150, node192)
  Body_SetCS(node192, MAT_Vector3(3223.495588, 2014.86797, 671.851322), MAT_Vector3(-27.53811, 0, 0))
  Node_ParseIniFile(node192, "osd/pir_tz/pir_tz_scout2_narrow_plasma.osd")
  Body_SetFriendOrFoeID(node192, 3)
  Body_SetNameKey(node192, -1)
  Body_SetCargoKey(node192, -1, 0)
  Body_SetCargoKey(node192, -1, 1)
  Body_SetCargoKey(node192, -1, 2)
  Node_EnterSimulation(node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("nod_vessel", "pir_tz_scout2_plasma_9")
  Node_AddSon(node150, node193)
  Body_SetCS(node193, MAT_Vector3(3190.429939, 2070.371745, 633.490504), MAT_Vector3(-27.53811, 0, 0))
  Node_ParseIniFile(node193, "osd/pir_tz/pir_tz_scout2_narrow_plasma.osd")
  Body_SetFriendOrFoeID(node193, 3)
  Body_SetNameKey(node193, -1)
  Body_SetCargoKey(node193, -1, 0)
  Body_SetCargoKey(node193, -1, 1)
  Body_SetCargoKey(node193, -1, 2)
  Node_EnterSimulation(node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("nod_vessel", "pir_tz_scout2_plasma_10")
  Node_AddSon(node150, node194)
  Body_SetCS(node194, MAT_Vector3(3180.982554, 1973.535678, 633.4905), MAT_Vector3(-27.53811, 0, 0))
  Node_ParseIniFile(node194, "osd/pir_tz/pir_tz_scout2_narrow_plasma.osd")
  Body_SetFriendOrFoeID(node194, 3)
  Body_SetNameKey(node194, -1)
  Body_SetCargoKey(node194, -1, 0)
  Body_SetCargoKey(node194, -1, 1)
  Body_SetCargoKey(node194, -1, 2)
  Node_EnterSimulation(node194)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node195)
  Camera_SetBackPlane(node195, 750)
  Node_EnterSimulation(node195)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, F)
SetEnemyMatrixElement(2, 0, N)
SetEnemyMatrixElement(3, 0, E)
SetEnemyMatrixElement(4, 0, E)
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
SetEnemyMatrixElement(2, 1, N)
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
SetEnemyMatrixElement(0, 2, N)
SetEnemyMatrixElement(1, 2, N)
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
SetEnemyMatrixElement(0, 3, E)
SetEnemyMatrixElement(1, 3, E)
SetEnemyMatrixElement(2, 3, E)
SetEnemyMatrixElement(3, 3, F)
SetEnemyMatrixElement(4, 3, F)
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
    if not (o8170.Value ~= True) then
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
    if not (o8194.Value ~= True) then
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
  o5734.StartCalculate()
end, SetStateValue = function(L0)
  if not (o907.Value == L0) then
    o907["Value"] = L0
    o5734.ReCalculate()
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
S_o1780 = { [nil] = {}, Start = function(L0)

end }
S_o1826 = { [nil] = {}, Start = function(L0)

end }
S_o1872 = { [nil] = {}, Start = function(L0)

end }
S_o1918 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1918, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1918, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1918, "Code3")
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
S_o1965 = { [nil] = {}, Start = function(L0)

end }
S_o2011 = { [nil] = {}, Start = function(L0)

end }
S_o2057 = { [nil] = {}, Start = function(L0)

end }
S_o2103 = { [nil] = {}, Start = function(L0)

end }
S_o2149 = { [nil] = {}, Start = function(L0)

end }
S_o2195 = { [nil] = {}, Start = function(L0)

end }
S_o2241 = { [nil] = {}, Start = function(L0)

end }
S_o2287 = { [nil] = {}, Start = function(L0)

end }
S_o2333 = { [nil] = {}, Start = function(L0)

end }
S_o2379 = { [nil] = {}, Start = function(L0)

end }
S_o2425 = { [nil] = {}, Start = function(L0)

end }
S_o2471 = { [nil] = {}, Start = function(L0)

end }
S_o2517 = { [nil] = {}, Start = function(L0)

end }
S_o2563 = { [nil] = {}, Start = function(L0)

end }
S_o2609 = { [nil] = {}, Start = function(L0)

end }
S_o2655 = { [nil] = {}, Start = function(L0)

end }
S_o2701 = { [nil] = {}, Start = function(L0)

end }
S_o2747 = { [nil] = {}, Start = function(L0)

end }
S_o2793 = { [nil] = {}, Start = function(L0)

end }
S_o2839 = { [nil] = {}, Start = function(L0)

end }
S_o2885 = { [nil] = {}, Start = function(L0)

end }
S_o2931 = { [nil] = {}, Start = function(L0)

end }
S_o2977 = { [nil] = {}, Start = function(L0)

end }
S_o3023 = { [nil] = {}, Start = function(L0)

end }
S_o3069 = { [nil] = {}, Start = function(L0)

end }
S_o3115 = { [nil] = {}, Start = function(L0)

end }
S_o3161 = { [nil] = {}, Start = function(L0)

end }
S_o3207 = { [nil] = {}, Start = function(L0)

end }
S_o3253 = { [nil] = {}, Start = function(L0)

end }
S_o3299 = { [nil] = {}, Start = function(L0)

end }
S_o3345 = { [nil] = {}, Start = function(L0)

end }
S_o3391 = { [nil] = {}, Start = function(L0)

end }
S_o3437 = { [nil] = {}, Start = function(L0)

end }
S_o3483 = { [nil] = {}, Start = function(L0)

end }
S_o3529 = { [nil] = {}, Start = function(L0)

end }
S_o3575 = { [nil] = {}, Start = function(L0)

end }
S_o3621 = { [nil] = {}, Start = function(L0)

end }
S_o3667 = { [nil] = {}, Start = function(L0)

end }
S_o3713 = { [nil] = {}, Start = function(L0)

end }
S_o3759 = { [nil] = {}, Start = function(L0)

end }
S_o3805 = { [nil] = {}, Start = function(L0)

end }
S_o3851 = { [nil] = {}, Start = function(L0)

end }
S_o3897 = { [nil] = {}, Start = function(L0)

end }
S_o3943 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3943, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3943, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3943, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o3943, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o3943, "Code5")
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
S_o3989 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3989, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3989, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3989, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o3989, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o3989, "Code5")
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
S_o4035 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4035, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4035, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4035, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4035, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4035, "Code5")
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
S_o4081 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4081, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4081, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4081, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4081, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4081, "Code5")
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
S_o4127 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4127, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4127, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4127, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4127, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4127, "Code5")
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
S_o4173 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4173, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4173, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4173, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4173, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4173, "Code5")
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
S_o4219 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4219, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4219, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4219, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4219, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4219, "Code5")
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
S_o4265 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4265, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4265, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4265, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4265, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4265, "Code5")
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
S_o4311 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4311, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4311, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4311, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4311, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4311, "Code5")
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
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4357, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4357, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4357, "Code5")
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
S_o4403 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4403, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4403, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4403, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4403, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4403, "Code5")
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
S_o4449 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4449, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4449, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4449, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4449, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4449, "Code5")
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
S_o4495 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4495, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4495, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4495, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4495, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4495, "Code5")
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
S_o4541 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4541, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4541, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4541, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o4541, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4541, "Code5")
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
S_o4587 = { [nil] = {}, Start = function(L0)

end }
S_o4633 = { [nil] = {}, Start = function(L0)

end }
S_o4679 = { [nil] = {}, Start = function(L0)

end }
S_o4725 = { [nil] = {}, Start = function(L0)

end }
S_o4771 = { [nil] = {}, Start = function(L0)

end }
S_o4817 = { [nil] = {}, Start = function(L0)

end }
S_o4863 = { [nil] = {}, Start = function(L0)

end }
S_o4909 = { [nil] = {}, Start = function(L0)

end }
S_o4955 = { [nil] = {}, Start = function(L0)

end }
S_o5001 = { [nil] = {}, Start = function(L0)

end }
S_o5047 = { [nil] = {}, Start = function(L0)

end }
S_o5093 = { [nil] = {}, Start = function(L0)

end }
S_o5139 = { [nil] = {}, Start = function(L0)

end }
S_o5185 = { [nil] = {}, Start = function(L0)

end }
S_o5231 = { [nil] = {}, Start = function(L0)

end }
S_o5277 = { [nil] = {}, Start = function(L0)

end }
S_o5323 = { [nil] = {}, Start = function(L0)

end }
S_o5369 = { [nil] = {}, Start = function(L0)

end }
S_o5415 = { [nil] = {}, Start = function(L0)

end }
S_o5461 = { [nil] = {}, Start = function(L0)

end }
S_o5507 = { [nil] = {}, Start = function(L0)

end }
S_o5553 = { [nil] = {}, Start = function(L0)

end }
S_o5599 = { [nil] = {}, Start = function(L0)

end }
S_o5645 = { [nil] = {}, Start = function(L0)

end }
S_o5719 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_plasmagatlin", 1)
  Body_AddItem(L0.Node, "ammo_energy", 1000)
  Body_AddItem(L0.Node, "device_generator2", 1)
  Body_AddItem(L0.Node, "gun_doommortar", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "torpedo_maneater", 4)
  Body_AddItem(L0.Node, "torpedo_bullshark", 4)
  Body_AddItem(L0.Node, "device_repair2", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 6)
  CallFunction(o5719, "Code9")
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
o5733 = { [nil] = {}, GetCalculated = function()
  if not (o5768.Value ~= True) then
    if not (o5824.Value ~= True) then
      if not (o5880.Value ~= True) then
        if not (o5936.Value ~= True) then
          if not (o5992.Value ~= True) then
            if not (o6048.Value ~= True) then
              if not (o6104.Value ~= True) then
                if not (o6160.Value ~= True) then
                  if not (o6216.Value ~= True) then
                    if not (o6272.Value ~= True) then
                      if not (o6328.Value ~= True) then
                        if not (o6384.Value ~= True) then
                          if not (o6440.Value ~= True) then
                            if not (o6496.Value ~= True) then
                              if not (o6552.Value ~= True) then
                                if not (o6608.Value ~= True) then
                                  if not (o6664.Value ~= True) then
                                    if not (o6440.Value ~= True) then
                                      if not (o6496.Value ~= True) then
                                        if not (o6552.Value ~= True) then
                                          if not (o6608.Value ~= True) then
                                            if not (o6664.Value ~= True) then
                                              if not (o6720.Value ~= True) then
                                                if not (o6776.Value ~= True) then
                                                  if not (o6832.Value ~= True) then
                                                    if not (o6888.Value ~= True) then
                                                      if not (o6944.Value ~= True) then
                                                        if not (o7000.Value ~= True) then
                                                          if not (o7056.Value ~= True) then
                                                            if not (o7112.Value ~= True) then
                                                              if not (o7168.Value ~= True) then
                                                                if not (o7224.Value ~= True) then
                                                                  if not (o7280.Value ~= True) then
                                                                    if not (o7336.Value ~= True) then
                                                                      if not (o7392.Value ~= True) then
                                                                        if not (o7448.Value ~= True) then
                                                                          if not (o7504.Value ~= True) then
                                                                            if not (o7560.Value ~= True) then
                                                                              if not (o7616.Value ~= True) then
                                                                                if not (o7672.Value ~= True) then
                                                                                  if not (o7728.Value ~= True) then
                                                                                    if not (o7784.Value ~= True) then
                                                                                      if not (o7839.Value ~= True) then
                                                                                        if not (o7895.Value ~= True) then
                                                                                          if not (o7951.Value ~= True) then
                                                                                            if not (o8007.Value ~= True) then
                                                                                              if not (o8063.Value ~= True) then
                                                                                                if not (o8119.Value ~= True) then
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
end, ReCalculate = function()
  o5733.SetStateValue(o5733.GetCalculated())
end, StartCalculate = function()
  o5733["Value"] = o5733.GetCalculated()
  o5735.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
  SED_SetTaskTextKey(0, -1, -1)
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o5733.Value == L0) then
    DelayedFunction(2.5, o5733, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5733.Value == L0) then
    o5733["Value"] = L0
    o5735.ReCalculate()
    if not (L0 ~= 1) then
      o5733.ChangeTo1()
    end
  end
end }
o5734 = { [nil] = {}, GetCalculated = function()
  if not (o907.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5734.SetStateValue(o5734.GetCalculated())
end, StartCalculate = function()
  o5734["Value"] = o5734.GetCalculated()
  o5759.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 1, 2001, 2100)
  SED_SetTaskTextKey(0, -1, -1)
end, SetStateValue = function(L0)
  if not (o5734.Value == L0) then
    o5734["Value"] = L0
    o5759.ReCalculate()
    if not (L0 ~= 1) then
      o5734.ChangeTo1()
    end
  end
end }
o5735 = { [nil] = {}, GetCalculated = function()
  if not (o5733.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5735.SetStateValue(o5735.GetCalculated())
end, StartCalculate = function()
  o5735["Value"] = o5735.GetCalculated()
  o8170.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5735.Value == L0) then
    o5735["Value"] = L0
    o8170.ReCalculate()
  end
end }
o5759 = { [nil] = {}, GetCalculated = function()
  if not (o5734.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5759.SetStateValue(o5759.GetCalculated())
end, StartCalculate = function()
  o5759["Value"] = o5759.GetCalculated()
  o8194.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5759.Value == L0) then
    o5759["Value"] = L0
    o8194.ReCalculate()
  end
end }
S_o5763 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Agressive")
  SED_SetTaskTextKey(2100, -1, -1)
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5763, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5763, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code5")
  else
    CallFunction(o5763, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o5763, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Born = function(L0, L1)
  o5767.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o5768.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5767 = { [nil] = {}, Start = function()
  o5767["Value"] = False
  o7836.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5767.Value == L0) then
    o5767["Value"] = L0
    o7836.ReCalculate()
  end
end }
o5768 = { [nil] = {}, Start = function()
  o5768["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5768.Value == L0) then
    o5768["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o5819 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5819, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5819, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5819, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o5819, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o5824.SetStateValue(L1)
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
o5824 = { [nil] = {}, Start = function()
  o5824["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5824.Value == L0) then
    o5824["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o5875 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5875, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5875, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5875, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o5875, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o5880.SetStateValue(L1)
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
o5880 = { [nil] = {}, Start = function()
  o5880["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5880.Value == L0) then
    o5880["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o5931 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5931, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5931, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5931, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o5931, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o5936.SetStateValue(L1)
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
o5936 = { [nil] = {}, Start = function()
  o5936["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5936.Value == L0) then
    o5936["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o5987 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5987, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5987, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5987, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o5987, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o5992.SetStateValue(L1)
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
o5992 = { [nil] = {}, Start = function()
  o5992["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5992.Value == L0) then
    o5992["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o6043 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6043, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6043, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6043, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o6043, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6048.SetStateValue(L1)
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
o6048 = { [nil] = {}, Start = function()
  o6048["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6048.Value == L0) then
    o6048["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o6099 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6099, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6099, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6099, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o6099, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6104.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6101.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6101 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6101.SetStateValue(o6101.GetCalculated())
end, StartCalculate = function()
  o6101["Value"] = o6101.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6101.Value == L0) then
    DelayedFunction(30.457465, o6101, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6101.Value == L0) then
    o6101["Value"] = L0
    CallFunction(o6099, "ProcesseStateChange")
  end
end }
o6104 = { [nil] = {}, Start = function()
  o6104["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6104.Value == L0) then
    o6104["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o6155 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6155, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6155, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6155, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o6155, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6160.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6157.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6157 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6157.SetStateValue(o6157.GetCalculated())
end, StartCalculate = function()
  o6157["Value"] = o6157.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6157.Value == L0) then
    DelayedFunction(30.45746, o6157, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6157.Value == L0) then
    o6157["Value"] = L0
    CallFunction(o6155, "ProcesseStateChange")
  end
end }
o6160 = { [nil] = {}, Start = function()
  o6160["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6160.Value == L0) then
    o6160["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o6211 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6211, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6211, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6211, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o6211, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6216.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6213.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6213 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6213.SetStateValue(o6213.GetCalculated())
end, StartCalculate = function()
  o6213["Value"] = o6213.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6213.Value == L0) then
    DelayedFunction(30.45746, o6213, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6213.Value == L0) then
    o6213["Value"] = L0
    CallFunction(o6211, "ProcesseStateChange")
  end
end }
o6216 = { [nil] = {}, Start = function()
  o6216["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6216.Value == L0) then
    o6216["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o6267 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6267, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6267, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6267, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o6267, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6272.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6269.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6269 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6269.SetStateValue(o6269.GetCalculated())
end, StartCalculate = function()
  o6269["Value"] = o6269.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6269.Value == L0) then
    DelayedFunction(30.45746, o6269, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6269.Value == L0) then
    o6269["Value"] = L0
    CallFunction(o6267, "ProcesseStateChange")
  end
end }
o6272 = { [nil] = {}, Start = function()
  o6272["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6272.Value == L0) then
    o6272["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o6323 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6323, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6323, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6323, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o6323, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Born = function(L0, L1)
  o6327.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o6328.SetStateValue(L1)
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
o6327 = { [nil] = {}, Start = function()
  o6327["Value"] = False
  o6101.StartCalculate()
  o6157.StartCalculate()
  o6213.StartCalculate()
  o6269.StartCalculate()
  o6717.StartCalculate()
  o6773.StartCalculate()
  o6829.StartCalculate()
  o6885.StartCalculate()
  o6941.StartCalculate()
  o6997.StartCalculate()
  o7053.StartCalculate()
  o7109.StartCalculate()
  o7165.StartCalculate()
  o7221.StartCalculate()
  o7277.StartCalculate()
  o7333.StartCalculate()
  o7389.StartCalculate()
  o7445.StartCalculate()
  o7501.StartCalculate()
  o7557.StartCalculate()
  o7613.StartCalculate()
  o7669.StartCalculate()
  o7725.StartCalculate()
  o7781.StartCalculate()
  o7892.StartCalculate()
  o7948.StartCalculate()
  o8004.StartCalculate()
  o8060.StartCalculate()
  o8116.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6327.Value == L0) then
    o6327["Value"] = L0
    o6101.ReCalculate()
    o6157.ReCalculate()
    o6213.ReCalculate()
    o6269.ReCalculate()
    o6717.ReCalculate()
    o6773.ReCalculate()
    o6829.ReCalculate()
    o6885.ReCalculate()
    o6941.ReCalculate()
    o6997.ReCalculate()
    o7053.ReCalculate()
    o7109.ReCalculate()
    o7165.ReCalculate()
    o7221.ReCalculate()
    o7277.ReCalculate()
    o7333.ReCalculate()
    o7389.ReCalculate()
    o7445.ReCalculate()
    o7501.ReCalculate()
    o7557.ReCalculate()
    o7613.ReCalculate()
    o7669.ReCalculate()
    o7725.ReCalculate()
    o7781.ReCalculate()
    o7892.ReCalculate()
    o7948.ReCalculate()
    o8004.ReCalculate()
    o8060.ReCalculate()
    o8116.ReCalculate()
  end
end }
o6328 = { [nil] = {}, Start = function()
  o6328["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6328.Value == L0) then
    o6328["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o6379 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6379, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6379, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6379, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o6379, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6384.SetStateValue(L1)
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
o6384 = { [nil] = {}, Start = function()
  o6384["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6384.Value == L0) then
    o6384["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o6435 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6435, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6435, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6435, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o6435, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6440.SetStateValue(L1)
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
o6440 = { [nil] = {}, Start = function()
  o6440["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6440.Value == L0) then
    o6440["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o6491 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6491, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6491, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6491, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o6491, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6496.SetStateValue(L1)
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
o6496 = { [nil] = {}, Start = function()
  o6496["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6496.Value == L0) then
    o6496["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o6547 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6547, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6547, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6547, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o6547, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6552.SetStateValue(L1)
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
o6552 = { [nil] = {}, Start = function()
  o6552["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6552.Value == L0) then
    o6552["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o6603 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6603, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6603, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6603, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o6603, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6608.SetStateValue(L1)
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
o6608 = { [nil] = {}, Start = function()
  o6608["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6608.Value == L0) then
    o6608["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o6659 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6659, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6659, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6659, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o6659, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6664.SetStateValue(L1)
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
o6664 = { [nil] = {}, Start = function()
  o6664["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6664.Value == L0) then
    o6664["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o6715 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6715, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6715, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6715, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o6715, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6720.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6717.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6717 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6717.SetStateValue(o6717.GetCalculated())
end, StartCalculate = function()
  o6717["Value"] = o6717.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6717.Value == L0) then
    DelayedFunction(35.8974, o6717, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6717.Value == L0) then
    o6717["Value"] = L0
    CallFunction(o6715, "ProcesseStateChange")
  end
end }
o6720 = { [nil] = {}, Start = function()
  o6720["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6720.Value == L0) then
    o6720["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o6771 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6771, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6771, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6771, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o6771, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6776.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6773.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6773 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6773.SetStateValue(o6773.GetCalculated())
end, StartCalculate = function()
  o6773["Value"] = o6773.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6773.Value == L0) then
    DelayedFunction(35.8974, o6773, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6773.Value == L0) then
    o6773["Value"] = L0
    CallFunction(o6771, "ProcesseStateChange")
  end
end }
o6776 = { [nil] = {}, Start = function()
  o6776["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6776.Value == L0) then
    o6776["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o6827 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6827, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6827, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6827, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o6827, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6832.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6829.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6829 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6829.SetStateValue(o6829.GetCalculated())
end, StartCalculate = function()
  o6829["Value"] = o6829.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6829.Value == L0) then
    DelayedFunction(35.8974, o6829, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6829.Value == L0) then
    o6829["Value"] = L0
    CallFunction(o6827, "ProcesseStateChange")
  end
end }
o6832 = { [nil] = {}, Start = function()
  o6832["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6832.Value == L0) then
    o6832["Value"] = L0
    o5733.ReCalculate()
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
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6883, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o6883, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6888.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6885.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6885 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6885.SetStateValue(o6885.GetCalculated())
end, StartCalculate = function()
  o6885["Value"] = o6885.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6885.Value == L0) then
    DelayedFunction(80, o6885, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6885.Value == L0) then
    o6885["Value"] = L0
    CallFunction(o6883, "ProcesseStateChange")
  end
end }
o6888 = { [nil] = {}, Start = function()
  o6888["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6888.Value == L0) then
    o6888["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o6939 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6939, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6939, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6939, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o6939, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6944.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6941.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6941 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6941.SetStateValue(o6941.GetCalculated())
end, StartCalculate = function()
  o6941["Value"] = o6941.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6941.Value == L0) then
    DelayedFunction(80, o6941, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6941.Value == L0) then
    o6941["Value"] = L0
    CallFunction(o6939, "ProcesseStateChange")
  end
end }
o6944 = { [nil] = {}, Start = function()
  o6944["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6944.Value == L0) then
    o6944["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o6995 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6995, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6995, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6995, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o6995, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o7000.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6997.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6997 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6997.SetStateValue(o6997.GetCalculated())
end, StartCalculate = function()
  o6997["Value"] = o6997.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6997.Value == L0) then
    DelayedFunction(80, o6997, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6997.Value == L0) then
    o6997["Value"] = L0
    CallFunction(o6995, "ProcesseStateChange")
  end
end }
o7000 = { [nil] = {}, Start = function()
  o7000["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7000.Value == L0) then
    o7000["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o7051 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7051, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7051, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7051, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o7051, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o7056.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7053.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7053 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7053.SetStateValue(o7053.GetCalculated())
end, StartCalculate = function()
  o7053["Value"] = o7053.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7053.Value == L0) then
    DelayedFunction(100, o7053, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7053.Value == L0) then
    o7053["Value"] = L0
    CallFunction(o7051, "ProcesseStateChange")
  end
end }
o7056 = { [nil] = {}, Start = function()
  o7056["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7056.Value == L0) then
    o7056["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o7107 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7107, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7107, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7107, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o7107, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o7112.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7109.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7109 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7109.SetStateValue(o7109.GetCalculated())
end, StartCalculate = function()
  o7109["Value"] = o7109.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7109.Value == L0) then
    DelayedFunction(110, o7109, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7109.Value == L0) then
    o7109["Value"] = L0
    CallFunction(o7107, "ProcesseStateChange")
  end
end }
o7112 = { [nil] = {}, Start = function()
  o7112["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7112.Value == L0) then
    o7112["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o7163 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7163, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7163, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7163, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o7163, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o7168.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7165.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7165 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7165.SetStateValue(o7165.GetCalculated())
end, StartCalculate = function()
  o7165["Value"] = o7165.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7165.Value == L0) then
    DelayedFunction(120, o7165, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7165.Value == L0) then
    o7165["Value"] = L0
    CallFunction(o7163, "ProcesseStateChange")
  end
end }
o7168 = { [nil] = {}, Start = function()
  o7168["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7168.Value == L0) then
    o7168["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o7219 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7219, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7219, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7219, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o7219, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o7224.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7221.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7221 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7221.SetStateValue(o7221.GetCalculated())
end, StartCalculate = function()
  o7221["Value"] = o7221.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7221.Value == L0) then
    DelayedFunction(100, o7221, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7221.Value == L0) then
    o7221["Value"] = L0
    CallFunction(o7219, "ProcesseStateChange")
  end
end }
o7224 = { [nil] = {}, Start = function()
  o7224["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7224.Value == L0) then
    o7224["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o7275 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7275, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7275, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7275, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o7275, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o7280.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7277.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7277 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7277.SetStateValue(o7277.GetCalculated())
end, StartCalculate = function()
  o7277["Value"] = o7277.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7277.Value == L0) then
    DelayedFunction(110, o7277, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7277.Value == L0) then
    o7277["Value"] = L0
    CallFunction(o7275, "ProcesseStateChange")
  end
end }
o7280 = { [nil] = {}, Start = function()
  o7280["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7280.Value == L0) then
    o7280["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o7331 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7331, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7331, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7331, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o7331, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o7336.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7333.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7333 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7333.SetStateValue(o7333.GetCalculated())
end, StartCalculate = function()
  o7333["Value"] = o7333.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7333.Value == L0) then
    DelayedFunction(120, o7333, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7333.Value == L0) then
    o7333["Value"] = L0
    CallFunction(o7331, "ProcesseStateChange")
  end
end }
o7336 = { [nil] = {}, Start = function()
  o7336["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7336.Value == L0) then
    o7336["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o7387 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7387, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7387, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7387, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o7387, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o7392.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7389.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7389 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7389.SetStateValue(o7389.GetCalculated())
end, StartCalculate = function()
  o7389["Value"] = o7389.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7389.Value == L0) then
    DelayedFunction(160, o7389, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7389.Value == L0) then
    o7389["Value"] = L0
    CallFunction(o7387, "ProcesseStateChange")
  end
end }
o7392 = { [nil] = {}, Start = function()
  o7392["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7392.Value == L0) then
    o7392["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o7443 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7443, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7443, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7443, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o7443, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o7448.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7445.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7445 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7445.SetStateValue(o7445.GetCalculated())
end, StartCalculate = function()
  o7445["Value"] = o7445.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7445.Value == L0) then
    DelayedFunction(160, o7445, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7445.Value == L0) then
    o7445["Value"] = L0
    CallFunction(o7443, "ProcesseStateChange")
  end
end }
o7448 = { [nil] = {}, Start = function()
  o7448["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7448.Value == L0) then
    o7448["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o7499 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7499, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7499, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7499, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o7499, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o7504.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7501.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7501 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7501.SetStateValue(o7501.GetCalculated())
end, StartCalculate = function()
  o7501["Value"] = o7501.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7501.Value == L0) then
    DelayedFunction(160, o7501, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7501.Value == L0) then
    o7501["Value"] = L0
    CallFunction(o7499, "ProcesseStateChange")
  end
end }
o7504 = { [nil] = {}, Start = function()
  o7504["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7504.Value == L0) then
    o7504["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o7555 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7555, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7555, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7555, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o7555, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o7560.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7557.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7557 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7557.SetStateValue(o7557.GetCalculated())
end, StartCalculate = function()
  o7557["Value"] = o7557.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7557.Value == L0) then
    DelayedFunction(180, o7557, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7557.Value == L0) then
    o7557["Value"] = L0
    CallFunction(o7555, "ProcesseStateChange")
  end
end }
o7560 = { [nil] = {}, Start = function()
  o7560["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7560.Value == L0) then
    o7560["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o7611 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7611, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7611, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7611, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o7611, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o7616.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7613.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7613 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7613.SetStateValue(o7613.GetCalculated())
end, StartCalculate = function()
  o7613["Value"] = o7613.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7613.Value == L0) then
    DelayedFunction(180, o7613, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7613.Value == L0) then
    o7613["Value"] = L0
    CallFunction(o7611, "ProcesseStateChange")
  end
end }
o7616 = { [nil] = {}, Start = function()
  o7616["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7616.Value == L0) then
    o7616["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o7667 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7667, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7667, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7667, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o7667, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o7672.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7669.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7669 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7669.SetStateValue(o7669.GetCalculated())
end, StartCalculate = function()
  o7669["Value"] = o7669.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7669.Value == L0) then
    DelayedFunction(180, o7669, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7669.Value == L0) then
    o7669["Value"] = L0
    CallFunction(o7667, "ProcesseStateChange")
  end
end }
o7672 = { [nil] = {}, Start = function()
  o7672["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7672.Value == L0) then
    o7672["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o7723 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7723, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7723, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7723, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o7723, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o7728.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7725.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7725 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7725.SetStateValue(o7725.GetCalculated())
end, StartCalculate = function()
  o7725["Value"] = o7725.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7725.Value == L0) then
    DelayedFunction(180, o7725, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7725.Value == L0) then
    o7725["Value"] = L0
    CallFunction(o7723, "ProcesseStateChange")
  end
end }
o7728 = { [nil] = {}, Start = function()
  o7728["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7728.Value == L0) then
    o7728["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o7779 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7779, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7779, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7779, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o7779, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o7784.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7781.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7781 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7781.SetStateValue(o7781.GetCalculated())
end, StartCalculate = function()
  o7781["Value"] = o7781.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7781.Value == L0) then
    DelayedFunction(185, o7781, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7781.Value == L0) then
    o7781["Value"] = L0
    CallFunction(o7779, "ProcesseStateChange")
  end
end }
o7784 = { [nil] = {}, Start = function()
  o7784["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7784.Value == L0) then
    o7784["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o7835 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7835, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7835, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7835, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o7835, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o7839.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7836.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7836 = { [nil] = {}, GetCalculated = function()
  if not (o5767.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7836.SetStateValue(o7836.GetCalculated())
end, StartCalculate = function()
  o7836["Value"] = o7836.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7836.Value == L0) then
    DelayedFunction(210, o7836, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7836.Value == L0) then
    o7836["Value"] = L0
    CallFunction(o7835, "ProcesseStateChange")
  end
end }
o7839 = { [nil] = {}, Start = function()
  o7839["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7839.Value == L0) then
    o7839["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o7890 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7890, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7890, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7890, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o7890, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o7895.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7892.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7892 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7892.SetStateValue(o7892.GetCalculated())
end, StartCalculate = function()
  o7892["Value"] = o7892.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7892.Value == L0) then
    DelayedFunction(210, o7892, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7892.Value == L0) then
    o7892["Value"] = L0
    CallFunction(o7890, "ProcesseStateChange")
  end
end }
o7895 = { [nil] = {}, Start = function()
  o7895["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7895.Value == L0) then
    o7895["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o7946 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7946, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7946, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7946, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o7946, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o7951.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7948.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7948 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7948.SetStateValue(o7948.GetCalculated())
end, StartCalculate = function()
  o7948["Value"] = o7948.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7948.Value == L0) then
    DelayedFunction(212.86556, o7948, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7948.Value == L0) then
    o7948["Value"] = L0
    CallFunction(o7946, "ProcesseStateChange")
  end
end }
o7951 = { [nil] = {}, Start = function()
  o7951["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7951.Value == L0) then
    o7951["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o8002 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8002, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8002, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o8002, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o8002, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o8007.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o8004.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o8004 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8004.SetStateValue(o8004.GetCalculated())
end, StartCalculate = function()
  o8004["Value"] = o8004.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8004.Value == L0) then
    DelayedFunction(210.748657, o8004, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o8004.Value == L0) then
    o8004["Value"] = L0
    CallFunction(o8002, "ProcesseStateChange")
  end
end }
o8007 = { [nil] = {}, Start = function()
  o8007["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o8007.Value == L0) then
    o8007["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o8058 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8058, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8058, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o8058, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o8058, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o8063.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o8060.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o8060 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8060.SetStateValue(o8060.GetCalculated())
end, StartCalculate = function()
  o8060["Value"] = o8060.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8060.Value == L0) then
    DelayedFunction(213.157457, o8060, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o8060.Value == L0) then
    o8060["Value"] = L0
    CallFunction(o8058, "ProcesseStateChange")
  end
end }
o8063 = { [nil] = {}, Start = function()
  o8063["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o8063.Value == L0) then
    o8063["Value"] = L0
    o5733.ReCalculate()
  end
end }
S_o8114 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8114, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8114, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o8114, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o8114, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o8119.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o8116.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o8116 = { [nil] = {}, GetCalculated = function()
  if not (o6327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8116.SetStateValue(o8116.GetCalculated())
end, StartCalculate = function()
  o8116["Value"] = o8116.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8116.Value == L0) then
    DelayedFunction(212.1575, o8116, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o8116.Value == L0) then
    o8116["Value"] = L0
    CallFunction(o8114, "ProcesseStateChange")
  end
end }
o8119 = { [nil] = {}, Start = function()
  o8119["Value"] = False
  o5733.StartCalculate()
end, SetStateValue = function(L0)
  if not (o8119.Value == L0) then
    o8119["Value"] = L0
    o5733.ReCalculate()
  end
end }
o8170 = { [nil] = {}, GetCalculated = function()
  if not (o5735.Value ~= True) then
    if not (True ~= True) then
      if not (True ~= True) then
        if not (True ~= True) then
          if not (True ~= True) then
            if not (True ~= True) then
              if not (True ~= True) then
                if not (True ~= True) then
                  if not (True ~= True) then
                    if not (True ~= True) then
                      if not (True ~= True) then
                        if not (True ~= True) then
                          if not (True ~= True) then
                            if not (True ~= True) then
                              if not (True ~= True) then
                                if not (True ~= True) then
                                  if not (True ~= True) then
                                    if not (True ~= True) then
                                      if not (True ~= True) then
                                        if not (True ~= True) then
                                          if not (True ~= True) then
                                            if not (True ~= True) then
                                              if not (True ~= True) then
                                                if not (True ~= True) then
                                                  if not (True ~= True) then
                                                    if not (True ~= True) then
                                                      if not (True ~= True) then
                                                        if not (True ~= True) then
                                                          if not (True ~= True) then
                                                            if not (True ~= True) then
                                                              if not (True ~= True) then
                                                                if not (True ~= True) then
                                                                  if not (True ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
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
end, ReCalculate = function()
  o8170.SetStateValue(o8170.GetCalculated())
end, StartCalculate = function()
  o8170["Value"] = o8170.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o8170.Value == L0) then
    o8170["Value"] = L0
    o2.ReCalculate()
  end
end }
o8194 = { [nil] = {}, GetCalculated = function()
  if not (o5759.Value == True) then
    if not (False == True) then
      if not (False == True) then
        if not (False == True) then
          if not (False == True) then
            if not (False == True) then
              if not (False == True) then
                if not (False == True) then
                  if not (False == True) then
                    if not (False == True) then
                      if not (False == True) then
                        if not (False == True) then
                          if not (False == True) then
                            if not (False == True) then
                              if not (False == True) then
                                if not (False == True) then
                                  if not (False == True) then
                                    if not (False == True) then
                                      if not (False == True) then
                                        if not (False == True) then
                                          if not (False == True) then
                                            if not (False == True) then
                                              if not (False == True) then
                                                if not (False == True) then
                                                  if not (False == True) then
                                                    if not (False == True) then
                                                      if not (False == True) then
                                                        if not (False == True) then
                                                          if not (False == True) then
                                                            if not (False == True) then
                                                              if not (False == True) then
                                                                if not (False == True) then
                                                                  if not (False == True) then
                                                                    if not (False == True) then
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
end, ReCalculate = function()
  o8194.SetStateValue(o8194.GetCalculated())
end, StartCalculate = function()
  o8194["Value"] = o8194.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o8194.Value == L0) then
    o8194["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o8198 = { [nil] = {}, Start = function(L0)

end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 195)
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
  o1780 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf-kn_1", S_o1780)
  o1826 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf-kn_2", S_o1826)
  o1872 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf-kn_3", S_o1872)
  o1918 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnode_des", S_o1918)
  o1965 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern2_1", S_o1965)
  o2011 = BindEasy(Node_Find("/Scenario_Static/Object"), "Atl_Dock", S_o2011)
  o2057 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_1", S_o2057)
  o2103 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_2", S_o2103)
  o2149 = BindEasy(Node_Find("/Scenario_Static/Object"), "Elt_Dock", S_o2149)
  o2195 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_1", S_o2195)
  o2241 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3b_1", S_o2241)
  o2287 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r4_1", S_o2287)
  o2333 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r4_2", S_o2333)
  o2379 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r4_3", S_o2379)
  o2425 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r1_1", S_o2425)
  o2471 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk3_1", S_o2471)
  o2517 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_1", S_o2517)
  o2563 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_2", S_o2563)
  o2609 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_3", S_o2609)
  o2655 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_4", S_o2655)
  o2701 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_5", S_o2701)
  o2747 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_6", S_o2747)
  o2793 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraft1_1", S_o2793)
  o2839 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraft22_1", S_o2839)
  o2885 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_1", S_o2885)
  o2931 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_3", S_o2931)
  o2977 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schorn2_1", S_o2977)
  o3023 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schorn2_2", S_o3023)
  o3069 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gang1_1", S_o3069)
  o3115 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gang1_2", S_o3115)
  o3161 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrs2_1", S_o3161)
  o3207 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrs2_2", S_o3207)
  o3253 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gang2_1", S_o3253)
  o3299 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_1", S_o3299)
  o3345 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_2", S_o3345)
  o3391 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_3", S_o3391)
  o3437 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_4", S_o3437)
  o3483 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_5", S_o3483)
  o3529 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_6", S_o3529)
  o3575 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_1", S_o3575)
  o3621 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big01_1", S_o3621)
  o3667 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb4a_1_1", S_o3667)
  o3713 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker2_1", S_o3713)
  o3759 = BindEasy(Node_Find("/Scenario_Static/Object"), "delphin_1", S_o3759)
  o3805 = BindEasy(Node_Find("/Scenario_Static/Object"), "delphin_big_1", S_o3805)
  o3851 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus3_1", S_o3851)
  o3897 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus1_1", S_o3897)
  o3943 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_1/Turm1", S_o3943)
  o3989 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_2/Turm1", S_o3989)
  o4035 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_3/Turm1", S_o4035)
  o4081 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_4/Turm1", S_o4081)
  o4127 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_5/Turm1", S_o4127)
  o4173 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_6/Turm1", S_o4173)
  o4219 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_7/Turm1", S_o4219)
  o4265 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_8/Turm1", S_o4265)
  o4311 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_9/Turm1", S_o4311)
  o4357 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_10/Turm1", S_o4357)
  o4403 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_11/Turm1", S_o4403)
  o4449 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_12/Turm1", S_o4449)
  o4495 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_13/Turm1", S_o4495)
  o4541 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_14/Turm1", S_o4541)
  o4587 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_1", S_o4587)
  o4633 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_1", S_o4633)
  o4679 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_1", S_o4679)
  o4725 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_1", S_o4725)
  o4771 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_04_1", S_o4771)
  o4817 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_05_1", S_o4817)
  o4863 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_08_1", S_o4863)
  o4909 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_09_1", S_o4909)
  o4955 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_1", S_o4955)
  o5001 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_1", S_o5001)
  o5047 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_04_1", S_o5047)
  o5093 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_06_1", S_o5093)
  o5139 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_05_1", S_o5139)
  o5185 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_1", S_o5185)
  o5231 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_1", S_o5231)
  o5277 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_1", S_o5277)
  o5323 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_1", S_o5323)
  o5369 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_02_1", S_o5369)
  o5415 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_1", S_o5415)
  o5461 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_02_1", S_o5461)
  o5507 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_2", S_o5507)
  o5553 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_2", S_o5553)
  o5599 = BindEasy(Node_Find("/Scenario_Static/Object"), "org_fungus_l_1", S_o5599)
  o5645 = BindEasy(Node_Find("/Scenario_Static/Object"), "org_fungus_m_1", S_o5645)
  o5719 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o5719)
  o5763 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1_1", S_o5763)
  o5767.Start()
  o5768.Start()
  o5819 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1_2", S_o5819)
  o5824.Start()
  o5875 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1_3", S_o5875)
  o5880.Start()
  o5931 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1_4", S_o5931)
  o5936.Start()
  o5987 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1_5", S_o5987)
  o5992.Start()
  o6043 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1_6", S_o6043)
  o6048.Start()
  o6099 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1_7", S_o6099)
  o6104.Start()
  o6155 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1_8", S_o6155)
  o6160.Start()
  o6211 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1_9", S_o6211)
  o6216.Start()
  o6267 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1_10", S_o6267)
  o6272.Start()
  o6323 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_1", S_o6323)
  o6327.Start()
  o6328.Start()
  o6379 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_2", S_o6379)
  o6384.Start()
  o6435 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_3", S_o6435)
  o6440.Start()
  o6491 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_4", S_o6491)
  o6496.Start()
  o6547 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_5", S_o6547)
  o6552.Start()
  o6603 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_1", S_o6603)
  o6608.Start()
  o6659 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_2", S_o6659)
  o6664.Start()
  o6715 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_3", S_o6715)
  o6720.Start()
  o6771 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_4", S_o6771)
  o6776.Start()
  o6827 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_5", S_o6827)
  o6832.Start()
  o6883 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_bomber_1", S_o6883)
  o6888.Start()
  o6939 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_plasma_1", S_o6939)
  o6944.Start()
  o6995 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_plasma_2", S_o6995)
  o7000.Start()
  o7051 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_6", S_o7051)
  o7056.Start()
  o7107 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_7", S_o7107)
  o7112.Start()
  o7163 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_8", S_o7163)
  o7168.Start()
  o7219 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_6", S_o7219)
  o7224.Start()
  o7275 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_7", S_o7275)
  o7280.Start()
  o7331 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_8", S_o7331)
  o7336.Start()
  o7387 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_bomber_1", S_o7387)
  o7392.Start()
  o7443 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_plasma_3", S_o7443)
  o7448.Start()
  o7499 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_plasma_4", S_o7499)
  o7504.Start()
  o7555 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_9", S_o7555)
  o7560.Start()
  o7611 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_10", S_o7611)
  o7616.Start()
  o7667 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_9", S_o7667)
  o7672.Start()
  o7723 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_10", S_o7723)
  o7728.Start()
  o7779 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_plasma_5", S_o7779)
  o7784.Start()
  o7835 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_fregatte_1", S_o7835)
  o7839.Start()
  o7890 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_plasma_6", S_o7890)
  o7895.Start()
  o7946 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_plasma_7", S_o7946)
  o7951.Start()
  o8002 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_plasma_8", S_o8002)
  o8007.Start()
  o8058 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_plasma_9", S_o8058)
  o8063.Start()
  o8114 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_plasma_10", S_o8114)
  o8119.Start()
  o8198 = BindEasy(Node_Find("/"), "Camera", S_o8198)
  Game_LoadProgress_Leave(Node_Find("/"))
end
