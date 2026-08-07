-- dekompiliert aus 4h1.sco
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
  Terrain_LoadTerrain(node1, "map/4H1/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/4H1/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/4H1/Lmsh/", "map/4H1/Ltex/")
  Game_SetTerrainDepth(node0, 3267)
  Game_SetDecompressionHeight(node0, 250)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.098039, 0.109804, 0.078431)
  Game_SetParallelLightT(node0, 0.2, 0.219608, 0.156863)
  Game_SetParallelLightB(node0, 0.098039, 0.109804, 0.078431)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_4h1.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_4H1.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_unhancy3.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit3.sam", 1)
  Game_SetNPCHitFactor(node0, 1)
  Game_SetEnvironmentCubeMap(node0, "map/4H1/CubeMap/envcubemap.dds")
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
  node8 = Node_CreateNode("NOD_Directory", "TerrainObjects")
  Node_AddSon(node7, node8)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "ter_claw_l_a")
  Node_AddSon(node8, node9)
  Body_SetCS(node9, MAT_Vector3(1560.766598, 3229.615747, 222.107168), MAT_Vector3(-37.350443, 24.123102, 16.557632))
  Node_ParseIniFile(node9, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "ter_claw_l_b")
  Node_AddSon(node8, node10)
  Body_SetCS(node10, MAT_Vector3(1975.757699, 3191.075956, 198.0267), MAT_Vector3(-21.950049, 40.198419, 11.079987))
  Node_ParseIniFile(node10, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "ter_claw_l_c")
  Node_AddSon(node8, node11)
  Body_SetCS(node11, MAT_Vector3(2443.81921, 3058.264932, 198.0267), MAT_Vector3(-71.786118, 27.655976, 23.752005))
  Node_ParseIniFile(node11, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "ter_claw_l_d")
  Node_AddSon(node8, node12)
  Body_SetCS(node12, MAT_Vector3(1581.853608, 2835.373892, 257.02774), MAT_Vector3(-110.447112, 2.944292, -32.860718))
  Node_ParseIniFile(node12, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "ter_claw_l_e")
  Node_AddSon(node8, node13)
  Body_SetCS(node13, MAT_Vector3(1697.14643, 3186.056825, 209.351382), MAT_Vector3(92.831171, 8.062991, -36.30847))
  Node_ParseIniFile(node13, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "ter_claw_l_f")
  Node_AddSon(node8, node14)
  Body_SetCS(node14, MAT_Vector3(1887.953719, 2849.797651, 203.924716), MAT_Vector3(-80.273991, -4.021188, -31.346566))
  Node_ParseIniFile(node14, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "ter_claw_l_g")
  Node_AddSon(node8, node15)
  Body_SetCS(node15, MAT_Vector3(2211.953084, 3139.222821, 222.1072), MAT_Vector3(-22.940707, 33.338495, 18.126936))
  Node_ParseIniFile(node15, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "ter_claw_s_h")
  Node_AddSon(node8, node16)
  Body_SetCS(node16, MAT_Vector3(2089.740569, 2841.289213, 255.1482), MAT_Vector3(-127.264786, 12.758344, -31.706115))
  Node_ParseIniFile(node16, "osd/ter/ter_claw_s_01.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "ter_claw_s_i")
  Node_AddSon(node8, node17)
  Body_SetCS(node17, MAT_Vector3(2227.056153, 2790.812902, 196.918381), MAT_Vector3(145.520063, 13.976903, -11.886816))
  Node_ParseIniFile(node17, "osd/ter/ter_claw_s_02.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "ter_claw_l_j")
  Node_AddSon(node8, node18)
  Body_SetCS(node18, MAT_Vector3(2409.021776, 2644.374057, 194.013296), MAT_Vector3(-59.686423, -26.464156, -25.587584))
  Node_ParseIniFile(node18, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "ter_claw_l_k")
  Node_AddSon(node8, node19)
  Body_SetCS(node19, MAT_Vector3(2672.364852, 2758.315223, 212.174084), MAT_Vector3(-83.906243, 40.251822, -2.049685))
  Node_ParseIniFile(node19, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "ter_claw_l_01_1")
  Node_AddSon(node8, node20)
  Body_SetCS(node20, MAT_Vector3(694.466652, 2701.199086, 87.001363), MAT_Vector3(54.890127, 0, 0))
  Node_ParseIniFile(node20, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "ter_claw_l_01_1a")
  Node_AddSon(node8, node21)
  Body_SetCS(node21, MAT_Vector3(1060.981523, 2822.055288, 88.107398), MAT_Vector3(-5.104109, 0, 0))
  Node_ParseIniFile(node21, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "ter_claw_l_01_2")
  Node_AddSon(node8, node22)
  Body_SetCS(node22, MAT_Vector3(2587.788636, 2973.009445, 213.365323), MAT_Vector3(-74.770677, 28.41883, 5.413165))
  Node_ParseIniFile(node22, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "ter_claw_l_01_2a")
  Node_AddSon(node8, node23)
  Body_SetCS(node23, MAT_Vector3(1053.446353, 2800.516046, 94.959538), MAT_Vector3(-14.557713, 17.638894, -5.293022))
  Node_ParseIniFile(node23, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "ter_claw_l_02_1")
  Node_AddSon(node8, node24)
  Body_SetCS(node24, MAT_Vector3(1899.681049, 3040.075846, 78.0769), MAT_Vector3(-89.995494, 0, 0))
  Node_ParseIniFile(node24, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "ter_claw_s_01_1")
  Node_AddSon(node8, node25)
  Body_SetCS(node25, MAT_Vector3(689.731289, 2725.602122, 97.84584), MAT_Vector3(-178.760643, 0, 0))
  Node_ParseIniFile(node25, "osd/ter/ter_claw_s_01.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "ter_claw_s_01_1b")
  Node_AddSon(node8, node26)
  Body_SetCS(node26, MAT_Vector3(514.723523, 2537.030789, 112.65548), MAT_Vector3(-17.615234, 10.797578, 1.302246))
  Node_ParseIniFile(node26, "osd/ter/ter_claw_s_01.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "ter_claw_s_01_1c")
  Node_AddSon(node8, node27)
  Body_SetCS(node27, MAT_Vector3(509.948355, 2506.217699, 115.253038), MAT_Vector3(-49.992587, 9.761648, -19.583446))
  Node_ParseIniFile(node27, "osd/ter/ter_claw_s_01.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "ter_claw_s_01_2")
  Node_AddSon(node8, node28)
  Body_SetCS(node28, MAT_Vector3(1266.198332, 2972.215282, 16.993155), MAT_Vector3(-24.653306, 49.126364, 9.181516))
  Node_ParseIniFile(node28, "osd/ter/ter_claw_s_01.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "ter_claw_s_02_1")
  Node_AddSon(node8, node29)
  Body_SetCS(node29, MAT_Vector3(669.692226, 2699.912484, 96.363561), MAT_Vector3(-59.176561, 0, 0))
  Node_ParseIniFile(node29, "osd/ter/ter_claw_s_02.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "ter_claw_s_02_1a")
  Node_AddSon(node8, node30)
  Body_SetCS(node30, MAT_Vector3(519.012971, 2510.814444, 115.985759), MAT_Vector3(46.797023, 0, 0))
  Node_ParseIniFile(node30, "osd/ter/ter_claw_s_02.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "ter_claw_s_02_2")
  Node_AddSon(node8, node31)
  Body_SetCS(node31, MAT_Vector3(1222.831627, 2816.134716, 63.050072), MAT_Vector3(-146.800427, -3.103609, 2.274313))
  Node_ParseIniFile(node31, "osd/ter/ter_claw_s_02.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "ter_claw_s_01_3")
  Node_AddSon(node8, node32)
  Body_SetCS(node32, MAT_Vector3(1040.984858, 2779.713799, 95.657578), MAT_Vector3(-32.910422, 23.322904, 0.766959))
  Node_ParseIniFile(node32, "osd/ter/ter_claw_s_01.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "pla_harvester_1")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(1697.979, 1524.974, 254.2953), MAT_Vector3(-94.49394, 0, 0))
  Node_ParseIniFile(node33, "osd/pla/pla_harvester.osd")
  Body_SetFriendOrFoeID(node33, 2)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("NOD_Directory", "Pipes")
  Node_AddSon(node7, node34)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "gen_rohr_small02_1")
  Node_AddSon(node34, node35)
  Body_SetCS(node35, MAT_Vector3(2857.262, 2070.539, 108.5342), MAT_Vector3(-76.20154, 0, 0))
  Node_ParseIniFile(node35, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_rohr_small02_2")
  Node_AddSon(node34, node36)
  Body_SetCS(node36, MAT_Vector3(2827.379542, 2002.611068, 108.5342), MAT_Vector3(-151.857593, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "gen_rohr_small03_1")
  Node_AddSon(node34, node37)
  Body_SetCS(node37, MAT_Vector3(2784.716, 2187.418, 112.0911), MAT_Vector3(-11.82146, 0, 0))
  Node_ParseIniFile(node37, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "gen_rohr_small03_2")
  Node_AddSon(node34, node38)
  Body_SetCS(node38, MAT_Vector3(2869.333, 2178.702, 108.8504), MAT_Vector3(-29.67993, 0, 0))
  Node_ParseIniFile(node38, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_rohr_small03_3")
  Node_AddSon(node34, node39)
  Body_SetCS(node39, MAT_Vector3(2891.95, 2411.485, 100.5794), MAT_Vector3(-38.59882, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_rohr_small03_4")
  Node_AddSon(node34, node40)
  Body_SetCS(node40, MAT_Vector3(3046.457, 2289.31, 108.2927), MAT_Vector3(-52.17451, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_rohr_small03_5")
  Node_AddSon(node34, node41)
  Body_SetCS(node41, MAT_Vector3(3340.478, 2395.147, 105.3986), MAT_Vector3(-56.48452, -0.058048, 0.783768))
  Node_ParseIniFile(node41, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_rohr_small03_6")
  Node_AddSon(node34, node42)
  Body_SetCS(node42, MAT_Vector3(3318.9, 2348.437, 101.7852), MAT_Vector3(-55.49538, 0, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "cra_dock_1")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(3483.363448, 2486.475079, 18.505363), MAT_Vector3(-154.545957, 0, 0))
  Node_ParseIniFile(node43, "osd/cra/cra_dock.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "cra_shelter_1")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(3292.091433, 2217.894633, 103.430131), MAT_Vector3(38.853293, 0, 0))
  Node_ParseIniFile(node44, "osd/cra/cra_shelter.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "cra_beacon_1")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(2666.959504, 2615.00781, 97.151931), MAT_Vector3(-142.01172, 0, 0))
  Node_ParseIniFile(node45, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "cra_beacon_2")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(2543.875358, 2529.427293, 97.15193), MAT_Vector3(-142.964491, 0, 0))
  Node_ParseIniFile(node46, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "cra_wblock3a_01_1")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(2956.306367, 2043.008739, 106.901168), MAT_Vector3(-55, -10, 0))
  Node_ParseIniFile(node47, "osd/cra/cra_wblock3a_01.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "cra_wblock3a_raw_1")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(3148.281004, 2178.818344, 104.256969), MAT_Vector3(-48.266912, -0.16599, 0.002095))
  Node_ParseIniFile(node48, "osd/cra/cra_wblock3a_raw.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "cra_wblock3b_01_1")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(3087.06734, 2063.002388, 110), MAT_Vector3(-58.235493, 0, 0))
  Node_ParseIniFile(node49, "osd/cra/cra_wblock3b_01.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "cra_wblock3b_01_2")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(2945.987615, 2264.347078, 104.42157), MAT_Vector3(35.632147, -12, 0))
  Node_ParseIniFile(node50, "osd/cra/cra_wblock3b_01.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "cra_gangway02_1")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(3142.486627, 2101.824883, 123.676272), MAT_Vector3(-54.144451, 0, 0))
  Node_ParseIniFile(node51, "osd/cra/cra_gangway02.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "cra_gangway02_2")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(3059.899567, 2194.866199, 123.6763), MAT_Vector3(125.399791, 0, 0))
  Node_ParseIniFile(node52, "osd/cra/cra_gangway02.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "cra_gangway02_3")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(2959.892238, 2122.702792, 123.6763), MAT_Vector3(-54.14445, 0, 0))
  Node_ParseIniFile(node53, "osd/cra/cra_gangway02.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "cra_gangway02_4")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(3044.632427, 2030.361114, 123.6763), MAT_Vector3(125.326495, 0, 0))
  Node_ParseIniFile(node54, "osd/cra/cra_gangway02.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "cra_metalblock1_1")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(3400.484997, 2444.233686, 46.594409), MAT_Vector3(83.705934, 0, 0))
  Node_ParseIniFile(node55, "osd/cra/cra_metalblock1.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "cra_metalblock2_1")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(3344.649803, 2456.554378, 50.487871), MAT_Vector3(74.901382, 0, 0))
  Node_ParseIniFile(node56, "osd/cra/cra_metalblock2.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "cra_gangway02_5")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(3157.173592, 2263.290967, 108.5927), MAT_Vector3(-55.08452, -25, 0))
  Node_ParseIniFile(node57, "osd/cra/cra_gangway02.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "cra_gangway03_1")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(3184.207729, 2510.200913, 132.453887), MAT_Vector3(-179.875577, 0, 0))
  Node_ParseIniFile(node58, "osd/cra/cra_gangway03.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "cra_gangway03_2")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(3138.520653, 2493.731317, 132.4539), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node59, "osd/cra/cra_gangway03.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "cra_gangway03_3")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(3160.5239, 2465.442947, 132.4539), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node60, "osd/cra/cra_gangway03.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "cra_gangway03_4")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(3400.995664, 2295.761751, 124.901236), MAT_Vector3(-50.044237, 0, 0))
  Node_ParseIniFile(node61, "osd/cra/cra_gangway03.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "cra_metalblock3_1")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(3139.023743, 2319.171644, 118.392364), MAT_Vector3(0.520181, 0, 0))
  Node_ParseIniFile(node62, "osd/cra/cra_metalblock3.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "cra_metalblock1_2")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(2790.399041, 2373.184257, 118.017007), MAT_Vector3(49.007045, 0, 0))
  Node_ParseIniFile(node63, "osd/cra/cra_metalblock1.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "cra_metalblock3_2")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(2771.109706, 2109.436347, 128.797414), MAT_Vector3(-160.608066, 0, 0))
  Node_ParseIniFile(node64, "osd/cra/cra_metalblock3.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "cra_metalblock2_2")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(2919.507774, 2458.985148, 108.848978), MAT_Vector3(100.767403, 0, 0))
  Node_ParseIniFile(node65, "osd/cra/cra_metalblock2.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "cra_trafo_des_1")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(2686.909582, 2064.528202, 110.042699), MAT_Vector3(18.486139, 5, 0))
  Node_ParseIniFile(node66, "osd/cra/cra_trafo_des.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "cra_trafo_des_2")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(2691.415337, 2050.839418, 110.333781), MAT_Vector3(18.48614, 0, 10))
  Node_ParseIniFile(node67, "osd/cra/cra_trafo_des.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "cra_trafo_des_3")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(2696.305057, 2037.082486, 109.309624), MAT_Vector3(18.48614, -10, -2))
  Node_ParseIniFile(node68, "osd/cra/cra_trafo_des.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_turret", "cra_turret_1")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(2617.302001, 2676.721295, 132.88392), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node69, "osd/cra/cra_turret.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_turret", "cra_turret_2")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(2571.222098, 2494.995748, 132.88392), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node70, "osd/cra/cra_turret.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_turret", "cra_turret_3")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(2557.379363, 2510.229058, 133.185165), MAT_Vector3(-81.929237, 0, 0))
  Node_ParseIniFile(node71, "osd/cra/cra_turret.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_turret", "cra_turret_4")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(2691.992655, 2579.53988, 133.260685), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node72, "osd/cra/cra_turret.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_turret", "cra_turret_5")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(2885.827285, 2547.740086, 94.557073), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node73, "osd/cra/cra_turret.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_turret", "cra_turret_6")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(2806.474588, 2373.420863, 106.238898), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node74, "osd/cra/cra_turret.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_turret", "cra_torptower_1")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(3294.949051, 2436.173174, 101.36867), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node75, "osd/cra/cra_torptower.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_turret", "cra_torptower_2")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(2577.098534, 2786.871384, 87.521798), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node76, "osd/cra/cra_torptower.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_turret", "cra_torptower_3")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(2430.145036, 2728.728584, 119.628503), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node77, "osd/cra/cra_torptower.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "cra_metalblock1_3")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(2852.134578, 1866.478602, 129.408785), MAT_Vector3(-157.651385, 0, 0))
  Node_ParseIniFile(node78, "osd/cra/cra_metalblock1.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_fx_sky", "fx_sky_4H1_1")
  Node_AddSon(node7, node79)
  Node_ParseIniFile(node79, "osd/fx_sky/fx_sky_4H1.osd")
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_fx_rays", "fx_rays_4H1_1")
  Node_AddSon(node7, node80)
  Node_ParseIniFile(node80, "osd/fx_rays/fx_rays_4H1.osd")
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_fx_flare", "fx_flare_4H1_1")
  Node_AddSon(node7, node81)
  Node_ParseIniFile(node81, "osd/fx_flare/fx_flare_4H1.osd")
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_fx_plankton", "fx_plankton_green_n_1")
  Node_AddSon(node7, node82)
  Node_ParseIniFile(node82, "osd/fx_plankton/fx_plankton_green_n.osd")
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_fx_plant", "org_grass_l_1")
  Node_AddSon(node7, node83)
  Node_ParseIniFile(node83, "osd/fx_plant/org_grass_l.osd")
  FX_Plant_SetMap(node83, "map/4H1/Terrain/org_grass_l.tga")
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node7, node84)
  Node_ParseIniFile(node84, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node84, "map/4H1/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node7, node85)
  Node_ParseIniFile(node85, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node85, "map/4H1/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node86)
  Node_ParseIniFile(node86, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node86, "map/4H1/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_fx_plant", "org_seetang_1")
  Node_AddSon(node7, node87)
  Node_ParseIniFile(node87, "osd/fx_plant/org_seetang.osd")
  FX_Plant_SetMap(node87, "map/4H1/Terrain/org_seetang.tga")
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
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
  node91 = Node_CreateNode("NOD_Path", "AnimalPath_1")
  Node_AddSon(node90, node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node91, node92)
  Position_SetPosition(node92, MAT_Vector3(1458.721411, 1701.376122, 250.570973))
  Position_SetRadius(node92, 5)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node91, node93)
  Position_SetPosition(node93, MAT_Vector3(1310.492081, 1780.76792, 272.022213))
  Position_SetRadius(node93, 5)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node91, node94)
  Position_SetPosition(node94, MAT_Vector3(977.638376, 1924.99756, 213.930481))
  Position_SetRadius(node94, 5)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node91, node95)
  Position_SetPosition(node95, MAT_Vector3(856.640374, 1958.622325, 202.506947))
  Position_SetRadius(node95, 5)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node91, node96)
  Position_SetPosition(node96, MAT_Vector3(815.363062, 2019.659288, 187.865074))
  Position_SetRadius(node96, 5)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node91, node97)
  Position_SetPosition(node97, MAT_Vector3(759.223037, 2242.060485, 182.065135))
  Position_SetRadius(node97, 5)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node91, node98)
  Position_SetPosition(node98, MAT_Vector3(812.53862, 2358.052884, 177.54532))
  Position_SetRadius(node98, 5)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("NOD_Position", "pos_18")
  Node_AddSon(node91, node99)
  Position_SetPosition(node99, MAT_Vector3(873.339967, 2400.363566, 183.439966))
  Position_SetRadius(node99, 5)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node91, node100)
  Position_SetPosition(node100, MAT_Vector3(921.305631, 2514.90572, 180.31131))
  Position_SetRadius(node100, 5)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node91, node101)
  Position_SetPosition(node101, MAT_Vector3(1052.60399, 2678.23354, 201.29223))
  Position_SetRadius(node101, 5)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node91, node102)
  Position_SetPosition(node102, MAT_Vector3(1125.613376, 2842.531916, 229.171384))
  Position_SetRadius(node102, 5)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node91, node103)
  Position_SetPosition(node103, MAT_Vector3(1169.100929, 3106.5391, 127.706279))
  Position_SetRadius(node103, 5)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node91, node104)
  Position_SetPosition(node104, MAT_Vector3(1287.709553, 3169.336678, 156.635396))
  Position_SetRadius(node104, 5)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node91, node105)
  Position_SetPosition(node105, MAT_Vector3(1433.669267, 3165.784896, 140.799376))
  Position_SetRadius(node105, 5)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node91, node106)
  Position_SetPosition(node106, MAT_Vector3(1591.702538, 3095.435686, 149.787408))
  Position_SetRadius(node106, 5)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("NOD_Position", "pos_19")
  Node_AddSon(node91, node107)
  Position_SetPosition(node107, MAT_Vector3(1694.203864, 3097.564593, 178.07234))
  Position_SetRadius(node107, 5)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node91, node108)
  Position_SetPosition(node108, MAT_Vector3(1813.035914, 3135.816213, 135.783716))
  Position_SetRadius(node108, 5)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node91, node109)
  Position_SetPosition(node109, MAT_Vector3(1974.371024, 3101.33958, 136.953866))
  Position_SetRadius(node109, 5)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node91, node110)
  Position_SetPosition(node110, MAT_Vector3(2102.843541, 3069.08648, 110.948805))
  Position_SetRadius(node110, 5)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("NOD_Path", "CraPath_1")
  Node_AddSon(node90, node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node111, node112)
  Position_SetPosition(node112, MAT_Vector3(2862.304664, 2472.303441, 190.185167))
  Position_SetRadius(node112, 5)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node111, node113)
  Position_SetPosition(node113, MAT_Vector3(2758.432715, 2486.235944, 149.387087))
  Position_SetRadius(node113, 5)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node111, node114)
  Position_SetPosition(node114, MAT_Vector3(2669.124382, 2552.613667, 177.256669))
  Position_SetRadius(node114, 5)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node111, node115)
  Position_SetPosition(node115, MAT_Vector3(2601.952806, 2628.259414, 192.588832))
  Position_SetRadius(node115, 5)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node111, node116)
  Position_SetPosition(node116, MAT_Vector3(2496.599057, 2731.277883, 121.291944))
  Position_SetRadius(node116, 5)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node111, node117)
  Position_SetPosition(node117, MAT_Vector3(2407.053123, 2855.606709, 154.669985))
  Position_SetRadius(node117, 5)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node111, node118)
  Position_SetPosition(node118, MAT_Vector3(2321.463397, 2934.367431, 159.898543))
  Position_SetRadius(node118, 5)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node111, node119)
  Position_SetPosition(node119, MAT_Vector3(2183.051418, 2988.407687, 156.644806))
  Position_SetRadius(node119, 5)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node111, node120)
  Position_SetPosition(node120, MAT_Vector3(1963.906998, 2995.277794, 165.458252))
  Position_SetRadius(node120, 5)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node111, node121)
  Position_SetPosition(node121, MAT_Vector3(1804.065847, 3034.985826, 141.049971))
  Position_SetRadius(node121, 5)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node111, node122)
  Position_SetPosition(node122, MAT_Vector3(1713.633012, 3055.734281, 170.119974))
  Position_SetRadius(node122, 5)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node111, node123)
  Position_SetPosition(node123, MAT_Vector3(1431.149641, 3073.842014, 176.901317))
  Position_SetRadius(node123, 5)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_Path", "CraPath_2")
  Node_AddSon(node90, node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node124, node125)
  Position_SetPosition(node125, MAT_Vector3(2874.681781, 2388.743134, 174.586882))
  Position_SetRadius(node125, 5)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node124, node126)
  Position_SetPosition(node126, MAT_Vector3(2785.027385, 2413.12915, 149.3871))
  Position_SetRadius(node126, 5)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node124, node127)
  Position_SetPosition(node127, MAT_Vector3(2653.439636, 2462.806054, 148.9287))
  Position_SetRadius(node127, 5)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node124, node128)
  Position_SetPosition(node128, MAT_Vector3(2575.383588, 2571.131433, 151.1726))
  Position_SetRadius(node128, 5)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node124, node129)
  Position_SetPosition(node129, MAT_Vector3(2548.021427, 2683.495498, 192.987608))
  Position_SetRadius(node129, 5)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node124, node130)
  Position_SetPosition(node130, MAT_Vector3(2418.307, 2797.399, 154.67))
  Position_SetRadius(node130, 5)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node124, node131)
  Position_SetPosition(node131, MAT_Vector3(2331.463, 2894.367, 159.8985))
  Position_SetRadius(node131, 5)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node124, node132)
  Position_SetPosition(node132, MAT_Vector3(2193.051, 2948.408, 156.6448))
  Position_SetRadius(node132, 5)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node124, node133)
  Position_SetPosition(node133, MAT_Vector3(1973.907, 2955.278, 165.4583))
  Position_SetRadius(node133, 5)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node124, node134)
  Position_SetPosition(node134, MAT_Vector3(1853.558828, 2978.014181, 141.05))
  Position_SetRadius(node134, 5)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node124, node135)
  Position_SetPosition(node135, MAT_Vector3(1723.633, 3015.734, 170.12))
  Position_SetRadius(node135, 5)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node124, node136)
  Position_SetPosition(node136, MAT_Vector3(1308.001213, 2996.262141, 176.9013))
  Position_SetRadius(node136, 5)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("NOD_PatrolArea", "StaPatrolArea_1")
  Node_AddSon(node90, node137)
  PatrolArea_SetPosition(node137, MAT_Vector3(2932.693266, 2316.367942, 174.81123))
  PatrolArea_SetRadius(node137, 512)
  PatrolArea_SetMinZ(node137, -70)
  PatrolArea_SetMaxZ(node137, 70)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("NOD_PatrolArea", "StaPatrolArea_2")
  Node_AddSon(node90, node138)
  PatrolArea_SetPosition(node138, MAT_Vector3(2844.466325, 2113.903614, 178.65796))
  PatrolArea_SetRadius(node138, 250)
  PatrolArea_SetMinZ(node138, -70)
  PatrolArea_SetMaxZ(node138, 70)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("NOD_PatrolArea", "DockArea")
  Node_AddSon(node90, node139)
  PatrolArea_SetPosition(node139, MAT_Vector3(3341.934587, 2401.304761, 158.324045))
  PatrolArea_SetRadius(node139, 50)
  PatrolArea_SetMinZ(node139, -20)
  PatrolArea_SetMaxZ(node139, 20)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("NOD_Path", "ApproachPath")
  Node_AddSon(node90, node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node140, node141)
  Position_SetPosition(node141, MAT_Vector3(3351.27611, 2420.477352, 186.341288))
  Position_SetRadius(node141, 5)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node140, node142)
  Position_SetPosition(node142, MAT_Vector3(3258.427262, 2412.073582, 190.868455))
  Position_SetRadius(node142, 5)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Path", "DockPath")
  Node_AddSon(node90, node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node143, node144)
  Position_SetPosition(node144, MAT_Vector3(3368.741649, 2420.211888, 160))
  Position_SetRadius(node144, 5)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node143, node145)
  Position_SetPosition(node145, MAT_Vector3(3447.800529, 2469.750779, 161))
  Position_SetRadius(node145, 5)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Path", "AnimalPath_2")
  Node_AddSon(node90, node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node146, node147)
  Position_SetPosition(node147, MAT_Vector3(2175.856064, 3013.531272, 179.608734))
  Position_SetRadius(node147, 5)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node146, node148)
  Position_SetPosition(node148, MAT_Vector3(2368.298217, 2867.205661, 173.535056))
  Position_SetRadius(node148, 5)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node146, node149)
  Position_SetPosition(node149, MAT_Vector3(2534.81931, 2678.97775, 179.576891))
  Position_SetRadius(node149, 5)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node146, node150)
  Position_SetPosition(node150, MAT_Vector3(2749.721043, 2411.324389, 189.128417))
  Position_SetRadius(node150, 5)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node146, node151)
  Position_SetPosition(node151, MAT_Vector3(2830.81469, 2435.727907, 186.006341))
  Position_SetRadius(node151, 5)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_PatrolArea", "StaPatrolArea_3")
  Node_AddSon(node90, node152)
  PatrolArea_SetPosition(node152, MAT_Vector3(2876.244355, 2340.408539, 174.8112))
  PatrolArea_SetRadius(node152, 450)
  PatrolArea_SetMinZ(node152, -70)
  PatrolArea_SetMaxZ(node152, 70)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_PatrolArea", "StaPatrolArea_Turrets")
  Node_AddSon(node90, node153)
  PatrolArea_SetPosition(node153, MAT_Vector3(2565.882006, 2625.239459, 162.069091))
  PatrolArea_SetRadius(node153, 200)
  PatrolArea_SetMinZ(node153, -70)
  PatrolArea_SetMaxZ(node153, 70)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_PatrolArea", "PathPatrolArea_Tanks")
  Node_AddSon(node90, node154)
  PatrolArea_SetPosition(node154, MAT_Vector3(2326.142585, 2922.905665, 162.0691))
  PatrolArea_SetRadius(node154, 200)
  PatrolArea_SetMinZ(node154, -70)
  PatrolArea_SetMaxZ(node154, 120)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_PatrolArea", "PathPatrolArea_Scouts")
  Node_AddSon(node90, node155)
  PatrolArea_SetPosition(node155, MAT_Vector3(1941.212083, 3022.659052, 162.0691))
  PatrolArea_SetRadius(node155, 200)
  PatrolArea_SetMinZ(node155, -70)
  PatrolArea_SetMaxZ(node155, 70)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_PatrolArea", "PathFollowArea_Scouts")
  Node_AddSon(node90, node156)
  PatrolArea_SetPosition(node156, MAT_Vector3(1221.008699, 2888.786798, 162.0691))
  PatrolArea_SetRadius(node156, 1324)
  PatrolArea_SetMinZ(node156, -150)
  PatrolArea_SetMaxZ(node156, 70)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Path", "AngelinaPath_1")
  Node_AddSon(node90, node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node157, node158)
  Position_SetPosition(node158, MAT_Vector3(3232.008514, 2444.902089, 175.225063))
  Position_SetRadius(node158, 5)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node157, node159)
  Position_SetPosition(node159, MAT_Vector3(3089.231025, 2476.346858, 218.919658))
  Position_SetRadius(node159, 5)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node157, node160)
  Position_SetPosition(node160, MAT_Vector3(2915.596632, 2402.07163, 186.553553))
  Position_SetRadius(node160, 5)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node157, node161)
  Position_SetPosition(node161, MAT_Vector3(2785.045571, 2446.854943, 187.923814))
  Position_SetRadius(node161, 5)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node157, node162)
  Position_SetPosition(node162, MAT_Vector3(2638.374091, 2518.265136, 184.05681))
  Position_SetRadius(node162, 5)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node157, node163)
  Position_SetPosition(node163, MAT_Vector3(2555.785398, 2642.270563, 184.231271))
  Position_SetRadius(node163, 5)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node157, node164)
  Position_SetPosition(node164, MAT_Vector3(2505.406112, 2720.402482, 177.080682))
  Position_SetRadius(node164, 5)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node157, node165)
  Position_SetPosition(node165, MAT_Vector3(2435.997065, 2790.018699, 180.275669))
  Position_SetRadius(node165, 5)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node157, node166)
  Position_SetPosition(node166, MAT_Vector3(2351.39402, 2911.298676, 177.276516))
  Position_SetRadius(node166, 5)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node157, node167)
  Position_SetPosition(node167, MAT_Vector3(2250.083982, 2995.977251, 183.018057))
  Position_SetRadius(node167, 5)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node157, node168)
  Position_SetPosition(node168, MAT_Vector3(2135.14197, 3002.259021, 178.469356))
  Position_SetRadius(node168, 5)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node157, node169)
  Position_SetPosition(node169, MAT_Vector3(1937.424779, 2999.906308, 169.195272))
  Position_SetRadius(node169, 5)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node157, node170)
  Position_SetPosition(node170, MAT_Vector3(1709.126228, 3008.845761, 171.858766))
  Position_SetRadius(node170, 5)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node157, node171)
  Position_SetPosition(node171, MAT_Vector3(1329.94799, 3099.108495, 165.218091))
  Position_SetRadius(node171, 5)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node157, node172)
  Position_SetPosition(node172, MAT_Vector3(1143.363361, 2971.174556, 116.41139))
  Position_SetRadius(node172, 5)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node157, node173)
  Position_SetPosition(node173, MAT_Vector3(1004.564948, 2827.493426, 131.356949))
  Position_SetRadius(node173, 5)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node157, node174)
  Position_SetPosition(node174, MAT_Vector3(900.878293, 2714.472671, 144.897989))
  Position_SetRadius(node174, 5)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_Position", "pos_18")
  Node_AddSon(node157, node175)
  Position_SetPosition(node175, MAT_Vector3(848.635514, 2649.26076, 140.976627))
  Position_SetRadius(node175, 5)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_Position", "pos_19")
  Node_AddSon(node157, node176)
  Position_SetPosition(node176, MAT_Vector3(776.901155, 2554.888907, 171.818371))
  Position_SetRadius(node176, 5)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Position", "pos_20")
  Node_AddSon(node157, node177)
  Position_SetPosition(node177, MAT_Vector3(724.961963, 2363.629964, 194.891972))
  Position_SetRadius(node177, 5)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_Position", "pos_21")
  Node_AddSon(node157, node178)
  Position_SetPosition(node178, MAT_Vector3(774.700605, 2215.506752, 196.031013))
  Position_SetRadius(node178, 5)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_Position", "pos_22")
  Node_AddSon(node157, node179)
  Position_SetPosition(node179, MAT_Vector3(804.441119, 2071.303011, 195.669524))
  Position_SetRadius(node179, 5)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_Position", "pos_23")
  Node_AddSon(node157, node180)
  Position_SetPosition(node180, MAT_Vector3(849.751706, 1967.610344, 196.361343))
  Position_SetRadius(node180, 5)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_Position", "pos_24")
  Node_AddSon(node157, node181)
  Position_SetPosition(node181, MAT_Vector3(982.813089, 1930.610361, 213.248902))
  Position_SetRadius(node181, 5)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("NOD_Position", "pos_25")
  Node_AddSon(node157, node182)
  Position_SetPosition(node182, MAT_Vector3(1200.843279, 1830.410045, 243.111866))
  Position_SetRadius(node182, 5)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_Position", "pos_26")
  Node_AddSon(node157, node183)
  Position_SetPosition(node183, MAT_Vector3(1463.768316, 1790.141901, 238.315144))
  Position_SetRadius(node183, 5)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_PatrolArea", "Escort_PatrolArea_1")
  Node_AddSon(node90, node184)
  PatrolArea_SetPosition(node184, MAT_Vector3(0, 0, 0))
  PatrolArea_SetRadius(node184, 512)
  PatrolArea_SetMinZ(node184, -100)
  PatrolArea_SetMaxZ(node184, 100)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_PatrolArea", "Animal_PatrolArea_1")
  Node_AddSon(node90, node185)
  PatrolArea_SetPosition(node185, MAT_Vector3(1637.791621, 3066.654235, 135.08819))
  PatrolArea_SetRadius(node185, 500)
  PatrolArea_SetMinZ(node185, -100)
  PatrolArea_SetMaxZ(node185, 100)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_PatrolArea", "Harvester_DockArea_1")
  Node_AddSon(node90, node186)
  PatrolArea_SetPosition(node186, MAT_Vector3(1553.52494, 1792.930767, 230))
  PatrolArea_SetRadius(node186, 50)
  PatrolArea_SetMinZ(node186, -20)
  PatrolArea_SetMaxZ(node186, 20)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_Path", "Harvester_DockPath_1")
  Node_AddSon(node90, node187)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node187, node188)
  Position_SetPosition(node188, MAT_Vector3(1512.492061, 1662.281, 231.249555))
  Position_SetRadius(node188, 5)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node187, node189)
  Position_SetPosition(node189, MAT_Vector3(1506.053186, 1608.814686, 231.005541))
  Position_SetRadius(node189, 5)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Path", "Harvester_ApproachPath_1")
  Node_AddSon(node90, node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node190, node191)
  Position_SetPosition(node191, MAT_Vector3(1491.553077, 1757.598595, 231.43764))
  Position_SetRadius(node191, 5)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node190, node192)
  Position_SetPosition(node192, MAT_Vector3(1512.987603, 1700.888153, 230.941534))
  Position_SetRadius(node192, 5)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_PatrolArea", "Harvester_PatrolArea_1")
  Node_AddSon(node90, node193)
  PatrolArea_SetPosition(node193, MAT_Vector3(1297.773357, 1740.130729, 200.646108))
  PatrolArea_SetRadius(node193, 150)
  PatrolArea_SetMinZ(node193, -50)
  PatrolArea_SetMaxZ(node193, 50)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_PatrolArea", "CraGuardPatrolArea_1")
  Node_AddSon(node90, node194)
  PatrolArea_SetPosition(node194, MAT_Vector3(784.273149, 2165.672177, 227.392797))
  PatrolArea_SetRadius(node194, 50)
  PatrolArea_SetMinZ(node194, -20)
  PatrolArea_SetMaxZ(node194, 20)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Path", "BonusPath_1")
  Node_AddSon(node90, node195)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node195, node196)
  Position_SetPosition(node196, MAT_Vector3(312.138656, 2720.705701, 144.459715))
  Position_SetRadius(node196, 5)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node195, node197)
  Position_SetPosition(node197, MAT_Vector3(426.834025, 2744.690945, 182.514759))
  Position_SetRadius(node197, 5)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node195, node198)
  Position_SetPosition(node198, MAT_Vector3(510.348408, 2763.402744, 218.708335))
  Position_SetRadius(node198, 5)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node195, node199)
  Position_SetPosition(node199, MAT_Vector3(667.672534, 2793.599097, 178.276283))
  Position_SetRadius(node199, 5)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node195, node200)
  Position_SetPosition(node200, MAT_Vector3(802.735708, 2838.061998, 180.721404))
  Position_SetRadius(node200, 5)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node195, node201)
  Position_SetPosition(node201, MAT_Vector3(891.671224, 2876.821865, 179.169316))
  Position_SetRadius(node201, 5)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node195, node202)
  Position_SetPosition(node202, MAT_Vector3(986.552504, 2919.236126, 168.369042))
  Position_SetRadius(node202, 5)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node195, node203)
  Position_SetPosition(node203, MAT_Vector3(1099.530238, 2954.94357, 164.291202))
  Position_SetRadius(node203, 5)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node195, node204)
  Position_SetPosition(node204, MAT_Vector3(1227.00355, 3020.509548, 97.226785))
  Position_SetRadius(node204, 5)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node195, node205)
  Position_SetPosition(node205, MAT_Vector3(1349.610955, 3059.260521, 148.229267))
  Position_SetRadius(node205, 5)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node195, node206)
  Position_SetPosition(node206, MAT_Vector3(1615.058185, 3056.646359, 174.34124))
  Position_SetRadius(node206, 5)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node195, node207)
  Position_SetPosition(node207, MAT_Vector3(1804.392973, 3093.587118, 166.076616))
  Position_SetRadius(node207, 5)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node195, node208)
  Position_SetPosition(node208, MAT_Vector3(1970.2346, 3100.202796, 180.698843))
  Position_SetRadius(node208, 5)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node195, node209)
  Position_SetPosition(node209, MAT_Vector3(2174.20417, 3042.536109, 180.279881))
  Position_SetRadius(node209, 5)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node195, node210)
  Position_SetPosition(node210, MAT_Vector3(2275.895103, 2970.354535, 172.669605))
  Position_SetRadius(node210, 5)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node195, node211)
  Position_SetPosition(node211, MAT_Vector3(2385.898489, 2840.121061, 183.56365))
  Position_SetRadius(node211, 5)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node195, node212)
  Position_SetPosition(node212, MAT_Vector3(2531.881074, 2677.865842, 179.355792))
  Position_SetRadius(node212, 5)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("NOD_Position", "pos_18")
  Node_AddSon(node195, node213)
  Position_SetPosition(node213, MAT_Vector3(2647.404513, 2514.366702, 186.979777))
  Position_SetRadius(node213, 5)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("NOD_Position", "pos_19")
  Node_AddSon(node195, node214)
  Position_SetPosition(node214, MAT_Vector3(2771.628997, 2420.488728, 188.292067))
  Position_SetRadius(node214, 5)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node88, node215)
  Node_EnterSimulation(node215)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node88, node216)
  Node_EnterSimulation(node216)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("NOD_Trigger", "AnimalTriggerPresence_1")
  Node_AddSon(node216, node217)
  Body_SetFriendOrFoeID(node217, 0)
  Body_SetPosition(node217, MAT_Vector3(2102.764595, 3069.479567, 142.608426))
  Trigger_SetPresenceSphere(node217, 50)
  Node_EnterSimulation(node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("NOD_Trigger", "Sniper2TriggerVisibility")
  Node_AddSon(node216, node218)
  Body_SetFriendOrFoeID(node218, 0)
  Body_SetPosition(node218, MAT_Vector3(3171.003422, 2163.004722, 185.86756))
  Trigger_SetVisibilityCone(node218, MAT_Vector3(-41.662717, 0, 0), 450, 15)
  Trigger_SetVisibilityBlockingStatus(node218, 1)
  Node_EnterSimulation(node218)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("NOD_Trigger", "Sniper2TriggerAcousticBox")
  Node_AddSon(node216, node219)
  Body_SetFriendOrFoeID(node219, 0)
  Body_SetCS(node219, MAT_Vector3(3168.077836, 2158.932407, 195.797885), MAT_Vector3(34.944957, 0, 0))
  Trigger_SetBoxMode(node219, 40, 40, 40)
  Node_EnterSimulation(node219)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("NOD_Trigger", "Sniper1TriggerVisibility")
  Node_AddSon(node216, node220)
  Body_SetFriendOrFoeID(node220, 0)
  Body_SetPosition(node220, MAT_Vector3(2837.018445, 1936.549798, 206.963258))
  Trigger_SetVisibilityCone(node220, MAT_Vector3(49.087078, -20, 0), 450, 15)
  Trigger_SetVisibilityBlockingStatus(node220, 1)
  Node_EnterSimulation(node220)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("NOD_Trigger", "Sniper1TriggerAcousticBox")
  Node_AddSon(node216, node221)
  Body_SetFriendOrFoeID(node221, 0)
  Body_SetCS(node221, MAT_Vector3(2842.58913, 1928.114755, 202.602157), MAT_Vector3(34.94496, 0, 0))
  Trigger_SetBoxMode(node221, 40, 40, 40)
  Node_EnterSimulation(node221)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("NOD_Trigger", "Angelina_TriggerPresence_1")
  Node_AddSon(node216, node222)
  Body_SetFriendOrFoeID(node222, 0)
  Body_SetPosition(node222, MAT_Vector3(3369.38531, 2419.730686, 164.782462))
  Trigger_SetPresenceSphere(node222, 30)
  Node_EnterSimulation(node222)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("NOD_Trigger", "Angelina_TriggerPresenceBox_1")
  Node_AddSon(node216, node223)
  Body_SetFriendOrFoeID(node223, 0)
  Body_SetCS(node223, MAT_Vector3(2784.394671, 2447.737141, 369.067527), MAT_Vector3(-20.974335, 0, 0))
  Trigger_SetBoxMode(node223, 10, 120, 320)
  Node_EnterSimulation(node223)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("NOD_Trigger", "Angelina_TriggerPresenceBox_2")
  Node_AddSon(node216, node224)
  Body_SetFriendOrFoeID(node224, 0)
  Body_SetCS(node224, MAT_Vector3(2434.438414, 2790.445123, 369.0675), MAT_Vector3(-48.254385, 0, 0))
  Trigger_SetBoxMode(node224, 10, 120, 320)
  Node_EnterSimulation(node224)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("NOD_Trigger", "Angelina_TriggerPresenceBox_3")
  Node_AddSon(node216, node225)
  Body_SetFriendOrFoeID(node225, 0)
  Body_SetCS(node225, MAT_Vector3(2129.756396, 2974.358435, 369.0675), MAT_Vector3(-14.225483, 0, 0))
  Trigger_SetBoxMode(node225, 10, 120, 320)
  Node_EnterSimulation(node225)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("NOD_Trigger", "TriggerPresence_1")
  Node_AddSon(node216, node226)
  Body_SetFriendOrFoeID(node226, 0)
  Body_SetPosition(node226, MAT_Vector3(1373.961141, 1747.410142, 268.498401))
  Trigger_SetPresenceSphere(node226, 50)
  Node_EnterSimulation(node226)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node88, node227)
  Node_EnterSimulation(node227)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("NOD_Directory", "TRAFFIC")
  Node_AddSon(node227, node228)
  Node_EnterSimulation(node228)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("nod_vessel", "cra_scout1_narrow_1")
  Node_AddSon(node228, node229)
  Body_SetCS(node229, MAT_Vector3(2944.654, 2446.348, 191.8939), MAT_Vector3(68.17452, 0, 0))
  Node_ParseIniFile(node229, "osd/cra/cra_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node229, 0)
  Body_SetNameKey(node229, -1)
  Body_SetCargoKey(node229, -1, 0)
  Body_SetCargoKey(node229, -1, 1)
  Body_SetCargoKey(node229, -1, 2)
  Node_EnterSimulation(node229)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("nod_vessel", "cra_scout1_narrow_2")
  Node_AddSon(node228, node230)
  Body_SetCS(node230, MAT_Vector3(3075.911, 2400.412, 163.5841), MAT_Vector3(70.20138, -0.330171, 0.298218))
  Node_ParseIniFile(node230, "osd/cra/cra_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node230, 0)
  Body_SetNameKey(node230, -1)
  Body_SetCargoKey(node230, -1, 0)
  Body_SetCargoKey(node230, -1, 1)
  Body_SetCargoKey(node230, -1, 2)
  Node_EnterSimulation(node230)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("nod_vessel", "wng_animal_1")
  Node_AddSon(node227, node231)
  Body_SetCS(node231, MAT_Vector3(684.00428, 2700.436794, 198.519264), MAT_Vector3(-58.534457, 0, 0))
  Node_ParseIniFile(node231, "osd/wng/wng_animal.osd")
  Body_SetFriendOrFoeID(node231, 2)
  Body_SetNameKey(node231, -1)
  Body_SetCargoKey(node231, -1, 0)
  Body_SetCargoKey(node231, -1, 1)
  Body_SetCargoKey(node231, -1, 2)
  Node_EnterSimulation(node231)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("nod_waypoint", "nav_follow_animal")
  Node_AddSon(node227, node232)
  Body_SetPosition(node232, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node232, 5)
  Node_ParseIniFile(node232, "osd/nav/nav_follow.osd")
  Node_EnterSimulation(node232)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("nod_waypoint", "nav_waypoint_1")
  Node_AddSon(node227, node233)
  Body_SetPosition(node233, MAT_Vector3(2671.090138, 2493.286721, 159.934059))
  WayPoint_SetRadius(node233, 50)
  Node_ParseIniFile(node233, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node233)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("nod_waypoint", "nav_attack_1")
  Node_AddSon(node227, node234)
  Body_SetPosition(node234, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node234, 5)
  Node_ParseIniFile(node234, "osd/nav/nav_attack.osd")
  Node_EnterSimulation(node234)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node227, node235)
  Body_SetCS(node235, MAT_Vector3(655.345839, 2677.797614, 229.529675), MAT_Vector3(-57.800662, -0.134079, 0.078886))
  Node_ParseIniFile(node235, "osd/pla/pla_ship3.osd")
  Body_SetFriendOrFoeID(node235, 1)
  Node_EnterSimulation(node235)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("nod_vessel", "wng_angelina_1")
  Node_AddSon(node227, node236)
  Body_SetCS(node236, MAT_Vector3(3458.248731, 2473.739221, 162.716622), MAT_Vector3(116.937199, 0, 0))
  Node_ParseIniFile(node236, "osd/wng/wng_angelina.osd")
  Body_SetFriendOrFoeID(node236, 3)
  Body_SetNameKey(node236, -1)
  Body_SetCargoKey(node236, -1, 0)
  Body_SetCargoKey(node236, -1, 1)
  Body_SetCargoKey(node236, -1, 2)
  Node_EnterSimulation(node236)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("nod_waypoint", "nav_waypoint_2")
  Node_AddSon(node227, node237)
  Body_SetPosition(node237, MAT_Vector3(3372.519575, 2409.380258, 187.785135))
  WayPoint_SetRadius(node237, 50)
  Node_ParseIniFile(node237, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node237)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("nod_vessel", "cra_bomber_1")
  Node_AddSon(node227, node238)
  Body_SetCS(node238, MAT_Vector3(3362.09695, 2377.193507, 164.648869), MAT_Vector3(72.724603, 0, 0))
  Node_ParseIniFile(node238, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node238, 0)
  Body_SetNameKey(node238, -1)
  Body_SetCargoKey(node238, -1, 0)
  Body_SetCargoKey(node238, -1, 1)
  Body_SetCargoKey(node238, -1, 2)
  Node_EnterSimulation(node238)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("nod_vessel", "cra_scout2_narrow_1")
  Node_AddSon(node227, node239)
  Body_SetCS(node239, MAT_Vector3(3194.238347, 2255.384625, 147.466572), MAT_Vector3(-21.968542, 0, 0))
  Node_ParseIniFile(node239, "osd/cra/cra_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node239, 0)
  Body_SetNameKey(node239, -1)
  Body_SetCargoKey(node239, -1, 0)
  Body_SetCargoKey(node239, -1, 1)
  Body_SetCargoKey(node239, -1, 2)
  Node_EnterSimulation(node239)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("nod_waypoint", "nav_follow_angelina")
  Node_AddSon(node227, node240)
  Body_SetPosition(node240, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node240, 5)
  Node_ParseIniFile(node240, "osd/nav/nav_follow.osd")
  Node_EnterSimulation(node240)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("nod_vehicle", "cra_tank_1")
  Node_AddSon(node227, node241)
  Body_SetCS(node241, MAT_Vector3(2430.692546, 2919.330498, 262.0691), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node241, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node241, 0)
  Body_SetNameKey(node241, -1)
  Body_SetCargoKey(node241, -1, 0)
  Body_SetCargoKey(node241, -1, 1)
  Body_SetCargoKey(node241, -1, 2)
  Node_EnterSimulation(node241)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("nod_vehicle", "cra_tank_2")
  Node_AddSon(node227, node242)
  Body_SetCS(node242, MAT_Vector3(2269.268864, 2851.253922, 262.0691), MAT_Vector3(-177.139911, 0, 0))
  Node_ParseIniFile(node242, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node242, 0)
  Body_SetNameKey(node242, -1)
  Body_SetCargoKey(node242, -1, 0)
  Body_SetCargoKey(node242, -1, 1)
  Body_SetCargoKey(node242, -1, 2)
  Node_EnterSimulation(node242)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("nod_vehicle", "cra_tank_3")
  Node_AddSon(node227, node243)
  Body_SetCS(node243, MAT_Vector3(2301.455254, 3020.007451, 274.600593), MAT_Vector3(-88.734466, 0, 0))
  Node_ParseIniFile(node243, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node243, 0)
  Body_SetNameKey(node243, -1)
  Body_SetCargoKey(node243, -1, 0)
  Body_SetCargoKey(node243, -1, 1)
  Body_SetCargoKey(node243, -1, 2)
  Node_EnterSimulation(node243)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("nod_vehicle", "cra_tank_4")
  Node_AddSon(node227, node244)
  Body_SetCS(node244, MAT_Vector3(2326.143, 2922.906, 262.0691), MAT_Vector3(59.477292, 0, 0))
  Node_ParseIniFile(node244, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node244, 0)
  Body_SetNameKey(node244, -1)
  Body_SetCargoKey(node244, -1, 0)
  Body_SetCargoKey(node244, -1, 1)
  Body_SetCargoKey(node244, -1, 2)
  Node_EnterSimulation(node244)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("nod_vessel", "cra_scout1_narrow_1")
  Node_AddSon(node227, node245)
  Body_SetCS(node245, MAT_Vector3(1992.878162, 3084.518215, 84.921792), MAT_Vector3(165.466414, 90, 0))
  Node_ParseIniFile(node245, "osd/cra/cra_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node245, 0)
  Body_SetNameKey(node245, -1)
  Body_SetCargoKey(node245, -1, 0)
  Body_SetCargoKey(node245, -1, 1)
  Body_SetCargoKey(node245, -1, 2)
  Node_EnterSimulation(node245)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("nod_vessel", "cra_scout1_narrow_2")
  Node_AddSon(node227, node246)
  Body_SetCS(node246, MAT_Vector3(2006.700819, 3027.729661, 79.312532), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node246, "osd/cra/cra_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node246, 0)
  Body_SetNameKey(node246, -1)
  Body_SetCargoKey(node246, -1, 0)
  Body_SetCargoKey(node246, -1, 1)
  Body_SetCargoKey(node246, -1, 2)
  Node_EnterSimulation(node246)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("nod_vessel", "cra_scout2_narrow_2")
  Node_AddSon(node227, node247)
  Body_SetCS(node247, MAT_Vector3(1843.572323, 3010.825018, 80.975545), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node247, "osd/cra/cra_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node247, 0)
  Body_SetNameKey(node247, -1)
  Body_SetCargoKey(node247, -1, 0)
  Body_SetCargoKey(node247, -1, 1)
  Body_SetCargoKey(node247, -1, 2)
  Node_EnterSimulation(node247)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("nod_vessel", "cra_guard_1")
  Node_AddSon(node227, node248)
  Body_SetCS(node248, MAT_Vector3(824.32568, 2026.197246, 109.091485), MAT_Vector3(19.577546, 40, 0))
  Node_ParseIniFile(node248, "osd/cra/cra_guard.osd")
  Body_SetFriendOrFoeID(node248, 0)
  Body_SetNameKey(node248, -1)
  Body_SetCargoKey(node248, -1, 0)
  Body_SetCargoKey(node248, -1, 1)
  Body_SetCargoKey(node248, -1, 2)
  Node_EnterSimulation(node248)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("nod_turret", "cra_sniper_1")
  Node_AddSon(node227, node249)
  Body_SetCS(node249, MAT_Vector3(2840.313708, 1933.319832, 205), MAT_Vector3(48.888022, -10, 0))
  Node_ParseIniFile(node249, "osd/cra/cra_sniper.osd")
  Body_SetFriendOrFoeID(node249, 0)
  Node_EnterSimulation(node249)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("nod_turret", "cra_sniper_2")
  Node_AddSon(node227, node250)
  Body_SetCS(node250, MAT_Vector3(3169, 2159, 184), MAT_Vector3(-37.625615, -10, 0))
  Node_ParseIniFile(node250, "osd/cra/cra_sniper.osd")
  Body_SetFriendOrFoeID(node250, 0)
  Node_EnterSimulation(node250)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("nod_vessel", "bonus_cra_scout2_narrow_1")
  Node_AddSon(node227, node251)
  Body_SetCS(node251, MAT_Vector3(93.25131, 2635.156363, 187.077141), MAT_Vector3(-88.855708, 20, 0))
  Node_ParseIniFile(node251, "osd/cra/cra_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node251, 0)
  Body_SetNameKey(node251, -1)
  Body_SetCargoKey(node251, -1, 0)
  Body_SetCargoKey(node251, -1, 1)
  Body_SetCargoKey(node251, -1, 2)
  Node_EnterSimulation(node251)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("nod_vessel", "bonus_cra_scout2_narrow_2")
  Node_AddSon(node227, node252)
  Body_SetCS(node252, MAT_Vector3(122.936779, 2670.033446, 137.732909), MAT_Vector3(-86.968288, 20, 0))
  Node_ParseIniFile(node252, "osd/cra/cra_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node252, 0)
  Body_SetNameKey(node252, -1)
  Body_SetCargoKey(node252, -1, 0)
  Body_SetCargoKey(node252, -1, 1)
  Body_SetCargoKey(node252, -1, 2)
  Node_EnterSimulation(node252)
  Game_LoadProgress_Advance(node0)
  node253 = Node_CreateNode("nod_vessel", "bonus_cra_scout2_narrow_3")
  Node_AddSon(node227, node253)
  Body_SetCS(node253, MAT_Vector3(92.668986, 2700.083704, 169.711907), MAT_Vector3(-94.841294, 20, 0))
  Node_ParseIniFile(node253, "osd/cra/cra_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node253, 0)
  Body_SetNameKey(node253, -1)
  Body_SetCargoKey(node253, -1, 0)
  Body_SetCargoKey(node253, -1, 1)
  Body_SetCargoKey(node253, -1, 2)
  Node_EnterSimulation(node253)
  Game_LoadProgress_Advance(node0)
  node254 = Node_CreateNode("nod_vessel", "gen_freighter_1")
  Node_AddSon(node227, node254)
  Body_SetCS(node254, MAT_Vector3(3492.386522, 1266.785079, 142.726351), MAT_Vector3(-87.799664, 0, 0))
  Node_ParseIniFile(node254, "osd/gen/gen_freighter.osd")
  Body_SetFriendOrFoeID(node254, 4)
  Body_SetNameKey(node254, -1)
  Body_SetCargoKey(node254, 1120, 0)
  Body_SetCargoKey(node254, -1, 1)
  Body_SetCargoKey(node254, -1, 2)
  Node_EnterSimulation(node254)
  Game_LoadProgress_Advance(node0)
  node255 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node255)
  Camera_SetBackPlane(node255, 1024)
  Node_EnterSimulation(node255)
  Game_LoadProgress_Advance(node0)
  node256 = Node_CreateNode("NOD_Scenario", "IngameSequences")
  Node_AddSon(node0, node256)
  Node_EnterSimulation(node256)
  Game_LoadProgress_Advance(node0)
  node257 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node256, node257)
  Node_EnterSimulation(node257)
  Game_LoadProgress_Advance(node0)
  node258 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node256, node258)
  Node_EnterSimulation(node258)
  Game_LoadProgress_Advance(node0)
  node259 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node258, node259)
  Position_SetPosition(node259, MAT_Vector3(1297.615804, 1844.77301, 307.484978))
  Position_SetRadius(node259, 5)
  Game_LoadProgress_Advance(node0)
  node260 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node256, node260)
  Node_EnterSimulation(node260)
  Game_LoadProgress_Advance(node0)
  node261 = Node_CreateNode("NOD_Director", "IntroDirector_1")
  Node_AddSon(node260, node261)
  Node_EnterSimulation(node261)
  Game_LoadProgress_Advance(node0)
  node262 = Node_CreateNode("NOD_Director", "Director_1")
  Node_AddSon(node260, node262)
  Node_EnterSimulation(node262)
  Game_LoadProgress_Advance(node0)
  node263 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node256, node263)
  Node_EnterSimulation(node263)
  Game_LoadProgress_Advance(node0)
  node264 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node256, node264)
  Node_EnterSimulation(node264)
end
SetEnemyMatrixElement(0, 0, N)
SetEnemyMatrixElement(1, 0, E)
SetEnemyMatrixElement(2, 0, N)
SetEnemyMatrixElement(3, 0, E)
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
SetEnemyMatrixElement(1, 1, N)
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
SetEnemyMatrixElement(0, 2, N)
SetEnemyMatrixElement(1, 2, F)
SetEnemyMatrixElement(2, 2, N)
SetEnemyMatrixElement(3, 2, F)
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
SetEnemyMatrixElement(1, 3, F)
SetEnemyMatrixElement(2, 3, F)
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
SetEnemyMatrixElement(1, 4, N)
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
    if not (True ~= True) then
      if not (True ~= True) then
        if not (True ~= True) then
          if not (True ~= True) then
            if not (True ~= True) then
              if not (True ~= True) then
                if not (True ~= True) then
                  if not (True ~= True) then
                    if not (True ~= True) then
                      if not (True ~= True) then
                        if not (True ~= True) then
                          if not (True ~= True) then
                            if not (True ~= True) then
                              if not (True ~= True) then
                                if not (True ~= True) then
                                  if not (True ~= True) then
                                    if not (True ~= True) then
                                      if not (True ~= True) then
                                        if not (True ~= True) then
                                          if not (True ~= True) then
                                            if not (True ~= True) then
                                              if not (True ~= True) then
                                                if not (True ~= True) then
                                                  if not (True ~= True) then
                                                    if not (True ~= True) then
                                                      if not (True ~= True) then
                                                        if not (True ~= True) then
                                                          if not (True ~= True) then
                                                            if not (True ~= True) then
                                                              if not (True ~= True) then
                                                                if not (True ~= True) then
                                                                  if not (True ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
                                                                        if not (True ~= True) then
                                                                          if not (True ~= True) then
                                                                            if not (True ~= True) then
                                                                              if not (True ~= True) then
                                                                                if not (True ~= True) then
                                                                                  if not (True ~= True) then
                                                                                    if not (True ~= True) then
                                                                                      if not (True ~= True) then
                                                                                        if not (True ~= True) then
                                                                                          if not (True ~= True) then
                                                                                            if not (True ~= True) then
                                                                                              if not (True ~= True) then
                                                                                                if not (True ~= True) then
                                                                                                  if not (True ~= True) then
                                                                                                    if not (True ~= True) then
                                                                                                      if not (True ~= True) then
                                                                                                        if not (True ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
                                                                                                                                                if not (True ~= True) then
                                                                                                                                                  if not (o3534.Value ~= True) then
                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                  if not (True ~= True) then
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
                                                                                                                                                  if not (o3558.Value == True) then
                                                                                                                                                    if not (False == True) then
                                                                                                                                                      if not (False == True) then
                                                                                                                                                        if not (False == True) then
                                                                                                                                                          if not (False == True) then
                                                                                                                                                            if not (False == True) then
                                                                                                                                                              if not (False == True) then
                                                                                                                                                                if not (False == True) then
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
end, ReCalculate = function()
  o26.SetStateValue(o26.GetCalculated())
end, StartCalculate = function()
  o26["Value"] = o26.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 1, 2101, 2103)
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
                                                                                                                                                  if not (o3559.Value == True) then
                                                                                                                                                    if not (False == True) then
                                                                                                                                                      if not (False == True) then
                                                                                                                                                        if not (False == True) then
                                                                                                                                                          if not (False == True) then
                                                                                                                                                            if not (False == True) then
                                                                                                                                                              if not (False == True) then
                                                                                                                                                                if not (False == True) then
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
end, ReCalculate = function()
  o27.SetStateValue(o27.GetCalculated())
end, StartCalculate = function()
  o27["Value"] = o27.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 2, 2001, 2107)
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
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1134, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1134, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1134, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o1137.SetStateValue(L1)
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
o1137 = { [nil] = {}, Start = function()
  o1137["Value"] = False
  o3559.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1137.Value == L0) then
    o1137["Value"] = L0
    o3559.ReCalculate()
  end
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

end }
S_o1779 = { [nil] = {}, Start = function(L0)

end }
S_o1825 = { [nil] = {}, Start = function(L0)

end }
S_o1871 = { [nil] = {}, Start = function(L0)

end }
S_o1917 = { [nil] = {}, Start = function(L0)

end }
S_o1963 = { [nil] = {}, Start = function(L0)

end }
S_o2009 = { [nil] = {}, Start = function(L0)

end }
S_o2055 = { [nil] = {}, Start = function(L0)

end }
S_o2101 = { [nil] = {}, Start = function(L0)

end }
S_o2147 = { [nil] = {}, Start = function(L0)

end }
S_o2193 = { [nil] = {}, Start = function(L0)

end }
S_o2239 = { [nil] = {}, Start = function(L0)

end }
S_o2285 = { [nil] = {}, Start = function(L0)

end }
S_o2331 = { [nil] = {}, Start = function(L0)

end }
S_o2377 = { [nil] = {}, Start = function(L0)

end }
S_o2423 = { [nil] = {}, Start = function(L0)

end }
S_o2469 = { [nil] = {}, Start = function(L0)

end }
S_o2515 = { [nil] = {}, Start = function(L0)

end }
S_o2561 = { [nil] = {}, Start = function(L0)

end }
S_o2607 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2607, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2607, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2607, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2607, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o2607, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o2610.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o2611.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2608.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2608 = { [nil] = {}, GetCalculated = function()
  if not (o3504.Value == True) then
    if not (o3506.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2608.SetStateValue(o2608.GetCalculated())
end, StartCalculate = function()
  o2608["Value"] = o2608.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2608.Value == L0) then
    o2608["Value"] = L0
    CallFunction(o2607, "ProcesseStateChange")
  end
end }
o2610 = { [nil] = {}, Start = function()
  o2610["Value"] = False
  o3501.StartCalculate()
  o3532.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2610.Value == L0) then
    o2610["Value"] = L0
    o3501.ReCalculate()
    o3532.ReCalculate()
  end
