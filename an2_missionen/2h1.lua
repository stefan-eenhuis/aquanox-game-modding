-- dekompiliert aus 2h1.sco
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
  Terrain_LoadTerrain(node1, "map/2H1/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/2H1/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/2H1/Lmsh/", "map/2H1/Ltex/")
  Game_SetTerrainDepth(node0, 1224)
  Game_SetDecompressionHeight(node0, 600)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.07451, 0.082353, 0.086275)
  Game_SetParallelLightT(node0, 0.235294, 0.254902, 0.262745)
  Game_SetParallelLightB(node0, 0.262745, 0.294118, 0.298039)
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_2h1.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_2H1.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient2.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit2.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_tension2.sam", 2)
  Game_SetNPCHitFactor(node0, 1.5)
  Game_SetEnvironmentCubeMap(node0, "map/2H1/CubeMap/envcubemap.dds")
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
  node8 = Node_CreateNode("nod_generic", "mac_building1_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(1036.271, 3412.559, 382.755), MAT_Vector3(-90.06017, 0, 0))
  Node_ParseIniFile(node8, "osd/mac/mac_building1.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "mac_dolphinhab_des_1")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(718, 3601.285, 390), MAT_Vector3(-89.74001, 0, 0))
  Node_ParseIniFile(node9, "osd/mac/mac_dolphinhab_des.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, 355)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "gen_pplant1_1")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(1207.468, 3356.92, 430.7171), MAT_Vector3(-55.58254, 0, 0))
  Node_ParseIniFile(node10, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "gen_pplant1_2")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(1127.089, 3464.817, 433.8159), MAT_Vector3(-13.98678, 0, 0))
  Node_ParseIniFile(node11, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "gen_pplant1_3")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(756.3526, 3477.839, 410.8851), MAT_Vector3(179.8856, 0, 0))
  Node_ParseIniFile(node12, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "mac_shelter_docking_1")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(595.5443, 3453.234, 434.2682), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node13, "osd/mac/mac_shelter_docking.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "mac_shelter_docking_2")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(737.6559, 3285.89, 414.0591), MAT_Vector3(-0.076311, 0, 0))
  Node_ParseIniFile(node14, "osd/mac/mac_shelter_docking.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "mac_beacon_1")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(833.5653, 3077.47, 466.2389), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node15, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "mac_beacon_2")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(1304.163, 3408.467, 392.9782), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node16, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "gen_metalblock2_1")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(778.9571, 3123.494, 450.0438), MAT_Vector3(90.27907, 0, 0))
  Node_ParseIniFile(node17, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "gen_tower_1")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(1160.787, 3437.807, 425.1631), MAT_Vector3(-66.51579, 0, 0))
  Node_ParseIniFile(node18, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "gen_tower_2")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(1140.698, 3417.997, 423.7347), MAT_Vector3(-21.62695, 0, 0))
  Node_ParseIniFile(node19, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "gen_tank_sml_1")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(1179.667, 3398.65, 420.6582), MAT_Vector3(44.72301, 0, 0))
  Node_ParseIniFile(node20, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "gen_tank_sml3_1")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(819.3264, 3514.367, 384.4718), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node21, "osd/gen/gen_tank_sml3.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_turret", "west_turret_medium_1")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(884.0201, 3434.199, 429.7916), MAT_Vector3(55.95195, 0, 0))
  Node_ParseIniFile(node22, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_turret", "west_turret_medium_2")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(565.1802, 3295.781, 464.7269), MAT_Vector3(140.8209, 0, 0))
  Node_ParseIniFile(node23, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_turret", "west_turret_medium_3")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(498.3819, 3348.113, 463.7966), MAT_Vector3(140.8209, 0, 0))
  Node_ParseIniFile(node24, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_turret", "south_turret_medium_1")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(712.8503, 3134.465, 438.9503), MAT_Vector3(140.8209, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_turret", "south_turret_medium_2")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(965.1307, 3025.83, 510.6224), MAT_Vector3(178.7353, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_turret", "south_turret_medium_3")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(1082.337, 3144.519, 474.9456), MAT_Vector3(178.7353, 0, 0))
  Node_ParseIniFile(node27, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_turret", "east_turret_medium_1")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(1363.261, 3222.201, 433.7468), MAT_Vector3(-90.96783, 0, 0))
  Node_ParseIniFile(node28, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_turret", "east_turret_medium_2")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(1409.89, 3407.836, 400.1134), MAT_Vector3(-90.96783, 0, 0))
  Node_ParseIniFile(node29, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_turret", "east_turret_medium_3")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(1072.605, 3381.117, 457.4124), MAT_Vector3(-90.96783, 0, 0))
  Node_ParseIniFile(node30, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_turret", "west_torptower_1")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(883.3695, 3409.494, 435.167), MAT_Vector3(-51.08249, 0, 0))
  Node_ParseIniFile(node31, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_turret", "west_torptower_2")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(529.7111, 3345.541, 470.1982), MAT_Vector3(140.2111, 0, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_turret", "south_torptower_1")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(834.09, 3164.292, 522.9156), MAT_Vector3(179.798, 0, 0))
  Node_ParseIniFile(node33, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_turret", "south_torptower_2")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(1126.098, 3176.869, 474.4971), MAT_Vector3(176.419, 0, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_turret", "east_torptower_1")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(1072.107, 3402.513, 462.9817), MAT_Vector3(-90.14555, 0, 0))
  Node_ParseIniFile(node35, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_turret", "east_torptower_2")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(1342.553, 3247.383, 435.7561), MAT_Vector3(-90.14555, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_turret", "east_torp_m_1")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(1221.447, 3409.702, 438.3675), MAT_Vector3(-90.28814, 0, 0))
  Node_ParseIniFile(node37, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_turret", "east_torp_m_2")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(1082.207, 3236.682, 426.5974), MAT_Vector3(-90.28814, 0, 0))
  Node_ParseIniFile(node38, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_turret", "east_torp_m_3")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(969.0925, 3239.328, 425.494), MAT_Vector3(93.49996, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_turret", "south_torp_m_1")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(930.7949, 3038.509, 516.6637), MAT_Vector3(-178.5329, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_quay_1")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(1970.451, 1761.127, 280.0342), MAT_Vector3(-42.70681, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_quay_2")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(2135.781, 1574.54, 280.0342), MAT_Vector3(-42.70681, 0, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "mac_industry2_1")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(2159.549, 1831.932, 306.6181), MAT_Vector3(-41.45599, 0, 0))
  Node_ParseIniFile(node43, "osd/mac/mac_industry2.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_rohr_big03_1")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(2015.243528, 1707.83301, 273.135), MAT_Vector3(136, 0, 0))
  Node_ParseIniFile(node44, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_rohr_small03_1")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(2028.057, 1697.593, 272.294), MAT_Vector3(136, 0, 0))
  Node_ParseIniFile(node45, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_rohr_small03_2")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(2035.303, 1691.406, 270.7112), MAT_Vector3(136, 0, 0))
  Node_ParseIniFile(node46, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "gen_rohr_small03_3")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(1762.027, 1440.893, 270.7112), MAT_Vector3(136, 0, 0))
  Node_ParseIniFile(node47, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "gen_rohr_small01_1")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(1657.203, 1336.518, 270), MAT_Vector3(136, 0, 0))
  Node_ParseIniFile(node48, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "mac_industry1_1")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(1897.346, 1566.414, 306.2688), MAT_Vector3(-135.5422, 0, 0))
  Node_ParseIniFile(node49, "osd/mac/mac_industry1.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "mac_industry3_1")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(1578.086, 1265.182, 313.8715), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node50, "osd/mac/mac_industry3.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_metalblock3_1")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(1325.454, 1281.151, 271.8456), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "gen_rohr_big02_1")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(1455.247, 1293.674, 272.6377), MAT_Vector3(-90.10879, 0, 0))
  Node_ParseIniFile(node52, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_starfound_1")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(1333.473, 1212.237, 295.9616), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node53, "osd/gen/gen_starfound.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "gen_vehiclestation_1")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(1326.418, 1205.308, 270.0247), MAT_Vector3(-89.93887, 0, 0))
  Node_ParseIniFile(node54, "osd/gen/gen_vehiclestation.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "gen_metalblock2_2")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(1307.614, 1418.906, 260.1052), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node55, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "gen_rohr_small02_1")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(1321.727, 1288.681, 272.1944), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node56, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "gen_turret_socket_1")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(1935.43, 1722.226, 300.4983), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node57, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "gen_turret_socket_2")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(2009.221, 1803.637, 300.4983), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node58, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "gen_turret_socket_3")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(2174.85, 1616.753, 300.4983), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node59, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "gen_turret_socket_4")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(2113.491, 1548.978, 300.4983), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node60, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "gen_rohr_small03_1_1")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(716.8548, 3664.92, 380), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node61, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "gen_rohr_small03_1_2")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(736.1471, 3664.746, 380), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node62, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "gen_rohr_small03_1_3")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(697.7081, 3664.92, 380), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node63, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "gen_gangway02_1")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(707.1802, 3723.037, 390), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node64, "osd/gen/gen_gangway02.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "gen_gangway02_2")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(726.4749, 3714.447, 390), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node65, "osd/gen/gen_gangway02.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "gen_metalblock1_1")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(772.552, 3655.148, 346.5717), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node66, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "gen_metalblock2_3")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(758.2131, 3705.849, 353.6112), MAT_Vector3(179.9222, 0, 0))
  Node_ParseIniFile(node67, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "gen_elfnote_1")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(1645.185, 2382.484, 352.6529), MAT_Vector3(-23.02732, 0, 0))
  Node_ParseIniFile(node68, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "gen_elfnote_2")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(1632.587, 3408.278, 372.4213), MAT_Vector3(-67.85966, 0, 0))
  Node_ParseIniFile(node69, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "gen_elfnote_3")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(2663.7, 3430.743, 339.3374), MAT_Vector3(-67.85966, 0, 0))
  Node_ParseIniFile(node70, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "gen_rohr_small01_2")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(1644.827, 2442.928, 333.7858), MAT_Vector3(0, -10, 0))
  Node_ParseIniFile(node71, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "gen_rohr_small01_3")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(1602.642, 2341.429, 333.7858), MAT_Vector3(131.1231, -10, 0))
  Node_ParseIniFile(node72, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "gen_rohr_small01_4")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(1603.032, 2425.173, 333.7858), MAT_Vector3(46.45272, -10, 0))
  Node_ParseIniFile(node73, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "gen_rohr_small01_5")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(1649.686, 2322.69, 333.7858), MAT_Vector3(-179.9832, -10, 0))
  Node_ParseIniFile(node74, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "gen_rohr_small01_6")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(1614.492, 1368.056, 269.001), MAT_Vector3(0.088404, -10, 0))
  Node_ParseIniFile(node75, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "gen_rohr_small01_7")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(1636.124, 3349.02, 358.1536), MAT_Vector3(-179.7024, -10, 0))
  Node_ParseIniFile(node76, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "gen_rohr_small01_8")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(1686.298, 3409.585, 348.8947), MAT_Vector3(-90.54291, -30.16311, -2.814507))
  Node_ParseIniFile(node77, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "gen_rohr_small01_9")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(2602.639, 3430.215, 318.5048), MAT_Vector3(90.03651, -8.687073, -0.351063))
  Node_ParseIniFile(node78, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "gen_rohr_small01_10")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(2704.256, 3473.514, 326.4406), MAT_Vector3(-44.23916, -8.687073, -0.351063))
  Node_ParseIniFile(node79, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "pla_harvester_static_1")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(3069.195016, 398.720002, 713.348532), MAT_Vector3(-15.697486, 0, 0))
  Node_ParseIniFile(node80, "osd/pla/pla_harvester.osd")
  Body_SetFriendOrFoeID(node80, 2)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_fx_rays", "fx_rays_2H1_1")
  Node_AddSon(node7, node81)
  Node_ParseIniFile(node81, "osd/fx_rays/fx_rays_2H1.osd")
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_fx_sky", "fx_sky_2H1_1")
  Node_AddSon(node7, node82)
  Node_ParseIniFile(node82, "osd/fx_sky/fx_sky_2H1.osd")
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_fx_flare", "fx_flare_2H1_1")
  Node_AddSon(node7, node83)
  Node_ParseIniFile(node83, "osd/fx_flare/fx_flare_2H1.osd")
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_fx_plankton", "fx_plankton_cyan_n_1")
  Node_AddSon(node7, node84)
  Node_ParseIniFile(node84, "osd/fx_plankton/fx_plankton_cyan_n.osd")
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_generic", "ter_megalith_l_01_1")
  Node_AddSon(node7, node85)
  Body_SetCS(node85, MAT_Vector3(2667.251672, 1080.32788, 215.8139), MAT_Vector3(11.659957, 4.303874, -7.088747))
  Node_ParseIniFile(node85, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "ter_megalith_l_02")
  Node_AddSon(node7, node86)
  Body_SetCS(node86, MAT_Vector3(658.327414, 2744.659867, 118.630904), MAT_Vector3(11.65996, 4.303874, -7.088747))
  Node_ParseIniFile(node86, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "ter_megalith_l_05")
  Node_AddSon(node7, node87)
  Body_SetCS(node87, MAT_Vector3(1364.061656, 3486.253133, 366.284878), MAT_Vector3(-9.493967, -14.538658, -0.248473))
  Node_ParseIniFile(node87, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "ter_megalith_l_02_1")
  Node_AddSon(node7, node88)
  Body_SetCS(node88, MAT_Vector3(3111.105654, 717.690913, 449.278007), MAT_Vector3(-63.711672, 12.927107, -0.147406))
  Node_ParseIniFile(node88, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "ter_megalith_l_02_b")
  Node_AddSon(node7, node89)
  Body_SetCS(node89, MAT_Vector3(1122.937164, 2184.830259, 128.546132), MAT_Vector3(96.961675, 42.737749, 48.378815))
  Node_ParseIniFile(node89, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_generic", "ter_megalith_l_03_1")
  Node_AddSon(node7, node90)
  Body_SetCS(node90, MAT_Vector3(2383.615344, 1095.278729, 269.421375), MAT_Vector3(-12.343379, -6.339519, 6.739423))
  Node_ParseIniFile(node90, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node90, 0)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_generic", "ter_megalith_l_04")
  Node_AddSon(node7, node91)
  Body_SetCS(node91, MAT_Vector3(1712.866452, 2477.388431, 312.179297), MAT_Vector3(-12.34338, -6.339519, 6.739423))
  Node_ParseIniFile(node91, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node91, 0)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_generic", "ter_megalith_l_06")
  Node_AddSon(node7, node92)
  Body_SetCS(node92, MAT_Vector3(1022.671197, 2620.206745, 121.63153), MAT_Vector3(82.319518, 9.815904, 23.022658))
  Node_ParseIniFile(node92, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node92, 0)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "ter_megalith_l_07")
  Node_AddSon(node7, node93)
  Body_SetCS(node93, MAT_Vector3(1930.351265, 1938.968855, 251.088996), MAT_Vector3(165.303169, -16.601821, 3.93834))
  Node_ParseIniFile(node93, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node93, 0)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_generic", "ter_megalith_m_01_1")
  Node_AddSon(node7, node94)
  Body_SetCS(node94, MAT_Vector3(2466.709025, 786.608889, 315.919523), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node94, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node94, 0)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_generic", "ter_megalith_m_01_2")
  Node_AddSon(node7, node95)
  Body_SetCS(node95, MAT_Vector3(814.381419, 2786.59582, 105.713791), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node95, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node95, 0)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_generic", "ter_megalith_m_02_1")
  Node_AddSon(node7, node96)
  Body_SetCS(node96, MAT_Vector3(2712.276274, 808.829114, 275.680259), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node96, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node96, 0)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_generic", "ter_megalith_m_03")
  Node_AddSon(node7, node97)
  Body_SetCS(node97, MAT_Vector3(1297.108631, 1941.058222, 264.07178), MAT_Vector3(-38.411451, -13.824367, -10.944952))
  Node_ParseIniFile(node97, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node97, 0)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_generic", "ter_megalith_m_03_c")
  Node_AddSon(node7, node98)
  Body_SetCS(node98, MAT_Vector3(3125.361542, 414.782451, 387.071945), MAT_Vector3(20.80533, -13.82437, -10.94495))
  Node_ParseIniFile(node98, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node98, 0)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_generic", "ter_megalith_m_03_d")
  Node_AddSon(node7, node99)
  Body_SetCS(node99, MAT_Vector3(3038.485168, 392.010897, 356.94453), MAT_Vector3(-173.467861, 31.175903, 0.393151))
  Node_ParseIniFile(node99, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node99, 0)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1")
  Node_AddSon(node7, node100)
  Body_SetCS(node100, MAT_Vector3(2896.201119, 903.810646, 262.77147), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node100, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node100, 0)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_generic", "ter_megalith_s_01_b")
  Node_AddSon(node7, node101)
  Body_SetCS(node101, MAT_Vector3(1991.058208, 1896.146103, 351.989758), MAT_Vector3(77.972971, 11.063854, -7.271836))
  Node_ParseIniFile(node101, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node101, 0)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_generic", "ter_megalith_s_02")
  Node_AddSon(node7, node102)
  Body_SetCS(node102, MAT_Vector3(1639.306019, 2454.958473, 331.957811), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node102, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node102, 0)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_generic", "ter_megalith_s_02_b")
  Node_AddSon(node7, node103)
  Body_SetCS(node103, MAT_Vector3(2526.62182, 1618.735084, 292.105754), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node103, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node103, 0)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_generic", "ter_megalith_s_03")
  Node_AddSon(node7, node104)
  Body_SetCS(node104, MAT_Vector3(743.587217, 2699.739002, 119.983355), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node104, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node104, 0)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_generic", "ter_megalith_s_02_1")
  Node_AddSon(node7, node105)
  Body_SetCS(node105, MAT_Vector3(2540.741789, 1289.411883, 277.597357), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node105, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node105, 0)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_generic", "ter_megalith_s_02_l")
  Node_AddSon(node7, node106)
  Body_SetCS(node106, MAT_Vector3(3075.787063, 1338.540121, 450.314165), MAT_Vector3(-90.980281, 21.368436, 17.703802))
  Node_ParseIniFile(node106, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node106, 0)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1")
  Node_AddSon(node7, node107)
  Body_SetCS(node107, MAT_Vector3(2431.529943, 1043.806762, 253.22283), MAT_Vector3(5.540437, 2.978348, -4.110075))
  Node_ParseIniFile(node107, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node107, 0)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_generic", "ter_megalith_s_03_b")
  Node_AddSon(node7, node108)
  Body_SetCS(node108, MAT_Vector3(2372.497016, 2412.037816, 353.764882), MAT_Vector3(-162.132096, -31.656922, 11.409531))
  Node_ParseIniFile(node108, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node108, 0)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_generic", "ter_megalith_s_03_c")
  Node_AddSon(node7, node109)
  Body_SetCS(node109, MAT_Vector3(2572.049894, 1613.941625, 298.795349), MAT_Vector3(-148.210769, -3.232209, -2.030671))
  Node_ParseIniFile(node109, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node109, 0)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_generic", "ter_rock_l_01_1")
  Node_AddSon(node7, node110)
  Body_SetCS(node110, MAT_Vector3(2337.257227, 1507.577498, 249.846844), MAT_Vector3(-20.588028, -15.653506, 13.633999))
  Node_ParseIniFile(node110, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node110, 0)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_generic", "ter_rock_l_05")
  Node_AddSon(node7, node111)
  Body_SetCS(node111, MAT_Vector3(1391.789966, 3076.449561, 289.58303), MAT_Vector3(-68.393685, -46.843167, -3.494235))
  Node_ParseIniFile(node111, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node111, 0)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_generic", "ter_rock_l_05_b")
  Node_AddSon(node7, node112)
  Body_SetCS(node112, MAT_Vector3(2321.974378, 2220.971923, 259.680316), MAT_Vector3(-68.39369, -46.84317, -3.494235))
  Node_ParseIniFile(node112, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node112, 0)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_generic", "ter_rock_l_02")
  Node_AddSon(node7, node113)
  Body_SetCS(node113, MAT_Vector3(1226.330205, 1149.37987, 262.262321), MAT_Vector3(-20.58803, -15.65351, 13.634))
  Node_ParseIniFile(node113, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node113, 0)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_generic", "ter_rock_l_02_b")
  Node_AddSon(node7, node114)
  Body_SetCS(node114, MAT_Vector3(1236.417764, 2436.083946, 187.881355), MAT_Vector3(-112.201948, -58.869918, -27.612588))
  Node_ParseIniFile(node114, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node114, 0)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_generic", "ter_rock_m_01_1")
  Node_AddSon(node7, node115)
  Body_SetCS(node115, MAT_Vector3(2274.553779, 1434.536393, 286.419085), MAT_Vector3(-166.840046, -55.690224, -44.406323))
  Node_ParseIniFile(node115, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node115, 0)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_generic", "ter_rock_m_01_c")
  Node_AddSon(node7, node116)
  Body_SetCS(node116, MAT_Vector3(2905.00827, 316.429069, 454.496165), MAT_Vector3(-166.84, -55.69022, -44.40632))
  Node_ParseIniFile(node116, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node116, 0)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_generic", "ter_rock_m_01_b")
  Node_AddSon(node7, node117)
  Body_SetCS(node117, MAT_Vector3(1235.937645, 2454.952789, 225.28269), MAT_Vector3(105.312948, 20.044909, -45.677999))
  Node_ParseIniFile(node117, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node117, 0)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_generic", "ter_rock_m_02")
  Node_AddSon(node7, node118)
  Body_SetCS(node118, MAT_Vector3(1460.87764, 1179.355264, 283.280144), MAT_Vector3(-166.84, -55.69022, -44.40632))
  Node_ParseIniFile(node118, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node118, 0)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_generic", "ter_rock_s_01_1")
  Node_AddSon(node7, node119)
  Body_SetCS(node119, MAT_Vector3(2405.68959, 1281.919624, 264.47574), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node119, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node119, 0)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_generic", "ter_rock_s_01_b")
  Node_AddSon(node7, node120)
  Body_SetCS(node120, MAT_Vector3(1242.736884, 2443.427508, 254.136577), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node120, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node120, 0)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_generic", "ter_bridgering_l_1")
  Node_AddSon(node7, node121)
  Body_SetCS(node121, MAT_Vector3(2678.498358, 1648.590597, 329.711139), MAT_Vector3(-120.685072, 0, 0))
  Node_ParseIniFile(node121, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node121, 0)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_generic", "ter_bridgering_m_1")
  Node_AddSon(node7, node122)
  Body_SetCS(node122, MAT_Vector3(3110.723971, 1292.593025, 440.783972), MAT_Vector3(-81.391398, 0, 0))
  Node_ParseIniFile(node122, "osd/ter/ter_bridgering_m.osd")
  Body_SetFriendOrFoeID(node122, 0)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_generic", "ter_edgering_1")
  Node_AddSon(node7, node123)
  Body_SetCS(node123, MAT_Vector3(761.622557, 2518.547807, 158.055544), MAT_Vector3(-100.918129, 0, 0))
  Node_ParseIniFile(node123, "osd/ter/ter_edgering.osd")
  Body_SetFriendOrFoeID(node123, 0)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_generic", "ter_megalith_l_01_2")
  Node_AddSon(node7, node124)
  Body_SetCS(node124, MAT_Vector3(3697.6822, 2424.032073, 404.266653), MAT_Vector3(77.101566, -7.538398, 18.363455))
  Node_ParseIniFile(node124, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node124, 0)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_generic", "ter_megalith_l_01_2c")
  Node_AddSon(node7, node125)
  Body_SetCS(node125, MAT_Vector3(3823.419636, 2979.556049, 334.846101), MAT_Vector3(-113.809936, -7.538398, 18.36345))
  Node_ParseIniFile(node125, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node125, 0)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_generic", "ter_megalith_l_02_2")
  Node_AddSon(node7, node126)
  Body_SetCS(node126, MAT_Vector3(3461.455717, 2739.515676, 388.8135), MAT_Vector3(-31.989525, -2.09887, 20.049734))
  Node_ParseIniFile(node126, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node126, 0)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, -1, 0)
  Body_SetCargoKey(node126, -1, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_generic", "ter_megalith_l_03_2")
  Node_AddSon(node7, node127)
  Body_SetCS(node127, MAT_Vector3(3892.7065, 2710.989342, 373.65583), MAT_Vector3(-36.116985, 9.557309, -9.35314))
  Node_ParseIniFile(node127, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node127, 0)
  Body_SetNameKey(node127, -1)
  Body_SetCargoKey(node127, -1, 0)
  Body_SetCargoKey(node127, -1, 1)
  Body_SetCargoKey(node127, -1, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_generic", "ter_megalith_m_01_3")
  Node_AddSon(node7, node128)
  Body_SetCS(node128, MAT_Vector3(3564.41692, 2624.127096, 315.674561), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node128, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node128, 0)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, -1, 0)
  Body_SetCargoKey(node128, -1, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_generic", "ter_megalith_m_02_2")
  Node_AddSon(node7, node129)
  Body_SetCS(node129, MAT_Vector3(3772.951081, 2794.333905, 336.962764), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node129, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node129, 0)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_generic", "ter_megalith_s_01_2")
  Node_AddSon(node7, node130)
  Body_SetCS(node130, MAT_Vector3(3742.601096, 2824.194181, 331.7875), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node130, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node130, 0)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_generic", "ter_megalith_s_02_2")
  Node_AddSon(node7, node131)
  Body_SetCS(node131, MAT_Vector3(3594.709341, 2653.065022, 325.015969), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node131, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node131, 0)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_generic", "ter_megalith_s_03_2")
  Node_AddSon(node7, node132)
  Body_SetCS(node132, MAT_Vector3(3720.97666, 2759.869263, 306.246916), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node132, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node132, 0)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_fx_plant", "org_grass_l_white_1")
  Node_AddSon(node7, node133)
  Node_ParseIniFile(node133, "osd/fx_plant/org_grass_l_white.osd")
  FX_Plant_SetMap(node133, "map/2H1/Terrain/org_grass_l.tga")
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_fx_plant", "org_grass_s_white_1")
  Node_AddSon(node7, node134)
  Node_ParseIniFile(node134, "osd/fx_plant/org_grass_s_white.osd")
  FX_Plant_SetMap(node134, "map/2H1/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node7, node135)
  Node_ParseIniFile(node135, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node135, "map/2H1/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node136)
  Node_ParseIniFile(node136, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node136, "map/2H1/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_generic", "ter_megalith_l_01_3")
  Node_AddSon(node7, node137)
  Body_SetCS(node137, MAT_Vector3(3278.384723, 2919.810571, 514.190163), MAT_Vector3(5.552932, -2.903298, 5.652196))
  Node_ParseIniFile(node137, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node137, 0)
  Body_SetNameKey(node137, -1)
  Body_SetCargoKey(node137, -1, 0)
  Body_SetCargoKey(node137, -1, 1)
  Body_SetCargoKey(node137, -1, 2)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_generic", "ter_megalith_l_02_3")
  Node_AddSon(node7, node138)
  Body_SetCS(node138, MAT_Vector3(3213.171905, 3075.062446, 371.585613), MAT_Vector3(7.086622, -3.584553, 7.211663))
  Node_ParseIniFile(node138, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node138, 0)
  Body_SetNameKey(node138, -1)
  Body_SetCargoKey(node138, -1, 0)
  Body_SetCargoKey(node138, -1, 1)
  Body_SetCargoKey(node138, -1, 2)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_generic", "ter_megalith_l_03_3")
  Node_AddSon(node7, node139)
  Body_SetCS(node139, MAT_Vector3(3474.903657, 3130.047816, 471.043145), MAT_Vector3(30.86509, -8.259517, -23.577548))
  Node_ParseIniFile(node139, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node139, 0)
  Body_SetNameKey(node139, -1)
  Body_SetCargoKey(node139, -1, 0)
  Body_SetCargoKey(node139, -1, 1)
  Body_SetCargoKey(node139, -1, 2)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_generic", "ter_megalith_m_01_4")
  Node_AddSon(node7, node140)
  Body_SetCS(node140, MAT_Vector3(3361.080912, 2925.772692, 515.776155), MAT_Vector3(53.292181, -6.318553, 19.996438))
  Node_ParseIniFile(node140, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node140, 0)
  Body_SetNameKey(node140, -1)
  Body_SetCargoKey(node140, -1, 0)
  Body_SetCargoKey(node140, -1, 1)
  Body_SetCargoKey(node140, -1, 2)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("nod_generic", "ter_megalith_m_01_4b")
  Node_AddSon(node7, node141)
  Body_SetCS(node141, MAT_Vector3(2933.533226, 3163.311844, 440.977991), MAT_Vector3(53.29218, -6.318553, 19.99644))
  Node_ParseIniFile(node141, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node141, 0)
  Body_SetNameKey(node141, -1)
  Body_SetCargoKey(node141, -1, 0)
  Body_SetCargoKey(node141, -1, 1)
  Body_SetCargoKey(node141, -1, 2)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("nod_generic", "ter_megalith_m_02_3")
  Node_AddSon(node7, node142)
  Body_SetCS(node142, MAT_Vector3(3390.036603, 3276.924984, 380.764264), MAT_Vector3(-40.086646, 27.79528, -2.564921))
  Node_ParseIniFile(node142, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node142, 0)
  Body_SetNameKey(node142, -1)
  Body_SetCargoKey(node142, -1, 0)
  Body_SetCargoKey(node142, -1, 1)
  Body_SetCargoKey(node142, -1, 2)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("nod_generic", "ter_megalith_s_01_3")
  Node_AddSon(node7, node143)
  Body_SetCS(node143, MAT_Vector3(2906.028717, 3188.745096, 404.764882), MAT_Vector3(10.121178, -5.374619, 5.248062))
  Node_ParseIniFile(node143, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node143, 0)
  Body_SetNameKey(node143, -1)
  Body_SetCargoKey(node143, -1, 0)
  Body_SetCargoKey(node143, -1, 1)
  Body_SetCargoKey(node143, -1, 2)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("nod_generic", "ter_megalith_s_02_3")
  Node_AddSon(node7, node144)
  Body_SetCS(node144, MAT_Vector3(3414.342081, 3120.114462, 421.837811), MAT_Vector3(89.065506, -2.842054, 25.352884))
  Node_ParseIniFile(node144, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node144, 0)
  Body_SetNameKey(node144, -1)
  Body_SetCargoKey(node144, -1, 0)
  Body_SetCargoKey(node144, -1, 1)
  Body_SetCargoKey(node144, -1, 2)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("nod_generic", "ter_megalith_s_03_3")
  Node_AddSon(node7, node145)
  Body_SetCS(node145, MAT_Vector3(3196.491016, 3122.699424, 370.536722), MAT_Vector3(35.698934, -12.121064, 20.038176))
  Node_ParseIniFile(node145, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node145, 0)
  Body_SetNameKey(node145, -1)
  Body_SetCargoKey(node145, -1, 0)
  Body_SetCargoKey(node145, -1, 1)
  Body_SetCargoKey(node145, -1, 2)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node146)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node146, node147)
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node146, node148)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Path", "FinchPath_1")
  Node_AddSon(node148, node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node149, node150)
  Position_SetPosition(node150, MAT_Vector3(2594.997741, 1020.50052, 370))
  Position_SetRadius(node150, 5)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node149, node151)
  Position_SetPosition(node151, MAT_Vector3(2310.278786, 1448.697672, 370))
  Position_SetRadius(node151, 5)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node149, node152)
  Position_SetPosition(node152, MAT_Vector3(2032.082328, 1692.120088, 370))
  Position_SetRadius(node152, 5)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node149, node153)
  Position_SetPosition(node153, MAT_Vector3(1801.518713, 1867.448262, 370))
  Position_SetRadius(node153, 5)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node149, node154)
  Position_SetPosition(node154, MAT_Vector3(1262.915831, 2131.897304, 370))
  Position_SetRadius(node154, 5)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node149, node155)
  Position_SetPosition(node155, MAT_Vector3(1002.10662, 2451.823173, 370))
  Position_SetRadius(node155, 5)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node149, node156)
  Position_SetPosition(node156, MAT_Vector3(921.326033, 2670.472054, 400))
  Position_SetRadius(node156, 5)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node149, node157)
  Position_SetPosition(node157, MAT_Vector3(924.803458, 2899.984254, 600))
  Position_SetRadius(node157, 5)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node149, node158)
  Position_SetPosition(node158, MAT_Vector3(925.349782, 3285.786167, 600))
  Position_SetRadius(node158, 5)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_PatrolArea", "FinchTriggerArea")
  Node_AddSon(node148, node159)
  PatrolArea_SetPosition(node159, MAT_Vector3(0, 0, 0))
  PatrolArea_SetRadius(node159, 300)
  PatrolArea_SetMinZ(node159, -100)
  PatrolArea_SetMaxZ(node159, 100)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_PatrolArea", "FinchFollowArea")
  Node_AddSon(node148, node160)
  PatrolArea_SetPosition(node160, MAT_Vector3(0, 0, 0))
  PatrolArea_SetRadius(node160, 450)
  PatrolArea_SetMinZ(node160, -150)
  PatrolArea_SetMaxZ(node160, 150)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Position", "FinchSinkPosition")
  Node_AddSon(node148, node161)
  Position_SetPosition(node161, MAT_Vector3(924.949201, 3285.234459, 450))
  Position_SetRadius(node161, 15)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Path", "FinchDockPath")
  Node_AddSon(node148, node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node162, node163)
  Position_SetPosition(node163, MAT_Vector3(810.368708, 3373.930261, 450))
  Position_SetRadius(node163, 5)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node162, node164)
  Position_SetPosition(node164, MAT_Vector3(927.805778, 3373.930463, 450))
  Position_SetRadius(node164, 5)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node162, node165)
  Position_SetPosition(node165, MAT_Vector3(972.414481, 3374.331501, 450))
  Position_SetRadius(node165, 5)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Path", "FinchDockFinalPath")
  Node_AddSon(node148, node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node166, node167)
  Position_SetPosition(node167, MAT_Vector3(941.708309, 3318.440298, 450))
  Position_SetRadius(node167, 5)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_PatrolArea", "OutpostBattle_PatrolArea")
  Node_AddSon(node148, node168)
  PatrolArea_SetPosition(node168, MAT_Vector3(2031.813521, 1697.931728, 460.123632))
  PatrolArea_SetRadius(node168, 250)
  PatrolArea_SetMinZ(node168, -100)
  PatrolArea_SetMaxZ(node168, 20)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_PatrolArea", "OutpostBattle_TriggerArea")
  Node_AddSon(node148, node169)
  PatrolArea_SetPosition(node169, MAT_Vector3(2031.814, 1697.932, 460.1236))
  PatrolArea_SetRadius(node169, 750)
  PatrolArea_SetMinZ(node169, -200)
  PatrolArea_SetMaxZ(node169, 50)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_PatrolArea", "OutpostBattle_FollowArea")
  Node_AddSon(node148, node170)
  PatrolArea_SetPosition(node170, MAT_Vector3(2031.814, 1697.932, 460.1236))
  PatrolArea_SetRadius(node170, 1280)
  PatrolArea_SetMinZ(node170, -200)
  PatrolArea_SetMaxZ(node170, 30)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Path", "HankPath_2")
  Node_AddSon(node148, node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node171, node172)
  Position_SetPosition(node172, MAT_Vector3(1434.009675, 1280.383563, 439.195442))
  Position_SetRadius(node172, 5)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node171, node173)
  Position_SetPosition(node173, MAT_Vector3(1378.152188, 1314.23722, 486.591496))
  Position_SetRadius(node173, 5)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_Path", "Harvester_1_ApproachPath")
  Node_AddSon(node148, node174)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node174, node175)
  Position_SetPosition(node175, MAT_Vector3(2930.005288, 457.228297, 382.994914))
  Position_SetRadius(node175, 5)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node174, node176)
  Position_SetPosition(node176, MAT_Vector3(2950.591032, 348.529806, 685.595517))
  Position_SetRadius(node176, 5)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Path", "Harvester_1_DockPath")
  Node_AddSon(node148, node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node177, node178)
  Position_SetPosition(node178, MAT_Vector3(2965.892865, 318.945988, 691))
  Position_SetRadius(node178, 5)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node177, node179)
  Position_SetPosition(node179, MAT_Vector3(3017.842931, 229.860598, 691))
  Position_SetRadius(node179, 5)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_PatrolArea", "Harvester_1_DockArea")
  Node_AddSon(node148, node180)
  PatrolArea_SetPosition(node180, MAT_Vector3(2947.806272, 509.169735, 694.004799))
  PatrolArea_SetRadius(node180, 100)
  PatrolArea_SetMinZ(node180, -50)
  PatrolArea_SetMaxZ(node180, 50)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_Path", "WingmenEscapePath")
  Node_AddSon(node148, node181)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node181, node182)
  Position_SetPosition(node182, MAT_Vector3(2085.152645, 1640.22889, 356.109563))
  Position_SetRadius(node182, 20)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node181, node183)
  Position_SetPosition(node183, MAT_Vector3(2373.632107, 1390.5004, 362.806912))
  Position_SetRadius(node183, 5)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node181, node184)
  Position_SetPosition(node184, MAT_Vector3(2593.220951, 1110.632265, 329.409979))
  Position_SetRadius(node184, 5)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node181, node185)
  Position_SetPosition(node185, MAT_Vector3(2666.417233, 753.262185, 390.201393))
  Position_SetRadius(node185, 5)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node181, node186)
  Position_SetPosition(node186, MAT_Vector3(2782.670151, 593.952632, 395.454871))
  Position_SetRadius(node186, 5)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node181, node187)
  Position_SetPosition(node187, MAT_Vector3(2886.006077, 469.088387, 363.036081))
  Position_SetRadius(node187, 5)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_PatrolArea", "HankDefendArea")
  Node_AddSon(node148, node188)
  PatrolArea_SetPosition(node188, MAT_Vector3(1445.26353, 1282.358103, 313.458855))
  PatrolArea_SetRadius(node188, 550)
  PatrolArea_SetMinZ(node188, -75)
  PatrolArea_SetMaxZ(node188, 270)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node146, node189)
  Node_EnterSimulation(node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node146, node190)
  Node_EnterSimulation(node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Trigger", "OutpostSniperTrap")
  Node_AddSon(node190, node191)
  Body_SetFriendOrFoeID(node191, 3)
  Body_SetCS(node191, MAT_Vector3(2014.284925, 1718.184245, 356.586913), MAT_Vector3(-43.931212, 0, 0))
  Trigger_SetBoxMode(node191, 75, 300, 150)
  Node_EnterSimulation(node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Trigger", "TrapEscaped")
  Node_AddSon(node190, node192)
  Body_SetFriendOrFoeID(node192, 0)
  Body_SetCS(node192, MAT_Vector3(959.6753, 2464.694, 373.606), MAT_Vector3(55.83093, 0, 0))
  Trigger_SetBoxMode(node192, 300, 40, 200)
  Node_EnterSimulation(node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Trigger", "MissionWon")
  Node_AddSon(node190, node193)
  Body_SetFriendOrFoeID(node193, 0)
  Body_SetCS(node193, MAT_Vector3(921.423246, 3108.023582, 482.191693), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node193, 256, 64, 150)
  Node_EnterSimulation(node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Trigger", "HankEscape")
  Node_AddSon(node190, node194)
  Body_SetFriendOrFoeID(node194, 0)
  Body_SetPosition(node194, MAT_Vector3(1449.243624, 1280.383563, 334.698874))
  Trigger_SetPresenceSphere(node194, 150)
  Node_EnterSimulation(node194)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node146, node195)
  Node_EnterSimulation(node195)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node195, node196)
  Body_SetCS(node196, MAT_Vector3(2882.202353, 672.709249, 350), MAT_Vector3(-164.093462, 0, 0))
  Node_ParseIniFile(node196, "osd/pla/pla_ship2.osd")
  Body_SetFriendOrFoeID(node196, 1)
  Node_EnterSimulation(node196)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_Directory", "DestructableBuildings")
  Node_AddSon(node195, node197)
  Node_EnterSimulation(node197)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("nod_generic", "East_trafo_des")
  Node_AddSon(node197, node198)
  Body_SetCS(node198, MAT_Vector3(1057.855, 3461.515, 425.3068), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node198, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node198, 0)
  Body_SetNameKey(node198, -1)
  Body_SetCargoKey(node198, -1, 0)
  Body_SetCargoKey(node198, -1, 1)
  Body_SetCargoKey(node198, -1, 2)
  Node_EnterSimulation(node198)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("nod_generic", "West_trafo_des")
  Node_AddSon(node197, node199)
  Body_SetCS(node199, MAT_Vector3(1004.195, 3461.32, 425.3068), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node199, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node199, 0)
  Body_SetNameKey(node199, -1)
  Body_SetCargoKey(node199, -1, 0)
  Body_SetCargoKey(node199, -1, 1)
  Body_SetCargoKey(node199, -1, 2)
  Node_EnterSimulation(node199)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("nod_generic", "South_trafo_des")
  Node_AddSon(node197, node200)
  Body_SetCS(node200, MAT_Vector3(1010.121, 3357.456, 416.9589), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node200, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node200, 0)
  Body_SetNameKey(node200, -1)
  Body_SetCargoKey(node200, -1, 0)
  Body_SetCargoKey(node200, -1, 1)
  Body_SetCargoKey(node200, -1, 2)
  Node_EnterSimulation(node200)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("nod_generic", "gen_tank_big_des_1")
  Node_AddSon(node197, node201)
  Body_SetCS(node201, MAT_Vector3(1081.616, 3270.639, 412), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node201, "osd/gen/gen_tank_big_des.osd")
  Body_SetFriendOrFoeID(node201, 0)
  Body_SetNameKey(node201, -1)
  Body_SetCargoKey(node201, -1, 0)
  Body_SetCargoKey(node201, -1, 1)
  Body_SetCargoKey(node201, -1, 2)
  Node_EnterSimulation(node201)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("nod_generic", "gen_tank_big_des_2")
  Node_AddSon(node197, node202)
  Body_SetCS(node202, MAT_Vector3(1048.937, 3270.67, 412), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node202, "osd/gen/gen_tank_big_des.osd")
  Body_SetFriendOrFoeID(node202, 0)
  Body_SetNameKey(node202, -1)
  Body_SetCargoKey(node202, -1, 0)
  Body_SetCargoKey(node202, -1, 1)
  Body_SetCargoKey(node202, -1, 2)
  Node_EnterSimulation(node202)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("nod_generic", "gen_tank_big_des_3")
  Node_AddSon(node197, node203)
  Body_SetCS(node203, MAT_Vector3(1016.989, 3271.245, 412), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node203, "osd/gen/gen_tank_big_des.osd")
  Body_SetFriendOrFoeID(node203, 0)
  Body_SetNameKey(node203, -1)
  Body_SetCargoKey(node203, -1, 0)
  Body_SetCargoKey(node203, -1, 1)
  Body_SetCargoKey(node203, -1, 2)
  Node_EnterSimulation(node203)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("nod_generic", "gen_tank_big_des_4")
  Node_AddSon(node197, node204)
  Body_SetCS(node204, MAT_Vector3(819.8205, 3272.984, 399.8676), MAT_Vector3(-90.01401, 0, 0))
  Node_ParseIniFile(node204, "osd/gen/gen_tank_big_des.osd")
  Body_SetFriendOrFoeID(node204, 0)
  Body_SetNameKey(node204, -1)
  Body_SetCargoKey(node204, -1, 0)
  Body_SetCargoKey(node204, -1, 1)
  Body_SetCargoKey(node204, -1, 2)
  Node_EnterSimulation(node204)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("nod_generic", "gen_tank_big_des_5")
  Node_AddSon(node197, node205)
  Body_SetCS(node205, MAT_Vector3(820.9665, 3318.316, 395.5369), MAT_Vector3(-90.01401, 0, 0))
  Node_ParseIniFile(node205, "osd/gen/gen_tank_big_des.osd")
  Body_SetFriendOrFoeID(node205, 0)
  Body_SetNameKey(node205, -1)
  Body_SetCargoKey(node205, -1, 0)
  Body_SetCargoKey(node205, -1, 1)
  Body_SetCargoKey(node205, -1, 2)
  Node_EnterSimulation(node205)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("nod_vessel", "wng_Stoney")
  Node_AddSon(node195, node206)
  Body_SetCS(node206, MAT_Vector3(2835.861285, 675.157527, 350), MAT_Vector3(177.570606, 0, 0))
  Node_ParseIniFile(node206, "osd/wng/wng_stoney.osd")
  Body_SetFriendOrFoeID(node206, 2)
  Body_SetNameKey(node206, -1)
  Body_SetCargoKey(node206, -1, 0)
  Body_SetCargoKey(node206, -1, 1)
  Body_SetCargoKey(node206, -1, 2)
  Node_EnterSimulation(node206)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("nod_vessel", "mac_finch")
  Node_AddSon(node195, node207)
  Body_SetCS(node207, MAT_Vector3(2852.296213, 584.841115, 350), MAT_Vector3(46.540971, 0, 0))
  Node_ParseIniFile(node207, "osd/mac/mac_finch.osd")
  Body_SetFriendOrFoeID(node207, 2)
  Body_SetNameKey(node207, -1)
  Body_SetCargoKey(node207, -1, 0)
  Body_SetCargoKey(node207, -1, 1)
  Body_SetCargoKey(node207, -1, 2)
  Node_EnterSimulation(node207)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("nod_waypoint", "nav_escort_1")
  Node_AddSon(node195, node208)
  Body_SetPosition(node208, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node208, 200)
  Node_ParseIniFile(node208, "osd/nav/nav_escort.osd")
  Node_EnterSimulation(node208)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("nod_turret", "pir_tz_sniper_1")
  Node_AddSon(node195, node209)
  Body_SetCS(node209, MAT_Vector3(2164.891262, 1877.27607, 389.408219), MAT_Vector3(138.949117, 0, 0))
  Node_ParseIniFile(node209, "osd/pir_tz/pir_tz_sniper.osd")
  Body_SetFriendOrFoeID(node209, 3)
  Node_EnterSimulation(node209)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("nod_turret", "pir_tz_sniper_2")
  Node_AddSon(node195, node210)
  Body_SetCS(node210, MAT_Vector3(1857.602596, 1567.130916, 417.897863), MAT_Vector3(-44.552619, 0, 0))
  Node_ParseIniFile(node210, "osd/pir_tz/pir_tz_sniper.osd")
  Body_SetFriendOrFoeID(node210, 3)
  Node_EnterSimulation(node210)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("nod_vessel", "pir_tz_scout1_1")
  Node_AddSon(node195, node211)
  Body_SetCS(node211, MAT_Vector3(2295.087561, 1665.386218, 422.293382), MAT_Vector3(73.966645, 0, 0))
  Node_ParseIniFile(node211, "osd/pir_tz/pir_tz_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node211, 3)
  Body_SetNameKey(node211, -1)
  Body_SetCargoKey(node211, -1, 0)
  Body_SetCargoKey(node211, -1, 1)
  Body_SetCargoKey(node211, -1, 2)
  Node_EnterSimulation(node211)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("nod_vessel", "pir_tz_scout1_2")
  Node_AddSon(node195, node212)
  Body_SetCS(node212, MAT_Vector3(2190.652935, 1965.316297, 422.2934), MAT_Vector3(139.857713, 0, 0))
  Node_ParseIniFile(node212, "osd/pir_tz/pir_tz_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node212, 3)
  Body_SetNameKey(node212, -1)
  Body_SetCargoKey(node212, -1, 0)
  Body_SetCargoKey(node212, -1, 1)
  Body_SetCargoKey(node212, -1, 2)
  Node_EnterSimulation(node212)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("nod_vessel", "pir_tz_scout2_1")
  Node_AddSon(node195, node213)
  Body_SetCS(node213, MAT_Vector3(1861.58507, 1847.409551, 433.740566), MAT_Vector3(-120.180004, 0, 0))
  Node_ParseIniFile(node213, "osd/pir_tz/pir_tz_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node213, 3)
  Body_SetNameKey(node213, -1)
  Body_SetCargoKey(node213, -1, 0)
  Body_SetCargoKey(node213, -1, 1)
  Body_SetCargoKey(node213, -1, 2)
  Node_EnterSimulation(node213)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("nod_vessel", "pir_tz_scout2_2")
  Node_AddSon(node195, node214)
  Body_SetCS(node214, MAT_Vector3(2230.582155, 1480.346578, 426.465905), MAT_Vector3(48.249644, 0, 0))
  Node_ParseIniFile(node214, "osd/pir_tz/pir_tz_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node214, 3)
  Body_SetNameKey(node214, -1)
  Body_SetCargoKey(node214, -1, 0)
  Body_SetCargoKey(node214, -1, 1)
  Body_SetCargoKey(node214, -1, 2)
  Node_EnterSimulation(node214)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("nod_vessel", "pir_tz_scout2_3")
  Node_AddSon(node195, node215)
  Body_SetCS(node215, MAT_Vector3(1867.489646, 1777.735175, 441.295035), MAT_Vector3(-131.41808, 0, 0))
  Node_ParseIniFile(node215, "osd/pir_tz/pir_tz_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node215, 3)
  Body_SetNameKey(node215, -1)
  Body_SetCargoKey(node215, -1, 0)
  Body_SetCargoKey(node215, -1, 1)
  Body_SetCargoKey(node215, -1, 2)
  Node_EnterSimulation(node215)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("nod_vessel", "pir_tz_scout2_4")
  Node_AddSon(node195, node216)
  Body_SetCS(node216, MAT_Vector3(2236.196536, 1546.117279, 358.195945), MAT_Vector3(48.24964, 0, 0))
  Node_ParseIniFile(node216, "osd/pir_tz/pir_tz_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node216, 3)
  Body_SetNameKey(node216, -1)
  Body_SetCargoKey(node216, -1, 0)
  Body_SetCargoKey(node216, -1, 1)
  Body_SetCargoKey(node216, -1, 2)
  Node_EnterSimulation(node216)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("nod_vessel", "pir_tz_scout1_3")
  Node_AddSon(node195, node217)
  Body_SetCS(node217, MAT_Vector3(1974.520691, 1614.100997, 422.2934), MAT_Vector3(-37.935059, 0, 0))
  Node_ParseIniFile(node217, "osd/pir_tz/pir_tz_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node217, 3)
  Body_SetNameKey(node217, -1)
  Body_SetCargoKey(node217, -1, 0)
  Body_SetCargoKey(node217, -1, 1)
  Body_SetCargoKey(node217, -1, 2)
  Node_EnterSimulation(node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("nod_vessel", "pir_tz_scout1_4")
  Node_AddSon(node195, node218)
  Body_SetCS(node218, MAT_Vector3(2194.640936, 1762.181753, 422.2934), MAT_Vector3(127.048571, 0, 0))
  Node_ParseIniFile(node218, "osd/pir_tz/pir_tz_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node218, 3)
  Body_SetNameKey(node218, -1)
  Body_SetCargoKey(node218, -1, 0)
  Body_SetCargoKey(node218, -1, 1)
  Body_SetCargoKey(node218, -1, 2)
  Node_EnterSimulation(node218)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("nod_vessel", "pir_tz_hank_1")
  Node_AddSon(node195, node219)
  Body_SetCS(node219, MAT_Vector3(1448.268083, 1282.327138, 349.002265), MAT_Vector3(-45.392241, 0, 0))
  Node_ParseIniFile(node219, "osd/pir_tz/pir_tz_hank_narrow.osd")
  Body_SetFriendOrFoeID(node219, 4)
  Body_SetNameKey(node219, -1)
  Body_SetCargoKey(node219, -1, 0)
  Body_SetCargoKey(node219, -1, 1)
  Body_SetCargoKey(node219, -1, 2)
  Node_EnterSimulation(node219)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node220)
  Camera_SetBackPlane(node220, 1024)
  Node_EnterSimulation(node220)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("NOD_Scenario", "IngameScene")
  Node_AddSon(node0, node221)
  Node_EnterSimulation(node221)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node221, node222)
  Node_EnterSimulation(node222)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node221, node223)
  Node_EnterSimulation(node223)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node223, node224)
  Position_SetPosition(node224, MAT_Vector3(3130.50546, 282.976161, 691.368406))
  Position_SetRadius(node224, 5)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("NOD_Position", "LookFrom_2")
  Node_AddSon(node223, node225)
  Position_SetPosition(node225, MAT_Vector3(2831.674991, 590.104268, 389.589724))
  Position_SetRadius(node225, 5)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("NOD_Path", "DockPath_invert_Movie")
  Node_AddSon(node223, node226)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node226, node227)
  Position_SetPosition(node227, MAT_Vector3(3017.843, 229.8606, 691))
  Position_SetRadius(node227, 5)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node226, node228)
  Position_SetPosition(node228, MAT_Vector3(2965.390914, 318.930179, 691))
  Position_SetRadius(node228, 5)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("NOD_Path", "ApproachPath_invert_Movie")
  Node_AddSon(node223, node229)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node229, node230)
  Position_SetPosition(node230, MAT_Vector3(2950.591, 349.519462, 691))
  Position_SetRadius(node230, 5)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node229, node231)
  Position_SetPosition(node231, MAT_Vector3(2930.79776, 457.392619, 382.751695))
  Position_SetRadius(node231, 5)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("NOD_Path", "PlayerPath")
  Node_AddSon(node223, node232)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node232, node233)
  Position_SetPosition(node233, MAT_Vector3(3072.962599, 249.166449, 691))
  Position_SetRadius(node233, 5)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node232, node234)
  Position_SetPosition(node234, MAT_Vector3(3109.205588, 269.4065, 691))
  Position_SetRadius(node234, 5)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node232, node235)
  Position_SetPosition(node235, MAT_Vector3(3080.946301, 308.857583, 600))
  Position_SetRadius(node235, 5)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node232, node236)
  Position_SetPosition(node236, MAT_Vector3(3007.015525, 410.085482, 450))
  Position_SetRadius(node236, 5)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node232, node237)
  Position_SetPosition(node237, MAT_Vector3(2947.008859, 472.865502, 400))
  Position_SetRadius(node237, 5)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node232, node238)
  Position_SetPosition(node238, MAT_Vector3(2874.831857, 544.882509, 389.178445))
  Position_SetRadius(node238, 5)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node221, node239)
  Node_EnterSimulation(node239)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("NOD_Director", "Intro")
  Node_AddSon(node239, node240)
  Node_EnterSimulation(node240)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("NOD_Director", "IntroAddOn")
  Node_AddSon(node239, node241)
  Node_EnterSimulation(node241)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("NOD_Director", "IntroAddOn2")
  Node_AddSon(node239, node242)
  Node_EnterSimulation(node242)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("NOD_Director", "Intro_Audio")
  Node_AddSon(node239, node243)
  Node_EnterSimulation(node243)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("NOD_Director", "Trap_MusicChange")
  Node_AddSon(node239, node244)
  Node_EnterSimulation(node244)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node221, node245)
  Node_EnterSimulation(node245)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node221, node246)
  Node_EnterSimulation(node246)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, N)
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
SetEnemyMatrixElement(0, 1, N)
SetEnemyMatrixElement(1, 1, F)
SetEnemyMatrixElement(2, 1, F)
SetEnemyMatrixElement(3, 1, E)
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
SetEnemyMatrixElement(0, 2, N)
SetEnemyMatrixElement(1, 2, F)
SetEnemyMatrixElement(2, 2, F)
SetEnemyMatrixElement(3, 2, E)
SetEnemyMatrixElement(4, 2, E)
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
SetEnemyMatrixElement(4, 3, E)
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
SetEnemyMatrixElement(1, 4, E)
SetEnemyMatrixElement(2, 4, E)
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
    if not (True ~= True) then
      if not (True ~= True) then
        if not (True ~= True) then
          if not (True ~= True) then
            if not (True ~= True) then
              if not (True ~= True) then
                if not (True ~= True) then
                  if not (True ~= True) then
                    if not (True ~= True) then
                      if not (True ~= True) then
                        if not (True ~= True) then
                          if not (True ~= True) then
                            if not (True ~= True) then
                              if not (True ~= True) then
                                if not (True ~= True) then
                                  if not (True ~= True) then
                                    if not (True ~= True) then
                                      if not (True ~= True) then
                                        if not (True ~= True) then
                                          if not (True ~= True) then
                                            if not (True ~= True) then
                                              if not (True ~= True) then
                                                if not (True ~= True) then
                                                  if not (True ~= True) then
                                                    if not (True ~= True) then
                                                      if not (True ~= True) then
                                                        if not (True ~= True) then
                                                          if not (True ~= True) then
                                                            if not (True ~= True) then
                                                              if not (True ~= True) then
                                                                if not (True ~= True) then
                                                                  if not (True ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
                                                                        if not (True ~= True) then
                                                                          if not (True ~= True) then
                                                                            if not (True ~= True) then
                                                                              if not (True ~= True) then
                                                                                if not (True ~= True) then
                                                                                  if not (True ~= True) then
                                                                                    if not (True ~= True) then
                                                                                      if not (True ~= True) then
                                                                                        if not (True ~= True) then
                                                                                          if not (True ~= True) then
                                                                                            if not (True ~= True) then
                                                                                              if not (True ~= True) then
                                                                                                if not (True ~= True) then
                                                                                                  if not (True ~= True) then
                                                                                                    if not (True ~= True) then
                                                                                                      if not (True ~= True) then
                                                                                                        if not (True ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
                                                                                                                                                if not (True ~= True) then
                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                      if not (o6057.Value ~= True) then
                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                              if not (True ~= True) then
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
                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                      if not (o6081.Value == True) then
                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                            if not (False == True) then
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
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o674, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o674, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o674, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o674, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o674, "Code5")
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
S_o720 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o720, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o720, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o720, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o720, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o720, "Code5")
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
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o766, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o766, "Code5")
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
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o812, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o812, "Code5")
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
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o858, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o858, "Code5")
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
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o904, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o904, "Code5")
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
S_o950 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o950, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o950, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o950, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o950, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o950, "Code5")
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
S_o996 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o996, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o996, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o996, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o996, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o996, "Code5")
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
S_o1042 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1042, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1042, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1042, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1042, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o1042, "Code5")
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
S_o1088 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1088, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1088, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1088, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1088, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o1088, "Code5")
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
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1134, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o1134, "Code5")
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
S_o1180 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1180, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1180, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1180, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1180, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o1180, "Code5")
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
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1226, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o1226, "Code5")
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
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1272, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o1272, "Code5")
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
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1318, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o1318, "Code5")
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
S_o1364 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1364, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1364, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1364, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1364, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o1364, "Code5")
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
S_o1410 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1410, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1410, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1410, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1410, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o1410, "Code5")
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
S_o1456 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1456, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1456, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1456, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1456, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o1456, "Code5")
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
S_o1502 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1502, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1502, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1502, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1502, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o1502, "Code5")
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
S_o2328 = { [nil] = {}, Start = function(L0)

end }
S_o2372 = { [nil] = {}, Start = function(L0)

end }
S_o2416 = { [nil] = {}, Start = function(L0)

end }
S_o2460 = { [nil] = {}, Start = function(L0)

end }
S_o2506 = { [nil] = {}, Start = function(L0)

end }
S_o2552 = { [nil] = {}, Start = function(L0)

end }
S_o2598 = { [nil] = {}, Start = function(L0)

end }
S_o2644 = { [nil] = {}, Start = function(L0)

end }
S_o2690 = { [nil] = {}, Start = function(L0)

end }
S_o2736 = { [nil] = {}, Start = function(L0)

end }
S_o2782 = { [nil] = {}, Start = function(L0)

end }
S_o2828 = { [nil] = {}, Start = function(L0)

end }
S_o2874 = { [nil] = {}, Start = function(L0)

end }
S_o2920 = { [nil] = {}, Start = function(L0)

end }
S_o2966 = { [nil] = {}, Start = function(L0)

end }
S_o3012 = { [nil] = {}, Start = function(L0)

end }
S_o3058 = { [nil] = {}, Start = function(L0)

end }
S_o3104 = { [nil] = {}, Start = function(L0)

end }
S_o3150 = { [nil] = {}, Start = function(L0)

end }
S_o3196 = { [nil] = {}, Start = function(L0)

end }
S_o3242 = { [nil] = {}, Start = function(L0)

end }
S_o3288 = { [nil] = {}, Start = function(L0)

end }
S_o3334 = { [nil] = {}, Start = function(L0)

end }
S_o3380 = { [nil] = {}, Start = function(L0)

end }
S_o3426 = { [nil] = {}, Start = function(L0)

end }
S_o3472 = { [nil] = {}, Start = function(L0)

end }
S_o3518 = { [nil] = {}, Start = function(L0)

end }
S_o3564 = { [nil] = {}, Start = function(L0)

end }
S_o3610 = { [nil] = {}, Start = function(L0)

end }
S_o3656 = { [nil] = {}, Start = function(L0)

end }
S_o3702 = { [nil] = {}, Start = function(L0)

end }
S_o3748 = { [nil] = {}, Start = function(L0)

end }
S_o3794 = { [nil] = {}, Start = function(L0)

end }
S_o3840 = { [nil] = {}, Start = function(L0)

end }
S_o3886 = { [nil] = {}, Start = function(L0)

end }
S_o3932 = { [nil] = {}, Start = function(L0)

end }
S_o3978 = { [nil] = {}, Start = function(L0)

end }
S_o4024 = { [nil] = {}, Start = function(L0)

end }
S_o4070 = { [nil] = {}, Start = function(L0)

end }
S_o4116 = { [nil] = {}, Start = function(L0)

end }
S_o4162 = { [nil] = {}, Start = function(L0)

end }
S_o4208 = { [nil] = {}, Start = function(L0)

end }
S_o4254 = { [nil] = {}, Start = function(L0)

end }
S_o4300 = { [nil] = {}, Start = function(L0)

end }
S_o4346 = { [nil] = {}, Start = function(L0)

end }
S_o4392 = { [nil] = {}, Start = function(L0)

end }
S_o4438 = { [nil] = {}, Start = function(L0)

end }
S_o4484 = { [nil] = {}, Start = function(L0)

end }
S_o4530 = { [nil] = {}, Start = function(L0)

end }
S_o4576 = { [nil] = {}, Start = function(L0)

end }
S_o4622 = { [nil] = {}, Start = function(L0)

end }
S_o4668 = { [nil] = {}, Start = function(L0)

end }
S_o4714 = { [nil] = {}, Start = function(L0)

end }
S_o4760 = { [nil] = {}, Start = function(L0)

end }
S_o4806 = { [nil] = {}, Start = function(L0)

end }
S_o4852 = { [nil] = {}, Start = function(L0)

end }
S_o4898 = { [nil] = {}, Start = function(L0)

end }
S_o4944 = { [nil] = {}, Start = function(L0)

end }
S_o4990 = { [nil] = {}, Start = function(L0)

end }
S_o5036 = { [nil] = {}, Start = function(L0)

end }
S_o5082 = { [nil] = {}, Start = function(L0)

end }
S_o5128 = { [nil] = {}, Start = function(L0)

end }
S_o5174 = { [nil] = {}, Start = function(L0)

end }
S_o5220 = { [nil] = {}, Start = function(L0)

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
o6003 = FormationLib.CreateFormation("Row", "", "", "", 50, 50)
S_o6004 = { [nil] = {}, Start = function(L0)

end }
o6005 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/Harvester_1_ApproachPath", "/Scenario_Dynamic/Navigation/Harvester_1_DockPath", "/Scenario_Dynamic/Navigation/Harvester_1_DockArea")
S_o6006 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6006, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6006, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6006, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "mac", "", "", "", False, False, True)
  CallFunction(o6006, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6006, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6006, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o6011.SetStateValue(L1)
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
o6011 = { [nil] = {}, Start = function()
  o6011["Value"] = False
  o6045.StartCalculate()
  o6589.StartCalculate()
  o6635.StartCalculate()
  o6681.StartCalculate()
  o6737.StartCalculate()
  o6793.StartCalculate()
  o6849.StartCalculate()
  o6905.StartCalculate()
  o6961.StartCalculate()
  o7017.StartCalculate()
  o7073.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6011.Value == L0) then
    o6011["Value"] = L0
    o6045.ReCalculate()
    o6589.ReCalculate()
    o6635.ReCalculate()
    o6681.ReCalculate()
    o6737.ReCalculate()
    o6793.ReCalculate()
    o6849.ReCalculate()
    o6905.ReCalculate()
    o6961.ReCalculate()
    o7017.ReCalculate()
    o7073.ReCalculate()
  end
end }
S_o6012 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6012, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6012, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6012, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "mac_finch", "", "", "", False, False, True)
  CallFunction(o6012, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6012, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6012, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o6017.SetStateValue(L1)
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
o6017 = { [nil] = {}, Start = function()
  o6017["Value"] = False
  o6046.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6017.Value == L0) then
    o6017["Value"] = L0
    o6046.ReCalculate()
  end
end }
S_o6018 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6018, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6018, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6018, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "mac_finch", "", "", "", False, False, True)
  CallFunction(o6018, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6018, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6018, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o6023.SetStateValue(L1)
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
o6023 = { [nil] = {}, Start = function()
  o6023["Value"] = False
  o6044.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6023.Value == L0) then
    o6023["Value"] = L0
    o6044.ReCalculate()
  end
end }
S_o6024 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6024, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6024, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6024, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o6024, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6024, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6024, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o6029.SetStateValue(L1)
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
o6029 = { [nil] = {}, Start = function()
  o6029["Value"] = False
  o7131.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6029.Value == L0) then
    o6029["Value"] = L0
    o7131.ReCalculate()
  end
