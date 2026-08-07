-- dekompiliert aus 1h1.sco
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
  Terrain_LoadTerrain(node1, "map/1H1/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/1H1/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/1H1/Lmsh/", "map/1H1/Ltex/")
  Game_SetTerrainDepth(node0, 3000)
  Game_SetDecompressionHeight(node0, 320)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.113725, 0.113725, 0.082353)
  Game_SetParallelLightT(node0, 0.227451, 0.227451, 0.164706)
  Game_SetParallelLightB(node0, 0.113725, 0.113725, 0.082353)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_1h1.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_1h1.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_mystery.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_hektik.sam", 1)
  Game_SetNPCHitFactor(node0, 1)
  Game_SetEnvironmentCubeMap(node0, "map/1H1/CubeMap/envcubemap.dds")
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
  node8 = Node_CreateNode("nod_generic", "ter_bridgering_l_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(2602.996, 2365.802, 248.5126), MAT_Vector3(123.6284, -1.571587, 1.044782))
  Node_ParseIniFile(node8, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "ter_bridgering_l_2")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(2634.881, 2408.315, 246.8111), MAT_Vector3(-47.16572, -0.954377, -1.242786))
  Node_ParseIniFile(node9, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(2540.479, 2292.842, 254.4666), MAT_Vector3(5.243403, -5.025242, 2.644562))
  Node_ParseIniFile(node10, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "ter_megalith_m_02_1")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(2537.956, 2369.559, 250.059), MAT_Vector3(-6.338964, 4.147085, 5.392286))
  Node_ParseIniFile(node11, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "ter_megalith_l_01_1")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(2651.56, 2577.571, 283.36), MAT_Vector3(-46.07218, 3.825977, 66.82443))
  Node_ParseIniFile(node12, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "ter_bridgering_l_3")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(3047.61, 1874.81, 226.6073), MAT_Vector3(-33.89211, 0.54413, -29.7143))
  Node_ParseIniFile(node13, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "ter_megalith_l_03_1")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(2252.023, 2462.591, 237.3874), MAT_Vector3(-72.86535, 24.89646, 15.14592))
  Node_ParseIniFile(node14, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "ter_rock_l_01_1")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(2219.908, 2281.007, 246.215), MAT_Vector3(19.90078, 14.84974, -43.91588))
  Node_ParseIniFile(node15, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "ter_edgering_2")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(2364.868, 2302.105, 248.7383), MAT_Vector3(87.97502, 0, 0))
  Node_ParseIniFile(node16, "osd/ter/ter_edgering.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "ter_edgering_3")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(2364.044, 2224.658, 249.5794), MAT_Vector3(-88.68089, 0, 0))
  Node_ParseIniFile(node17, "osd/ter/ter_edgering.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "ter_bridgering_m_1")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(2384.555, 2257.891, 246.215), MAT_Vector3(-90.71646, 0, 0))
  Node_ParseIniFile(node18, "osd/ter/ter_bridgering_m.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "ter_bridgering_l_4")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(1979.174882, 2423.34297, 256.3943), MAT_Vector3(-107.4841, -0.954377, -1.242786))
  Node_ParseIniFile(node19, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "ter_bridgering_l_5")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(2032.953349, 2416.07903, 290.4597), MAT_Vector3(88.76266, -0.954377, -1.242786))
  Node_ParseIniFile(node20, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "ter_bridgering_l_6")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(2080.890325, 2401.185485, 253.095), MAT_Vector3(79.50999, -0.954377, -1.242786))
  Node_ParseIniFile(node21, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "ter_bridgering_m_2")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(3013.548, 2557.543, 251.3436), MAT_Vector3(34.33259, 0, 0))
  Node_ParseIniFile(node22, "osd/ter/ter_bridgering_m.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "ter_rock_l_01_2")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(2897.626, 2211.216, 282.6044), MAT_Vector3(-22.94077, -28.48077, 21.27071))
  Node_ParseIniFile(node23, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "ter_megalith_s_02_1")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(2962.668, 2369.175, 292.9181), MAT_Vector3(52.57895, 5.322598, 0.559837))
  Node_ParseIniFile(node24, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "ter_edgering_4")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(3010.098, 2304.182, 245.5714), MAT_Vector3(131.0679, 0.018051, 0.168558))
  Node_ParseIniFile(node25, "osd/ter/ter_edgering.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "ter_megalith_m_02_2")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(2928.74, 2262.456, 292.6135), MAT_Vector3(44.01987, -3.282519, 1.414923))
  Node_ParseIniFile(node26, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "ter_megalith_l_01_2")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(2919.055, 2362.192, 285.6057), MAT_Vector3(-22.07868, -12.60054, -7.715563))
  Node_ParseIniFile(node27, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "ter_megalith_l_01_3")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(2605.302, 1374.157, 243.9378), MAT_Vector3(-5.036179, 0.746966, 5.05077))
  Node_ParseIniFile(node28, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "ter_megalith_s_01_2")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(2612.2, 1116.121, 247.2102), MAT_Vector3(-16.79439, -5.038544, 17.00235))
  Node_ParseIniFile(node29, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "ter_megalith_s_02_2")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(2677.444, 1065.705, 248.6007), MAT_Vector3(-26.63866, 65.60776, -57.67309))
  Node_ParseIniFile(node30, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "ter_megalith_s_03_3")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(2641.601, 914.3753, 256.0522), MAT_Vector3(-44.42215, 0, 0))
  Node_ParseIniFile(node31, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "ter_rock_m_01_3")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(2713.102, 889.1275, 235.7936), MAT_Vector3(10.1902, 4.505966, -22.46218))
  Node_ParseIniFile(node32, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "ter_rock_s_01_1")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(2635.811, 1162.572, 239.5191), MAT_Vector3(-9.063638, -2.290334, 9.133045))
  Node_ParseIniFile(node33, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "ter_megalith_l_03_3")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(2968.637, 881.0829, 299.5905), MAT_Vector3(82.88404, 55.93856, -86.19006))
  Node_ParseIniFile(node34, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "ter_megalith_l_02_1")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(2838.013, 604.0008, 287.0934), MAT_Vector3(-98.20595, -44.435, -75.49831))
  Node_ParseIniFile(node35, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "ter_megalith_l_02_2")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(3475.572, 535.4331, 287.0934), MAT_Vector3(-52.79359, -44.435, -75.49831))
  Node_ParseIniFile(node36, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "ter_megalith_l_01_5")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(3256.516, 800.1647, 302.6777), MAT_Vector3(-21.78387, 87.03761, -61.74217))
  Node_ParseIniFile(node37, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "ter_bridgering_l_8")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(3136.767, 833.0972, 233.2598), MAT_Vector3(-10.24403, 0, 0))
  Node_ParseIniFile(node38, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "ter_bridgering_l_9")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(3263.918, 682.5677, 245.5483), MAT_Vector3(-88.23557, 0, 0))
  Node_ParseIniFile(node39, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "ter_bridgering_l_10")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(3297.6, 703.0177, 245.5483), MAT_Vector3(88.73566, 0, 0))
  Node_ParseIniFile(node40, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "ter_bridgering_l_11")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(3339.198, 703.1435, 245.5483), MAT_Vector3(-90.52133, 0, 0))
  Node_ParseIniFile(node41, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "ter_megalith_l_01_6")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(3353.985, 854.8653, 321.6391), MAT_Vector3(20.59206, 86.11127, 11.63574))
  Node_ParseIniFile(node42, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "ter_megalith_l_01_4")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(3692.947, 811.1098, 92.961026), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node43, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "ter_megalith_l_01_7")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(3872.876, 950.8606, 103.000305), MAT_Vector3(156.1652, -14.02474, 14.20138))
  Node_ParseIniFile(node44, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "ter_megalith_l_01_8")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(3775.249, 1240.512, 61.72551), MAT_Vector3(44.36723, -8.774114, 2.73821))
  Node_ParseIniFile(node45, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "ter_megalith_l_02_3")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(3784.33, 1161.125, 98.387853), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node46, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "ter_megalith_l_02_4")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(3579.149, 899.0448, 103.63135), MAT_Vector3(85.91982, 0, 0))
  Node_ParseIniFile(node47, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "ter_megalith_l_03_4")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(3648.118, 1049.051, 96.676382), MAT_Vector3(-53.37354, -1.390048, 0.614366))
  Node_ParseIniFile(node48, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "ter_megalith_l_03_5")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(3875.559, 1102.764, 95.378342), MAT_Vector3(77.44022, -1.390048, 0.614366))
  Node_ParseIniFile(node49, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "ter_megalith_s_001_1")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(1618.278, 987.3958, 188.1598), MAT_Vector3(-98.41899, 0, 0))
  Node_ParseIniFile(node50, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "ter_megalith_s_001_2")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(1668.287, 986.821, 188.6654), MAT_Vector3(-3.596389, 0, 0))
  Node_ParseIniFile(node51, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "ter_megalith_s_001_3")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(1624.026, 906.3462, 180.5763), MAT_Vector3(175.8389, 0, 0))
  Node_ParseIniFile(node52, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "ter_megalith_s_001_4")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(1674.035, 920.7167, 189.171), MAT_Vector3(-2.508209, 0, 0))
  Node_ParseIniFile(node53, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "ter_megalith_s_002_1")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(1642.283, 998.818, 189.2965), MAT_Vector3(29.44488, 0, 0))
  Node_ParseIniFile(node54, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "ter_megalith_s_002_2")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(1601.471, 943.6353, 185.7575), MAT_Vector3(-27.59545, 0, 0))
  Node_ParseIniFile(node55, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "ter_megalith_s_002_3")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(1686.544, 967.2029, 188.7909), MAT_Vector3(147.822, 0, 0))
  Node_ParseIniFile(node56, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "ter_megalith_s_003_1")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(1604.744, 967.9887, 187.2742), MAT_Vector3(-162.6224, 0, 0))
  Node_ParseIniFile(node57, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "ter_megalith_s_003_2")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(1608.768, 922.5779, 188.7909), MAT_Vector3(-123.013, 0, 0))
  Node_ParseIniFile(node58, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "ter_megalith_s_003_3")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(1689.243, 943.8463, 189.2965), MAT_Vector3(-16.78253, 0, 0))
  Node_ParseIniFile(node59, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "ter_megalith_s_003_4")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(1652.455, 907.6327, 188.2853), MAT_Vector3(-4.475914, 0, 0))
  Node_ParseIniFile(node60, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "ter_rock_s_001_1")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(1643.979, 950.233, 189.7707), MAT_Vector3(-45.50423, 0, 0))
  Node_ParseIniFile(node61, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "ter_ringstone_m_2")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(2069.689, 475.1553, 256.6004), MAT_Vector3(86.14208, 0, 0))
  Node_ParseIniFile(node62, "osd/ter/ter_ringstone_m.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "ter_bridgering_m_3")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(2045.144, 477.1167, 323.1018), MAT_Vector3(-91.35455, 0, 0))
  Node_ParseIniFile(node63, "osd/ter/ter_bridgering_m.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "ter_rock_m_01_1")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(2169.55, 604.5734, 288.6668), MAT_Vector3(-62.79325, -27.66564, 1.487676))
  Node_ParseIniFile(node64, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "ter_megalith_l_01_9")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(2153.981, 571.5521, 218.3083), MAT_Vector3(6.126008, 1.40879, 10.39005))
  Node_ParseIniFile(node65, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "ter_megalith_m_01_1")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(2070.904, 507.9026, 330.9564), MAT_Vector3(89.84907, 90, -91.97558))
  Node_ParseIniFile(node66, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "ter_megalith_m_01_2")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(2093.504, 447.5606, 330.9564), MAT_Vector3(89.97464, 90, 89.23954))
  Node_ParseIniFile(node67, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "ter_megalith_l_03_2")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(336.3097, 3491.078, 185.9457), MAT_Vector3(75.44707, 91, -13.35622))
  Node_ParseIniFile(node68, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "ter_megalith_m_02_3")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(943.184, 1618.837, 141.9038), MAT_Vector3(111.2951, -4.155589, -2.752625))
  Node_ParseIniFile(node69, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "ter_megalith_m_01_3")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(1007.98, 1623.87, 138.6007), MAT_Vector3(164.2191, -0.646966, -1.551032))
  Node_ParseIniFile(node70, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "ter_megalith_l_01_10")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(984.5114, 1581.635, 134.4909), MAT_Vector3(-148.2178, -2.978011, 0.622575))
  Node_ParseIniFile(node71, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "ter_megalith_s_03_2")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(899.9793, 1662.488, 143.907), MAT_Vector3(-165.9879, -0.274709, -3.335484))
  Node_ParseIniFile(node72, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(854.5754, 1633.132, 146.2773), MAT_Vector3(171.1653, -4.584644, 0.132835))
  Node_ParseIniFile(node73, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "ter_megalith_l_03_6")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(815.012, 1567.945, 134.3193), MAT_Vector3(-12.62302, -1.616542, 1.581877))
  Node_ParseIniFile(node74, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "ter_rock_s_01_2")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(201.9903, 3250.331, 134.3522), MAT_Vector3(51.91493, 9.403512, 12.32218))
  Node_ParseIniFile(node75, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "ter_megalith_s_01_3")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(205.259, 3366.547, 139.4827), MAT_Vector3(154.9497, 5.831451, -12.27651))
  Node_ParseIniFile(node76, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "ter_megalith_l_01_11")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(91.29025, 3067.553, 125.0503), MAT_Vector3(-136.7577, -0.170275, 11.37816))
  Node_ParseIniFile(node77, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "ter_megalith_m_01_4")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(171.994, 3170.675, 131.8447), MAT_Vector3(-2.567983, 3.342478, -27.22035))
  Node_ParseIniFile(node78, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "gen_clunker1_1")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(3118.041746, 2304.687255, 246.797998), MAT_Vector3(48.639451, -2.237286, -3.443576))
  Node_ParseIniFile(node79, "osd/gen/gen_clunker1.osd")
  Body_SetFriendOrFoeID(node79, 1)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "gen_chimney2_1")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(3026.851, 2332.489, 245.3334), MAT_Vector3(-50.1929, -3.885219, 4.564976))
  Node_ParseIniFile(node80, "osd/gen/gen_chimney2.osd")
  Body_SetFriendOrFoeID(node80, 1)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_generic", "gen_tank_sml_1")
  Node_AddSon(node7, node81)
  Body_SetCS(node81, MAT_Vector3(3161.828, 2237.606, 241.5706), MAT_Vector3(14.14588, -4.69359, -15.14014))
  Node_ParseIniFile(node81, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node81, 1)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_generic", "gen_rohr_small01_1")
  Node_AddSon(node7, node82)
  Body_SetCS(node82, MAT_Vector3(3088.715317, 2236.984346, 248.112965), MAT_Vector3(-31.861715, 6.213419, -5.151234))
  Node_ParseIniFile(node82, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node82, 1)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_generic", "gen_metalblock1_1")
  Node_AddSon(node7, node83)
  Body_SetCS(node83, MAT_Vector3(2964.812417, 2253.634013, 222.135066), MAT_Vector3(-163.325164, -4.031063, 23.857404))
  Node_ParseIniFile(node83, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node83, 1)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_generic", "gen_quay_1")
  Node_AddSon(node7, node84)
  Body_SetCS(node84, MAT_Vector3(3009.335412, 2174.517547, 254.873329), MAT_Vector3(26.05849, 2.782759, 20.473306))
  Node_ParseIniFile(node84, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node84, 1)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_generic", "gen_metalblock3_1")
  Node_AddSon(node7, node85)
  Body_SetCS(node85, MAT_Vector3(2528.203316, 1048.422801, 258.219177), MAT_Vector3(-76.225059, -18.809756, 3.965982))
  Node_ParseIniFile(node85, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node85, 1)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "gen_metalblock3_2")
  Node_AddSon(node7, node86)
  Body_SetCS(node86, MAT_Vector3(2715.524703, 912.021791, 251.399237), MAT_Vector3(-62.387938, -11.310503, -13.089248))
  Node_ParseIniFile(node86, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node86, 1)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "gen_tank_big_1")
  Node_AddSon(node7, node87)
  Body_SetCS(node87, MAT_Vector3(2635.219802, 1196.3569, 237.577619), MAT_Vector3(-60.82867, 0.5596, -6.508178))
  Node_ParseIniFile(node87, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node87, 1)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "gen_tank_sml_2")
  Node_AddSon(node7, node88)
  Body_SetCS(node88, MAT_Vector3(2607.202862, 1135.736815, 242.959022), MAT_Vector3(77.182707, 13.946248, 22.792448))
  Node_ParseIniFile(node88, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node88, 1)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "gen_rohr_big03_1")
  Node_AddSon(node7, node89)
  Body_SetCS(node89, MAT_Vector3(2661.207758, 1248.310529, 269.845919), MAT_Vector3(-86.859359, 13.462192, 2.815263))
  Node_ParseIniFile(node89, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node89, 1)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_generic", "gen_rohr_small03_1")
  Node_AddSon(node7, node90)
  Body_SetCS(node90, MAT_Vector3(2688.606197, 923.761288, 311.322744), MAT_Vector3(71.324106, 6.034076, 5.979976))
  Node_ParseIniFile(node90, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node90, 1)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_generic", "gen_rohr_small03_2")
  Node_AddSon(node7, node91)
  Body_SetCS(node91, MAT_Vector3(2688.606, 923.7613, 258.309225), MAT_Vector3(75.840805, 7.964719, 6.378447))
  Node_ParseIniFile(node91, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node91, 1)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_generic", "gen_metalblock1_2")
  Node_AddSon(node7, node92)
  Body_SetCS(node92, MAT_Vector3(2590.985313, 1191.270716, 235.649416), MAT_Vector3(-163.3252, -4.031063, 23.8574))
  Node_ParseIniFile(node92, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node92, 1)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "gen_metalblock1_3")
  Node_AddSon(node7, node93)
  Body_SetCS(node93, MAT_Vector3(2755.807559, 1302.59571, 246.386306), MAT_Vector3(1.651178, -4.755741, 20.128496))
  Node_ParseIniFile(node93, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node93, 1)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_generic", "gen_metalblock2_1")
  Node_AddSon(node7, node94)
  Body_SetCS(node94, MAT_Vector3(2650.817544, 966.761169, 271.421184), MAT_Vector3(-108.905353, 2.859285, 3.583146))
  Node_ParseIniFile(node94, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node94, 1)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_generic", "gen_metalblock2_2")
  Node_AddSon(node7, node95)
  Body_SetCS(node95, MAT_Vector3(3108.097729, 1052.588876, 256.452442), MAT_Vector3(134.512416, -4.494678, -4.675579))
  Node_ParseIniFile(node95, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node95, 1)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_generic", "gen_metalblock1_4")
  Node_AddSon(node7, node96)
  Body_SetCS(node96, MAT_Vector3(3210.59596, 1316.271503, 244.433855), MAT_Vector3(55.887518, -11.703125, 13.180586))
  Node_ParseIniFile(node96, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node96, 1)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_generic", "gen_rohr_small03_3")
  Node_AddSon(node7, node97)
  Body_SetCS(node97, MAT_Vector3(3173.343787, 1193.855101, 305.74458), MAT_Vector3(141.345057, 1.216064, 4.871138))
  Node_ParseIniFile(node97, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node97, 1)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_generic", "gen_rohr_big03_2")
  Node_AddSon(node7, node98)
  Body_SetCS(node98, MAT_Vector3(3154.733404, 1167.544794, 268.312266), MAT_Vector3(-41.534859, -1.309808, 3))
  Node_ParseIniFile(node98, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node98, 1)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_generic", "gen_elfnote_1")
  Node_AddSon(node7, node99)
  Body_SetCS(node99, MAT_Vector3(810.0238, 2663.729, 125.2511), MAT_Vector3(-17.59145, -2.271098, -4.761775))
  Node_ParseIniFile(node99, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node99, 1)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_generic", "elf_rohr_small01_1")
  Node_AddSon(node7, node100)
  Body_SetCS(node100, MAT_Vector3(818.5082, 2610.041, 123.0157), MAT_Vector3(-174.1365, -5.820811, -1.642547))
  Node_ParseIniFile(node100, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node100, 1)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_generic", "gen_elfnote_2")
  Node_AddSon(node7, node101)
  Body_SetCS(node101, MAT_Vector3(1437.935, 1375.956, 154.2231), MAT_Vector3(-95.57631, -1.596903, -8.95642))
  Node_ParseIniFile(node101, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node101, 1)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_generic", "elf_rohr_small01_2")
  Node_AddSon(node7, node102)
  Body_SetCS(node102, MAT_Vector3(1400.747, 1421.011, 142.0017), MAT_Vector3(38.38553, 0, 0))
  Node_ParseIniFile(node102, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node102, 1)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_generic", "elf_rohr_small01_3")
  Node_AddSon(node7, node103)
  Body_SetCS(node103, MAT_Vector3(1460.828, 1315.087, 138.2603), MAT_Vector3(-164.1283, -4.799565, 0.247849))
  Node_ParseIniFile(node103, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node103, 1)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_generic", "elf_rohr_small01_4")
  Node_AddSon(node7, node104)
  Body_SetCS(node104, MAT_Vector3(1490.906, 1344.764, 140.8505), MAT_Vector3(-117.4585, -4.799565, 0.247849))
  Node_ParseIniFile(node104, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node104, 1)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_generic", "elf_rohr_small01_5")
  Node_AddSon(node7, node105)
  Body_SetCS(node105, MAT_Vector3(846.9757, 2704.778, 123.8321), MAT_Vector3(-38.51773, -4.799565, 0.247849))
  Node_ParseIniFile(node105, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node105, 1)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_generic", "elf_rohr_small01_6")
  Node_AddSon(node7, node106)
  Body_SetCS(node106, MAT_Vector3(1338.492, 3293.168, 202.6032), MAT_Vector3(124.7551, -10.67048, -0.119693))
  Node_ParseIniFile(node106, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node106, 1)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_generic", "elf_rohr_small01_7")
  Node_AddSon(node7, node107)
  Body_SetCS(node107, MAT_Vector3(1376.233, 3378.045, 192.1862), MAT_Vector3(8.998308, -22.22542, -1.022581))
  Node_ParseIniFile(node107, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node107, 1)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_generic", "gen_elfnote_3")
  Node_AddSon(node7, node108)
  Body_SetCS(node108, MAT_Vector3(1384.575, 3323.459, 210.82), MAT_Vector3(-13.14288, 0.646369, 1.685273))
  Node_ParseIniFile(node108, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node108, 1)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_generic", "tz_element01_raw_1")
  Node_AddSon(node7, node109)
  Body_SetCS(node109, MAT_Vector3(153.6752, 3389.417, 140), MAT_Vector3(-2.04856, -3.458319, 1.148912))
  Node_ParseIniFile(node109, "osd/tz/tz_element01_raw.osd")
  Body_SetFriendOrFoeID(node109, 1)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_generic", "tz_element03_raw_1")
  Node_AddSon(node7, node110)
  Body_SetCS(node110, MAT_Vector3(216.2351, 3418.175, 140), MAT_Vector3(-2.324949, -3.082099, 1.825255))
  Node_ParseIniFile(node110, "osd/tz/tz_element03_raw.osd")
  Body_SetFriendOrFoeID(node110, 1)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_generic", "tz_element05_raw_1")
  Node_AddSon(node7, node111)
  Body_SetCS(node111, MAT_Vector3(126.6849, 3206.877, 145), MAT_Vector3(88.019062, 0.734332, 4.037046))
  Node_ParseIniFile(node111, "osd/tz/tz_element05_raw.osd")
  Body_SetFriendOrFoeID(node111, 1)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_generic", "tz_element06_raw_1")
  Node_AddSon(node7, node112)
  Body_SetCS(node112, MAT_Vector3(212.014617, 3237.83621, 95.513239), MAT_Vector3(96.495755, 48.056181, -7.227342))
  Node_ParseIniFile(node112, "osd/tz/tz_element06_raw.osd")
  Body_SetFriendOrFoeID(node112, 1)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_generic", "tz_element04_raw1_1")
  Node_AddSon(node7, node113)
  Body_SetCS(node113, MAT_Vector3(320.784357, 3195.825494, 0.533486), MAT_Vector3(-87.661613, 4.538671, 4.820461))
  Node_ParseIniFile(node113, "osd/tz/tz_element04_raw1.osd")
  Body_SetFriendOrFoeID(node113, 1)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_generic", "tz_element04_raw2_1")
  Node_AddSon(node7, node114)
  Body_SetCS(node114, MAT_Vector3(287.680896, 3300.073567, 78.08443), MAT_Vector3(89.507114, 2.623551, 2.890306))
  Node_ParseIniFile(node114, "osd/tz/tz_element04_raw2.osd")
  Body_SetFriendOrFoeID(node114, 1)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_generic", "tz_element04_raw1_2")
  Node_AddSon(node7, node115)
  Body_SetCS(node115, MAT_Vector3(215.882951, 3457.840345, 30.095676), MAT_Vector3(-20.175288, 0.67315, -11.68443))
  Node_ParseIniFile(node115, "osd/tz/tz_element04_raw1.osd")
  Body_SetFriendOrFoeID(node115, 1)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_generic", "tz_element04_raw2_2")
  Node_AddSon(node7, node116)
  Body_SetCS(node116, MAT_Vector3(61.527974, 3369.27558, 133.942493), MAT_Vector3(-59.542244, 66.999756, 75.685072))
  Node_ParseIniFile(node116, "osd/tz/tz_element04_raw2.osd")
  Body_SetFriendOrFoeID(node116, 1)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_generic", "tz_geb_add_palace_big_1")
  Node_AddSon(node7, node117)
  Body_SetCS(node117, MAT_Vector3(190.98521, 3147.281523, 115.403003), MAT_Vector3(164.33029, 12.992619, -2.611336))
  Node_ParseIniFile(node117, "osd/tz/tz_geb_add_palace_big.osd")
  Body_SetFriendOrFoeID(node117, 1)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_generic", "gen_turret_socket_1")
  Node_AddSon(node7, node118)
  Body_SetCS(node118, MAT_Vector3(224.4037, 3060.687, 106.2836), MAT_Vector3(-9.311231, -12.33801, 3.902408))
  Node_ParseIniFile(node118, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node118, 1)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_generic", "gen_turret_socket_2")
  Node_AddSon(node7, node119)
  Body_SetCS(node119, MAT_Vector3(322.9286, 3124.591, 117.7054), MAT_Vector3(10.96442, 12.11527, -6.35957))
  Node_ParseIniFile(node119, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node119, 1)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_generic", "gen_turret_socket_3")
  Node_AddSon(node7, node120)
  Body_SetCS(node120, MAT_Vector3(335.9567, 3260.645, 132.4865), MAT_Vector3(-1.861469, -2.340754, 0.908932))
  Node_ParseIniFile(node120, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node120, 1)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_generic", "gen_turret_socket_4")
  Node_AddSon(node7, node121)
  Body_SetCS(node121, MAT_Vector3(191.8834, 3307.882, 134.5021), MAT_Vector3(3.240329, 3.888323, -1.71306))
  Node_ParseIniFile(node121, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node121, 1)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_generic", "gen_clunker1_2")
  Node_AddSon(node7, node122)
  Body_SetCS(node122, MAT_Vector3(998.422438, 3829.518272, 124.545925), MAT_Vector3(79.013972, 1.028851, 7.247809))
  Node_ParseIniFile(node122, "osd/gen/gen_clunker1.osd")
  Body_SetFriendOrFoeID(node122, 1)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_generic", "tz_element03_raw_2")
  Node_AddSon(node7, node123)
  Body_SetCS(node123, MAT_Vector3(838.854748, 3866.494206, 103.720529), MAT_Vector3(-105.661007, 5.160372, -19.885296))
  Node_ParseIniFile(node123, "osd/tz/tz_element03_raw.osd")
  Body_SetFriendOrFoeID(node123, 1)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_generic", "tz_element04_raw2_3")
  Node_AddSon(node7, node124)
  Body_SetCS(node124, MAT_Vector3(1049.668218, 3917.297731, 113.170493), MAT_Vector3(42.687488, -14.518963, -17.055266))
  Node_ParseIniFile(node124, "osd/tz/tz_element04_raw2.osd")
  Body_SetFriendOrFoeID(node124, 1)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_generic", "ter_rock_l_01_3")
  Node_AddSon(node7, node125)
  Body_SetCS(node125, MAT_Vector3(1652.74777, 1855.139112, 194.762254), MAT_Vector3(57.986903, -61.152863, 20.741443))
  Node_ParseIniFile(node125, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node125, 0)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_generic", "ter_rock_m_01_2")
  Node_AddSon(node7, node126)
  Body_SetCS(node126, MAT_Vector3(1314.385587, 2060.576276, 123.438811), MAT_Vector3(151.677926, 0, 0))
  Node_ParseIniFile(node126, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node126, 0)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, -1, 0)
  Body_SetCargoKey(node126, -1, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_generic", "ter_megalith_l_01_12")
  Node_AddSon(node7, node127)
  Body_SetCS(node127, MAT_Vector3(1446.357031, 1183.77658, 147.863271), MAT_Vector3(57.998516, -1.347149, -2.147126))
  Node_ParseIniFile(node127, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node127, 0)
  Body_SetNameKey(node127, -1)
  Body_SetCargoKey(node127, -1, 0)
  Body_SetCargoKey(node127, -1, 1)
  Body_SetCargoKey(node127, -1, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_generic", "ter_megalith_m_01_5")
  Node_AddSon(node7, node128)
  Body_SetCS(node128, MAT_Vector3(1496.848076, 1284.796955, 141.085919), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node128, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node128, 0)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, -1, 0)
  Body_SetCargoKey(node128, -1, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_generic", "ter_megalith_s_03_4")
  Node_AddSon(node7, node129)
  Body_SetCS(node129, MAT_Vector3(1516.323837, 1307.150886, 144.791959), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node129, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node129, 0)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_generic", "ter_megalith_s_01_4")
  Node_AddSon(node7, node130)
  Body_SetCS(node130, MAT_Vector3(1663.584779, 1125.885478, 168.731277), MAT_Vector3(-14.74638, 16.245018, -25.290116))
  Node_ParseIniFile(node130, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node130, 0)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_generic", "ter_megalith_l_02_5")
  Node_AddSon(node7, node131)
  Body_SetCS(node131, MAT_Vector3(746.810624, 3700.401624, 156.190036), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node131, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node131, 0)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_generic", "ter_megalith_s_03_5")
  Node_AddSon(node7, node132)
  Body_SetCS(node132, MAT_Vector3(769.805845, 3739.680431, 143.398324), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node132, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node132, 0)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_generic", "ter_megalith_s_02_3")
  Node_AddSon(node7, node133)
  Body_SetCS(node133, MAT_Vector3(956.046933, 3764.489708, 147.149588), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node133, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node133, 0)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, -1, 0)
  Body_SetCargoKey(node133, -1, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_generic", "ter_megalith_m_01_6")
  Node_AddSon(node7, node134)
  Body_SetCS(node134, MAT_Vector3(871.369546, 3839.56985, 132.231502), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node134, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node134, 0)
  Body_SetNameKey(node134, -1)
  Body_SetCargoKey(node134, -1, 0)
  Body_SetCargoKey(node134, -1, 1)
  Body_SetCargoKey(node134, -1, 2)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_generic", "ter_rock_l_01_4")
  Node_AddSon(node7, node135)
  Body_SetCS(node135, MAT_Vector3(1167.572747, 3895.015327, 196.468124), MAT_Vector3(-48.41686, -17.231863, 60.425888))
  Node_ParseIniFile(node135, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node135, 0)
  Body_SetNameKey(node135, -1)
  Body_SetCargoKey(node135, -1, 0)
  Body_SetCargoKey(node135, -1, 1)
  Body_SetCargoKey(node135, -1, 2)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_generic", "ter_rock_s_01_4")
  Node_AddSon(node7, node136)
  Body_SetCS(node136, MAT_Vector3(1141.583747, 3889.839788, 195.193596), MAT_Vector3(41.103159, -34.96016, -56.882255))
  Node_ParseIniFile(node136, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node136, 0)
  Body_SetNameKey(node136, -1)
  Body_SetCargoKey(node136, -1, 0)
  Body_SetCargoKey(node136, -1, 1)
  Body_SetCargoKey(node136, -1, 2)
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_generic", "ter_bridgering_l_7")
  Node_AddSon(node7, node137)
  Body_SetCS(node137, MAT_Vector3(1260.013164, 3433.967294, 214.960771), MAT_Vector3(42.85515, 0, 0))
  Node_ParseIniFile(node137, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node137, 0)
  Body_SetNameKey(node137, -1)
  Body_SetCargoKey(node137, -1, 0)
  Body_SetCargoKey(node137, -1, 1)
  Body_SetCargoKey(node137, -1, 2)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_generic", "ter_rock_s_01_5")
  Node_AddSon(node7, node138)
  Body_SetCS(node138, MAT_Vector3(1085.618266, 3330.076197, 169.776959), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node138, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node138, 0)
  Body_SetNameKey(node138, -1)
  Body_SetCargoKey(node138, -1, 0)
  Body_SetCargoKey(node138, -1, 1)
  Body_SetCargoKey(node138, -1, 2)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_generic", "ter_megalith_m_02_4")
  Node_AddSon(node7, node139)
  Body_SetCS(node139, MAT_Vector3(2110.455082, 2101.684188, 391.956433), MAT_Vector3(-160.054321, -3.732231, -14.762552))
  Node_ParseIniFile(node139, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node139, 0)
  Body_SetNameKey(node139, -1)
  Body_SetCargoKey(node139, -1, 0)
  Body_SetCargoKey(node139, -1, 1)
  Body_SetCargoKey(node139, -1, 2)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_generic", "ter_megalith_l_01_13")
  Node_AddSon(node7, node140)
  Body_SetCS(node140, MAT_Vector3(3001.116347, 2876.205294, 380.643545), MAT_Vector3(-26.065439, 13.024074, 10.40917))
  Node_ParseIniFile(node140, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node140, 0)
  Body_SetNameKey(node140, -1)
  Body_SetCargoKey(node140, -1, 0)
  Body_SetCargoKey(node140, -1, 1)
  Body_SetCargoKey(node140, -1, 2)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("nod_generic", "ter_bridgering_m_4")
  Node_AddSon(node7, node141)
  Body_SetCS(node141, MAT_Vector3(3150.464213, 2552.511673, 312.838883), MAT_Vector3(-1.601908, -2.27254, -31.2884))
  Node_ParseIniFile(node141, "osd/ter/ter_bridgering_m.osd")
  Body_SetFriendOrFoeID(node141, 0)
  Body_SetNameKey(node141, -1)
  Body_SetCargoKey(node141, -1, 0)
  Body_SetCargoKey(node141, -1, 1)
  Body_SetCargoKey(node141, -1, 2)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("nod_generic", "ter_rock_l_01_5")
  Node_AddSon(node7, node142)
  Body_SetCS(node142, MAT_Vector3(3366.577515, 2013.333151, 424.990493), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node142, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node142, 0)
  Body_SetNameKey(node142, -1)
  Body_SetCargoKey(node142, -1, 0)
  Body_SetCargoKey(node142, -1, 1)
  Body_SetCargoKey(node142, -1, 2)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("nod_generic", "ter_megalith_m_01_7")
  Node_AddSon(node7, node143)
  Body_SetCS(node143, MAT_Vector3(3276.345899, 1202.697678, 295.796149), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node143, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node143, 0)
  Body_SetNameKey(node143, -1)
  Body_SetCargoKey(node143, -1, 0)
  Body_SetCargoKey(node143, -1, 1)
  Body_SetCargoKey(node143, -1, 2)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("nod_generic", "ter_megalith_s_03_6")
  Node_AddSon(node7, node144)
  Body_SetCS(node144, MAT_Vector3(3255.700008, 1194.455543, 295.362281), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node144, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node144, 0)
  Body_SetNameKey(node144, -1)
  Body_SetCargoKey(node144, -1, 0)
  Body_SetCargoKey(node144, -1, 1)
  Body_SetCargoKey(node144, -1, 2)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("nod_generic", "ter_megalith_l_01_14")
  Node_AddSon(node7, node145)
  Body_SetCS(node145, MAT_Vector3(4004.179107, 1129.578246, 253.979038), MAT_Vector3(132.393732, -16.285768, -1.622084))
  Node_ParseIniFile(node145, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node145, 0)
  Body_SetNameKey(node145, -1)
  Body_SetCargoKey(node145, -1, 0)
  Body_SetCargoKey(node145, -1, 1)
  Body_SetCargoKey(node145, -1, 2)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("nod_generic", "ter_megalith_l_03_7")
  Node_AddSon(node7, node146)
  Body_SetCS(node146, MAT_Vector3(3916.788905, 824.571243, 305.472168), MAT_Vector3(-74.899557, 13.039269, 18.86725))
  Node_ParseIniFile(node146, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node146, 0)
  Body_SetNameKey(node146, -1)
  Body_SetCargoKey(node146, -1, 0)
  Body_SetCargoKey(node146, -1, 1)
  Body_SetCargoKey(node146, -1, 2)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("nod_generic", "ter_megalith_m_02_5")
  Node_AddSon(node7, node147)
  Body_SetCS(node147, MAT_Vector3(4005.073153, 866.512241, 459.285408), MAT_Vector3(44.199842, -52.477868, -1.566106))
  Node_ParseIniFile(node147, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node147, 0)
  Body_SetNameKey(node147, -1)
  Body_SetCargoKey(node147, -1, 0)
  Body_SetCargoKey(node147, -1, 1)
  Body_SetCargoKey(node147, -1, 2)
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("nod_generic", "ter_megalith_s_03_7")
  Node_AddSon(node7, node148)
  Body_SetCS(node148, MAT_Vector3(3978.629481, 987.580041, 339.472829), MAT_Vector3(-144.679719, 3.084649, 71.550998))
  Node_ParseIniFile(node148, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node148, 0)
  Body_SetNameKey(node148, -1)
  Body_SetCargoKey(node148, -1, 0)
  Body_SetCargoKey(node148, -1, 1)
  Body_SetCargoKey(node148, -1, 2)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("nod_generic", "ter_megalith_s_02_4")
  Node_AddSon(node7, node149)
  Body_SetCS(node149, MAT_Vector3(3920.61292, 888.27079, 320.703783), MAT_Vector3(158.708951, -15.22807, 101.36032))
  Node_ParseIniFile(node149, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node149, 0)
  Body_SetNameKey(node149, -1)
  Body_SetCargoKey(node149, -1, 0)
  Body_SetCargoKey(node149, -1, 1)
  Body_SetCargoKey(node149, -1, 2)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("nod_generic", "ter_rock_s_01_6")
  Node_AddSon(node7, node150)
  Body_SetCS(node150, MAT_Vector3(3774.675789, 971.998517, 93.908591), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node150, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node150, 0)
  Body_SetNameKey(node150, -1)
  Body_SetCargoKey(node150, -1, 0)
  Body_SetCargoKey(node150, -1, 1)
  Body_SetCargoKey(node150, -1, 2)
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("nod_generic", "ter_megalith_l_03_8")
  Node_AddSon(node7, node151)
  Body_SetCS(node151, MAT_Vector3(1107.916336, 2520.558773, 121.710816), MAT_Vector3(11.705606, 2.943522, 2.807297))
  Node_ParseIniFile(node151, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node151, 0)
  Body_SetNameKey(node151, -1)
  Body_SetCargoKey(node151, -1, 0)
  Body_SetCargoKey(node151, -1, 1)
  Body_SetCargoKey(node151, -1, 2)
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("nod_generic", "pla_harvester_static_1")
  Node_AddSon(node7, node152)
  Body_SetCS(node152, MAT_Vector3(1232, 2478, 250), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node152, "osd/pla/pla_harvester.osd")
  Body_SetFriendOrFoeID(node152, 0)
  Body_SetNameKey(node152, -1)
  Body_SetCargoKey(node152, -1, 0)
  Body_SetCargoKey(node152, -1, 1)
  Body_SetCargoKey(node152, -1, 2)
  Node_EnterSimulation(node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("nod_generic", "ter_rock_l_01_6")
  Node_AddSon(node7, node153)
  Body_SetCS(node153, MAT_Vector3(765.351439, 1778.436493, 159.307037), MAT_Vector3(49.909235, 2.570243, -42.192198))
  Node_ParseIniFile(node153, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node153, 0)
  Body_SetNameKey(node153, -1)
  Body_SetCargoKey(node153, -1, 0)
  Body_SetCargoKey(node153, -1, 1)
  Body_SetCargoKey(node153, -1, 2)
  Node_EnterSimulation(node153)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("nod_generic", "ter_rock_s_01_3")
  Node_AddSon(node7, node154)
  Body_SetCS(node154, MAT_Vector3(737.580192, 1799.172623, 147.412273), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node154, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node154, 0)
  Body_SetNameKey(node154, -1)
  Body_SetCargoKey(node154, -1, 0)
  Body_SetCargoKey(node154, -1, 1)
  Body_SetCargoKey(node154, -1, 2)
  Node_EnterSimulation(node154)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("nod_generic", "ter_megalith_m_01_8")
  Node_AddSon(node7, node155)
  Body_SetCS(node155, MAT_Vector3(387.0174, 1709.876082, 219.719937), MAT_Vector3(-34.016164, -12.242722, -24.283644))
  Node_ParseIniFile(node155, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node155, 0)
  Body_SetNameKey(node155, -1)
  Body_SetCargoKey(node155, -1, 0)
  Body_SetCargoKey(node155, -1, 1)
  Body_SetCargoKey(node155, -1, 2)
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("nod_generic", "ter_megalith_l_03_9")
  Node_AddSon(node7, node156)
  Body_SetCS(node156, MAT_Vector3(290.892484, 1833.408297, 145.901326), MAT_Vector3(22.399496, 12.42896, 2.943879))
  Node_ParseIniFile(node156, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node156, 0)
  Body_SetNameKey(node156, -1)
  Body_SetCargoKey(node156, -1, 0)
  Body_SetCargoKey(node156, -1, 1)
  Body_SetCargoKey(node156, -1, 2)
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("nod_generic", "ter_rock_m_01_4")
  Node_AddSon(node7, node157)
  Body_SetCS(node157, MAT_Vector3(2845.973286, 1799.009974, 297.671475), MAT_Vector3(-53.87024, -59.726352, 75.013211))
  Node_ParseIniFile(node157, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node157, 0)
  Body_SetNameKey(node157, -1)
  Body_SetCargoKey(node157, -1, 0)
  Body_SetCargoKey(node157, -1, 1)
  Body_SetCargoKey(node157, -1, 2)
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("nod_generic", "ter_rock_s_01_8")
  Node_AddSon(node7, node158)
  Body_SetCS(node158, MAT_Vector3(2892.728012, 1827.446482, 267.95868), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node158, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node158, 0)
  Body_SetNameKey(node158, -1)
  Body_SetCargoKey(node158, -1, 0)
  Body_SetCargoKey(node158, -1, 1)
  Body_SetCargoKey(node158, -1, 2)
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("nod_generic", "ter_megalith_m_01_9")
  Node_AddSon(node7, node159)
  Body_SetCS(node159, MAT_Vector3(3854.910509, 1241.948154, 229.189054), MAT_Vector3(-82.692289, -0.759761, 14.409883))
  Node_ParseIniFile(node159, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node159, 0)
  Body_SetNameKey(node159, -1)
  Body_SetCargoKey(node159, -1, 0)
  Body_SetCargoKey(node159, -1, 1)
  Body_SetCargoKey(node159, -1, 2)
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("nod_generic", "ter_megalith_m_02_6")
  Node_AddSon(node7, node160)
  Body_SetCS(node160, MAT_Vector3(3830.787882, 1276.309822, 227.577324), MAT_Vector3(-145.007195, -7.087135, 21.436119))
  Node_ParseIniFile(node160, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node160, 0)
  Body_SetNameKey(node160, -1)
  Body_SetCargoKey(node160, -1, 0)
  Body_SetCargoKey(node160, -1, 1)
  Body_SetCargoKey(node160, -1, 2)
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("nod_generic", "ter_megalith_m_01_10")
  Node_AddSon(node7, node161)
  Body_SetCS(node161, MAT_Vector3(3925.402697, 1233.214262, 241.442465), MAT_Vector3(76.691547, -23.614918, -26.548385))
  Node_ParseIniFile(node161, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node161, 0)
  Body_SetNameKey(node161, -1)
  Body_SetCargoKey(node161, -1, 0)
  Body_SetCargoKey(node161, -1, 1)
  Body_SetCargoKey(node161, -1, 2)
  Node_EnterSimulation(node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("nod_generic", "ter_megalith_m_02_7")
  Node_AddSon(node7, node162)
  Body_SetCS(node162, MAT_Vector3(3808.298534, 1301.081833, 229.782543), MAT_Vector3(13.55691, -6.498178, -13.363591))
  Node_ParseIniFile(node162, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node162, 0)
  Body_SetNameKey(node162, -1)
  Body_SetCargoKey(node162, -1, 0)
  Body_SetCargoKey(node162, -1, 1)
  Body_SetCargoKey(node162, -1, 2)
  Node_EnterSimulation(node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("nod_generic", "ter_megalith_m_02_8")
  Node_AddSon(node7, node163)
  Body_SetCS(node163, MAT_Vector3(3576.835485, 1077.286171, 263.185003), MAT_Vector3(-65.522246, -49.628441, -9.523972))
  Node_ParseIniFile(node163, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node163, 0)
  Body_SetNameKey(node163, -1)
  Body_SetCargoKey(node163, -1, 0)
  Body_SetCargoKey(node163, -1, 1)
  Body_SetCargoKey(node163, -1, 2)
  Node_EnterSimulation(node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("nod_generic", "ter_megalith_m_01_11")
  Node_AddSon(node7, node164)
  Body_SetCS(node164, MAT_Vector3(3581.913821, 1044.787648, 240.836499), MAT_Vector3(174.36739, -36.189318, -35.05998))
  Node_ParseIniFile(node164, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node164, 0)
  Body_SetNameKey(node164, -1)
  Body_SetCargoKey(node164, -1, 0)
  Body_SetCargoKey(node164, -1, 1)
  Body_SetCargoKey(node164, -1, 2)
  Node_EnterSimulation(node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("nod_generic", "ter_megalith_s_02_5")
  Node_AddSon(node7, node165)
  Body_SetCS(node165, MAT_Vector3(931.216256, 3902.309625, 171.521482), MAT_Vector3(-47.98794, 24.733138, 0.643042))
  Node_ParseIniFile(node165, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node165, 0)
  Body_SetNameKey(node165, -1)
  Body_SetCargoKey(node165, -1, 0)
  Body_SetCargoKey(node165, -1, 1)
  Body_SetCargoKey(node165, -1, 2)
  Node_EnterSimulation(node165)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("nod_generic", "ter_megalith_s_03_8")
  Node_AddSon(node7, node166)
  Body_SetCS(node166, MAT_Vector3(890.159811, 3897.03961, 182.797705), MAT_Vector3(14.970863, 22.20791, 15.171334))
  Node_ParseIniFile(node166, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node166, 0)
  Body_SetNameKey(node166, -1)
  Body_SetCargoKey(node166, -1, 0)
  Body_SetCargoKey(node166, -1, 1)
  Body_SetCargoKey(node166, -1, 2)
  Node_EnterSimulation(node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("nod_fx_rays", "fx_rays_1H1_1")
  Node_AddSon(node7, node167)
  Node_ParseIniFile(node167, "osd/fx_rays/fx_rays_1H1.osd")
  Node_EnterSimulation(node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("nod_fx_sky", "fx_sky_1H1_1")
  Node_AddSon(node7, node168)
  Node_ParseIniFile(node168, "osd/fx_sky/fx_sky_1H1.osd")
  Node_EnterSimulation(node168)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("nod_fx_flare", "fx_flare_1H1_1")
  Node_AddSon(node7, node169)
  Node_ParseIniFile(node169, "osd/fx_flare/fx_flare_1H1.osd")
  Node_EnterSimulation(node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("nod_fx_plankton", "fx_plankton_tz_n_1")
  Node_AddSon(node7, node170)
  Node_ParseIniFile(node170, "osd/fx_plankton/fx_plankton_tz_n.osd")
  Node_EnterSimulation(node170)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("nod_fx_plant", "org_grass_l_1")
  Node_AddSon(node7, node171)
  Node_ParseIniFile(node171, "osd/fx_plant/org_grass_l.osd")
  FX_Plant_SetMap(node171, "map/1H1/Terrain/org_grass_l.tga")
  Node_EnterSimulation(node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node7, node172)
  Node_ParseIniFile(node172, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node172, "map/1H1/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node7, node173)
  Node_ParseIniFile(node173, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node173, "map/1H1/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node173)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node174)
  Node_ParseIniFile(node174, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node174, "map/1H1/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node174)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("nod_fx_plant", "org_tube_1")
  Node_AddSon(node7, node175)
  Node_ParseIniFile(node175, "osd/fx_plant/org_tube.osd")
  FX_Plant_SetMap(node175, "map/1H1/Terrain/org_tubes.tga")
  Node_EnterSimulation(node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("nod_fx_plant", "org_seetang_1")
  Node_AddSon(node7, node176)
  Node_ParseIniFile(node176, "osd/fx_plant/org_seetang.osd")
  FX_Plant_SetMap(node176, "map/1H1/Terrain/org_seetang.tga")
  Node_EnterSimulation(node176)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node177)
  Node_EnterSimulation(node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node177, node178)
  Node_EnterSimulation(node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node177, node179)
  Node_EnterSimulation(node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_PatrolArea", "PatrolArea")
  Node_AddSon(node179, node180)
  PatrolArea_SetPosition(node180, MAT_Vector3(3750.845287, 988.565585, 204.538089))
  PatrolArea_SetRadius(node180, 50)
  PatrolArea_SetMinZ(node180, -20)
  PatrolArea_SetMaxZ(node180, 20)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_PatrolArea", "TriggerArea")
  Node_AddSon(node179, node181)
  PatrolArea_SetPosition(node181, MAT_Vector3(3750.508, 988.1536, 195))
  PatrolArea_SetRadius(node181, 350)
  PatrolArea_SetMinZ(node181, -20)
  PatrolArea_SetMaxZ(node181, 256)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("NOD_PatrolArea", "FollowArea")
  Node_AddSon(node179, node182)
  PatrolArea_SetPosition(node182, MAT_Vector3(3750.508, 988.1536, 60.316676))
  PatrolArea_SetRadius(node182, 350)
  PatrolArea_SetMinZ(node182, -20)
  PatrolArea_SetMaxZ(node182, 256)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_Path", "PiratEscapePath")
  Node_AddSon(node179, node183)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node183, node184)
  Position_SetPosition(node184, MAT_Vector3(3753.337458, 990.211426, 300.558877))
  Position_SetRadius(node184, 5)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node183, node185)
  Position_SetPosition(node185, MAT_Vector3(3677.780176, 913.444751, 400))
  Position_SetRadius(node185, 5)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_FX_Stream", "Stream_1")
  Node_AddSon(node179, node186)
  Body_SetCS(node186, MAT_Vector3(2391.235639, 2247.890249, 287.355291), MAT_Vector3())
  Stream_SetBoxExtension(node186, 100, 225, 40)
  Stream_SetCurrentDirection(node186, MAT_Vector3(-30.409947, 0, 0))
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_FX_Stream", "Stream_2")
  Node_AddSon(node179, node187)
  Body_SetCS(node187, MAT_Vector3(2666.602869, 2411.654437, 266.706878), MAT_Vector3())
  Stream_SetBoxExtension(node187, 100, 350, 20)
  Stream_SetCurrentDirection(node187, MAT_Vector3(177.3737, -10, 0))
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_FX_Stream", "Stream_3")
  Node_AddSon(node179, node188)
  Body_SetCS(node188, MAT_Vector3(3046.161818, 2506.14139, 281.271646), MAT_Vector3())
  Stream_SetBoxExtension(node188, 150, 50, 35)
  Stream_SetCurrentDirection(node188, MAT_Vector3(-159.517736, -10.6562, -3.620567))
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_FX_Stream", "Stream_4")
  Node_AddSon(node179, node189)
  Body_SetCS(node189, MAT_Vector3(3096.029587, 1983.440591, 281.2716), MAT_Vector3())
  Stream_SetBoxExtension(node189, 150, 50, 35)
  Stream_SetCurrentDirection(node189, MAT_Vector3(-100.062588, -10.6562, -3.620567))
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_FX_Stream", "Stream_5")
  Node_AddSon(node179, node190)
  Body_SetCS(node190, MAT_Vector3(2954.100821, 1796.628234, 281.2716), MAT_Vector3())
  Stream_SetBoxExtension(node190, 150, 50, 35)
  Stream_SetCurrentDirection(node190, MAT_Vector3(96.356064, -10.6562, 0))
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_FX_Stream", "Stream_6")
  Node_AddSon(node179, node191)
  Body_SetCS(node191, MAT_Vector3(2915.282763, 1644.994262, 262.628725), MAT_Vector3())
  Stream_SetBoxExtension(node191, 150, 50, 35)
  Stream_SetCurrentDirection(node191, MAT_Vector3(92.681369, -10.6562, 0))
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node177, node192)
  Node_EnterSimulation(node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node177, node193)
  Node_EnterSimulation(node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Trigger", "Trigger_PiratStart")
  Node_AddSon(node193, node194)
  Body_SetFriendOrFoeID(node194, 0)
  Body_SetCS(node194, MAT_Vector3(3549.836926, 814.55604, 283.370615), MAT_Vector3(17.801145, 0, 0))
  Trigger_SetBoxMode(node194, 40, 256, 300)
  Node_EnterSimulation(node194)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Trigger", "Trigger_Message002")
  Node_AddSon(node193, node195)
  Body_SetFriendOrFoeID(node195, 0)
  Body_SetCS(node195, MAT_Vector3(3109.614527, 2004.383368, 257.571401), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node195, 150, 35, 70)
  Node_EnterSimulation(node195)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node177, node196)
  Node_EnterSimulation(node196)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node196, node197)
  Body_SetCS(node197, MAT_Vector3(1219.650295, 2844.395425, 272.937953), MAT_Vector3(-1.422639, 0, 0))
  Node_ParseIniFile(node197, "osd/pla/pla_ship1.osd")
  Body_SetFriendOrFoeID(node197, 0)
  Node_EnterSimulation(node197)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("nod_waypoint", "nav_waypoint_1")
  Node_AddSon(node196, node198)
  Body_SetPosition(node198, MAT_Vector3(2033.773913, 2427.443806, 278.423853))
  WayPoint_SetRadius(node198, 75)
  Node_ParseIniFile(node198, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node198)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("nod_waypoint", "nav_waypoint_1_2")
  Node_AddSon(node196, node199)
  Body_SetPosition(node199, MAT_Vector3(2801.992015, 2650.564401, 293.014227))
  WayPoint_SetRadius(node199, 100)
  Node_ParseIniFile(node199, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node199)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("nod_waypoint", "nav_waypoint_1_3")
  Node_AddSon(node196, node200)
  Body_SetPosition(node200, MAT_Vector3(2879.674483, 1590.139047, 293.0142))
  WayPoint_SetRadius(node200, 140)
  Node_ParseIniFile(node200, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node200)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("nod_waypoint", "nav_waypoint_2")
  Node_AddSon(node196, node201)
  Body_SetPosition(node201, MAT_Vector3(3558.898575, 821.426891, 257.156738))
  WayPoint_SetRadius(node201, 100)
  Node_ParseIniFile(node201, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node201)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("nod_waypoint", "nav_waypoint_2_2")
  Node_AddSon(node196, node202)
  Body_SetPosition(node202, MAT_Vector3(2877.721492, 1592.152919, 293.0142))
  WayPoint_SetRadius(node202, 140)
  Node_ParseIniFile(node202, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node202)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("nod_waypoint", "nav_waypoint_2_3")
  Node_AddSon(node196, node203)
  Body_SetPosition(node203, MAT_Vector3(2845.823193, 2655.303693, 293.0142))
  WayPoint_SetRadius(node203, 100)
  Node_ParseIniFile(node203, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node203)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("nod_waypoint", "nav_waypoint_3")
  Node_AddSon(node196, node204)
  Body_SetPosition(node204, MAT_Vector3(1219.441222, 2482.708929, 190.753894))
  WayPoint_SetRadius(node204, 400)
  Node_ParseIniFile(node204, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node204)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("nod_vessel", "pir_tz_hank_1")
  Node_AddSon(node196, node205)
  Body_SetCS(node205, MAT_Vector3(3757.374365, 1089.160512, 131.973735), MAT_Vector3(-178.853116, 0, 0))
  Node_ParseIniFile(node205, "osd/pir_tz/pir_tz_hank_narrow.osd")
  Body_SetFriendOrFoeID(node205, 2)
  Body_SetNameKey(node205, -1)
  Body_SetCargoKey(node205, -1, 0)
  Body_SetCargoKey(node205, -1, 1)
  Body_SetCargoKey(node205, -1, 2)
  Node_EnterSimulation(node205)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("nod_trash", "gen_clunker2_1")
  Node_AddSon(node196, node206)
  Body_SetCS(node206, MAT_Vector3(3093.59821, 2446.910057, 288.634104), MAT_Vector3(0.574278, -67.206813, -29.888726))
  Node_ParseIniFile(node206, "osd/gen/gen_clunker2.osd")
  Body_SetFriendOrFoeID(node206, 1)
  Node_EnterSimulation(node206)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("nod_trash", "gen_clunker3_1")
  Node_AddSon(node196, node207)
  Body_SetCS(node207, MAT_Vector3(3032.780362, 2394.358712, 284.975972), MAT_Vector3(-78.747635, -48.731585, 34.829579))
  Node_ParseIniFile(node207, "osd/gen/gen_clunker3.osd")
  Body_SetFriendOrFoeID(node207, 1)
  Node_EnterSimulation(node207)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("nod_trash", "gen_clunker4_1")
  Node_AddSon(node196, node208)
  Body_SetCS(node208, MAT_Vector3(3071.160557, 2390.22546, 299.558987), MAT_Vector3(-50.976816, 14.753778, 40.141481))
  Node_ParseIniFile(node208, "osd/gen/gen_clunker4.osd")
  Body_SetFriendOrFoeID(node208, 1)
  Node_EnterSimulation(node208)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("nod_trash", "gen_clunker5_1")
  Node_AddSon(node196, node209)
  Body_SetCS(node209, MAT_Vector3(3049.903833, 2349.483407, 291.479318), MAT_Vector3(86.682308, 14.759333, -66.885264))
  Node_ParseIniFile(node209, "osd/gen/gen_clunker5.osd")
  Body_SetFriendOrFoeID(node209, 1)
  Node_EnterSimulation(node209)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("nod_trash", "gen_clunker6_1")
  Node_AddSon(node196, node210)
  Body_SetCS(node210, MAT_Vector3(3069.979628, 2237.295144, 280.098462), MAT_Vector3(136.584983, -74.995366, 36.558468))
  Node_ParseIniFile(node210, "osd/gen/gen_clunker6.osd")
  Body_SetFriendOrFoeID(node210, 1)
  Node_EnterSimulation(node210)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("nod_trash", "gen_clunker2_2")
  Node_AddSon(node196, node211)
  Body_SetCS(node211, MAT_Vector3(3118.987975, 2210.724183, 276.133055), MAT_Vector3(0.853105, 0.098832, 124.420187))
  Node_ParseIniFile(node211, "osd/gen/gen_clunker2.osd")
  Body_SetFriendOrFoeID(node211, 1)
  Node_EnterSimulation(node211)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("nod_trash", "gen_clunker4_2")
  Node_AddSon(node196, node212)
  Body_SetCS(node212, MAT_Vector3(3009.162223, 2321.731113, 287.538801), MAT_Vector3(-22.658681, 28.368768, 14.149814))
  Node_ParseIniFile(node212, "osd/gen/gen_clunker4.osd")
  Body_SetFriendOrFoeID(node212, 1)
  Node_EnterSimulation(node212)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("nod_trash", "gen_clunker4_4")
  Node_AddSon(node196, node213)
  Body_SetCS(node213, MAT_Vector3(3070.944104, 2472.377775, 263.979138), MAT_Vector3(65.223201, -24.965291, -63.427846))
  Node_ParseIniFile(node213, "osd/gen/gen_clunker4.osd")
  Body_SetFriendOrFoeID(node213, 1)
  Node_EnterSimulation(node213)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("nod_trash", "gen_clunker5_2")
  Node_AddSon(node196, node214)
  Body_SetCS(node214, MAT_Vector3(3049.313535, 2281.579578, 258.30345), MAT_Vector3(161.923114, -44.42567, -17.159732))
  Node_ParseIniFile(node214, "osd/gen/gen_clunker5.osd")
  Body_SetFriendOrFoeID(node214, 1)
  Node_EnterSimulation(node214)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("nod_trash", "gen_clunker6_2")
  Node_AddSon(node196, node215)
  Body_SetCS(node215, MAT_Vector3(3098.912763, 2402.034607, 275.771215), MAT_Vector3(-53.833998, 20.499118, 107.804042))
  Node_ParseIniFile(node215, "osd/gen/gen_clunker6.osd")
  Body_SetFriendOrFoeID(node215, 1)
  Node_EnterSimulation(node215)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("nod_trash", "gen_clunker2_3")
  Node_AddSon(node196, node216)
  Body_SetCS(node216, MAT_Vector3(3019.967367, 2225.957944, 283.345241), MAT_Vector3(-77.878548, -36.727123, 79.220151))
  Node_ParseIniFile(node216, "osd/gen/gen_clunker2.osd")
  Body_SetFriendOrFoeID(node216, 1)
  Node_EnterSimulation(node216)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("nod_trash", "gen_clunker3_3")
  Node_AddSon(node196, node217)
  Body_SetCS(node217, MAT_Vector3(3141.043177, 2191.878509, 293.609432), MAT_Vector3(-72.405132, 42.624308, 71.645091))
  Node_ParseIniFile(node217, "osd/gen/gen_clunker3.osd")
  Body_SetFriendOrFoeID(node217, 1)
  Node_EnterSimulation(node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("nod_trash", "gen_clunker4_3")
  Node_AddSon(node196, node218)
  Body_SetCS(node218, MAT_Vector3(3067.558784, 2487.611719, 270.229661), MAT_Vector3(-148.546314, -15.656566, 116.612997))
  Node_ParseIniFile(node218, "osd/gen/gen_clunker4.osd")
  Body_SetFriendOrFoeID(node218, 1)
  Node_EnterSimulation(node218)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("nod_trash", "gen_clunker5_3")
  Node_AddSon(node196, node219)
  Body_SetCS(node219, MAT_Vector3(3117.866746, 2151.24515, 263.111494), MAT_Vector3(-65.730276, 55.924464, 37.838571))
  Node_ParseIniFile(node219, "osd/gen/gen_clunker5.osd")
  Body_SetFriendOrFoeID(node219, 1)
  Node_EnterSimulation(node219)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("nod_trash", "gen_clunker6_3")
  Node_AddSon(node196, node220)
  Body_SetCS(node220, MAT_Vector3(3094.681349, 2173.525847, 269.520678), MAT_Vector3(63.519121, -9.483522, 9.902636))
  Node_ParseIniFile(node220, "osd/gen/gen_clunker6.osd")
  Body_SetFriendOrFoeID(node220, 1)
  Node_EnterSimulation(node220)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("nod_trash", "gen_clunker2_01")
  Node_AddSon(node196, node221)
  Body_SetCS(node221, MAT_Vector3(3078.198866, 1916.545732, 291.093355), MAT_Vector3(-91.858498, -38.660502, -176.586406))
  Node_ParseIniFile(node221, "osd/gen/gen_clunker2.osd")
  Body_SetFriendOrFoeID(node221, 1)
  Node_EnterSimulation(node221)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("nod_trash", "gen_clunker3_01")
  Node_AddSon(node196, node222)
  Body_SetCS(node222, MAT_Vector3(2956.934104, 1796.909124, 322.973827), MAT_Vector3(-122.407288, -55.935482, -77.052596))
  Node_ParseIniFile(node222, "osd/gen/gen_clunker3.osd")
  Body_SetFriendOrFoeID(node222, 1)
  Node_EnterSimulation(node222)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("nod_trash", "gen_clunker3_02")
  Node_AddSon(node196, node223)
  Body_SetCS(node223, MAT_Vector3(2833.51041, 1537.529901, 335.854085), MAT_Vector3(156.623433, -8.766625, -116.719773))
  Node_ParseIniFile(node223, "osd/gen/gen_clunker3.osd")
  Body_SetFriendOrFoeID(node223, 1)
  Node_EnterSimulation(node223)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("nod_trash", "gen_clunker6_01")
  Node_AddSon(node196, node224)
  Body_SetCS(node224, MAT_Vector3(3087.402581, 1970.943326, 284.773701), MAT_Vector3(160.811921, -9.160812, 13.024992))
  Node_ParseIniFile(node224, "osd/gen/gen_clunker6.osd")
  Body_SetFriendOrFoeID(node224, 1)
  Node_EnterSimulation(node224)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("nod_trash", "gen_clunker4_01")
  Node_AddSon(node196, node225)
  Body_SetCS(node225, MAT_Vector3(3015.142784, 1854.925418, 296.500649), MAT_Vector3(96.547579, -64.110378, -44.425162))
  Node_ParseIniFile(node225, "osd/gen/gen_clunker4.osd")
  Body_SetFriendOrFoeID(node225, 1)
  Node_EnterSimulation(node225)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("nod_trash", "gen_clunker4_02")
  Node_AddSon(node196, node226)
  Body_SetCS(node226, MAT_Vector3(2899.901359, 1652.342326, 293.172238), MAT_Vector3(-115.97558, -86.724484, 14.083204))
  Node_ParseIniFile(node226, "osd/gen/gen_clunker4.osd")
  Body_SetFriendOrFoeID(node226, 1)
  Node_EnterSimulation(node226)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("nod_trash", "gen_clunker5_01")
  Node_AddSon(node196, node227)
  Body_SetCS(node227, MAT_Vector3(2901.319471, 1698.093375, 296.185351), MAT_Vector3(-141.62796, -44.42567, -17.15973))
  Node_ParseIniFile(node227, "osd/gen/gen_clunker5.osd")
  Body_SetFriendOrFoeID(node227, 1)
  Node_EnterSimulation(node227)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node228)
  Camera_SetBackPlane(node228, 2048)
  Node_EnterSimulation(node228)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("NOD_Scenario", "IngameScenes")
  Node_AddSon(node0, node229)
  Node_EnterSimulation(node229)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node229, node230)
  Node_EnterSimulation(node230)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node229, node231)
  Node_EnterSimulation(node231)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("NOD_Path", "PlayerPath")
  Node_AddSon(node231, node232)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node232, node233)
  Position_SetPosition(node233, MAT_Vector3(1267.613524, 2624.222194, 228.33104))
  Position_SetRadius(node233, 5)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node232, node234)
  Position_SetPosition(node234, MAT_Vector3(1306.441709, 2584.608021, 228.317134))
  Position_SetRadius(node234, 5)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node232, node235)
  Position_SetPosition(node235, MAT_Vector3(1350.043531, 2540.738743, 203.589401))
  Position_SetRadius(node235, 5)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node232, node236)
  Position_SetPosition(node236, MAT_Vector3(1400.324005, 2518.239606, 202.268249))
  Position_SetRadius(node236, 5)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node232, node237)
  Position_SetPosition(node237, MAT_Vector3(1457.699086, 2481.915493, 214.394455))
  Position_SetRadius(node237, 5)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node232, node238)
  Position_SetPosition(node238, MAT_Vector3(1606.194985, 2483.240772, 247.994483))
  Position_SetRadius(node238, 5)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node232, node239)
  Position_SetPosition(node239, MAT_Vector3(1712.024951, 2483.530585, 248.538468))
  Position_SetRadius(node239, 5)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node232, node240)
  Position_SetPosition(node240, MAT_Vector3(1794.415637, 2482.707094, 248.5385))
  Position_SetRadius(node240, 5)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node231, node241)
  Position_SetPosition(node241, MAT_Vector3(1319.706177, 2569.700818, 230.753503))
  Position_SetRadius(node241, 5)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("NOD_Position", "LookAt_2")
  Node_AddSon(node231, node242)
  Position_SetPosition(node242, MAT_Vector3(1285.538982, 2495.280913, 254.222953))
  Position_SetRadius(node242, 5)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("NOD_Position", "LookFrom_2")
  Node_AddSon(node231, node243)
  Position_SetPosition(node243, MAT_Vector3(1797.568126, 2482.475359, 249.197923))
  Position_SetRadius(node243, 5)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node229, node244)
  Node_EnterSimulation(node244)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("NOD_Director", "Intro")
  Node_AddSon(node244, node245)
  Node_EnterSimulation(node245)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("NOD_Director", "Intro_AddOn")
  Node_AddSon(node244, node246)
  Node_EnterSimulation(node246)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("NOD_Director", "Intro_Audio")
  Node_AddSon(node244, node247)
  Node_EnterSimulation(node247)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node229, node248)
  Node_EnterSimulation(node248)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node229, node249)
  Node_EnterSimulation(node249)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, U)