end }
o2611 = { [nil] = {}, Start = function()
  o2611["Value"] = False
  o3502.StartCalculate()
  o3503.StartCalculate()
  o3508.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2611.Value == L0) then
    o2611["Value"] = L0
    o3502.ReCalculate()
    o3503.ReCalculate()
    o3508.ReCalculate()
  end
end }
S_o2655 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2655, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2655, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2655, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2655, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o2655, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o2658.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o2659.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2656.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2656 = { [nil] = {}, GetCalculated = function()
  if not (o3502.Value == True) then
    if not (o3507.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2656.SetStateValue(o2656.GetCalculated())
end, StartCalculate = function()
  o2656["Value"] = o2656.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2656.Value == L0) then
    o2656["Value"] = L0
    CallFunction(o2655, "ProcesseStateChange")
  end
end }
o2658 = { [nil] = {}, Start = function()
  o2658["Value"] = False
  o3501.StartCalculate()
  o3532.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2658.Value == L0) then
    o2658["Value"] = L0
    o3501.ReCalculate()
    o3532.ReCalculate()
  end
end }
o2659 = { [nil] = {}, Start = function()
  o2659["Value"] = False
  o3504.StartCalculate()
  o3505.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2659.Value == L0) then
    o2659["Value"] = L0
    o3504.ReCalculate()
    o3505.ReCalculate()
  end
