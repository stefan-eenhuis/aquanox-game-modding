-- dekompiliert aus 1h3.sco
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
  Terrain_LoadTerrain(node1, "map/1H3/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/1H3/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/1H3/Lmsh/", "map/1H3/Ltex/")
  Game_SetTerrainDepth(node0, 5461)
  Game_SetDecompressionHeight(node0, 175)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.058824, 0.058824, 0.043137)
  Game_SetParallelLightT(node0, 0.117647, 0.117647, 0.082353)
  Game_SetParallelLightB(node0, 0.058824, 0.058824, 0.043137)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_1h3.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_1H3.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient1.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit1.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_hektik.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_unhancy1.sam", 3)
  Game_LoadMusic(node0, "sfx/sample/music/music_mystery.sam", 4)
  Game_SetNPCHitFactor(node0, 0.6)
  Game_SetEnvironmentCubeMap(node0, "map/1H3/CubeMap/envcubemap.dds")
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
  node8 = Node_CreateNode("nod_generic", "pla_harvester_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(2795.384636, 3047.816957, 203.167011), MAT_Vector3(-36.382495, 0, 0))
  Node_ParseIniFile(node8, "osd/pla/pla_harvester.osd")
  Body_SetFriendOrFoeID(node8, 2)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "tz_element07_1")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(1719.833179, 1630.257286, 54.015848), MAT_Vector3(-32.813923, 2.271018, 0.566256))
  Node_ParseIniFile(node9, "osd/tz/tz_element07.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "tz_element06_1")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(1559.597577, 880.049131, 36.657898), MAT_Vector3(-6.123851, 2.826385, -0.016979))
  Node_ParseIniFile(node10, "osd/tz/tz_element06.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "tz_element06_2")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(1033.125566, 1433.209077, 35.411688), MAT_Vector3(88.66321, 1.417101, -0.075727))
  Node_ParseIniFile(node11, "osd/tz/tz_element06.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "tz_element06_raw_1")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(1288.095694, 2002.888261, 20.46504), MAT_Vector3(38.990003, -27.762492, 2.687913))
  Node_ParseIniFile(node12, "osd/tz/tz_element06_raw.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "tz_element05_raw_1")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(1114.862556, 1031.375701, 26.426767), MAT_Vector3(-42.492518, 26.900935, -0.834506))
  Node_ParseIniFile(node13, "osd/tz/tz_element05_raw.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "tz_element05_raw_2")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(1779.77605, 1198.713348, 29.513294), MAT_Vector3(91.178849, -3.329117, 10.590264))
  Node_ParseIniFile(node14, "osd/tz/tz_element05_raw.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "tz_element03_raw_1")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(1774.52425, 1015.829488, 20.065337), MAT_Vector3(87.449209, -11.070154, 7.609797))
  Node_ParseIniFile(node15, "osd/tz/tz_element03_raw.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "gen_shelter_docking_1")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(1355.028572, 1316.626438, 19.147084), MAT_Vector3(28.730751, -10.110548, -6.199726))
  Node_ParseIniFile(node16, "osd/gen/gen_shelter_docking.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "gen_shelter_docking_2")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(1403.669, 1639.186, 21.639503), MAT_Vector3(111.411521, 1.030046, -9.088402))
  Node_ParseIniFile(node17, "osd/gen/gen_shelter_docking.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "gen_metalblock3_1")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(1634.233929, 1109.357942, 23.813782), MAT_Vector3(175.789939, -7.15397, -7.6213))
  Node_ParseIniFile(node18, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "tz_element04_raw1_1")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(1299.089927, 1735.74604, -35.00828), MAT_Vector3(-116.105085, -56.122226, -35.288809))
  Node_ParseIniFile(node19, "osd/tz/tz_element04_raw1.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "tz_element04_raw1_5")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(1253.407233, 1046.027227, -114.596093), MAT_Vector3(-28.87961, -12.615322, -14.167839))
  Node_ParseIniFile(node20, "osd/tz/tz_element04_raw1.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "tz_element03_raw_2")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(1048.274481, 1770.399808, 22.840562), MAT_Vector3(159.458881, 78.031251, -66.034048))
  Node_ParseIniFile(node21, "osd/tz/tz_element03_raw.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "tz_element03_raw_3")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(1027.656116, 1182.672233, 22.84056), MAT_Vector3(-55.196997, 11.237563, 1.109777))
  Node_ParseIniFile(node22, "osd/tz/tz_element03_raw.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "gen_rohr_big02_1")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(1153.660118, 1109.329016, 19.146435), MAT_Vector3(-41.2035, -6.136359, -0.579006))
  Node_ParseIniFile(node23, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "gen_rohr_big02_2")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(1603.886033, 1557.183409, 29.162527), MAT_Vector3(150.82441, -21.091001, 2.414468))
  Node_ParseIniFile(node24, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "gen_rohr_big02_3")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(1464.192822, 1338.516025, 17.264555), MAT_Vector3(-60.628897, -4.125552, 34.280756))
  Node_ParseIniFile(node25, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_rohr_big02_4")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(1664.230756, 1343.874154, 3.199836), MAT_Vector3(-63.307043, 1.781034, 31.570356))
  Node_ParseIniFile(node26, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "gen_rohr_small02_1")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(1705.070159, 1063.739671, 28.391196), MAT_Vector3(-92.801842, -2.275556, -1.685878))
  Node_ParseIniFile(node27, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "gen_rohr_small02_2")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(1707.749083, 1043.232313, 24.628747), MAT_Vector3(-95.568191, -4.024324, 0.551934))
  Node_ParseIniFile(node28, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "tz_element01_raw_1")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(1617.711872, 1217.746959, 34.388167), MAT_Vector3(14.397356, -8.518928, -12.63536))
  Node_ParseIniFile(node29, "osd/tz/tz_element01_raw.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "tz_element01_raw_2")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(1219.824999, 1256.565244, 32.234928), MAT_Vector3(19.971209, 1.422636, -1.862042))
  Node_ParseIniFile(node30, "osd/tz/tz_element01_raw.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "tz_element01_raw_3")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(1549.086645, 1470.276508, 27.678888), MAT_Vector3(58.710497, 1.422636, -1.862042))
  Node_ParseIniFile(node31, "osd/tz/tz_element01_raw.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "gen_clunker1_1")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(1936.16035, 1327.197652, 24.285523), MAT_Vector3(-159.376246, 0, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_clunker1.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_clunker1_2")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(1114.4, 1654.878, 4.412505), MAT_Vector3(-79.736074, 0.724465, 6.916918))
  Node_ParseIniFile(node33, "osd/gen/gen_clunker1.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_turret", "gen_turret_easy_1")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(1828.331952, 1063.208655, 29.413793), MAT_Vector3(-88.939594, 0, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_turret_easy.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_turret", "gen_turret_easy_3")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(1430.938174, 1487.984059, 70.739009), MAT_Vector3(-89.979546, 0, 0))
  Node_ParseIniFile(node35, "osd/gen/gen_turret_easy.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_turret", "gen_torp_m_2")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(1384.027788, 1110.366605, 70.532975), MAT_Vector3(-80.217214, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_torp_easy.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "tz_element05_raw_01")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(468.459207, 1997.719714, 58.88077), MAT_Vector3(-21.488015, 6.545369, 14.074421))
  Node_ParseIniFile(node37, "osd/tz/tz_element05_raw.osd")
  Body_SetFriendOrFoeID(node37, 5)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "tz_element03_raw_01")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(591.993954, 2274.686612, 30.872769), MAT_Vector3(136.40679, -11.861245, 9.942766))
  Node_ParseIniFile(node38, "osd/tz/tz_element03_raw.osd")
  Body_SetFriendOrFoeID(node38, 5)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_shelter_1")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(503.4583, 2138.277, 62.22796), MAT_Vector3(-21.91174, 1.71402, 19.16582))
  Node_ParseIniFile(node39, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node39, 5)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_quay_1")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(605.4545, 2107.131, 47.35833), MAT_Vector3(-33.48457, 1.712247, -24.00822))
  Node_ParseIniFile(node40, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node40, 5)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "tz_element04_raw1_4")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(1947.676584, 1081.987525, -57.750941), MAT_Vector3(-94.312735, -9.034768, 2.200659))
  Node_ParseIniFile(node41, "osd/tz/tz_element04_raw1.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "tz_element04_raw1_2")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(1519.445, 2060.004, -89.14636), MAT_Vector3(-50.21742, -0.009049, -11.92815))
  Node_ParseIniFile(node42, "osd/tz/tz_element04_raw1.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "tz_element04_raw1_3")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(509.4155, 2127.006, -43.70261), MAT_Vector3(-0.79307, 37.93532, -11.38578))
  Node_ParseIniFile(node43, "osd/tz/tz_element04_raw1.osd")
  Body_SetFriendOrFoeID(node43, 5)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_rohr_small01_1")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(3192.201664, 363.664745, 22.418617), MAT_Vector3(1.303943, -10.169358, -1.09006))
  Node_ParseIniFile(node44, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node44, 5)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_rohr_small01_2")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(3148.737128, 257.698876, 22.41862), MAT_Vector3(135.281338, -10.16936, -1.09006))
  Node_ParseIniFile(node45, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node45, 5)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_elfnote_1")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(3065.940516, 2133.465862, 26.56697), MAT_Vector3(21.60955, 0.072632, 2.850257))
  Node_ParseIniFile(node46, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node46, 5)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "gen_elfnote_2")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(2372.064677, 2946.223232, 6.486128), MAT_Vector3(-41.494402, 0.072632, 2.850257))
  Node_ParseIniFile(node47, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node47, 5)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "gen_elfnote_3")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(3140.583493, 3492.184101, 17.622077), MAT_Vector3(-27.913067, 8.711612, 0.610792))
  Node_ParseIniFile(node48, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node48, 5)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "gen_elfnote_4")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(1291.880143, 1432.757659, 32.527004), MAT_Vector3(31.078949, 10.828079, -1.117852))
  Node_ParseIniFile(node49, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "gen_rohr_small01_3")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(3065.424381, 2081.348564, 24.922954), MAT_Vector3(179.874747, -6.280049, -1.03291))
  Node_ParseIniFile(node50, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node50, 5)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_rohr_small01_4")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(3027.092085, 2174.520171, 21.208679), MAT_Vector3(40.515149, -4.934848, 0.273433))
  Node_ParseIniFile(node51, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node51, 5)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "gen_rohr_small01_5")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(2397.594194, 2898.392588, 6.278806), MAT_Vector3(-151.070563, -4.934848, 0.273433))
  Node_ParseIniFile(node52, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node52, 5)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_rohr_small01_6")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(2322.198779, 2962.960184, 1.302182), MAT_Vector3(69.82624, -4.934848, 0.273433))
  Node_ParseIniFile(node53, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node53, 5)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "gen_rohr_small01_7")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(2417.528084, 2973.150776, 4.947689), MAT_Vector3(-56.57965, -8.452309, -0.636026))
  Node_ParseIniFile(node54, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node54, 5)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "gen_rohr_small01_8")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(3099.498751, 3456.709837, 7.829935), MAT_Vector3(133.167294, -8.452309, -0.636026))
  Node_ParseIniFile(node55, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node55, 5)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "gen_rohr_small01_9")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(3150.421691, 3549.322146, 8.616002), MAT_Vector3(-7.288488, -8.452309, -0.636026))
  Node_ParseIniFile(node56, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node56, 5)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "gen_metalblock3_2")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(1148.127327, 217.145805, 93.196931), MAT_Vector3(15.142184, 1.440914, 6.208244))
  Node_ParseIniFile(node57, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node57, 5)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "tz_element07_raw_1")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(1024.603757, 540.115292, 34.368458), MAT_Vector3(-60.092327, 14.445861, 1.771291))
  Node_ParseIniFile(node58, "osd/tz/tz_element07_raw.osd")
  Body_SetFriendOrFoeID(node58, 5)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_fx_rays", "fx_rays_1H3_1")
  Node_AddSon(node7, node59)
  Node_ParseIniFile(node59, "osd/fx_rays/fx_rays_1H3.osd")
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_fx_sky", "fx_sky_1H3_1")
  Node_AddSon(node7, node60)
  Node_ParseIniFile(node60, "osd/fx_sky/fx_sky_1H3.osd")
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_fx_flare", "fx_flare_1H3_1")
  Node_AddSon(node7, node61)
  Node_ParseIniFile(node61, "osd/fx_flare/fx_flare_1H3.osd")
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_fx_plankton", "fx_plankton_tz_d_1")
  Node_AddSon(node7, node62)
  Node_ParseIniFile(node62, "osd/fx_plankton/fx_plankton_tz_d.osd")
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node63)
  Node_ParseIniFile(node63, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node63, "map/1H3/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node7, node64)
  Node_ParseIniFile(node64, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node64, "map/1H3/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_fx_plant", "org_grass_l_1")
  Node_AddSon(node7, node65)
  Node_ParseIniFile(node65, "osd/fx_plant/org_grass_l.osd")
  FX_Plant_SetMap(node65, "map/1H3/Terrain/org_grass_l.tga")
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node7, node66)
  Node_ParseIniFile(node66, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node66, "map/1H3/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_fx_plant", "org_shells_1")
  Node_AddSon(node7, node67)
  Node_ParseIniFile(node67, "osd/fx_plant/org_shells.osd")
  FX_Plant_SetMap(node67, "map/1H3/Terrain/org_shells.tga")
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_fx_plant", "org_fungus_s01_1")
  Node_AddSon(node7, node68)
  Node_ParseIniFile(node68, "osd/fx_plant/org_fungus_s01.osd")
  FX_Plant_SetMap(node68, "map/1H3/Terrain/org_fungus_s01.tga")
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "org_fungus_l_1")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(3330.686168, 1495.261652, 13.469009), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node69, "osd/fungus/org_fungus_l.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "org_fungus_m_1")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(3332.529084, 1457.89497, 14.968711), MAT_Vector3(-1.283877, 0.892602, 0.91283))
  Node_ParseIniFile(node70, "osd/fungus/org_fungus_m.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "org_fungus_l_2")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(3177.765734, 1908.658668, 21.960377), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node71, "osd/fungus/org_fungus_l.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "ter_bridgering_l_1")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(2578.701, 306.2147, 62.5853), MAT_Vector3(-38.35145, 0, 0))
  Node_ParseIniFile(node72, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node72, 5)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "ter_bridgering_l_2")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(3156.113, 680.3297, 42.18265), MAT_Vector3(-17.00954, 0, 0))
  Node_ParseIniFile(node73, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node73, 5)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "ter_bridgering_l_3")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(3009.135, 537.4057, 85.10067), MAT_Vector3(-110.7489, 10.06964, -1.35361))
  Node_ParseIniFile(node74, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node74, 5)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "ter_bridgering_l_4")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(3659.694, 1496.538, 101.736), MAT_Vector3(-126.9622, 4.099143, 5.485582))
  Node_ParseIniFile(node75, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node75, 5)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "ter_cave_01_1")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(3172.054, 732.8776, 24.222), MAT_Vector3(-15.37862, 0, 0))
  Node_ParseIniFile(node76, "osd/ter/ter_cave_01.osd")
  Body_SetFriendOrFoeID(node76, 5)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "ter_edgering_1")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(2529.651, 487.9076, 101.9315), MAT_Vector3(123.5831, 0, 0))
  Node_ParseIniFile(node77, "osd/ter/ter_edgering.osd")
  Body_SetFriendOrFoeID(node77, 5)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "ter_megalith_m_02_1")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(2512.168, 156.2372, 23.8085), MAT_Vector3(-123.5018, 5.668256, -8.979532))
  Node_ParseIniFile(node78, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node78, 5)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "ter_megalith_m_02_3")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(2675.278, 611.2233, 25.27497), MAT_Vector3(-57.39799, -1.376039, 1.99257))
  Node_ParseIniFile(node79, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node79, 5)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "ter_megalith_m_02_4")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(3251.231, 488.6149, 21.09725), MAT_Vector3(171.9857, -9.206929, 7.818024))
  Node_ParseIniFile(node80, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node80, 5)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_generic", "ter_megalith_l_01_1")
  Node_AddSon(node7, node81)
  Body_SetCS(node81, MAT_Vector3(2773.703, 417.1846, 23.62758), MAT_Vector3(7.808427, 6.681265, 10.79672))
  Node_ParseIniFile(node81, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node81, 5)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_generic", "ter_megalith_l_01_2")
  Node_AddSon(node7, node82)
  Body_SetCS(node82, MAT_Vector3(3376.67, 356.9629, 6.730291), MAT_Vector3(-120.7377, 24.81371, -31.65494))
  Node_ParseIniFile(node82, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node82, 5)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_generic", "ter_megalith_l_03_1")
  Node_AddSon(node7, node83)
  Body_SetCS(node83, MAT_Vector3(3040.897, 769.6472, 47.61651), MAT_Vector3(-1.888965, -16.9913, 6.519952))
  Node_ParseIniFile(node83, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node83, 5)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_generic", "ter_megalith_l_02_1")
  Node_AddSon(node7, node84)
  Body_SetCS(node84, MAT_Vector3(2439.645, 396.9971, 154.5529), MAT_Vector3(-54.24547, 72.88039, 78.52825))
  Node_ParseIniFile(node84, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node84, 5)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_generic", "ter_megalith_m_02_2")
  Node_AddSon(node7, node85)
  Body_SetCS(node85, MAT_Vector3(2853.792, 588.4131, 29.85629), MAT_Vector3(-67.58916, 1.887418, 3.628257))
  Node_ParseIniFile(node85, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node85, 5)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "ter_megalith_m_02_2b")
  Node_AddSon(node7, node86)
  Body_SetCS(node86, MAT_Vector3(2768.345418, 3108.42045, 51.613401), MAT_Vector3(-67.58916, 1.887418, 3.628257))
  Node_ParseIniFile(node86, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node86, 5)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1")
  Node_AddSon(node7, node87)
  Body_SetCS(node87, MAT_Vector3(2602.71, 436.9482, 22.26472), MAT_Vector3(-36.21241, 4.235344, 7.689704))
  Node_ParseIniFile(node87, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node87, 5)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "ter_megalith_s_02_1")
  Node_AddSon(node7, node88)
  Body_SetCS(node88, MAT_Vector3(2768.536, 704.202, 20.79825), MAT_Vector3(-12.05438, -6.20578, -16.74961))
  Node_ParseIniFile(node88, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node88, 5)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "ter_megalith_s_02_2b")
  Node_AddSon(node7, node89)
  Body_SetCS(node89, MAT_Vector3(2610.798856, 2718.199255, 13.515507), MAT_Vector3(-12.05438, -6.20578, -16.74961))
  Node_ParseIniFile(node89, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node89, 5)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1")
  Node_AddSon(node7, node90)
  Body_SetCS(node90, MAT_Vector3(2768.243, 482.1327, 9.657894), MAT_Vector3(-13.25897, -1.602813, -23.53081))
  Node_ParseIniFile(node90, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node90, 5)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_generic", "ter_megalith_m_01_1")
  Node_AddSon(node7, node91)
  Body_SetCS(node91, MAT_Vector3(2690.589, 309.4483, 31.31785), MAT_Vector3(89.08633, -6.062672, -0.248389))
  Node_ParseIniFile(node91, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node91, 5)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_generic", "ter_rock_l_01_1")
  Node_AddSon(node7, node92)
  Body_SetCS(node92, MAT_Vector3(2619.699, 539.8775, 19.29303), MAT_Vector3(-79.49258, -17.54049, 9.821628))
  Node_ParseIniFile(node92, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node92, 5)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "ter_bridgering_l_5")
  Node_AddSon(node7, node93)
  Body_SetCS(node93, MAT_Vector3(1744.922, 390.8702, 5.872769), MAT_Vector3(-59.25826, 0, 0))
  Node_ParseIniFile(node93, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node93, 5)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_generic", "ter_megalith_l_01_3")
  Node_AddSon(node7, node94)
  Body_SetCS(node94, MAT_Vector3(1170.411, 272.1302, 68.89988), MAT_Vector3(-157.6022, 48.51479, -70.63306))
  Node_ParseIniFile(node94, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node94, 5)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_generic", "ter_megalith_l_03_2")
  Node_AddSon(node7, node95)
  Body_SetCS(node95, MAT_Vector3(903.1023, 1210.479, 31.13204), MAT_Vector3(72.69922, -2.095241, -1.849862))
  Node_ParseIniFile(node95, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node95, 5)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_generic", "ter_megalith_l_03_2b")
  Node_AddSon(node7, node96)
  Body_SetCS(node96, MAT_Vector3(3272.580371, 1220.091137, 20.061927), MAT_Vector3(64.176021, -3.615318, -9.141183))
  Node_ParseIniFile(node96, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node96, 5)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_generic", "ter_megalith_s_03_2")
  Node_AddSon(node7, node97)
  Body_SetCS(node97, MAT_Vector3(945.5788, 1194.798, 59.31027), MAT_Vector3(3.196789, 0.889336, 4.429496))
  Node_ParseIniFile(node97, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node97, 5)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_generic", "ter_megalith_s_03_3")
  Node_AddSon(node7, node98)
  Body_SetCS(node98, MAT_Vector3(1509.639065, 2690.42112, 21.92015), MAT_Vector3(45.587263, 0.889336, 4.429496))
  Node_ParseIniFile(node98, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node98, 5)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_generic", "ter_megalith_s_03_3b")
  Node_AddSon(node7, node99)
  Body_SetCS(node99, MAT_Vector3(2793.661739, 3148.502709, 68.974544), MAT_Vector3(45.58726, 0.889336, 4.429496))
  Node_ParseIniFile(node99, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node99, 5)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_generic", "ter_megalith_s_03_3c")
  Node_AddSon(node7, node100)
  Body_SetCS(node100, MAT_Vector3(3212.300719, 1215.100064, 28.824948), MAT_Vector3(45.58726, 0.889336, 4.429496))
  Node_ParseIniFile(node100, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node100, 5)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_generic", "ter_megalith_s_03_3d")
  Node_AddSon(node7, node101)
  Body_SetCS(node101, MAT_Vector3(2095.790938, 2658.101845, 37.933535), MAT_Vector3(45.58726, 0.889336, 4.429496))
  Node_ParseIniFile(node101, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node101, 5)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_generic", "ter_megalith_m_02_5")
  Node_AddSon(node7, node102)
  Body_SetCS(node102, MAT_Vector3(915.1726, 1296.942, 56.09869), MAT_Vector3(-89.29327, 0.361275, 1.957227))
  Node_ParseIniFile(node102, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node102, 5)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_generic", "ter_megalith_m_01_2")
  Node_AddSon(node7, node103)
  Body_SetCS(node103, MAT_Vector3(939.1868, 1244.111, 56.49366), MAT_Vector3(106.9998, -6.440385, 3.615283))
  Node_ParseIniFile(node103, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node103, 5)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_generic", "ter_rock_l_01_2")
  Node_AddSon(node7, node104)
  Body_SetCS(node104, MAT_Vector3(1174.856551, 1503.55291, 25.052028), MAT_Vector3(-119.556294, 0.992233, 2.789858))
  Node_ParseIniFile(node104, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node104, 5)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_generic", "ter_rock_l_01_2c")
  Node_AddSon(node7, node105)
  Body_SetCS(node105, MAT_Vector3(2037.461565, 2636.612334, 20.892804), MAT_Vector3(-151.812887, 19.671381, -11.669723))
  Node_ParseIniFile(node105, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node105, 5)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_generic", "ter_rock_l_01_3")
  Node_AddSon(node7, node106)
  Body_SetCS(node106, MAT_Vector3(2546.263873, 2714.360732, -6.204079), MAT_Vector3(-119.5563, 0.992233, 2.789858))
  Node_ParseIniFile(node106, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node106, 5)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_generic", "ter_rock_l_01_3b")
  Node_AddSon(node7, node107)
  Body_SetCS(node107, MAT_Vector3(3489.154282, 914.796143, 13.352916), MAT_Vector3(-57.495977, -13.160811, -49.998781))
  Node_ParseIniFile(node107, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node107, 5)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_generic", "ter_megalith_l_02_2")
  Node_AddSon(node7, node108)
  Body_SetCS(node108, MAT_Vector3(1907.240363, 1016.089303, 24.885588), MAT_Vector3(-2.87832, 1.206449, 1.53918))
  Node_ParseIniFile(node108, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node108, 5)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_generic", "ter_edgering_2")
  Node_AddSon(node7, node109)
  Body_SetCS(node109, MAT_Vector3(1885.183578, 1418.608575, 23.379073), MAT_Vector3(35.034385, 0, 0))
  Node_ParseIniFile(node109, "osd/ter/ter_edgering.osd")
  Body_SetFriendOrFoeID(node109, 5)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_generic", "ter_megalith_m_02_6")
  Node_AddSon(node7, node110)
  Body_SetCS(node110, MAT_Vector3(2012.694, 1284.036625, 22.19492), MAT_Vector3(94.2719, 1.795853, 2.28657))
  Node_ParseIniFile(node110, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node110, 5)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_generic", "ter_megalith_m_02_6b")
  Node_AddSon(node7, node111)
  Body_SetCS(node111, MAT_Vector3(2999.866641, 1337.639706, 23.861136), MAT_Vector3(94.2719, 1.795853, 2.28657))
  Node_ParseIniFile(node111, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node111, 5)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_generic", "ter_megalith_m_01_3")
  Node_AddSon(node7, node112)
  Body_SetCS(node112, MAT_Vector3(2010.895367, 1207.817038, 10.22355), MAT_Vector3(84.28975, 4.139487, -1.707125))
  Node_ParseIniFile(node112, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node112, 5)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_generic", "ter_megalith_m_01_4")
  Node_AddSon(node7, node113)
  Body_SetCS(node113, MAT_Vector3(1534.214521, 2706.73348, 6.333852), MAT_Vector3(71.414154, 4.139487, -1.707125))
  Node_ParseIniFile(node113, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node113, 5)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_generic", "ter_megalith_s_01_2")
  Node_AddSon(node7, node114)
  Body_SetCS(node114, MAT_Vector3(2025.217187, 1234.437625, 18.9865), MAT_Vector3(6.285811, -2.254041, -4.186695))
  Node_ParseIniFile(node114, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node114, 5)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_generic", "ter_megalith_s_01_2b")
  Node_AddSon(node7, node115)
  Body_SetCS(node115, MAT_Vector3(3005.237336, 1371.027217, 26.235391), MAT_Vector3(6.285811, -2.254041, -4.186695))
  Node_ParseIniFile(node115, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node115, 5)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_generic", "ter_megalith_s_02_2")
  Node_AddSon(node7, node116)
  Body_SetCS(node116, MAT_Vector3(2016.237, 1268.932, 22.49168), MAT_Vector3(26.35747, -0.711473, -1.444589))
  Node_ParseIniFile(node116, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node116, 5)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_generic", "ter_megalith_l_01_4")
  Node_AddSon(node7, node117)
  Body_SetCS(node117, MAT_Vector3(2055.166, 1270.128, 16.77534), MAT_Vector3(40.50823, 5.830343, 2.138519))
  Node_ParseIniFile(node117, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node117, 5)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_generic", "ter_megalith_l_01_4x")
  Node_AddSon(node7, node118)
  Body_SetCS(node118, MAT_Vector3(1511.821942, 2729.20145, 16.77534), MAT_Vector3(-151.854611, 5.830343, 2.138519))
  Node_ParseIniFile(node118, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node118, 5)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_generic", "ter_megalith_l_03_3")
  Node_AddSon(node7, node119)
  Body_SetCS(node119, MAT_Vector3(1480.613079, 1751.685153, 6.652192), MAT_Vector3(-0.806054, 0.843431, 0.188157))
  Node_ParseIniFile(node119, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node119, 5)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_generic", "ter_bridgering_l_6")
  Node_AddSon(node7, node120)
  Body_SetCS(node120, MAT_Vector3(1750.611715, 910.168533, 23.20423), MAT_Vector3(-36.813097, 0, 0))
  Node_ParseIniFile(node120, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node120, 5)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_generic", "ter_megalith_l_01_6")
  Node_AddSon(node7, node121)
  Body_SetCS(node121, MAT_Vector3(614.3126, 1720.312, 136.7924), MAT_Vector3(50.7105, -21.13111, -69.46012))
  Node_ParseIniFile(node121, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node121, 5)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_generic", "ter_bridgering_l_7")
  Node_AddSon(node7, node122)
  Body_SetCS(node122, MAT_Vector3(829.7148, 2218.809, 60.63692), MAT_Vector3(-101.8123, 0, 0))
  Node_ParseIniFile(node122, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node122, 5)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_generic", "ter_megalith_l_02_3")
  Node_AddSon(node7, node123)
  Body_SetCS(node123, MAT_Vector3(904.0498, 2282.145, 151.436), MAT_Vector3(-88.3957, 72.88039, 78.52825))
  Node_ParseIniFile(node123, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node123, 5)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_generic", "ter_bridgering_l_8")
  Node_AddSon(node7, node124)
  Body_SetCS(node124, MAT_Vector3(859.418, 2793.811, 76.38605), MAT_Vector3(-126.9393, 0, 0))
  Node_ParseIniFile(node124, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node124, 5)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_generic", "ter_bridgering_l_9")
  Node_AddSon(node7, node125)
  Body_SetCS(node125, MAT_Vector3(1555.326541, 2392.211335, 74.971755), MAT_Vector3(-1.537866, 0, 0))
  Node_ParseIniFile(node125, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node125, 5)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_generic", "ter_bridgering_l_10")
  Node_AddSon(node7, node126)
  Body_SetCS(node126, MAT_Vector3(585.3195, 3106.252, 96.94347), MAT_Vector3(-78.3153, 0, 0))
  Node_ParseIniFile(node126, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node126, 5)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, -1, 0)
  Body_SetCargoKey(node126, -1, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_generic", "ter_bridgering_l_11")
  Node_AddSon(node7, node127)
  Body_SetCS(node127, MAT_Vector3(1840.187862, 2710.508602, 35.780128), MAT_Vector3(-78.03375, 0, 0))
  Node_ParseIniFile(node127, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node127, 5)
  Body_SetNameKey(node127, -1)
  Body_SetCargoKey(node127, -1, 0)
  Body_SetCargoKey(node127, -1, 1)
  Body_SetCargoKey(node127, -1, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_generic", "ter_megalith_m_01_1x")
  Node_AddSon(node7, node128)
  Body_SetCS(node128, MAT_Vector3(2765.212, 1822.37, 9.172626), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node128, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node128, 5)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, -1, 0)
  Body_SetCargoKey(node128, -1, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_generic", "ter_megalith_m_02_7")
  Node_AddSon(node7, node129)
  Body_SetCS(node129, MAT_Vector3(3748.019468, 884.672238, 25.700353), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node129, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node129, 0)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_generic", "ter_megalith_m_02_7x")
  Node_AddSon(node7, node130)
  Body_SetCS(node130, MAT_Vector3(1980.668988, 1008.127895, 67.140783), MAT_Vector3(-36.172142, -12.130811, 25.500889))
  Node_ParseIniFile(node130, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node130, 0)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_generic", "ter_megalith_s_01_3")
  Node_AddSon(node7, node131)
  Body_SetCS(node131, MAT_Vector3(3719.520106, 860.760007, 24.697068), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node131, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node131, 0)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_generic", "ter_megalith_s_01_4")
  Node_AddSon(node7, node132)
  Body_SetCS(node132, MAT_Vector3(3952.360986, 724.274544, 24.69707), MAT_Vector3(-15.953146, 9.402857, -3.020801))
  Node_ParseIniFile(node132, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node132, 0)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_generic", "ter_megalith_s_03_4")
  Node_AddSon(node7, node133)
  Body_SetCS(node133, MAT_Vector3(3778.088629, 774.948781, 21.687213), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node133, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node133, 0)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, -1, 0)
  Body_SetCargoKey(node133, -1, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_generic", "ter_megalith_s_03_5")
  Node_AddSon(node7, node134)
  Body_SetCS(node134, MAT_Vector3(3921.035973, 688.22469, 21.68721), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node134, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node134, 0)
  Body_SetNameKey(node134, -1)
  Body_SetCargoKey(node134, -1, 0)
  Body_SetCargoKey(node134, -1, 1)
  Body_SetCargoKey(node134, -1, 2)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_generic", "ter_megalith_l_01_5")
  Node_AddSon(node7, node135)
  Body_SetCS(node135, MAT_Vector3(2629.690282, 3297.262553, 7.906265), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node135, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node135, 0)
  Body_SetNameKey(node135, -1)
  Body_SetCargoKey(node135, -1, 0)
  Body_SetCargoKey(node135, -1, 1)
  Body_SetCargoKey(node135, -1, 2)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_generic", "ter_megalith_s_01_5")
  Node_AddSon(node7, node136)
  Body_SetCS(node136, MAT_Vector3(2672.268617, 3239.858366, 13.505289), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node136, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node136, 0)
  Body_SetNameKey(node136, -1)
  Body_SetCargoKey(node136, -1, 0)
  Body_SetCargoKey(node136, -1, 1)
  Body_SetCargoKey(node136, -1, 2)
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_generic", "ter_megalith_s_02_3")
  Node_AddSon(node7, node137)
  Body_SetCS(node137, MAT_Vector3(2486.229878, 3253.307526, 8.972745), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node137, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node137, 0)
  Body_SetNameKey(node137, -1)
  Body_SetCargoKey(node137, -1, 0)
  Body_SetCargoKey(node137, -1, 1)
  Body_SetCargoKey(node137, -1, 2)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_generic", "ter_megalith_s_02_3c")
  Node_AddSon(node7, node138)
  Body_SetCS(node138, MAT_Vector3(2086.8399, 1080.723563, 68.03362), MAT_Vector3(31.724798, -4.37772, -21.860242))
  Node_ParseIniFile(node138, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node138, 0)
  Body_SetNameKey(node138, -1)
  Body_SetCargoKey(node138, -1, 0)
  Body_SetCargoKey(node138, -1, 1)
  Body_SetCargoKey(node138, -1, 2)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_generic", "ter_megalith_m_02_8")
  Node_AddSon(node7, node139)
  Body_SetCS(node139, MAT_Vector3(2453.421229, 3186.943077, 26.766831), MAT_Vector3(29.824091, -9.807251, 15.932607))
  Node_ParseIniFile(node139, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node139, 0)
  Body_SetNameKey(node139, -1)
  Body_SetCargoKey(node139, -1, 0)
  Body_SetCargoKey(node139, -1, 1)
  Body_SetCargoKey(node139, -1, 2)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_generic", "ter_rock_l_01_4")
  Node_AddSon(node7, node140)
  Body_SetCS(node140, MAT_Vector3(2708.263633, 1591.957771, 20.656893), MAT_Vector3(55.529627, 48.163923, 8.826877))
  Node_ParseIniFile(node140, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node140, 0)
  Body_SetNameKey(node140, -1)
  Body_SetCargoKey(node140, -1, 0)
  Body_SetCargoKey(node140, -1, 1)
  Body_SetCargoKey(node140, -1, 2)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("nod_generic", "ter_rock_s_01_1")
  Node_AddSon(node7, node141)
  Body_SetCS(node141, MAT_Vector3(2709.402715, 1642.510302, 15.707538), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node141, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node141, 0)
  Body_SetNameKey(node141, -1)
  Body_SetCargoKey(node141, -1, 0)
  Body_SetCargoKey(node141, -1, 1)
  Body_SetCargoKey(node141, -1, 2)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("nod_generic", "ter_rock_s_01_1b")
  Node_AddSon(node7, node142)
  Body_SetCS(node142, MAT_Vector3(3546.408986, 926.463294, 25.322896), MAT_Vector3(135.951967, -19.202083, 76.165015))
  Node_ParseIniFile(node142, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node142, 0)
  Body_SetNameKey(node142, -1)
  Body_SetCargoKey(node142, -1, 0)
  Body_SetCargoKey(node142, -1, 1)
  Body_SetCargoKey(node142, -1, 2)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("nod_generic", "ter_rock_m_01_1")
  Node_AddSon(node7, node143)
  Body_SetCS(node143, MAT_Vector3(2665.330964, 2026.411953, 17.658794), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node143, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node143, 0)
  Body_SetNameKey(node143, -1)
  Body_SetCargoKey(node143, -1, 0)
  Body_SetCargoKey(node143, -1, 1)
  Body_SetCargoKey(node143, -1, 2)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node144)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node144, node145)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node144, node146)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Path", "BomberPath_1")
  Node_AddSon(node146, node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node147, node148)
  Position_SetPosition(node148, MAT_Vector3(2756.252211, 2619.424173, 110))
  Position_SetRadius(node148, 5)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node147, node149)
  Position_SetPosition(node149, MAT_Vector3(2725.656525, 2527.750605, 110))
  Position_SetRadius(node149, 5)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node147, node150)
  Position_SetPosition(node150, MAT_Vector3(2675.647086, 2454.522497, 110))
  Position_SetRadius(node150, 5)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node147, node151)
  Position_SetPosition(node151, MAT_Vector3(2625.637647, 2388.438596, 130))
  Position_SetRadius(node151, 5)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node147, node152)
  Position_SetPosition(node152, MAT_Vector3(2616.70739, 2315.210489, 130))
  Position_SetRadius(node152, 5)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node147, node153)
  Position_SetPosition(node153, MAT_Vector3(2613.135288, 2208.047405, 130))
  Position_SetRadius(node153, 5)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node147, node154)
  Position_SetPosition(node154, MAT_Vector3(2614.921051, 2084.809454, 130))
  Position_SetRadius(node154, 5)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node147, node155)
  Position_SetPosition(node155, MAT_Vector3(2722.084135, 1979.432421, 95.005276))
  Position_SetRadius(node155, 5)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node147, node156)
  Position_SetPosition(node156, MAT_Vector3(2818.53091, 1738.315483, 96.449549))
  Position_SetRadius(node156, 5)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node147, node157)
  Position_SetPosition(node157, MAT_Vector3(2898.022341, 1599.70787, 96.35929))
  Position_SetRadius(node157, 5)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node147, node158)
  Position_SetPosition(node158, MAT_Vector3(3138.513, 1391.646, 105.3997))
  Position_SetRadius(node158, 5)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node147, node159)
  Position_SetPosition(node159, MAT_Vector3(3308.343, 1185.424, 103.3566))
  Position_SetRadius(node159, 5)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node147, node160)
  Position_SetPosition(node160, MAT_Vector3(3472.064, 942.4651, 100.0799))
  Position_SetRadius(node160, 5)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node147, node161)
  Position_SetPosition(node161, MAT_Vector3(3656.502, 830.4745, 104.5095))
  Position_SetRadius(node161, 5)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node147, node162)
  Position_SetPosition(node162, MAT_Vector3(3759.605, 819.0771, 105.166))
  Position_SetRadius(node162, 5)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_PatrolArea", "BomberTriggerArea")
  Node_AddSon(node146, node163)
  PatrolArea_SetPosition(node163, MAT_Vector3(0, 0, 0))
  PatrolArea_SetRadius(node163, 250)
  PatrolArea_SetMinZ(node163, -75)
  PatrolArea_SetMaxZ(node163, 75)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_PatrolArea", "BomberFollowArea")
  Node_AddSon(node146, node164)
  PatrolArea_SetPosition(node164, MAT_Vector3(0, 0, 0))
  PatrolArea_SetRadius(node164, 400)
  PatrolArea_SetMinZ(node164, -100)
  PatrolArea_SetMaxZ(node164, 100)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_PatrolArea", "Finch_TriggerArea1")
  Node_AddSon(node146, node165)
  PatrolArea_SetPosition(node165, MAT_Vector3(0, 0, 0))
  PatrolArea_SetRadius(node165, 250)
  PatrolArea_SetMinZ(node165, -75)
  PatrolArea_SetMaxZ(node165, 75)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_PatrolArea", "Finch_FollowArea1")
  Node_AddSon(node146, node166)
  PatrolArea_SetPosition(node166, MAT_Vector3(0, 0, 0))
  PatrolArea_SetRadius(node166, 400)
  PatrolArea_SetMinZ(node166, -100)
  PatrolArea_SetMaxZ(node166, 100)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_PatrolArea", "Finch_TriggerArea2")
  Node_AddSon(node146, node167)
  PatrolArea_SetPosition(node167, MAT_Vector3(0, 0, 0))
  PatrolArea_SetRadius(node167, 250)
  PatrolArea_SetMinZ(node167, -75)
  PatrolArea_SetMaxZ(node167, 75)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_PatrolArea", "Finch_FollowArea2")
  Node_AddSon(node146, node168)
  PatrolArea_SetPosition(node168, MAT_Vector3(0, 0, 0))
  PatrolArea_SetRadius(node168, 400)
  PatrolArea_SetMinZ(node168, -100)
  PatrolArea_SetMaxZ(node168, 100)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_PatrolArea", "CrawlerByFinch_PatrolArea")
  Node_AddSon(node146, node169)
  PatrolArea_SetPosition(node169, MAT_Vector3(3903.800195, 745.397071, 74.59209))
  PatrolArea_SetRadius(node169, 150)
  PatrolArea_SetMinZ(node169, -50)
  PatrolArea_SetMaxZ(node169, 50)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_PatrolArea", "CrawlerByFinch_TriggerArea")
  Node_AddSon(node146, node170)
  PatrolArea_SetPosition(node170, MAT_Vector3(3903.800195, 744.216142, 53.565771))
  PatrolArea_SetRadius(node170, 400)
  PatrolArea_SetMinZ(node170, -60)
  PatrolArea_SetMaxZ(node170, 125)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_PatrolArea", "CrawlerByFinch_FollowArea")
  Node_AddSon(node146, node171)
  PatrolArea_SetPosition(node171, MAT_Vector3(3903.800195, 743.035212, 48.058602))
  PatrolArea_SetRadius(node171, 530)
  PatrolArea_SetMinZ(node171, -60)
  PatrolArea_SetMaxZ(node171, 120)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_PatrolArea", "CrawlerWing_PatrolArea")
  Node_AddSon(node146, node172)
  PatrolArea_SetPosition(node172, MAT_Vector3(2784.401045, 2233.445654, 75.752902))
  PatrolArea_SetRadius(node172, 150)
  PatrolArea_SetMinZ(node172, -50)
  PatrolArea_SetMaxZ(node172, 50)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_PatrolArea", "CrawlerWing_TriggerArea")
  Node_AddSon(node146, node173)
  PatrolArea_SetPosition(node173, MAT_Vector3(2786.164329, 2228.143864, 53.02026))
  PatrolArea_SetRadius(node173, 400)
  PatrolArea_SetMinZ(node173, -60)
  PatrolArea_SetMaxZ(node173, 125)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_PatrolArea", "CrawlerWing_FollowArea")
  Node_AddSon(node146, node174)
  PatrolArea_SetPosition(node174, MAT_Vector3(2848.830114, 2109.916045, 48.305395))
  PatrolArea_SetRadius(node174, 530)
  PatrolArea_SetMinZ(node174, -60)
  PatrolArea_SetMaxZ(node174, 120)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_Path", "FinchPath_Outdoor1")
  Node_AddSon(node146, node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node175, node176)
  Position_SetPosition(node176, MAT_Vector3(3861.873098, 772.907888, 75))
  Position_SetRadius(node176, 5)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node175, node177)
  Position_SetPosition(node177, MAT_Vector3(3757.4728, 816.109796, 75))
  Position_SetRadius(node177, 5)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node175, node178)
  Position_SetPosition(node178, MAT_Vector3(3584.821439, 907.513458, 75))
  Position_SetRadius(node178, 5)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_Path", "FinchPath_Outdoor2")
  Node_AddSon(node146, node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node179, node180)
  Position_SetPosition(node180, MAT_Vector3(3556.046213, 919.36208, 75))
  Position_SetRadius(node180, 5)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node179, node181)
  Position_SetPosition(node181, MAT_Vector3(3448.811141, 991.132971, 74.544585))
  Position_SetRadius(node181, 5)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node179, node182)
  Position_SetPosition(node182, MAT_Vector3(3198.434185, 1060.682126, 73.544546))
  Position_SetRadius(node182, 5)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_Path", "FinchPath_Outdoor3")
  Node_AddSon(node146, node183)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node183, node184)
  Position_SetPosition(node184, MAT_Vector3(3160.18215, 1067.637041, 80.92235))
  Position_SetRadius(node184, 5)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node183, node185)
  Position_SetPosition(node185, MAT_Vector3(2993.264179, 1039.817379, 70))
  Position_SetRadius(node185, 5)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node183, node186)
  Position_SetPosition(node186, MAT_Vector3(2843.733497, 785.962965, 70))
  Position_SetRadius(node186, 5)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node183, node187)
  Position_SetPosition(node187, MAT_Vector3(2777.6618, 615.567536, 55))
  Position_SetRadius(node187, 5)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node183, node188)
  Position_SetPosition(node188, MAT_Vector3(2665.775473, 399.347295, 50))
  Position_SetRadius(node188, 5)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node183, node189)
  Position_SetPosition(node189, MAT_Vector3(2499.40724, 229.617221, 50))
  Position_SetRadius(node189, 5)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node183, node190)
  Position_SetPosition(node190, MAT_Vector3(2408.18297, 229.062401, 60))
  Position_SetRadius(node190, 5)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Path", "FinchPath_Canyon1")
  Node_AddSon(node146, node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node191, node192)
  Position_SetPosition(node192, MAT_Vector3(2372.733093, 232.319015, 60))
  Position_SetRadius(node192, 5)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node191, node193)
  Position_SetPosition(node193, MAT_Vector3(2247.476224, 313.566713, 70))
  Position_SetRadius(node193, 5)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node191, node194)
  Position_SetPosition(node194, MAT_Vector3(2150.601133, 334.311563, 70))
  Position_SetRadius(node194, 5)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node191, node195)
  Position_SetPosition(node195, MAT_Vector3(2104.341765, 389.90781, 65))
  Position_SetRadius(node195, 5)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node191, node196)
  Position_SetPosition(node196, MAT_Vector3(2086.663648, 526.07141, 61))
  Position_SetRadius(node196, 5)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node191, node197)
  Position_SetPosition(node197, MAT_Vector3(2071.131107, 704.715588, 60))
  Position_SetRadius(node197, 5)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node191, node198)
  Position_SetPosition(node198, MAT_Vector3(2038.640389, 902.578972, 59))
  Position_SetRadius(node198, 5)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("NOD_Path", "FinchPath_PirateSneak1")
  Node_AddSon(node146, node199)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node199, node200)
  Position_SetPosition(node200, MAT_Vector3(2035.115727, 934.166438, 105.292748))
  Position_SetRadius(node200, 5)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node199, node201)
  Position_SetPosition(node201, MAT_Vector3(2020.633426, 1069.456772, 106.51922))
  Position_SetRadius(node201, 5)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node199, node202)
  Position_SetPosition(node202, MAT_Vector3(1994.552418, 1157.404356, 106.543197))
  Position_SetRadius(node202, 5)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node199, node203)
  Position_SetPosition(node203, MAT_Vector3(1877.491151, 1238.680055, 107.644291))
  Position_SetRadius(node203, 5)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node199, node204)
  Position_SetPosition(node204, MAT_Vector3(1832.632063, 1348.335603, 103.209641))
  Position_SetRadius(node204, 5)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node199, node205)
  Position_SetPosition(node205, MAT_Vector3(1762.85126, 1448.022465, 100.071314))
  Position_SetRadius(node205, 5)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node199, node206)
  Position_SetPosition(node206, MAT_Vector3(1676.871341, 1505.34241, 100.875585))
  Position_SetRadius(node206, 5)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node199, node207)
  Position_SetPosition(node207, MAT_Vector3(1565.969707, 1563.908442, 103.176967))
  Position_SetRadius(node207, 5)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node199, node208)
  Position_SetPosition(node208, MAT_Vector3(1481.235874, 1621.228388, 105.088631))
  Position_SetRadius(node208, 5)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node199, node209)
  Position_SetPosition(node209, MAT_Vector3(1408.962899, 1717.176992, 104.910284))
  Position_SetRadius(node209, 5)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node199, node210)
  Position_SetPosition(node210, MAT_Vector3(1346.349272, 1833.911411, 136.475699))
  Position_SetRadius(node210, 5)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node199, node211)
  Position_SetPosition(node211, MAT_Vector3(1337.626672, 1937.33653, 111.463665))
  Position_SetRadius(node211, 5)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node199, node212)
  Position_SetPosition(node212, MAT_Vector3(1424.852676, 2039.515564, 112.713455))
  Position_SetRadius(node212, 5)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node199, node213)
  Position_SetPosition(node213, MAT_Vector3(1524.539538, 2108.050282, 100.108778))
  Position_SetRadius(node213, 5)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node199, node214)
  Position_SetPosition(node214, MAT_Vector3(1590.582084, 2156.647627, 96.8125))
  Position_SetRadius(node214, 5)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node199, node215)
  Position_SetPosition(node215, MAT_Vector3(1569.398626, 2331.099635, 102.550715))
  Position_SetRadius(node215, 5)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node199, node216)
  Position_SetPosition(node216, MAT_Vector3(1555.691682, 2453.216041, 103.50623))
  Position_SetRadius(node216, 5)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("NOD_Position", "pos_18")
  Node_AddSon(node199, node217)
  Position_SetPosition(node217, MAT_Vector3(1520.801281, 2599.008077, 97.30737))
  Position_SetRadius(node217, 5)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("NOD_Position", "pos_19")
  Node_AddSon(node199, node218)
  Position_SetPosition(node218, MAT_Vector3(1568.15254, 2678.757567, 75.323583))
  Position_SetRadius(node218, 5)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("NOD_Position", "pos_20")
  Node_AddSon(node199, node219)
  Position_SetPosition(node219, MAT_Vector3(1695.315576, 2698.187451, 65.352719))
  Position_SetRadius(node219, 5)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("NOD_Position", "pos_21")
  Node_AddSon(node199, node220)
  Position_SetPosition(node220, MAT_Vector3(1855.052116, 2711.798378, 48.980747))
  Position_SetRadius(node220, 5)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("NOD_Path", "FinchPath_EndPath1")
  Node_AddSon(node146, node221)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node221, node222)
  Position_SetPosition(node222, MAT_Vector3(1910.707958, 2711.683415, 53.656876))
  Position_SetRadius(node222, 5)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node221, node223)
  Position_SetPosition(node223, MAT_Vector3(2135.524565, 2722.300392, 90.352914))
  Position_SetRadius(node223, 5)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node221, node224)
  Position_SetPosition(node224, MAT_Vector3(2281.444565, 2814.460392, 100.326912))
  Position_SetRadius(node224, 5)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node221, node225)
  Position_SetPosition(node225, MAT_Vector3(2319.844565, 2911.740392, 87.680194))
  Position_SetRadius(node225, 5)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node221, node226)
  Position_SetPosition(node226, MAT_Vector3(2289.124565, 3049.980392, 84.484069))
  Position_SetRadius(node226, 5)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node221, node227)
  Position_SetPosition(node227, MAT_Vector3(2318.675305, 3113.986661, 84.94975))
  Position_SetRadius(node227, 5)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("NOD_PatrolArea", "OVERALL_Area")
  Node_AddSon(node146, node228)
  PatrolArea_SetPosition(node228, MAT_Vector3(2000, 2000, 126))
  PatrolArea_SetRadius(node228, 2500)
  PatrolArea_SetMinZ(node228, -200)
  PatrolArea_SetMaxZ(node228, 38)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("NOD_PatrolArea", "FinalBattle_PatrolArea")
  Node_AddSon(node146, node229)
  PatrolArea_SetPosition(node229, MAT_Vector3(2474.523332, 3215.819611, 93.08374))
  PatrolArea_SetRadius(node229, 175)
  PatrolArea_SetMinZ(node229, -50)
  PatrolArea_SetMaxZ(node229, 50)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("NOD_PatrolArea", "FinalBattle_TriggerArea")
  Node_AddSon(node146, node230)
  PatrolArea_SetPosition(node230, MAT_Vector3(2478.00079, 3219.297069, 97.869424))
  PatrolArea_SetRadius(node230, 450)
  PatrolArea_SetMinZ(node230, -100)
  PatrolArea_SetMaxZ(node230, 60)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("NOD_PatrolArea", "FinalBattle_FollowArea")
  Node_AddSon(node146, node231)
  PatrolArea_SetPosition(node231, MAT_Vector3(2467.568417, 3222.774526, 78.186054))
  PatrolArea_SetRadius(node231, 600)
  PatrolArea_SetMinZ(node231, -60)
  PatrolArea_SetMaxZ(node231, 70)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("NOD_PatrolArea", "Nav3_PatrolArea")
  Node_AddSon(node146, node232)
  PatrolArea_SetPosition(node232, MAT_Vector3(3224.742648, 353.696912, 87.981755))
  PatrolArea_SetRadius(node232, 175)
  PatrolArea_SetMinZ(node232, -50)
  PatrolArea_SetMaxZ(node232, 50)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("NOD_PatrolArea", "Nav3_Trigger+FollowArea")
  Node_AddSon(node146, node233)
  PatrolArea_SetPosition(node233, MAT_Vector3(3181.048613, 432.819168, 92.700244))
  PatrolArea_SetRadius(node233, 200)
  PatrolArea_SetMinZ(node233, -95)
  PatrolArea_SetMaxZ(node233, 60)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("NOD_Path", "FreighterPath_1")
  Node_AddSon(node146, node234)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node234, node235)
  Position_SetPosition(node235, MAT_Vector3(2597.882752, 1816.775411, 165))
  Position_SetRadius(node235, 5)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node234, node236)
  Position_SetPosition(node236, MAT_Vector3(2597.883, 1994.368847, 165))
  Position_SetRadius(node236, 5)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node234, node237)
  Position_SetPosition(node237, MAT_Vector3(2590.986152, 2509.90842, 165))
  Position_SetRadius(node237, 5)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node234, node238)
  Position_SetPosition(node238, MAT_Vector3(2768.579847, 2746.125059, 165))
  Position_SetRadius(node238, 5)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node234, node239)
  Position_SetPosition(node239, MAT_Vector3(3016.866544, 3054.758967, 165))
  Position_SetRadius(node239, 5)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node234, node240)
  Position_SetPosition(node240, MAT_Vector3(3151.355544, 3344.426634, 165))
  Position_SetRadius(node240, 5)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node234, node241)
  Position_SetPosition(node241, MAT_Vector3(3237.566424, 3540.986665, 272.720277))
  Position_SetRadius(node241, 5)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node234, node242)
  Position_SetPosition(node242, MAT_Vector3(3330.673454, 3696.16609, 272.7203))
  Position_SetRadius(node242, 5)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("NOD_Path", "BomberToFinch_Path")
  Node_AddSon(node146, node243)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node243, node244)
  Position_SetPosition(node244, MAT_Vector3(3994.267578, 674.903384, 117.992634))
  Position_SetRadius(node244, 5)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("NOD_Path", "AngelinaToFinch_Path")
  Node_AddSon(node146, node245)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node245, node246)
  Position_SetPosition(node246, MAT_Vector3(3962.375259, 733.651899, 89.254074))
  Position_SetRadius(node246, 5)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("NOD_Path", "pir_tz_scout1_1_Path")
  Node_AddSon(node146, node247)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node247, node248)
  Position_SetPosition(node248, MAT_Vector3(1588.941208, 1145.778491, 100.11224))
  Position_SetRadius(node248, 5)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node247, node249)
  Position_SetPosition(node249, MAT_Vector3(1696.742411, 1116.220096, 104.607402))
  Position_SetRadius(node249, 5)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node247, node250)
  Position_SetPosition(node250, MAT_Vector3(1753.992049, 1097.108346, 106.114075))
  Position_SetRadius(node250, 5)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node247, node251)
  Position_SetPosition(node251, MAT_Vector3(1825.408364, 1095.355347, 106.665319))
  Position_SetRadius(node251, 5)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node247, node252)
  Position_SetPosition(node252, MAT_Vector3(1835.840739, 1154.472136, 103.793044))
  Position_SetRadius(node252, 5)
  Game_LoadProgress_Advance(node0)
  node253 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node247, node253)
  Position_SetPosition(node253, MAT_Vector3(1828.885822, 1304.002838, 100.999695))
  Position_SetRadius(node253, 5)
  Game_LoadProgress_Advance(node0)
  node254 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node247, node254)
  Position_SetPosition(node254, MAT_Vector3(1792.372511, 1371.813273, 88.043445))
  Position_SetRadius(node254, 5)
  Game_LoadProgress_Advance(node0)
  node255 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node247, node255)
  Position_SetPosition(node255, MAT_Vector3(1710.652244, 1432.668791, 99.944666))
  Position_SetRadius(node255, 5)
  Game_LoadProgress_Advance(node0)
  node256 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node247, node256)
  Position_SetPosition(node256, MAT_Vector3(1623.71579, 1445.709259, 82.132336))
  Position_SetRadius(node256, 5)
  Game_LoadProgress_Advance(node0)
  node257 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node247, node257)
  Position_SetPosition(node257, MAT_Vector3(1582.855656, 1399.632938, 82.017952))
  Position_SetRadius(node257, 5)
  Game_LoadProgress_Advance(node0)
  node258 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node247, node258)
  Position_SetPosition(node258, MAT_Vector3(1538.518064, 1350.079159, 81.975425))
  Position_SetRadius(node258, 5)
  Game_LoadProgress_Advance(node0)
  node259 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node247, node259)
  Position_SetPosition(node259, MAT_Vector3(1499.396659, 1289.223641, 102.220474))
  Position_SetRadius(node259, 5)
  Game_LoadProgress_Advance(node0)
  node260 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node247, node260)
  Position_SetPosition(node260, MAT_Vector3(1482.009369, 1217.066384, 110.358165))
  Position_SetRadius(node260, 5)
  Game_LoadProgress_Advance(node0)
  node261 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node247, node261)
  Position_SetPosition(node261, MAT_Vector3(1506.351576, 1164.904511, 115.77045))
  Position_SetRadius(node261, 5)
  Game_LoadProgress_Advance(node0)
  node262 = Node_CreateNode("NOD_Path", "pir_tz_scout1_2_Path")
  Node_AddSon(node146, node262)
  Game_LoadProgress_Advance(node0)
  node263 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node262, node263)
  Position_SetPosition(node263, MAT_Vector3(1333.677825, 1212.347812, 101.436533))
  Position_SetRadius(node263, 5)
  Game_LoadProgress_Advance(node0)
  node264 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node262, node264)
  Position_SetPosition(node264, MAT_Vector3(1414.528728, 1259.293497, 107.278885))
  Position_SetRadius(node264, 5)
  Game_LoadProgress_Advance(node0)
  node265 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node262, node265)
  Position_SetPosition(node265, MAT_Vector3(1497.11836, 1320.149015, 107.63878))
  Position_SetRadius(node265, 5)
  Game_LoadProgress_Advance(node0)
  node266 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node262, node266)
  Position_SetPosition(node266, MAT_Vector3(1519.721838, 1380.135169, 115.168977))
  Position_SetRadius(node266, 5)
  Game_LoadProgress_Advance(node0)
  node267 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node262, node267)
  Position_SetPosition(node267, MAT_Vector3(1483.208527, 1442.729416, 103.700622))
  Position_SetRadius(node267, 5)
  Game_LoadProgress_Advance(node0)
  node268 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node262, node268)
  Position_SetPosition(node268, MAT_Vector3(1488.424714, 1499.238112, 107.807768))
  Position_SetRadius(node268, 5)
  Game_LoadProgress_Advance(node0)
  node269 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node262, node269)
  Position_SetPosition(node269, MAT_Vector3(1528.415483, 1562.701724, 104.694362))
  Position_SetRadius(node269, 5)
  Game_LoadProgress_Advance(node0)
  node270 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node262, node270)
  Position_SetPosition(node270, MAT_Vector3(1603.180834, 1504.454299, 102.565994))
  Position_SetRadius(node270, 5)
  Game_LoadProgress_Advance(node0)
  node271 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node262, node271)
  Position_SetPosition(node271, MAT_Vector3(1680.554279, 1479.242727, 102.211315))
  Position_SetRadius(node271, 5)
  Game_LoadProgress_Advance(node0)
  node272 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node262, node272)
  Position_SetPosition(node272, MAT_Vector3(1743.780423, 1471.575407, 105.808869))
  Position_SetRadius(node272, 5)
  Game_LoadProgress_Advance(node0)
  node273 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node262, node273)
  Position_SetPosition(node273, MAT_Vector3(1659.68953, 1554.008078, 104.767231))
  Position_SetRadius(node273, 5)
  Game_LoadProgress_Advance(node0)
  node274 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node262, node274)
  Position_SetPosition(node274, MAT_Vector3(1551.888326, 1609.647409, 108.571129))
  Position_SetRadius(node274, 5)
  Game_LoadProgress_Advance(node0)
  node275 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node262, node275)
  Position_SetPosition(node275, MAT_Vector3(1476.253611, 1597.476305, 105.770918))
  Position_SetRadius(node275, 5)
  Game_LoadProgress_Advance(node0)
  node276 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node262, node276)
  Position_SetPosition(node276, MAT_Vector3(1384.970333, 1567.048546, 106.891024))
  Position_SetRadius(node276, 5)
  Game_LoadProgress_Advance(node0)
  node277 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node262, node277)
  Position_SetPosition(node277, MAT_Vector3(1354.542574, 1486.197644, 105.955581))
  Position_SetRadius(node277, 5)
  Game_LoadProgress_Advance(node0)
  node278 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node262, node278)
  Position_SetPosition(node278, MAT_Vector3(1335.416554, 1413.171022, 106.598794))
  Position_SetRadius(node278, 5)
  Game_LoadProgress_Advance(node0)
  node279 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node262, node279)
  Position_SetPosition(node279, MAT_Vector3(1277.16913, 1374.918982, 103.567576))
  Position_SetRadius(node279, 5)
  Game_LoadProgress_Advance(node0)
  node280 = Node_CreateNode("NOD_Position", "pos_18")
  Node_AddSon(node262, node280)
  Position_SetPosition(node280, MAT_Vector3(1276.299765, 1311.45537, 106.000985))
  Position_SetRadius(node280, 5)
  Game_LoadProgress_Advance(node0)
  node281 = Node_CreateNode("NOD_Position", "pos_19")
  Node_AddSon(node262, node281)
  Position_SetPosition(node281, MAT_Vector3(1295.425785, 1243.644935, 105.330741))
  Position_SetRadius(node281, 5)
  Game_LoadProgress_Advance(node0)
  node282 = Node_CreateNode("NOD_Path", "pir_tz_scout1_3_Path")
  Node_AddSon(node146, node282)
  Game_LoadProgress_Advance(node0)
  node283 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node282, node283)
  Position_SetPosition(node283, MAT_Vector3(1354.856267, 1042.376799, 102.226201))
  Position_SetRadius(node283, 5)
  Game_LoadProgress_Advance(node0)
  node284 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node282, node284)
  Position_SetPosition(node284, MAT_Vector3(1458.447248, 1069.16757, 104.454861))
  Position_SetRadius(node284, 5)
  Game_LoadProgress_Advance(node0)
  node285 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node282, node285)
  Position_SetPosition(node285, MAT_Vector3(1456.661197, 1165.614345, 113.326068))
  Position_SetRadius(node285, 5)
  Game_LoadProgress_Advance(node0)
  node286 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node282, node286)
  Position_SetPosition(node286, MAT_Vector3(1349.498113, 1187.046962, 100.674317))
  Position_SetRadius(node286, 5)
  Game_LoadProgress_Advance(node0)
  node287 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node282, node287)
  Position_SetPosition(node287, MAT_Vector3(1236.976875, 1183.474859, 104.837059))
  Position_SetRadius(node287, 5)
  Game_LoadProgress_Advance(node0)
  node288 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node282, node288)
  Position_SetPosition(node288, MAT_Vector3(1160.176665, 1194.191168, 100.585538))
  Position_SetRadius(node288, 5)
  Game_LoadProgress_Advance(node0)
  node289 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node282, node289)
  Position_SetPosition(node289, MAT_Vector3(1140.5301, 1267.419275, 106.1728))
  Position_SetRadius(node289, 5)
  Game_LoadProgress_Advance(node0)
  node290 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node282, node290)
  Position_SetPosition(node290, MAT_Vector3(1178.037179, 1367.438153, 105.751685))
  Position_SetRadius(node290, 5)
  Game_LoadProgress_Advance(node0)
  node291 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node282, node291)
  Position_SetPosition(node291, MAT_Vector3(1217.33031, 1437.094157, 105.144022))
  Position_SetRadius(node291, 5)
  Game_LoadProgress_Advance(node0)
  node292 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node282, node292)
  Position_SetPosition(node292, MAT_Vector3(1260.195543, 1538.899087, 103.347191))
  Position_SetRadius(node292, 5)
  Game_LoadProgress_Advance(node0)
  node293 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node282, node293)
  Position_SetPosition(node293, MAT_Vector3(1310.204982, 1640.704016, 100.825923))
  Position_SetRadius(node293, 5)
  Game_LoadProgress_Advance(node0)
  node294 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node282, node294)
  Position_SetPosition(node294, MAT_Vector3(1358.42837, 1728.220535, 103.357958))
  Position_SetRadius(node294, 5)
  Game_LoadProgress_Advance(node0)
  node295 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node282, node295)
  Position_SetPosition(node295, MAT_Vector3(1288.772366, 1763.941563, 108.522977))
  Position_SetRadius(node295, 5)
  Game_LoadProgress_Advance(node0)
  node296 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node282, node296)
  Position_SetPosition(node296, MAT_Vector3(1235.190824, 1721.076329, 103.843769))
  Position_SetRadius(node296, 5)
  Game_LoadProgress_Advance(node0)
  node297 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node282, node297)
  Position_SetPosition(node297, MAT_Vector3(1194.111642, 1649.634273, 101.512707))
  Position_SetRadius(node297, 5)
  Game_LoadProgress_Advance(node0)
  node298 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node282, node298)
  Position_SetPosition(node298, MAT_Vector3(1163.748768, 1578.192218, 99.308365))
  Position_SetRadius(node298, 5)
  Game_LoadProgress_Advance(node0)
  node299 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node282, node299)
  Position_SetPosition(node299, MAT_Vector3(1095.878815, 1490.675699, 108.436965))
  Position_SetRadius(node299, 5)
  Game_LoadProgress_Advance(node0)
  node300 = Node_CreateNode("NOD_Position", "pos_18")
  Node_AddSon(node282, node300)
  Position_SetPosition(node300, MAT_Vector3(1072.660147, 1270.991378, 105.806955))
  Position_SetRadius(node300, 5)
  Game_LoadProgress_Advance(node0)
  node301 = Node_CreateNode("NOD_Position", "pos_19")
  Node_AddSon(node282, node301)
  Position_SetPosition(node301, MAT_Vector3(1104.809072, 1162.042243, 105.008889))
  Position_SetRadius(node301, 5)
  Game_LoadProgress_Advance(node0)
  node302 = Node_CreateNode("NOD_Position", "pos_20")
  Node_AddSon(node282, node302)
  Position_SetPosition(node302, MAT_Vector3(1160.176665, 1056.66521, 107.751606))
  Position_SetRadius(node302, 5)
  Game_LoadProgress_Advance(node0)
  node303 = Node_CreateNode("NOD_Position", "pos_21")
  Node_AddSon(node282, node303)
  Position_SetPosition(node303, MAT_Vector3(1263.767646, 1040.590748, 83.543545))
  Position_SetRadius(node303, 5)
  Game_LoadProgress_Advance(node0)
  node304 = Node_CreateNode("NOD_PatrolArea", "PirateStation_Area")
  Node_AddSon(node146, node304)
  PatrolArea_SetPosition(node304, MAT_Vector3(1398.514664, 1398.998792, 165.146064))
  PatrolArea_SetRadius(node304, 720)
  PatrolArea_SetMinZ(node304, -150)
  PatrolArea_SetMaxZ(node304, 20)
  Game_LoadProgress_Advance(node0)
  node305 = Node_CreateNode("NOD_Path", "Harvester_1_ApproachPath")
  Node_AddSon(node146, node305)
  Game_LoadProgress_Advance(node0)
  node306 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node305, node306)
  Position_SetPosition(node306, MAT_Vector3(2618.491666, 3134.408539, 139.334633))
  Position_SetRadius(node306, 5)
  Game_LoadProgress_Advance(node0)
  node307 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node305, node307)
  Position_SetPosition(node307, MAT_Vector3(2659.059787, 3042.596477, 171.981344))
  Position_SetRadius(node307, 5)
  Game_LoadProgress_Advance(node0)
  node308 = Node_CreateNode("NOD_Path", "Harvester_1_DockPath")
  Node_AddSon(node146, node308)
  Game_LoadProgress_Advance(node0)
  node309 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node308, node309)
  Position_SetPosition(node309, MAT_Vector3(2663.526427, 3007.627747, 179.099333))
  Position_SetRadius(node309, 5)
  Game_LoadProgress_Advance(node0)
  node310 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node308, node310)
  Position_SetPosition(node310, MAT_Vector3(2695.635776, 2910.103284, 179.294539))
  Position_SetRadius(node310, 5)
  Game_LoadProgress_Advance(node0)
  node311 = Node_CreateNode("NOD_PatrolArea", "Harvester_1_DockArea")
  Node_AddSon(node146, node311)
  PatrolArea_SetPosition(node311, MAT_Vector3(2690.467304, 3152.745026, 177.032839))
  PatrolArea_SetRadius(node311, 100)
  PatrolArea_SetMinZ(node311, -50)
  PatrolArea_SetMaxZ(node311, 50)
  Game_LoadProgress_Advance(node0)
  node312 = Node_CreateNode("NOD_Path", "Harvester_2_ApproachPath")
  Node_AddSon(node146, node312)
  Game_LoadProgress_Advance(node0)
  node313 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node312, node313)
  Position_SetPosition(node313, MAT_Vector3(2514.637012, 3004.230738, 157.411142))
  Position_SetRadius(node313, 5)
  Game_LoadProgress_Advance(node0)
  node314 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node312, node314)
  Position_SetPosition(node314, MAT_Vector3(2565.323165, 2969.743275, 170.759335))
  Position_SetRadius(node314, 5)
  Game_LoadProgress_Advance(node0)
  node315 = Node_CreateNode("NOD_Path", "Harvester_2_DockPath")
  Node_AddSon(node146, node315)
  Game_LoadProgress_Advance(node0)
  node316 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node315, node316)
  Position_SetPosition(node316, MAT_Vector3(2588.939355, 2950.929132, 179.0993))
  Position_SetRadius(node316, 5)
  Game_LoadProgress_Advance(node0)
  node317 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node315, node317)
  Position_SetPosition(node317, MAT_Vector3(2679.117305, 2888.773999, 179.2945))
  Position_SetRadius(node317, 5)
  Game_LoadProgress_Advance(node0)
  node318 = Node_CreateNode("NOD_PatrolArea", "Harvester_2_DockArea")
  Node_AddSon(node146, node318)
  PatrolArea_SetPosition(node318, MAT_Vector3(2924.439733, 2897.339651, 177.0328))
  PatrolArea_SetRadius(node318, 100)
  PatrolArea_SetMinZ(node318, -50)
  PatrolArea_SetMaxZ(node318, 50)
  Game_LoadProgress_Advance(node0)
  node319 = Node_CreateNode("NOD_Path", "Harvester_3_ApproachPath")
  Node_AddSon(node146, node319)
  Game_LoadProgress_Advance(node0)
  node320 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node319, node320)
  Position_SetPosition(node320, MAT_Vector3(2880.622451, 2778.237622, 157.4111))
  Position_SetRadius(node320, 5)
  Game_LoadProgress_Advance(node0)
  node321 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node319, node321)
  Position_SetPosition(node321, MAT_Vector3(2800.290319, 2810.497822, 170.7593))
  Position_SetRadius(node321, 5)
  Game_LoadProgress_Advance(node0)
  node322 = Node_CreateNode("NOD_Path", "Harvester_3_DockPath")
  Node_AddSon(node146, node322)
  Game_LoadProgress_Advance(node0)
  node323 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node322, node323)
  Position_SetPosition(node323, MAT_Vector3(2769.111966, 2825.306305, 179.0993))
  Position_SetRadius(node323, 5)
  Game_LoadProgress_Advance(node0)
  node324 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node322, node324)
  Position_SetPosition(node324, MAT_Vector3(2679.117, 2888.774, 179.2945))
  Position_SetRadius(node324, 5)
  Game_LoadProgress_Advance(node0)
  node325 = Node_CreateNode("NOD_PatrolArea", "Harvester_3_DockArea")
  Node_AddSon(node146, node325)
  PatrolArea_SetPosition(node325, MAT_Vector3(2690.467, 3152.745, 177.0328))
  PatrolArea_SetRadius(node325, 100)
  PatrolArea_SetMinZ(node325, -50)
  PatrolArea_SetMaxZ(node325, 50)
  Game_LoadProgress_Advance(node0)
  node326 = Node_CreateNode("NOD_Path", "WingmenEscapePath")
  Node_AddSon(node146, node326)
  Game_LoadProgress_Advance(node0)
  node327 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node326, node327)
  Position_SetPosition(node327, MAT_Vector3(2427.053643, 3100.485233, 125))
  Position_SetRadius(node327, 15)
  Game_LoadProgress_Advance(node0)
  node328 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node326, node328)
  Position_SetPosition(node328, MAT_Vector3(2491.053643, 3105.605233, 116.524976))
  Position_SetRadius(node328, 5)
  Game_LoadProgress_Advance(node0)
  node329 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node144, node329)
  Node_EnterSimulation(node329)
  Game_LoadProgress_Advance(node0)
  node330 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node144, node330)
  Node_EnterSimulation(node330)
  Game_LoadProgress_Advance(node0)
  node331 = Node_CreateNode("NOD_Trigger", "Trigger_InvulTurnOff")
  Node_AddSon(node330, node331)
  Body_SetFriendOrFoeID(node331, 0)
  Body_SetPosition(node331, MAT_Vector3(3846.223031, 784.587682, 72.282442))
  Trigger_SetPresenceSphere(node331, 540)
  Node_EnterSimulation(node331)
  Game_LoadProgress_Advance(node0)
  node332 = Node_CreateNode("NOD_Trigger", "Nav2_Trigger")
  Node_AddSon(node330, node332)
  Body_SetFriendOrFoeID(node332, 0)
  Body_SetPosition(node332, MAT_Vector3(3623.535639, 887.307736, 73.31894))
  Trigger_SetPresenceSphere(node332, 25)
  Node_EnterSimulation(node332)
  Game_LoadProgress_Advance(node0)
  node333 = Node_CreateNode("NOD_Trigger", "Sniper1_TriggerVisibilityBlock")
  Node_AddSon(node330, node333)
  Body_SetFriendOrFoeID(node333, 0)
  Body_SetPosition(node333, MAT_Vector3(1714.692805, 1580.733505, 117.78428))
  Trigger_SetVisibilityCone(node333, MAT_Vector3(143.674908, -26.168661, 4.076692), 500, 45)
  Trigger_SetVisibilityBlockingStatus(node333, 1)
  Node_EnterSimulation(node333)
  Game_LoadProgress_Advance(node0)
  node334 = Node_CreateNode("NOD_Trigger", "Sniper1_TriggerAcoustic")
  Node_AddSon(node330, node334)
  Body_SetFriendOrFoeID(node334, 0)
  Body_SetPosition(node334, MAT_Vector3(1714.492402, 1580.561459, 119.047044))
  Trigger_SetAcousticSphere(node334, 35)
  Node_EnterSimulation(node334)
  Game_LoadProgress_Advance(node0)
  node335 = Node_CreateNode("NOD_Trigger", "Sniper2_TriggerVisibilityBlock")
  Node_AddSon(node330, node335)
  Body_SetFriendOrFoeID(node335, 0)
  Body_SetPosition(node335, MAT_Vector3(1570.210653, 874.405696, 105.956287))
  Trigger_SetVisibilityCone(node335, MAT_Vector3(-4.988901, -17.209341, -2.431361), 500, 45)
  Trigger_SetVisibilityBlockingStatus(node335, 1)
  Node_EnterSimulation(node335)
  Game_LoadProgress_Advance(node0)
  node336 = Node_CreateNode("NOD_Trigger", "Sniper2_TriggerAcoustic")
  Node_AddSon(node330, node336)
  Body_SetFriendOrFoeID(node336, 0)
  Body_SetPosition(node336, MAT_Vector3(1570.003905, 874.966622, 108.082125))
  Trigger_SetAcousticSphere(node336, 35)
  Node_EnterSimulation(node336)
  Game_LoadProgress_Advance(node0)
  node337 = Node_CreateNode("NOD_Trigger", "Sniper3_TriggerVisibilityBlock")
  Node_AddSon(node330, node337)
  Body_SetFriendOrFoeID(node337, 0)
  Body_SetPosition(node337, MAT_Vector3(1032.238122, 1446.376721, 103.472231))
  Trigger_SetVisibilityCone(node337, MAT_Vector3(-94.630004, -20.430623, 3.455604), 500, 45)
  Trigger_SetVisibilityBlockingStatus(node337, 1)
  Node_EnterSimulation(node337)
  Game_LoadProgress_Advance(node0)
  node338 = Node_CreateNode("NOD_Trigger", "Sniper3_TriggerAcoustic")
  Node_AddSon(node330, node338)
  Body_SetFriendOrFoeID(node338, 0)
  Body_SetPosition(node338, MAT_Vector3(1036.810163, 1445.98142, 108.0821))
  Trigger_SetAcousticSphere(node338, 35)
  Node_EnterSimulation(node338)
  Game_LoadProgress_Advance(node0)
  node339 = Node_CreateNode("NOD_Trigger", "FreighterStart_Trigger")
  Node_AddSon(node330, node339)
  Body_SetFriendOrFoeID(node339, 0)
  Body_SetPosition(node339, MAT_Vector3(2653.63931, 1613.616171, 74.739242))
  Trigger_SetPresenceSphere(node339, 700)
  Node_EnterSimulation(node339)
  Game_LoadProgress_Advance(node0)
  node340 = Node_CreateNode("NOD_Trigger", "Nav3_Trigger")
  Node_AddSon(node330, node340)
  Body_SetFriendOrFoeID(node340, 0)
  Body_SetPosition(node340, MAT_Vector3(3160.125816, 1068.005186, 75.514408))
  Trigger_SetPresenceSphere(node340, 25)
  Node_EnterSimulation(node340)
  Game_LoadProgress_Advance(node0)
  node341 = Node_CreateNode("NOD_Trigger", "Nav4_Trigger")
  Node_AddSon(node330, node341)
  Body_SetFriendOrFoeID(node341, 0)
  Body_SetPosition(node341, MAT_Vector3(2844.595126, 785.234424, 73.31894))
  Trigger_SetPresenceSphere(node341, 25)
  Node_EnterSimulation(node341)
  Game_LoadProgress_Advance(node0)
  node342 = Node_CreateNode("NOD_Trigger", "StationCleanUp_Trigger")
  Node_AddSon(node330, node342)
  Body_SetFriendOrFoeID(node342, 0)
  Body_SetPosition(node342, MAT_Vector3(2037.062814, 899.607551, 71.147456))
  Trigger_SetPresenceSphere(node342, 100)
  Node_EnterSimulation(node342)
  Game_LoadProgress_Advance(node0)
  node343 = Node_CreateNode("NOD_Trigger", "Start_CrawlerAttack")
  Node_AddSon(node330, node343)
  Body_SetFriendOrFoeID(node343, 0)
  Body_SetCS(node343, MAT_Vector3(2174.656056, 2734.176187, 105.248973), MAT_Vector3(118.922388, 0, 0))
  Trigger_SetBoxMode(node343, 500, 50, 125)
  Node_EnterSimulation(node343)
  Game_LoadProgress_Advance(node0)
  node344 = Node_CreateNode("NOD_Trigger", "IntoCanyonMessage_Trigger")
  Node_AddSon(node330, node344)
  Body_SetFriendOrFoeID(node344, 0)
  Body_SetPosition(node344, MAT_Vector3(2665.172975, 397.615119, 73.31894))
  Trigger_SetPresenceSphere(node344, 25)
  Node_EnterSimulation(node344)
  Game_LoadProgress_Advance(node0)
  node345 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node144, node345)
  Node_EnterSimulation(node345)
  Game_LoadProgress_Advance(node0)
  node346 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node345, node346)
  Body_SetCS(node346, MAT_Vector3(2712.695766, 2750.372152, 110), MAT_Vector3(164.767964, 0, 0))
  Node_ParseIniFile(node346, "osd/pla/pla_ship1.osd")
  Body_SetFriendOrFoeID(node346, 1)
  Node_EnterSimulation(node346)
  Game_LoadProgress_Advance(node0)
  node347 = Node_CreateNode("nod_vessel", "wng_mayday_1")
  Node_AddSon(node345, node347)
  Body_SetCS(node347, MAT_Vector3(2610.821984, 2768.712306, 110.073511), MAT_Vector3(157.436618, 0, 0))
  Node_ParseIniFile(node347, "osd/wng/wng_mayday.osd")
  Body_SetFriendOrFoeID(node347, 2)
  Body_SetNameKey(node347, -1)
  Body_SetCargoKey(node347, -1, 0)
  Body_SetCargoKey(node347, -1, 1)
  Body_SetCargoKey(node347, -1, 2)
  Node_EnterSimulation(node347)
  Game_LoadProgress_Advance(node0)
  node348 = Node_CreateNode("nod_vessel", "wng_angelina_1")
  Node_AddSon(node345, node348)
  Body_SetCS(node348, MAT_Vector3(2595.11672, 2774.909678, 110), MAT_Vector3(156.536289, 0, 0))
  Node_ParseIniFile(node348, "osd/wng/wng_angelina.osd")
  Body_SetFriendOrFoeID(node348, 2)
  Body_SetNameKey(node348, -1)
  Body_SetCargoKey(node348, -1, 0)
  Body_SetCargoKey(node348, -1, 1)
  Body_SetCargoKey(node348, -1, 2)
  Node_EnterSimulation(node348)
  Game_LoadProgress_Advance(node0)
  node349 = Node_CreateNode("nod_vessel", "wng_animal_1")
  Node_AddSon(node345, node349)
  Body_SetCS(node349, MAT_Vector3(2758.109545, 3053.380224, 165.574339), MAT_Vector3(142.91505, 6.25586, 10.311846))
  Node_ParseIniFile(node349, "osd/wng/wng_animal.osd")
  Body_SetFriendOrFoeID(node349, 2)
  Body_SetNameKey(node349, -1)
  Body_SetCargoKey(node349, -1, 0)
  Body_SetCargoKey(node349, -1, 1)
  Body_SetCargoKey(node349, -1, 2)
  Node_EnterSimulation(node349)
  Game_LoadProgress_Advance(node0)
  node350 = Node_CreateNode("nod_vessel", "mac_finch_1")
  Node_AddSon(node345, node350)
  Body_SetCS(node350, MAT_Vector3(3904.730236, 743.922561, 75.471328), MAT_Vector3(57.50847, 0, 0))
  Node_ParseIniFile(node350, "osd/mac/mac_finch.osd")
  Body_SetFriendOrFoeID(node350, 3)
  Body_SetNameKey(node350, -1)
  Body_SetCargoKey(node350, -1, 0)
  Body_SetCargoKey(node350, -1, 1)
  Body_SetCargoKey(node350, -1, 2)
  Node_EnterSimulation(node350)
  Game_LoadProgress_Advance(node0)
  node351 = Node_CreateNode("nod_vessel", "cra_scout1_1")
  Node_AddSon(node345, node351)
  Body_SetCS(node351, MAT_Vector3(3854.163159, 732.55523, 89.114957), MAT_Vector3(-63.085919, 0, 0))
  Node_ParseIniFile(node351, "osd/cra/cra_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node351, 4)
  Body_SetNameKey(node351, -1)
  Body_SetCargoKey(node351, -1, 0)
  Body_SetCargoKey(node351, -1, 1)
  Body_SetCargoKey(node351, -1, 2)
  Node_EnterSimulation(node351)
  Game_LoadProgress_Advance(node0)
  node352 = Node_CreateNode("nod_vessel", "cra_scout1_2")
  Node_AddSon(node345, node352)
  Body_SetCS(node352, MAT_Vector3(3956.530619, 699.717772, 73.675517), MAT_Vector3(72.223408, 0, 0))
  Node_ParseIniFile(node352, "osd/cra/cra_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node352, 4)
  Body_SetNameKey(node352, -1)
  Body_SetCargoKey(node352, -1, 0)
  Body_SetCargoKey(node352, -1, 1)
  Body_SetCargoKey(node352, -1, 2)
  Node_EnterSimulation(node352)
  Game_LoadProgress_Advance(node0)
  node353 = Node_CreateNode("nod_waypoint", "nav_guard_1")
  Node_AddSon(node345, node353)
  Body_SetPosition(node353, MAT_Vector3(3848.649172, 784.587682, 72.447884))
  WayPoint_SetRadius(node353, 100)
  Node_ParseIniFile(node353, "osd/nav/nav_guard.osd")
  Node_EnterSimulation(node353)
  Game_LoadProgress_Advance(node0)
  node354 = Node_CreateNode("nod_turret", "pir_tz_sniper_1")
  Node_AddSon(node345, node354)
  Body_SetCS(node354, MAT_Vector3(1714.49388, 1580.846861, 116.791604), MAT_Vector3(145.082147, 0, 0))
  Node_ParseIniFile(node354, "osd/pir_tz/pir_tz_sniper.osd")
  Body_SetFriendOrFoeID(node354, 0)
  Node_EnterSimulation(node354)
  Game_LoadProgress_Advance(node0)
  node355 = Node_CreateNode("nod_turret", "pir_tz_sniper_2")
  Node_AddSon(node345, node355)
  Body_SetCS(node355, MAT_Vector3(1570.464213, 876.728012, 107.683497), MAT_Vector3(-9.490804, 0, 0))
  Node_ParseIniFile(node355, "osd/pir_tz/pir_tz_sniper.osd")
  Body_SetFriendOrFoeID(node355, 0)
  Node_EnterSimulation(node355)
  Game_LoadProgress_Advance(node0)
  node356 = Node_CreateNode("nod_turret", "pir_tz_sniper_3")
  Node_AddSon(node345, node356)
  Body_SetCS(node356, MAT_Vector3(1033.397373, 1446.593414, 103.218066), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node356, "osd/pir_tz/pir_tz_sniper.osd")
  Body_SetFriendOrFoeID(node356, 0)
  Node_EnterSimulation(node356)
  Game_LoadProgress_Advance(node0)
  node357 = Node_CreateNode("nod_waypoint", "nav_waypoint_2")
  Node_AddSon(node345, node357)
  Body_SetPosition(node357, MAT_Vector3(3298.085191, 1541.35156, 72.410857))
  WayPoint_SetRadius(node357, 150)
  Node_ParseIniFile(node357, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node357)
  Game_LoadProgress_Advance(node0)
  node358 = Node_CreateNode("nod_waypoint", "nav_waypoint_3")
  Node_AddSon(node345, node358)
  Body_SetPosition(node358, MAT_Vector3(3258.67317, 374.50812, 73.967221))
  WayPoint_SetRadius(node358, 200)
  Node_ParseIniFile(node358, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node358)
  Game_LoadProgress_Advance(node0)
  node359 = Node_CreateNode("nod_waypoint", "nav_waypoint_4")
  Node_AddSon(node345, node359)
  Body_SetPosition(node359, MAT_Vector3(2660.687125, 1746.900617, 76.037286))
  WayPoint_SetRadius(node359, 300)
  Node_ParseIniFile(node359, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node359)
  Game_LoadProgress_Advance(node0)
  node360 = Node_CreateNode("nod_vessel", "pir_tz_scout1_1")
  Node_AddSon(node345, node360)
  Body_SetCS(node360, MAT_Vector3(1554.114789, 1153.373978, 97.269705), MAT_Vector3(-116.644869, 0, 0))
  Node_ParseIniFile(node360, "osd/pir_tz/pir_tz_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node360, 0)
  Body_SetNameKey(node360, -1)
  Body_SetCargoKey(node360, -1, 0)
  Body_SetCargoKey(node360, -1, 1)
  Body_SetCargoKey(node360, -1, 2)
  Node_EnterSimulation(node360)
  Game_LoadProgress_Advance(node0)
  node361 = Node_CreateNode("nod_vessel", "pir_tz_scout1_2")
  Node_AddSon(node345, node361)
  Body_SetCS(node361, MAT_Vector3(1309.963893, 1225.775815, 97.221094), MAT_Vector3(-122.822893, 0, 0))
  Node_ParseIniFile(node361, "osd/pir_tz/pir_tz_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node361, 0)
  Body_SetNameKey(node361, -1)
  Body_SetCargoKey(node361, -1, 0)
  Body_SetCargoKey(node361, -1, 1)
  Body_SetCargoKey(node361, -1, 2)
  Node_EnterSimulation(node361)
  Game_LoadProgress_Advance(node0)
  node362 = Node_CreateNode("nod_vessel", "pir_tz_scout1_3")
  Node_AddSon(node345, node362)
  Body_SetCS(node362, MAT_Vector3(1306.328467, 1038.895231, 90.043801), MAT_Vector3(-86.137082, 0, 0))
  Node_ParseIniFile(node362, "osd/pir_tz/pir_tz_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node362, 0)
  Body_SetNameKey(node362, -1)
  Body_SetCargoKey(node362, -1, 0)
  Body_SetCargoKey(node362, -1, 1)
  Body_SetCargoKey(node362, -1, 2)
  Node_EnterSimulation(node362)
  Game_LoadProgress_Advance(node0)
  node363 = Node_CreateNode("nod_vessel", "gen_freighter_1")
  Node_AddSon(node345, node363)
  Body_SetCS(node363, MAT_Vector3(2596.810288, 1692.584092, 165), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node363, "osd/gen/gen_transporter.osd")
  Body_SetFriendOrFoeID(node363, 6)
  Body_SetNameKey(node363, -1)
  Body_SetCargoKey(node363, 1123, 0)
  Body_SetCargoKey(node363, -1, 1)
  Body_SetCargoKey(node363, -1, 2)
  Node_EnterSimulation(node363)
  Game_LoadProgress_Advance(node0)
  node364 = Node_CreateNode("nod_vessel", "pir_tz_scout1_1_1")
  Node_AddSon(node345, node364)
  Body_SetCS(node364, MAT_Vector3(3208.130869, 371.849764, 62.592324), MAT_Vector3(168.732325, 0, 0))
  Node_ParseIniFile(node364, "osd/pir_tz/pir_tz_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node364, 0)
  Body_SetNameKey(node364, -1)
  Body_SetCargoKey(node364, -1, 0)
  Body_SetCargoKey(node364, -1, 1)
  Body_SetCargoKey(node364, -1, 2)
  Node_EnterSimulation(node364)
  Game_LoadProgress_Advance(node0)
  node365 = Node_CreateNode("nod_vessel", "pir_tz_scout1_1_2")
  Node_AddSon(node345, node365)
  Body_SetCS(node365, MAT_Vector3(3242.107887, 366.359339, 77.739903), MAT_Vector3(129.865488, 0, 0))
  Node_ParseIniFile(node365, "osd/pir_tz/pir_tz_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node365, 0)
  Body_SetNameKey(node365, -1)
  Body_SetCargoKey(node365, -1, 0)
  Body_SetCargoKey(node365, -1, 1)
  Body_SetCargoKey(node365, -1, 2)
  Node_EnterSimulation(node365)
  Game_LoadProgress_Advance(node0)
  node366 = Node_CreateNode("nod_vessel", "cra_scout1_2_1")
  Node_AddSon(node345, node366)
  Body_SetCS(node366, MAT_Vector3(2978.580464, 2249.771407, 67.135609), MAT_Vector3(57.72382, 18.639805, -13.233466))
  Node_ParseIniFile(node366, "osd/cra/cra_scout1_wide.osd")
  Body_SetFriendOrFoeID(node366, 4)
  Body_SetNameKey(node366, -1)
  Body_SetCargoKey(node366, -1, 0)
  Body_SetCargoKey(node366, -1, 1)
  Body_SetCargoKey(node366, -1, 2)
  Node_EnterSimulation(node366)
  Game_LoadProgress_Advance(node0)
  node367 = Node_CreateNode("nod_vessel", "cra_scout1_2_2")
  Node_AddSon(node345, node367)
  Body_SetCS(node367, MAT_Vector3(2963.211574, 2198.40582, 29.469), MAT_Vector3(46.805557, 29.399684, -20.151976))
  Node_ParseIniFile(node367, "osd/cra/cra_scout1_wide.osd")
  Body_SetFriendOrFoeID(node367, 4)
  Body_SetNameKey(node367, -1)
  Body_SetCargoKey(node367, -1, 0)
  Body_SetCargoKey(node367, -1, 1)
  Body_SetCargoKey(node367, -1, 2)
  Node_EnterSimulation(node367)
  Game_LoadProgress_Advance(node0)
  node368 = Node_CreateNode("nod_vessel", "cra_scout1_2_3")
  Node_AddSon(node345, node368)
  Body_SetCS(node368, MAT_Vector3(2573.352938, 2362.802288, 75.682538), MAT_Vector3(20.465726, 28.016804, 3.646665))
  Node_ParseIniFile(node368, "osd/cra/cra_scout1_wide.osd")
  Body_SetFriendOrFoeID(node368, 4)
  Body_SetNameKey(node368, -1)
  Body_SetCargoKey(node368, -1, 0)
  Body_SetCargoKey(node368, -1, 1)
  Body_SetCargoKey(node368, -1, 2)
  Node_EnterSimulation(node368)
  Game_LoadProgress_Advance(node0)
  node369 = Node_CreateNode("nod_vessel", "cra_scout1_2_4")
  Node_AddSon(node345, node369)
  Body_SetCS(node369, MAT_Vector3(2608.299743, 2337.268706, 68.235526), MAT_Vector3(1.343601, 15.913386, 12.157227))
  Node_ParseIniFile(node369, "osd/cra/cra_scout1_wide.osd")
  Body_SetFriendOrFoeID(node369, 4)
  Body_SetNameKey(node369, -1)
  Body_SetCargoKey(node369, -1, 0)
  Body_SetCargoKey(node369, -1, 1)
  Body_SetCargoKey(node369, -1, 2)
  Node_EnterSimulation(node369)
  Game_LoadProgress_Advance(node0)
  node370 = Node_CreateNode("nod_vessel", "cra_bomber_1")
  Node_AddSon(node345, node370)
  Body_SetCS(node370, MAT_Vector3(2628.641086, 2309.294983, 72.595522), MAT_Vector3(31.913821, 9.32213, 5.784836))
  Node_ParseIniFile(node370, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node370, 4)
  Body_SetNameKey(node370, -1)
  Body_SetCargoKey(node370, -1, 0)
  Body_SetCargoKey(node370, -1, 1)
  Body_SetCargoKey(node370, -1, 2)
  Node_EnterSimulation(node370)
  Game_LoadProgress_Advance(node0)
  node371 = Node_CreateNode("nod_vessel", "cra_bomber_2")
  Node_AddSon(node345, node371)
  Body_SetCS(node371, MAT_Vector3(2939.362338, 2187.165659, 40.069527), MAT_Vector3(23.759206, 19.197678, 5.687608))
  Node_ParseIniFile(node371, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node371, 4)
  Body_SetNameKey(node371, -1)
  Body_SetCargoKey(node371, -1, 0)
  Body_SetCargoKey(node371, -1, 1)
  Body_SetCargoKey(node371, -1, 2)
  Node_EnterSimulation(node371)
  Game_LoadProgress_Advance(node0)
  node372 = Node_CreateNode("nod_generic", "bonus_elfnote_des_1")
  Node_AddSon(node345, node372)
  Body_SetCS(node372, MAT_Vector3(3190.34, 302.4161, 43.53811), MAT_Vector3(-65.747645, -0.567346, 0.01078))
  Node_ParseIniFile(node372, "osd/gen/gen_elfnote_des.osd")
  Body_SetFriendOrFoeID(node372, 5)
  Body_SetNameKey(node372, -1)
  Body_SetCargoKey(node372, -1, 0)
  Body_SetCargoKey(node372, -1, 1)
  Body_SetCargoKey(node372, -1, 2)
  Node_EnterSimulation(node372)
  Game_LoadProgress_Advance(node0)
  node373 = Node_CreateNode("nod_vessel", "cra_scout1_wide_bonus_1")
  Node_AddSon(node345, node373)
  Body_SetCS(node373, MAT_Vector3(2787.162354, 2233.605064, 8.689279), MAT_Vector3(-5.309943, 1.702026, 4.366874))
  Node_ParseIniFile(node373, "osd/cra/cra_scout1_wide.osd")
  Body_SetFriendOrFoeID(node373, 4)
  Body_SetNameKey(node373, -1)
  Body_SetCargoKey(node373, -1, 0)
  Body_SetCargoKey(node373, -1, 1)
  Body_SetCargoKey(node373, -1, 2)
  Node_EnterSimulation(node373)
  Game_LoadProgress_Advance(node0)
  node374 = Node_CreateNode("nod_vessel", "cra_scout1_wide_bonus_2")
  Node_AddSon(node345, node374)
  Body_SetCS(node374, MAT_Vector3(2764.142729, 2256.265718, 8.689279), MAT_Vector3(67.504686, 28.51476, 5.627667))
  Node_ParseIniFile(node374, "osd/cra/cra_scout1_wide.osd")
  Body_SetFriendOrFoeID(node374, 4)
  Body_SetNameKey(node374, -1)
  Body_SetCargoKey(node374, -1, 0)
  Body_SetCargoKey(node374, -1, 1)
  Body_SetCargoKey(node374, -1, 2)
  Node_EnterSimulation(node374)
  Game_LoadProgress_Advance(node0)
  node375 = Node_CreateNode("nod_vessel", "cra_bomber_wide_bonus_1")
  Node_AddSon(node345, node375)
  Body_SetCS(node375, MAT_Vector3(2771.741734, 2235.120269, 16.133656), MAT_Vector3(67.50469, 28.51476, 5.627667))
  Node_ParseIniFile(node375, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node375, 4)
  Body_SetNameKey(node375, -1)
  Body_SetCargoKey(node375, -1, 0)
  Body_SetCargoKey(node375, -1, 1)
  Body_SetCargoKey(node375, -1, 2)
  Node_EnterSimulation(node375)
  Game_LoadProgress_Advance(node0)
  node376 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node376)
  Camera_SetBackPlane(node376, 750)
  Node_EnterSimulation(node376)
  Game_LoadProgress_Advance(node0)
  node377 = Node_CreateNode("NOD_Scenario", "IngameScenes")
  Node_AddSon(node0, node377)
  Node_EnterSimulation(node377)
  Game_LoadProgress_Advance(node0)
  node378 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node377, node378)
  Node_EnterSimulation(node378)
  Game_LoadProgress_Advance(node0)
  node379 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node377, node379)
  Node_EnterSimulation(node379)
  Game_LoadProgress_Advance(node0)
  node380 = Node_CreateNode("NOD_Path", "PlayerPath_1")
  Node_AddSon(node379, node380)
  Game_LoadProgress_Advance(node0)
  node381 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node380, node381)
  Position_SetPosition(node381, MAT_Vector3(2724.000595, 2857.234177, 179.2945))
  Position_SetRadius(node381, 5)
  Game_LoadProgress_Advance(node0)
  node382 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node380, node382)
  Position_SetPosition(node382, MAT_Vector3(2768.835176, 2825.223625, 179.2945))
  Position_SetRadius(node382, 5)
  Game_LoadProgress_Advance(node0)
  node383 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node380, node383)
  Position_SetPosition(node383, MAT_Vector3(2757.79664, 2688.164403, 99.155178))
  Position_SetRadius(node383, 5)
  Game_LoadProgress_Advance(node0)
  node384 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node380, node384)
  Position_SetPosition(node384, MAT_Vector3(2702.968866, 2522.434995, 99.47451))
  Position_SetRadius(node384, 5)
  Game_LoadProgress_Advance(node0)
  node385 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node380, node385)
  Position_SetPosition(node385, MAT_Vector3(2639.418492, 2433.962905, 109.798177))
  Position_SetRadius(node385, 5)
  Game_LoadProgress_Advance(node0)
  node386 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node380, node386)
  Position_SetPosition(node386, MAT_Vector3(2601.911412, 2369.665055, 111.746463))
  Position_SetRadius(node386, 5)
  Game_LoadProgress_Advance(node0)
  node387 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node380, node387)
  Position_SetPosition(node387, MAT_Vector3(2591.195104, 2298.222999, 130.570154))
  Position_SetRadius(node387, 5)
  Game_LoadProgress_Advance(node0)
  node388 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node380, node388)
  Position_SetPosition(node388, MAT_Vector3(2582.264847, 2224.994892, 129.474394))
  Position_SetRadius(node388, 5)
  Game_LoadProgress_Advance(node0)
  node389 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node380, node389)
  Position_SetPosition(node389, MAT_Vector3(2582.265, 2120.473207, 129.4744))
  Position_SetRadius(node389, 5)
  Game_LoadProgress_Advance(node0)
  node390 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node380, node390)
  Position_SetPosition(node390, MAT_Vector3(2581.841835, 2036.6863, 129.4744))
  Position_SetRadius(node390, 5)
  Game_LoadProgress_Advance(node0)
  node391 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node379, node391)
  Position_SetPosition(node391, MAT_Vector3(2785.612109, 2813.668892, 176.984404))
  Position_SetRadius(node391, 5)
  Game_LoadProgress_Advance(node0)
  node392 = Node_CreateNode("NOD_Position", "LookFrom_2")
  Node_AddSon(node379, node392)
  Position_SetPosition(node392, MAT_Vector3(2572.577181, 2171.95369, 131.636871))
  Position_SetRadius(node392, 5)
  Game_LoadProgress_Advance(node0)
  node393 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node377, node393)
  Node_EnterSimulation(node393)
  Game_LoadProgress_Advance(node0)
  node394 = Node_CreateNode("NOD_Director", "Intro")
  Node_AddSon(node393, node394)
  Node_EnterSimulation(node394)
  Game_LoadProgress_Advance(node0)
  node395 = Node_CreateNode("NOD_Director", "Intro_AddOn")
  Node_AddSon(node393, node395)
  Node_EnterSimulation(node395)
  Game_LoadProgress_Advance(node0)
  node396 = Node_CreateNode("NOD_Director", "Intro_Audio")
  Node_AddSon(node393, node396)
  Node_EnterSimulation(node396)
  Game_LoadProgress_Advance(node0)
  node397 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node377, node397)
  Node_EnterSimulation(node397)
  Game_LoadProgress_Advance(node0)
  node398 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node377, node398)
  Node_EnterSimulation(node398)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, E)