SetEnemyMatrixElement(2, 0, N)
SetEnemyMatrixElement(3, 0, N)
SetEnemyMatrixElement(4, 0, N)
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
SetEnemyMatrixElement(1, 1, U)
SetEnemyMatrixElement(2, 1, U)
SetEnemyMatrixElement(3, 1, N)
SetEnemyMatrixElement(4, 1, N)
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
SetEnemyMatrixElement(1, 2, U)
SetEnemyMatrixElement(2, 2, N)
SetEnemyMatrixElement(3, 2, N)
SetEnemyMatrixElement(4, 2, N)
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
SetEnemyMatrixElement(2, 3, N)
SetEnemyMatrixElement(3, 3, N)
SetEnemyMatrixElement(4, 3, N)
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
SetEnemyMatrixElement(0, 4, N)
SetEnemyMatrixElement(1, 4, N)
SetEnemyMatrixElement(2, 4, N)
SetEnemyMatrixElement(3, 4, N)
SetEnemyMatrixElement(4, 4, N)
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
SetEnemyMatrixElement(0, 5, N)
SetEnemyMatrixElement(1, 5, N)
SetEnemyMatrixElement(2, 5, N)
SetEnemyMatrixElement(3, 5, N)
SetEnemyMatrixElement(4, 5, N)
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
SetEnemyMatrixElement(0, 6, N)
SetEnemyMatrixElement(1, 6, N)
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
SetEnemyMatrixElement(0, 7, N)
SetEnemyMatrixElement(1, 7, N)
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
SetEnemyMatrixElement(0, 8, N)
SetEnemyMatrixElement(1, 8, N)
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
SetEnemyMatrixElement(0, 9, N)
SetEnemyMatrixElement(1, 9, N)
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
                                                                                                                                                                                                                                                                                                                                if not (o7380.Value ~= True) then
                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
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