end }
S_o2703 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2703, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2703, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2703, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2703, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o2703, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o2706.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o2707.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2704.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2704 = { [nil] = {}, GetCalculated = function()
  if not (o3503.Value == True) then
    if not (o3505.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2704.SetStateValue(o2704.GetCalculated())
end, StartCalculate = function()
  o2704["Value"] = o2704.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2704.Value == L0) then
    o2704["Value"] = L0
    CallFunction(o2703, "ProcesseStateChange")
  end
end }
o2706 = { [nil] = {}, Start = function()
  o2706["Value"] = False
  o3501.StartCalculate()
  o3532.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2706.Value == L0) then
    o2706["Value"] = L0
    o3501.ReCalculate()
    o3532.ReCalculate()
  end
end }
o2707 = { [nil] = {}, Start = function()
  o2707["Value"] = False
  o3506.StartCalculate()
  o3507.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2707.Value == L0) then
    o2707["Value"] = L0
    o3506.ReCalculate()
    o3507.ReCalculate()
  end
end }
S_o2751 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2751, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2751, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2751, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 351, "E", "", "", "", "Code4")
  else
    CallFunction(o2751, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2751, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o2754.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2752.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2752 = { [nil] = {}, GetCalculated = function()
  if not (o3508.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2752.SetStateValue(o2752.GetCalculated())
end, StartCalculate = function()
  o2752["Value"] = o2752.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2752.Value == L0) then
    DelayedFunction(2, o2752, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2752.Value == L0) then
    o2752["Value"] = L0
    CallFunction(o2751, "ProcesseStateChange")
  end
end }
o2754 = { [nil] = {}, Start = function()
  o2754["Value"] = False
  o3501.StartCalculate()
  o3532.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2754.Value == L0) then
    o2754["Value"] = L0
    o3501.ReCalculate()
    o3532.ReCalculate()
  end
end }
S_o2797 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2797, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2797, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2797, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 351, "E", "", "", "", "Code4")
  else
    CallFunction(o2797, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2797, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o2800.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2798.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2798 = { [nil] = {}, GetCalculated = function()
  if not (o3508.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2798.SetStateValue(o2798.GetCalculated())
end, StartCalculate = function()
  o2798["Value"] = o2798.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2798.Value == L0) then
    DelayedFunction(2, o2798, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2798.Value == L0) then
    o2798["Value"] = L0
    CallFunction(o2797, "ProcesseStateChange")
  end
end }
o2800 = { [nil] = {}, Start = function()
  o2800["Value"] = False
  o3501.StartCalculate()
  o3532.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2800.Value == L0) then
    o2800["Value"] = L0
    o3501.ReCalculate()
    o3532.ReCalculate()
  end
end }
S_o2843 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2843, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2843, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2843, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 351, "E", "", "", "", "Code4")
  else
    CallFunction(o2843, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2843, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o2846.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2844.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2844 = { [nil] = {}, GetCalculated = function()
  if not (o3508.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2844.SetStateValue(o2844.GetCalculated())
end, StartCalculate = function()
  o2844["Value"] = o2844.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2844.Value == L0) then
    DelayedFunction(2, o2844, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2844.Value == L0) then
    o2844["Value"] = L0
    CallFunction(o2843, "ProcesseStateChange")
  end
end }
o2846 = { [nil] = {}, Start = function()
  o2846["Value"] = False
  o3501.StartCalculate()
  o3532.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2846.Value == L0) then
    o2846["Value"] = L0
    o3501.ReCalculate()
    o3532.ReCalculate()
  end
end }
S_o2889 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2889, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2889, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2889, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 351, "E", "", "", "", "Code4")
  else
    CallFunction(o2889, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2889, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o2892.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2890.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2890 = { [nil] = {}, GetCalculated = function()
  if not (o3508.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2890.SetStateValue(o2890.GetCalculated())
end, StartCalculate = function()
  o2890["Value"] = o2890.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2890.Value == L0) then
    DelayedFunction(2, o2890, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2890.Value == L0) then
    o2890["Value"] = L0
    CallFunction(o2889, "ProcesseStateChange")
  end
end }
o2892 = { [nil] = {}, Start = function()
  o2892["Value"] = False
  o3501.StartCalculate()
  o3532.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2892.Value == L0) then
    o2892["Value"] = L0
    o3501.ReCalculate()
    o3532.ReCalculate()
  end
end }
S_o2935 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2935, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2935, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2935, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 351, "E", "", "", "", "Code4")
  else
    CallFunction(o2935, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2935, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o2938.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2936.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2936 = { [nil] = {}, GetCalculated = function()
  if not (o3508.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2936.SetStateValue(o2936.GetCalculated())
end, StartCalculate = function()
  o2936["Value"] = o2936.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2936.Value == L0) then
    DelayedFunction(2, o2936, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2936.Value == L0) then
    o2936["Value"] = L0
    CallFunction(o2935, "ProcesseStateChange")
  end
end }
o2938 = { [nil] = {}, Start = function()
  o2938["Value"] = False
  o3501.StartCalculate()
  o3532.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2938.Value == L0) then
    o2938["Value"] = L0
    o3501.ReCalculate()
    o3532.ReCalculate()
  end
end }
S_o2981 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2981, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2981, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2981, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 351, "E", "", "", "", "Code4")
  else
    CallFunction(o2981, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2981, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o2984.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2982.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2982 = { [nil] = {}, GetCalculated = function()
  if not (o3508.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2982.SetStateValue(o2982.GetCalculated())
end, StartCalculate = function()
  o2982["Value"] = o2982.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2982.Value == L0) then
    DelayedFunction(2, o2982, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2982.Value == L0) then
    o2982["Value"] = L0
    CallFunction(o2981, "ProcesseStateChange")
  end
end }
o2984 = { [nil] = {}, Start = function()
  o2984["Value"] = False
  o3501.StartCalculate()
  o3532.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2984.Value == L0) then
    o2984["Value"] = L0
    o3501.ReCalculate()
    o3532.ReCalculate()
  end
end }
S_o3027 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3027, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3027, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3027, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "E", "", "", "", "Code4")
  else
    CallFunction(o3027, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3027, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o3030.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3028.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3028 = { [nil] = {}, GetCalculated = function()
  if not (o3508.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3028.SetStateValue(o3028.GetCalculated())
end, StartCalculate = function()
  o3028["Value"] = o3028.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3028.Value == L0) then
    DelayedFunction(2, o3028, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3028.Value == L0) then
    o3028["Value"] = L0
    CallFunction(o3027, "ProcesseStateChange")
  end
end }
o3030 = { [nil] = {}, Start = function()
  o3030["Value"] = False
  o3501.StartCalculate()
  o3532.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3030.Value == L0) then
    o3030["Value"] = L0
    o3501.ReCalculate()
    o3532.ReCalculate()
  end
end }
S_o3073 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3073, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3073, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3073, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "E", "", "", "", "Code4")
  else
    CallFunction(o3073, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3073, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o3076.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3074.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3074 = { [nil] = {}, GetCalculated = function()
  if not (o3508.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3074.SetStateValue(o3074.GetCalculated())
end, StartCalculate = function()
  o3074["Value"] = o3074.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3074.Value == L0) then
    DelayedFunction(2, o3074, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3074.Value == L0) then
    o3074["Value"] = L0
    CallFunction(o3073, "ProcesseStateChange")
  end
end }
o3076 = { [nil] = {}, Start = function()
  o3076["Value"] = False
  o3501.StartCalculate()
  o3532.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3076.Value == L0) then
    o3076["Value"] = L0
    o3501.ReCalculate()
    o3532.ReCalculate()
  end
end }
S_o3119 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3119, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3119, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3119, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "E", "", "", "", "Code4")
  else
    CallFunction(o3119, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3119, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o3122.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3120.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3120 = { [nil] = {}, GetCalculated = function()
  if not (o3508.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3120.SetStateValue(o3120.GetCalculated())
end, StartCalculate = function()
  o3120["Value"] = o3120.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3120.Value == L0) then
    DelayedFunction(2, o3120, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3120.Value == L0) then
    o3120["Value"] = L0
    CallFunction(o3119, "ProcesseStateChange")
  end
end }
o3122 = { [nil] = {}, Start = function()
  o3122["Value"] = False
  o3501.StartCalculate()
  o3532.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3122.Value == L0) then
    o3122["Value"] = L0
    o3501.ReCalculate()
    o3532.ReCalculate()
  end
end }
S_o3165 = { [nil] = {}, Start = function(L0)

end }
o3211 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/ApproachPath", "/Scenario_Dynamic/Navigation/DockPath", "/Scenario_Dynamic/Navigation/DockArea")
o3213 = FormationLib.CreateFormation("Line", "", "", "", 20, 20)
o3215 = FormationLib.CreateFormation("InverseTriangle", "", "", "", 30, 30)
o3216 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/Harvester_ApproachPath_1", "/Scenario_Dynamic/Navigation/Harvester_DockPath_1", "/Scenario_Dynamic/Navigation/Harvester_DockArea_1")
S_o3217 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3217, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3217, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3217, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "wng", "", "", "", False, False, True)
  CallFunction(o3217, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3217, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3217, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o3222.SetStateValue(L1)
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
o3222 = { [nil] = {}, Start = function()
  o3222["Value"] = False
  o3494.StartCalculate()
  o3499.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3222.Value == L0) then
    o3222["Value"] = L0
    o3494.ReCalculate()
    o3499.ReCalculate()
  end
end }
S_o3223 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3223, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3223, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3223, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "E", "", "", "", False, True, False)
  CallFunction(o3223, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3223, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3223, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o3228.SetStateValue(L1)
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
o3228 = { [nil] = {}, Start = function()
  o3228["Value"] = False
  o4201.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3228.Value == L0) then
    o3228["Value"] = L0
    o4201.ReCalculate()
  end
end }
S_o3229 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3229, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3229, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3229, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "E", "", "", "", True, False, False)
  CallFunction(o3229, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3229, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3229, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o3234.SetStateValue(L1)
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
o3234 = { [nil] = {}, Start = function()
  o3234["Value"] = False
  o4201.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3234.Value == L0) then
    o3234["Value"] = L0
    o4201.ReCalculate()
  end
end }
S_o3235 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3235, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3235, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3235, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "E", "", "", "", False, True, False)
  CallFunction(o3235, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3235, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3235, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o3240.SetStateValue(L1)
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
o3240 = { [nil] = {}, Start = function()
  o3240["Value"] = False
  o4154.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3240.Value == L0) then
    o3240["Value"] = L0
    o4154.ReCalculate()
  end
end }
S_o3241 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3241, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3241, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3241, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "E", "", "", "", True, False, False)
  CallFunction(o3241, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3241, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3241, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o3246.SetStateValue(L1)
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
o3246 = { [nil] = {}, Start = function()
  o3246["Value"] = False
  o4154.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3246.Value == L0) then
    o3246["Value"] = L0
    o4154.ReCalculate()
  end
end }
S_o3247 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3247, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3247, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3247, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "wng_angelina", "", "", "", False, False, True)
  CallFunction(o3247, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3247, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3247, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o3252.SetStateValue(L1)
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
o3252 = { [nil] = {}, Start = function()
  o3252["Value"] = False
  o3394.StartCalculate()
  o3406.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3252.Value == L0) then
    o3252["Value"] = L0
    o3394.ReCalculate()
    o3406.ReCalculate()
  end
end }
S_o3253 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3253, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3253, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3253, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "wng_angelina", "", "", "", False, False, True)
  CallFunction(o3253, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3253, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3253, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o3258.SetStateValue(L1)
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
o3258 = { [nil] = {}, Start = function()
  o3258["Value"] = False
  o3743.StartCalculate()
  o3790.StartCalculate()
  o3837.StartCalculate()
  o3884.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3258.Value == L0) then
    o3258["Value"] = L0
    o3743.ReCalculate()
    o3790.ReCalculate()
    o3837.ReCalculate()
    o3884.ReCalculate()
  end
end }
S_o3259 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3259, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3259, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3259, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "wng_angelina", "", "", "", False, False, True)
  CallFunction(o3259, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3259, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3259, "Code6")
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
S_o3265 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3265, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3265, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3265, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "wng_angelina", "", "", "", False, False, True)
  CallFunction(o3265, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3265, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3265, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o3270.SetStateValue(L1)
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
o3270 = { [nil] = {}, Start = function()
  o3270["Value"] = False
  o3931.StartCalculate()
  o3987.StartCalculate()
  o4043.StartCalculate()
  o4099.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3270.Value == L0) then
    o3270["Value"] = L0
    o3931.ReCalculate()
    o3987.ReCalculate()
    o4043.ReCalculate()
    o4099.ReCalculate()
  end
end }
S_o3271 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3271, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3271, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3271, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "wng", "", "", "", False, False, True)
  CallFunction(o3271, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3271, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3271, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o3276.SetStateValue(L1)
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
o3276 = { [nil] = {}, Start = function()
  o3276["Value"] = False
  o3496.StartCalculate()
  o3497.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3276.Value == L0) then
    o3276["Value"] = L0
    o3496.ReCalculate()
    o3497.ReCalculate()
  end
end }
S_o3277 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3277, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3277, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3277, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.ComplexGotoAttack({ 0, { {}, "Goto", "/Scenario_Dynamic/Navigation/CraPath_1", 1, 2 } }, "/Scenario_Dynamic/Navigation/PathFollowArea_Scouts", 512, "E", "", "", "", 5, 1, False, "Code4")
  else
    CallFunction(o3277, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o3277, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o3280.SetStateValue(L1)
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
o3280 = { [nil] = {}, Start = function()
  o3280["Value"] = False
  o3501.StartCalculate()
  o3532.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3280.Value == L0) then
    o3280["Value"] = L0
    o3501.ReCalculate()
    o3532.ReCalculate()
  end
end }
S_o3333 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3333, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3333, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3333, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.ComplexGotoAttack({ 0, { {}, "Goto", "/Scenario_Dynamic/Navigation/CraPath_2", 0.8, 2 } }, "/Scenario_Dynamic/Navigation/PathFollowArea_Scouts", 512, "E", "", "", "", 5, 1, False, "Code4")
  else
    CallFunction(o3333, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o3333, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o3336.SetStateValue(L1)
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
o3336 = { [nil] = {}, Start = function()
  o3336["Value"] = False
  o3501.StartCalculate()
  o3532.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3336.Value == L0) then
    o3336["Value"] = L0
    o3501.ReCalculate()
    o3532.ReCalculate()
  end
end }
S_o3389 = { [nil] = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3389, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3389, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3389, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o3389, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3389, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  StopAllActiveBehaviours(L0)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o3389, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/AnimalPath_1", "pos_14", "pos_10", 1, 1 } }("Code8")
  else
    CallFunction(o3389, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code9")
  else
    CallFunction(o3389, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3389, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AnimalPath_2", 1, 1 } }("Code11")
  else
    CallFunction(o3389, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  SetEnemyMatrixElement(0, 2, E)
  SetEnemyMatrixElement(2, 0, E)
  CallFunction(o3389, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/StaPatrolArea_3", "/Scenario_Dynamic/Navigation/StaPatrolArea_3", "/Scenario_Dynamic/Navigation/StaPatrolArea_3", "E", "", "", "", 1, "Code14")
  else
    CallFunction(o3389, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o3213, 0, 350, "E", "", "", "", "/Scenario_Dynamic/Navigation/Escort_PatrolArea_1", "/Scenario_Dynamic/Navigation/Escort_PatrolArea_1", 1, 5, "Code15")
  else
    CallFunction(o3389, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Harvester_PatrolArea_1", "/Scenario_Dynamic/Navigation/Harvester_PatrolArea_1", "/Scenario_Dynamic/Navigation/Harvester_PatrolArea_1", "E", "", "", "", 1, "Code16")
  else
    CallFunction(o3389, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o3216, nil, 0, "Code17")
  else
    CallFunction(o3389, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code18")
  else
    CallFunction(o3389, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3389, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code20")
  else
    CallFunction(o3389, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3389, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  StopAllActiveBehaviours(L0)
  CallFunction(o3389, "Code22")
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o3216, nil, 0, "Code23")
  else
    CallFunction(o3389, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code24")
  else
    CallFunction(o3389, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3389, "Code25")
  end
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code26")
  else
    CallFunction(o3389, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3389, "Code27")
  end
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  StopAllActiveBehaviours(L0)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o3389, "Code29")
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.ComplexGotoAttack({ 0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/AnimalPath_1", "pos_14", "pos_10", 1, 1 } }, "/Scenario_Dynamic/Navigation/Animal_PatrolArea_1", 300, "cra_scout1_narrow_1", "cra_scout1_narrow_2", "", "", 5, 1, False, "Code30")
  else
    CallFunction(o3389, "Code30")
  end
end, Code30 = function(L0)
  L0["CodeIndex"] = 30
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code31")
  else
    CallFunction(o3389, "Code31")
  end
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3389, "Code32")
  end
end, Code32 = function(L0)
  L0["CodeIndex"] = 32
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AnimalPath_2", 1, 1 } }("Code33")
  else
    CallFunction(o3389, "Code33")
  end
end }, Code33 = function(L0)
  L0["CodeIndex"] = 33
  SetEnemyMatrixElement(0, 2, E)
  SetEnemyMatrixElement(2, 0, E)
  CallFunction(o3389, "Code35")
end, Code35 = function(L0)
  L0["CodeIndex"] = 35
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/StaPatrolArea_3", "/Scenario_Dynamic/Navigation/StaPatrolArea_3", "/Scenario_Dynamic/Navigation/StaPatrolArea_3", "E", "", "", "", 1, "Code36")
  else
    CallFunction(o3389, "Code36")
  end
end, Code36 = function(L0)
  L0["CodeIndex"] = 36
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o3213, 0, 350, "E", "", "", "", "/Scenario_Dynamic/Navigation/Escort_PatrolArea_1", "/Scenario_Dynamic/Navigation/Escort_PatrolArea_1", 1, 5, "Code37")
  else
    CallFunction(o3389, "Code37")
  end
end, Code37 = function(L0)
  L0["CodeIndex"] = 37
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Harvester_PatrolArea_1", "/Scenario_Dynamic/Navigation/Harvester_PatrolArea_1", "/Scenario_Dynamic/Navigation/Harvester_PatrolArea_1", "E", "", "", "", 1, "Code38")
  else
    CallFunction(o3389, "Code38")
  end
end, Code38 = function(L0)
  L0["CodeIndex"] = 38
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o3216, nil, 0, "Code39")
  else
    CallFunction(o3389, "Code39")
  end
end, Code39 = function(L0)
  L0["CodeIndex"] = 39
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code40")
  else
    CallFunction(o3389, "Code40")
  end
end, Code40 = function(L0)
  L0["CodeIndex"] = 40
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3389, "Code41")
  end
end, Code41 = function(L0)
  L0["CodeIndex"] = 41
end, SetStateValue_Born = function(L0, L1)
  o3413.SetStateValue(L1)
end, SetStateValue_KineticShield10 = function(L0, L1)
  o3429.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o3398.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 13) then
    if not (L0.CodeIndex >= 14) then
      if not (o3394.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 15) then
    if not (L0.CodeIndex >= 16) then
      if not (o3396.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 31) then
    if not (L0.CodeIndex >= 32) then
      if not (o3410.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 35) then
    if not (L0.CodeIndex >= 36) then
      if not (o3406.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 37) then
    if not (L0.CodeIndex >= 38) then
      if not (o3408.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3394 = { [nil] = {}, GetCalculated = function()
  if not (o3252.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3394.SetStateValue(o3394.GetCalculated())
end, StartCalculate = function()
  o3394["Value"] = o3394.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3394.Value == L0) then
    o3394["Value"] = L0
    CallFunction(o3389, "ProcesseStateChange")
  end
end }
o3396 = { [nil] = {}, GetCalculated = function()
  if not (o3590.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3396.SetStateValue(o3396.GetCalculated())
end, StartCalculate = function()
  o3396["Value"] = o3396.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3396.Value == L0) then
    o3396["Value"] = L0
    CallFunction(o3389, "ProcesseStateChange")
  end
end }
o3398 = { [nil] = {}, GetCalculated = function()
  if not (o3567.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3398.SetStateValue(o3398.GetCalculated())
end, StartCalculate = function()
  o3398["Value"] = o3398.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3398.Value == L0) then
    o3398["Value"] = L0
    CallFunction(o3389, "ProcesseStateChange")
  end
end }
o3406 = { [nil] = {}, GetCalculated = function()
  if not (o3252.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3406.SetStateValue(o3406.GetCalculated())
end, StartCalculate = function()
  o3406["Value"] = o3406.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3406.Value == L0) then
    o3406["Value"] = L0
    CallFunction(o3389, "ProcesseStateChange")
  end
end }
o3408 = { [nil] = {}, GetCalculated = function()
  if not (o3590.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3408.SetStateValue(o3408.GetCalculated())
end, StartCalculate = function()
  o3408["Value"] = o3408.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3408.Value == L0) then
    o3408["Value"] = L0
    CallFunction(o3389, "ProcesseStateChange")
  end
end }
o3410 = { [nil] = {}, GetCalculated = function()
  if not (o3567.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3410.SetStateValue(o3410.GetCalculated())
end, StartCalculate = function()
  o3410["Value"] = o3410.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3410.Value == L0) then
    o3410["Value"] = L0
    CallFunction(o3389, "ProcesseStateChange")
  end
end }
o3413 = { [nil] = {}, Start = function()
  o3413["Value"] = False
  o3496.StartCalculate()
  o3497.StartCalculate()
  o3498.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3413.Value == L0) then
    o3413["Value"] = L0
    o3496.ReCalculate()
    o3497.ReCalculate()
    o3498.ReCalculate()
  end
end }
o3429 = { [nil] = {}, Start = function()
  o3429["Value"] = False
  o3518.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3429.Value == L0) then
    o3429["Value"] = L0
    o3518.ReCalculate()
  end
end }
S_o3465 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o3389.Node)
  CallFunction(o3465, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3470 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o3470, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o3473.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3473 = { [nil] = {}, Start = function()
  o3473["Value"] = False
  o3495.StartCalculate()
  o3500.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3473.Value == L0) then
    o3473["Value"] = L0
    o3495.ReCalculate()
    o3500.ReCalculate()
  end
end }
S_o3475 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o2655.Node)
  CallFunction(o3475, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3480 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_plasmagatlin", 1)
  Body_AddItem(L0.Node, "gun_doommortar", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_energy", 200)
  Body_AddItem(L0.Node, "ammo_shell", 1000)
  Body_AddItem(L0.Node, "TORPEDO_STANLEY", 4)
  Body_AddItem(L0.Node, "device_repair2", 1)
  Body_AddItem(L0.Node, "device_generator2", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 8)
  Body_AddItem(L0.Node, "gun_vendetta1", 1)
  CallFunction(o3480, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, SetStateValue_Ship1 = function(L0, L1)
  o3485.SetStateValue(L1)
end, SetStateValue_Ship2 = function(L0, L1)
  o3486.SetStateValue(L1)
end, SetStateValue_Ship4 = function(L0, L1)
  o3488.SetStateValue(L1)
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
o3485 = { [nil] = {}, Start = function()
  o3485["Value"] = False
  o3516.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3485.Value == L0) then
    o3485["Value"] = L0
    o3516.ReCalculate()
  end
end }
o3486 = { [nil] = {}, Start = function()
  o3486["Value"] = False
  o3516.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3486.Value == L0) then
    o3486["Value"] = L0
    o3516.ReCalculate()
  end
end }
o3488 = { [nil] = {}, Start = function()
  o3488["Value"] = False
  o3516.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3488.Value == L0) then
    o3488["Value"] = L0
    o3516.ReCalculate()
  end
end }
o3494 = { [nil] = {}, GetCalculated = function()
  if not (o3222.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3494.SetStateValue(o3494.GetCalculated())
end, StartCalculate = function()
  o3494["Value"] = o3494.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o3470.Node)
  SED_SetTaskTextKey(2100, -1, -1)
end, SetStateValue = function(L0)
  if not (o3494.Value == L0) then
    DelayedFunction(5, o3494, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3494.Value == L0) then
    o3494["Value"] = L0
    if not (L0 ~= 1) then
      o3494.ChangeTo1()
    end
  end
end }
o3495 = { [nil] = {}, GetCalculated = function()
  if not (o3473.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3495.SetStateValue(o3495.GetCalculated())
end, StartCalculate = function()
  o3495["Value"] = o3495.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o3475.Node)
  SED_SetTaskTextKey(2101, -1, -1)
end, SetStateValue = function(L0)
  if not (o3495.Value == L0) then
    DelayedFunction(2, o3495, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3495.Value == L0) then
    o3495["Value"] = L0
    if not (L0 ~= 1) then
      o3495.ChangeTo1()
    end
  end
end }
o3496 = { [nil] = {}, GetCalculated = function()
  if not (o3413.Value ~= True) then
    if not (o3516.Value ~= False) then
      if not (o3276.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o3496.SetStateValue(o3496.GetCalculated())
end, StartCalculate = function()
  o3496["Value"] = o3496.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3480.Node, o3480.Node, 335)
  SendRadioMessageTake(o3480.Node, o3480.Node, 695)
end, SetStateValue = function(L0)
  if not (o3496.Value == L0) then
    DelayedFunction(2, o3496, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3496.Value == L0) then
    o3496["Value"] = L0
    if not (L0 ~= 1) then
      o3496.ChangeTo1()
    end
  end
end }
o3497 = { [nil] = {}, GetCalculated = function()
  if not (o3413.Value ~= True) then
    if not (o3516.Value ~= False) then
      if not (o3276.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o3497.SetStateValue(o3497.GetCalculated())
end, StartCalculate = function()
  o3497["Value"] = o3497.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3389.Node, o3480.Node, 336)
  SendRadioMessageTake(o3480.Node, o3480.Node, 337)
  SendRadioMessageTake(o3389.Node, o3480.Node, 338)
end, SetStateValue = function(L0)
  if not (o3497.Value == L0) then
    DelayedFunction(20, o3497, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3497.Value == L0) then
    o3497["Value"] = L0
    if not (L0 ~= 1) then
      o3497.ChangeTo1()
    end
  end
end }
o3498 = { [nil] = {}, GetCalculated = function()
  if not (o3413.Value ~= True) then
    if not (o3516.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3498.SetStateValue(o3498.GetCalculated())
end, StartCalculate = function()
  o3498["Value"] = o3498.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3480.Node, o3480.Node, 335)
  SendRadioMessageTake(o3389.Node, o3480.Node, 695)
  SendRadioMessageTake(o3389.Node, o3480.Node, 345)
end, SetStateValue = function(L0)
  if not (o3498.Value == L0) then
    DelayedFunction(2, o3498, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3498.Value == L0) then
    o3498["Value"] = L0
    if not (L0 ~= 1) then
      o3498.ChangeTo1()
    end
  end
end }
o3499 = { [nil] = {}, GetCalculated = function()
  if not (o3222.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3499.SetStateValue(o3499.GetCalculated())
end, StartCalculate = function()
  o3499["Value"] = o3499.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3389.Node, o3480.Node, 339)
end, SetStateValue = function(L0)
  if not (o3499.Value == L0) then
    DelayedFunction(2, o3499, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3499.Value == L0) then
    o3499["Value"] = L0
    if not (L0 ~= 1) then
      o3499.ChangeTo1()
    end
  end
end }
o3500 = { [nil] = {}, GetCalculated = function()
  if not (o3473.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3500.SetStateValue(o3500.GetCalculated())
end, StartCalculate = function()
  o3500["Value"] = o3500.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3389.Node, o3480.Node, 340)
end, SetStateValue = function(L0)
  if not (o3500.Value == L0) then
    o3500["Value"] = L0
    if not (L0 ~= 1) then
      o3500.ChangeTo1()
    end
  end
end }
o3501 = { [nil] = {}, GetCalculated = function()
  if not (o3280.Value == True) then
    if not (o3336.Value == True) then
      if not (o2610.Value == True) then
        if not (o2658.Value == True) then
          if not (o2706.Value == True) then
            if not (o2754.Value == True) then
              if not (o2800.Value == True) then
                if not (o2846.Value == True) then
                  if not (o2892.Value == True) then
                    if not (o2938.Value == True) then
                      if not (o2984.Value == True) then
                        if not (o3030.Value == True) then
                          if not (o3076.Value == True) then
                            if not (o3122.Value == True) then
                              if not (o3627.Value == True) then
                                if not (o3683.Value == True) then
                                  if not (o4158.Value == True) then
                                    if not (o4205.Value ~= True) then
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
  o3501.SetStateValue(o3501.GetCalculated())
end, StartCalculate = function()
  o3501["Value"] = o3501.GetCalculated()
  o3509.StartCalculate()
end, ChangeTo1 = function()
  SetEnemyMatrixElement(0, 1, E)
end, SetStateValue = function(L0)
  if not (o3501.Value == L0) then
    DelayedFunction(2, o3501, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3501.Value == L0) then
    o3501["Value"] = L0
    o3509.ReCalculate()
    if not (L0 ~= 1) then
      o3501.ChangeTo1()
    end
  end
end }
o3502 = { [nil] = {}, GetCalculated = function()
  if not (o2611.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3502.SetStateValue(o3502.GetCalculated())
end, StartCalculate = function()
  o3502["Value"] = o3502.GetCalculated()
  o2656.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3502.Value == L0) then
    DelayedFunction(1, o3502, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3502.Value == L0) then
    o3502["Value"] = L0
    o2656.ReCalculate()
  end
end }
o3503 = { [nil] = {}, GetCalculated = function()
  if not (o2611.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3503.SetStateValue(o3503.GetCalculated())
end, StartCalculate = function()
  o3503["Value"] = o3503.GetCalculated()
  o2704.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3503.Value == L0) then
    DelayedFunction(2, o3503, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3503.Value == L0) then
    o3503["Value"] = L0
    o2704.ReCalculate()
  end
end }
o3504 = { [nil] = {}, GetCalculated = function()
  if not (o2659.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3504.SetStateValue(o3504.GetCalculated())
end, StartCalculate = function()
  o3504["Value"] = o3504.GetCalculated()
  o2608.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3504.Value == L0) then
    DelayedFunction(1, o3504, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3504.Value == L0) then
    o3504["Value"] = L0
    o2608.ReCalculate()
  end
end }
o3505 = { [nil] = {}, GetCalculated = function()
  if not (o2659.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3505.SetStateValue(o3505.GetCalculated())
end, StartCalculate = function()
  o3505["Value"] = o3505.GetCalculated()
  o2704.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3505.Value == L0) then
    DelayedFunction(1.5, o3505, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3505.Value == L0) then
    o3505["Value"] = L0
    o2704.ReCalculate()
  end
end }
o3506 = { [nil] = {}, GetCalculated = function()
  if not (o2707.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3506.SetStateValue(o3506.GetCalculated())
end, StartCalculate = function()
  o3506["Value"] = o3506.GetCalculated()
  o2608.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3506.Value == L0) then
    DelayedFunction(2, o3506, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3506.Value == L0) then
    o3506["Value"] = L0
    o2608.ReCalculate()
  end
end }
o3507 = { [nil] = {}, GetCalculated = function()
  if not (o2707.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3507.SetStateValue(o3507.GetCalculated())
end, StartCalculate = function()
  o3507["Value"] = o3507.GetCalculated()
  o2656.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3507.Value == L0) then
    DelayedFunction(1, o3507, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3507.Value == L0) then
    o3507["Value"] = L0
    o2656.ReCalculate()
  end
end }
o3508 = { [nil] = {}, GetCalculated = function()
  if not (o2611.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3508.SetStateValue(o3508.GetCalculated())
end, StartCalculate = function()
  o3508["Value"] = o3508.GetCalculated()
  o2752.StartCalculate()
  o2798.StartCalculate()
  o2844.StartCalculate()
  o2890.StartCalculate()
  o2936.StartCalculate()
  o2982.StartCalculate()
  o3028.StartCalculate()
  o3074.StartCalculate()
  o3120.StartCalculate()
  o3510.StartCalculate()
  o3565.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2101)
  SendRadioMessageTake(o3480.Node, o3480.Node, 341)
end, SetStateValue = function(L0)
  if not (o3508.Value == L0) then
    o3508["Value"] = L0
    o2752.ReCalculate()
    o2798.ReCalculate()
    o2844.ReCalculate()
    o2890.ReCalculate()
    o2936.ReCalculate()
    o2982.ReCalculate()
    o3028.ReCalculate()
    o3074.ReCalculate()
    o3120.ReCalculate()
    o3510.ReCalculate()
    o3565.ReCalculate()
    if not (L0 ~= 1) then
      o3508.ChangeTo1()
    end
  end
end }
o3509 = { [nil] = {}, GetCalculated = function()
  if not (o3501.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3509.SetStateValue(o3509.GetCalculated())
end, StartCalculate = function()
  o3509["Value"] = o3509.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3480.Node, o3480.Node, 347)
end, SetStateValue = function(L0)
  if not (o3509.Value == L0) then
    DelayedFunction(5, o3509, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3509.Value == L0) then
    o3509["Value"] = L0
    if not (L0 ~= 1) then
      o3509.ChangeTo1()
    end
  end
end }
o3510 = { [nil] = {}, GetCalculated = function()
  if not (o3508.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3510.SetStateValue(o3510.GetCalculated())
end, StartCalculate = function()
  o3510["Value"] = o3510.GetCalculated()
  o3513.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3480.Node, o3480.Node, 342)
end, SetStateValue = function(L0)
  if not (o3510.Value == L0) then
    DelayedFunction(10, o3510, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3510.Value == L0) then
    o3510["Value"] = L0
    o3513.ReCalculate()
    if not (L0 ~= 1) then
      o3510.ChangeTo1()
    end
  end
end }
o3511 = { [nil] = {}, GetCalculated = function()
  if not (o3567.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3511.SetStateValue(o3511.GetCalculated())
end, StartCalculate = function()
  o3511["Value"] = o3511.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3562.Node, o3480.Node, 646)
  SendRadioMessageTake(o3480.Node, o3480.Node, 343)
end, SetStateValue = function(L0)
  if not (o3511.Value == L0) then
    DelayedFunction(4, o3511, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3511.Value == L0) then
    o3511["Value"] = L0
    if not (L0 ~= 1) then
      o3511.ChangeTo1()
    end
  end
end }
o3512 = { [nil] = {}, GetCalculated = function()
  if not (o3575.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3512.SetStateValue(o3512.GetCalculated())
end, StartCalculate = function()
  o3512["Value"] = o3512.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3562.Node, o3480.Node, 346)
end, SetStateValue = function(L0)
  if not (o3512.Value == L0) then
    o3512["Value"] = L0
    if not (L0 ~= 1) then
      o3512.ChangeTo1()
    end
  end
end }
o3513 = { [nil] = {}, GetCalculated = function()
  if not (o3510.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3513.SetStateValue(o3513.GetCalculated())
end, StartCalculate = function()
  o3513["Value"] = o3513.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o3619.Node)
  SED_SetTaskTextKey(2103, -1, -1)
end, SetStateValue = function(L0)
  if not (o3513.Value == L0) then
    DelayedFunction(3, o3513, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3513.Value == L0) then
    o3513["Value"] = L0
    if not (L0 ~= 1) then
      o3513.ChangeTo1()
    end
  end
end }
o3514 = { [nil] = {}, GetCalculated = function()
  if not (o3515.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3514.SetStateValue(o3514.GetCalculated())
end, StartCalculate = function()
  o3514["Value"] = o3514.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3562.Node, o3480.Node, 650)
  Game_SetWayPoint(GetGameNode(), o3736.Node)
end, SetStateValue = function(L0)
  if not (o3514.Value == L0) then
    o3514["Value"] = L0
    if not (L0 ~= 1) then
      o3514.ChangeTo1()
    end
  end
end }
o3515 = { [nil] = {}, Start = function()
  o3515["Value"] = False
  o3514.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3515.Value == L0) then
    o3515["Value"] = L0
    o3514.ReCalculate()
  end
end }
o3516 = { [nil] = {}, GetCalculated = function()
  if not (o3485.Value == True) then
    if not (o3486.Value == True) then
      if not (o3488.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o3516.SetStateValue(o3516.GetCalculated())
end, StartCalculate = function()
  o3516["Value"] = o3516.GetCalculated()
  o3496.StartCalculate()
  o3497.StartCalculate()
  o3498.StartCalculate()
  o3526.StartCalculate()
  o3527.StartCalculate()
end, ChangeTo1 = function()
  SetEnemyMatrixElement(0, 1, E)
end, SetStateValue = function(L0)
  if not (o3516.Value == L0) then
    o3516["Value"] = L0
    o3496.ReCalculate()
    o3497.ReCalculate()
    o3498.ReCalculate()
    o3526.ReCalculate()
    o3527.ReCalculate()
    if not (L0 ~= 1) then
      o3516.ChangeTo1()
    end
  end
end }
o3518 = { [nil] = {}, GetCalculated = function()
  if not (o3429.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3518.SetStateValue(o3518.GetCalculated())
end, StartCalculate = function()
  o3518["Value"] = o3518.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o3389, "Code21")
end, SetStateValue = function(L0)
  if not (o3518.Value == L0) then
    o3518["Value"] = L0
    if not (L0 ~= 1) then
      o3518.ChangeTo1()
    end
  end
end }
o3521 = { [nil] = {}, Start = function()
  o3521["Value"] = False
  o3522.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3521.Value == L0) then
    o3521["Value"] = L0
    o3522.ReCalculate()
  end
end }
o3522 = { [nil] = {}, GetCalculated = function()
  if not (o3521.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3522.SetStateValue(o3522.GetCalculated())
end, StartCalculate = function()
  o3522["Value"] = o3522.GetCalculated()
end, ChangeTo1 = function()
  SED_SetTaskTextKey(2104, -1, -1)
end, SetStateValue = function(L0)
  if not (o3522.Value == L0) then
    DelayedFunction(1, o3522, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3522.Value == L0) then
    o3522["Value"] = L0
    if not (L0 ~= 1) then
      o3522.ChangeTo1()
    end
  end
end }
o3523 = { [nil] = {}, GetCalculated = function()
  if not (o3745.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3523.SetStateValue(o3523.GetCalculated())
end, StartCalculate = function()
  o3523["Value"] = o3523.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3480.Node, o3480.Node, 651)
end, SetStateValue = function(L0)
  if not (o3523.Value == L0) then
    DelayedFunction(2, o3523, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3523.Value == L0) then
    o3523["Value"] = L0
    if not (L0 ~= 1) then
      o3523.ChangeTo1()
    end
  end
end }
o3524 = { [nil] = {}, GetCalculated = function()
  if not (o3933.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3524.SetStateValue(o3524.GetCalculated())
end, StartCalculate = function()
  o3524["Value"] = o3524.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3480.Node, o3480.Node, 652)
end, SetStateValue = function(L0)
  if not (o3524.Value == L0) then
    DelayedFunction(2, o3524, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3524.Value == L0) then
    o3524["Value"] = L0
    if not (L0 ~= 1) then
      o3524.ChangeTo1()
    end
  end
end }
o3525 = { [nil] = {}, Start = function()
  o3525["Value"] = False
  o3526.StartCalculate()
  o3527.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3525.Value == L0) then
    o3525["Value"] = L0
    o3526.ReCalculate()
    o3527.ReCalculate()
  end
end }
o3526 = { [nil] = {}, GetCalculated = function()
  if not (o3525.Value ~= True) then
    if not (o3516.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3526.SetStateValue(o3526.GetCalculated())
end, StartCalculate = function()
  o3526["Value"] = o3526.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o3389, "Code5")
end, SetStateValue = function(L0)
  if not (o3526.Value == L0) then
    o3526["Value"] = L0
    if not (L0 ~= 1) then
      o3526.ChangeTo1()
    end
  end
end }
o3527 = { [nil] = {}, GetCalculated = function()
  if not (o3525.Value ~= True) then
    if not (o3516.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3527.SetStateValue(o3527.GetCalculated())
end, StartCalculate = function()
  o3527["Value"] = o3527.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o3389, "Code27")
end, SetStateValue = function(L0)
  if not (o3527.Value == L0) then
    o3527["Value"] = L0
    if not (L0 ~= 1) then
      o3527.ChangeTo1()
    end
  end
end }
o3528 = { [nil] = {}, GetCalculated = function()
  if not (o3590.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3528.SetStateValue(o3528.GetCalculated())
end, StartCalculate = function()
  o3528["Value"] = o3528.GetCalculated()
  o4250.StartCalculate()
  o4307.StartCalculate()
  o4364.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3528.Value == L0) then
    DelayedFunction(30, o3528, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3528.Value == L0) then
    o3528["Value"] = L0
    o4250.ReCalculate()
    o4307.ReCalculate()
    o4364.ReCalculate()
  end
end }
o3529 = { [nil] = {}, GetCalculated = function()
  if not (o4253.Value ~= True) then
    if not (o4310.Value ~= True) then
      if not (o4367.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o3529.SetStateValue(o3529.GetCalculated())
end, StartCalculate = function()
  o3529["Value"] = o3529.GetCalculated()
  o3542.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3529.Value == L0) then
    o3529["Value"] = L0
    o3542.ReCalculate()
  end
end }
o3530 = { [nil] = {}, GetCalculated = function()
  if not (o4430.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3530.SetStateValue(o3530.GetCalculated())
end, StartCalculate = function()
  o3530["Value"] = o3530.GetCalculated()
  o3543.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3530.Value == L0) then
    o3530["Value"] = L0
    o3543.ReCalculate()
  end
end }
o3531 = { [nil] = {}, GetCalculated = function()
  if not (o4422.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3531.SetStateValue(o3531.GetCalculated())
end, StartCalculate = function()
  o3531["Value"] = o3531.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveFailed(GetGameNode(), 2, 0, 0)
end, SetStateValue = function(L0)
  if not (o3531.Value == L0) then
    o3531["Value"] = L0
    if not (L0 ~= 1) then
      o3531.ChangeTo1()
    end
  end
end }
o3532 = { [nil] = {}, GetCalculated = function()
  if not (o3280.Value == True) then
    if not (o3336.Value == True) then
      if not (o2610.Value == True) then
        if not (o2658.Value == True) then
          if not (o2706.Value == True) then
            if not (o2754.Value == True) then
              if not (o2800.Value == True) then
                if not (o2846.Value == True) then
                  if not (o2892.Value == True) then
                    if not (o2938.Value == True) then
                      if not (o2984.Value == True) then
                        if not (o3030.Value == True) then
                          if not (o3076.Value == True) then
                            if not (o3122.Value == True) then
                              if not (o3627.Value == True) then
                                if not (o3683.Value == True) then
                                  if not (o4158.Value == True) then
                                    if not (o4205.Value ~= True) then
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
  o3532.SetStateValue(o3532.GetCalculated())
end, StartCalculate = function()
  o3532["Value"] = o3532.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "Agressive")
end, SetStateValue = function(L0)
  if not (o3532.Value == L0) then
    o3532["Value"] = L0
    if not (L0 ~= 1) then
      o3532.ChangeTo1()
    end
  end
end }
o3533 = { [nil] = {}, GetCalculated = function()
  if not (o4251.Value == True) then
    if not (o4308.Value == True) then
      if not (o4365.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o3533.SetStateValue(o3533.GetCalculated())
end, StartCalculate = function()
  o3533["Value"] = o3533.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "Agressive")
end, SetStateValue = function(L0)
  if not (o3533.Value == L0) then
    o3533["Value"] = L0
    if not (L0 ~= 1) then
      o3533.ChangeTo1()
    end
  end
end }
o3534 = { [nil] = {}, GetCalculated = function()
  if not (o3590.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3534.SetStateValue(o3534.GetCalculated())
end, StartCalculate = function()
  o3534["Value"] = o3534.GetCalculated()
  o2.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 2, 2000, 2103)
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o3534.Value == L0) then
    o3534["Value"] = L0
    o2.ReCalculate()
    if not (L0 ~= 1) then
      o3534.ChangeTo1()
    end
  end