SetEnemyMatrixElement(2, 0, E)
SetEnemyMatrixElement(3, 0, E)
SetEnemyMatrixElement(4, 0, E)
SetEnemyMatrixElement(5, 0, U)
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
SetEnemyMatrixElement(0, 2, E)
SetEnemyMatrixElement(1, 2, F)
SetEnemyMatrixElement(2, 2, F)
SetEnemyMatrixElement(3, 2, N)
SetEnemyMatrixElement(4, 2, E)
SetEnemyMatrixElement(5, 2, U)
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
SetEnemyMatrixElement(4, 3, E)
SetEnemyMatrixElement(5, 3, U)
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
SetEnemyMatrixElement(5, 4, U)
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
SetEnemyMatrixElement(5, 5, U)
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
SetEnemyMatrixElement(0, 6, E)
SetEnemyMatrixElement(1, 6, N)
SetEnemyMatrixElement(2, 6, N)
SetEnemyMatrixElement(3, 6, N)
SetEnemyMatrixElement(4, 6, E)
SetEnemyMatrixElement(5, 6, U)
SetEnemyMatrixElement(6, 6, F)
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
SetEnemyMatrixElement(5, 7, U)
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
SetEnemyMatrixElement(5, 8, U)
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
SetEnemyMatrixElement(5, 9, U)
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
SetEnemyMatrixElement(5, 10, U)
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
SetEnemyMatrixElement(5, 11, U)
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
SetEnemyMatrixElement(5, 12, U)
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
SetEnemyMatrixElement(5, 13, U)
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
SetEnemyMatrixElement(5, 14, U)
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
SetEnemyMatrixElement(5, 15, U)
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
                                                                                                                                                                                                                                                              if not (o5963.Value ~= True) then
                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                              if not (True ~= True) then
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
                                                                                                                                                                                                                                                              if not (o5987.Value == True) then
                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                            if not (False == True) then
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
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1226, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1226, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1226, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetEmpShield(L0.Node, 0.789765)
  Body_SetKineticShield(L0.Node, 0, 0.456456)
  Turret_SetAngleArea(L0.Node, 120, -15, 60)
  CallFunction(o1226, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 450, "E", "", "", "", "Code7")
  else
    CallFunction(o1226, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_DestEmp = function(L0, L1)
  o1234.SetStateValue(L1)
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
o1234 = { [nil] = {}, Start = function()
  o1234["Value"] = False
  o5951.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1234.Value == L0) then
    o1234["Value"] = L0
    o5951.ReCalculate()
  end
end }
S_o1272 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1272, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1272, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1272, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetEmpShield(L0.Node, 0.589765)
  Body_SetKineticShield(L0.Node, 0, 0.565646)
  Turret_SetAngleArea(L0.Node, 120, -15, 60)
  CallFunction(o1272, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 450, "E", "", "", "", "Code7")
  else
    CallFunction(o1272, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_DestEmp = function(L0, L1)
  o1280.SetStateValue(L1)
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
o1280 = { [nil] = {}, Start = function()
  o1280["Value"] = False
  o5951.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1280.Value == L0) then
    o1280["Value"] = L0
    o5951.ReCalculate()
  end
end }
S_o1318 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1318, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1318, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1318, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o1318, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 450, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o1318, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o1326.SetStateValue(L1)
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
o1326 = { [nil] = {}, Start = function()
  o1326["Value"] = False
  o5951.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1326.Value == L0) then
    o1326["Value"] = L0
    o5951.ReCalculate()
  end
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
S_o5136 = { [nil] = {}, Start = function(L0)

end }
S_o5182 = { [nil] = {}, Start = function(L0)

end }
S_o5228 = { [nil] = {}, Start = function(L0)

end }
S_o5274 = { [nil] = {}, Start = function(L0)

end }
S_o5320 = { [nil] = {}, Start = function(L0)

end }
S_o5366 = { [nil] = {}, Start = function(L0)

end }
S_o5412 = { [nil] = {}, Start = function(L0)

end }
S_o5458 = { [nil] = {}, Start = function(L0)

end }
S_o5504 = { [nil] = {}, Start = function(L0)

end }
S_o5550 = { [nil] = {}, Start = function(L0)

end }
S_o5596 = { [nil] = {}, Start = function(L0)

end }
S_o5642 = { [nil] = {}, Start = function(L0)

end }
S_o5688 = { [nil] = {}, Start = function(L0)

end }
S_o5734 = { [nil] = {}, Start = function(L0)

end }
S_o5780 = { [nil] = {}, Start = function(L0)

end }
o5827 = FormationLib.CreateFormation("TriangleUpper", "", "", "", 15, 15)
o5829 = FormationLib.CreateFormation("TriangleUpper", "", "", "", 25, 25)
o5831 = FormationLib.CreateFormation("TriangleUpper", "", "", "", 25, 25)
o5832 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/Harvester_1_ApproachPath", "/Scenario_Dynamic/Navigation/Harvester_1_DockPath", "/Scenario_Dynamic/Navigation/Harvester_1_DockArea")
o5833 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/Harvester_2_ApproachPath", "/Scenario_Dynamic/Navigation/Harvester_2_DockPath", "/Scenario_Dynamic/Navigation/Harvester_2_DockArea")
o5834 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/Harvester_3_ApproachPath", "/Scenario_Dynamic/Navigation/Harvester_3_DockPath", "/Scenario_Dynamic/Navigation/Harvester_3_DockArea")
S_o5835 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5835, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5835, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5835, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "wng", "", "", False, False, True)
  CallFunction(o5835, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5835, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5835, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5840.SetStateValue(L1)
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
o5840 = { [nil] = {}, Start = function()
  o5840["Value"] = False
  o6198.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5840.Value == L0) then
    o5840["Value"] = L0
    o6198.ReCalculate()
  end
end }
S_o5841 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5841, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5841, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5841, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "mac", "", "", "", False, False, True)
  CallFunction(o5841, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5841, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5841, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5846.SetStateValue(L1)
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
o5846 = { [nil] = {}, Start = function()
  o5846["Value"] = False
  o5940.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5846.Value == L0) then
    o5846["Value"] = L0
    o5940.ReCalculate()
  end
end }
S_o5847 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5847, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5847, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5847, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "wng", "mac", "", False, True, False)
  CallFunction(o5847, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5847, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5847, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5852.SetStateValue(L1)
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
o5852 = { [nil] = {}, Start = function()
  o5852["Value"] = False
  o6372.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5852.Value == L0) then
    o5852["Value"] = L0
    o6372.ReCalculate()
  end
end }
S_o5853 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5853, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5853, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5853, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "wng", "mac", "", True, False, False)
  CallFunction(o5853, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5853, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5853, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5858.SetStateValue(L1)
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
o5858 = { [nil] = {}, Start = function()
  o5858["Value"] = False
  o6372.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5858.Value == L0) then
    o5858["Value"] = L0
    o6372.ReCalculate()
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
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5859, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "wng", "mac", "", False, True, False)
  CallFunction(o5859, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5859, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5859, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5864.SetStateValue(L1)
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
o5864 = { [nil] = {}, Start = function()
  o5864["Value"] = False
  o6419.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5864.Value == L0) then
    o5864["Value"] = L0
    o6419.ReCalculate()
  end
end }
S_o5865 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5865, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5865, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5865, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "wng", "mac", "", True, False, False)
  CallFunction(o5865, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5865, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5865, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5870.SetStateValue(L1)
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
o5870 = { [nil] = {}, Start = function()
  o5870["Value"] = False
  o6419.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5870.Value == L0) then
    o5870["Value"] = L0
    o6419.ReCalculate()
  end
end }
S_o5871 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5871, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5871, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5871, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "wng", "mac", "", False, True, False)
  CallFunction(o5871, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5871, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5871, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5876.SetStateValue(L1)
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
o5876 = { [nil] = {}, Start = function()
  o5876["Value"] = False
  o6466.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5876.Value == L0) then
    o5876["Value"] = L0
    o6466.ReCalculate()
  end
end }
S_o5877 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5877, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5877, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5877, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "wng", "mac", "", True, False, False)
  CallFunction(o5877, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5877, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5877, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5882.SetStateValue(L1)
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
o5882 = { [nil] = {}, Start = function()
  o5882["Value"] = False
  o6466.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5882.Value == L0) then
    o5882["Value"] = L0
    o6466.ReCalculate()
  end
end }
S_o5883 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5883, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5883, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5883, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o5883, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5883, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5883, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5888.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5884.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5884 = { [nil] = {}, GetCalculated = function()
  if not (o5900.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5884.SetStateValue(o5884.GetCalculated())
end, StartCalculate = function()
  o5884["Value"] = o5884.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5884.Value == L0) then
    o5884["Value"] = L0
    CallFunction(o5883, "ProcesseStateChange")
  end
end }
o5888 = { [nil] = {}, Start = function()
  o5888["Value"] = False
  o6700.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5888.Value == L0) then
    o5888["Value"] = L0
    o6700.ReCalculate()
  end