end }
S_o6030 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_plasma1", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_shell", 9999)
  Body_AddItem(L0.Node, "gun_flak", 1)
  Body_AddItem(L0.Node, "device_generator1", 1)
  Body_AddItem(L0.Node, "ammo_energy", 200)
  Body_AddItem(L0.Node, "torpedo_threshershark", 2)
  Body_AddItem(L0.Node, "gun_vendetta1", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 4)
  CallFunction(o6030, "Code9")
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
o6044 = { [nil] = {}, GetCalculated = function()
  if not (o6023.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6044.SetStateValue(o6044.GetCalculated())
end, StartCalculate = function()
  o6044["Value"] = o6044.GetCalculated()
  o6057.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
  SendRadioMessageTake(o3334.Node, o6030.Node, 173)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  SED_SetTaskTextKey(0, -1, -1)
end, SetStateValue = function(L0)
  if not (o6044.Value == L0) then
    o6044["Value"] = L0
    o6057.ReCalculate()
    if not (L0 ~= 1) then
      o6044.ChangeTo1()
    end
  end
end }
o6045 = { [nil] = {}, GetCalculated = function()
  if not (o6011.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6045.SetStateValue(o6045.GetCalculated())
end, StartCalculate = function()
  o6045["Value"] = o6045.GetCalculated()
  o7210.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6453.Node, o6030.Node, 161)
  SendRadioMessageTake(o6791.Node, o6030.Node, 163)
  SendRadioMessageTake(o6517.Node, o6030.Node, 164)
  SendRadioMessageTake(o6453.Node, o6030.Node, 162)
  SendRadioMessageTake(o6453.Node, o6030.Node, 165)
end, SetStateValue = function(L0)
  if not (o6045.Value == L0) then
    o6045["Value"] = L0
    o7210.ReCalculate()
    if not (L0 ~= 1) then
      o6045.ChangeTo1()
    end
  end
end }
o6046 = { [nil] = {}, GetCalculated = function()
  if not (o6017.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6046.SetStateValue(o6046.GetCalculated())
end, StartCalculate = function()
  o6046["Value"] = o6046.GetCalculated()
  o7212.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3334.Node, o6030.Node, 166)
  SendRadioMessageTake(o6517.Node, o6030.Node, 167)
  SendRadioMessageTake(o6453.Node, o6030.Node, 168)
end, SetStateValue = function(L0)
  if not (o6046.Value == L0) then
    o6046["Value"] = L0
    o7212.ReCalculate()
    if not (L0 ~= 1) then
      o6046.ChangeTo1()
    end
  end
end }
o6047 = { [nil] = {}, GetCalculated = function()
  if not (o7140.Value == True) then
    if not (o7147.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o6047.SetStateValue(o6047.GetCalculated())
end, StartCalculate = function()
  o6047["Value"] = o6047.GetCalculated()
  o6048.StartCalculate()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 1, 2002, 2101)
end, SetStateValue = function(L0)
  if not (o6047.Value == L0) then
    o6047["Value"] = L0
    o6048.ReCalculate()
    if not (L0 ~= 1) then
      o6047.ChangeTo1()
    end
  end
end }
o6048 = { [nil] = {}, GetCalculated = function()
  if not (o6047.Value ~= True) then
    if not (o6055.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o6048.SetStateValue(o6048.GetCalculated())
end, StartCalculate = function()
  o6048["Value"] = o6048.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 1, 2002, 2101)
end, SetStateValue = function(L0)
  if not (o6048.Value == L0) then
    o6048["Value"] = L0
    if not (L0 ~= 1) then
      o6048.ChangeTo1()
    end
  end
end }
o6049 = { [nil] = {}, GetCalculated = function()
  if not (o7139.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6049.SetStateValue(o6049.GetCalculated())
end, StartCalculate = function()
  o6049["Value"] = o6049.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveFailed(GetGameNode(), 1, 0, 0)
end, SetStateValue = function(L0)
  if not (o6049.Value == L0) then
    o6049["Value"] = L0
    if not (L0 ~= 1) then
      o6049.ChangeTo1()
    end
  end
end }
o6050 = { [nil] = {}, GetCalculated = function()
  if not (o6481.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6050.SetStateValue(o6050.GetCalculated())
end, StartCalculate = function()
  o6050["Value"] = o6050.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o6453, "Code14")
end, SetStateValue = function(L0)
  if not (o6050.Value == L0) then
    o6050["Value"] = L0
    if not (L0 ~= 1) then
      o6050.ChangeTo1()
    end
  end
end }
o6051 = { [nil] = {}, GetCalculated = function()
  if not (o6536.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6051.SetStateValue(o6051.GetCalculated())
end, StartCalculate = function()
  o6051["Value"] = o6051.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6517.Node, o6030.Node, 169)
end, SetStateValue = function(L0)
  if not (o6051.Value == L0) then
    o6051["Value"] = L0
    if not (L0 ~= 1) then
      o6051.ChangeTo1()
    end
  end
end }
o6052 = { [nil] = {}, GetCalculated = function()
  if not (o6537.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6052.SetStateValue(o6052.GetCalculated())
end, StartCalculate = function()
  o6052["Value"] = o6052.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6517.Node, o6030.Node, 170)
end, SetStateValue = function(L0)
  if not (o6052.Value == L0) then
    o6052["Value"] = L0
    if not (L0 ~= 1) then
      o6052.ChangeTo1()
    end
  end
end }
o6053 = { [nil] = {}, GetCalculated = function()
  if not (o6538.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6053.SetStateValue(o6053.GetCalculated())
end, StartCalculate = function()
  o6053["Value"] = o6053.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6517.Node, o6030.Node, 171)
end, SetStateValue = function(L0)
  if not (o6053.Value == L0) then
    o6053["Value"] = L0
    if not (L0 ~= 1) then
      o6053.ChangeTo1()
    end
  end
end }
o6054 = { [nil] = {}, Start = function()
  o6054["Value"] = False
  o6056.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6054.Value == L0) then
    o6054["Value"] = L0
    o6056.ReCalculate()
  end
end }
o6055 = { [nil] = {}, Start = function()
  o6055["Value"] = False
  o6048.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6055.Value == L0) then
    o6055["Value"] = L0
    o6048.ReCalculate()
  end
end }
o6056 = { [nil] = {}, GetCalculated = function()
  if not (o7137.Value ~= True) then
    if not (o6054.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o6056.SetStateValue(o6056.GetCalculated())
end, StartCalculate = function()
  o6056["Value"] = o6056.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o7127, "Code18")
end, SetStateValue = function(L0)
  if not (o6056.Value == L0) then
    o6056["Value"] = L0
    if not (L0 ~= 1) then
      o6056.ChangeTo1()
    end
  end
end }
o6057 = { [nil] = {}, GetCalculated = function()
  if not (o6044.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6057.SetStateValue(o6057.GetCalculated())
end, StartCalculate = function()
  o6057["Value"] = o6057.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6057.Value == L0) then
    o6057["Value"] = L0
    o2.ReCalculate()
  end
end }
o6081 = { [nil] = {}, GetCalculated = function()
  if not (o6541.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6081.SetStateValue(o6081.GetCalculated())
end, StartCalculate = function()
  o6081["Value"] = o6081.GetCalculated()
  o26.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3334.Node, o6030.Node, 172)
  Game_PrimaryObjectiveFailed(GetGameNode(), 1, 2001, 2100)
end, SetStateValue = function(L0)
  if not (o6081.Value == L0) then
    o6081["Value"] = L0
    o26.ReCalculate()
    if not (L0 ~= 1) then
      o6081.ChangeTo1()
    end
  end
end }
S_o6085 = { [nil] = {}, Start = function(L0)

end }
S_o6131 = { [nil] = {}, Start = function(L0)

end }
S_o6177 = { [nil] = {}, Start = function(L0)

end }
S_o6223 = { [nil] = {}, Start = function(L0)

end }
S_o6269 = { [nil] = {}, Start = function(L0)

end }
S_o6315 = { [nil] = {}, Start = function(L0)

end }
S_o6361 = { [nil] = {}, Start = function(L0)

end }
S_o6407 = { [nil] = {}, Start = function(L0)

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
  ShieldedBody_SetShieldBarrier(L0.Node, 0.09, 0.1)
  CallFunction(o6453, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o6453, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6453, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o6003, 0, 275, "E", "", "", "", "/Scenario_Dynamic/Navigation/FinchTriggerArea", "/Scenario_Dynamic/Navigation/FinchFollowArea", 0.5, 5, "Code7")
  else
    CallFunction(o6453, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 60 } }("Code8")
  else
    CallFunction(o6453, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/WingmenEscapePath", 1, 2 } }("Code9")
  else
    CallFunction(o6453, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o6005, nil, 0, "Code10")
  else
    CallFunction(o6453, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code11")
  else
    CallFunction(o6453, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6453, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code13")
  else
    CallFunction(o6453, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6453, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  StopAllActiveBehaviours(L0)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o6453, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code17")
  else
    CallFunction(o6453, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  Vessel_CollisionObjects(L0.Node, 1)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o6453, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/WingmenEscapePath", 1, 2 } }("Code20")
  else
    CallFunction(o6453, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o6005, nil, 0, "Code21")
  else
    CallFunction(o6453, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
end, SetStateValue_KineticShield10 = function(L0, L1)
  o6481.SetStateValue(L1)
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
o6481 = { [nil] = {}, Start = function()
  o6481["Value"] = False
  o6050.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6481.Value == L0) then
    o6481["Value"] = L0
    o6050.ReCalculate()
  end
end }
S_o6517 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o6517, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code2")
  else
    CallFunction(o6517, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6517, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6517, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code5")
  else
    CallFunction(o6517, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o6517, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6517, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  StopAllActiveBehaviours(L0)
  Vessel_CollisionObjects(L0.Node, 1)
  CallFunction(o6517, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code10")
  else
    CallFunction(o6517, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    o6002(o6003, "/Scenario_Dynamic/Navigation/FinchTriggerArea", "/Scenario_Dynamic/Navigation/FinchFollowArea", False, "Code11")
  else
    CallFunction(o6517, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 10 } }("Code12")
  else
    CallFunction(o6517, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Sink", "/Scenario_Dynamic/Navigation/FinchSinkPosition", 0.25, 1 } }("Code13")
  else
    CallFunction(o6517, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "WaitWithHeading", "/Scenario_Dynamic/Navigation/FinchDockPath", "pos_1", 10 } }("Code14")
  else
    CallFunction(o6517, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code15")
  else
    CallFunction(o6517, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/FinchDockPath", 0.1, 1 } }("Code16")
  else
    CallFunction(o6517, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5 } }("Code17")
  else
    CallFunction(o6517, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "WaitWithHeading", "/Scenario_Dynamic/Navigation/FinchDockFinalPath", "pos_1", 10 } }("Code18")
  else
    CallFunction(o6517, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5 } }("Code19")
  else
    CallFunction(o6517, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code20")
  else
    CallFunction(o6517, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6517, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  StopAllActiveBehaviours(L0)
  CallFunction(o6517, "Code22")
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
end, SetStateValue_KineticShield75 = function(L0, L1)
  o6536.SetStateValue(L1)
end, SetStateValue_KineticShield50 = function(L0, L1)
  o6537.SetStateValue(L1)
end, SetStateValue_KineticShield25 = function(L0, L1)
  o6538.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o6541.SetStateValue(L1)
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
o6536 = { [nil] = {}, Start = function()
  o6536["Value"] = False
  o6051.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6536.Value == L0) then
    o6536["Value"] = L0
    o6051.ReCalculate()
  end
end }
o6537 = { [nil] = {}, Start = function()
  o6537["Value"] = False
  o6052.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6537.Value == L0) then
    o6537["Value"] = L0
    o6052.ReCalculate()
  end
end }
o6538 = { [nil] = {}, Start = function()
  o6538["Value"] = False
  o6053.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6538.Value == L0) then
    o6538["Value"] = L0
    o6053.ReCalculate()
  end
end }
o6541 = { [nil] = {}, Start = function()
  o6541["Value"] = False
  o6081.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6541.Value == L0) then
    o6541["Value"] = L0
    o6081.ReCalculate()
  end
end }
S_o6582 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o6517.Node)
  CallFunction(o6582, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6587 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_DipolInLeaveSimulation(L0.Node)
  CallFunction(o6587, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6587, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_TurretDipolIn(L0, "Code3")
  else
    CallFunction(o6587, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -50, 50)
  CallFunction(o6587, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 500, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o6587, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6589.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6589 = { [nil] = {}, GetCalculated = function()
  if not (o6011.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6589.SetStateValue(o6589.GetCalculated())
end, StartCalculate = function()
  o6589["Value"] = o6589.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6589.Value == L0) then
    o6589["Value"] = L0
    CallFunction(o6587, "ProcesseStateChange")
  end
end }
S_o6633 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_DipolInLeaveSimulation(L0.Node)
  CallFunction(o6633, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6633, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_TurretDipolIn(L0, "Code3")
  else
    CallFunction(o6633, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -50, 50)
  CallFunction(o6633, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 500, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o6633, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6635.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6635 = { [nil] = {}, GetCalculated = function()
  if not (o6011.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6635.SetStateValue(o6635.GetCalculated())
end, StartCalculate = function()
  o6635["Value"] = o6635.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6635.Value == L0) then
    o6635["Value"] = L0
    CallFunction(o6633, "ProcesseStateChange")
  end
end }
S_o6679 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6679, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6679, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6679, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/OutpostBattle_PatrolArea", "/Scenario_Dynamic/Navigation/OutpostBattle_TriggerArea", "/Scenario_Dynamic/Navigation/OutpostBattle_FollowArea", "mac", "", "", "", 1, "Code4")
  else
    CallFunction(o6679, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6681.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6681 = { [nil] = {}, GetCalculated = function()
  if not (o6011.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6681.SetStateValue(o6681.GetCalculated())
end, StartCalculate = function()
  o6681["Value"] = o6681.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6681.Value == L0) then
    o6681["Value"] = L0
    CallFunction(o6679, "ProcesseStateChange")
  end
end }
S_o6735 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6735, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6735, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6735, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/OutpostBattle_PatrolArea", "/Scenario_Dynamic/Navigation/OutpostBattle_TriggerArea", "/Scenario_Dynamic/Navigation/OutpostBattle_FollowArea", "mac", "", "", "", 1, "Code4")
  else
    CallFunction(o6735, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6737.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6737 = { [nil] = {}, GetCalculated = function()
  if not (o6011.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6737.SetStateValue(o6737.GetCalculated())
end, StartCalculate = function()
  o6737["Value"] = o6737.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6737.Value == L0) then
    o6737["Value"] = L0
    CallFunction(o6735, "ProcesseStateChange")
  end
end }
S_o6791 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6791, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6791, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6791, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/OutpostBattle_PatrolArea", "/Scenario_Dynamic/Navigation/OutpostBattle_TriggerArea", "/Scenario_Dynamic/Navigation/OutpostBattle_FollowArea", "mac", "", "", "", 1, "Code4")
  else
    CallFunction(o6791, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6793.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6793 = { [nil] = {}, GetCalculated = function()
  if not (o6011.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6793.SetStateValue(o6793.GetCalculated())
end, StartCalculate = function()
  o6793["Value"] = o6793.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6793.Value == L0) then
    o6793["Value"] = L0
    CallFunction(o6791, "ProcesseStateChange")
  end
end }
S_o6847 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6847, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6847, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6847, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/OutpostBattle_PatrolArea", "/Scenario_Dynamic/Navigation/OutpostBattle_TriggerArea", "/Scenario_Dynamic/Navigation/OutpostBattle_FollowArea", "mac", "", "", "", 1, "Code4")
  else
    CallFunction(o6847, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6849.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6849 = { [nil] = {}, GetCalculated = function()
  if not (o6011.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6849.SetStateValue(o6849.GetCalculated())
end, StartCalculate = function()
  o6849["Value"] = o6849.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6849.Value == L0) then
    o6849["Value"] = L0
    CallFunction(o6847, "ProcesseStateChange")
  end
end }
S_o6903 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6903, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6903, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6903, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/OutpostBattle_PatrolArea", "/Scenario_Dynamic/Navigation/OutpostBattle_TriggerArea", "/Scenario_Dynamic/Navigation/OutpostBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o6903, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6905.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6905 = { [nil] = {}, GetCalculated = function()
  if not (o6011.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6905.SetStateValue(o6905.GetCalculated())
end, StartCalculate = function()
  o6905["Value"] = o6905.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6905.Value == L0) then
    o6905["Value"] = L0
    CallFunction(o6903, "ProcesseStateChange")
  end
end }
S_o6959 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6959, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6959, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6959, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/OutpostBattle_PatrolArea", "/Scenario_Dynamic/Navigation/OutpostBattle_TriggerArea", "/Scenario_Dynamic/Navigation/OutpostBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o6959, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6961.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6961 = { [nil] = {}, GetCalculated = function()
  if not (o6011.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6961.SetStateValue(o6961.GetCalculated())
end, StartCalculate = function()
  o6961["Value"] = o6961.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6961.Value == L0) then
    o6961["Value"] = L0
    CallFunction(o6959, "ProcesseStateChange")
  end
end }
S_o7015 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7015, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7015, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7015, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/OutpostBattle_PatrolArea", "/Scenario_Dynamic/Navigation/OutpostBattle_TriggerArea", "/Scenario_Dynamic/Navigation/OutpostBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o7015, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7017.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7017 = { [nil] = {}, GetCalculated = function()
  if not (o6011.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7017.SetStateValue(o7017.GetCalculated())
end, StartCalculate = function()
  o7017["Value"] = o7017.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7017.Value == L0) then
    o7017["Value"] = L0
    CallFunction(o7015, "ProcesseStateChange")
  end
end }
S_o7071 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7071, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7071, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7071, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/OutpostBattle_PatrolArea", "/Scenario_Dynamic/Navigation/OutpostBattle_TriggerArea", "/Scenario_Dynamic/Navigation/OutpostBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o7071, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7073.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7073 = { [nil] = {}, GetCalculated = function()
  if not (o6011.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7073.SetStateValue(o7073.GetCalculated())
end, StartCalculate = function()
  o7073["Value"] = o7073.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7073.Value == L0) then
    o7073["Value"] = L0
    CallFunction(o7071, "ProcesseStateChange")
  end
end }
S_o7127 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7127, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7127, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7127, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o7127, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7127, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  SetEnemyMatrixElement(1, 4, N)
  SetEnemyMatrixElement(4, 1, N)
  SendRadioMessageTake(o7127.Node, o6030.Node, 174)
  o6054.SetStateValue(True)
  CallFunction(o7127, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 20 } }("Code10")
  else
    CallFunction(o7127, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code11")
  else
    CallFunction(o7127, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7127, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/HankPath_2", 1, 1 } }("Code13")
  else
    CallFunction(o7127, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  SendRadioMessageTake(o7127.Node, o6030.Node, 175)
  o6055.SetStateValue(True)
  CallFunction(o7127, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code16")
  else
    CallFunction(o7127, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code17")
  else
    CallFunction(o7127, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7127, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  StopAllActiveBehaviours(L0)
  SetEnemyMatrixElement(1, 4, E)
  SetEnemyMatrixElement(4, 1, E)
  CallFunction(o7127, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HankDefendArea", "/Scenario_Dynamic/Navigation/HankDefendArea", "/Scenario_Dynamic/Navigation/HankDefendArea", "player", "", "", "", 0.25, "Code22")
  else
    CallFunction(o7127, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code23")
  else
    CallFunction(o7127, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7127, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code25")
  else
    CallFunction(o7127, "Code25")
  end
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7127, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
end, SetStateValue_Attacked = function(L0, L1)
  o7137.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o7139.SetStateValue(L1)
end, SetStateValue_DipoledOut = function(L0, L1)
  o7140.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o7147.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o7131.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 11) then
    if not (L0.CodeIndex >= 12) then
      if not (o7132.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7131 = { [nil] = {}, GetCalculated = function()
  if not (o6029.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7131.SetStateValue(o7131.GetCalculated())
end, StartCalculate = function()
  o7131["Value"] = o7131.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7131.Value == L0) then
    o7131["Value"] = L0
    CallFunction(o7127, "ProcesseStateChange")
  end
end }
o7132 = { [nil] = {}, GetCalculated = function()
  if not (o7137.Value ~= False) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7132.SetStateValue(o7132.GetCalculated())
end, StartCalculate = function()
  o7132["Value"] = o7132.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7132.Value == L0) then
    o7132["Value"] = L0
    CallFunction(o7127, "ProcesseStateChange")
  end
end }
o7137 = { [nil] = {}, Start = function()
  o7137["Value"] = False
  o6056.StartCalculate()
  o7132.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7137.Value == L0) then
    o7137["Value"] = L0
    o6056.ReCalculate()
    o7132.ReCalculate()
  end
end }
o7139 = { [nil] = {}, Start = function()
  o7139["Value"] = False
  o6049.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7139.Value == L0) then
    o7139["Value"] = L0
    o6049.ReCalculate()
  end
end }
o7140 = { [nil] = {}, Start = function()
  o7140["Value"] = False
  o6047.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7140.Value == L0) then
    o7140["Value"] = L0
    o6047.ReCalculate()
  end
end }
o7147 = { [nil] = {}, Start = function()
  o7147["Value"] = False
  o6047.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7147.Value == L0) then
    o7147["Value"] = L0
    o6047.ReCalculate()
  end
end }
S_o7190 = { [nil] = {}, Start = function(L0)

end }
o7192 = FormationLib.CreateFormation("Row", "", "", "", 50, 50)
S_o7193 = { [nil] = {}, Start = function(L0)

end }
S_o7194 = { [nil] = {}, Start = function(L0)

end }
o7196 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o7197 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o7197, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code3")
  else
    CallFunction(o7197, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_MoveTo(L0.Node, "/IngameScene/Navigation/LookFrom_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0.75, "MMMN", 0)
  FormationLib.PlaceFormationPath(o7191, o7192, "/IngameScene/Navigation/DockPath_invert_Movie")
  CallFunction(o7197, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o7191, o7192, "/IngameScene/Navigation/DockPath_invert_Movie", "pos_1", "pos_2", 0.5, 1, "Code9")
  else
    CallFunction(o7197, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o7191, o7192, "/IngameScene/Navigation/ApproachPath_invert_Movie", "pos_1", "pos_2", 0.8, 1, "Code10")
  else
    CallFunction(o7197, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o7200 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code1")
  else
    CallFunction(o7200, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Camera_MoveTo(L0.Node, "/IngameScene/Navigation/LookFrom_2", 10, "MMMN", 0)
  CallFunction(o7200, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o7203 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  FormationLib.PlaceFormationPath(o7195, o7196, "/IngameScene/Navigation/PlayerPath")
  CallFunction(o7203, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o7195, o7196, "/IngameScene/Navigation/PlayerPath", "pos_1", "pos_6", 0.75, 1, "Code2")
  else
    CallFunction(o7203, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  Director_EndCutscene(L0.Node)
  SendRadioMessageTake(o6453.Node, o6030.Node, 159)
  SendRadioMessageTake(o6517.Node, o6030.Node, 160)
  CallFunction(o6517, "Code7")
  CallFunction(o6453, "Code6")
  CallFunction(o7203, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code8")
  else
    CallFunction(o7203, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  SED_SetTaskTextKey(2100, -1, -1)
  Game_SetWayPoint(GetGameNode(), o6582.Node)
  CallFunction(o7203, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o7206 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Atmo")
  CallFunction(o7206, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6, "Code2")
  else
    CallFunction(o7206, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o3334.Node, o6030.Node, 156)
  SendRadioMessageTake(o6453.Node, o6030.Node, 157)
  SendRadioMessageTake(o6517.Node, o6030.Node, 158)
  CallFunction(o7206, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o7209 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7209, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Game_PlayMusic(GetGameNode(), "Track3")
  CallFunction(o7209, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code3")
  else
    CallFunction(o7209, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Game_PlayMusic(GetGameNode(), "Agressive")
  CallFunction(o7209, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7209, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Game_PlayMusic(GetGameNode(), "Atmo")
  CallFunction(o7209, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o7210.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o7212.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7210 = { [nil] = {}, GetCalculated = function()
  if not (o6045.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7210.SetStateValue(o7210.GetCalculated())
end, StartCalculate = function()
  o7210["Value"] = o7210.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7210.Value == L0) then
    o7210["Value"] = L0
    CallFunction(o7209, "ProcesseStateChange")
  end
end }
o7212 = { [nil] = {}, GetCalculated = function()
  if not (o6046.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7212.SetStateValue(o7212.GetCalculated())
end, StartCalculate = function()
  o7212["Value"] = o7212.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7212.Value == L0) then
    DelayedFunction(4, o7212, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7212.Value == L0) then
    o7212["Value"] = L0
    CallFunction(o7209, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 246)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_building1_1", S_o30)
  o76 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_dolphinhab_des_1", S_o76)
  o122 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant1_1", S_o122)
  o168 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant1_2", S_o168)
  o214 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant1_3", S_o214)
  o260 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_shelter_docking_1", S_o260)
  o306 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_shelter_docking_2", S_o306)
  o352 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_beacon_1", S_o352)
  o398 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_beacon_2", S_o398)
  o444 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock2_1", S_o444)
  o490 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tower_1", S_o490)
  o536 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tower_2", S_o536)
  o582 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml_1", S_o582)
  o628 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml3_1", S_o628)
  o674 = BindEasy(Node_Find("/Scenario_Static/Object"), "west_turret_medium_1/Turm1", S_o674)
  o720 = BindEasy(Node_Find("/Scenario_Static/Object"), "west_turret_medium_2/Turm1", S_o720)
  o766 = BindEasy(Node_Find("/Scenario_Static/Object"), "west_turret_medium_3/Turm1", S_o766)
  o812 = BindEasy(Node_Find("/Scenario_Static/Object"), "south_turret_medium_1/Turm1", S_o812)
  o858 = BindEasy(Node_Find("/Scenario_Static/Object"), "south_turret_medium_2/Turm1", S_o858)
  o904 = BindEasy(Node_Find("/Scenario_Static/Object"), "south_turret_medium_3/Turm1", S_o904)
  o950 = BindEasy(Node_Find("/Scenario_Static/Object"), "east_turret_medium_1/Turm1", S_o950)
  o996 = BindEasy(Node_Find("/Scenario_Static/Object"), "east_turret_medium_2/Turm1", S_o996)
  o1042 = BindEasy(Node_Find("/Scenario_Static/Object"), "east_turret_medium_3/Turm1", S_o1042)
  o1088 = BindEasy(Node_Find("/Scenario_Static/Object"), "west_torptower_1/Turm1", S_o1088)
  o1134 = BindEasy(Node_Find("/Scenario_Static/Object"), "west_torptower_2/Turm1", S_o1134)
  o1180 = BindEasy(Node_Find("/Scenario_Static/Object"), "south_torptower_1/Turm1", S_o1180)
  o1226 = BindEasy(Node_Find("/Scenario_Static/Object"), "south_torptower_2/Turm1", S_o1226)
  o1272 = BindEasy(Node_Find("/Scenario_Static/Object"), "east_torptower_1/Turm1", S_o1272)
  o1318 = BindEasy(Node_Find("/Scenario_Static/Object"), "east_torptower_2/Turm1", S_o1318)
  o1364 = BindEasy(Node_Find("/Scenario_Static/Object"), "east_torp_m_1/Turm1", S_o1364)
  o1410 = BindEasy(Node_Find("/Scenario_Static/Object"), "east_torp_m_2/Turm1", S_o1410)
  o1456 = BindEasy(Node_Find("/Scenario_Static/Object"), "east_torp_m_3/Turm1", S_o1456)
  o1502 = BindEasy(Node_Find("/Scenario_Static/Object"), "south_torp_m_1/Turm1", S_o1502)
  o1548 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_1", S_o1548)
  o1594 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_2", S_o1594)
  o1640 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_industry2_1", S_o1640)
  o1686 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big03_1", S_o1686)
  o1732 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_1", S_o1732)
  o1778 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_2", S_o1778)
  o1824 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_3", S_o1824)
  o1870 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_1", S_o1870)
  o1916 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_industry1_1", S_o1916)
  o1962 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_industry3_1", S_o1962)
  o2008 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock3_1", S_o2008)
  o2054 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_1", S_o2054)
  o2100 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_starfound_1", S_o2100)
  o2146 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vehiclestation_1", S_o2146)
  o2192 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock2_2", S_o2192)
  o2238 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_1", S_o2238)
  o2284 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_1/Turm1", S_o2284)
  o2328 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_2/Turm1", S_o2328)
  o2372 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_3/Turm1", S_o2372)
  o2416 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_4/Turm1", S_o2416)
  o2460 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_1_1", S_o2460)
  o2506 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_1_2", S_o2506)
  o2552 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_1_3", S_o2552)
  o2598 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangway02_1", S_o2598)
  o2644 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangway02_2", S_o2644)
  o2690 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock1_1", S_o2690)
  o2736 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock2_3", S_o2736)
  o2782 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_1", S_o2782)
  o2828 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_2", S_o2828)
  o2874 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_3", S_o2874)
  o2920 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_2", S_o2920)
  o2966 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_3", S_o2966)
  o3012 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_4", S_o3012)
  o3058 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_5", S_o3058)
  o3104 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_6", S_o3104)
  o3150 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_7", S_o3150)
  o3196 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_8", S_o3196)
  o3242 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_9", S_o3242)
  o3288 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_10", S_o3288)
  o3334 = BindEasy(Node_Find("/Scenario_Static/Object"), "pla_harvester_static_1", S_o3334)
  o3380 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_1", S_o3380)
  o3426 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02", S_o3426)
  o3472 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_05", S_o3472)
  o3518 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_1", S_o3518)
  o3564 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_b", S_o3564)
  o3610 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_1", S_o3610)
  o3656 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_04", S_o3656)
  o3702 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_06", S_o3702)
  o3748 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_07", S_o3748)
  o3794 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_1", S_o3794)
  o3840 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_2", S_o3840)
  o3886 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_1", S_o3886)
  o3932 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_03", S_o3932)
  o3978 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_03_c", S_o3978)
  o4024 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_03_d", S_o4024)
  o4070 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_1", S_o4070)
  o4116 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_b", S_o4116)
  o4162 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02", S_o4162)
  o4208 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_b", S_o4208)
  o4254 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03", S_o4254)
  o4300 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_1", S_o4300)
  o4346 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_l", S_o4346)
  o4392 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_1", S_o4392)
  o4438 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_b", S_o4438)
  o4484 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_c", S_o4484)
  o4530 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_1", S_o4530)
  o4576 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_05", S_o4576)
  o4622 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_05_b", S_o4622)
  o4668 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_02", S_o4668)
  o4714 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_02_b", S_o4714)
  o4760 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_1", S_o4760)
  o4806 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_c", S_o4806)
  o4852 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_b", S_o4852)
  o4898 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_02", S_o4898)
  o4944 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_1", S_o4944)
  o4990 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_b", S_o4990)
  o5036 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_1", S_o5036)
  o5082 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_m_1", S_o5082)
  o5128 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_edgering_1", S_o5128)
  o5174 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_2", S_o5174)
  o5220 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_2c", S_o5220)
  o5266 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_2", S_o5266)
  o5312 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_2", S_o5312)
  o5358 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_3", S_o5358)
  o5404 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_2", S_o5404)
  o5450 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_2", S_o5450)
  o5496 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_2", S_o5496)
  o5542 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_2", S_o5542)
  o5588 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_3", S_o5588)
  o5634 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_3", S_o5634)
  o5680 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_3", S_o5680)
  o5726 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_4", S_o5726)
  o5772 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_4b", S_o5772)
  o5818 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_3", S_o5818)
  o5864 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_3", S_o5864)
  o5910 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_3", S_o5910)
  o5956 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_3", S_o5956)
  o6004 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "FinchSinkPosition", S_o6004)
  o6006 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "OutpostSniperTrap", S_o6006)
  o6011.Start()
  o6012 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TrapEscaped", S_o6012)
  o6017.Start()
  o6018 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "MissionWon", S_o6018)
  o6023.Start()
  o6024 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "HankEscape", S_o6024)
  o6029.Start()
  o6030 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o6030)
  o6054.Start()
  o6055.Start()
  o6085 = BindEasy(Node_Find("/Scenario_Dynamic/Object/DestructableBuildings"), "East_trafo_des", S_o6085)
  o6131 = BindEasy(Node_Find("/Scenario_Dynamic/Object/DestructableBuildings"), "West_trafo_des", S_o6131)
  o6177 = BindEasy(Node_Find("/Scenario_Dynamic/Object/DestructableBuildings"), "South_trafo_des", S_o6177)
  o6223 = BindEasy(Node_Find("/Scenario_Dynamic/Object/DestructableBuildings"), "gen_tank_big_des_1", S_o6223)
  o6269 = BindEasy(Node_Find("/Scenario_Dynamic/Object/DestructableBuildings"), "gen_tank_big_des_2", S_o6269)
  o6315 = BindEasy(Node_Find("/Scenario_Dynamic/Object/DestructableBuildings"), "gen_tank_big_des_3", S_o6315)
  o6361 = BindEasy(Node_Find("/Scenario_Dynamic/Object/DestructableBuildings"), "gen_tank_big_des_4", S_o6361)
  o6407 = BindEasy(Node_Find("/Scenario_Dynamic/Object/DestructableBuildings"), "gen_tank_big_des_5", S_o6407)
  o6453 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_Stoney", S_o6453)
  o6481.Start()
  o6517 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mac_finch", S_o6517)
  o6536.Start()
  o6537.Start()
  o6538.Start()
  o6541.Start()
  o6582 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_escort_1", S_o6582)
  o6587 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_sniper_1/Turm1", S_o6587)
  o6633 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_sniper_2/Turm1", S_o6633)
  o6679 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout1_1", S_o6679)
  o6735 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout1_2", S_o6735)
  o6791 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_1", S_o6791)
  o6847 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_2", S_o6847)
  o6903 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_3", S_o6903)
  o6959 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_4", S_o6959)
  o7015 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout1_3", S_o7015)
  o7071 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout1_4", S_o7071)
  o7127 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_hank_1", S_o7127)
  o7137.Start()
  o7139.Start()
  o7140.Start()
  o7147.Start()
  o7190 = BindEasy(Node_Find("/"), "Camera", S_o7190)
  o7193 = BindEasy(Node_Find("/IngameScene/Navigation"), "LookFrom_1", S_o7193)
  o7194 = BindEasy(Node_Find("/IngameScene/Navigation"), "LookFrom_2", S_o7194)
  o7197 = BindEasy(Node_Find("/IngameScene/Director"), "Intro", S_o7197)
  o7200 = BindEasy(Node_Find("/IngameScene/Director"), "IntroAddOn", S_o7200)
  o7203 = BindEasy(Node_Find("/IngameScene/Director"), "IntroAddOn2", S_o7203)
  o7206 = BindEasy(Node_Find("/IngameScene/Director"), "Intro_Audio", S_o7206)
  o7209 = BindEasy(Node_Find("/IngameScene/Director"), "Trap_MusicChange", S_o7209)
  o6002 = { {}, o6517, o6453 }()
  o7191 = { {}, o6517 }()
  o7195 = { {}, o6030 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