end }
o3542 = { [nil] = {}, GetCalculated = function()
  if not (o3529.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3542.SetStateValue(o3542.GetCalculated())
end, StartCalculate = function()
  o3542["Value"] = o3542.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 1, 2002, 2105)
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o3542.Value == L0) then
    o3542["Value"] = L0
    if not (L0 ~= 1) then
      o3542.ChangeTo1()
    end
  end
end }
o3543 = { [nil] = {}, GetCalculated = function()
  if not (o3530.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3543.SetStateValue(o3543.GetCalculated())
end, StartCalculate = function()
  o3543["Value"] = o3543.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 2, 2002, 2106)
end, SetStateValue = function(L0)
  if not (o3543.Value == L0) then
    o3543["Value"] = L0
    if not (L0 ~= 1) then
      o3543.ChangeTo1()
    end
  end
end }
o3558 = { [nil] = {}, GetCalculated = function()
  if not (o3578.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3558.SetStateValue(o3558.GetCalculated())
end, StartCalculate = function()
  o3558["Value"] = o3558.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3558.Value == L0) then
    o3558["Value"] = L0
    o26.ReCalculate()
  end
end }
o3559 = { [nil] = {}, GetCalculated = function()
  if not (o1137.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3559.SetStateValue(o3559.GetCalculated())
end, StartCalculate = function()
  o3559["Value"] = o3559.GetCalculated()
  o27.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3559.Value == L0) then
    o3559["Value"] = L0
    o27.ReCalculate()
  end
end }
S_o3562 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o3211)
  CallFunction(o3562, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3562, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o3211, "Code3")
  else
    CallFunction(o3562, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  o3515.SetStateValue(True)
  CallFunction(o3562, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AngelinaPath_1", 0.5, 2 } }(o3212, o3213, "/Scenario_Dynamic/Navigation/Escort_PatrolArea_1", "/Scenario_Dynamic/Navigation/Escort_PatrolArea_1", False, "Code5")
  else
    CallFunction(o3562, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o3216, nil, 0, "Code6")
  else
    CallFunction(o3562, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Born = function(L0, L1)
  o3567.SetStateValue(L1)
end, SetStateValue_KineticShield25 = function(L0, L1)
  o3575.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o3578.SetStateValue(L1)
end, SetStateValue_DockedOn = function(L0, L1)
  o3590.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3565.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3565 = { [nil] = {}, GetCalculated = function()
  if not (o3508.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3565.SetStateValue(o3565.GetCalculated())
end, StartCalculate = function()
  o3565["Value"] = o3565.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3565.Value == L0) then
    DelayedFunction(60, o3565, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3565.Value == L0) then
    o3565["Value"] = L0
    CallFunction(o3562, "ProcesseStateChange")
  end
end }
o3567 = { [nil] = {}, Start = function()
  o3567["Value"] = False
  o3398.StartCalculate()
  o3410.StartCalculate()
  o3511.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3567.Value == L0) then
    o3567["Value"] = L0
    o3398.ReCalculate()
    o3410.ReCalculate()
    o3511.ReCalculate()
  end
end }
o3575 = { [nil] = {}, Start = function()
  o3575["Value"] = False
  o3512.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3575.Value == L0) then
    o3575["Value"] = L0
    o3512.ReCalculate()
  end
end }
o3578 = { [nil] = {}, Start = function()
  o3578["Value"] = False
  o3558.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3578.Value == L0) then
    o3578["Value"] = L0
    o3558.ReCalculate()
  end
end }
o3590 = { [nil] = {}, Start = function()
  o3590["Value"] = False
  o3396.StartCalculate()
  o3408.StartCalculate()
  o3528.StartCalculate()
  o3534.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3590.Value == L0) then
    o3590["Value"] = L0
    o3396.ReCalculate()
    o3408.ReCalculate()
    o3528.ReCalculate()
    o3534.ReCalculate()
  end