end }
S_o5889 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5889, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5889, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5889, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "mac", "", "", "", False, False, True)
  CallFunction(o5889, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5889, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5889, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5894.SetStateValue(L1)
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
o5894 = { [nil] = {}, Start = function()
  o5894["Value"] = False
  o5942.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5894.Value == L0) then
    o5894["Value"] = L0
    o5942.ReCalculate()
  end
end }
S_o5895 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5895, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5895, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5895, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "mac", "", "", "", False, False, True)
  CallFunction(o5895, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5895, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5895, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5900.SetStateValue(L1)
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
o5900 = { [nil] = {}, Start = function()
  o5900["Value"] = False
  o5884.StartCalculate()
  o5946.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5900.Value == L0) then
    o5900["Value"] = L0
    o5884.ReCalculate()
    o5946.ReCalculate()
  end
end }
S_o5901 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5901, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5901, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5901, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o5901, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5901, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5901, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5906.SetStateValue(L1)
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
o5906 = { [nil] = {}, Start = function()
  o5906["Value"] = False
  o5950.StartCalculate()
  o5998.StartCalculate()
  o6069.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5906.Value == L0) then
    o5906["Value"] = L0
    o5950.ReCalculate()
    o5998.ReCalculate()
    o6069.ReCalculate()
  end
