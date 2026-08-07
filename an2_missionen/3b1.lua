-- dekompiliert aus 3b1.sco
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
  Terrain_LoadTerrain(node1, "map/3B1/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/3B1/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/3B1/Lmsh/", "map/3B1/Ltex/")
  Game_SetTerrainDepth(node0, 1036)
  Game_SetDecompressionHeight(node0, 350)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.054902, 0.058824, 0.043137)
  Game_SetParallelLightT(node0, 0.105882, 0.117647, 0.082353)
  Game_SetParallelLightB(node0, 0.054902, 0.058824, 0.043137)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_3b1.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_mystery.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient1.sam", 1)
  Game_SetNPCHitFactor(node0, 1)
  Game_SetEnvironmentCubeMap(node0, "map/3B1/CubeMap/envcubemap.dds")
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
  node8 = Node_CreateNode("nod_generic", "gen_beacon_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(2912.280564, 2675.598206, 192.772123), MAT_Vector3(81.144833, 0, 0))
  Node_ParseIniFile(node8, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node8, 2)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "gen_beacon_2")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(2700.983741, 2537.362333, 226.892105), MAT_Vector3(-33.759692, 0, 0))
  Node_ParseIniFile(node9, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node9, 2)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "gen_quay_1")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(2901.797708, 2284.088327, 280.88462), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node10, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node10, 2)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "gen_beacon_3")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(3085.968048, 1813.906534, 257.085107), MAT_Vector3(136.712562, 0, 0))
  Node_ParseIniFile(node11, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node11, 2)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "gen_beacon_4")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(3151.920978, 759.370072, 269.613809), MAT_Vector3(89.769968, 0, 0))
  Node_ParseIniFile(node12, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node12, 2)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "gen_beacon_5")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(3154.463641, 612.192953, 271.129103), MAT_Vector3(90.450143, 0, 0))
  Node_ParseIniFile(node13, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node13, 2)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "gen_metalblock1_1")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(3788.985592, 1140.694892, 261.196521), MAT_Vector3(162.731032, 0, 0))
  Node_ParseIniFile(node14, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node14, 2)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "gen_metalblock2_1")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(3708.851486, 1174.638337, 299.774888), MAT_Vector3(73.271493, 0, 0))
  Node_ParseIniFile(node15, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node15, 2)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "gen_metalblock3_1")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(3736.825541, 1255.622862, 201.229988), MAT_Vector3(163.972994, 0, 0))
  Node_ParseIniFile(node16, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node16, 2)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "gen_dock_1")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(3834.534831, 1151.9839, 173.480769), MAT_Vector3(-15.291533, 0, 0))
  Node_ParseIniFile(node17, "osd/gen/gen_dock.osd")
  Body_SetFriendOrFoeID(node17, 2)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "gen_trafo_1")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(3754.455599, 1287.993075, 244.345584), MAT_Vector3(-16.194562, 0, 0))
  Node_ParseIniFile(node18, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node18, 2)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "gen_trafo_2")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(3779.538271, 1280.381748, 243.955949), MAT_Vector3(-19.415608, 0, 0))
  Node_ParseIniFile(node19, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node19, 2)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "gen_trafo_3")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(3804.634062, 1272.211949, 244.715252), MAT_Vector3(-17.728406, 0, 0))
  Node_ParseIniFile(node20, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node20, 2)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "gen_trafo_4")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(3907.277002, 1241.648455, 244.542702), MAT_Vector3(-15.675385, 0, 0))
  Node_ParseIniFile(node21, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node21, 2)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_turret", "gen_turret_medium_1")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(3701.139267, 1111.632871, 243.212456), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node22, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node22, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_turret", "gen_turret_medium_2")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(3758.455974, 1095.342405, 244.886513), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node23, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node23, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_turret", "gen_turret_medium_3")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(3731.271492, 1130.766637, 278.405345), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node24, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node24, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_turret", "gen_turret_medium_5")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(3878.629562, 1091.494673, 277.955605), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node25, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_turret", "gen_turret_medium_6")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(3693.94556, 1223.842276, 269.357874), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node26, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "gen_shelter_1")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(3782.969649, 983.939681, 178.300452), MAT_Vector3(-15.67334, 0, 0))
  Node_ParseIniFile(node27, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node27, 2)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "gen_shelter_2")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(3748.428852, 781.042934, 179.267449), MAT_Vector3(-49.23923, 0, 0))
  Node_ParseIniFile(node28, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node28, 2)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "gen_shelter_3")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(3628.085577, 1030.548645, 174.270884), MAT_Vector3(-15.884386, 0, 0))
  Node_ParseIniFile(node29, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node29, 2)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "gen_quay_2")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(3525.261889, 878.207113, 216.423713), MAT_Vector3(-51.561002, 0, 0))
  Node_ParseIniFile(node30, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node30, 2)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_turret", "gen_turret_medium_7")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(2877.871136, 2681.590001, 235.016933), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node31, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node31, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_turret", "gen_turret_medium_8")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(2718.717891, 2567.362007, 266.604231), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node32, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_turret", "gen_turret_medium_9")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(2654.143341, 2469.088691, 266.551822), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node33, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node33, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_turret", "gen_turret_medium_10")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(2975.685367, 2666.729418, 230.335037), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node34, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_turret", "gen_turret_medium_11")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(2898.623702, 2337.770023, 301.064009), MAT_Vector3(-92.144862, 0, 0))
  Node_ParseIniFile(node35, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node35, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_turret", "gen_turret_medium_12")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(3144.496812, 1872.989884, 296.179301), MAT_Vector3(-90.905712, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node36, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_turret", "gen_turret_medium_13")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(3058.992896, 1781.133433, 294.927616), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node37, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node37, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_turret", "gen_turret_medium_14")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(3111.276272, 759.873299, 307.679445), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node38, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node38, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_turret", "gen_turret_medium_15")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(3235.50873, 761.25887, 307.840841), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node39, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_turret", "gen_turret_medium_16")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(3115.539747, 609.808715, 310.986096), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node40, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_turret", "gen_turret_medium_17")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(3238.035495, 611.487815, 313.347031), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node41, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_quay_3")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(2636.938966, 865.788147, 259.934058), MAT_Vector3(33.392608, 0, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node42, 2)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_turret", "gen_torp_m_1")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(2635.776156, 866.764518, 281.72372), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node43, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node43, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_turret", "gen_torp_m_2")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(3179.414737, 611.017077, 309.971153), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node44, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node44, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_turret", "gen_torp_m_3")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(3171.235311, 759.521154, 310.014848), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node45, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node45, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_turret", "gen_torp_m_4")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(3097.74544, 1825.285395, 296.121352), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node46, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node46, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_turret", "gen_torp_m_5")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(2901.399893, 2257.312319, 299.315375), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node47, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node47, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_turret", "gen_torp_m_6")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(2928.343857, 2671.585984, 231.593553), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node48, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node48, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_turret", "gen_torp_m_7")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(2688.341486, 2519.198112, 267.382911), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node49, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node49, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_turret", "gen_torp_m_8")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(3525.754341, 878.804296, 234.04403), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node50, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node50, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_turret", "gen_torp_m_9")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(3789.405315, 1113.123001, 278.250735), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node51, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "ter_bridgering_l_2")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(2634.881, 2408.315, 246.8111), MAT_Vector3(-47.16572, -0.954377, -1.242786))
  Node_ParseIniFile(node52, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "ter_bridgering_m_2")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(3013.548, 2557.543, 251.3436), MAT_Vector3(34.33259, 0, 0))
  Node_ParseIniFile(node53, "osd/ter/ter_bridgering_m.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "ter_megalith_s_02_1")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(2962.668, 2369.175, 292.9181), MAT_Vector3(52.57895, 5.322598, 0.559837))
  Node_ParseIniFile(node54, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "ter_edgering_4")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(3010.098, 2304.182, 245.5714), MAT_Vector3(131.0679, 0.018051, 0.168558))
  Node_ParseIniFile(node55, "osd/ter/ter_edgering.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "ter_bridgering_l_8")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(3136.767, 833.0972, 233.2598), MAT_Vector3(-10.24403, 0, 0))
  Node_ParseIniFile(node56, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "ter_rock_l_01_3")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(1652.748, 1855.139, 194.7623), MAT_Vector3(57.9869, -61.15286, 20.74144))
  Node_ParseIniFile(node57, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "ter_megalith_m_02_4")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(2110.455, 2101.684, 391.9564), MAT_Vector3(-160.0543, -3.732231, -14.76255))
  Node_ParseIniFile(node58, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "ter_megalith_l_01_13")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(3001.116, 2876.205, 379.210826), MAT_Vector3(-26.06544, 13.02407, 10.40917))
  Node_ParseIniFile(node59, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "ter_bridgering_m_4")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(3150.464, 2552.512, 312.8389), MAT_Vector3(-1.601908, -2.27254, -31.2884))
  Node_ParseIniFile(node60, "osd/ter/ter_bridgering_m.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "ter_megalith_s_03_6")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(3255.7, 1194.456, 295.3623), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node61, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "ter_megalith_s_03_7")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(3978.629, 987.58, 339.4728), MAT_Vector3(-144.6797, 3.084649, 71.551))
  Node_ParseIniFile(node62, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "ter_megalith_s_02_4")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(3920.613, 888.2708, 320.7038), MAT_Vector3(158.709, -15.22807, 101.3603))
  Node_ParseIniFile(node63, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "pla_harvester_1")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(2741.218435, 3638.712549, 377.39771), MAT_Vector3(-91.301779, 0, 0))
  Node_ParseIniFile(node64, "osd/pla/pla_harvester.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "ter_megalith_l_01_2")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(942.747, 1396.458, 107.5738), MAT_Vector3(27.26539, -3.139644, 5.175069))
  Node_ParseIniFile(node65, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "ter_megalith_l_02_2")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(1134.232, 1359.47, 111.8412), MAT_Vector3(-50.40215, -3.487634, -2.554453))
  Node_ParseIniFile(node66, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "ter_megalith_l_03_2")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(1326.129, 1394.361, 103.3469), MAT_Vector3(5.772112, -6.594054, 0.132415))
  Node_ParseIniFile(node67, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "xter_megalith_l_01_3")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(670.688, 1666.007, 112.4363), MAT_Vector3(155.5886, 10.55227, -4.720396))
  Node_ParseIniFile(node68, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "ter_megalith_l_02_3")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(633.306, 1857.904, 107.4795), MAT_Vector3(81.13325, 7.94677, 3.360289))
  Node_ParseIniFile(node69, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "ter_megalith_l_03_3")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(782.836, 2211.793, 110.9519), MAT_Vector3(-59.98932, -3.533663, 3.152546))
  Node_ParseIniFile(node70, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "ter_megalith_l_01_4")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(944.827, 2316.464, 112.1033), MAT_Vector3(-12.37312, 2.492559, 0.987008))
  Node_ParseIniFile(node71, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "xter_megalith_l_02_4")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(1490.613, 1504.016, 104.607), MAT_Vector3(-69.36113, -1.225986, -7.373077))
  Node_ParseIniFile(node72, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "ter_megalith_l_03_4")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(673.18, 2047.309, 111.1349), MAT_Vector3(-87.66528, -6.234533, -0.174634))
  Node_ParseIniFile(node73, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "ter_megalith_l_01_5")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(1595.284, 1663.515, 116.4329), MAT_Vector3(-135.2208, 7.380971, 2.357795))
  Node_ParseIniFile(node74, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "ter_megalith_l_02_5")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(1592.792, 2047.309, 100.7589), MAT_Vector3(-136.7505, 3.034981, 3.566533))
  Node_ParseIniFile(node75, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "ter_megalith_l_03_5")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(1134.232, 2353.847, 89.9637), MAT_Vector3(-139.6388, -7.210386, 5.768385))
  Node_ParseIniFile(node76, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "ter_megalith_l_03_5z")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(4027.558841, 1092.845471, 335.455207), MAT_Vector3(-154.140701, 12.993339, 14.311951))
  Node_ParseIniFile(node77, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "ter_megalith_l_01_6")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(1635.159, 1857.904, 102.9161), MAT_Vector3(166.4959, -0.664547, 2.172946))
  Node_ParseIniFile(node78, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "ter_megalith_l_02_6")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(1326.129, 2318.956, 113.3541), MAT_Vector3(-74.75039, 4.70163, 5.820554))
  Node_ParseIniFile(node79, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "ter_megalith_l_02_6x")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(3704.104067, 839.67419, 188.333344), MAT_Vector3(-74.75039, 4.70163, 5.820554))
  Node_ParseIniFile(node80, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_generic", "ter_megalith_l_03_6")
  Node_AddSon(node7, node81)
  Body_SetCS(node81, MAT_Vector3(1485.628, 2209.301, 96.608), MAT_Vector3(-123.7254, 1.602047, 9.260531))
  Node_ParseIniFile(node81, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1")
  Node_AddSon(node7, node82)
  Body_SetCS(node82, MAT_Vector3(2779.592701, 3923.205485, 193.274913), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node82, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1x")
  Node_AddSon(node7, node83)
  Body_SetCS(node83, MAT_Vector3(3927.652594, 1225.280907, 248.403792), MAT_Vector3(-12.511039, 5.288083, -7.296905))
  Node_ParseIniFile(node83, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_generic", "ter_megalith_s_02_2")
  Node_AddSon(node7, node84)
  Body_SetCS(node84, MAT_Vector3(3335.990086, 3660.023794, 176.518888), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node84, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_generic", "ter_megalith_s_02_2x")
  Node_AddSon(node7, node85)
  Body_SetCS(node85, MAT_Vector3(3671.873628, 979.706304, 181.548605), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node85, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1")
  Node_AddSon(node7, node86)
  Body_SetCS(node86, MAT_Vector3(3047.211552, 3873.763743, 175.52679), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node86, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1x")
  Node_AddSon(node7, node87)
  Body_SetCS(node87, MAT_Vector3(3667.018476, 828.185384, 186.891148), MAT_Vector3(7.074044, -3.384215, 2.589063))
  Node_ParseIniFile(node87, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "ter_megalith_m_02_1")
  Node_AddSon(node7, node88)
  Body_SetCS(node88, MAT_Vector3(3320.440271, 3788.534479, 171.06235), MAT_Vector3(-7.00305, 4.980898, -7.462811))
  Node_ParseIniFile(node88, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "ter_megalith_m_02_1x")
  Node_AddSon(node7, node89)
  Body_SetCS(node89, MAT_Vector3(3699.188414, 987.379157, 178.959409), MAT_Vector3(-7.00305, 4.980898, -7.462811))
  Node_ParseIniFile(node89, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_generic", "ter_megalith_m_01_1")
  Node_AddSon(node7, node90)
  Body_SetCS(node90, MAT_Vector3(3075.375261, 3868.631085, 174.534692), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node90, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node90, 0)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_generic", "ter_megalith_l_03_1")
  Node_AddSon(node7, node91)
  Body_SetCS(node91, MAT_Vector3(3375.814807, 3709.099695, 164.36569), MAT_Vector3(16.370187, -7.008425, 17.225916))
  Node_ParseIniFile(node91, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node91, 0)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_generic", "ter_megalith_l_02_1")
  Node_AddSon(node7, node92)
  Body_SetCS(node92, MAT_Vector3(2819.94876, 3943.930675, 191.018649), MAT_Vector3(4.747218, 3.225792, -3.447822))
  Node_ParseIniFile(node92, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node92, 0)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "ter_rock_l_01_1")
  Node_AddSon(node7, node93)
  Body_SetCS(node93, MAT_Vector3(3172.147169, 2235.913554, 246.718822), MAT_Vector3(-45.954312, 21.229704, -23.218307))
  Node_ParseIniFile(node93, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node93, 0)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_generic", "ter_rock_l_01_1b")
  Node_AddSon(node7, node94)
  Body_SetCS(node94, MAT_Vector3(2912.407995, 738.60704, 248.534178), MAT_Vector3(-13.348598, -2.465157, 6.086795))
  Node_ParseIniFile(node94, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node94, 0)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_generic", "ter_rock_m_01_1")
  Node_AddSon(node7, node95)
  Body_SetCS(node95, MAT_Vector3(3131.61892, 2224.4155, 241.267109), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node95, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node95, 0)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_generic", "ter_rock_m_01_1b")
  Node_AddSon(node7, node96)
  Body_SetCS(node96, MAT_Vector3(2864.700791, 720.119926, 251.281557), MAT_Vector3(-52.423016, 40.632678, -55.602741))
  Node_ParseIniFile(node96, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node96, 0)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_generic", "ter_rock_s_01_1")
  Node_AddSon(node7, node97)
  Body_SetCS(node97, MAT_Vector3(3116.683427, 2311.734699, 254.353276), MAT_Vector3(119.120325, 0.377758, 87.686839))
  Node_ParseIniFile(node97, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node97, 0)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_fx_rays", "fx_rays_3B1_1")
  Node_AddSon(node7, node98)
  Node_ParseIniFile(node98, "osd/fx_rays/fx_rays_3B1.osd")
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("NOD_FX_Flare", "fx_flare_3B1_1")
  Node_AddSon(node7, node99)
  Node_ParseIniFile(node99, "osd/fx_flare/fx_flare_3B1.osd")
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_fx_sky", "fx_sky_3B1_1")
  Node_AddSon(node7, node100)
  Node_ParseIniFile(node100, "osd/fx_sky/fx_sky_3B1.osd")
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_fx_plankton", "fx_plankton_green_d_1")
  Node_AddSon(node7, node101)
  Node_ParseIniFile(node101, "osd/fx_plankton/fx_plankton_green_d.osd")
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_fx_plant", "org_grass_l_1")
  Node_AddSon(node7, node102)
  Node_ParseIniFile(node102, "osd/fx_plant/org_grass_l.osd")
  FX_Plant_SetMap(node102, "map/3B1/Terrain/org_grass_l.tga")
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node7, node103)
  Node_ParseIniFile(node103, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node103, "map/3B1/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node7, node104)
  Node_ParseIniFile(node104, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node104, "map/3B1/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node105)
  Node_ParseIniFile(node105, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node105, "map/3B1/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_fx_plant", "org_tube_1")
  Node_AddSon(node7, node106)
  Node_ParseIniFile(node106, "osd/fx_plant/org_tube.osd")
  FX_Plant_SetMap(node106, "map/3B1/Terrain/org_tubes.tga")
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_fx_plant", "org_fungus_s01_1")
  Node_AddSon(node7, node107)
  Node_ParseIniFile(node107, "osd/fx_plant/org_fungus_s01.osd")
  FX_Plant_SetMap(node107, "map/3B1/Terrain/org_fungus_s01.tga")
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node108)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node108, node109)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node108, node110)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node108, node111)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node108, node112)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_1")
  Node_AddSon(node112, node113)
  Body_SetFriendOrFoeID(node113, 0)
  Body_SetCS(node113, MAT_Vector3(3286.864427, 704.44956, 300.548206), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node113, 40, 220, 220)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node108, node114)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node114, node115)
  Body_SetCS(node115, MAT_Vector3(2473.200008, 3051.048804, 210.701579), MAT_Vector3(-148.939366, 2.186517, 1.611877))
  Node_ParseIniFile(node115, "osd/pla/pla_ship3.osd")
  Body_SetFriendOrFoeID(node115, 0)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_trash", "des_mine01_1")
  Node_AddSon(node114, node116)
  Body_SetCS(node116, MAT_Vector3(2696.109877, 1281.134017, 307.537764), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node116, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node116, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_trash", "des_mine01_2")
  Node_AddSon(node114, node117)
  Body_SetCS(node117, MAT_Vector3(2673.442298, 1280.995445, 327.397066), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node117, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node117, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_trash", "des_mine01_3")
  Node_AddSon(node114, node118)
  Body_SetCS(node118, MAT_Vector3(2650.115624, 1282.279722, 308.360659), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node118, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node118, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_trash", "des_mine01_4")
  Node_AddSon(node114, node119)
  Body_SetCS(node119, MAT_Vector3(2630.700007, 1282.476829, 317.894291), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node119, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node119, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_trash", "des_mine01_5")
  Node_AddSon(node114, node120)
  Body_SetCS(node120, MAT_Vector3(2684.407504, 1263.568254, 279.4233), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node120, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node120, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_trash", "des_mine01_6")
  Node_AddSon(node114, node121)
  Body_SetCS(node121, MAT_Vector3(2662.53764, 1265.699259, 303.028769), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node121, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node121, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_trash", "des_mine01_7")
  Node_AddSon(node114, node122)
  Body_SetCS(node122, MAT_Vector3(2640.74571, 1267.720193, 305.741706), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node122, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node122, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_trash", "des_mine01_8")
  Node_AddSon(node114, node123)
  Body_SetCS(node123, MAT_Vector3(2649.13121, 1253.891113, 295.782089), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node123, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node123, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_trash", "des_mine01_9")
  Node_AddSon(node114, node124)
  Body_SetCS(node124, MAT_Vector3(2671.706906, 1253.008266, 291.724072), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node124, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node124, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_trash", "des_mine01_10")
  Node_AddSon(node114, node125)
  Body_SetCS(node125, MAT_Vector3(2660.735166, 1242.159263, 339.640942), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node125, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node125, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_trash", "des_mine01_11")
  Node_AddSon(node114, node126)
  Body_SetCS(node126, MAT_Vector3(2698.506487, 1292.029885, 279.951789), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node126, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node126, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_trash", "des_mine01_12")
  Node_AddSon(node114, node127)
  Body_SetCS(node127, MAT_Vector3(2683.442, 1290.995, 292.20702), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node127, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node127, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_trash", "des_mine01_13")
  Node_AddSon(node114, node128)
  Body_SetCS(node128, MAT_Vector3(2660.116, 1292.28, 269.70522), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node128, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node128, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_trash", "des_mine01_14")
  Node_AddSon(node114, node129)
  Body_SetCS(node129, MAT_Vector3(2640.7, 1292.477, 271.752797), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node129, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node129, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_trash", "des_mine01_15")
  Node_AddSon(node114, node130)
  Body_SetCS(node130, MAT_Vector3(2694.408, 1273.568, 259.4233), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node130, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node130, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_trash", "des_mine01_16")
  Node_AddSon(node114, node131)
  Body_SetCS(node131, MAT_Vector3(2672.538, 1275.699, 270.15386), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node131, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node131, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_trash", "des_mine01_17")
  Node_AddSon(node114, node132)
  Body_SetCS(node132, MAT_Vector3(2650.746, 1277.72, 277.65604), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node132, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node132, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_trash", "des_mine01_18")
  Node_AddSon(node114, node133)
  Body_SetCS(node133, MAT_Vector3(2659.131, 1263.891, 270.066271), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node133, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node133, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_trash", "des_mine01_19")
  Node_AddSon(node114, node134)
  Body_SetCS(node134, MAT_Vector3(2681.707, 1263.008, 317.998139), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node134, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node134, 2)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_trash", "des_mine01_20")
  Node_AddSon(node114, node135)
  Body_SetCS(node135, MAT_Vector3(2667.078954, 1254.965474, 258.623464), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node135, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node135, 2)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_waypoint", "nav_waypoint_1")
  Node_AddSon(node114, node136)
  Body_SetPosition(node136, MAT_Vector3(2727.119243, 2724.710114, 267.426779))
  WayPoint_SetRadius(node136, 60)
  Node_ParseIniFile(node136, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node137)
  Camera_SetBackPlane(node137, 2048)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node138)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node138, node139)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node138, node140)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_Path", "Path_1")
  Node_AddSon(node140, node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node141, node142)
  Position_SetPosition(node142, MAT_Vector3(2540.851533, 3572.274437, 354.284891))
  Position_SetRadius(node142, 5)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node141, node143)
  Position_SetPosition(node143, MAT_Vector3(2540.293282, 3352.574703, 355.500326))
  Position_SetRadius(node143, 5)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node140, node144)
  Position_SetPosition(node144, MAT_Vector3(2560.101035, 3442.372761, 356.724955))
  Position_SetRadius(node144, 5)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Path", "Path_2")
  Node_AddSon(node140, node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node145, node146)
  Position_SetPosition(node146, MAT_Vector3(2481.360264, 3038.668118, 181.704353))
  Position_SetRadius(node146, 5)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node145, node147)
  Position_SetPosition(node147, MAT_Vector3(2534.691356, 2964.409255, 218.869106))
  Position_SetRadius(node147, 5)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node138, node148)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Director", "Director_1")
  Node_AddSon(node148, node149)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node138, node150)
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node138, node151)
  Node_EnterSimulation(node151)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, U)
SetEnemyMatrixElement(2, 0, E)
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
SetEnemyMatrixElement(0, 2, E)
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
                                                                                                                                                                                      if not (o4200.Value ~= True) then
                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                            if not (True ~= True) then
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
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o490, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o490, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o490, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o493.SetStateValue(L1)
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
o493 = { [nil] = {}, Start = function()
  o493["Value"] = False
  o4195.StartCalculate()
end, SetStateValue = function(L0)
  if not (o493.Value == L0) then
    o493["Value"] = L0
    o4195.ReCalculate()
  end
end }
S_o537 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o537, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o537, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o537, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o540.SetStateValue(L1)
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
o540 = { [nil] = {}, Start = function()
  o540["Value"] = False
  o4195.StartCalculate()
end, SetStateValue = function(L0)
  if not (o540.Value == L0) then
    o540["Value"] = L0
    o4195.ReCalculate()
  end
end }
S_o584 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o584, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o584, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o584, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o587.SetStateValue(L1)
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
o587 = { [nil] = {}, Start = function()
  o587["Value"] = False
  o4195.StartCalculate()
end, SetStateValue = function(L0)
  if not (o587.Value == L0) then
    o587["Value"] = L0
    o4195.ReCalculate()
  end
end }
S_o631 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o631, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o631, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o631, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o634.SetStateValue(L1)
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
o634 = { [nil] = {}, Start = function()
  o634["Value"] = False
  o4195.StartCalculate()
end, SetStateValue = function(L0)
  if not (o634.Value == L0) then
    o634["Value"] = L0
    o4195.ReCalculate()
  end
end }
S_o678 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o678, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o678, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o678, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o678, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "player1", "", "", "", "Code5")
  else
    CallFunction(o678, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o678, "Code6")
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
      if not (o679.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o679 = { [nil] = {}, GetCalculated = function()
  if not (o4195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o679.SetStateValue(o679.GetCalculated())
end, StartCalculate = function()
  o679["Value"] = o679.GetCalculated()
end, SetStateValue = function(L0)
  if not (o679.Value == L0) then
    o679["Value"] = L0
    CallFunction(o678, "ProcesseStateChange")
  end
end }
S_o724 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o724, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o724, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o724, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o724, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "player1", "", "", "", "Code5")
  else
    CallFunction(o724, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o724, "Code6")
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
      if not (o725.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o725 = { [nil] = {}, GetCalculated = function()
  if not (o4195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o725.SetStateValue(o725.GetCalculated())
end, StartCalculate = function()
  o725["Value"] = o725.GetCalculated()
end, SetStateValue = function(L0)
  if not (o725.Value == L0) then
    o725["Value"] = L0
    CallFunction(o724, "ProcesseStateChange")
  end
end }
S_o770 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o770, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o770, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o770, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o770, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "player1", "", "", "", "Code5")
  else
    CallFunction(o770, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o770, "Code6")
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
      if not (o771.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o771 = { [nil] = {}, GetCalculated = function()
  if not (o4195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o771.SetStateValue(o771.GetCalculated())
end, StartCalculate = function()
  o771["Value"] = o771.GetCalculated()
end, SetStateValue = function(L0)
  if not (o771.Value == L0) then
    o771["Value"] = L0
    CallFunction(o770, "ProcesseStateChange")
  end
end }
S_o816 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o816, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o816, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o816, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o816, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "player1", "", "", "", "Code5")
  else
    CallFunction(o816, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o816, "Code6")
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
      if not (o817.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o817 = { [nil] = {}, GetCalculated = function()
  if not (o4195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o817.SetStateValue(o817.GetCalculated())
end, StartCalculate = function()
  o817["Value"] = o817.GetCalculated()
end, SetStateValue = function(L0)
  if not (o817.Value == L0) then
    o817["Value"] = L0
    CallFunction(o816, "ProcesseStateChange")
  end
end }
S_o862 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o862, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o862, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o862, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o862, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "player1", "", "", "", "Code5")
  else
    CallFunction(o862, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o862, "Code6")
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
      if not (o863.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o863 = { [nil] = {}, GetCalculated = function()
  if not (o4195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o863.SetStateValue(o863.GetCalculated())
end, StartCalculate = function()
  o863["Value"] = o863.GetCalculated()
end, SetStateValue = function(L0)
  if not (o863.Value == L0) then
    o863["Value"] = L0
    CallFunction(o862, "ProcesseStateChange")
  end
end }
S_o908 = { [nil] = {}, Start = function(L0)

end }
S_o954 = { [nil] = {}, Start = function(L0)

end }
S_o1000 = { [nil] = {}, Start = function(L0)

end }
S_o1046 = { [nil] = {}, Start = function(L0)

end }
S_o1092 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1092, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1092, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1092, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1092, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "player1", "", "", "", "Code5")
  else
    CallFunction(o1092, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1092, "Code6")
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
      if not (o1093.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1093 = { [nil] = {}, GetCalculated = function()
  if not (o4195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1093.SetStateValue(o1093.GetCalculated())
end, StartCalculate = function()
  o1093["Value"] = o1093.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1093.Value == L0) then
    o1093["Value"] = L0
    CallFunction(o1092, "ProcesseStateChange")
  end
end }
S_o1138 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1138, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1138, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1138, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1138, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "player1", "", "", "", "Code5")
  else
    CallFunction(o1138, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1138, "Code6")
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
      if not (o1139.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1139 = { [nil] = {}, GetCalculated = function()
  if not (o4195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1139.SetStateValue(o1139.GetCalculated())
end, StartCalculate = function()
  o1139["Value"] = o1139.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1139.Value == L0) then
    o1139["Value"] = L0
    CallFunction(o1138, "ProcesseStateChange")
  end
end }
S_o1184 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1184, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1184, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1184, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1184, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "player1", "", "", "", "Code5")
  else
    CallFunction(o1184, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1184, "Code6")
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
      if not (o1185.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1185 = { [nil] = {}, GetCalculated = function()
  if not (o4195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1185.SetStateValue(o1185.GetCalculated())
end, StartCalculate = function()
  o1185["Value"] = o1185.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1185.Value == L0) then
    o1185["Value"] = L0
    CallFunction(o1184, "ProcesseStateChange")
  end
end }
S_o1230 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1230, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1230, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1230, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1230, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "player1", "", "", "", "Code5")
  else
    CallFunction(o1230, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1230, "Code6")
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
      if not (o1231.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1231 = { [nil] = {}, GetCalculated = function()
  if not (o4195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1231.SetStateValue(o1231.GetCalculated())
end, StartCalculate = function()
  o1231["Value"] = o1231.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1231.Value == L0) then
    o1231["Value"] = L0
    CallFunction(o1230, "ProcesseStateChange")
  end
end }
S_o1276 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1276, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1276, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1276, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1276, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "player1", "", "", "", "Code5")
  else
    CallFunction(o1276, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1276, "Code6")
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
      if not (o1277.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1277 = { [nil] = {}, GetCalculated = function()
  if not (o4195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1277.SetStateValue(o1277.GetCalculated())
end, StartCalculate = function()
  o1277["Value"] = o1277.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1277.Value == L0) then
    o1277["Value"] = L0
    CallFunction(o1276, "ProcesseStateChange")
  end
end }
S_o1322 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1322, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1322, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1322, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1322, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "player1", "", "", "", "Code5")
  else
    CallFunction(o1322, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1322, "Code6")
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
      if not (o1323.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1323 = { [nil] = {}, GetCalculated = function()
  if not (o4195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1323.SetStateValue(o1323.GetCalculated())
end, StartCalculate = function()
  o1323["Value"] = o1323.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1323.Value == L0) then
    o1323["Value"] = L0
    CallFunction(o1322, "ProcesseStateChange")
  end
end }
S_o1368 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1368, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1368, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1368, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1368, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "player1", "", "", "", "Code5")
  else
    CallFunction(o1368, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1368, "Code6")
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
      if not (o1369.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1369 = { [nil] = {}, GetCalculated = function()
  if not (o4195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1369.SetStateValue(o1369.GetCalculated())
end, StartCalculate = function()
  o1369["Value"] = o1369.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1369.Value == L0) then
    o1369["Value"] = L0
    CallFunction(o1368, "ProcesseStateChange")
  end
end }
S_o1414 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1414, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1414, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1414, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1414, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "player1", "", "", "", "Code5")
  else
    CallFunction(o1414, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1414, "Code6")
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
      if not (o1415.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1415 = { [nil] = {}, GetCalculated = function()
  if not (o4195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1415.SetStateValue(o1415.GetCalculated())
end, StartCalculate = function()
  o1415["Value"] = o1415.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1415.Value == L0) then
    o1415["Value"] = L0
    CallFunction(o1414, "ProcesseStateChange")
  end
end }
S_o1460 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1460, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1460, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1460, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1460, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "player1", "", "", "", "Code5")
  else
    CallFunction(o1460, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1460, "Code6")
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
      if not (o1461.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1461 = { [nil] = {}, GetCalculated = function()
  if not (o4195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1461.SetStateValue(o1461.GetCalculated())
end, StartCalculate = function()
  o1461["Value"] = o1461.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1461.Value == L0) then
    o1461["Value"] = L0
    CallFunction(o1460, "ProcesseStateChange")
  end
end }
S_o1506 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1506, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1506, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1506, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1506, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "player1", "", "", "", "Code5")
  else
    CallFunction(o1506, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1506, "Code6")
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
      if not (o1507.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1507 = { [nil] = {}, GetCalculated = function()
  if not (o4195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1507.SetStateValue(o1507.GetCalculated())
end, StartCalculate = function()
  o1507["Value"] = o1507.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1507.Value == L0) then
    o1507["Value"] = L0
    CallFunction(o1506, "ProcesseStateChange")
  end
end }
S_o1552 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1552, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1552, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1552, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1552, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "player1", "", "", "", "Code5")
  else
    CallFunction(o1552, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1552, "Code6")
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
      if not (o1553.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1553 = { [nil] = {}, GetCalculated = function()
  if not (o4195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1553.SetStateValue(o1553.GetCalculated())
end, StartCalculate = function()
  o1553["Value"] = o1553.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1553.Value == L0) then
    o1553["Value"] = L0
    CallFunction(o1552, "ProcesseStateChange")
  end
end }
S_o1598 = { [nil] = {}, Start = function(L0)

end }
S_o1644 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1644, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1644, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1644, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1644, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "player1", "", "", "", "Code5")
  else
    CallFunction(o1644, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1644, "Code6")
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
      if not (o1645.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1645 = { [nil] = {}, GetCalculated = function()
  if not (o4195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1645.SetStateValue(o1645.GetCalculated())
end, StartCalculate = function()
  o1645["Value"] = o1645.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1645.Value == L0) then
    o1645["Value"] = L0
    CallFunction(o1644, "ProcesseStateChange")
  end
end }
S_o1690 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1690, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1690, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1690, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1690, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "player1", "", "", "", "Code5")
  else
    CallFunction(o1690, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1690, "Code6")
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
      if not (o1691.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1691 = { [nil] = {}, GetCalculated = function()
  if not (o4195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1691.SetStateValue(o1691.GetCalculated())
end, StartCalculate = function()
  o1691["Value"] = o1691.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1691.Value == L0) then
    o1691["Value"] = L0
    CallFunction(o1690, "ProcesseStateChange")
  end
end }
S_o1736 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1736, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1736, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1736, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1736, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "player1", "", "", "", "Code5")
  else
    CallFunction(o1736, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1736, "Code6")
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
      if not (o1737.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1737 = { [nil] = {}, GetCalculated = function()
  if not (o4195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1737.SetStateValue(o1737.GetCalculated())
end, StartCalculate = function()
  o1737["Value"] = o1737.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1737.Value == L0) then
    o1737["Value"] = L0
    CallFunction(o1736, "ProcesseStateChange")
  end
end }
S_o1782 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1782, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1782, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1782, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1782, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "player1", "", "", "", "Code5")
  else
    CallFunction(o1782, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1782, "Code6")
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
      if not (o1783.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1783 = { [nil] = {}, GetCalculated = function()
  if not (o4195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1783.SetStateValue(o1783.GetCalculated())
end, StartCalculate = function()
  o1783["Value"] = o1783.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1783.Value == L0) then
    o1783["Value"] = L0
    CallFunction(o1782, "ProcesseStateChange")
  end
end }
S_o1828 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1828, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1828, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1828, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1828, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "player1", "", "", "", "Code5")
  else
    CallFunction(o1828, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1828, "Code6")
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
      if not (o1829.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1829 = { [nil] = {}, GetCalculated = function()
  if not (o4195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1829.SetStateValue(o1829.GetCalculated())
end, StartCalculate = function()
  o1829["Value"] = o1829.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1829.Value == L0) then
    o1829["Value"] = L0
    CallFunction(o1828, "ProcesseStateChange")
  end
end }
S_o1874 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1874, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1874, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1874, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1874, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "player1", "", "", "", "Code5")
  else
    CallFunction(o1874, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1874, "Code6")
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
      if not (o1875.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1875 = { [nil] = {}, GetCalculated = function()
  if not (o4195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1875.SetStateValue(o1875.GetCalculated())
end, StartCalculate = function()
  o1875["Value"] = o1875.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1875.Value == L0) then
    o1875["Value"] = L0
    CallFunction(o1874, "ProcesseStateChange")
  end
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
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1920, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "player1", "", "", "", "Code5")
  else
    CallFunction(o1920, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1920, "Code6")
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
      if not (o1921.Value ~= True) then
        L1 = 0
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
  if not (o4195.Value ~= True) then
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
S_o1966 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1966, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1966, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1966, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1966, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "player1", "", "", "", "Code5")
  else
    CallFunction(o1966, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1966, "Code6")
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
      if not (o1967.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1967 = { [nil] = {}, GetCalculated = function()
  if not (o4195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1967.SetStateValue(o1967.GetCalculated())
end, StartCalculate = function()
  o1967["Value"] = o1967.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1967.Value == L0) then
    o1967["Value"] = L0
    CallFunction(o1966, "ProcesseStateChange")
  end
end }
S_o2012 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2012, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2012, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2012, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o2012, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 512, 512, "player1", "", "", "", "Code5")
  else
    CallFunction(o2012, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2012, "Code6")
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
      if not (o2013.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2013 = { [nil] = {}, GetCalculated = function()
  if not (o4195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2013.SetStateValue(o2013.GetCalculated())
end, StartCalculate = function()
  o2013["Value"] = o2013.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2013.Value == L0) then
    o2013["Value"] = L0
    CallFunction(o2012, "ProcesseStateChange")
  end
end }
S_o2058 = { [nil] = {}, Start = function(L0)

end }
S_o2104 = { [nil] = {}, Start = function(L0)

end }
S_o2150 = { [nil] = {}, Start = function(L0)

end }
S_o2196 = { [nil] = {}, Start = function(L0)

end }
S_o2242 = { [nil] = {}, Start = function(L0)

end }
S_o2288 = { [nil] = {}, Start = function(L0)

end }
S_o2334 = { [nil] = {}, Start = function(L0)

end }
S_o2380 = { [nil] = {}, Start = function(L0)

end }
S_o2426 = { [nil] = {}, Start = function(L0)

end }
S_o2472 = { [nil] = {}, Start = function(L0)

end }
S_o2518 = { [nil] = {}, Start = function(L0)

end }
S_o2564 = { [nil] = {}, Start = function(L0)

end }
S_o2610 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2610, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2610, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2610, "Code3")
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
S_o2657 = { [nil] = {}, Start = function(L0)

end }
S_o2703 = { [nil] = {}, Start = function(L0)

end }
S_o2749 = { [nil] = {}, Start = function(L0)

end }
S_o2795 = { [nil] = {}, Start = function(L0)

end }
S_o2841 = { [nil] = {}, Start = function(L0)

end }
S_o2887 = { [nil] = {}, Start = function(L0)

end }
S_o2933 = { [nil] = {}, Start = function(L0)

end }
S_o2979 = { [nil] = {}, Start = function(L0)

end }
S_o3025 = { [nil] = {}, Start = function(L0)

end }
S_o3071 = { [nil] = {}, Start = function(L0)

end }
S_o3117 = { [nil] = {}, Start = function(L0)

end }
S_o3163 = { [nil] = {}, Start = function(L0)

end }
S_o3209 = { [nil] = {}, Start = function(L0)

end }
S_o3255 = { [nil] = {}, Start = function(L0)

end }
S_o3301 = { [nil] = {}, Start = function(L0)

end }
S_o3347 = { [nil] = {}, Start = function(L0)

end }
S_o3393 = { [nil] = {}, Start = function(L0)

end }
S_o3439 = { [nil] = {}, Start = function(L0)

end }
S_o3485 = { [nil] = {}, Start = function(L0)

end }
S_o3531 = { [nil] = {}, Start = function(L0)

end }
S_o3577 = { [nil] = {}, Start = function(L0)

end }
S_o3623 = { [nil] = {}, Start = function(L0)

end }
S_o3669 = { [nil] = {}, Start = function(L0)

end }
S_o3715 = { [nil] = {}, Start = function(L0)

end }
S_o3761 = { [nil] = {}, Start = function(L0)

end }
S_o3807 = { [nil] = {}, Start = function(L0)

end }
S_o3853 = { [nil] = {}, Start = function(L0)

end }
S_o3899 = { [nil] = {}, Start = function(L0)

end }
S_o3945 = { [nil] = {}, Start = function(L0)

end }
S_o3991 = { [nil] = {}, Start = function(L0)

end }
S_o4037 = { [nil] = {}, Start = function(L0)

end }
S_o4083 = { [nil] = {}, Start = function(L0)

end }
S_o4129 = { [nil] = {}, Start = function(L0)

end }
S_o4175 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4175, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4175, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4175, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o4175, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4175, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4175, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4180.SetStateValue(L1)
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
o4180 = { [nil] = {}, Start = function()
  o4180["Value"] = False
  o4196.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4180.Value == L0) then
    o4180["Value"] = L0
    o4196.ReCalculate()
  end
end }
S_o4181 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_vendettagatlin", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_shell", 9999)
  Body_AddItem(L0.Node, "ammo_energy", 200)
  Body_AddItem(L0.Node, "device_generator1", 1)
  Body_AddItem(L0.Node, "device_repair1", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 8)
  Body_AddItem(L0.Node, "torpedo_bigbang1", 2)
  Body_AddItem(L0.Node, "torpedo_maneater", 2)
  Body_AddItem(L0.Node, "gun_flak", 1)
  Body_AddItem(L0.Node, "gun_plasma1", 1)
  CallFunction(o4181, "Code11")
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
o4195 = { [nil] = {}, GetCalculated = function()
  if not (o493.Value ~= True) then
    if not (o540.Value ~= True) then
      if not (o587.Value ~= True) then
        if not (o634.Value ~= True) then
          return 1
        else
          return 0
        end
      end
    end
  end
end, ReCalculate = function()
  o4195.SetStateValue(o4195.GetCalculated())
end, StartCalculate = function()
  o4195["Value"] = o4195.GetCalculated()
  o679.StartCalculate()
  o725.StartCalculate()
  o771.StartCalculate()
  o817.StartCalculate()
  o863.StartCalculate()
  o1093.StartCalculate()
  o1139.StartCalculate()
  o1185.StartCalculate()
  o1231.StartCalculate()
  o1277.StartCalculate()
  o1323.StartCalculate()
  o1369.StartCalculate()
  o1415.StartCalculate()
  o1461.StartCalculate()
  o1507.StartCalculate()
  o1553.StartCalculate()
  o1645.StartCalculate()
  o1691.StartCalculate()
  o1737.StartCalculate()
  o1783.StartCalculate()
  o1829.StartCalculate()
  o1875.StartCalculate()
  o1921.StartCalculate()
  o1967.StartCalculate()
  o2013.StartCalculate()
  o4198.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4195.Value == L0) then
    o4195["Value"] = L0
    o679.ReCalculate()
    o725.ReCalculate()
    o771.ReCalculate()
    o817.ReCalculate()
    o863.ReCalculate()
    o1093.ReCalculate()
    o1139.ReCalculate()
    o1185.ReCalculate()
    o1231.ReCalculate()
    o1277.ReCalculate()
    o1323.ReCalculate()
    o1369.ReCalculate()
    o1415.ReCalculate()
    o1461.ReCalculate()
    o1507.ReCalculate()
    o1553.ReCalculate()
    o1645.ReCalculate()
    o1691.ReCalculate()
    o1737.ReCalculate()
    o1783.ReCalculate()
    o1829.ReCalculate()
    o1875.ReCalculate()
    o1921.ReCalculate()
    o1967.ReCalculate()
    o2013.ReCalculate()
    o4198.ReCalculate()
  end
end }
o4196 = { [nil] = {}, GetCalculated = function()
  if not (o4180.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4196.SetStateValue(o4196.GetCalculated())
end, StartCalculate = function()
  o4196["Value"] = o4196.GetCalculated()
  o4199.StartCalculate()
end, ChangeTo1 = function()
  SED_SetTaskTextKey(2101, -1, -1)
end, SetStateValue = function(L0)
  if not (o4196.Value == L0) then
    o4196["Value"] = L0
    o4199.ReCalculate()
    if not (L0 ~= 1) then
      o4196.ChangeTo1()
    end
  end
end }
o4197 = { [nil] = {}, GetCalculated = function()
  if not (o5050.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4197.SetStateValue(o4197.GetCalculated())
end, StartCalculate = function()
  o4197["Value"] = o4197.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
end, SetStateValue = function(L0)
  if not (o4197.Value == L0) then
    o4197["Value"] = L0
    if not (L0 ~= 1) then
      o4197.ChangeTo1()
    end
  end
end }
o4198 = { [nil] = {}, GetCalculated = function()
  if not (o4195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4198.SetStateValue(o4198.GetCalculated())
end, StartCalculate = function()
  o4198["Value"] = o4198.GetCalculated()
  o4200.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4198.Value == L0) then
    DelayedFunction(2, o4198, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4198.Value == L0) then
    o4198["Value"] = L0
    o4200.ReCalculate()
  end
end }
o4199 = { [nil] = {}, GetCalculated = function()
  if not (o4196.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4199.SetStateValue(o4199.GetCalculated())
end, StartCalculate = function()
  o4199["Value"] = o4199.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
end, SetStateValue = function(L0)
  if not (o4199.Value == L0) then
    o4199["Value"] = L0
    if not (L0 ~= 1) then
      o4199.ChangeTo1()
    end
  end
end }
o4200 = { [nil] = {}, GetCalculated = function()
  if not (o4198.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4200.SetStateValue(o4200.GetCalculated())
end, StartCalculate = function()
  o4200["Value"] = o4200.GetCalculated()
  o3.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 2, 2000, 2101)
  Game_PlayMusic(GetGameNode(), "Agressive")
end, SetStateValue = function(L0)
  if not (o4200.Value == L0) then
    o4200["Value"] = L0
    o3.ReCalculate()
    if not (L0 ~= 1) then
      o4200.ChangeTo1()
    end
  end
end }
S_o4227 = { [nil] = {}, Start = function(L0)

end }
S_o4268 = { [nil] = {}, Start = function(L0)

end }
S_o4309 = { [nil] = {}, Start = function(L0)

end }
S_o4350 = { [nil] = {}, Start = function(L0)

end }
S_o4391 = { [nil] = {}, Start = function(L0)

end }
S_o4432 = { [nil] = {}, Start = function(L0)

end }
S_o4473 = { [nil] = {}, Start = function(L0)

end }
S_o4514 = { [nil] = {}, Start = function(L0)

end }
S_o4555 = { [nil] = {}, Start = function(L0)

end }
S_o4596 = { [nil] = {}, Start = function(L0)

end }
S_o4637 = { [nil] = {}, Start = function(L0)

end }
S_o4678 = { [nil] = {}, Start = function(L0)

end }
S_o4719 = { [nil] = {}, Start = function(L0)

end }
S_o4760 = { [nil] = {}, Start = function(L0)

end }
S_o4801 = { [nil] = {}, Start = function(L0)

end }
S_o4842 = { [nil] = {}, Start = function(L0)

end }
S_o4883 = { [nil] = {}, Start = function(L0)

end }
S_o4924 = { [nil] = {}, Start = function(L0)

end }
S_o4965 = { [nil] = {}, Start = function(L0)

end }
S_o5006 = { [nil] = {}, Start = function(L0)

end }
S_o5047 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o5047, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o5050.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5050 = { [nil] = {}, Start = function()
  o5050["Value"] = False
  o4197.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5050.Value == L0) then
    o5050["Value"] = L0
    o4197.ReCalculate()
  end
end }
S_o5052 = { [nil] = {}, Start = function(L0)

end }
S_o5053 = { [nil] = {}, Start = function(L0)

end }
o5055 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o5056 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Atmo")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o5056, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o5056, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  FormationLib.PlaceFormationPath(o5054, o5055, "/InGameSequences/Navigation/Path_1")
  CallFunction(o5056, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o5054, o5055, "/InGameSequences/Navigation/Path_1", "pos_1", "pos_2", 1, 1, "Code10")
  else
    CallFunction(o5056, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_Cut(L0.Node, 1)
  CallFunction(o5056, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code12")
  else
    CallFunction(o5056, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  FormationLib.PlaceFormationPath(o5054, o5055, "/InGameSequences/Navigation/Path_2")
  CallFunction(o5056, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.8, "Code14")
  else
    CallFunction(o5056, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Director_EndCutscene(L0.Node)
  CallFunction(o5056, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code16")
  else
    CallFunction(o5056, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Game_SetWayPoint(GetGameNode(), o5047.Node)
  SED_SetTaskTextKey(2100, -1, -1)
  CallFunction(o5056, "Code18")
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
  Game_LoadProgress_Enter(Node_Find("/"), 151)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_beacon_1", S_o30)
  o76 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_beacon_2", S_o76)
  o122 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_1", S_o122)
  o168 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_beacon_3", S_o168)
  o214 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_beacon_4", S_o214)
  o260 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_beacon_5", S_o260)
  o306 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock1_1", S_o306)
  o352 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock2_1", S_o352)
  o398 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock3_1", S_o398)
  o444 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dock_1", S_o444)
  o490 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_1", S_o490)
  o493.Start()
  o537 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_2", S_o537)
  o540.Start()
  o584 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_3", S_o584)
  o587.Start()
  o631 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_4", S_o631)
  o634.Start()
  o678 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_1/Turm1", S_o678)
  o724 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_2/Turm1", S_o724)
  o770 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_3/Turm1", S_o770)
  o816 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_5/Turm1", S_o816)
  o862 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_6/Turm1", S_o862)
  o908 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_1", S_o908)
  o954 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_2", S_o954)
  o1000 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_3", S_o1000)
  o1046 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_2", S_o1046)
  o1092 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_7/Turm1", S_o1092)
  o1138 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_8/Turm1", S_o1138)
  o1184 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_9/Turm1", S_o1184)
  o1230 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_10/Turm1", S_o1230)
  o1276 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_11/Turm1", S_o1276)
  o1322 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_12/Turm1", S_o1322)
  o1368 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_13/Turm1", S_o1368)
  o1414 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_14/Turm1", S_o1414)
  o1460 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_15/Turm1", S_o1460)
  o1506 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_16/Turm1", S_o1506)
  o1552 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_17/Turm1", S_o1552)
  o1598 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_3", S_o1598)
  o1644 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torp_m_1/Turm1", S_o1644)
  o1690 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torp_m_2/Turm1", S_o1690)
  o1736 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torp_m_3/Turm1", S_o1736)
  o1782 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torp_m_4/Turm1", S_o1782)
  o1828 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torp_m_5/Turm1", S_o1828)
  o1874 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torp_m_6/Turm1", S_o1874)
  o1920 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torp_m_7/Turm1", S_o1920)
  o1966 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torp_m_8/Turm1", S_o1966)
  o2012 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torp_m_9/Turm1", S_o2012)
  o2058 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_2", S_o2058)
  o2104 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_m_2", S_o2104)
  o2150 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_1", S_o2150)
  o2196 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_edgering_4", S_o2196)
  o2242 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_8", S_o2242)
  o2288 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_3", S_o2288)
  o2334 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_4", S_o2334)
  o2380 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_13", S_o2380)
  o2426 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_m_4", S_o2426)
  o2472 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_6", S_o2472)
  o2518 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_7", S_o2518)
  o2564 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_4", S_o2564)
  o2610 = BindEasy(Node_Find("/Scenario_Static/Object"), "pla_harvester_1", S_o2610)
  o2657 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_2", S_o2657)
  o2703 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_2", S_o2703)
  o2749 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_2", S_o2749)
  o2795 = BindEasy(Node_Find("/Scenario_Static/Object"), "xter_megalith_l_01_3", S_o2795)
  o2841 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_3", S_o2841)
  o2887 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_3", S_o2887)
  o2933 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_4", S_o2933)
  o2979 = BindEasy(Node_Find("/Scenario_Static/Object"), "xter_megalith_l_02_4", S_o2979)
  o3025 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_4", S_o3025)
  o3071 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_5", S_o3071)
  o3117 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_5", S_o3117)
  o3163 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_5", S_o3163)
  o3209 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_5z", S_o3209)
  o3255 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_6", S_o3255)
  o3301 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_6", S_o3301)
  o3347 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_6x", S_o3347)
  o3393 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_6", S_o3393)
  o3439 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_1", S_o3439)
  o3485 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_1x", S_o3485)
  o3531 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_2", S_o3531)
  o3577 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_2x", S_o3577)
  o3623 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_1", S_o3623)
  o3669 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_1x", S_o3669)
  o3715 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_1", S_o3715)
  o3761 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_1x", S_o3761)
  o3807 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_1", S_o3807)
  o3853 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_1", S_o3853)
  o3899 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_1", S_o3899)
  o3945 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_1", S_o3945)
  o3991 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_1b", S_o3991)
  o4037 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_1", S_o4037)
  o4083 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_1b", S_o4083)
  o4129 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_1", S_o4129)
  o4175 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresenceBox_1", S_o4175)
  o4180.Start()
  o4181 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o4181)
  o4227 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine01_1", S_o4227)
  o4268 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine01_2", S_o4268)
  o4309 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine01_3", S_o4309)
  o4350 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine01_4", S_o4350)
  o4391 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine01_5", S_o4391)
  o4432 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine01_6", S_o4432)
  o4473 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine01_7", S_o4473)
  o4514 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine01_8", S_o4514)
  o4555 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine01_9", S_o4555)
  o4596 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine01_10", S_o4596)
  o4637 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine01_11", S_o4637)
  o4678 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine01_12", S_o4678)
  o4719 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine01_13", S_o4719)
  o4760 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine01_14", S_o4760)
  o4801 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine01_15", S_o4801)
  o4842 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine01_16", S_o4842)
  o4883 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine01_17", S_o4883)
  o4924 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine01_18", S_o4924)
  o4965 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine01_19", S_o4965)
  o5006 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine01_20", S_o5006)
  o5047 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1", S_o5047)
  o5050.Start()
  o5052 = BindEasy(Node_Find("/"), "Camera", S_o5052)
  o5053 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_1", S_o5053)
  o5056 = BindEasy(Node_Find("/InGameSequences/Director"), "Director_1", S_o5056)
  o5054 = { {}, o4181 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