end }
S_o3619 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o3619, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3624 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3624, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3624, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3624, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/StaPatrolArea_1", "/Scenario_Dynamic/Navigation/StaPatrolArea_1", "/Scenario_Dynamic/Navigation/StaPatrolArea_1", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o3624, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Attacked = function(L0, L1)
  o3627.SetStateValue(L1)
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
o3627 = { [nil] = {}, Start = function()
  o3627["Value"] = False
  o3501.StartCalculate()
  o3532.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3627.Value == L0) then
    o3627["Value"] = L0
    o3501.ReCalculate()
    o3532.ReCalculate()
  end
end }
S_o3680 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3680, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3680, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3680, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/StaPatrolArea_1", "/Scenario_Dynamic/Navigation/StaPatrolArea_1", "/Scenario_Dynamic/Navigation/StaPatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3680, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Attacked = function(L0, L1)
  o3683.SetStateValue(L1)
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
o3683 = { [nil] = {}, Start = function()
  o3683["Value"] = False
  o3501.StartCalculate()
  o3532.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3683.Value == L0) then
    o3683["Value"] = L0
    o3501.ReCalculate()
    o3532.ReCalculate()
  end
end }
S_o3736 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o3562.Node)
  CallFunction(o3736, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
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
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o3741, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/PathPatrolArea_Tanks", "/Scenario_Dynamic/Navigation/PathPatrolArea_Tanks", "/Scenario_Dynamic/Navigation/PathPatrolArea_Tanks", "E", "", "", "", 0, "Code4")
  else
    CallFunction(o3741, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Born = function(L0, L1)
  o3745.SetStateValue(L1)
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
  if not (o3258.Value ~= True) then
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
    o3743["Value"] = L0
    CallFunction(o3741, "ProcesseStateChange")
  end
end }
o3745 = { [nil] = {}, Start = function()
  o3745["Value"] = False
  o3523.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3745.Value == L0) then
    o3745["Value"] = L0
    o3523.ReCalculate()
  end
end }
S_o3788 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3788, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3788, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o3788, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/PathPatrolArea_Tanks", "/Scenario_Dynamic/Navigation/PathPatrolArea_Tanks", "/Scenario_Dynamic/Navigation/PathPatrolArea_Tanks", "E", "", "", "", 0, "Code4")
  else
    CallFunction(o3788, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3790.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3790 = { [nil] = {}, GetCalculated = function()
  if not (o3258.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3790.SetStateValue(o3790.GetCalculated())
end, StartCalculate = function()
  o3790["Value"] = o3790.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3790.Value == L0) then
    DelayedFunction(0.2, o3790, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3790.Value == L0) then
    o3790["Value"] = L0
    CallFunction(o3788, "ProcesseStateChange")
  end
end }
S_o3835 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3835, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3835, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o3835, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/PathPatrolArea_Tanks", "/Scenario_Dynamic/Navigation/PathPatrolArea_Tanks", "/Scenario_Dynamic/Navigation/PathPatrolArea_Tanks", "E", "", "", "", 0, "Code4")
  else
    CallFunction(o3835, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3837.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3837 = { [nil] = {}, GetCalculated = function()
  if not (o3258.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3837.SetStateValue(o3837.GetCalculated())
end, StartCalculate = function()
  o3837["Value"] = o3837.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3837.Value == L0) then
    DelayedFunction(0.5, o3837, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3837.Value == L0) then
    o3837["Value"] = L0
    CallFunction(o3835, "ProcesseStateChange")
  end
end }
S_o3882 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3882, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3882, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o3882, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/PathPatrolArea_Tanks", "/Scenario_Dynamic/Navigation/PathPatrolArea_Tanks", "/Scenario_Dynamic/Navigation/PathPatrolArea_Tanks", "E", "", "", "", 0, "Code4")
  else
    CallFunction(o3882, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3884.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3884 = { [nil] = {}, GetCalculated = function()
  if not (o3258.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3884.SetStateValue(o3884.GetCalculated())
end, StartCalculate = function()
  o3884["Value"] = o3884.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3884.Value == L0) then
    DelayedFunction(1, o3884, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3884.Value == L0) then
    o3884["Value"] = L0
    CallFunction(o3882, "ProcesseStateChange")
  end
end }
S_o3929 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3929, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3929, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3929, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PathPatrolArea_Scouts", "/Scenario_Dynamic/Navigation/PathPatrolArea_Scouts", "/Scenario_Dynamic/Navigation/PathFollowArea_Scouts", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3929, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Born = function(L0, L1)
  o3933.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3931.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3931 = { [nil] = {}, GetCalculated = function()
  if not (o3270.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3931.SetStateValue(o3931.GetCalculated())
end, StartCalculate = function()
  o3931["Value"] = o3931.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3931.Value == L0) then
    o3931["Value"] = L0
    CallFunction(o3929, "ProcesseStateChange")
  end
end }
o3933 = { [nil] = {}, Start = function()
  o3933["Value"] = False
  o3524.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3933.Value == L0) then
    o3933["Value"] = L0
    o3524.ReCalculate()
  end
end }
S_o3985 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3985, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3985, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3985, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PathPatrolArea_Scouts", "/Scenario_Dynamic/Navigation/PathPatrolArea_Scouts", "/Scenario_Dynamic/Navigation/PathFollowArea_Scouts", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3985, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3987.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3987 = { [nil] = {}, GetCalculated = function()
  if not (o3270.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3987.SetStateValue(o3987.GetCalculated())
end, StartCalculate = function()
  o3987["Value"] = o3987.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3987.Value == L0) then
    DelayedFunction(0.1, o3987, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3987.Value == L0) then
    o3987["Value"] = L0
    CallFunction(o3985, "ProcesseStateChange")
  end
end }
S_o4041 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4041, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4041, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4041, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PathPatrolArea_Scouts", "/Scenario_Dynamic/Navigation/PathPatrolArea_Scouts", "/Scenario_Dynamic/Navigation/PathFollowArea_Scouts", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4041, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4043.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4043 = { [nil] = {}, GetCalculated = function()
  if not (o3270.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4043.SetStateValue(o4043.GetCalculated())
end, StartCalculate = function()
  o4043["Value"] = o4043.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4043.Value == L0) then
    o4043["Value"] = L0
    CallFunction(o4041, "ProcesseStateChange")
  end
end }
S_o4097 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4097, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4097, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4097, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o4097, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CraGuardPatrolArea_1", "/Scenario_Dynamic/Navigation/CraGuardPatrolArea_1" }, 20, 1, "Code5")
  else
    CallFunction(o4097, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4099.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4099 = { [nil] = {}, GetCalculated = function()
  if not (o3270.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4099.SetStateValue(o4099.GetCalculated())
end, StartCalculate = function()
  o4099["Value"] = o4099.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4099.Value == L0) then
    o4099["Value"] = L0
    CallFunction(o4097, "ProcesseStateChange")
  end
end }
S_o4153 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4153, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4153, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4153, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 15, -20, -10)
  CallFunction(o4153, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "", "", "", "", "Code5")
  else
    CallFunction(o4153, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Turret_SetAngleArea(L0.Node, 180, -60, 60)
  CallFunction(o4153, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "E", "", "", "", "Code7")
  else
    CallFunction(o4153, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o4158.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4154.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4154 = { [nil] = {}, GetCalculated = function()
  if not (o3240.Value == True) then
    if not (o3246.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o4154.SetStateValue(o4154.GetCalculated())
end, StartCalculate = function()
  o4154["Value"] = o4154.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4154.Value == L0) then
    o4154["Value"] = L0
    CallFunction(o4153, "ProcesseStateChange")
  end
end }
o4158 = { [nil] = {}, Start = function()
  o4158["Value"] = False
  o3501.StartCalculate()
  o3532.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4158.Value == L0) then
    o4158["Value"] = L0
    o3501.ReCalculate()
    o3532.ReCalculate()
  end
end }
S_o4200 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4200, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4200, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4200, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 15, -20, -10)
  CallFunction(o4200, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "", "", "", "", "Code5")
  else
    CallFunction(o4200, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Turret_SetAngleArea(L0.Node, 180, -60, 60)
  CallFunction(o4200, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "E", "", "", "", "Code7")
  else
    CallFunction(o4200, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o4205.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4201.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4201 = { [nil] = {}, GetCalculated = function()
  if not (o3228.Value == True) then
    if not (o3234.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o4201.SetStateValue(o4201.GetCalculated())
end, StartCalculate = function()
  o4201["Value"] = o4201.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4201.Value == L0) then
    o4201["Value"] = L0
    CallFunction(o4200, "ProcesseStateChange")
  end
end }
o4205 = { [nil] = {}, Start = function()
  o4205["Value"] = False
  o3501.StartCalculate()
  o3532.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4205.Value == L0) then
    o4205["Value"] = L0
    o3501.ReCalculate()
    o3532.ReCalculate()
  end
end }
S_o4247 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4247, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4247, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4247, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.ComplexGotoAttack({ 0, { {}, "Goto", "/Scenario_Dynamic/Navigation/BonusPath_1", 1, 2 } }, "/Scenario_Dynamic/Navigation/PathFollowArea_Scouts", 512, "E", "", "", "", 5, 1, False, "Code4")
  else
    CallFunction(o4247, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/StaPatrolArea_1", "/Scenario_Dynamic/Navigation/StaPatrolArea_1", "/Scenario_Dynamic/Navigation/StaPatrolArea_1", "player1", "", "", "", 0.5, "Code5")
  else
    CallFunction(o4247, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o4251.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o4253.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4250.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4250 = { [nil] = {}, GetCalculated = function()
  if not (o3528.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4250.SetStateValue(o4250.GetCalculated())
end, StartCalculate = function()
  o4250["Value"] = o4250.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4250.Value == L0) then
    o4250["Value"] = L0
    CallFunction(o4247, "ProcesseStateChange")
  end
end }
o4251 = { [nil] = {}, Start = function()
  o4251["Value"] = False
  o3533.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4251.Value == L0) then
    o4251["Value"] = L0
    o3533.ReCalculate()
  end
end }
o4253 = { [nil] = {}, Start = function()
  o4253["Value"] = False
  o3529.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4253.Value == L0) then
    o4253["Value"] = L0
    o3529.ReCalculate()
  end
end }
S_o4304 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4304, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4304, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4304, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.ComplexGotoAttack({ 0, { {}, "Goto", "/Scenario_Dynamic/Navigation/BonusPath_1", 1, 2 } }, "/Scenario_Dynamic/Navigation/PathFollowArea_Scouts", 512, "player1", "", "", "", 5, 1, False, "Code4")
  else
    CallFunction(o4304, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/StaPatrolArea_1", "/Scenario_Dynamic/Navigation/StaPatrolArea_1", "/Scenario_Dynamic/Navigation/StaPatrolArea_1", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o4304, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o4308.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o4310.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4307.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4307 = { [nil] = {}, GetCalculated = function()
  if not (o3528.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4307.SetStateValue(o4307.GetCalculated())
end, StartCalculate = function()
  o4307["Value"] = o4307.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4307.Value == L0) then
    DelayedFunction(10, o4307, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4307.Value == L0) then
    o4307["Value"] = L0
    CallFunction(o4304, "ProcesseStateChange")
  end
end }
o4308 = { [nil] = {}, Start = function()
  o4308["Value"] = False
  o3533.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4308.Value == L0) then
    o4308["Value"] = L0
    o3533.ReCalculate()
  end
end }
o4310 = { [nil] = {}, Start = function()
  o4310["Value"] = False
  o3529.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4310.Value == L0) then
    o4310["Value"] = L0
    o3529.ReCalculate()
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
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4361, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.ComplexGotoAttack({ 0, { {}, "Goto", "/Scenario_Dynamic/Navigation/BonusPath_1", 1, 2 } }, "/Scenario_Dynamic/Navigation/PathFollowArea_Scouts", 512, "player1", "", "", "", 5, 1, False, "Code4")
  else
    CallFunction(o4361, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/StaPatrolArea_1", "/Scenario_Dynamic/Navigation/StaPatrolArea_1", "/Scenario_Dynamic/Navigation/StaPatrolArea_1", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o4361, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o4365.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o4367.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4364.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4364 = { [nil] = {}, GetCalculated = function()
  if not (o3528.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4364.SetStateValue(o4364.GetCalculated())
end, StartCalculate = function()
  o4364["Value"] = o4364.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4364.Value == L0) then
    DelayedFunction(20, o4364, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4364.Value == L0) then
    o4364["Value"] = L0
    CallFunction(o4361, "ProcesseStateChange")
  end
end }
o4365 = { [nil] = {}, Start = function()
  o4365["Value"] = False
  o3533.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4365.Value == L0) then
    o4365["Value"] = L0
    o3533.ReCalculate()
  end