end }
S_o5907 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5907, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5907, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5907, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "silent", "mac", "", "", "", True, False, False)
  CallFunction(o5907, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5907, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5907, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5912.SetStateValue(L1)
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
o5912 = { [nil] = {}, Start = function()
  o5912["Value"] = False
  o5952.StartCalculate()
  o5953.StartCalculate()
  o5961.StartCalculate()
  o6135.StartCalculate()
  o6868.StartCalculate()
  o6924.StartCalculate()
  o6980.StartCalculate()
  o7036.StartCalculate()
  o7092.StartCalculate()
  o7148.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5912.Value == L0) then
    o5912["Value"] = L0
    o5952.ReCalculate()
    o5953.ReCalculate()
    o5961.ReCalculate()
    o6135.ReCalculate()
    o6868.ReCalculate()
    o6924.ReCalculate()
    o6980.ReCalculate()
    o7036.ReCalculate()
    o7092.ReCalculate()
    o7148.ReCalculate()
  end
end }
S_o5913 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5913, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5913, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5913, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "mac", "", "", "", False, False, True)
  CallFunction(o5913, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5913, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5913, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5918.SetStateValue(L1)
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
o5918 = { [nil] = {}, Start = function()
  o5918["Value"] = False
  o5962.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5918.Value == L0) then
    o5918["Value"] = L0
    o5962.ReCalculate()
  end
end }
S_o5919 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_vendetta2", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_shell", 9999)
  Body_AddItem(L0.Node, "buzzer_normal", 4)
  Body_AddItem(L0.Node, "torpedo_stanley", 2)
  Body_AddItem(L0.Node, "gun_vendetta1", 1)
  Body_AddItem(L0.Node, "device_generator0", 1)
  Body_AddItem(L0.Node, "gun_empactor", 1)
  Body_AddItem(L0.Node, "ammo_energy", 200)
  CallFunction(o5919, "Code9")
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
o5933 = { [nil] = {}, Start = function()
  o5933["Value"] = False
  o5935.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5933.Value == L0) then
    o5933["Value"] = L0
    o5935.ReCalculate()
  end