end }
S_o3986 = { [nil] = {}, Start = function(L0)

end }
S_o4032 = { [nil] = {}, Start = function(L0)

end }
S_o4078 = { [nil] = {}, Start = function(L0)

end }
S_o4124 = { [nil] = {}, Start = function(L0)

end }
S_o4170 = { [nil] = {}, Start = function(L0)

end }
S_o4216 = { [nil] = {}, Start = function(L0)

end }
S_o4262 = { [nil] = {}, Start = function(L0)

end }
S_o4308 = { [nil] = {}, Start = function(L0)

end }
S_o4354 = { [nil] = {}, Start = function(L0)

end }
S_o4400 = { [nil] = {}, Start = function(L0)

end }
S_o4446 = { [nil] = {}, Start = function(L0)

end }
S_o4492 = { [nil] = {}, Start = function(L0)

end }
S_o4538 = { [nil] = {}, Start = function(L0)

end }
S_o4584 = { [nil] = {}, Start = function(L0)

end }
S_o4630 = { [nil] = {}, Start = function(L0)

end }
S_o4676 = { [nil] = {}, Start = function(L0)

end }
S_o4722 = { [nil] = {}, Start = function(L0)

end }
S_o4768 = { [nil] = {}, Start = function(L0)

end }
S_o4814 = { [nil] = {}, Start = function(L0)

end }
S_o4860 = { [nil] = {}, Start = function(L0)

end }
S_o4906 = { [nil] = {}, Start = function(L0)

end }
S_o4952 = { [nil] = {}, Start = function(L0)

end }
S_o4998 = { [nil] = {}, Start = function(L0)

end }
S_o5044 = { [nil] = {}, Start = function(L0)

end }
S_o5090 = { [nil] = {}, Start = function(L0)

end }
S_o5134 = { [nil] = {}, Start = function(L0)

end }
S_o5178 = { [nil] = {}, Start = function(L0)

end }
S_o5222 = { [nil] = {}, Start = function(L0)

end }
S_o5266 = { [nil] = {}, Start = function(L0)

end }
S_o5312 = { [nil] = {}, Start = function(L0)

end }
S_o5358 = { [nil] = {}, Start = function(L0)

end }
S_o5404 = { [nil] = {}, Start = function(L0)

end }
S_o5450 = { [nil] = {}, Start = function(L0)

end }
S_o5496 = { [nil] = {}, Start = function(L0)

end }
S_o5542 = { [nil] = {}, Start = function(L0)

end }
S_o5588 = { [nil] = {}, Start = function(L0)

end }
S_o5634 = { [nil] = {}, Start = function(L0)

end }
S_o5680 = { [nil] = {}, Start = function(L0)

end }
S_o5726 = { [nil] = {}, Start = function(L0)

end }
S_o5772 = { [nil] = {}, Start = function(L0)

end }
S_o5818 = { [nil] = {}, Start = function(L0)

end }
S_o5864 = { [nil] = {}, Start = function(L0)

end }
S_o5910 = { [nil] = {}, Start = function(L0)

end }
S_o5956 = { [nil] = {}, Start = function(L0)

end }
S_o6002 = { [nil] = {}, Start = function(L0)

end }
S_o6048 = { [nil] = {}, Start = function(L0)

end }
S_o6094 = { [nil] = {}, Start = function(L0)

end }
S_o6140 = { [nil] = {}, Start = function(L0)

end }
S_o6186 = { [nil] = {}, Start = function(L0)

end }
S_o6232 = { [nil] = {}, Start = function(L0)

end }
S_o6278 = { [nil] = {}, Start = function(L0)

end }
S_o6324 = { [nil] = {}, Start = function(L0)

end }
S_o6370 = { [nil] = {}, Start = function(L0)

end }
S_o6416 = { [nil] = {}, Start = function(L0)

end }
S_o6462 = { [nil] = {}, Start = function(L0)

end }
S_o6508 = { [nil] = {}, Start = function(L0)

end }
S_o6554 = { [nil] = {}, Start = function(L0)

end }
S_o6600 = { [nil] = {}, Start = function(L0)

end }
S_o6646 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6646, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6646, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6646, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o6646, "Code4")
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
S_o6693 = { [nil] = {}, Start = function(L0)

end }
S_o6739 = { [nil] = {}, Start = function(L0)

end }
S_o6785 = { [nil] = {}, Start = function(L0)

end }
S_o6831 = { [nil] = {}, Start = function(L0)

end }
S_o6877 = { [nil] = {}, Start = function(L0)

end }
S_o6923 = { [nil] = {}, Start = function(L0)

end }
S_o6969 = { [nil] = {}, Start = function(L0)

end }
S_o7015 = { [nil] = {}, Start = function(L0)

end }
S_o7061 = { [nil] = {}, Start = function(L0)

end }
S_o7107 = { [nil] = {}, Start = function(L0)

end }
S_o7153 = { [nil] = {}, Start = function(L0)

end }
S_o7199 = { [nil] = {}, Start = function(L0)

end }
S_o7245 = { [nil] = {}, Start = function(L0)

end }
S_o7291 = { [nil] = {}, Start = function(L0)

end }
S_o7337 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 0.5)
  Stream_SetCurrentSpeed(L0.Node, 25, 10)
  CallFunction(o7337, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o7338 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 0.5)
  Stream_SetCurrentSpeed(L0.Node, 25, 10)
  CallFunction(o7338, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o7339 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 0.5)
  Stream_SetCurrentSpeed(L0.Node, 25, 10)
  CallFunction(o7339, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o7340 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 0.5)
  Stream_SetCurrentSpeed(L0.Node, 25, 10)
  CallFunction(o7340, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o7341 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 0.5)
  Stream_SetCurrentSpeed(L0.Node, 25, 10)
  CallFunction(o7341, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o7342 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 0.5)
  Stream_SetCurrentSpeed(L0.Node, 25, 10)
  CallFunction(o7342, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o7343 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7343, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7343, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7343, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o7343, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7343, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7343, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o7348.SetStateValue(L1)
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
o7348 = { [nil] = {}, Start = function()
  o7348["Value"] = False
  o7374.StartCalculate()
  o7447.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7348.Value == L0) then
    o7348["Value"] = L0
    o7374.ReCalculate()
    o7447.ReCalculate()
  end
end }
S_o7349 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7349, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7349, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7349, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o7349, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7349, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7349, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o7354.SetStateValue(L1)
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
o7354 = { [nil] = {}, Start = function()
  o7354["Value"] = False
  o7376.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7354.Value == L0) then
    o7354["Value"] = L0
    o7376.ReCalculate()
  end