end }
o4367 = { [nil] = {}, Start = function()
  o4367["Value"] = False
  o3529.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4367.Value == L0) then
    o4367["Value"] = L0
    o3529.ReCalculate()
  end
end }
S_o4418 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4418, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4418, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4418, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetFriendlyFireMode(L0.Node, 0)
  CallFunction(o4418, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o4422.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o4430.SetStateValue(L1)
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
o4422 = { [nil] = {}, Start = function()
  o4422["Value"] = False
  o3531.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4422.Value == L0) then
    o4422["Value"] = L0
    o3531.ReCalculate()
  end
end }
o4430 = { [nil] = {}, Start = function()
  o4430["Value"] = False
  o3530.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4430.Value == L0) then
    o4430["Value"] = L0
    o3530.ReCalculate()
  end
end }
S_o4473 = { [nil] = {}, Start = function(L0)

end }
S_o4474 = { [nil] = {}, Start = function(L0)

end }
S_o4475 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Atmo")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o4475, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o4475, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/Position_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/wng_animal_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o4475, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2.8, "Code9")
  else
    CallFunction(o4475, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Camera_MoveTo(L0.Node, "/Scenario_Dynamic/Object/player1", 1, "MBBN", 30)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 1, "MMMN", 0)
  CallFunction(o4475, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code12")
  else
    CallFunction(o4475, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_MoveTo(L0.Node, "/Scenario_Dynamic/Object/player1", 2, "MBTN", 30)
  CallFunction(o4475, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code14")
  else
    CallFunction(o4475, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4481 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  FormationLib.PlaceFormationPath(o3214, o3215, "/Scenario_Dynamic/Navigation/AnimalPath_1")
  CallFunction(o4481, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o3214, o3215, "/Scenario_Dynamic/Navigation/AnimalPath_1", "pos_1", "pos_3", 1, 1, "Code2")
  else
    CallFunction(o4481, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  o3525.SetStateValue(True)
  Camera_Cut(L0.Node, 1)
  CallFunction(o4481, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code5")
  else
    CallFunction(o4481, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Director_EndCutscene(L0.Node)
  CallFunction(o4481, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code7")
  else
    CallFunction(o4481, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  o3521.SetStateValue(True)
  Game_SetWayPoint(GetGameNode(), o3465.Node)
  CallFunction(o4481, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 264)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_claw_l_a", S_o30)
  o76 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_claw_l_b", S_o76)
  o122 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_claw_l_c", S_o122)
  o168 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_claw_l_d", S_o168)
  o214 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_claw_l_e", S_o214)
  o260 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_claw_l_f", S_o260)
  o306 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_claw_l_g", S_o306)
  o352 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_claw_s_h", S_o352)
  o398 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_claw_s_i", S_o398)
  o444 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_claw_l_j", S_o444)
  o490 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_claw_l_k", S_o490)
  o536 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_claw_l_01_1", S_o536)
  o582 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_claw_l_01_1a", S_o582)
  o628 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_claw_l_01_2", S_o628)
  o674 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_claw_l_01_2a", S_o674)
  o720 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_claw_l_02_1", S_o720)
  o766 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_claw_s_01_1", S_o766)
  o812 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_claw_s_01_1b", S_o812)
  o858 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_claw_s_01_1c", S_o858)
  o904 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_claw_s_01_2", S_o904)
  o950 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_claw_s_02_1", S_o950)
  o996 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_claw_s_02_1a", S_o996)
  o1042 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_claw_s_02_2", S_o1042)
  o1088 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_claw_s_01_3", S_o1088)
  o1134 = BindEasy(Node_Find("/Scenario_Static/Object"), "pla_harvester_1", S_o1134)
  o1137.Start()
  o1181 = BindEasy(Node_Find("/Scenario_Static/Object/Pipes"), "gen_rohr_small02_1", S_o1181)
  o1227 = BindEasy(Node_Find("/Scenario_Static/Object/Pipes"), "gen_rohr_small02_2", S_o1227)
  o1273 = BindEasy(Node_Find("/Scenario_Static/Object/Pipes"), "gen_rohr_small03_1", S_o1273)
  o1319 = BindEasy(Node_Find("/Scenario_Static/Object/Pipes"), "gen_rohr_small03_2", S_o1319)
  o1365 = BindEasy(Node_Find("/Scenario_Static/Object/Pipes"), "gen_rohr_small03_3", S_o1365)
  o1411 = BindEasy(Node_Find("/Scenario_Static/Object/Pipes"), "gen_rohr_small03_4", S_o1411)
  o1457 = BindEasy(Node_Find("/Scenario_Static/Object/Pipes"), "gen_rohr_small03_5", S_o1457)
  o1503 = BindEasy(Node_Find("/Scenario_Static/Object/Pipes"), "gen_rohr_small03_6", S_o1503)
  o1549 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_dock_1", S_o1549)
  o1595 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_shelter_1", S_o1595)
  o1641 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_beacon_1", S_o1641)
  o1687 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_beacon_2", S_o1687)
  o1733 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_wblock3a_01_1", S_o1733)
  o1779 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_wblock3a_raw_1", S_o1779)
  o1825 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_wblock3b_01_1", S_o1825)
  o1871 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_wblock3b_01_2", S_o1871)
  o1917 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_gangway02_1", S_o1917)
  o1963 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_gangway02_2", S_o1963)
  o2009 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_gangway02_3", S_o2009)
  o2055 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_gangway02_4", S_o2055)
  o2101 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_metalblock1_1", S_o2101)
  o2147 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_metalblock2_1", S_o2147)
  o2193 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_gangway02_5", S_o2193)
  o2239 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_gangway03_1", S_o2239)
  o2285 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_gangway03_2", S_o2285)
  o2331 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_gangway03_3", S_o2331)
  o2377 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_gangway03_4", S_o2377)
  o2423 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_metalblock3_1", S_o2423)
  o2469 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_metalblock1_2", S_o2469)
  o2515 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_metalblock3_2", S_o2515)
  o2561 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_metalblock2_2", S_o2561)
  o2607 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_trafo_des_1", S_o2607)
  o2610.Start()
  o2611.Start()
  o2655 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_trafo_des_2", S_o2655)
  o2658.Start()
  o2659.Start()
  o2703 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_trafo_des_3", S_o2703)
  o2706.Start()
  o2707.Start()
  o2751 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_turret_1/Turm1", S_o2751)
  o2754.Start()
  o2797 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_turret_2/Turm1", S_o2797)
  o2800.Start()
  o2843 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_turret_3/Turm1", S_o2843)
  o2846.Start()
  o2889 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_turret_4/Turm1", S_o2889)
  o2892.Start()
  o2935 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_turret_5/Turm1", S_o2935)
  o2938.Start()
  o2981 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_turret_6/Turm1", S_o2981)
  o2984.Start()
  o3027 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_torptower_1/Turm1", S_o3027)
  o3030.Start()
  o3073 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_torptower_2/Turm1", S_o3073)
  o3076.Start()
  o3119 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_torptower_3/Turm1", S_o3119)
  o3122.Start()
  o3165 = BindEasy(Node_Find("/Scenario_Static/Object"), "cra_metalblock1_3", S_o3165)
  o3217 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "AnimalTriggerPresence_1", S_o3217)
  o3222.Start()
  o3223 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Sniper2TriggerVisibility", S_o3223)
  o3228.Start()
  o3229 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Sniper2TriggerAcousticBox", S_o3229)
  o3234.Start()
  o3235 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Sniper1TriggerVisibility", S_o3235)
  o3240.Start()
  o3241 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Sniper1TriggerAcousticBox", S_o3241)
  o3246.Start()
  o3247 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Angelina_TriggerPresence_1", S_o3247)
  o3252.Start()
  o3253 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Angelina_TriggerPresenceBox_1", S_o3253)
  o3258.Start()
  o3259 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Angelina_TriggerPresenceBox_2", S_o3259)
  o3265 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Angelina_TriggerPresenceBox_3", S_o3265)
  o3270.Start()
  o3271 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_1", S_o3271)
  o3276.Start()
  o3277 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "cra_scout1_narrow_1", S_o3277)
  o3280.Start()
  o3333 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "cra_scout1_narrow_2", S_o3333)
  o3336.Start()
  o3389 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_animal_1", S_o3389)
  o3413.Start()
  o3429.Start()
  o3465 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_follow_animal", S_o3465)
  o3470 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1", S_o3470)
  o3473.Start()
  o3475 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_attack_1", S_o3475)
  o3480 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o3480)
  o3485.Start()
  o3486.Start()
  o3488.Start()
  o3515.Start()
  o3521.Start()
  o3525.Start()
  o3562 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_angelina_1", S_o3562)
  o3567.Start()
  o3575.Start()
  o3578.Start()
  o3590.Start()
  o3619 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_2", S_o3619)
  o3624 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_bomber_1", S_o3624)
  o3627.Start()
  o3680 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2_narrow_1", S_o3680)
  o3683.Start()
  o3736 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_follow_angelina", S_o3736)
  o3741 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_1", S_o3741)
  o3745.Start()
  o3788 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_2", S_o3788)
  o3835 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_3", S_o3835)
  o3882 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_4", S_o3882)
  o3929 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_narrow_1", S_o3929)
  o3933.Start()
  o3985 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_narrow_2", S_o3985)
  o4041 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2_narrow_2", S_o4041)
  o4097 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_guard_1", S_o4097)
  o4153 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_sniper_1/Turm1", S_o4153)
  o4158.Start()
  o4200 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_sniper_2/Turm1", S_o4200)
  o4205.Start()
  o4247 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bonus_cra_scout2_narrow_1", S_o4247)
  o4251.Start()
  o4253.Start()
  o4304 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bonus_cra_scout2_narrow_2", S_o4304)
  o4308.Start()
  o4310.Start()
  o4361 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bonus_cra_scout2_narrow_3", S_o4361)
  o4365.Start()
  o4367.Start()
  o4418 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_freighter_1", S_o4418)
  o4422.Start()
  o4430.Start()
  o4473 = BindEasy(Node_Find("/"), "Camera", S_o4473)
  o4474 = BindEasy(Node_Find("/IngameSequences/Navigation"), "Position_1", S_o4474)
  o4475 = BindEasy(Node_Find("/IngameSequences/Director"), "IntroDirector_1", S_o4475)
  o4481 = BindEasy(Node_Find("/IngameSequences/Director"), "Director_1", S_o4481)
  o3212 = { {}, o3562, o3389 }()
  o3214 = { {}, o3480, o3389 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