end }
o5934 = { [nil] = {}, GetCalculated = function()
  if not (o6269.Value ~= True) then
    if not (o6325.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5934.SetStateValue(o5934.GetCalculated())
end, StartCalculate = function()
  o5934["Value"] = o5934.GetCalculated()
  o5935.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6192.Node, o5919.Node, 71)
end, SetStateValue = function(L0)
  if not (o5934.Value == L0) then
    o5934["Value"] = L0
    o5935.ReCalculate()
    if not (L0 ~= 1) then
      o5934.ChangeTo1()
    end
  end
end }
o5935 = { [nil] = {}, GetCalculated = function()
  if not (o5933.Value ~= True) then
    if not (o5934.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5935.SetStateValue(o5935.GetCalculated())
end, StartCalculate = function()
  o5935["Value"] = o5935.GetCalculated()
  o5997.StartCalculate()
  o6068.StartCalculate()
  o6199.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
  SED_SetTaskTextKey(0, -1, -1)
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o5935.Value == L0) then
    DelayedFunction(5, o5935, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5935.Value == L0) then
    o5935["Value"] = L0
    o5997.ReCalculate()
    o6068.ReCalculate()
    o6199.ReCalculate()
    if not (L0 ~= 1) then
      o5935.ChangeTo1()
    end
  end
end }
o5936 = { [nil] = {}, GetCalculated = function()
  if not (o6208.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5936.SetStateValue(o5936.GetCalculated())
end, StartCalculate = function()
  o5936["Value"] = o5936.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6192.Node, o5919.Node, 73)
end, SetStateValue = function(L0)
  if not (o5936.Value == L0) then
    o5936["Value"] = L0
    if not (L0 ~= 1) then
      o5936.ChangeTo1()
    end
  end
end }
o5937 = { [nil] = {}, GetCalculated = function()
  if not (o6209.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5937.SetStateValue(o5937.GetCalculated())
end, StartCalculate = function()
  o5937["Value"] = o5937.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6192.Node, o5919.Node, 74)
end, SetStateValue = function(L0)
  if not (o5937.Value == L0) then
    o5937["Value"] = L0
    if not (L0 ~= 1) then
      o5937.ChangeTo1()
    end
  end
end }
o5938 = { [nil] = {}, GetCalculated = function()
  if not (o6210.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5938.SetStateValue(o5938.GetCalculated())
end, StartCalculate = function()
  o5938["Value"] = o5938.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6192.Node, o5919.Node, 75)
end, SetStateValue = function(L0)
  if not (o5938.Value == L0) then
    o5938["Value"] = L0
    if not (L0 ~= 1) then
      o5938.ChangeTo1()
    end
  end
end }
o5939 = { [nil] = {}, GetCalculated = function()
  if not (o6213.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5939.SetStateValue(o5939.GetCalculated())
end, StartCalculate = function()
  o5939["Value"] = o5939.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o5919.Node, 76)
  Game_PrimaryObjectiveFailed(GetGameNode(), 2, 2001, 2101)
end, SetStateValue = function(L0)
  if not (o5939.Value == L0) then
    DelayedFunction(5, o5939, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5939.Value == L0) then
    o5939["Value"] = L0
    if not (L0 ~= 1) then
      o5939.ChangeTo1()
    end
  end
end }
o5940 = { [nil] = {}, GetCalculated = function()
  if not (o5846.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5940.SetStateValue(o5940.GetCalculated())
end, StartCalculate = function()
  o5940["Value"] = o5940.GetCalculated()
  o7252.StartCalculate()
  o7308.StartCalculate()
  o7364.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6192.Node, o5919.Node, 48)
  SendRadioMessageTake(o30.Node, o5919.Node, 49)
  Game_SetWayPoint(GetGameNode(), o6512.Node)
  SED_SetTaskTextKey(2102, -1, -1)
end, SetStateValue = function(L0)
  if not (o5940.Value == L0) then
    o5940["Value"] = L0
    o7252.ReCalculate()
    o7308.ReCalculate()
    o7364.ReCalculate()
    if not (L0 ~= 1) then
      o5940.ChangeTo1()
    end
  end
end }
o5941 = { [nil] = {}, GetCalculated = function()
  if not (o6515.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5941.SetStateValue(o5941.GetCalculated())
end, StartCalculate = function()
  o5941["Value"] = o5941.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 3, 2000, 2102)
  SendRadioMessageTake(o30.Node, o5919.Node, 50)
  Game_SetWayPoint(GetGameNode(), o6366.Node)
  SED_SetTaskTextKey(2101, -1, -1)
end, SetStateValue = function(L0)
  if not (o5941.Value == L0) then
    DelayedFunction(2, o5941, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5941.Value == L0) then
    o5941["Value"] = L0
    if not (L0 ~= 1) then
      o5941.ChangeTo1()
    end
  end
end }
o5942 = { [nil] = {}, GetCalculated = function()
  if not (o5894.Value ~= True) then
    if not (o5948.Value ~= False) then
      if not (o5945.Value ~= False) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o5942.SetStateValue(o5942.GetCalculated())
end, StartCalculate = function()
  o5942["Value"] = o5942.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o5919.Node, 51)
  Game_SetWayPoint(GetGameNode(), o6517.Node)
  SED_SetTaskTextKey(2102, -1, -1)
