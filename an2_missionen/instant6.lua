-- dekompiliert aus instant6.sco
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
  Terrain_LoadTerrain(node1, "map/Instant6/terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/Instant6/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/Instant6/Lmsh/", "map/Instant6/Ltex/")
  Game_SetTerrainDepth(node0, 5461)
  Game_SetDecompressionHeight(node0, 175)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.058824, 0.058824, 0.043137)
  Game_SetParallelLightT(node0, 0.117647, 0.117647, 0.082353)
  Game_SetParallelLightB(node0, 0.058824, 0.058824, 0.043137)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_instant6.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_1H3.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient2.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_unhancy3.sam", 1)
  Game_SetNPCHitFactor(node0, 0.6)
  Game_SetEnvironmentCubeMap(node0, "map/Instant6/CubeMap/envcubemap.dds")
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
  node8 = Node_CreateNode("nod_generic", "tz_element07_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(1062.349171, 3483.828436, 69.292353), MAT_Vector3(39.397785, 2.271018, 0.566256))
  Node_ParseIniFile(node8, "osd/tz/tz_element07.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "tz_element06_1")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(1057.386545, 3041.740093, 61.62265), MAT_Vector3(-2.157312, 2.826385, -0.016979))
  Node_ParseIniFile(node9, "osd/tz/tz_element06.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "tz_element05_raw_1")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(749.165543, 3245.268381, 47.684219), MAT_Vector3(-114.677916, 26.900935, -0.834506))
  Node_ParseIniFile(node10, "osd/tz/tz_element05_raw.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "tz_element05_raw_2")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(1213.526898, 3360.646641, 32.374616), MAT_Vector3(-49.626255, -10.021244, -3.401758))
  Node_ParseIniFile(node11, "osd/tz/tz_element05_raw.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "tz_element03_raw_1")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(1068.943552, 3249.18801, 34.636381), MAT_Vector3(144.909963, -11.070154, 7.609797))
  Node_ParseIniFile(node12, "osd/tz/tz_element03_raw.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "gen_shelter_docking_1")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(1274.965944, 3466.186699, 33.752817), MAT_Vector3(43.536187, -10.110548, -6.199726))
  Node_ParseIniFile(node13, "osd/gen/gen_shelter_docking.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "gen_metalblock3_1")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(868.010592, 3248.195697, 25.279167), MAT_Vector3(45.784547, -7.15397, -7.6213))
  Node_ParseIniFile(node14, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "tz_element04_raw1_1")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(1277.254665, 3305.458781, -35.00828), MAT_Vector3(-116.105085, -56.122226, -35.288809))
  Node_ParseIniFile(node15, "osd/tz/tz_element04_raw1.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "tz_element03_raw_2")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(1256.922542, 3837.4713, 95.882435), MAT_Vector3(-175.008523, 68.394865, -135.557681))
  Node_ParseIniFile(node16, "osd/tz/tz_element03_raw.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "gen_rohr_big02_1")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(1246.789386, 3697.250158, 51.701446), MAT_Vector3(-47.62044, 0, 0))
  Node_ParseIniFile(node17, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "gen_rohr_big02_2")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(1029.384951, 3297.389671, 31.242759), MAT_Vector3(-140.265285, -25.305812, 3.454818))
  Node_ParseIniFile(node18, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "gen_rohr_big02_3")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(1179.376919, 3317.503554, 35.174195), MAT_Vector3(-43.347074, -7.097379, 33.82947))
  Node_ParseIniFile(node19, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "gen_rohr_small02_1")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(790.322338, 3249.633755, 50.597312), MAT_Vector3(-44.386493, 0, 0))
  Node_ParseIniFile(node20, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "gen_rohr_small02_2")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(783.46099, 3225.871694, 54.752306), MAT_Vector3(-44.38649, 0, 0))
  Node_ParseIniFile(node21, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "tz_element01_raw_1")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(1498.831, 3571.103, 54.22537), MAT_Vector3(11.38169, -15.39527, -7.143177))
  Node_ParseIniFile(node22, "osd/tz/tz_element01_raw.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "gen_clunker1_1")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(1118.977201, 3121.465213, 41.775108), MAT_Vector3(-91.628247, 0, 0))
  Node_ParseIniFile(node23, "osd/gen/gen_clunker1.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_turret", "gen_turret_easy_1")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(940.947337, 3204.281373, 100.084167), MAT_Vector3(92.480511, 0, 0))
  Node_ParseIniFile(node24, "osd/gen/gen_turret_easy.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_turret", "gen_turret_easy_2")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(1283.368124, 3112.429058, 107.112206), MAT_Vector3(45.139566, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_turret_easy.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_turret", "gen_turret_easy_3")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(1321.921232, 3567.449553, 76.613736), MAT_Vector3(179.840012, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_turret_easy.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_turret", "gen_torp_m_2")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(1189.097184, 3229.878031, 70.532975), MAT_Vector3(137.592258, 0, 0))
  Node_ParseIniFile(node27, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "tz_element05_raw_01")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(468.459207, 1997.719714, 58.88077), MAT_Vector3(-21.488015, 6.545369, 14.074421))
  Node_ParseIniFile(node28, "osd/tz/tz_element05_raw.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "tz_element03_raw_01")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(591.993954, 2274.686612, 30.872769), MAT_Vector3(136.40679, -11.861245, 9.942766))
  Node_ParseIniFile(node29, "osd/tz/tz_element03_raw.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "gen_shelter_1")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(503.4583, 2138.277, 62.22796), MAT_Vector3(-21.91174, 1.71402, 19.16582))
  Node_ParseIniFile(node30, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "gen_quay_1")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(605.4545, 2107.131, 47.35833), MAT_Vector3(-33.48457, 1.712247, -24.00822))
  Node_ParseIniFile(node31, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "gen_quay_2")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(1047.746932, 1313.412305, 30.673482), MAT_Vector3(-7.186366, 0.73655, 10.144947))
  Node_ParseIniFile(node32, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_turret_socket_1")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(1042.963, 1246.625, 50), MAT_Vector3(-7, 0.73655, 10.14495))
  Node_ParseIniFile(node33, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "gen_turret_socket_2")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(1057.792, 1367.217, 50), MAT_Vector3(-106.1369, -9.479854, 5.51602))
  Node_ParseIniFile(node34, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "tz_element01_raw_2")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(1139.959, 816.9747, 34.06203), MAT_Vector3(-91.70433, -77.11436, -69.97435))
  Node_ParseIniFile(node35, "osd/tz/tz_element01_raw.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "tz_element04_raw1_4")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(737.0326, 3104.079, -54.82927), MAT_Vector3(-77.00844, -9.034768, 2.200659))
  Node_ParseIniFile(node36, "osd/tz/tz_element04_raw1.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "tz_element06_raw_1")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(1337.901, 2041.931, 14.6288), MAT_Vector3(34.81195, -29.09691, -3.908072))
  Node_ParseIniFile(node37, "osd/tz/tz_element06_raw.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "tz_element04_raw1_2")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(1519.445, 2060.004, -89.14636), MAT_Vector3(-50.21742, -0.009049, -11.92815))
  Node_ParseIniFile(node38, "osd/tz/tz_element04_raw1.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "tz_element04_raw1_3")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(509.4155, 2127.006, -43.70261), MAT_Vector3(-0.79307, 37.93532, -11.38578))
  Node_ParseIniFile(node39, "osd/tz/tz_element04_raw1.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_rohr_small01_1")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(3192.201664, 363.664745, 22.418617), MAT_Vector3(1.303943, -10.169358, -1.09006))
  Node_ParseIniFile(node40, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_rohr_small01_2")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(3148.737128, 257.698876, 22.41862), MAT_Vector3(135.281338, -10.16936, -1.09006))
  Node_ParseIniFile(node41, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_elfnote_1")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(3065.940516, 2133.465862, 26.56697), MAT_Vector3(21.60955, 0.072632, 2.850257))
  Node_ParseIniFile(node42, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_elfnote_2")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(2372.064677, 2946.223232, 6.486128), MAT_Vector3(-41.494402, 0.072632, 2.850257))
  Node_ParseIniFile(node43, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_elfnote_3")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(3140.583493, 3492.184101, 17.622077), MAT_Vector3(-27.913067, 8.711612, 0.610792))
  Node_ParseIniFile(node44, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_elfnote_4")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(1236.376468, 3236.036607, 40.004275), MAT_Vector3(31.078949, 10.828079, -1.117852))
  Node_ParseIniFile(node45, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_rohr_small01_3")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(3065.424381, 2081.348564, 24.922954), MAT_Vector3(179.874747, -6.280049, -1.03291))
  Node_ParseIniFile(node46, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "gen_rohr_small01_4")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(3027.092085, 2174.520171, 21.208679), MAT_Vector3(40.515149, -4.934848, 0.273433))
  Node_ParseIniFile(node47, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "gen_rohr_small01_5")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(2397.594194, 2898.392588, 6.278806), MAT_Vector3(-151.070563, -4.934848, 0.273433))
  Node_ParseIniFile(node48, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "gen_rohr_small01_6")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(2322.198779, 2962.960184, 1.302182), MAT_Vector3(69.82624, -4.934848, 0.273433))
  Node_ParseIniFile(node49, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "gen_rohr_small01_7")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(2417.528084, 2973.150776, 4.947689), MAT_Vector3(-56.57965, -8.452309, -0.636026))
  Node_ParseIniFile(node50, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_rohr_small01_8")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(3099.498751, 3456.709837, 7.829935), MAT_Vector3(133.167294, -8.452309, -0.636026))
  Node_ParseIniFile(node51, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "gen_rohr_small01_9")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(3150.421691, 3549.322146, 8.616002), MAT_Vector3(-7.288488, -8.452309, -0.636026))
  Node_ParseIniFile(node52, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_metalblock3_2")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(1148.127327, 217.145805, 93.196931), MAT_Vector3(15.142184, 1.440914, 6.208244))
  Node_ParseIniFile(node53, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "tz_element07_raw_1")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(1024.603757, 540.115292, 34.368458), MAT_Vector3(-60.092327, 14.445861, 1.771291))
  Node_ParseIniFile(node54, "osd/tz/tz_element07_raw.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "tz_element01_raw_3")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(972.7498, 2218.017, -0.962365), MAT_Vector3(-143.075, 23.51007, -4.031656))
  Node_ParseIniFile(node55, "osd/tz/tz_element01_raw.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("NOD_Directory", "TerrainObjects_Directory")
  Node_AddSon(node7, node56)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "ter_bridgering_l_1")
  Node_AddSon(node56, node57)
  Body_SetCS(node57, MAT_Vector3(2578.701, 306.2147, 62.5853), MAT_Vector3(-38.35145, 0, 0))
  Node_ParseIniFile(node57, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node57, 5)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "ter_bridgering_l_2")
  Node_AddSon(node56, node58)
  Body_SetCS(node58, MAT_Vector3(3156.113, 680.3297, 42.18265), MAT_Vector3(-17.00954, 0, 0))
  Node_ParseIniFile(node58, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node58, 5)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "ter_bridgering_l_3")
  Node_AddSon(node56, node59)
  Body_SetCS(node59, MAT_Vector3(3009.135, 537.4057, 85.10067), MAT_Vector3(-110.7489, 10.06964, -1.35361))
  Node_ParseIniFile(node59, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node59, 5)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "ter_bridgering_l_4")
  Node_AddSon(node56, node60)
  Body_SetCS(node60, MAT_Vector3(3659.694, 1496.538, 101.736), MAT_Vector3(-126.9622, 4.099143, 5.485582))
  Node_ParseIniFile(node60, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node60, 5)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "ter_cave_01_1")
  Node_AddSon(node56, node61)
  Body_SetCS(node61, MAT_Vector3(3172.054, 732.8776, 24.222), MAT_Vector3(-15.37862, 0, 0))
  Node_ParseIniFile(node61, "osd/ter/ter_cave_01.osd")
  Body_SetFriendOrFoeID(node61, 5)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "ter_edgering_1")
  Node_AddSon(node56, node62)
  Body_SetCS(node62, MAT_Vector3(2529.651, 487.9076, 101.9315), MAT_Vector3(123.5831, 0, 0))
  Node_ParseIniFile(node62, "osd/ter/ter_edgering.osd")
  Body_SetFriendOrFoeID(node62, 5)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "ter_megalith_m_02_1")
  Node_AddSon(node56, node63)
  Body_SetCS(node63, MAT_Vector3(2512.168, 156.2372, 23.8085), MAT_Vector3(-123.5018, 5.668256, -8.979532))
  Node_ParseIniFile(node63, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node63, 5)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "ter_megalith_m_02_3")
  Node_AddSon(node56, node64)
  Body_SetCS(node64, MAT_Vector3(2675.278, 611.2233, 25.27497), MAT_Vector3(-57.39799, -1.376039, 1.99257))
  Node_ParseIniFile(node64, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node64, 5)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "ter_megalith_m_02_4")
  Node_AddSon(node56, node65)
  Body_SetCS(node65, MAT_Vector3(3251.231, 488.6149, 21.09725), MAT_Vector3(171.9857, -9.206929, 7.818024))
  Node_ParseIniFile(node65, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node65, 5)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "ter_megalith_l_01_1")
  Node_AddSon(node56, node66)
  Body_SetCS(node66, MAT_Vector3(2773.703, 417.1846, 23.62758), MAT_Vector3(7.808427, 6.681265, 10.79672))
  Node_ParseIniFile(node66, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node66, 5)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "ter_megalith_l_01_2")
  Node_AddSon(node56, node67)
  Body_SetCS(node67, MAT_Vector3(3376.67, 356.9629, 6.730291), MAT_Vector3(-120.7377, 24.81371, -31.65494))
  Node_ParseIniFile(node67, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node67, 5)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "ter_megalith_l_03_1")
  Node_AddSon(node56, node68)
  Body_SetCS(node68, MAT_Vector3(3040.897, 769.6472, 47.61651), MAT_Vector3(-1.888965, -16.9913, 6.519952))
  Node_ParseIniFile(node68, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node68, 5)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "ter_megalith_l_02_1")
  Node_AddSon(node56, node69)
  Body_SetCS(node69, MAT_Vector3(2439.645, 396.9971, 154.5529), MAT_Vector3(-54.24547, 72.88039, 78.52825))
  Node_ParseIniFile(node69, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node69, 5)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "ter_megalith_m_02_2")
  Node_AddSon(node56, node70)
  Body_SetCS(node70, MAT_Vector3(2853.792, 588.4131, 29.85629), MAT_Vector3(-67.58916, 1.887418, 3.628257))
  Node_ParseIniFile(node70, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node70, 5)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1")
  Node_AddSon(node56, node71)
  Body_SetCS(node71, MAT_Vector3(2602.71, 436.9482, 22.26472), MAT_Vector3(-36.21241, 4.235344, 7.689704))
  Node_ParseIniFile(node71, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node71, 5)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "ter_megalith_s_02_1")
  Node_AddSon(node56, node72)
  Body_SetCS(node72, MAT_Vector3(2768.536, 704.202, 20.79825), MAT_Vector3(-12.05438, -6.20578, -16.74961))
  Node_ParseIniFile(node72, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node72, 5)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1")
  Node_AddSon(node56, node73)
  Body_SetCS(node73, MAT_Vector3(2768.243, 482.1327, 9.657894), MAT_Vector3(-13.25897, -1.602813, -23.53081))
  Node_ParseIniFile(node73, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node73, 5)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "ter_megalith_m_01_1")
  Node_AddSon(node56, node74)
  Body_SetCS(node74, MAT_Vector3(2690.589, 309.4483, 31.31785), MAT_Vector3(89.08633, -6.062672, -0.248389))
  Node_ParseIniFile(node74, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node74, 5)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "ter_rock_l_01_1")
  Node_AddSon(node56, node75)
  Body_SetCS(node75, MAT_Vector3(2619.699, 539.8775, 19.29303), MAT_Vector3(-79.49258, -17.54049, 9.821628))
  Node_ParseIniFile(node75, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node75, 5)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "ter_bridgering_l_5")
  Node_AddSon(node56, node76)
  Body_SetCS(node76, MAT_Vector3(1744.921876, 390.870168, 5.872769), MAT_Vector3(-59.258257, 0, 0))
  Node_ParseIniFile(node76, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "ter_megalith_l_01_3")
  Node_AddSon(node56, node77)
  Body_SetCS(node77, MAT_Vector3(1170.410785, 272.130222, 68.89988), MAT_Vector3(-157.602243, 48.514787, -70.633058))
  Node_ParseIniFile(node77, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "ter_megalith_l_03_2")
  Node_AddSon(node56, node78)
  Body_SetCS(node78, MAT_Vector3(903.102261, 1210.478736, 31.132035), MAT_Vector3(72.699223, -2.095241, -1.849862))
  Node_ParseIniFile(node78, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "ter_megalith_s_03_2")
  Node_AddSon(node56, node79)
  Body_SetCS(node79, MAT_Vector3(945.578849, 1194.798098, 59.310269), MAT_Vector3(3.196789, 0.889336, 4.429496))
  Node_ParseIniFile(node79, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "ter_megalith_m_02_5")
  Node_AddSon(node56, node80)
  Body_SetCS(node80, MAT_Vector3(915.172612, 1296.94216, 56.098686), MAT_Vector3(-89.293268, 0.361275, 1.957227))
  Node_ParseIniFile(node80, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_generic", "ter_megalith_m_01_2")
  Node_AddSon(node56, node81)
  Body_SetCS(node81, MAT_Vector3(939.186771, 1244.110838, 56.493664), MAT_Vector3(106.999829, -6.440385, 3.615283))
  Node_ParseIniFile(node81, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_generic", "ter_rock_l_01_2")
  Node_AddSon(node56, node82)
  Body_SetCS(node82, MAT_Vector3(1854.510314, 1013.718767, 3.155477), MAT_Vector3(-110.825896, -6.250016, 1.547233))
  Node_ParseIniFile(node82, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node82, 5)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_generic", "ter_megalith_l_02_2")
  Node_AddSon(node56, node83)
  Body_SetCS(node83, MAT_Vector3(2008.800264, 1007.625663, 103.31595), MAT_Vector3(-20.558465, -68.992484, -56.821678))
  Node_ParseIniFile(node83, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_generic", "ter_edgering_2")
  Node_AddSon(node56, node84)
  Body_SetCS(node84, MAT_Vector3(1784.666875, 956.397056, 19.174704), MAT_Vector3(81.226048, 0, 0))
  Node_ParseIniFile(node84, "osd/ter/ter_edgering.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_generic", "ter_megalith_m_02_6")
  Node_AddSon(node56, node85)
  Body_SetCS(node85, MAT_Vector3(2012.694025, 1280.740967, 22.194919), MAT_Vector3(94.271896, 1.795853, 2.28657))
  Node_ParseIniFile(node85, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "ter_megalith_m_01_3")
  Node_AddSon(node56, node86)
  Body_SetCS(node86, MAT_Vector3(1991.437309, 1192.171317, 10.22355), MAT_Vector3(84.289752, 4.139487, -1.707125))
  Node_ParseIniFile(node86, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "ter_megalith_s_01_2")
  Node_AddSon(node56, node87)
  Body_SetCS(node87, MAT_Vector3(2026.865169, 1231.141963, 18.986501), MAT_Vector3(6.285811, -2.254041, -4.186695))
  Node_ParseIniFile(node87, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "ter_megalith_s_02_2")
  Node_AddSon(node56, node88)
  Body_SetCS(node88, MAT_Vector3(2016.236811, 1268.931681, 22.491681), MAT_Vector3(26.357467, -0.711473, -1.444589))
  Node_ParseIniFile(node88, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "ter_megalith_l_01_4")
  Node_AddSon(node56, node89)
  Body_SetCS(node89, MAT_Vector3(2055.166337, 1270.127972, 16.775343), MAT_Vector3(40.508229, 5.830343, 2.138519))
  Node_ParseIniFile(node89, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_generic", "ter_megalith_l_01_5")
  Node_AddSon(node56, node90)
  Body_SetCS(node90, MAT_Vector3(1938.254061, 959.543759, 116.228864), MAT_Vector3(-85.323291, 69.517002, -43.83433))
  Node_ParseIniFile(node90, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node90, 0)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_generic", "ter_megalith_l_03_3")
  Node_AddSon(node56, node91)
  Body_SetCS(node91, MAT_Vector3(1835.656527, 1127.110969, 9.166204), MAT_Vector3(159.515544, -64.947346, -68.705323))
  Node_ParseIniFile(node91, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node91, 0)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_generic", "ter_bridgering_l_6")
  Node_AddSon(node56, node92)
  Body_SetCS(node92, MAT_Vector3(1764.152847, 928.787841, 23.204226), MAT_Vector3(-59.25826, 0, 0))
  Node_ParseIniFile(node92, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node92, 0)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "ter_megalith_l_01_6")
  Node_AddSon(node56, node93)
  Body_SetCS(node93, MAT_Vector3(614.058013, 1719.867223, 136.79235), MAT_Vector3(50.710496, -21.13111, -69.460121))
  Node_ParseIniFile(node93, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node93, 0)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_generic", "ter_bridgering_l_7")
  Node_AddSon(node56, node94)
  Body_SetCS(node94, MAT_Vector3(829.714776, 2218.808671, 60.636918), MAT_Vector3(-101.812263, 0, 0))
  Node_ParseIniFile(node94, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node94, 0)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_generic", "ter_megalith_l_02_3")
  Node_AddSon(node56, node95)
  Body_SetCS(node95, MAT_Vector3(904.049759, 2282.144757, 151.436018), MAT_Vector3(-88.395699, 72.88039, 78.52825))
  Node_ParseIniFile(node95, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node95, 5)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_generic", "ter_bridgering_l_8")
  Node_AddSon(node56, node96)
  Body_SetCS(node96, MAT_Vector3(859.418, 2793.811, 76.38605), MAT_Vector3(-126.9393, 0, 0))
  Node_ParseIniFile(node96, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node96, 0)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_generic", "ter_bridgering_l_9")
  Node_AddSon(node56, node97)
  Body_SetCS(node97, MAT_Vector3(748.047873, 2830.1913, 80.416917), MAT_Vector3(78.190995, 0, 0))
  Node_ParseIniFile(node97, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node97, 0)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_generic", "ter_bridgering_l_10")
  Node_AddSon(node56, node98)
  Body_SetCS(node98, MAT_Vector3(585.319482, 3106.25181, 96.943474), MAT_Vector3(-78.315298, 0, 0))
  Node_ParseIniFile(node98, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node98, 0)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_generic", "ter_bridgering_l_11")
  Node_AddSon(node56, node99)
  Body_SetCS(node99, MAT_Vector3(572.566907, 2865.494844, 45.348376), MAT_Vector3(-97.968222, 0, 0))
  Node_ParseIniFile(node99, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node99, 0)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_fx_rays", "fx_rays_1H3_1")
  Node_AddSon(node7, node100)
  Node_ParseIniFile(node100, "osd/fx_rays/fx_rays_1H3.osd")
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_fx_sky", "fx_sky_1H3_1")
  Node_AddSon(node7, node101)
  Node_ParseIniFile(node101, "osd/fx_sky/fx_sky_1H3.osd")
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_fx_flare", "fx_flare_1H3_1")
  Node_AddSon(node7, node102)
  Node_ParseIniFile(node102, "osd/fx_flare/fx_flare_1H3.osd")
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_fx_plankton", "fx_plankton_tz_d_1")
  Node_AddSon(node7, node103)
  Node_ParseIniFile(node103, "osd/fx_plankton/fx_plankton_tz_d.osd")
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node7, node104)
  Node_ParseIniFile(node104, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node104, "map/Instant6/terrain/org_grass_s.tga")
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_fx_plant", "org_grass_l_1")
  Node_AddSon(node7, node105)
  Node_ParseIniFile(node105, "osd/fx_plant/org_grass_l.osd")
  FX_Plant_SetMap(node105, "map/Instant6/terrain/org_grass_l.tga")
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_fx_plant", "org_shells_1")
  Node_AddSon(node7, node106)
  Node_ParseIniFile(node106, "osd/fx_plant/org_shells.osd")
  FX_Plant_SetMap(node106, "map/Instant6/terrain/org_shells.tga")
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node107)
  Node_ParseIniFile(node107, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node107, "map/Instant6/terrain/org_stone_s.tga")
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node7, node108)
  Node_ParseIniFile(node108, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node108, "map/Instant6/terrain/org_stone_l.tga")
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node109)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node109, node110)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node109, node111)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("NOD_Path", "pir_tz_scout1_1_Path")
  Node_AddSon(node111, node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node112, node113)
  Position_SetPosition(node113, MAT_Vector3(881.750896, 3172.052262, 105))
  Position_SetRadius(node113, 5)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node112, node114)
  Position_SetPosition(node114, MAT_Vector3(850.71756, 3202.499805, 105))
  Position_SetRadius(node114, 5)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node112, node115)
  Position_SetPosition(node115, MAT_Vector3(884.093079, 3247.000638, 105))
  Position_SetRadius(node115, 5)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node112, node116)
  Position_SetPosition(node116, MAT_Vector3(957.742984, 3309.278958, 105))
  Position_SetRadius(node116, 5)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node112, node117)
  Position_SetPosition(node117, MAT_Vector3(1056.889634, 3318.212718, 105))
  Position_SetRadius(node117, 5)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node112, node118)
  Position_SetPosition(node118, MAT_Vector3(1144.704647, 3267.688844, 105))
  Position_SetRadius(node118, 5)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node112, node119)
  Position_SetPosition(node119, MAT_Vector3(1156.733955, 3209.947496, 105))
  Position_SetRadius(node119, 5)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node112, node120)
  Position_SetPosition(node120, MAT_Vector3(997.945661, 3143.785554, 105))
  Position_SetRadius(node120, 5)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node112, node121)
  Position_SetPosition(node121, MAT_Vector3(913.739763, 3142.583058, 105))
  Position_SetRadius(node121, 5)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("NOD_Path", "pir_tz_scout1_2_Path")
  Node_AddSon(node111, node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node122, node123)
  Position_SetPosition(node123, MAT_Vector3(1322.035728, 3306.373763, 100))
  Position_SetRadius(node123, 5)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node122, node124)
  Position_SetPosition(node124, MAT_Vector3(1274.197945, 3382.747036, 100))
  Position_SetRadius(node124, 5)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node122, node125)
  Position_SetPosition(node125, MAT_Vector3(1207.377272, 3456.9648, 100))
  Position_SetRadius(node125, 5)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node122, node126)
  Position_SetPosition(node126, MAT_Vector3(1204.859208, 3503.124527, 100))
  Position_SetRadius(node126, 5)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node122, node127)
  Position_SetPosition(node127, MAT_Vector3(1240.947358, 3535.856301, 100))
  Position_SetRadius(node127, 5)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node122, node128)
  Position_SetPosition(node128, MAT_Vector3(1291.303037, 3540.052359, 100))
  Position_SetRadius(node128, 5)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node122, node129)
  Position_SetPosition(node129, MAT_Vector3(1458.316562, 3351.217571, 100))
  Position_SetRadius(node129, 5)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node122, node130)
  Position_SetPosition(node130, MAT_Vector3(1458.317, 3267.291587, 100))
  Position_SetRadius(node130, 5)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node122, node131)
  Position_SetPosition(node131, MAT_Vector3(1417.193058, 3240.435548, 100))
  Position_SetRadius(node131, 5)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node122, node132)
  Position_SetPosition(node132, MAT_Vector3(1361.801567, 3259.739075, 100))
  Position_SetRadius(node132, 5)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("NOD_Path", "pir_tz_scout1_3_Path")
  Node_AddSon(node111, node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node133, node134)
  Position_SetPosition(node134, MAT_Vector3(1409.380645, 3529.004986, 140))
  Position_SetRadius(node134, 5)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node133, node135)
  Position_SetPosition(node135, MAT_Vector3(1409.381, 3442.560795, 140))
  Position_SetRadius(node135, 5)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node133, node136)
  Position_SetPosition(node136, MAT_Vector3(1305.312248, 3354.438266, 140))
  Position_SetRadius(node136, 5)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node133, node137)
  Position_SetPosition(node137, MAT_Vector3(1230.617493, 3435.846621, 140))
  Position_SetRadius(node137, 5)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node133, node138)
  Position_SetPosition(node138, MAT_Vector3(1158.47466, 3510.868926, 140))
  Position_SetRadius(node138, 5)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node133, node139)
  Position_SetPosition(node139, MAT_Vector3(1213.253293, 3549.99716, 140))
  Position_SetRadius(node139, 5)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node133, node140)
  Position_SetPosition(node140, MAT_Vector3(1280.39413, 3602.87064, 140))
  Position_SetRadius(node140, 5)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node133, node141)
  Position_SetPosition(node141, MAT_Vector3(1352.570715, 3629.727452, 140))
  Position_SetRadius(node141, 5)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node133, node142)
  Position_SetPosition(node142, MAT_Vector3(1410.480225, 3594.477907, 140))
  Position_SetRadius(node142, 5)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Path", "pir_tz_scout1_4_Path")
  Node_AddSon(node111, node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node143, node144)
  Position_SetPosition(node144, MAT_Vector3(1207.972934, 3198.026232, 125))
  Position_SetRadius(node144, 5)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node143, node145)
  Position_SetPosition(node145, MAT_Vector3(1303.649111, 3287.827262, 125))
  Position_SetRadius(node145, 5)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node143, node146)
  Position_SetPosition(node146, MAT_Vector3(1343.094414, 3248.381586, 125))
  Position_SetRadius(node146, 5)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node143, node147)
  Position_SetPosition(node147, MAT_Vector3(1322.951661, 3187.115719, 125))
  Position_SetRadius(node147, 5)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node143, node148)
  Position_SetPosition(node148, MAT_Vector3(1272.596152, 3127.528247, 125))
  Position_SetRadius(node148, 5)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node143, node149)
  Position_SetPosition(node149, MAT_Vector3(1173.562833, 3073.815096, 125))
  Position_SetRadius(node149, 5)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node143, node150)
  Position_SetPosition(node150, MAT_Vector3(1034.245155, 3077.172057, 125))
  Position_SetRadius(node150, 5)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node143, node151)
  Position_SetPosition(node151, MAT_Vector3(1034.245, 3176.205167, 125))
  Position_SetRadius(node151, 5)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node143, node152)
  Position_SetPosition(node152, MAT_Vector3(1176.080638, 3185.436905, 125))
  Position_SetRadius(node152, 5)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_PatrolArea", "PirateStation_Area")
  Node_AddSon(node111, node153)
  PatrolArea_SetPosition(node153, MAT_Vector3(1178.355266, 3321.724202, 155.899652))
  PatrolArea_SetRadius(node153, 550)
  PatrolArea_SetMinZ(node153, -150)
  PatrolArea_SetMaxZ(node153, 20)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node109, node154)
  Node_EnterSimulation(node154)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node109, node155)
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Trigger", "Sniper1_TriggerVisibilityBlock")
  Node_AddSon(node155, node156)
  Body_SetFriendOrFoeID(node156, 0)
  Body_SetPosition(node156, MAT_Vector3(1131.879582, 3501.321649, 141.0905))
  Trigger_SetVisibilityCone(node156, MAT_Vector3(-115, -15, 0), 450, 70)
  Trigger_SetVisibilityBlockingStatus(node156, 1)
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Trigger", "Sniper1_TriggerAcoustic")
  Node_AddSon(node155, node157)
  Body_SetFriendOrFoeID(node157, 0)
  Body_SetPosition(node157, MAT_Vector3(1136.472504, 3501.933507, 141))
  Trigger_SetAcousticSphere(node157, 35)
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Trigger", "Sniper2_TriggerVisibilityBlock")
  Node_AddSon(node155, node158)
  Body_SetFriendOrFoeID(node158, 0)
  Body_SetPosition(node158, MAT_Vector3(1067.714565, 3035.775305, 133.06659))
  Trigger_SetVisibilityCone(node158, MAT_Vector3(-6.489515, -5, 0), 450, 50)
  Trigger_SetVisibilityBlockingStatus(node158, 1)
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Trigger", "Sniper2_TriggerAcoustic")
  Node_AddSon(node155, node159)
  Body_SetFriendOrFoeID(node159, 0)
  Body_SetPosition(node159, MAT_Vector3(1066.710547, 3035.885949, 133.275538))
  Trigger_SetAcousticSphere(node159, 35)
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node109, node160)
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node160, node161)
  Body_SetCS(node161, MAT_Vector3(516.191826, 3072.193002, 76.298918), MAT_Vector3(-54.336625, 0, 0))
  Node_ParseIniFile(node161, "osd/pla/pla_instant_atlscout.osd")
  Body_SetFriendOrFoeID(node161, 1)
  Node_EnterSimulation(node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("nod_turret", "cra_sniper_1")
  Node_AddSon(node160, node162)
  Body_SetCS(node162, MAT_Vector3(1131.972946, 3500.913844, 141.0905), MAT_Vector3(-115, -15, 0))
  Node_ParseIniFile(node162, "osd/cra/cra_sniper.osd")
  Body_SetFriendOrFoeID(node162, 0)
  Node_EnterSimulation(node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("nod_turret", "cra_sniper_2")
  Node_AddSon(node160, node163)
  Body_SetCS(node163, MAT_Vector3(1067.714565, 3035.775305, 133.06659), MAT_Vector3(-6.489515, -5, 0))
  Node_ParseIniFile(node163, "osd/cra/cra_sniper.osd")
  Body_SetFriendOrFoeID(node163, 0)
  Node_EnterSimulation(node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("nod_vessel", "cra_scout1_1")
  Node_AddSon(node160, node164)
  Body_SetCS(node164, MAT_Vector3(895.003785, 3159.900279, 105), MAT_Vector3(40.719885, 0, 0))
  Node_ParseIniFile(node164, "osd/cra/cra_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node164, 0)
  Body_SetNameKey(node164, -1)
  Body_SetCargoKey(node164, -1, 0)
  Body_SetCargoKey(node164, -1, 1)
  Body_SetCargoKey(node164, -1, 2)
  Node_EnterSimulation(node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("nod_vessel", "cra_scout1_2")
  Node_AddSon(node160, node165)
  Body_SetCS(node165, MAT_Vector3(1340.214187, 3290.983164, 100), MAT_Vector3(43.652188, 0, 0))
  Node_ParseIniFile(node165, "osd/cra/cra_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node165, 0)
  Body_SetNameKey(node165, -1)
  Body_SetCargoKey(node165, -1, 0)
  Body_SetCargoKey(node165, -1, 1)
  Body_SetCargoKey(node165, -1, 2)
  Node_EnterSimulation(node165)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("nod_vessel", "cra_scout1_3")
  Node_AddSon(node160, node166)
  Body_SetCS(node166, MAT_Vector3(1409.17059, 3553.371861, 140), MAT_Vector3(179.792433, 0, 0))
  Node_ParseIniFile(node166, "osd/cra/cra_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node166, 0)
  Body_SetNameKey(node166, -1)
  Body_SetCargoKey(node166, -1, 0)
  Body_SetCargoKey(node166, -1, 1)
  Body_SetCargoKey(node166, -1, 2)
  Node_EnterSimulation(node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("nod_vessel", "cra_scout2_1")
  Node_AddSon(node160, node167)
  Body_SetCS(node167, MAT_Vector3(1193.391812, 3186.990777, 125), MAT_Vector3(-49.962028, 0, 0))
  Node_ParseIniFile(node167, "osd/cra/cra_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node167, 0)
  Body_SetNameKey(node167, -1)
  Body_SetCargoKey(node167, -1, 0)
  Body_SetCargoKey(node167, -1, 1)
  Body_SetCargoKey(node167, -1, 2)
  Node_EnterSimulation(node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node168)
  Camera_SetBackPlane(node168, 512)
  Node_EnterSimulation(node168)
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
SetEnemyMatrixElement(3, 1, N)
SetEnemyMatrixElement(4, 1, E)
SetEnemyMatrixElement(5, 1, U)
SetEnemyMatrixElement(6, 1, E)
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
SetEnemyMatrixElement(0, 6, N)
SetEnemyMatrixElement(1, 6, E)
SetEnemyMatrixElement(2, 6, N)
SetEnemyMatrixElement(3, 6, N)
SetEnemyMatrixElement(4, 6, N)
SetEnemyMatrixElement(5, 6, U)
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
                                                                                                                                                                                        if not (o4251.Value ~= True) then
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
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o766, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o766, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o766, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 120, -15, 60)
  CallFunction(o766, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 450, "E", "", "", "", "Code5")
  else
    CallFunction(o766, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o770.SetStateValue(L1)
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
o770 = { [nil] = {}, Start = function()
  o770["Value"] = False
  o4250.StartCalculate()
end, SetStateValue = function(L0)
  if not (o770.Value == L0) then
    o770["Value"] = L0
    o4250.ReCalculate()
  end
end }
S_o812 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o812, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o812, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o812, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 120, -15, 60)
  CallFunction(o812, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 450, "E", "", "", "", "Code5")
  else
    CallFunction(o812, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o816.SetStateValue(L1)
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
o816 = { [nil] = {}, Start = function()
  o816["Value"] = False
  o4250.StartCalculate()
end, SetStateValue = function(L0)
  if not (o816.Value == L0) then
    o816["Value"] = L0
    o4250.ReCalculate()
  end
end }
S_o858 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o858, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o858, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o858, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 120, -15, 60)
  CallFunction(o858, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 450, "E", "", "", "", "Code5")
  else
    CallFunction(o858, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o862.SetStateValue(L1)
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
o862 = { [nil] = {}, Start = function()
  o862["Value"] = False
  o4250.StartCalculate()
end, SetStateValue = function(L0)
  if not (o862.Value == L0) then
    o862["Value"] = L0
    o4250.ReCalculate()
  end
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
  Turret_SetAngleArea(L0.Node, 180, -20, 70)
  CallFunction(o904, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 450, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o904, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o908.SetStateValue(L1)
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
o908 = { [nil] = {}, Start = function()
  o908["Value"] = False
  o4250.StartCalculate()
end, SetStateValue = function(L0)
  if not (o908.Value == L0) then
    o908["Value"] = L0
    o4250.ReCalculate()
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
S_o1224 = { [nil] = {}, Start = function(L0)

end }
S_o1268 = { [nil] = {}, Start = function(L0)

end }
S_o1314 = { [nil] = {}, Start = function(L0)

end }
S_o1360 = { [nil] = {}, Start = function(L0)

end }
S_o1406 = { [nil] = {}, Start = function(L0)

end }
S_o1452 = { [nil] = {}, Start = function(L0)

end }
S_o1498 = { [nil] = {}, Start = function(L0)

end }
S_o1544 = { [nil] = {}, Start = function(L0)

end }
S_o1590 = { [nil] = {}, Start = function(L0)

end }
S_o1636 = { [nil] = {}, Start = function(L0)

end }
S_o1682 = { [nil] = {}, Start = function(L0)

end }
S_o1728 = { [nil] = {}, Start = function(L0)

end }
S_o1774 = { [nil] = {}, Start = function(L0)

end }
S_o1820 = { [nil] = {}, Start = function(L0)

end }
S_o1866 = { [nil] = {}, Start = function(L0)

end }
S_o1912 = { [nil] = {}, Start = function(L0)

end }
S_o1958 = { [nil] = {}, Start = function(L0)

end }
S_o2004 = { [nil] = {}, Start = function(L0)

end }
S_o2050 = { [nil] = {}, Start = function(L0)

end }
S_o2096 = { [nil] = {}, Start = function(L0)

end }
S_o2142 = { [nil] = {}, Start = function(L0)

end }
S_o2188 = { [nil] = {}, Start = function(L0)

end }
S_o2234 = { [nil] = {}, Start = function(L0)

end }
S_o2280 = { [nil] = {}, Start = function(L0)

end }
S_o2326 = { [nil] = {}, Start = function(L0)

end }
S_o2372 = { [nil] = {}, Start = function(L0)

end }
S_o2418 = { [nil] = {}, Start = function(L0)

end }
S_o2464 = { [nil] = {}, Start = function(L0)

end }
S_o2510 = { [nil] = {}, Start = function(L0)

end }
S_o2556 = { [nil] = {}, Start = function(L0)

end }
S_o2602 = { [nil] = {}, Start = function(L0)

end }
S_o2648 = { [nil] = {}, Start = function(L0)

end }
S_o2694 = { [nil] = {}, Start = function(L0)

end }
S_o2740 = { [nil] = {}, Start = function(L0)

end }
S_o2786 = { [nil] = {}, Start = function(L0)

end }
S_o2832 = { [nil] = {}, Start = function(L0)

end }
S_o2878 = { [nil] = {}, Start = function(L0)

end }
S_o2924 = { [nil] = {}, Start = function(L0)

end }
S_o2970 = { [nil] = {}, Start = function(L0)

end }
S_o3016 = { [nil] = {}, Start = function(L0)

end }
S_o3062 = { [nil] = {}, Start = function(L0)

end }
S_o3108 = { [nil] = {}, Start = function(L0)

end }
S_o3154 = { [nil] = {}, Start = function(L0)

end }
S_o3200 = { [nil] = {}, Start = function(L0)

end }
S_o3246 = { [nil] = {}, Start = function(L0)

end }
S_o3292 = { [nil] = {}, Start = function(L0)

end }
S_o3338 = { [nil] = {}, Start = function(L0)

end }
S_o3384 = { [nil] = {}, Start = function(L0)

end }
S_o3430 = { [nil] = {}, Start = function(L0)

end }
S_o3476 = { [nil] = {}, Start = function(L0)

end }
S_o3522 = { [nil] = {}, Start = function(L0)

end }
S_o3568 = { [nil] = {}, Start = function(L0)

end }
S_o3614 = { [nil] = {}, Start = function(L0)

end }
S_o3660 = { [nil] = {}, Start = function(L0)

end }
S_o3706 = { [nil] = {}, Start = function(L0)

end }
S_o3752 = { [nil] = {}, Start = function(L0)

end }
S_o3798 = { [nil] = {}, Start = function(L0)

end }
S_o3844 = { [nil] = {}, Start = function(L0)

end }
S_o3890 = { [nil] = {}, Start = function(L0)

end }
S_o3936 = { [nil] = {}, Start = function(L0)

end }
S_o3982 = { [nil] = {}, Start = function(L0)

end }
S_o4028 = { [nil] = {}, Start = function(L0)

end }
S_o4074 = { [nil] = {}, Start = function(L0)

end }
S_o4120 = { [nil] = {}, Start = function(L0)

end }
S_o4166 = { [nil] = {}, Start = function(L0)

end }
S_o4212 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4212, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4212, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4212, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "wng", "mac", "", False, True, False)
  CallFunction(o4212, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4212, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4212, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4217.SetStateValue(L1)
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
o4217 = { [nil] = {}, Start = function()
  o4217["Value"] = False
  o4280.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4217.Value == L0) then
    o4217["Value"] = L0
    o4280.ReCalculate()
  end
end }
S_o4218 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4218, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4218, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4218, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "wng", "mac", "", True, False, False)
  CallFunction(o4218, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4218, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4218, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4223.SetStateValue(L1)
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
o4223 = { [nil] = {}, Start = function()
  o4223["Value"] = False
  o4280.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4223.Value == L0) then
    o4223["Value"] = L0
    o4280.ReCalculate()
  end
end }
S_o4224 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4224, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4224, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4224, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "wng", "mac", "", False, True, False)
  CallFunction(o4224, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4224, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4224, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4229.SetStateValue(L1)
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
o4229 = { [nil] = {}, Start = function()
  o4229["Value"] = False
  o4327.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4229.Value == L0) then
    o4229["Value"] = L0
    o4327.ReCalculate()
  end
end }
S_o4230 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4230, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4230, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4230, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "wng", "mac", "", True, False, False)
  CallFunction(o4230, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4230, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4230, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4235.SetStateValue(L1)
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
o4235 = { [nil] = {}, Start = function()
  o4235["Value"] = False
  o4327.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4235.Value == L0) then
    o4235["Value"] = L0
    o4327.ReCalculate()
  end
end }
S_o4236 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_plasma2", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_shell", 9999)
  Body_AddItem(L0.Node, "device_generator0", 1)
  Body_AddItem(L0.Node, "ammo_energy", 500)
  Body_AddItem(L0.Node, "torpedo_threshershark", 2)
  Body_AddItem(L0.Node, "buzzer_normal", 4)
  Body_AddItem(L0.Node, "torpedo_stanley", 2)
  Body_AddItem(L0.Node, "device_repair1", 1)
  Body_AddItem(L0.Node, "gun_vendetta1", 1)
  CallFunction(o4236, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
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
o4250 = { [nil] = {}, GetCalculated = function()
  if not (o4284.Value ~= True) then
    if not (o4331.Value ~= True) then
      if not (o4378.Value ~= True) then
        if not (o4434.Value ~= True) then
          if not (o4490.Value ~= True) then
            if not (o4546.Value ~= True) then
              if not (o770.Value ~= True) then
                if not (o816.Value ~= True) then
                  if not (o862.Value ~= True) then
                    if not (o908.Value ~= True) then
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
end, ReCalculate = function()
  o4250.SetStateValue(o4250.GetCalculated())
end, StartCalculate = function()
  o4250["Value"] = o4250.GetCalculated()
  o4251.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o4250.Value == L0) then
    o4250["Value"] = L0
    o4251.ReCalculate()
    if not (L0 ~= 1) then
      o4250.ChangeTo1()
    end
  end
end }
o4251 = { [nil] = {}, GetCalculated = function()
  if not (o4250.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4251.SetStateValue(o4251.GetCalculated())
end, StartCalculate = function()
  o4251["Value"] = o4251.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4251.Value == L0) then
    o4251["Value"] = L0
    o2.ReCalculate()
  end
end }
S_o4279 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  SED_SetTaskTextKey(2100, -1, -1)
  Game_PlayMusic(GetGameNode(), "Agressive")
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4279, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4279, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code5")
  else
    CallFunction(o4279, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Turret_SetAngleArea(L0.Node, 20, -15, 10)
  CallFunction(o4279, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 500, 500, "", "", "", "", "Code7")
  else
    CallFunction(o4279, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Turret_SetAngleArea(L0.Node, 180, -55, 50)
  CallFunction(o4279, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 500, 500, "E", "", "", "", "Code9")
  else
    CallFunction(o4279, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_Attacked = function(L0, L1)
  o4283.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o4284.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o4280.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4280 = { [nil] = {}, GetCalculated = function()
  if not (o4217.Value == True) then
    if not (o4223.Value == True) then
      if not (o4283.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o4280.SetStateValue(o4280.GetCalculated())
end, StartCalculate = function()
  o4280["Value"] = o4280.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4280.Value == L0) then
    o4280["Value"] = L0
    CallFunction(o4279, "ProcesseStateChange")
  end
end }
o4283 = { [nil] = {}, Start = function()
  o4283["Value"] = False
  o4280.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4283.Value == L0) then
    o4283["Value"] = L0
    o4280.ReCalculate()
  end
end }
o4284 = { [nil] = {}, Start = function()
  o4284["Value"] = False
  o4250.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4284.Value == L0) then
    o4284["Value"] = L0
    o4250.ReCalculate()
  end
end }
S_o4326 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4326, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4326, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4326, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 20, -15, 10)
  CallFunction(o4326, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 500, 500, "", "", "", "", "Code5")
  else
    CallFunction(o4326, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Turret_SetAngleArea(L0.Node, 180, -55, 50)
  CallFunction(o4326, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 500, 500, "E", "", "", "", "Code7")
  else
    CallFunction(o4326, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Attacked = function(L0, L1)
  o4330.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o4331.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4327.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4327 = { [nil] = {}, GetCalculated = function()
  if not (o4229.Value == True) then
    if not (o4235.Value == True) then
      if not (o4330.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o4327.SetStateValue(o4327.GetCalculated())
end, StartCalculate = function()
  o4327["Value"] = o4327.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4327.Value == L0) then
    o4327["Value"] = L0
    CallFunction(o4326, "ProcesseStateChange")
  end
end }
o4330 = { [nil] = {}, Start = function()
  o4330["Value"] = False
  o4327.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4330.Value == L0) then
    o4330["Value"] = L0
    o4327.ReCalculate()
  end
end }
o4331 = { [nil] = {}, Start = function()
  o4331["Value"] = False
  o4250.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4331.Value == L0) then
    o4331["Value"] = L0
    o4250.ReCalculate()
  end
end }
S_o4373 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4373, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4373, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4373, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o4373, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.ComplexGotoAttack({ 0, { {}, "Goto", "/Scenario_Dynamic/Navigation/pir_tz_scout1_1_Path", 0.628872, 1 } }, "/Scenario_Dynamic/Navigation/PirateStation_Area", 290, "E", "", "", "", 5, 0.5, True, "Code5")
  else
    CallFunction(o4373, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o4378.SetStateValue(L1)
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
o4378 = { [nil] = {}, Start = function()
  o4378["Value"] = False
  o4250.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4378.Value == L0) then
    o4378["Value"] = L0
    o4250.ReCalculate()
  end
end }
S_o4429 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4429, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4429, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4429, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o4429, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.ComplexGotoAttack({ 0, { {}, "Goto", "/Scenario_Dynamic/Navigation/pir_tz_scout1_2_Path", 0.468872, 1 } }, "/Scenario_Dynamic/Navigation/PirateStation_Area", 290, "E", "", "", "", 5, 0.5, True, "Code5")
  else
    CallFunction(o4429, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o4434.SetStateValue(L1)
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
o4434 = { [nil] = {}, Start = function()
  o4434["Value"] = False
  o4250.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4434.Value == L0) then
    o4434["Value"] = L0
    o4250.ReCalculate()
  end
end }
S_o4485 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4485, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4485, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4485, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o4485, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.ComplexGotoAttack({ 0, { {}, "Goto", "/Scenario_Dynamic/Navigation/pir_tz_scout1_3_Path", 0.312148, 1 } }, "/Scenario_Dynamic/Navigation/PirateStation_Area", 290, "E", "", "", "", 5, 0.5, True, "Code5")
  else
    CallFunction(o4485, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o4490.SetStateValue(L1)
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
o4490 = { [nil] = {}, Start = function()
  o4490["Value"] = False
  o4250.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4490.Value == L0) then
    o4490["Value"] = L0
    o4250.ReCalculate()
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
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o4541, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.ComplexGotoAttack({ 0, { {}, "Goto", "/Scenario_Dynamic/Navigation/pir_tz_scout1_4_Path", 0.54657, 1 } }, "/Scenario_Dynamic/Navigation/PirateStation_Area", 290, "E", "", "", "", 5, 0.5, True, "Code5")
  else
    CallFunction(o4541, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o4546.SetStateValue(L1)
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
o4546 = { [nil] = {}, Start = function()
  o4546["Value"] = False
  o4250.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4546.Value == L0) then
    o4546["Value"] = L0
    o4250.ReCalculate()
  end
end }
S_o4597 = { [nil] = {}, Start = function(L0)

end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 168)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element07_1", S_o30)
  o76 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element06_1", S_o76)
  o122 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element05_raw_1", S_o122)
  o168 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element05_raw_2", S_o168)
  o214 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element03_raw_1", S_o214)
  o260 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_docking_1", S_o260)
  o306 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock3_1", S_o306)
  o352 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_raw1_1", S_o352)
  o398 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element03_raw_2", S_o398)
  o444 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_1", S_o444)
  o490 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_2", S_o490)
  o536 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_3", S_o536)
  o582 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_1", S_o582)
  o628 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_2", S_o628)
  o674 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01_raw_1", S_o674)
  o720 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_clunker1_1", S_o720)
  o766 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_easy_1/Turm1", S_o766)
  o770.Start()
  o812 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_easy_2/Turm1", S_o812)
  o816.Start()
  o858 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_easy_3/Turm1", S_o858)
  o862.Start()
  o904 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torp_m_2/Turm1", S_o904)
  o908.Start()
  o950 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element05_raw_01", S_o950)
  o996 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element03_raw_01", S_o996)
  o1042 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_1", S_o1042)
  o1088 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_1", S_o1088)
  o1134 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_2", S_o1134)
  o1180 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_1/Turm1", S_o1180)
  o1224 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_2/Turm1", S_o1224)
  o1268 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01_raw_2", S_o1268)
  o1314 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_raw1_4", S_o1314)
  o1360 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element06_raw_1", S_o1360)
  o1406 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_raw1_2", S_o1406)
  o1452 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_raw1_3", S_o1452)
  o1498 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_1", S_o1498)
  o1544 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_2", S_o1544)
  o1590 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_1", S_o1590)
  o1636 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_2", S_o1636)
  o1682 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_3", S_o1682)
  o1728 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_4", S_o1728)
  o1774 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_3", S_o1774)
  o1820 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_4", S_o1820)
  o1866 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_5", S_o1866)
  o1912 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_6", S_o1912)
  o1958 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_7", S_o1958)
  o2004 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_8", S_o2004)
  o2050 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_9", S_o2050)
  o2096 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock3_2", S_o2096)
  o2142 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element07_raw_1", S_o2142)
  o2188 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01_raw_3", S_o2188)
  o2234 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_bridgering_l_1", S_o2234)
  o2280 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_bridgering_l_2", S_o2280)
  o2326 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_bridgering_l_3", S_o2326)
  o2372 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_bridgering_l_4", S_o2372)
  o2418 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_cave_01_1", S_o2418)
  o2464 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_edgering_1", S_o2464)
  o2510 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_m_02_1", S_o2510)
  o2556 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_m_02_3", S_o2556)
  o2602 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_m_02_4", S_o2602)
  o2648 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_l_01_1", S_o2648)
  o2694 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_l_01_2", S_o2694)
  o2740 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_l_03_1", S_o2740)
  o2786 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_l_02_1", S_o2786)
  o2832 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_m_02_2", S_o2832)
  o2878 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_s_03_1", S_o2878)
  o2924 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_s_02_1", S_o2924)
  o2970 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_s_01_1", S_o2970)
  o3016 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_m_01_1", S_o3016)
  o3062 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_rock_l_01_1", S_o3062)
  o3108 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_bridgering_l_5", S_o3108)
  o3154 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_l_01_3", S_o3154)
  o3200 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_l_03_2", S_o3200)
  o3246 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_s_03_2", S_o3246)
  o3292 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_m_02_5", S_o3292)
  o3338 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_m_01_2", S_o3338)
  o3384 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_rock_l_01_2", S_o3384)
  o3430 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_l_02_2", S_o3430)
  o3476 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_edgering_2", S_o3476)
  o3522 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_m_02_6", S_o3522)
  o3568 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_m_01_3", S_o3568)
  o3614 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_s_01_2", S_o3614)
  o3660 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_s_02_2", S_o3660)
  o3706 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_l_01_4", S_o3706)
  o3752 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_l_01_5", S_o3752)
  o3798 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_l_03_3", S_o3798)
  o3844 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_bridgering_l_6", S_o3844)
  o3890 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_l_01_6", S_o3890)
  o3936 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_bridgering_l_7", S_o3936)
  o3982 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_megalith_l_02_3", S_o3982)
  o4028 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_bridgering_l_8", S_o4028)
  o4074 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_bridgering_l_9", S_o4074)
  o4120 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_bridgering_l_10", S_o4120)
  o4166 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects_Directory"), "ter_bridgering_l_11", S_o4166)
  o4212 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Sniper1_TriggerVisibilityBlock", S_o4212)
  o4217.Start()
  o4218 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Sniper1_TriggerAcoustic", S_o4218)
  o4223.Start()
  o4224 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Sniper2_TriggerVisibilityBlock", S_o4224)
  o4229.Start()
  o4230 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Sniper2_TriggerAcoustic", S_o4230)
  o4235.Start()
  o4236 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o4236)
  o4279 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_sniper_1/Turm1", S_o4279)
  o4283.Start()
  o4284.Start()
  o4326 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_sniper_2/Turm1", S_o4326)
  o4330.Start()
  o4331.Start()
  o4373 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_1", S_o4373)
  o4378.Start()
  o4429 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_2", S_o4429)
  o4434.Start()
  o4485 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_3", S_o4485)
  o4490.Start()
  o4541 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2_1", S_o4541)
  o4546.Start()
  o4597 = BindEasy(Node_Find("/"), "Camera", S_o4597)
  Game_LoadProgress_Leave(Node_Find("/"))
end