end }
S_o7355 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_vendetta2", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_shell", 9999)
  CallFunction(o7355, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
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
o7369 = { [nil] = {}, GetCalculated = function()
  if not (o7411.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7369.SetStateValue(o7369.GetCalculated())
end, StartCalculate = function()
  o7369["Value"] = o7369.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
  SED_SetTaskTextKey(2101, 10, 5)
  Game_SetWayPoint(GetGameNode(), o7413.Node)
end, SetStateValue = function(L0)
  if not (o7369.Value == L0) then
    o7369["Value"] = L0
    if not (L0 ~= 1) then
      o7369.ChangeTo1()
    end
  end
end }
o7370 = { [nil] = {}, GetCalculated = function()
  if not (o7416.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7370.SetStateValue(o7370.GetCalculated())
end, StartCalculate = function()
  o7370["Value"] = o7370.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o7418.Node)
end, SetStateValue = function(L0)
  if not (o7370.Value == L0) then
    o7370["Value"] = L0
    if not (L0 ~= 1) then
      o7370.ChangeTo1()
    end
  end
end }
o7371 = { [nil] = {}, GetCalculated = function()
  if not (o7421.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7371.SetStateValue(o7371.GetCalculated())
end, StartCalculate = function()
  o7371["Value"] = o7371.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o7423.Node)
end, SetStateValue = function(L0)
  if not (o7371.Value == L0) then
    o7371["Value"] = L0
    if not (L0 ~= 1) then
      o7371.ChangeTo1()
    end
  end
end }
o7372 = { [nil] = {}, GetCalculated = function()
  if not (o7426.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7372.SetStateValue(o7372.GetCalculated())
end, StartCalculate = function()
  o7372["Value"] = o7372.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  Game_PrimaryObjectiveReached(GetGameNode(), 2, 2000, 2101)
end, SetStateValue = function(L0)
  if not (o7372.Value == L0) then
    o7372["Value"] = L0
    if not (L0 ~= 1) then
      o7372.ChangeTo1()
    end
  end
end }
o7373 = { [nil] = {}, GetCalculated = function()
  if not (o7451.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7373.SetStateValue(o7373.GetCalculated())
end, StartCalculate = function()
  o7373["Value"] = o7373.GetCalculated()
  o7377.StartCalculate()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o7428.Node)
  SED_SetTaskTextKey(2103, 10, 5)
end, SetStateValue = function(L0)
  if not (o7373.Value == L0) then
    DelayedFunction(10, o7373, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7373.Value == L0) then
    o7373["Value"] = L0
    o7377.ReCalculate()
    if not (L0 ~= 1) then
      o7373.ChangeTo1()
    end
  end
end }
o7374 = { [nil] = {}, GetCalculated = function()
  if not (o7348.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7374.SetStateValue(o7374.GetCalculated())
end, StartCalculate = function()
  o7374["Value"] = o7374.GetCalculated()
end, ChangeTo1 = function()
  SetEnemyMatrixElement(2, 0, E)
  SetEnemyMatrixElement(0, 2, E)
  SED_SetTaskTextKey(2102, 10, 5)
end, SetStateValue = function(L0)
  if not (o7374.Value == L0) then
    DelayedFunction(2, o7374, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7374.Value == L0) then
    o7374["Value"] = L0
    if not (L0 ~= 1) then
      o7374.ChangeTo1()
    end
  end
end }
o7375 = { [nil] = {}, GetCalculated = function()
  if not (o7451.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7375.SetStateValue(o7375.GetCalculated())
end, StartCalculate = function()
  o7375["Value"] = o7375.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "Atmo")
  Game_PrimaryObjectiveFailed(GetGameNode(), 3, 2001, 2102)
  SED_SetTaskTextKey(0, -1, -1)
end, SetStateValue = function(L0)
  if not (o7375.Value == L0) then
    DelayedFunction(1, o7375, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7375.Value == L0) then
    o7375["Value"] = L0
    if not (L0 ~= 1) then
      o7375.ChangeTo1()
    end
  end
end }
o7376 = { [nil] = {}, GetCalculated = function()
  if not (o7354.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7376.SetStateValue(o7376.GetCalculated())
end, StartCalculate = function()
  o7376["Value"] = o7376.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o7443.Node, o7355.Node, 2)
end, SetStateValue = function(L0)
  if not (o7376.Value == L0) then
    o7376["Value"] = L0
    if not (L0 ~= 1) then
      o7376.ChangeTo1()
    end
  end
end }
o7377 = { [nil] = {}, GetCalculated = function()
  if not (o7373.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7377.SetStateValue(o7377.GetCalculated())
end, StartCalculate = function()
  o7377["Value"] = o7377.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6646.Node, o7355.Node, 5)
  SendRadioMessageTake(o6646.Node, o7355.Node, 6)
  SendRadioMessageTake(o6646.Node, o7355.Node, 7)
  SendRadioMessageTake(o6646.Node, o7355.Node, 8)
  SendRadioMessageTake(o6646.Node, o7355.Node, 9)
  SendRadioMessageTake(o6646.Node, o7355.Node, 10)
  SendRadioMessageTake(o6646.Node, o7355.Node, 11)
end, SetStateValue = function(L0)
  if not (o7377.Value == L0) then
    DelayedFunction(18, o7377, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7377.Value == L0) then
    o7377["Value"] = L0
    if not (L0 ~= 1) then
      o7377.ChangeTo1()
    end
  end
end }
o7378 = { [nil] = {}, GetCalculated = function()
  if not (o7431.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7378.SetStateValue(o7378.GetCalculated())
end, StartCalculate = function()
  o7378["Value"] = o7378.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o7433.Node)
end, SetStateValue = function(L0)
  if not (o7378.Value == L0) then
    o7378["Value"] = L0
    if not (L0 ~= 1) then
      o7378.ChangeTo1()
    end
  end
end }
o7379 = { [nil] = {}, GetCalculated = function()
  if not (o7436.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7379.SetStateValue(o7379.GetCalculated())
end, StartCalculate = function()
  o7379["Value"] = o7379.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o7438.Node)
end, SetStateValue = function(L0)
  if not (o7379.Value == L0) then
    o7379["Value"] = L0
    if not (L0 ~= 1) then
      o7379.ChangeTo1()
    end
  end
end }
o7380 = { [nil] = {}, GetCalculated = function()
  if not (o7441.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7380.SetStateValue(o7380.GetCalculated())
end, StartCalculate = function()
  o7380["Value"] = o7380.GetCalculated()
  o2.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 4, 2000, 2103)
end, SetStateValue = function(L0)
  if not (o7380.Value == L0) then
    o7380["Value"] = L0
    o2.ReCalculate()
    if not (L0 ~= 1) then
      o7380.ChangeTo1()
    end
  end
end }
S_o7408 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), 0)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o7408, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o7411.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7411 = { [nil] = {}, Start = function()
  o7411["Value"] = False
  o7369.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7411.Value == L0) then
    o7411["Value"] = L0
    o7369.ReCalculate()
  end
end }
S_o7413 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), 0)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o7413, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o7416.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7416 = { [nil] = {}, Start = function()
  o7416["Value"] = False
  o7370.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7416.Value == L0) then
    o7416["Value"] = L0
    o7370.ReCalculate()
  end