end, SetStateValue = function(L0)
  if not (o5942.Value == L0) then
    o5942["Value"] = L0
    if not (L0 ~= 1) then
      o5942.ChangeTo1()
    end
  end
end }
o5943 = { [nil] = {}, GetCalculated = function()
  if not (o5944.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5943.SetStateValue(o5943.GetCalculated())
end, StartCalculate = function()
  o5943["Value"] = o5943.GetCalculated()
end, ChangeTo1 = function()
  SED_SetTaskTextKey(2101, -1, -1)
end, SetStateValue = function(L0)
  if not (o5943.Value == L0) then
    o5943["Value"] = L0
    if not (L0 ~= 1) then
      o5943.ChangeTo1()
    end
  end
end }
o5944 = { [nil] = {}, Start = function()
  o5944["Value"] = False
  o5943.StartCalculate()
  o6756.StartCalculate()
  o6812.StartCalculate()
  o7203.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5944.Value == L0) then
    o5944["Value"] = L0
    o5943.ReCalculate()
    o6756.ReCalculate()
    o6812.ReCalculate()
    o7203.ReCalculate()
  end
end }
o5945 = { [nil] = {}, GetCalculated = function()
  if not (o6520.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5945.SetStateValue(o5945.GetCalculated())
end, StartCalculate = function()
  o5945["Value"] = o5945.GetCalculated()
  o5942.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 3, 2000, 2102)
  SendRadioMessageTake(o30.Node, o5919.Node, 54)
  Game_SetWayPoint(GetGameNode(), o6366.Node)
  SED_SetTaskTextKey(2101, -1, -1)
end, SetStateValue = function(L0)
  if not (o5945.Value == L0) then
    DelayedFunction(2, o5945, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5945.Value == L0) then
    o5945["Value"] = L0
    o5942.ReCalculate()
    if not (L0 ~= 1) then
      o5945.ChangeTo1()
    end
  end
end }
o5946 = { [nil] = {}, GetCalculated = function()
  if not (o5900.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5946.SetStateValue(o5946.GetCalculated())
end, StartCalculate = function()
  o5946["Value"] = o5946.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6192.Node, o5919.Node, 55)
  SendRadioMessageTake(o30.Node, o5919.Node, 56)
  Game_SetWayPoint(GetGameNode(), o6522.Node)
  SED_SetTaskTextKey(2102, -1, -1)
end, SetStateValue = function(L0)
  if not (o5946.Value == L0) then
    o5946["Value"] = L0
    if not (L0 ~= 1) then
      o5946.ChangeTo1()
    end
  end
end }
o5947 = { [nil] = {}, GetCalculated = function()
  if not (o6525.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5947.SetStateValue(o5947.GetCalculated())
end, StartCalculate = function()
  o5947["Value"] = o5947.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 3, 2000, 2102)
  SendRadioMessageTake(o30.Node, o5919.Node, 57)
  Game_SetWayPoint(GetGameNode(), o6366.Node)
  SED_SetTaskTextKey(2101, -1, -1)
end, SetStateValue = function(L0)
  if not (o5947.Value == L0) then
    DelayedFunction(2, o5947, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5947.Value == L0) then
    o5947["Value"] = L0
    if not (L0 ~= 1) then
      o5947.ChangeTo1()
    end
  end
end }
o5948 = { [nil] = {}, GetCalculated = function()
  if not (o6775.Value ~= True) then
    if not (o6831.Value ~= True) then
      if not (o7206.Value ~= False) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o5948.SetStateValue(o5948.GetCalculated())
end, StartCalculate = function()
  o5948["Value"] = o5948.GetCalculated()
  o5942.StartCalculate()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 2, 2002, 2105)
  SendRadioMessageTake(o30.Node, o5919.Node, 79)
  SED_SetTaskTextKey(2101, -1, -1)
  Game_SetWayPoint(GetGameNode(), o6366.Node)
end, SetStateValue = function(L0)
  if not (o5948.Value == L0) then
    o5948["Value"] = L0
    o5942.ReCalculate()
    if not (L0 ~= 1) then
      o5948.ChangeTo1()
    end
  end
end }
o5949 = { [nil] = {}, GetCalculated = function()
  if not (o6775.Value ~= True) then
    if not (o6831.Value ~= True) then
      if not (o7206.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o5949.SetStateValue(o5949.GetCalculated())
end, StartCalculate = function()
  o5949["Value"] = o5949.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveFailed(GetGameNode(), 2, 0, 0)
end, SetStateValue = function(L0)
  if not (o5949.Value == L0) then
    o5949["Value"] = L0
    if not (L0 ~= 1) then
      o5949.ChangeTo1()
    end
  end
end }
o5950 = { [nil] = {}, GetCalculated = function()
  if not (o5906.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5950.SetStateValue(o5950.GetCalculated())
end, StartCalculate = function()
  o5950["Value"] = o5950.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o5919.Node, 64)
  SendRadioMessageTake(o5919.Node, o5919.Node, 65)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  SED_SetTaskTextKey(2103, -1, -1)
  Game_PlayMusic(GetGameNode(), "Track5")
end, SetStateValue = function(L0)
  if not (o5950.Value == L0) then
    o5950["Value"] = L0
    if not (L0 ~= 1) then
      o5950.ChangeTo1()
    end
  end
end }
o5951 = { [nil] = {}, GetCalculated = function()
  if not (o6380.Value ~= True) then
    if not (o6427.Value ~= True) then
      if not (o6543.Value ~= True) then
        if not (o6600.Value ~= True) then
          if not (o6657.Value ~= True) then
            if not (o1326.Value ~= True) then
              if not (o1234.Value ~= True) then
                if not (o1280.Value ~= True) then
                  if not (o6474.Value ~= True) then
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
end, ReCalculate = function()
  o5951.SetStateValue(o5951.GetCalculated())
end, StartCalculate = function()
  o5951["Value"] = o5951.GetCalculated()
  o6002.StartCalculate()
  o6073.StartCalculate()
  o6200.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 4, 2000, 2103)
  Game_SetWayPoint(GetGameNode(), o6366.Node)
  SED_SetTaskTextKey(2101, -1, -1)
  Game_PlayMusic(GetGameNode(), "Track4")
end, SetStateValue = function(L0)
  if not (o5951.Value == L0) then
    o5951["Value"] = L0
    o6002.ReCalculate()
    o6073.ReCalculate()
    o6200.ReCalculate()
    if not (L0 ~= 1) then
      o5951.ChangeTo1()
    end
  end
end }
o5952 = { [nil] = {}, GetCalculated = function()
  if not (o5912.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5952.SetStateValue(o5952.GetCalculated())
end, StartCalculate = function()
  o5952["Value"] = o5952.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "Atmo")
  SendRadioMessageTake(o30.Node, o5919.Node, 66)
end, SetStateValue = function(L0)
  if not (o5952.Value == L0) then
    DelayedFunction(3, o5952, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5952.Value == L0) then
    o5952["Value"] = L0
    if not (L0 ~= 1) then
      o5952.ChangeTo1()
    end
  end
end }
o5953 = { [nil] = {}, GetCalculated = function()
  if not (o5912.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5953.SetStateValue(o5953.GetCalculated())
end, StartCalculate = function()
  o5953["Value"] = o5953.GetCalculated()
  o6003.StartCalculate()
  o6074.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6061.Node, o5919.Node, 67)
  SendRadioMessageTake(o30.Node, o5919.Node, 68)
  SendRadioMessageTake(o6192.Node, o5919.Node, 69)
  Game_PlayMusic(GetGameNode(), "Agressive")
end, SetStateValue = function(L0)
  if not (o5953.Value == L0) then
    DelayedFunction(15, o5953, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5953.Value == L0) then
    o5953["Value"] = L0
    o6003.ReCalculate()
    o6074.ReCalculate()
    if not (L0 ~= 1) then
      o5953.ChangeTo1()
    end
  end
end }
o5954 = { [nil] = {}, GetCalculated = function()
  if not (o6881.Value ~= True) then
    if not (o6937.Value ~= True) then
      if not (o6993.Value ~= True) then
        if not (o7049.Value ~= True) then
          if not (o7105.Value ~= True) then
            if not (o7161.Value ~= True) then
              return 1
            else
              return 0
            end
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o5954.SetStateValue(o5954.GetCalculated())
end, StartCalculate = function()
  o5954["Value"] = o5954.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 3, 2002, 2106)
  SendRadioMessageTake(o30.Node, o5919.Node, 80)
end, SetStateValue = function(L0)
  if not (o5954.Value == L0) then
    o5954["Value"] = L0
    if not (L0 ~= 1) then
      o5954.ChangeTo1()
    end
  end
end }
o5955 = { [nil] = {}, GetCalculated = function()
  if not (o6711.Value ~= True) then
    if not (o6703.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5955.SetStateValue(o5955.GetCalculated())
end, StartCalculate = function()
  o5955["Value"] = o5955.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 4, 2002, 2107)
  SendRadioMessageTake(o30.Node, o5919.Node, 739)
end, SetStateValue = function(L0)
  if not (o5955.Value == L0) then
    DelayedFunction(2, o5955, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5955.Value == L0) then
    o5955["Value"] = L0
    if not (L0 ~= 1) then
      o5955.ChangeTo1()
    end
  end
end }
o5956 = { [nil] = {}, GetCalculated = function()
  if not (o6703.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5956.SetStateValue(o5956.GetCalculated())
end, StartCalculate = function()
  o5956["Value"] = o5956.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveFailed(GetGameNode(), 4, 0, 0)
end, SetStateValue = function(L0)
  if not (o5956.Value == L0) then
    DelayedFunction(2, o5956, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5956.Value == L0) then
    o5956["Value"] = L0
    if not (L0 ~= 1) then
      o5956.ChangeTo1()
    end
  end
end }
o5957 = { [nil] = {}, GetCalculated = function()
  if not (o6225.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5957.SetStateValue(o5957.GetCalculated())
end, StartCalculate = function()
  o5957["Value"] = o5957.GetCalculated()
  o5963.StartCalculate()
  o6000.StartCalculate()
  o6071.StartCalculate()
  o6133.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 2, 2000, 2101)
  SED_SetTaskTextKey(0, -1, -1)
  SendRadioMessageTake(o30.Node, o5919.Node, 77)
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o5957.Value == L0) then
    DelayedFunction(2, o5957, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5957.Value == L0) then
    o5957["Value"] = L0
    o5963.ReCalculate()
    o6000.ReCalculate()
    o6071.ReCalculate()
    o6133.ReCalculate()
    if not (L0 ~= 1) then
      o5957.ChangeTo1()
    end
  end
end }
o5958 = { [nil] = {}, GetCalculated = function()
  if not (o6025.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5958.SetStateValue(o5958.GetCalculated())
end, StartCalculate = function()
  o5958["Value"] = o5958.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o5991, "Code29")
end, SetStateValue = function(L0)
  if not (o5958.Value == L0) then
    o5958["Value"] = L0
    if not (L0 ~= 1) then
      o5958.ChangeTo1()
    end
  end
end }
o5959 = { [nil] = {}, GetCalculated = function()
  if not (o6096.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5959.SetStateValue(o5959.GetCalculated())
end, StartCalculate = function()
  o5959["Value"] = o5959.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o6061, "Code28")
end, SetStateValue = function(L0)
  if not (o5959.Value == L0) then
    o5959["Value"] = L0
    if not (L0 ~= 1) then
      o5959.ChangeTo1()
    end
  end
end }
o5960 = { [nil] = {}, GetCalculated = function()
  if not (o6156.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5960.SetStateValue(o5960.GetCalculated())
end, StartCalculate = function()
  o5960["Value"] = o5960.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o6132, "Code8")
end, SetStateValue = function(L0)
  if not (o5960.Value == L0) then
    o5960["Value"] = L0
    if not (L0 ~= 1) then
      o5960.ChangeTo1()
    end
  end
end }
o5961 = { [nil] = {}, GetCalculated = function()
  if not (o7265.Value ~= True) then
    if not (o7321.Value ~= True) then
      if not (o7377.Value ~= True) then
        if not (o5912.Value ~= False) then
          return 1
        else
          return 0
        end
      end
    end
  end
end, ReCalculate = function()
  o5961.SetStateValue(o5961.GetCalculated())
end, StartCalculate = function()
  o5961["Value"] = o5961.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o5919.Node, 78)
  Game_BonusObjectiveReached(GetGameNode(), 1, 2002, 2104)
end, SetStateValue = function(L0)
  if not (o5961.Value == L0) then
    o5961["Value"] = L0
    if not (L0 ~= 1) then
      o5961.ChangeTo1()
    end
  end
end }
o5962 = { [nil] = {}, GetCalculated = function()
  if not (o5918.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5962.SetStateValue(o5962.GetCalculated())
end, StartCalculate = function()
  o5962["Value"] = o5962.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6192.Node, o5919.Node, 58)
  SendRadioMessageTake(o30.Node, o5919.Node, 59)
end, SetStateValue = function(L0)
  if not (o5962.Value == L0) then
    o5962["Value"] = L0
    if not (L0 ~= 1) then
      o5962.ChangeTo1()
    end
  end
end }
o5963 = { [nil] = {}, GetCalculated = function()
  if not (o5957.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5963.SetStateValue(o5963.GetCalculated())
end, StartCalculate = function()
  o5963["Value"] = o5963.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5963.Value == L0) then
    o5963["Value"] = L0
    o2.ReCalculate()
  end
end }
o5987 = { [nil] = {}, GetCalculated = function()
  if not (o6213.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5987.SetStateValue(o5987.GetCalculated())
end, StartCalculate = function()
  o5987["Value"] = o5987.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5987.Value == L0) then
    o5987["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o5991 = { [nil] = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5991, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5991, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5991, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetShieldBarrier(L0.Node, 0.09, 0.1)
  CallFunction(o5991, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o5991, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/BomberPath_1", 0.75, 1 } }(o5826, o5827, "/Scenario_Dynamic/Navigation/BomberTriggerArea", "/Scenario_Dynamic/Navigation/BomberFollowArea", False, "Code6")
  else
    CallFunction(o5991, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  o5933.SetStateValue(True)
  SendRadioMessageTake(o5991.Node, o5919.Node, 72)
  CallFunction(o5991, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code9")
  else
    CallFunction(o5991, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/CrawlerByFinch_FollowArea", "E", "", "", "", 2, 0.25, "Code10")
  else
    CallFunction(o5991, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code11")
  else
    CallFunction(o5991, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/BomberToFinch_Path", 1, 1 } }("Code12")
  else
    CallFunction(o5991, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code13")
  else
    CallFunction(o5991, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5991, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o5991, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code16")
  else
    CallFunction(o5991, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o5829, 0, 300, "E", "", "", "", "/Scenario_Dynamic/Navigation/Finch_TriggerArea1", "/Scenario_Dynamic/Navigation/Finch_FollowArea1", 0.25, 2, "Code17")
  else
    CallFunction(o5991, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code18")
  else
    CallFunction(o5991, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5991, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o5831, 0, 100, "E", "", "", "", "/Scenario_Dynamic/Navigation/Finch_TriggerArea2", "/Scenario_Dynamic/Navigation/Finch_FollowArea2", 0.25, 10, "Code20")
  else
    CallFunction(o5991, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code21")
  else
    CallFunction(o5991, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5991, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code23")
  else
    CallFunction(o5991, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FinalBattle_PatrolArea", "/Scenario_Dynamic/Navigation/FinalBattle_TriggerArea", "/Scenario_Dynamic/Navigation/FinalBattle_FollowArea", "E", "", "", "", 1, "Code24")
  else
    CallFunction(o5991, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o5832, nil, 0, "Code25")
  else
    CallFunction(o5991, "Code25")
  end
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code26")
  else
    CallFunction(o5991, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5991, "Code27")
  end
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code28")
  else
    CallFunction(o5991, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5991, "Code29")
  end
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  StopAllActiveBehaviours(L0)
  Body_SetKineticShield(L0.Node, 0, 0.5)
  ShieldedBody_SetShieldBarrier(L0.Node, 0.08, 0.1)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o5991, "Code33")
end, Code33 = function(L0)
  L0["CodeIndex"] = 33
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code34")
  else
    CallFunction(o5991, "Code34")
  end
end }, Code34 = function(L0)
  L0["CodeIndex"] = 34
  Vessel_CollisionObjects(L0.Node, 1)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o5991, "Code36")
end, Code36 = function(L0)
  L0["CodeIndex"] = 36
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/WingmenEscapePath", 1, 2 } }("Code37")
  else
    CallFunction(o5991, "Code37")
  end
end, Code37 = function(L0)
  L0["CodeIndex"] = 37
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o5832, nil, 0, "Code38")
  else
    CallFunction(o5991, "Code38")
  end
end, Code38 = function(L0)
  L0["CodeIndex"] = 38
end, SetStateValue_KineticShield10 = function(L0, L1)
  o6025.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 13) then
    if not (L0.CodeIndex >= 14) then
      if not (o5997.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 16) then
    if not (L0.CodeIndex >= 17) then
      if not (o5998.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 18) then
    if not (L0.CodeIndex >= 19) then
      if not (o6002.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 21) then
    if not (L0.CodeIndex >= 22) then
      if not (o6003.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 23) then
    if not (L0.CodeIndex >= 24) then
      if not (o6000.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5997 = { [nil] = {}, GetCalculated = function()
  if not (o5935.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5997.SetStateValue(o5997.GetCalculated())
end, StartCalculate = function()
  o5997["Value"] = o5997.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5997.Value == L0) then
    DelayedFunction(21, o5997, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5997.Value == L0) then
    o5997["Value"] = L0
    CallFunction(o5991, "ProcesseStateChange")
  end
end }
o5998 = { [nil] = {}, GetCalculated = function()
  if not (o5906.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5998.SetStateValue(o5998.GetCalculated())
end, StartCalculate = function()
  o5998["Value"] = o5998.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5998.Value == L0) then
    DelayedFunction(5, o5998, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5998.Value == L0) then
    o5998["Value"] = L0
    CallFunction(o5991, "ProcesseStateChange")
  end
end }
o6000 = { [nil] = {}, GetCalculated = function()
  if not (o5957.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6000.SetStateValue(o6000.GetCalculated())
end, StartCalculate = function()
  o6000["Value"] = o6000.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6000.Value == L0) then
    DelayedFunction(20, o6000, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6000.Value == L0) then
    o6000["Value"] = L0
    CallFunction(o5991, "ProcesseStateChange")
  end
end }
o6002 = { [nil] = {}, GetCalculated = function()
  if not (o5951.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6002.SetStateValue(o6002.GetCalculated())
end, StartCalculate = function()
  o6002["Value"] = o6002.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6002.Value == L0) then
    DelayedFunction(6, o6002, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6002.Value == L0) then
    o6002["Value"] = L0
    CallFunction(o5991, "ProcesseStateChange")
  end
end }
o6003 = { [nil] = {}, GetCalculated = function()
  if not (o5953.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6003.SetStateValue(o6003.GetCalculated())
end, StartCalculate = function()
  o6003["Value"] = o6003.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6003.Value == L0) then
    DelayedFunction(2, o6003, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6003.Value == L0) then
    o6003["Value"] = L0
    CallFunction(o5991, "ProcesseStateChange")
  end
end }
o6025 = { [nil] = {}, Start = function()
  o6025["Value"] = False
  o5958.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6025.Value == L0) then
    o6025["Value"] = L0
    o5958.ReCalculate()
  end
end }
S_o6061 = { [nil] = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6061, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6061, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6061, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetShieldBarrier(L0.Node, 0.09, 0.1)
  CallFunction(o6061, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0.02 } }("Code5")
  else
    CallFunction(o6061, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o6061, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o5827, 0, 275, "E", "", "", "", "/Scenario_Dynamic/Navigation/BomberTriggerArea", "/Scenario_Dynamic/Navigation/BomberFollowArea", 1, 4, "Code7")
  else
    CallFunction(o6061, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code8")
  else
    CallFunction(o6061, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/CrawlerByFinch_FollowArea", "E", "", "", "", 2, 0.25, "Code9")
  else
    CallFunction(o6061, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code10")
  else
    CallFunction(o6061, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AngelinaToFinch_Path", 1, 1 } }("Code11")
  else
    CallFunction(o6061, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code12")
  else
    CallFunction(o6061, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6061, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o6061, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code15")
  else
    CallFunction(o6061, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o5829, 0, 300, "E", "", "", "", "/Scenario_Dynamic/Navigation/Finch_TriggerArea1", "/Scenario_Dynamic/Navigation/Finch_FollowArea1", 0.25, 2, "Code16")
  else
    CallFunction(o6061, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code17")
  else
    CallFunction(o6061, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6061, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o5831, 0, 100, "E", "", "", "", "/Scenario_Dynamic/Navigation/Finch_TriggerArea2", "/Scenario_Dynamic/Navigation/Finch_FollowArea2", 0.25, 10, "Code19")
  else
    CallFunction(o6061, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code20")
  else
    CallFunction(o6061, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6061, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code22")
  else
    CallFunction(o6061, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FinalBattle_PatrolArea", "/Scenario_Dynamic/Navigation/FinalBattle_TriggerArea", "/Scenario_Dynamic/Navigation/FinalBattle_FollowArea", "E", "", "", "", 1, "Code23")
  else
    CallFunction(o6061, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o5832, nil, 0, "Code24")
  else
    CallFunction(o6061, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code25")
  else
    CallFunction(o6061, "Code25")
  end
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6061, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code27")
  else
    CallFunction(o6061, "Code27")
  end
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6061, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  StopAllActiveBehaviours(L0)
  Body_SetKineticShield(L0.Node, 0, 0.5)
  ShieldedBody_SetShieldBarrier(L0.Node, 0.08, 0.1)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o6061, "Code32")
end, Code32 = function(L0)
  L0["CodeIndex"] = 32
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code33")
  else
    CallFunction(o6061, "Code33")
  end
end }, Code33 = function(L0)
  L0["CodeIndex"] = 33
  Vessel_CollisionObjects(L0.Node, 1)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o6061, "Code35")
end, Code35 = function(L0)
  L0["CodeIndex"] = 35
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/WingmenEscapePath", 1, 2 } }("Code36")
  else
    CallFunction(o6061, "Code36")
  end
end, Code36 = function(L0)
  L0["CodeIndex"] = 36
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o5832, nil, 0, "Code37")
  else
    CallFunction(o6061, "Code37")
  end
end, Code37 = function(L0)
  L0["CodeIndex"] = 37
end, SetStateValue_KineticShield10 = function(L0, L1)
  o6096.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 12) then
    if not (L0.CodeIndex >= 13) then
      if not (o6068.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 15) then
    if not (L0.CodeIndex >= 16) then
      if not (o6069.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 17) then
    if not (L0.CodeIndex >= 18) then
      if not (o6073.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 20) then
    if not (L0.CodeIndex >= 21) then
      if not (o6074.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 22) then
    if not (L0.CodeIndex >= 23) then
      if not (o6071.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6068 = { [nil] = {}, GetCalculated = function()
  if not (o5935.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6068.SetStateValue(o6068.GetCalculated())
end, StartCalculate = function()
  o6068["Value"] = o6068.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6068.Value == L0) then
    DelayedFunction(21, o6068, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6068.Value == L0) then
    o6068["Value"] = L0
    CallFunction(o6061, "ProcesseStateChange")
  end
end }
o6069 = { [nil] = {}, GetCalculated = function()
  if not (o5906.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6069.SetStateValue(o6069.GetCalculated())
end, StartCalculate = function()
  o6069["Value"] = o6069.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6069.Value == L0) then
    DelayedFunction(5, o6069, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6069.Value == L0) then
    o6069["Value"] = L0
    CallFunction(o6061, "ProcesseStateChange")
  end
end }
o6071 = { [nil] = {}, GetCalculated = function()
  if not (o5957.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6071.SetStateValue(o6071.GetCalculated())
end, StartCalculate = function()
  o6071["Value"] = o6071.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6071.Value == L0) then
    DelayedFunction(20, o6071, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6071.Value == L0) then
    o6071["Value"] = L0
    CallFunction(o6061, "ProcesseStateChange")
  end
end }
o6073 = { [nil] = {}, GetCalculated = function()
  if not (o5951.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6073.SetStateValue(o6073.GetCalculated())
end, StartCalculate = function()
  o6073["Value"] = o6073.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6073.Value == L0) then
    DelayedFunction(6, o6073, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6073.Value == L0) then
    o6073["Value"] = L0
    CallFunction(o6061, "ProcesseStateChange")
  end
end }
o6074 = { [nil] = {}, GetCalculated = function()
  if not (o5953.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6074.SetStateValue(o6074.GetCalculated())
end, StartCalculate = function()
  o6074["Value"] = o6074.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6074.Value == L0) then
    DelayedFunction(2, o6074, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6074.Value == L0) then
    o6074["Value"] = L0
    CallFunction(o6061, "ProcesseStateChange")
  end
end }
o6096 = { [nil] = {}, Start = function()
  o6096["Value"] = False
  o5959.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6096.Value == L0) then
    o6096["Value"] = L0
    o5959.ReCalculate()
  end
end }
S_o6132 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5832)
  CallFunction(o6132, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6132, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5832, "Code3")
  else
    CallFunction(o6132, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetShieldBarrier(L0.Node, 0.09, 0.1)
  CallFunction(o6132, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FinalBattle_PatrolArea", "/Scenario_Dynamic/Navigation/FinalBattle_TriggerArea", "/Scenario_Dynamic/Navigation/CrawlerByFinch_FollowArea", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o6132, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o5832, nil, 0, "Code6")
  else
    CallFunction(o6132, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o6132, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6132, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  StopAllActiveBehaviours(L0)
  ShieldedBody_SetShieldBarrier(L0.Node, 0.08, 0.1)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o6132, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code12")
  else
    CallFunction(o6132, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Vessel_CollisionObjects(L0.Node, 1)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o6132, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/WingmenEscapePath", 1, 2 } }("Code15")
  else
    CallFunction(o6132, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o5832, nil, 0, "Code16")
  else
    CallFunction(o6132, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
end, SetStateValue_KineticShield10 = function(L0, L1)
  o6156.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6135.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6133.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6133 = { [nil] = {}, GetCalculated = function()
  if not (o5957.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6133.SetStateValue(o6133.GetCalculated())
end, StartCalculate = function()
  o6133["Value"] = o6133.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6133.Value == L0) then
    DelayedFunction(20, o6133, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6133.Value == L0) then
    o6133["Value"] = L0
    CallFunction(o6132, "ProcesseStateChange")
  end
end }
o6135 = { [nil] = {}, GetCalculated = function()
  if not (o5912.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6135.SetStateValue(o6135.GetCalculated())
end, StartCalculate = function()
  o6135["Value"] = o6135.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6135.Value == L0) then
    DelayedFunction(15, o6135, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6135.Value == L0) then
    o6135["Value"] = L0
    CallFunction(o6132, "ProcesseStateChange")
  end
end }
o6156 = { [nil] = {}, Start = function()
  o6156["Value"] = False
  o5960.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6156.Value == L0) then
    o6156["Value"] = L0
    o5960.ReCalculate()
  end
end }
S_o6192 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6192, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6192, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6192, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o6192, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o6192, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6192, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o6192, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code8")
  else
    CallFunction(o6192, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code9")
  else
    CallFunction(o6192, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6192, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  SendRadioMessageTake(o6192.Node, o5919.Node, 42)
  SendRadioMessageTake(o5991.Node, o5919.Node, 43)
  SendRadioMessageTake(o6192.Node, o5919.Node, 44)
  SendRadioMessageTake(o30.Node, o5919.Node, 45)
  CallFunction(o6192, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 16 } }("Code15")
  else
    CallFunction(o6192, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  o5944.SetStateValue(True)
  CallFunction(o6192, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    o5828(o5829, "/Scenario_Dynamic/Navigation/Finch_TriggerArea1", "/Scenario_Dynamic/Navigation/Finch_FollowArea1", False, "Code17")
  else
    CallFunction(o6192, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code18")
  else
    CallFunction(o6192, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6192, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    o5830(o5831, "/Scenario_Dynamic/Navigation/Finch_TriggerArea2", "/Scenario_Dynamic/Navigation/Finch_FollowArea2", False, "Code20")
  else
    CallFunction(o6192, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o5833, nil, 0, "Code21")
  else
    CallFunction(o6192, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
end, SetStateValue_KineticShield75 = function(L0, L1)
  o6208.SetStateValue(L1)
end, SetStateValue_KineticShield50 = function(L0, L1)
  o6209.SetStateValue(L1)
end, SetStateValue_KineticShield25 = function(L0, L1)
  o6210.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o6213.SetStateValue(L1)
end, SetStateValue_DockedOn = function(L0, L1)
  o6225.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o6198.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o6199.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 18) then
    if not (L0.CodeIndex >= 19) then
      if not (o6200.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6198 = { [nil] = {}, GetCalculated = function()
  if not (o5840.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6198.SetStateValue(o6198.GetCalculated())
end, StartCalculate = function()
  o6198["Value"] = o6198.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6198.Value == L0) then
    o6198["Value"] = L0
    CallFunction(o6192, "ProcesseStateChange")
  end
end }
o6199 = { [nil] = {}, GetCalculated = function()
  if not (o5935.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6199.SetStateValue(o6199.GetCalculated())
end, StartCalculate = function()
  o6199["Value"] = o6199.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6199.Value == L0) then
    DelayedFunction(2, o6199, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6199.Value == L0) then
    o6199["Value"] = L0
    CallFunction(o6192, "ProcesseStateChange")
  end
end }
o6200 = { [nil] = {}, GetCalculated = function()
  if not (o5951.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6200.SetStateValue(o6200.GetCalculated())
end, StartCalculate = function()
  o6200["Value"] = o6200.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6200.Value == L0) then
    DelayedFunction(5, o6200, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6200.Value == L0) then
    o6200["Value"] = L0
    CallFunction(o6192, "ProcesseStateChange")
  end
end }
o6208 = { [nil] = {}, Start = function()
  o6208["Value"] = False
  o5936.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6208.Value == L0) then
    o6208["Value"] = L0
    o5936.ReCalculate()
  end
end }
o6209 = { [nil] = {}, Start = function()
  o6209["Value"] = False
  o5937.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6209.Value == L0) then
    o6209["Value"] = L0
    o5937.ReCalculate()
  end
end }
o6210 = { [nil] = {}, Start = function()
  o6210["Value"] = False
  o5938.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6210.Value == L0) then
    o6210["Value"] = L0
    o5938.ReCalculate()
  end
end }
o6213 = { [nil] = {}, Start = function()
  o6213["Value"] = False
  o5939.StartCalculate()
  o5987.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6213.Value == L0) then
    o6213["Value"] = L0
    o5939.ReCalculate()
    o5987.ReCalculate()
  end
end }
o6225 = { [nil] = {}, Start = function()
  o6225["Value"] = False
  o5957.StartCalculate()
  o6867.StartCalculate()
  o6923.StartCalculate()
  o6979.StartCalculate()
  o7035.StartCalculate()
  o7091.StartCalculate()
  o7147.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6225.Value == L0) then
    o6225["Value"] = L0
    o5957.ReCalculate()
    o6867.ReCalculate()
    o6923.ReCalculate()
    o6979.ReCalculate()
    o7035.ReCalculate()
    o7091.ReCalculate()
    o7147.ReCalculate()
  end
end }
S_o6254 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6254, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6254, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6254, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/CrawlerByFinch_FollowArea", "E", "", "", "", 15, 0.25, "Code4")
  else
    CallFunction(o6254, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o6254, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o6269.SetStateValue(L1)
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
o6269 = { [nil] = {}, Start = function()
  o6269["Value"] = False
  o5934.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6269.Value == L0) then
    o6269["Value"] = L0
    o5934.ReCalculate()
  end
end }
S_o6310 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6310, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6310, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6310, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/CrawlerByFinch_FollowArea", "E", "", "", "", 15, 0.25, "Code4")
  else
    CallFunction(o6310, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o6310, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o6325.SetStateValue(L1)
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
o6325 = { [nil] = {}, Start = function()
  o6325["Value"] = False
  o5934.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6325.Value == L0) then
    o6325["Value"] = L0
    o5934.ReCalculate()
  end
end }
S_o6366 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o6192.Node)
  CallFunction(o6366, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6371 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6371, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6371, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6371, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 60, -5, 4)
  CallFunction(o6371, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 0, 1, "", "", "", "", "Code5")
  else
    CallFunction(o6371, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  SendRadioMessageTake(o5919.Node, o5919.Node, 70)
  Turret_SetAngleArea(L0.Node, 180, -50, 40)
  CallFunction(o6371, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 500, 500, "E", "", "", "", "Code8")
  else
    CallFunction(o6371, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_DestEmp = function(L0, L1)
  o6380.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6372.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6372 = { [nil] = {}, GetCalculated = function()
  if not (o5852.Value == True) then
    if not (o5858.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o6372.SetStateValue(o6372.GetCalculated())
end, StartCalculate = function()
  o6372["Value"] = o6372.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6372.Value == L0) then
    o6372["Value"] = L0
    CallFunction(o6371, "ProcesseStateChange")
  end
end }
o6380 = { [nil] = {}, Start = function()
  o6380["Value"] = False
  o5951.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6380.Value == L0) then
    o6380["Value"] = L0
    o5951.ReCalculate()
  end
end }
S_o6418 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6418, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6418, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6418, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 60, -5, 4)
  CallFunction(o6418, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 0, 1, "", "", "", "", "Code5")
  else
    CallFunction(o6418, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  SendRadioMessageTake(o5919.Node, o5919.Node, 70)
  Turret_SetAngleArea(L0.Node, 180, -50, 40)
  CallFunction(o6418, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 500, 500, "E", "", "", "", "Code8")
  else
    CallFunction(o6418, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_DestEmp = function(L0, L1)
  o6427.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6419.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6419 = { [nil] = {}, GetCalculated = function()
  if not (o5864.Value == True) then
    if not (o5870.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o6419.SetStateValue(o6419.GetCalculated())
end, StartCalculate = function()
  o6419["Value"] = o6419.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6419.Value == L0) then
    o6419["Value"] = L0
    CallFunction(o6418, "ProcesseStateChange")
  end
end }
o6427 = { [nil] = {}, Start = function()
  o6427["Value"] = False
  o5951.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6427.Value == L0) then
    o6427["Value"] = L0
    o5951.ReCalculate()
  end
end }
S_o6465 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6465, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6465, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6465, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 60, -5, 4)
  CallFunction(o6465, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 0, 1, "", "", "", "", "Code5")
  else
    CallFunction(o6465, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  SendRadioMessageTake(o5919.Node, o5919.Node, 70)
  Turret_SetAngleArea(L0.Node, 180, -50, 40)
  CallFunction(o6465, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 500, 500, "E", "", "", "", "Code8")
  else
    CallFunction(o6465, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_DestEmp = function(L0, L1)
  o6474.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6466.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6466 = { [nil] = {}, GetCalculated = function()
  if not (o5876.Value == True) then
    if not (o5882.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o6466.SetStateValue(o6466.GetCalculated())
end, StartCalculate = function()
  o6466["Value"] = o6466.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6466.Value == L0) then
    o6466["Value"] = L0
    CallFunction(o6465, "ProcesseStateChange")
  end
end }
o6474 = { [nil] = {}, Start = function()
  o6474["Value"] = False
  o5951.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6474.Value == L0) then
    o6474["Value"] = L0
    o5951.ReCalculate()
  end
end }
S_o6512 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o6512, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o6515.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6515 = { [nil] = {}, Start = function()
  o6515["Value"] = False
  o5941.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6515.Value == L0) then
    o6515["Value"] = L0
    o5941.ReCalculate()
  end
end }
S_o6517 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o6517, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o6520.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6520 = { [nil] = {}, Start = function()
  o6520["Value"] = False
  o5945.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6520.Value == L0) then
    o6520["Value"] = L0
    o5945.ReCalculate()
  end
end }
S_o6522 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o6522, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o6525.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6525 = { [nil] = {}, Start = function()
  o6525["Value"] = False
  o5947.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6525.Value == L0) then
    o6525["Value"] = L0
    o5947.ReCalculate()
  end
end }
S_o6527 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6527, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6527, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6527, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o6527, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.ComplexGotoAttack({ 2, { {}, "Goto", "/Scenario_Dynamic/Navigation/pir_tz_scout1_1_Path", 0.628872, 1 } }, "/Scenario_Dynamic/Navigation/PirateStation_Area", 300, "E", "", "", "", 5, 0.5, True, "Code5")
  else
    CallFunction(o6527, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.ComplexGotoAttack({ 0, { {}, "Goto", "/Scenario_Dynamic/Navigation/pir_tz_scout1_1_Path", 0.75, 1 } }, "/Scenario_Dynamic/Navigation/PirateStation_Area", 500, "player", "", "", "", 5, 0.5, True, "Code6")
  else
    CallFunction(o6527, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o6531.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o6543.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6528.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6528 = { [nil] = {}, GetCalculated = function()
  if not (o6531.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6528.SetStateValue(o6528.GetCalculated())
end, StartCalculate = function()
  o6528["Value"] = o6528.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6528.Value == L0) then
    o6528["Value"] = L0
    CallFunction(o6527, "ProcesseStateChange")
  end
end }
o6531 = { [nil] = {}, Start = function()
  o6531["Value"] = False
  o6528.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6531.Value == L0) then
    o6531["Value"] = L0
    o6528.ReCalculate()
  end
end }
o6543 = { [nil] = {}, Start = function()
  o6543["Value"] = False
  o5951.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6543.Value == L0) then
    o6543["Value"] = L0
    o5951.ReCalculate()
  end
end }
S_o6584 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6584, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6584, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6584, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o6584, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.ComplexGotoAttack({ 2, { {}, "Goto", "/Scenario_Dynamic/Navigation/pir_tz_scout1_2_Path", 0.468872, 1 } }, "/Scenario_Dynamic/Navigation/PirateStation_Area", 300, "E", "", "", "", 5, 0.5, True, "Code5")
  else
    CallFunction(o6584, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.ComplexGotoAttack({ 0, { {}, "Goto", "/Scenario_Dynamic/Navigation/pir_tz_scout1_2_Path", 0.75, 1 } }, "/Scenario_Dynamic/Navigation/PirateStation_Area", 500, "E", "", "", "", 5, 0.5, True, "Code6")
  else
    CallFunction(o6584, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o6588.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o6600.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6585.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6585 = { [nil] = {}, GetCalculated = function()
  if not (o6588.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6585.SetStateValue(o6585.GetCalculated())
end, StartCalculate = function()
  o6585["Value"] = o6585.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6585.Value == L0) then
    o6585["Value"] = L0
    CallFunction(o6584, "ProcesseStateChange")
  end
end }
o6588 = { [nil] = {}, Start = function()
  o6588["Value"] = False
  o6585.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6588.Value == L0) then
    o6588["Value"] = L0
    o6585.ReCalculate()
  end
end }
o6600 = { [nil] = {}, Start = function()
  o6600["Value"] = False
  o5951.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6600.Value == L0) then
    o6600["Value"] = L0
    o5951.ReCalculate()
  end
end }
S_o6641 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6641, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6641, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6641, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o6641, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.ComplexGotoAttack({ 2, { {}, "Goto", "/Scenario_Dynamic/Navigation/pir_tz_scout1_3_Path", 0.312148, 1 } }, "/Scenario_Dynamic/Navigation/PirateStation_Area", 300, "E", "", "", "", 5, 0.5, True, "Code5")
  else
    CallFunction(o6641, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.ComplexGotoAttack({ 0, { {}, "Goto", "/Scenario_Dynamic/Navigation/pir_tz_scout1_3_Path", 0.75, 1 } }, "/Scenario_Dynamic/Navigation/PirateStation_Area", 500, "E", "", "", "", 5, 0.5, True, "Code6")
  else
    CallFunction(o6641, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o6645.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o6657.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6642.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6642 = { [nil] = {}, GetCalculated = function()
  if not (o6645.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6642.SetStateValue(o6642.GetCalculated())
end, StartCalculate = function()
  o6642["Value"] = o6642.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6642.Value == L0) then
    o6642["Value"] = L0
    CallFunction(o6641, "ProcesseStateChange")
  end
end }
o6645 = { [nil] = {}, Start = function()
  o6645["Value"] = False
  o6642.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6645.Value == L0) then
    o6645["Value"] = L0
    o6642.ReCalculate()
  end
end }
o6657 = { [nil] = {}, Start = function()
  o6657["Value"] = False
  o5951.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6657.Value == L0) then
    o6657["Value"] = L0
    o5951.ReCalculate()
  end
end }
S_o6698 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6698, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6698, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6698, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetFriendlyFireMode(L0.Node, 0)
  CallFunction(o6698, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o6698, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/FreighterPath_1", 0.75, 1 } }("Code6")
  else
    CallFunction(o6698, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o6698, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o6703.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o6711.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6700.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6700 = { [nil] = {}, GetCalculated = function()
  if not (o5888.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6700.SetStateValue(o6700.GetCalculated())
end, StartCalculate = function()
  o6700["Value"] = o6700.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6700.Value == L0) then
    o6700["Value"] = L0
    CallFunction(o6698, "ProcesseStateChange")
  end
end }
o6703 = { [nil] = {}, Start = function()
  o6703["Value"] = False
  o5955.StartCalculate()
  o5956.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6703.Value == L0) then
    o6703["Value"] = L0
    o5955.ReCalculate()
    o5956.ReCalculate()
  end
end }
o6711 = { [nil] = {}, Start = function()
  o6711["Value"] = False
  o5955.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6711.Value == L0) then
    o6711["Value"] = L0
    o5955.ReCalculate()
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
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6754, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetObservedDestroyer(L0.Node, 1, o5919.Node)
  CallFunction(o6754, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav3_PatrolArea", "/Scenario_Dynamic/Navigation/Nav3_Trigger+FollowArea", "/Scenario_Dynamic/Navigation/Nav3_Trigger+FollowArea", "bonus_elfnote_des_1", "E", "", "", 0.25, "Code5")
  else
    CallFunction(o6754, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestroyedBy1 = function(L0, L1)
  o6775.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6756.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6756 = { [nil] = {}, GetCalculated = function()
  if not (o5944.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6756.SetStateValue(o6756.GetCalculated())
end, StartCalculate = function()
  o6756["Value"] = o6756.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6756.Value == L0) then
    DelayedFunction(20, o6756, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6756.Value == L0) then
    o6756["Value"] = L0
    CallFunction(o6754, "ProcesseStateChange")
  end
end }
o6775 = { [nil] = {}, Start = function()
  o6775["Value"] = False
  o5948.StartCalculate()
  o5949.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6775.Value == L0) then
    o6775["Value"] = L0
    o5948.ReCalculate()
    o5949.ReCalculate()
  end
end }
S_o6810 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6810, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6810, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6810, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetObservedDestroyer(L0.Node, 1, o5919.Node)
  CallFunction(o6810, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav3_PatrolArea", "/Scenario_Dynamic/Navigation/Nav3_Trigger+FollowArea", "/Scenario_Dynamic/Navigation/Nav3_Trigger+FollowArea", "bonus_elfnote_des_1", "E", "", "", 0.25, "Code5")
  else
    CallFunction(o6810, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestroyedBy1 = function(L0, L1)
  o6831.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6812.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6812 = { [nil] = {}, GetCalculated = function()
  if not (o5944.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6812.SetStateValue(o6812.GetCalculated())
end, StartCalculate = function()
  o6812["Value"] = o6812.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6812.Value == L0) then
    DelayedFunction(20, o6812, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6812.Value == L0) then
    o6812["Value"] = L0
    CallFunction(o6810, "ProcesseStateChange")
  end
end }
o6831 = { [nil] = {}, Start = function()
  o6831["Value"] = False
  o5948.StartCalculate()
  o5949.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6831.Value == L0) then
    o6831["Value"] = L0
    o5948.ReCalculate()
    o5949.ReCalculate()
  end
end }
S_o6866 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6866, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6866, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6866, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FinalBattle_PatrolArea", "/Scenario_Dynamic/Navigation/FinalBattle_TriggerArea", "/Scenario_Dynamic/Navigation/FinalBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o6866, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o6866, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o6881.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6868.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o6867.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6867 = { [nil] = {}, GetCalculated = function()
  if not (o6225.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6867.SetStateValue(o6867.GetCalculated())
end, StartCalculate = function()
  o6867["Value"] = o6867.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6867.Value == L0) then
    DelayedFunction(10, o6867, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6867.Value == L0) then
    o6867["Value"] = L0
    CallFunction(o6866, "ProcesseStateChange")
  end
end }
o6868 = { [nil] = {}, GetCalculated = function()
  if not (o5912.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6868.SetStateValue(o6868.GetCalculated())
end, StartCalculate = function()
  o6868["Value"] = o6868.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6868.Value == L0) then
    o6868["Value"] = L0
    CallFunction(o6866, "ProcesseStateChange")
  end
end }
o6881 = { [nil] = {}, Start = function()
  o6881["Value"] = False
  o5954.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6881.Value == L0) then
    o6881["Value"] = L0
    o5954.ReCalculate()
  end
end }
S_o6922 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6922, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6922, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6922, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FinalBattle_PatrolArea", "/Scenario_Dynamic/Navigation/FinalBattle_TriggerArea", "/Scenario_Dynamic/Navigation/FinalBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o6922, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o6922, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o6937.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6924.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o6923.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6923 = { [nil] = {}, GetCalculated = function()
  if not (o6225.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6923.SetStateValue(o6923.GetCalculated())
end, StartCalculate = function()
  o6923["Value"] = o6923.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6923.Value == L0) then
    DelayedFunction(10, o6923, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6923.Value == L0) then
    o6923["Value"] = L0
    CallFunction(o6922, "ProcesseStateChange")
  end
end }
o6924 = { [nil] = {}, GetCalculated = function()
  if not (o5912.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6924.SetStateValue(o6924.GetCalculated())
end, StartCalculate = function()
  o6924["Value"] = o6924.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6924.Value == L0) then
    o6924["Value"] = L0
    CallFunction(o6922, "ProcesseStateChange")
  end
end }
o6937 = { [nil] = {}, Start = function()
  o6937["Value"] = False
  o5954.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6937.Value == L0) then
    o6937["Value"] = L0
    o5954.ReCalculate()
  end
end }
S_o6978 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6978, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6978, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6978, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FinalBattle_PatrolArea", "/Scenario_Dynamic/Navigation/FinalBattle_TriggerArea", "/Scenario_Dynamic/Navigation/FinalBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o6978, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o6978, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o6993.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6980.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o6979.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6979 = { [nil] = {}, GetCalculated = function()
  if not (o6225.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6979.SetStateValue(o6979.GetCalculated())
end, StartCalculate = function()
  o6979["Value"] = o6979.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6979.Value == L0) then
    DelayedFunction(10, o6979, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6979.Value == L0) then
    o6979["Value"] = L0
    CallFunction(o6978, "ProcesseStateChange")
  end
end }
o6980 = { [nil] = {}, GetCalculated = function()
  if not (o5912.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6980.SetStateValue(o6980.GetCalculated())
end, StartCalculate = function()
  o6980["Value"] = o6980.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6980.Value == L0) then
    o6980["Value"] = L0
    CallFunction(o6978, "ProcesseStateChange")
  end
end }
o6993 = { [nil] = {}, Start = function()
  o6993["Value"] = False
  o5954.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6993.Value == L0) then
    o6993["Value"] = L0
    o5954.ReCalculate()
  end
end }
S_o7034 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7034, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7034, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7034, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FinalBattle_PatrolArea", "/Scenario_Dynamic/Navigation/FinalBattle_TriggerArea", "/Scenario_Dynamic/Navigation/FinalBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o7034, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o7034, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o7049.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7036.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o7035.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7035 = { [nil] = {}, GetCalculated = function()
  if not (o6225.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7035.SetStateValue(o7035.GetCalculated())
end, StartCalculate = function()
  o7035["Value"] = o7035.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7035.Value == L0) then
    DelayedFunction(10, o7035, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7035.Value == L0) then
    o7035["Value"] = L0
    CallFunction(o7034, "ProcesseStateChange")
  end
end }
o7036 = { [nil] = {}, GetCalculated = function()
  if not (o5912.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7036.SetStateValue(o7036.GetCalculated())
end, StartCalculate = function()
  o7036["Value"] = o7036.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7036.Value == L0) then
    o7036["Value"] = L0
    CallFunction(o7034, "ProcesseStateChange")
  end
end }
o7049 = { [nil] = {}, Start = function()
  o7049["Value"] = False
  o5954.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7049.Value == L0) then
    o7049["Value"] = L0
    o5954.ReCalculate()
  end
end }
S_o7090 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7090, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7090, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7090, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o7090, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FinalBattle_PatrolArea", "/Scenario_Dynamic/Navigation/FinalBattle_TriggerArea", "/Scenario_Dynamic/Navigation/FinalBattle_FollowArea", "harv", "", "", "", 1, "Code5")
  else
    CallFunction(o7090, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o7090, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o7105.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7092.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o7091.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7091 = { [nil] = {}, GetCalculated = function()
  if not (o6225.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7091.SetStateValue(o7091.GetCalculated())
end, StartCalculate = function()
  o7091["Value"] = o7091.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7091.Value == L0) then
    DelayedFunction(10, o7091, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7091.Value == L0) then
    o7091["Value"] = L0
    CallFunction(o7090, "ProcesseStateChange")
  end
end }
o7092 = { [nil] = {}, GetCalculated = function()
  if not (o5912.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7092.SetStateValue(o7092.GetCalculated())
end, StartCalculate = function()
  o7092["Value"] = o7092.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7092.Value == L0) then
    o7092["Value"] = L0
    CallFunction(o7090, "ProcesseStateChange")
  end
end }
o7105 = { [nil] = {}, Start = function()
  o7105["Value"] = False
  o5954.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7105.Value == L0) then
    o7105["Value"] = L0
    o5954.ReCalculate()
  end
end }
S_o7146 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7146, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7146, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7146, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o7146, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FinalBattle_PatrolArea", "/Scenario_Dynamic/Navigation/FinalBattle_TriggerArea", "/Scenario_Dynamic/Navigation/FinalBattle_FollowArea", "harv", "player", "", "", 1, "Code5")
  else
    CallFunction(o7146, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o7146, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o7161.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7148.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o7147.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7147 = { [nil] = {}, GetCalculated = function()
  if not (o6225.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7147.SetStateValue(o7147.GetCalculated())
end, StartCalculate = function()
  o7147["Value"] = o7147.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7147.Value == L0) then
    DelayedFunction(10, o7147, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7147.Value == L0) then
    o7147["Value"] = L0
    CallFunction(o7146, "ProcesseStateChange")
  end
end }
o7148 = { [nil] = {}, GetCalculated = function()
  if not (o5912.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7148.SetStateValue(o7148.GetCalculated())
end, StartCalculate = function()
  o7148["Value"] = o7148.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7148.Value == L0) then
    o7148["Value"] = L0
    CallFunction(o7146, "ProcesseStateChange")
  end
end }
o7161 = { [nil] = {}, Start = function()
  o7161["Value"] = False
  o5954.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7161.Value == L0) then
    o7161["Value"] = L0
    o5954.ReCalculate()
  end
end }
S_o7202 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7202, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7202, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7202, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o7202, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7202, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o7202, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o7206.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o7203.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7203 = { [nil] = {}, GetCalculated = function()
  if not (o5944.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7203.SetStateValue(o7203.GetCalculated())
end, StartCalculate = function()
  o7203["Value"] = o7203.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7203.Value == L0) then
    DelayedFunction(90, o7203, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7203.Value == L0) then
    o7203["Value"] = L0
    CallFunction(o7202, "ProcesseStateChange")
  end
end }
o7206 = { [nil] = {}, Start = function()
  o7206["Value"] = False
  o5948.StartCalculate()
  o5949.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7206.Value == L0) then
    o7206["Value"] = L0
    o5948.ReCalculate()
    o5949.ReCalculate()
  end
end }
S_o7250 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7250, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7250, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7250, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/CrawlerWing_PatrolArea", "/Scenario_Dynamic/Navigation/CrawlerWing_TriggerArea", "/Scenario_Dynamic/Navigation/CrawlerWing_FollowArea", "E", "", "", "", 0.25, "Code4")
  else
    CallFunction(o7250, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o7265.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7252.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7252 = { [nil] = {}, GetCalculated = function()
  if not (o5940.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7252.SetStateValue(o7252.GetCalculated())
end, StartCalculate = function()
  o7252["Value"] = o7252.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7252.Value == L0) then
    DelayedFunction(1, o7252, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7252.Value == L0) then
    o7252["Value"] = L0
    CallFunction(o7250, "ProcesseStateChange")
  end
end }
o7265 = { [nil] = {}, Start = function()
  o7265["Value"] = False
  o5961.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7265.Value == L0) then
    o7265["Value"] = L0
    o5961.ReCalculate()
  end
end }
S_o7306 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7306, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7306, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7306, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/CrawlerWing_PatrolArea", "/Scenario_Dynamic/Navigation/CrawlerWing_TriggerArea", "/Scenario_Dynamic/Navigation/CrawlerWing_FollowArea", "E", "", "", "", 0.25, "Code4")
  else
    CallFunction(o7306, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o7321.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7308.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7308 = { [nil] = {}, GetCalculated = function()
  if not (o5940.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7308.SetStateValue(o7308.GetCalculated())
end, StartCalculate = function()
  o7308["Value"] = o7308.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7308.Value == L0) then
    DelayedFunction(1, o7308, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7308.Value == L0) then
    o7308["Value"] = L0
    CallFunction(o7306, "ProcesseStateChange")
  end
end }
o7321 = { [nil] = {}, Start = function()
  o7321["Value"] = False
  o5961.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7321.Value == L0) then
    o7321["Value"] = L0
    o5961.ReCalculate()
  end
end }
S_o7362 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7362, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7362, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7362, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/CrawlerWing_PatrolArea", "/Scenario_Dynamic/Navigation/CrawlerWing_TriggerArea", "/Scenario_Dynamic/Navigation/CrawlerWing_FollowArea", "E", "", "", "", 0.25, "Code4")
  else
    CallFunction(o7362, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o7377.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7364.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7364 = { [nil] = {}, GetCalculated = function()
  if not (o5940.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7364.SetStateValue(o7364.GetCalculated())
end, StartCalculate = function()
  o7364["Value"] = o7364.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7364.Value == L0) then
    DelayedFunction(1, o7364, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7364.Value == L0) then
    o7364["Value"] = L0
    CallFunction(o7362, "ProcesseStateChange")
  end
end }
o7377 = { [nil] = {}, Start = function()
  o7377["Value"] = False
  o5961.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7377.Value == L0) then
    o7377["Value"] = L0
    o5961.ReCalculate()
  end
end }
S_o7418 = { [nil] = {}, Start = function(L0)

end }
o7420 = FormationLib.CreateFormation("InverseTriangle", "", "", "", 35, 35)
S_o7421 = { [nil] = {}, Start = function(L0)

end }
S_o7422 = { [nil] = {}, Start = function(L0)

end }
S_o7423 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Track3")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o7423, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o7423, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/IngameScenes/Navigation/LookFrom_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0.75, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  FormationLib.PlaceFormationPath(o7419, o7420, "/IngameScenes/Navigation/PlayerPath_1")
  CallFunction(o7423, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o7419, o7420, "/IngameScenes/Navigation/PlayerPath_1", "pos_1", "pos_10", 1, 1, "Code10")
  else
    CallFunction(o7423, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Director_EndCutscene(L0.Node)
  CallFunction(o7423, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code12")
  else
    CallFunction(o7423, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  SED_SetTaskTextKey(2100, -1, -1)
  Game_SetWayPoint(GetGameNode(), o6366.Node)
  CallFunction(o7423, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 20, "Code15")
  else
    CallFunction(o7423, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  SendRadioMessageTake(o30.Node, o5919.Node, 40)
  SendRadioMessageTake(o6192.Node, o5919.Node, 41)
  CallFunction(o7423, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o7428 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code1")
  else
    CallFunction(o7428, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Camera_MoveTo(L0.Node, "/IngameScenes/Navigation/LookFrom_2", 15, "MMMN", 0)
  CallFunction(o7428, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o7431 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code1")
  else
    CallFunction(o7431, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o30.Node, o5919.Node, 38)
  CallFunction(o7431, "Code2")
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
  Game_LoadProgress_Enter(Node_Find("/"), 398)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "pla_harvester_1", S_o30)
  o76 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element07_1", S_o76)
  o122 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element06_1", S_o122)
  o168 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element06_2", S_o168)
  o214 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element06_raw_1", S_o214)
  o260 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element05_raw_1", S_o260)
  o306 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element05_raw_2", S_o306)
  o352 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element03_raw_1", S_o352)
  o398 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_docking_1", S_o398)
  o444 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_docking_2", S_o444)
  o490 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock3_1", S_o490)
  o536 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_raw1_1", S_o536)
  o582 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_raw1_5", S_o582)
  o628 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element03_raw_2", S_o628)
  o674 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element03_raw_3", S_o674)
  o720 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_1", S_o720)
  o766 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_2", S_o766)
  o812 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_3", S_o812)
  o858 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_4", S_o858)
  o904 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_1", S_o904)
  o950 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_2", S_o950)
  o996 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01_raw_1", S_o996)
  o1042 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01_raw_2", S_o1042)
  o1088 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01_raw_3", S_o1088)
  o1134 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_clunker1_1", S_o1134)
  o1180 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_clunker1_2", S_o1180)
  o1226 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_easy_1/Turm1", S_o1226)
  o1234.Start()
  o1272 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_easy_3/Turm1", S_o1272)
  o1280.Start()
  o1318 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torp_m_2/Turm1", S_o1318)
  o1326.Start()
  o1364 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element05_raw_01", S_o1364)
  o1410 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element03_raw_01", S_o1410)
  o1456 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_1", S_o1456)
  o1502 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_1", S_o1502)
  o1548 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_raw1_4", S_o1548)
  o1594 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_raw1_2", S_o1594)
  o1640 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_raw1_3", S_o1640)
  o1686 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_1", S_o1686)
  o1732 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_2", S_o1732)
  o1778 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_1", S_o1778)
  o1824 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_2", S_o1824)
  o1870 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_3", S_o1870)
  o1916 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_4", S_o1916)
  o1962 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_3", S_o1962)
  o2008 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_4", S_o2008)
  o2054 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_5", S_o2054)
  o2100 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_6", S_o2100)
  o2146 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_7", S_o2146)
  o2192 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_8", S_o2192)
  o2238 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_9", S_o2238)
  o2284 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock3_2", S_o2284)
  o2330 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element07_raw_1", S_o2330)
  o2376 = BindEasy(Node_Find("/Scenario_Static/Object"), "org_fungus_l_1", S_o2376)
  o2422 = BindEasy(Node_Find("/Scenario_Static/Object"), "org_fungus_m_1", S_o2422)
  o2468 = BindEasy(Node_Find("/Scenario_Static/Object"), "org_fungus_l_2", S_o2468)
  o2514 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_1", S_o2514)
  o2560 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_2", S_o2560)
  o2606 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_3", S_o2606)
  o2652 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_4", S_o2652)
  o2698 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_cave_01_1", S_o2698)
  o2744 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_edgering_1", S_o2744)
  o2790 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_1", S_o2790)
  o2836 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_3", S_o2836)
  o2882 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_4", S_o2882)
  o2928 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_1", S_o2928)
  o2974 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_2", S_o2974)
  o3020 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_1", S_o3020)
  o3066 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_1", S_o3066)
  o3112 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_2", S_o3112)
  o3158 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_2b", S_o3158)
  o3204 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_1", S_o3204)
  o3250 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_1", S_o3250)
  o3296 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_2b", S_o3296)
  o3342 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_1", S_o3342)
  o3388 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_1", S_o3388)
  o3434 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_1", S_o3434)
  o3480 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_5", S_o3480)
  o3526 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_3", S_o3526)
  o3572 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_2", S_o3572)
  o3618 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_2b", S_o3618)
  o3664 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_2", S_o3664)
  o3710 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_3", S_o3710)
  o3756 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_3b", S_o3756)
  o3802 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_3c", S_o3802)
  o3848 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_3d", S_o3848)
  o3894 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_5", S_o3894)
  o3940 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_2", S_o3940)
  o3986 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_2", S_o3986)
  o4032 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_2c", S_o4032)
  o4078 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_3", S_o4078)
  o4124 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_3b", S_o4124)
  o4170 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_2", S_o4170)
  o4216 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_edgering_2", S_o4216)
  o4262 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_6", S_o4262)
  o4308 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_6b", S_o4308)
  o4354 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_3", S_o4354)
  o4400 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_4", S_o4400)
  o4446 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_2", S_o4446)
  o4492 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_2b", S_o4492)
  o4538 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_2", S_o4538)
  o4584 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_4", S_o4584)
  o4630 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_4x", S_o4630)
  o4676 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_3", S_o4676)
  o4722 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_6", S_o4722)
  o4768 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_6", S_o4768)
  o4814 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_7", S_o4814)
  o4860 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_3", S_o4860)
  o4906 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_8", S_o4906)
  o4952 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_9", S_o4952)
  o4998 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_10", S_o4998)
  o5044 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_11", S_o5044)
  o5090 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_1x", S_o5090)
  o5136 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_7", S_o5136)
  o5182 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_7x", S_o5182)
  o5228 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_3", S_o5228)
  o5274 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_4", S_o5274)
  o5320 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_4", S_o5320)
  o5366 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_5", S_o5366)
  o5412 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_5", S_o5412)
  o5458 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_5", S_o5458)
  o5504 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_3", S_o5504)
  o5550 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_3c", S_o5550)
  o5596 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_8", S_o5596)
  o5642 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_4", S_o5642)
  o5688 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_1", S_o5688)
  o5734 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_1b", S_o5734)
  o5780 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_1", S_o5780)
  o5835 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Trigger_InvulTurnOff", S_o5835)
  o5840.Start()
  o5841 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Nav2_Trigger", S_o5841)
  o5846.Start()
  o5847 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Sniper1_TriggerVisibilityBlock", S_o5847)
  o5852.Start()
  o5853 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Sniper1_TriggerAcoustic", S_o5853)
  o5858.Start()
  o5859 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Sniper2_TriggerVisibilityBlock", S_o5859)
  o5864.Start()
  o5865 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Sniper2_TriggerAcoustic", S_o5865)
  o5870.Start()
  o5871 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Sniper3_TriggerVisibilityBlock", S_o5871)
  o5876.Start()
  o5877 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Sniper3_TriggerAcoustic", S_o5877)
  o5882.Start()
  o5883 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "FreighterStart_Trigger", S_o5883)
  o5888.Start()
  o5889 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Nav3_Trigger", S_o5889)
  o5894.Start()
  o5895 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Nav4_Trigger", S_o5895)
  o5900.Start()
  o5901 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "StationCleanUp_Trigger", S_o5901)
  o5906.Start()
  o5907 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Start_CrawlerAttack", S_o5907)
  o5912.Start()
  o5913 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "IntoCanyonMessage_Trigger", S_o5913)
  o5918.Start()
  o5919 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o5919)
  o5933.Start()
  o5944.Start()
  o5991 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_mayday_1", S_o5991)
  o6025.Start()
  o6061 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_angelina_1", S_o6061)
  o6096.Start()
  o6132 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_animal_1", S_o6132)
  o6156.Start()
  o6192 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mac_finch_1", S_o6192)
  o6208.Start()
  o6209.Start()
  o6210.Start()
  o6213.Start()
  o6225.Start()
  o6254 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_1", S_o6254)
  o6269.Start()
  o6310 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_2", S_o6310)
  o6325.Start()
  o6366 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_guard_1", S_o6366)
  o6371 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_sniper_1/Turm1", S_o6371)
  o6380.Start()
  o6418 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_sniper_2/Turm1", S_o6418)
  o6427.Start()
  o6465 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_sniper_3/Turm1", S_o6465)
  o6474.Start()
  o6512 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_2", S_o6512)
  o6515.Start()
  o6517 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_3", S_o6517)
  o6520.Start()
  o6522 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_4", S_o6522)
  o6525.Start()
  o6527 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout1_1", S_o6527)
  o6531.Start()
  o6543.Start()
  o6584 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout1_2", S_o6584)
  o6588.Start()
  o6600.Start()
  o6641 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout1_3", S_o6641)
  o6645.Start()
  o6657.Start()
  o6698 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_freighter_1", S_o6698)
  o6703.Start()
  o6711.Start()
  o6754 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout1_1_1", S_o6754)
  o6775.Start()
  o6810 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout1_1_2", S_o6810)
  o6831.Start()
  o6866 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_2_1", S_o6866)
  o6881.Start()
  o6922 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_2_2", S_o6922)
  o6937.Start()
  o6978 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_2_3", S_o6978)
  o6993.Start()
  o7034 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_2_4", S_o7034)
  o7049.Start()
  o7090 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_bomber_1", S_o7090)
  o7105.Start()
  o7146 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_bomber_2", S_o7146)
  o7161.Start()
  o7202 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bonus_elfnote_des_1", S_o7202)
  o7206.Start()
  o7250 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_wide_bonus_1", S_o7250)
  o7265.Start()
  o7306 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_wide_bonus_2", S_o7306)
  o7321.Start()
  o7362 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_bomber_wide_bonus_1", S_o7362)
  o7377.Start()
  o7418 = BindEasy(Node_Find("/"), "Camera", S_o7418)
  o7421 = BindEasy(Node_Find("/IngameScenes/Navigation"), "LookFrom_1", S_o7421)
  o7422 = BindEasy(Node_Find("/IngameScenes/Navigation"), "LookFrom_2", S_o7422)
  o7423 = BindEasy(Node_Find("/IngameScenes/Director"), "Intro", S_o7423)
  o7428 = BindEasy(Node_Find("/IngameScenes/Director"), "Intro_AddOn", S_o7428)
  o7431 = BindEasy(Node_Find("/IngameScenes/Director"), "Intro_Audio", S_o7431)
  o5826 = { {}, o5991, o6061 }()
  o5828 = { {}, o6192, o6061, o5991 }()
  o5830 = { {}, o6192, o6061, o5991 }()
  o7419 = { {}, o5919 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