end }
S_o7418 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), 0)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o7418, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o7421.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7421 = { [nil] = {}, Start = function()
  o7421["Value"] = False
  o7371.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7421.Value == L0) then
    o7421["Value"] = L0
    o7371.ReCalculate()
  end
end }
S_o7423 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), 0)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o7423, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o7426.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7426 = { [nil] = {}, Start = function()
  o7426["Value"] = False
  o7372.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7426.Value == L0) then
    o7426["Value"] = L0
    o7372.ReCalculate()
  end
end }
S_o7428 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), 0)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o7428, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o7431.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7431 = { [nil] = {}, Start = function()
  o7431["Value"] = False
  o7378.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7431.Value == L0) then
    o7431["Value"] = L0
    o7378.ReCalculate()
  end
end }
S_o7433 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), 0)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o7433, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o7436.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7436 = { [nil] = {}, Start = function()
  o7436["Value"] = False
  o7379.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7436.Value == L0) then
    o7436["Value"] = L0
    o7379.ReCalculate()
  end
end }
S_o7438 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), 0)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o7438, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o7441.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7441 = { [nil] = {}, Start = function()
  o7441["Value"] = False
  o7380.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7441.Value == L0) then
    o7441["Value"] = L0
    o7380.ReCalculate()
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
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7443, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o7443, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7443, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  SendRadioMessageTake(o7443.Node, o7355.Node, 3)
  ShieldedBody_SetShieldBarrier(L0.Node, 0.5, 0.25)
  CallFunction(o7443, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "pla", "", "", "", 1, "Code8")
  else
    CallFunction(o7443, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  ShieldedBody_SetLogarithmicMode(L0.Node)
  SendRadioMessageTake(o7443.Node, o7355.Node, 4)
  CallFunction(o7443, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/PiratEscapePath", 1, 1 } }("Code11")
  else
    CallFunction(o7443, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code12")
  else
    CallFunction(o7443, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  SED_SetTaskTextKey(0, -1, -1)
  CallFunction(o7443, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
end, SetStateValue_DipoledOut = function(L0, L1)
  o7451.SetStateValue(L1)
end, SetStateValue_KineticShield75 = function(L0, L1)
  o7455.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o7447.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o7444.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7444 = { [nil] = {}, GetCalculated = function()
  if not (o7455.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7444.SetStateValue(o7444.GetCalculated())
end, StartCalculate = function()
  o7444["Value"] = o7444.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7444.Value == L0) then
    o7444["Value"] = L0
    CallFunction(o7443, "ProcesseStateChange")
  end
end }
o7447 = { [nil] = {}, GetCalculated = function()
  if not (o7348.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7447.SetStateValue(o7447.GetCalculated())
end, StartCalculate = function()
  o7447["Value"] = o7447.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7447.Value == L0) then
    DelayedFunction(3, o7447, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7447.Value == L0) then
    o7447["Value"] = L0
    CallFunction(o7443, "ProcesseStateChange")
  end
end }
o7451 = { [nil] = {}, Start = function()
  o7451["Value"] = False
  o7373.StartCalculate()
  o7375.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7451.Value == L0) then
    o7451["Value"] = L0
    o7373.ReCalculate()
    o7375.ReCalculate()
  end
end }
o7455 = { [nil] = {}, Start = function()
  o7455["Value"] = False
  o7444.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7455.Value == L0) then
    o7455["Value"] = L0
    o7444.ReCalculate()
  end
end }
S_o7501 = { [nil] = {}, Start = function(L0)

end }
S_o7542 = { [nil] = {}, Start = function(L0)

end }
S_o7583 = { [nil] = {}, Start = function(L0)

end }
S_o7624 = { [nil] = {}, Start = function(L0)

end }
S_o7665 = { [nil] = {}, Start = function(L0)

end }
S_o7706 = { [nil] = {}, Start = function(L0)

end }
S_o7747 = { [nil] = {}, Start = function(L0)

end }
S_o7788 = { [nil] = {}, Start = function(L0)

end }
S_o7829 = { [nil] = {}, Start = function(L0)

end }
S_o7870 = { [nil] = {}, Start = function(L0)

end }
S_o7911 = { [nil] = {}, Start = function(L0)

end }
S_o7952 = { [nil] = {}, Start = function(L0)

end }
S_o7993 = { [nil] = {}, Start = function(L0)

end }
S_o8034 = { [nil] = {}, Start = function(L0)

end }
S_o8075 = { [nil] = {}, Start = function(L0)

end }
S_o8116 = { [nil] = {}, Start = function(L0)

end }
S_o8157 = { [nil] = {}, Start = function(L0)

end }
S_o8198 = { [nil] = {}, Start = function(L0)

end }
S_o8239 = { [nil] = {}, Start = function(L0)

end }
S_o8280 = { [nil] = {}, Start = function(L0)

end }
S_o8321 = { [nil] = {}, Start = function(L0)

end }
S_o8362 = { [nil] = {}, Start = function(L0)

end }
S_o8403 = { [nil] = {}, Start = function(L0)

end }
o8405 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o8406 = { [nil] = {}, Start = function(L0)

end }
S_o8407 = { [nil] = {}, Start = function(L0)

end }
S_o8408 = { [nil] = {}, Start = function(L0)

end }
S_o8409 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Agressive")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o8409, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o8409, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  FormationLib.PlaceFormationPath(o8404, o8405, "/IngameScenes/Navigation/PlayerPath")
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_MoveTo(L0.Node, "/IngameScenes/Navigation/LookFrom_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  CallFunction(o8409, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.05, "Code10")
  else
    CallFunction(o8409, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o8404, o8405, "/IngameScenes/Navigation/PlayerPath", "pos_1", "pos_8", 0.6, 1, "Code11")
  else
    CallFunction(o8409, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Director_EndCutscene(L0.Node)
  CallFunction(o8409, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code13")
  else
    CallFunction(o8409, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Game_SetWayPoint(GetGameNode(), o7408.Node)
  SED_SetTaskTextKey(2100, 10, 5)
  CallFunction(o8409, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o8414 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code1")
  else
    CallFunction(o8414, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Camera_LookAt(L0.Node, "/IngameScenes/Navigation/LookAt_2", 6, "MMMN", 0)
  Camera_MoveTo(L0.Node, "/IngameScenes/Navigation/LookFrom_2", 10, "MMMN", 0)
  CallFunction(o8414, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o8417 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 20, "Code1")
  else
    CallFunction(o8417, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o7443.Node, o7355.Node, 1)
  CallFunction(o8417, "Code2")
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
  Game_LoadProgress_Enter(Node_Find("/"), 249)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_1", S_o30)
  o76 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_2", S_o76)
  o122 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_1", S_o122)
  o168 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_1", S_o168)
  o214 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_1", S_o214)
  o260 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_3", S_o260)
  o306 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_1", S_o306)
  o352 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_1", S_o352)
  o398 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_edgering_2", S_o398)
  o444 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_edgering_3", S_o444)
  o490 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_m_1", S_o490)
  o536 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_4", S_o536)
  o582 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_5", S_o582)
  o628 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_6", S_o628)
  o674 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_m_2", S_o674)
  o720 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_2", S_o720)
  o766 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_1", S_o766)
  o812 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_edgering_4", S_o812)
  o858 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_2", S_o858)
  o904 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_2", S_o904)
  o950 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_3", S_o950)
  o996 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_2", S_o996)
  o1042 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_2", S_o1042)
  o1088 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_3", S_o1088)
  o1134 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_3", S_o1134)
  o1180 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_1", S_o1180)
  o1226 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_3", S_o1226)
  o1272 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_1", S_o1272)
  o1318 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_2", S_o1318)
  o1364 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_5", S_o1364)
  o1410 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_8", S_o1410)
  o1456 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_9", S_o1456)
  o1502 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_10", S_o1502)
  o1548 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_11", S_o1548)
  o1594 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_6", S_o1594)
  o1640 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_4", S_o1640)
  o1686 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_7", S_o1686)
  o1732 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_8", S_o1732)
  o1778 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_3", S_o1778)
  o1824 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_4", S_o1824)
  o1870 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_4", S_o1870)
  o1916 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_5", S_o1916)
  o1962 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_001_1", S_o1962)
  o2008 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_001_2", S_o2008)
  o2054 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_001_3", S_o2054)
  o2100 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_001_4", S_o2100)
  o2146 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_002_1", S_o2146)
  o2192 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_002_2", S_o2192)
  o2238 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_002_3", S_o2238)
  o2284 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_003_1", S_o2284)
  o2330 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_003_2", S_o2330)
  o2376 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_003_3", S_o2376)
  o2422 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_003_4", S_o2422)
  o2468 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_001_1", S_o2468)
  o2514 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_ringstone_m_2", S_o2514)
  o2560 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_m_3", S_o2560)
  o2606 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_1", S_o2606)
  o2652 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_9", S_o2652)
  o2698 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_1", S_o2698)
  o2744 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_2", S_o2744)
  o2790 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_2", S_o2790)
  o2836 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_3", S_o2836)
  o2882 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_3", S_o2882)
  o2928 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_10", S_o2928)
  o2974 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_2", S_o2974)
  o3020 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_1", S_o3020)
  o3066 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_6", S_o3066)
  o3112 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_2", S_o3112)
  o3158 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_3", S_o3158)
  o3204 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_11", S_o3204)
  o3250 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_4", S_o3250)
  o3296 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_clunker1_1", S_o3296)
  o3342 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_chimney2_1", S_o3342)
  o3388 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml_1", S_o3388)
  o3434 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_1", S_o3434)
  o3480 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock1_1", S_o3480)
  o3526 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_1", S_o3526)
  o3572 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock3_1", S_o3572)
  o3618 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock3_2", S_o3618)
  o3664 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_big_1", S_o3664)
  o3710 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml_2", S_o3710)
  o3756 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big03_1", S_o3756)
  o3802 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_1", S_o3802)
  o3848 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_2", S_o3848)
  o3894 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock1_2", S_o3894)
  o3940 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock1_3", S_o3940)
  o3986 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock2_1", S_o3986)
  o4032 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock2_2", S_o4032)
  o4078 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock1_4", S_o4078)
  o4124 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_3", S_o4124)
  o4170 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big03_2", S_o4170)
  o4216 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_1", S_o4216)
  o4262 = BindEasy(Node_Find("/Scenario_Static/Object"), "elf_rohr_small01_1", S_o4262)
  o4308 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_2", S_o4308)
  o4354 = BindEasy(Node_Find("/Scenario_Static/Object"), "elf_rohr_small01_2", S_o4354)
  o4400 = BindEasy(Node_Find("/Scenario_Static/Object"), "elf_rohr_small01_3", S_o4400)
  o4446 = BindEasy(Node_Find("/Scenario_Static/Object"), "elf_rohr_small01_4", S_o4446)
  o4492 = BindEasy(Node_Find("/Scenario_Static/Object"), "elf_rohr_small01_5", S_o4492)
  o4538 = BindEasy(Node_Find("/Scenario_Static/Object"), "elf_rohr_small01_6", S_o4538)
  o4584 = BindEasy(Node_Find("/Scenario_Static/Object"), "elf_rohr_small01_7", S_o4584)
  o4630 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_3", S_o4630)
  o4676 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01_raw_1", S_o4676)
  o4722 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element03_raw_1", S_o4722)
  o4768 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element05_raw_1", S_o4768)
  o4814 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element06_raw_1", S_o4814)
  o4860 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_raw1_1", S_o4860)
  o4906 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_raw2_1", S_o4906)
  o4952 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_raw1_2", S_o4952)
  o4998 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_raw2_2", S_o4998)
  o5044 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_geb_add_palace_big_1", S_o5044)
  o5090 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_1/Turm1", S_o5090)
  o5134 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_2/Turm1", S_o5134)
  o5178 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_3/Turm1", S_o5178)
  o5222 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_4/Turm1", S_o5222)
  o5266 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_clunker1_2", S_o5266)
  o5312 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element03_raw_2", S_o5312)
  o5358 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_raw2_3", S_o5358)
  o5404 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_3", S_o5404)
  o5450 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_2", S_o5450)
  o5496 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_12", S_o5496)
  o5542 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_5", S_o5542)
  o5588 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_4", S_o5588)
  o5634 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_4", S_o5634)
  o5680 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_5", S_o5680)
  o5726 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_5", S_o5726)
  o5772 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_3", S_o5772)
  o5818 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_6", S_o5818)
  o5864 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_4", S_o5864)
  o5910 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_4", S_o5910)
  o5956 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_7", S_o5956)
  o6002 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_5", S_o6002)
  o6048 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_4", S_o6048)
  o6094 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_13", S_o6094)
  o6140 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_m_4", S_o6140)
  o6186 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_5", S_o6186)
  o6232 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_7", S_o6232)
  o6278 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_6", S_o6278)
  o6324 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_14", S_o6324)
  o6370 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_7", S_o6370)
  o6416 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_5", S_o6416)
  o6462 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_7", S_o6462)
  o6508 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_4", S_o6508)
  o6554 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_6", S_o6554)
  o6600 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_8", S_o6600)
  o6646 = BindEasy(Node_Find("/Scenario_Static/Object"), "pla_harvester_static_1", S_o6646)
  o6693 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_6", S_o6693)
  o6739 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_3", S_o6739)
  o6785 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_8", S_o6785)
  o6831 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_9", S_o6831)
  o6877 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_4", S_o6877)
  o6923 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_8", S_o6923)
  o6969 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_9", S_o6969)
  o7015 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_6", S_o7015)
  o7061 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_10", S_o7061)
  o7107 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_7", S_o7107)
  o7153 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_8", S_o7153)
  o7199 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_11", S_o7199)
  o7245 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_5", S_o7245)
  o7291 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_8", S_o7291)
  o7337 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_1", S_o7337)
  o7338 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_2", S_o7338)
  o7339 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_3", S_o7339)
  o7340 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_4", S_o7340)
  o7341 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_5", S_o7341)
  o7342 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_6", S_o7342)
  o7343 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Trigger_PiratStart", S_o7343)
  o7348.Start()
  o7349 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Trigger_Message002", S_o7349)
  o7354.Start()
  o7355 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o7355)
  o7408 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1", S_o7408)
  o7411.Start()
  o7413 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1_2", S_o7413)
  o7416.Start()
  o7418 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1_3", S_o7418)
  o7421.Start()
  o7423 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_2", S_o7423)
  o7426.Start()
  o7428 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_2_2", S_o7428)
  o7431.Start()
  o7433 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_2_3", S_o7433)
  o7436.Start()
  o7438 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_3", S_o7438)
  o7441.Start()
  o7443 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_hank_1", S_o7443)
  o7451.Start()
  o7455.Start()
  o7501 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_clunker2_1", S_o7501)
  o7542 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_clunker3_1", S_o7542)
  o7583 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_clunker4_1", S_o7583)
  o7624 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_clunker5_1", S_o7624)
  o7665 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_clunker6_1", S_o7665)
  o7706 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_clunker2_2", S_o7706)
  o7747 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_clunker4_2", S_o7747)
  o7788 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_clunker4_4", S_o7788)
  o7829 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_clunker5_2", S_o7829)
  o7870 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_clunker6_2", S_o7870)
  o7911 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_clunker2_3", S_o7911)
  o7952 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_clunker3_3", S_o7952)
  o7993 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_clunker4_3", S_o7993)
  o8034 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_clunker5_3", S_o8034)
  o8075 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_clunker6_3", S_o8075)
  o8116 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_clunker2_01", S_o8116)
  o8157 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_clunker3_01", S_o8157)
  o8198 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_clunker3_02", S_o8198)
  o8239 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_clunker6_01", S_o8239)
  o8280 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_clunker4_01", S_o8280)
  o8321 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_clunker4_02", S_o8321)
  o8362 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_clunker5_01", S_o8362)
  o8403 = BindEasy(Node_Find("/"), "Camera", S_o8403)
  o8406 = BindEasy(Node_Find("/IngameScenes/Navigation"), "LookFrom_1", S_o8406)
  o8407 = BindEasy(Node_Find("/IngameScenes/Navigation"), "LookAt_2", S_o8407)
  o8408 = BindEasy(Node_Find("/IngameScenes/Navigation"), "LookFrom_2", S_o8408)
  o8409 = BindEasy(Node_Find("/IngameScenes/Director"), "Intro", S_o8409)
  o8414 = BindEasy(Node_Find("/IngameScenes/Director"), "Intro_AddOn", S_o8414)
  o8417 = BindEasy(Node_Find("/IngameScenes/Director"), "Intro_Audio", S_o8417)
  o8404 = { {}, o7355 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
