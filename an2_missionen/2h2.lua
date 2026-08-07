-- dekompiliert aus 2h2.sco
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
  Terrain_LoadTerrain(node1, "map/2H2/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/2H1/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/2H2/Lmsh/", "map/2H2/Ltex/")
  Game_SetTerrainDepth(node0, 1224)
  Game_SetDecompressionHeight(node0, 600)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.07451, 0.086275, 0.086275)
  Game_SetParallelLightT(node0, 0.231373, 0.258824, 0.262745)
  Game_SetParallelLightB(node0, 0.262745, 0.294118, 0.298039)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_2h2.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_2H2.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient2.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit1.sam", 1)
  Game_SetNPCHitFactor(node0, 0.4)
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
  Body_SetCS(node8, MAT_Vector3(1036.271023, 3412.559137, 382.755042), MAT_Vector3(-90.060173, 0, 0))
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
  Body_SetCS(node9, MAT_Vector3(718, 3601.284921, 390), MAT_Vector3(-89.740011, 0, 0))
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
  Body_SetCS(node10, MAT_Vector3(1207.468364, 3356.919571, 430.71708), MAT_Vector3(-55.582536, 0, 0))
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
  Body_SetCS(node11, MAT_Vector3(1127.089386, 3464.817368, 433.815862), MAT_Vector3(-13.986784, 0, 0))
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
  Body_SetCS(node12, MAT_Vector3(756.352562, 3477.839109, 410.885061), MAT_Vector3(179.885573, 0, 0))
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
  Body_SetCS(node13, MAT_Vector3(595.544289, 3453.234185, 434.268185), MAT_Vector3(-90, 0, 0))
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
  Body_SetCS(node14, MAT_Vector3(737.655913, 3285.889787, 414.059123), MAT_Vector3(-0.076311, 0, 0))
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
  Body_SetCS(node15, MAT_Vector3(833.565331, 3077.470324, 466.238906), MAT_Vector3(-180, 0, 0))
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
  Body_SetCS(node16, MAT_Vector3(1304.163298, 3408.466629, 392.978186), MAT_Vector3(-90, 0, 0))
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
  Body_SetCS(node17, MAT_Vector3(778.957107, 3123.494363, 450.043827), MAT_Vector3(90.279075, 0, 0))
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
  Body_SetCS(node18, MAT_Vector3(1160.787301, 3437.806999, 425.163092), MAT_Vector3(-66.515794, 0, 0))
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
  Body_SetCS(node19, MAT_Vector3(1140.697593, 3417.997202, 423.734726), MAT_Vector3(-21.626946, 0, 0))
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
  Body_SetCS(node20, MAT_Vector3(1179.667378, 3398.650201, 420.658211), MAT_Vector3(44.723006, 0, 0))
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
  Body_SetCS(node21, MAT_Vector3(819.326383, 3514.367135, 384.471838), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node22, MAT_Vector3(884.020103, 3434.198947, 429.791637), MAT_Vector3(55.951946, 0, 0))
  Node_ParseIniFile(node22, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_turret", "west_turret_medium_2")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(565.180235, 3295.78119, 464.726872), MAT_Vector3(140.820913, 0, 0))
  Node_ParseIniFile(node23, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_turret", "west_turret_medium_3")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(498.381897, 3348.113372, 463.796592), MAT_Vector3(140.8209, 0, 0))
  Node_ParseIniFile(node24, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_turret", "south_turret_medium_1")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(712.850305, 3134.464991, 438.950279), MAT_Vector3(140.8209, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_turret", "south_turret_medium_2")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(965.130664, 3025.829768, 510.62238), MAT_Vector3(178.735273, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_turret", "south_turret_medium_3")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(1082.337122, 3144.518884, 474.945631), MAT_Vector3(178.7353, 0, 0))
  Node_ParseIniFile(node27, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_turret", "east_turret_medium_1")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(1363.26067, 3222.201303, 433.746819), MAT_Vector3(-90.967831, 0, 0))
  Node_ParseIniFile(node28, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_turret", "east_turret_medium_2")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(1409.889633, 3407.835514, 400.113365), MAT_Vector3(-90.96783, 0, 0))
  Node_ParseIniFile(node29, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_turret", "east_turret_medium_3")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(1072.604747, 3381.117097, 457.412427), MAT_Vector3(-90.96783, 0, 0))
  Node_ParseIniFile(node30, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_turret", "west_torptower_1")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(883.369469, 3409.494006, 435.167043), MAT_Vector3(-51.082492, 0, 0))
  Node_ParseIniFile(node31, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_turret", "west_torptower_2")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(529.711102, 3345.541142, 470.198243), MAT_Vector3(140.211103, 0, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_turret", "south_torptower_1")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(834.090021, 3164.292445, 522.915648), MAT_Vector3(179.797954, 0, 0))
  Node_ParseIniFile(node33, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_turret", "south_torptower_2")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(1126.097869, 3176.868974, 474.497128), MAT_Vector3(176.418994, 0, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_turret", "east_torptower_1")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(1072.106957, 3402.513415, 462.981666), MAT_Vector3(-90.14555, 0, 0))
  Node_ParseIniFile(node35, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_turret", "east_torptower_2")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(1342.5526, 3247.382811, 435.756072), MAT_Vector3(-90.14555, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_turret", "east_torp_m_1")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(1221.447049, 3409.702148, 438.367501), MAT_Vector3(-90.28814, 0, 0))
  Node_ParseIniFile(node37, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_turret", "east_torp_m_2")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(1082.206809, 3236.681644, 426.59738), MAT_Vector3(-90.28814, 0, 0))
  Node_ParseIniFile(node38, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_turret", "east_torp_m_3")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(969.092485, 3239.328408, 425.493951), MAT_Vector3(93.499964, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_turret", "south_torp_m_1")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(930.794932, 3038.509095, 516.6637), MAT_Vector3(-178.532911, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_rohr_small03_1_1")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(716.8548, 3664.920154, 380), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_rohr_small03_1_2")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(736.147124, 3664.745839, 380), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_rohr_small03_1_3")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(697.70814, 3664.919794, 380), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node43, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_gangway02_1")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(707.18017, 3723.036906, 390), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node44, "osd/gen/gen_gangway02.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_gangway02_2")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(726.474902, 3714.446908, 390), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node45, "osd/gen/gen_gangway02.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_metalblock1_1")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(772.551952, 3655.147973, 346.57172), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node46, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "gen_metalblock2_3")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(758.213121, 3705.849058, 353.61122), MAT_Vector3(179.922159, 0, 0))
  Node_ParseIniFile(node47, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "gen_elfnote_1")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(1645.185098, 2382.483855, 352.652916), MAT_Vector3(-23.027318, 0, 0))
  Node_ParseIniFile(node48, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "gen_elfnote_2")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(1632.587243, 3408.278303, 372.421333), MAT_Vector3(-67.859658, 0, 0))
  Node_ParseIniFile(node49, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "gen_elfnote_3")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(2663.699735, 3430.74328, 339.337444), MAT_Vector3(-67.85966, 0, 0))
  Node_ParseIniFile(node50, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_rohr_small01_2")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(1644.82694, 2442.928288, 333.785783), MAT_Vector3(0, -10, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "gen_rohr_small01_3")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(1602.64233, 2341.428516, 333.7858), MAT_Vector3(131.123084, -10, 0))
  Node_ParseIniFile(node52, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_rohr_small01_4")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(1603.032413, 2425.172524, 333.7858), MAT_Vector3(46.45272, -10, 0))
  Node_ParseIniFile(node53, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "gen_rohr_small01_5")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(1649.686318, 2322.689666, 333.7858), MAT_Vector3(-179.983228, -10, 0))
  Node_ParseIniFile(node54, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "gen_rohr_small01_6")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(1614.492478, 1368.056482, 269.000955), MAT_Vector3(0.088404, -10, 0))
  Node_ParseIniFile(node55, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "gen_rohr_small01_7")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(1636.124, 3349.02, 358.1536), MAT_Vector3(-179.7024, -10, 0))
  Node_ParseIniFile(node56, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "gen_rohr_small01_8")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(1686.297633, 3409.584625, 348.894738), MAT_Vector3(-90.542912, -30.163106, -2.814507))
  Node_ParseIniFile(node57, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "gen_rohr_small01_9")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(2602.639, 3430.214974, 318.504793), MAT_Vector3(90.036505, -8.687073, -0.351063))
  Node_ParseIniFile(node58, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "gen_rohr_small01_10")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(2704.255642, 3473.513937, 326.440624), MAT_Vector3(-44.23916, -8.687073, -0.351063))
  Node_ParseIniFile(node59, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "gen_quay_1")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(1970.451, 1761.127, 280.0342), MAT_Vector3(-42.70681, 0, 0))
  Node_ParseIniFile(node60, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "gen_quay_2")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(2135.781, 1574.54, 280.0342), MAT_Vector3(-42.70681, 0, 0))
  Node_ParseIniFile(node61, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "mac_industry2_1")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(2159.549, 1831.932, 306.6181), MAT_Vector3(-41.45599, 0, 0))
  Node_ParseIniFile(node62, "osd/mac/mac_industry2.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "gen_rohr_big03_1")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(2015.244, 1707.833, 273.135), MAT_Vector3(136, 0, 0))
  Node_ParseIniFile(node63, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "gen_rohr_small03_1")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(2028.057, 1697.593, 272.294), MAT_Vector3(136, 0, 0))
  Node_ParseIniFile(node64, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "gen_rohr_small03_2")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(2035.303, 1691.406, 270.7112), MAT_Vector3(136, 0, 0))
  Node_ParseIniFile(node65, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "gen_rohr_small03_3")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(1762.027, 1440.893, 270.7112), MAT_Vector3(136, 0, 0))
  Node_ParseIniFile(node66, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "gen_rohr_small01_1")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(1657.203, 1336.518, 270), MAT_Vector3(136, 0, 0))
  Node_ParseIniFile(node67, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "mac_industry1_1")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(1897.346, 1566.414, 306.2688), MAT_Vector3(-135.5422, 0, 0))
  Node_ParseIniFile(node68, "osd/mac/mac_industry1.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "mac_industry3_1")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(1578.086, 1265.182, 313.8715), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node69, "osd/mac/mac_industry3.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "gen_metalblock3_1")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(1325.454, 1281.151, 271.8456), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node70, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "gen_rohr_big02_1")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(1455.247, 1293.674, 272.6377), MAT_Vector3(-90.10879, 0, 0))
  Node_ParseIniFile(node71, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "gen_starfound_1")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(1333.473, 1212.237, 295.9616), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node72, "osd/gen/gen_starfound.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "gen_vehiclestation_1")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(1326.418, 1205.308, 270.0247), MAT_Vector3(-89.93887, 0, 0))
  Node_ParseIniFile(node73, "osd/gen/gen_vehiclestation.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "gen_metalblock2_2")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(1307.614, 1418.906, 260.1052), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node74, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "gen_rohr_small02_1")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(1321.727, 1288.681, 272.1944), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node75, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "gen_turret_socket_1")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(1935.43, 1722.226, 300.4983), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node76, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "gen_turret_socket_2")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(2009.221, 1803.637, 300.4983), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node77, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "gen_turret_socket_3")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(2174.85, 1616.753, 300.4983), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node78, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "gen_turret_socket_4")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(2113.491, 1548.978, 300.4983), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node79, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_fx_rays", "fx_rays_2H1_1")
  Node_AddSon(node7, node80)
  Node_ParseIniFile(node80, "osd/fx_rays/fx_rays_2H1.osd")
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_fx_sky", "fx_sky_2H1_1")
  Node_AddSon(node7, node81)
  Node_ParseIniFile(node81, "osd/fx_sky/fx_sky_2H1.osd")
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_generic", "wng_harvester_1")
  Node_AddSon(node7, node82)
  Body_SetCS(node82, MAT_Vector3(982.242126, 2765.05748, 527.006734), MAT_Vector3(-46.844325, 0, 0))
  Node_ParseIniFile(node82, "osd/pla/pla_harvester.osd")
  Body_SetFriendOrFoeID(node82, 2)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
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
  Body_SetCS(node85, MAT_Vector3(2667.252, 1080.328, 215.8139), MAT_Vector3(11.65996, 4.303874, -7.088747))
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
  Body_SetCS(node86, MAT_Vector3(658.3274, 2744.66, 118.6309), MAT_Vector3(11.65996, 4.303874, -7.088747))
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
  Body_SetCS(node87, MAT_Vector3(1364.062, 3486.253, 366.2849), MAT_Vector3(-9.493967, -14.53866, -0.248473))
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
  Body_SetCS(node88, MAT_Vector3(3111.106, 717.6909, 449.278), MAT_Vector3(-63.71167, 12.92711, -0.147406))
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
  Body_SetCS(node89, MAT_Vector3(1122.937, 2184.83, 128.5461), MAT_Vector3(96.96168, 42.73775, 48.37881))
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
  Body_SetCS(node90, MAT_Vector3(2383.615, 1095.279, 269.4214), MAT_Vector3(-12.34338, -6.339519, 6.739423))
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
  Body_SetCS(node91, MAT_Vector3(1712.866, 2477.388, 312.1793), MAT_Vector3(-12.34338, -6.339519, 6.739423))
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
  Body_SetCS(node92, MAT_Vector3(1022.671, 2620.207, 121.6315), MAT_Vector3(82.31952, 9.815904, 23.02266))
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
  Body_SetCS(node93, MAT_Vector3(1930.351, 1938.969, 251.089), MAT_Vector3(165.3032, -16.60182, 3.93834))
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
  Body_SetCS(node94, MAT_Vector3(2466.709, 786.6089, 315.9195), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node95, MAT_Vector3(814.3814, 2786.596, 105.7138), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node96, MAT_Vector3(2712.276, 808.8291, 275.6803), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node97, MAT_Vector3(1297.109, 1941.058, 264.0718), MAT_Vector3(-38.41145, -13.82437, -10.94495))
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
  Body_SetCS(node98, MAT_Vector3(3125.362, 414.7825, 387.0719), MAT_Vector3(20.80533, -13.82437, -10.94495))
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
  Body_SetCS(node99, MAT_Vector3(3038.485, 392.0109, 356.9445), MAT_Vector3(-173.4679, 31.1759, 0.393151))
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
  Body_SetCS(node100, MAT_Vector3(2896.201, 903.8106, 262.7715), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node101, MAT_Vector3(1991.058, 1896.146, 351.9898), MAT_Vector3(77.97297, 11.06385, -7.271836))
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
  Body_SetCS(node102, MAT_Vector3(1639.306, 2454.958, 331.9578), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node103, MAT_Vector3(2526.622, 1618.735, 292.1058), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node104, MAT_Vector3(743.5872, 2699.739, 119.9834), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node105, MAT_Vector3(2540.742, 1289.412, 277.5974), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node106, MAT_Vector3(3075.787, 1338.54, 450.3142), MAT_Vector3(-90.98028, 21.36844, 17.7038))
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
  Body_SetCS(node107, MAT_Vector3(2431.53, 1043.807, 253.2228), MAT_Vector3(5.540437, 2.978348, -4.110075))
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
  Body_SetCS(node108, MAT_Vector3(2372.497, 2412.038, 353.7649), MAT_Vector3(-162.1321, -31.65692, 11.40953))
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
  Body_SetCS(node109, MAT_Vector3(2572.05, 1613.942, 298.7953), MAT_Vector3(-148.2108, -3.232209, -2.030671))
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
  Body_SetCS(node110, MAT_Vector3(2337.257, 1507.577, 249.8468), MAT_Vector3(-20.58803, -15.65351, 13.634))
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
  Body_SetCS(node111, MAT_Vector3(1391.79, 3076.45, 289.583), MAT_Vector3(-68.39369, -46.84317, -3.494235))
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
  Body_SetCS(node112, MAT_Vector3(2321.974, 2220.972, 259.6803), MAT_Vector3(-68.39369, -46.84317, -3.494235))
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
  Body_SetCS(node113, MAT_Vector3(1226.33, 1149.38, 262.2623), MAT_Vector3(-20.58803, -15.65351, 13.634))
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
  Body_SetCS(node114, MAT_Vector3(1236.418, 2436.084, 187.8814), MAT_Vector3(-112.2019, -58.86992, -27.61259))
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
  Body_SetCS(node115, MAT_Vector3(2274.554, 1434.536, 286.4191), MAT_Vector3(-166.84, -55.69022, -44.40632))
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
  Body_SetCS(node116, MAT_Vector3(2905.008, 316.4291, 454.4962), MAT_Vector3(-166.84, -55.69022, -44.40632))
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
  Body_SetCS(node117, MAT_Vector3(1235.938, 2454.953, 225.2827), MAT_Vector3(105.3129, 20.04491, -45.678))
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
  Body_SetCS(node118, MAT_Vector3(1460.878, 1179.355, 283.2801), MAT_Vector3(-166.84, -55.69022, -44.40632))
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
  Body_SetCS(node119, MAT_Vector3(2405.69, 1281.92, 264.4757), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node120, MAT_Vector3(1242.737, 2443.428, 254.1366), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node121, MAT_Vector3(2678.498, 1648.591, 329.7111), MAT_Vector3(-120.6851, 0, 0))
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
  Body_SetCS(node122, MAT_Vector3(3110.724, 1292.593, 440.784), MAT_Vector3(-81.3914, 0, 0))
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
  Body_SetCS(node123, MAT_Vector3(761.6226, 2518.548, 158.0555), MAT_Vector3(-100.9181, 0, 0))
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
  Body_SetCS(node124, MAT_Vector3(3697.682, 2424.032, 404.2667), MAT_Vector3(77.10157, -7.538398, 18.36345))
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
  Body_SetCS(node125, MAT_Vector3(3823.42, 2979.556, 334.8461), MAT_Vector3(-113.8099, -7.538398, 18.36345))
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
  Body_SetCS(node126, MAT_Vector3(3461.456, 2739.516, 388.8135), MAT_Vector3(-31.98952, -2.09887, 20.04973))
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
  Body_SetCS(node127, MAT_Vector3(3892.707, 2710.989, 373.6558), MAT_Vector3(-36.11698, 9.557309, -9.35314))
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
  Body_SetCS(node128, MAT_Vector3(3564.417, 2624.127, 315.6746), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node129, MAT_Vector3(3772.951, 2794.334, 336.9628), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node130, MAT_Vector3(3742.601, 2824.194, 331.7875), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node131, MAT_Vector3(3594.709, 2653.065, 325.016), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node132, MAT_Vector3(3720.977, 2759.869, 306.2469), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node132, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node132, 0)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node7, node133)
  Node_ParseIniFile(node133, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node133, "map/2H2/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node134)
  Node_ParseIniFile(node134, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node134, "map/2H2/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_fx_plant", "org_grass_l_white_1")
  Node_AddSon(node7, node135)
  Node_ParseIniFile(node135, "osd/fx_plant/org_grass_l_white.osd")
  FX_Plant_SetMap(node135, "map/2H2/Terrain/org_grass_l.tga")
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_fx_plant", "org_grass_s_white_1")
  Node_AddSon(node7, node136)
  Node_ParseIniFile(node136, "osd/fx_plant/org_grass_s_white.osd")
  FX_Plant_SetMap(node136, "map/2H2/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_generic", "ter_megalith_l_01_3")
  Node_AddSon(node7, node137)
  Body_SetCS(node137, MAT_Vector3(3278.385, 2919.811, 514.1902), MAT_Vector3(5.552932, -2.903298, 5.652196))
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
  Body_SetCS(node138, MAT_Vector3(3213.172, 3075.062, 371.5856), MAT_Vector3(7.086622, -3.584553, 7.211663))
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
  Body_SetCS(node139, MAT_Vector3(3474.904, 3130.048, 471.0431), MAT_Vector3(30.86509, -8.259517, -23.57755))
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
  Body_SetCS(node140, MAT_Vector3(3361.081, 2925.773, 515.7762), MAT_Vector3(53.29218, -6.318553, 19.99644))
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
  Body_SetCS(node141, MAT_Vector3(2933.533, 3163.312, 440.978), MAT_Vector3(53.29218, -6.318553, 19.99644))
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
  Body_SetCS(node142, MAT_Vector3(3390.037, 3276.925, 380.7643), MAT_Vector3(-40.08665, 27.79528, -2.564921))
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
  Body_SetCS(node143, MAT_Vector3(2906.029, 3188.745, 404.7649), MAT_Vector3(10.12118, -5.374619, 5.248062))
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
  Body_SetCS(node144, MAT_Vector3(3414.342, 3120.114, 421.8378), MAT_Vector3(89.06551, -2.842054, 25.35288))
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
  Body_SetCS(node145, MAT_Vector3(3196.491, 3122.699, 370.5367), MAT_Vector3(35.69893, -12.12106, 20.03818))
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
  node149 = Node_CreateNode("NOD_PatrolArea", "BattleArea_Station")
  Node_AddSon(node148, node149)
  PatrolArea_SetPosition(node149, MAT_Vector3(882.989727, 2995.396836, 433.222693))
  PatrolArea_SetRadius(node149, 1200)
  PatrolArea_SetMinZ(node149, -400)
  PatrolArea_SetMaxZ(node149, 150)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_PatrolArea", "BattleArea_Harvester")
  Node_AddSon(node148, node150)
  PatrolArea_SetPosition(node150, MAT_Vector3(992.403759, 2780.859629, 433.2227))
  PatrolArea_SetRadius(node150, 600)
  PatrolArea_SetMinZ(node150, -400)
  PatrolArea_SetMaxZ(node150, 150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_Harvester")
  Node_AddSon(node148, node151)
  PatrolArea_SetPosition(node151, MAT_Vector3(1000.985295, 2752.970142, 367.833711))
  PatrolArea_SetRadius(node151, 150)
  PatrolArea_SetMinZ(node151, -75)
  PatrolArea_SetMaxZ(node151, 75)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Path", "dm_Harvester1_ApproachPath")
  Node_AddSon(node148, node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node152, node153)
  Position_SetPosition(node153, MAT_Vector3(894.466171, 2862.167319, 506.02937))
  Position_SetRadius(node153, 5)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node152, node154)
  Position_SetPosition(node154, MAT_Vector3(858.357654, 2783.115294, 506.0294))
  Position_SetRadius(node154, 5)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Path", "dm_Harvester1_DockPath")
  Node_AddSon(node148, node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node155, node156)
  Position_SetPosition(node156, MAT_Vector3(855.327143, 2740.684135, 506.0294))
  Position_SetRadius(node156, 5)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node155, node157)
  Position_SetPosition(node157, MAT_Vector3(855.816199, 2646.383349, 506.0294))
  Position_SetRadius(node157, 5)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_PatrolArea", "dm_Harvester1_Area")
  Node_AddSon(node148, node158)
  PatrolArea_SetPosition(node158, MAT_Vector3(798.906037, 2826.586418, 480))
  PatrolArea_SetRadius(node158, 100)
  PatrolArea_SetMinZ(node158, -35)
  PatrolArea_SetMaxZ(node158, 35)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Path", "dm_Harvester2_ApproachPath")
  Node_AddSon(node148, node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node159, node160)
  Position_SetPosition(node160, MAT_Vector3(729.954537, 2823.969269, 506.0294))
  Position_SetRadius(node160, 5)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node159, node161)
  Position_SetPosition(node161, MAT_Vector3(749.604657, 2739.220103, 506.0294))
  Position_SetRadius(node161, 5)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Path", "dm_Harvester2_DockPath")
  Node_AddSon(node148, node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node162, node163)
  Position_SetPosition(node163, MAT_Vector3(766.691869, 2703.113796, 506.0294))
  Position_SetRadius(node163, 5)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node162, node164)
  Position_SetPosition(node164, MAT_Vector3(832.644688, 2627.459003, 506.0294))
  Position_SetRadius(node164, 5)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_PatrolArea", "dm_Harvester2_Area")
  Node_AddSon(node148, node165)
  PatrolArea_SetPosition(node165, MAT_Vector3(798.906, 2826.586, 480))
  PatrolArea_SetRadius(node165, 100)
  PatrolArea_SetMinZ(node165, -35)
  PatrolArea_SetMaxZ(node165, 35)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Path", "StoneyPath_1")
  Node_AddSon(node148, node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node166, node167)
  Position_SetPosition(node167, MAT_Vector3(748.90145, 2721.921048, 506.0294))
  Position_SetRadius(node167, 5)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node166, node168)
  Position_SetPosition(node168, MAT_Vector3(702.011964, 2766.732812, 506.0294))
  Position_SetRadius(node168, 5)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node166, node169)
  Position_SetPosition(node169, MAT_Vector3(726.918631, 2855.685252, 506.0294))
  Position_SetRadius(node169, 5)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Path", "MayDayPath_1")
  Node_AddSon(node148, node170)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node170, node171)
  Position_SetPosition(node171, MAT_Vector3(855.644103, 2759.026797, 506.0294))
  Position_SetRadius(node171, 5)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node170, node172)
  Position_SetPosition(node172, MAT_Vector3(879.916505, 2803.838797, 506.0294))
  Position_SetRadius(node172, 5)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node170, node173)
  Position_SetPosition(node173, MAT_Vector3(910.922688, 2862.292882, 506.0294))
  Position_SetRadius(node173, 5)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node146, node174)
  Node_EnterSimulation(node174)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node146, node175)
  Node_EnterSimulation(node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node146, node176)
  Node_EnterSimulation(node176)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Directory", "DestructableBuildings")
  Node_AddSon(node176, node177)
  Node_EnterSimulation(node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("nod_generic", "East_trafo_des")
  Node_AddSon(node177, node178)
  Body_SetCS(node178, MAT_Vector3(1057.855, 3461.515, 425.3068), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node178, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node178, 0)
  Body_SetNameKey(node178, -1)
  Body_SetCargoKey(node178, -1, 0)
  Body_SetCargoKey(node178, -1, 1)
  Body_SetCargoKey(node178, -1, 2)
  Node_EnterSimulation(node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("nod_generic", "West_trafo_des")
  Node_AddSon(node177, node179)
  Body_SetCS(node179, MAT_Vector3(1004.195, 3461.32, 425.3068), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node179, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node179, 0)
  Body_SetNameKey(node179, -1)
  Body_SetCargoKey(node179, -1, 0)
  Body_SetCargoKey(node179, -1, 1)
  Body_SetCargoKey(node179, -1, 2)
  Node_EnterSimulation(node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("nod_generic", "South_trafo_des")
  Node_AddSon(node177, node180)
  Body_SetCS(node180, MAT_Vector3(1010.121, 3357.456, 416.9589), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node180, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node180, 0)
  Body_SetNameKey(node180, -1)
  Body_SetCargoKey(node180, -1, 0)
  Body_SetCargoKey(node180, -1, 1)
  Body_SetCargoKey(node180, -1, 2)
  Node_EnterSimulation(node180)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("nod_generic", "gen_tank_big_des_1")
  Node_AddSon(node177, node181)
  Body_SetCS(node181, MAT_Vector3(1081.616, 3270.639, 412), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node181, "osd/gen/gen_tank_big_des.osd")
  Body_SetFriendOrFoeID(node181, 0)
  Body_SetNameKey(node181, -1)
  Body_SetCargoKey(node181, -1, 0)
  Body_SetCargoKey(node181, -1, 1)
  Body_SetCargoKey(node181, -1, 2)
  Node_EnterSimulation(node181)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("nod_generic", "gen_tank_big_des_2")
  Node_AddSon(node177, node182)
  Body_SetCS(node182, MAT_Vector3(1048.937, 3270.67, 412), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node182, "osd/gen/gen_tank_big_des.osd")
  Body_SetFriendOrFoeID(node182, 0)
  Body_SetNameKey(node182, -1)
  Body_SetCargoKey(node182, -1, 0)
  Body_SetCargoKey(node182, -1, 1)
  Body_SetCargoKey(node182, -1, 2)
  Node_EnterSimulation(node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("nod_generic", "gen_tank_big_des_3")
  Node_AddSon(node177, node183)
  Body_SetCS(node183, MAT_Vector3(1016.989, 3271.245, 412), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node183, "osd/gen/gen_tank_big_des.osd")
  Body_SetFriendOrFoeID(node183, 0)
  Body_SetNameKey(node183, -1)
  Body_SetCargoKey(node183, -1, 0)
  Body_SetCargoKey(node183, -1, 1)
  Body_SetCargoKey(node183, -1, 2)
  Node_EnterSimulation(node183)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("nod_generic", "gen_tank_big_des_4")
  Node_AddSon(node177, node184)
  Body_SetCS(node184, MAT_Vector3(819.8205, 3272.984, 399.8676), MAT_Vector3(-90.01401, 0, 0))
  Node_ParseIniFile(node184, "osd/gen/gen_tank_big_des.osd")
  Body_SetFriendOrFoeID(node184, 0)
  Body_SetNameKey(node184, -1)
  Body_SetCargoKey(node184, -1, 0)
  Body_SetCargoKey(node184, -1, 1)
  Body_SetCargoKey(node184, -1, 2)
  Node_EnterSimulation(node184)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("nod_generic", "gen_tank_big_des_5")
  Node_AddSon(node177, node185)
  Body_SetCS(node185, MAT_Vector3(820.9665, 3318.316, 395.5369), MAT_Vector3(-90.01401, 0, 0))
  Node_ParseIniFile(node185, "osd/gen/gen_tank_big_des.osd")
  Body_SetFriendOrFoeID(node185, 0)
  Body_SetNameKey(node185, -1)
  Body_SetCargoKey(node185, -1, 0)
  Body_SetCargoKey(node185, -1, 1)
  Body_SetCargoKey(node185, -1, 2)
  Node_EnterSimulation(node185)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node176, node186)
  Body_SetCS(node186, MAT_Vector3(837.324725, 2750.988531, 527.821063), MAT_Vector3(-60.039333, 0, 0))
  Node_ParseIniFile(node186, "osd/pla/pla_ship1.osd")
  Body_SetFriendOrFoeID(node186, 1)
  Node_EnterSimulation(node186)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("nod_vessel", "wng_stoney_1")
  Node_AddSon(node176, node187)
  Body_SetCS(node187, MAT_Vector3(783.357068, 2907.918767, 504.421831), MAT_Vector3(-18.426822, 0, 0))
  Node_ParseIniFile(node187, "osd/wng/wng_stoney.osd")
  Body_SetFriendOrFoeID(node187, 2)
  Body_SetNameKey(node187, -1)
  Body_SetCargoKey(node187, -1, 0)
  Body_SetCargoKey(node187, -1, 1)
  Body_SetCargoKey(node187, -1, 2)
  Node_EnterSimulation(node187)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("nod_vessel", "wng_mayday_1")
  Node_AddSon(node176, node188)
  Body_SetCS(node188, MAT_Vector3(866.510889, 2811.009232, 503.912678), MAT_Vector3(-15.325969, 0, 0))
  Node_ParseIniFile(node188, "osd/wng/wng_mayday.osd")
  Body_SetFriendOrFoeID(node188, 2)
  Body_SetNameKey(node188, -1)
  Body_SetCargoKey(node188, -1, 0)
  Body_SetCargoKey(node188, -1, 1)
  Body_SetCargoKey(node188, -1, 2)
  Node_EnterSimulation(node188)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("nod_vessel", "wng_animal_1")
  Node_AddSon(node176, node189)
  Body_SetCS(node189, MAT_Vector3(851.429528, 2883.906182, 512.169375), MAT_Vector3(-15.953504, 0, 0))
  Node_ParseIniFile(node189, "osd/wng/wng_animal.osd")
  Body_SetFriendOrFoeID(node189, 2)
  Body_SetNameKey(node189, -1)
  Body_SetCargoKey(node189, -1, 0)
  Body_SetCargoKey(node189, -1, 1)
  Body_SetCargoKey(node189, -1, 2)
  Node_EnterSimulation(node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("nod_vessel", "wng_angelina_1")
  Node_AddSon(node176, node190)
  Body_SetCS(node190, MAT_Vector3(898.416789, 2916.415306, 438.804105), MAT_Vector3(-63.239824, 0, 0))
  Node_ParseIniFile(node190, "osd/wng/wng_angelina.osd")
  Body_SetFriendOrFoeID(node190, 2)
  Body_SetNameKey(node190, -1)
  Body_SetCargoKey(node190, -1, 0)
  Body_SetCargoKey(node190, -1, 1)
  Body_SetCargoKey(node190, -1, 2)
  Node_EnterSimulation(node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide_1")
  Node_AddSon(node176, node191)
  Body_SetCS(node191, MAT_Vector3(1197.298426, 2780.144322, 521.051685), MAT_Vector3(76.744349, 0, 0))
  Node_ParseIniFile(node191, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node191, 3)
  Body_SetNameKey(node191, -1)
  Body_SetCargoKey(node191, -1, 0)
  Body_SetCargoKey(node191, -1, 1)
  Body_SetCargoKey(node191, -1, 2)
  Node_EnterSimulation(node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide_2")
  Node_AddSon(node176, node192)
  Body_SetCS(node192, MAT_Vector3(1202.397915, 2743.716034, 496.458683), MAT_Vector3(76.74435, 0, 0))
  Node_ParseIniFile(node192, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node192, 3)
  Body_SetNameKey(node192, -1)
  Body_SetCargoKey(node192, -1, 0)
  Body_SetCargoKey(node192, -1, 1)
  Body_SetCargoKey(node192, -1, 2)
  Node_EnterSimulation(node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide_3")
  Node_AddSon(node176, node193)
  Body_SetCS(node193, MAT_Vector3(1236.640288, 2791.800915, 493.027116), MAT_Vector3(76.74435, 0, 0))
  Node_ParseIniFile(node193, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node193, 3)
  Body_SetNameKey(node193, -1)
  Body_SetCargoKey(node193, -1, 0)
  Body_SetCargoKey(node193, -1, 1)
  Body_SetCargoKey(node193, -1, 2)
  Node_EnterSimulation(node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide_4")
  Node_AddSon(node176, node194)
  Body_SetCS(node194, MAT_Vector3(1240.282797, 2723.316425, 465.002499), MAT_Vector3(76.74435, 0, 0))
  Node_ParseIniFile(node194, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node194, 5)
  Body_SetNameKey(node194, -1)
  Body_SetCargoKey(node194, -1, 0)
  Body_SetCargoKey(node194, -1, 1)
  Body_SetCargoKey(node194, -1, 2)
  Node_EnterSimulation(node194)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide_5")
  Node_AddSon(node176, node195)
  Body_SetCS(node195, MAT_Vector3(1318.918702, 3029.941639, 496.458684), MAT_Vector3(158.004613, 0, 0))
  Node_ParseIniFile(node195, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node195, 3)
  Body_SetNameKey(node195, -1)
  Body_SetCargoKey(node195, -1, 0)
  Body_SetCargoKey(node195, -1, 1)
  Body_SetCargoKey(node195, -1, 2)
  Node_EnterSimulation(node195)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide_6")
  Node_AddSon(node176, node196)
  Body_SetCS(node196, MAT_Vector3(1391.166737, 2991.061288, 479.872712), MAT_Vector3(155.494552, 0, 0))
  Node_ParseIniFile(node196, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node196, 3)
  Body_SetNameKey(node196, -1)
  Body_SetCargoKey(node196, -1, 0)
  Body_SetCargoKey(node196, -1, 1)
  Body_SetCargoKey(node196, -1, 2)
  Node_EnterSimulation(node196)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide_7")
  Node_AddSon(node176, node197)
  Body_SetCS(node197, MAT_Vector3(1279.29159, 3008.690796, 496.4587), MAT_Vector3(126.557758, 0, 0))
  Node_ParseIniFile(node197, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node197, 5)
  Body_SetNameKey(node197, -1)
  Body_SetCargoKey(node197, -1, 0)
  Body_SetCargoKey(node197, -1, 1)
  Body_SetCargoKey(node197, -1, 2)
  Node_EnterSimulation(node197)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide_8")
  Node_AddSon(node176, node198)
  Body_SetCS(node198, MAT_Vector3(1360.907, 2965.488508, 458.711267), MAT_Vector3(141.266215, 0, 0))
  Node_ParseIniFile(node198, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node198, 3)
  Body_SetNameKey(node198, -1)
  Body_SetCargoKey(node198, -1, 0)
  Body_SetCargoKey(node198, -1, 1)
  Body_SetCargoKey(node198, -1, 2)
  Node_EnterSimulation(node198)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide_9")
  Node_AddSon(node176, node199)
  Body_SetCS(node199, MAT_Vector3(1379.540785, 3031.664966, 496.4587), MAT_Vector3(126.5578, 0, 0))
  Node_ParseIniFile(node199, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node199, 3)
  Body_SetNameKey(node199, -1)
  Body_SetCargoKey(node199, -1, 0)
  Body_SetCargoKey(node199, -1, 1)
  Body_SetCargoKey(node199, -1, 2)
  Node_EnterSimulation(node199)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide_10")
  Node_AddSon(node176, node200)
  Body_SetCS(node200, MAT_Vector3(1272.144062, 2780.653454, 458.7113), MAT_Vector3(84.136478, 0, 0))
  Node_ParseIniFile(node200, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node200, 3)
  Body_SetNameKey(node200, -1)
  Body_SetCargoKey(node200, -1, 0)
  Body_SetCargoKey(node200, -1, 1)
  Body_SetCargoKey(node200, -1, 2)
  Node_EnterSimulation(node200)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("nod_vessel", "pir_sho_bomber_1")
  Node_AddSon(node176, node201)
  Body_SetCS(node201, MAT_Vector3(1276.682957, 2745.165663, 442.085872), MAT_Vector3(74.357734, 0, 0))
  Node_ParseIniFile(node201, "osd/pir_sho/pir_sho_bomber.osd")
  Body_SetFriendOrFoeID(node201, 3)
  Body_SetNameKey(node201, -1)
  Body_SetCargoKey(node201, -1, 0)
  Body_SetCargoKey(node201, -1, 1)
  Body_SetCargoKey(node201, -1, 2)
  Node_EnterSimulation(node201)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("nod_vessel", "pir_sho_bomber_2")
  Node_AddSon(node176, node202)
  Body_SetCS(node202, MAT_Vector3(1347.935704, 3001.691932, 468.966639), MAT_Vector3(130.249001, 0, 0))
  Node_ParseIniFile(node202, "osd/pir_sho/pir_sho_bomber.osd")
  Body_SetFriendOrFoeID(node202, 3)
  Body_SetNameKey(node202, -1)
  Body_SetCargoKey(node202, -1, 0)
  Body_SetCargoKey(node202, -1, 1)
  Body_SetCargoKey(node202, -1, 2)
  Node_EnterSimulation(node202)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("nod_vessel", "pir_sho_chow_1")
  Node_AddSon(node176, node203)
  Body_SetCS(node203, MAT_Vector3(317.56368, 1969.068084, 455.787031), MAT_Vector3(-48.95082, 0, 0))
  Node_ParseIniFile(node203, "osd/pir_sho/pir_sho_chow.osd")
  Body_SetFriendOrFoeID(node203, 3)
  Body_SetNameKey(node203, -1)
  Body_SetCargoKey(node203, -1, 0)
  Body_SetCargoKey(node203, -1, 1)
  Body_SetCargoKey(node203, -1, 2)
  Node_EnterSimulation(node203)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide2_1")
  Node_AddSon(node176, node204)
  Body_SetCS(node204, MAT_Vector3(330.042667, 2112.055725, 385.220621), MAT_Vector3(-39.372034, 0, 0))
  Node_ParseIniFile(node204, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node204, 3)
  Body_SetNameKey(node204, -1)
  Body_SetCargoKey(node204, -1, 0)
  Body_SetCargoKey(node204, -1, 1)
  Body_SetCargoKey(node204, -1, 2)
  Node_EnterSimulation(node204)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide2_2")
  Node_AddSon(node176, node205)
  Body_SetCS(node205, MAT_Vector3(446.443074, 1995.147328, 385.2206), MAT_Vector3(-39.37203, 0, 0))
  Node_ParseIniFile(node205, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node205, 3)
  Body_SetNameKey(node205, -1)
  Body_SetCargoKey(node205, -1, 0)
  Body_SetCargoKey(node205, -1, 1)
  Body_SetCargoKey(node205, -1, 2)
  Node_EnterSimulation(node205)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide2_3")
  Node_AddSon(node176, node206)
  Body_SetCS(node206, MAT_Vector3(411.370503, 2045.977142, 385.2206), MAT_Vector3(-39.37203, 0, 0))
  Node_ParseIniFile(node206, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node206, 3)
  Body_SetNameKey(node206, -1)
  Body_SetCargoKey(node206, -1, 0)
  Body_SetCargoKey(node206, -1, 1)
  Body_SetCargoKey(node206, -1, 2)
  Node_EnterSimulation(node206)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide2_4")
  Node_AddSon(node176, node207)
  Body_SetCS(node207, MAT_Vector3(369.50889, 2090.825079, 385.2206), MAT_Vector3(-39.37203, 0, 0))
  Node_ParseIniFile(node207, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node207, 3)
  Body_SetNameKey(node207, -1)
  Body_SetCargoKey(node207, -1, 0)
  Body_SetCargoKey(node207, -1, 1)
  Body_SetCargoKey(node207, -1, 2)
  Node_EnterSimulation(node207)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide2_5")
  Node_AddSon(node176, node208)
  Body_SetCS(node208, MAT_Vector3(357.818033, 2118.273123, 385.2206), MAT_Vector3(-39.37203, 0, 0))
  Node_ParseIniFile(node208, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node208, 3)
  Body_SetNameKey(node208, -1)
  Body_SetCargoKey(node208, -1, 0)
  Body_SetCargoKey(node208, -1, 1)
  Body_SetCargoKey(node208, -1, 2)
  Node_EnterSimulation(node208)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide2_6")
  Node_AddSon(node176, node209)
  Body_SetCS(node209, MAT_Vector3(442.703862, 2038.470124, 385.2206), MAT_Vector3(-39.37203, 0, 0))
  Node_ParseIniFile(node209, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node209, 3)
  Body_SetNameKey(node209, -1)
  Body_SetCargoKey(node209, -1, 0)
  Body_SetCargoKey(node209, -1, 1)
  Body_SetCargoKey(node209, -1, 2)
  Node_EnterSimulation(node209)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide2_7")
  Node_AddSon(node176, node210)
  Body_SetCS(node210, MAT_Vector3(390.349147, 2069.476213, 385.2206), MAT_Vector3(-39.37203, 0, 0))
  Node_ParseIniFile(node210, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node210, 3)
  Body_SetNameKey(node210, -1)
  Body_SetCargoKey(node210, -1, 0)
  Body_SetCargoKey(node210, -1, 1)
  Body_SetCargoKey(node210, -1, 2)
  Node_EnterSimulation(node210)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("nod_vessel", "pir_sho_bomber2_1")
  Node_AddSon(node176, node211)
  Body_SetCS(node211, MAT_Vector3(324.82134, 2060.886717, 385.220621), MAT_Vector3(-44.048424, 0, 0))
  Node_ParseIniFile(node211, "osd/pir_sho/pir_sho_bomber.osd")
  Body_SetFriendOrFoeID(node211, 3)
  Body_SetNameKey(node211, -1)
  Body_SetCargoKey(node211, -1, 0)
  Body_SetCargoKey(node211, -1, 1)
  Body_SetCargoKey(node211, -1, 2)
  Node_EnterSimulation(node211)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("nod_vessel", "pir_sho_bomber2_2")
  Node_AddSon(node176, node212)
  Body_SetCS(node212, MAT_Vector3(356.149264, 2024.337708, 385.2206), MAT_Vector3(-44.04842, 0, 0))
  Node_ParseIniFile(node212, "osd/pir_sho/pir_sho_bomber.osd")
  Body_SetFriendOrFoeID(node212, 5)
  Body_SetNameKey(node212, -1)
  Body_SetCargoKey(node212, -1, 0)
  Body_SetCargoKey(node212, -1, 1)
  Body_SetCargoKey(node212, -1, 2)
  Node_EnterSimulation(node212)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("nod_vessel", "pir_sho_bomber2_3")
  Node_AddSon(node176, node213)
  Body_SetCS(node213, MAT_Vector3(383.300202, 1985.700177, 385.2206), MAT_Vector3(-44.04842, 0, 0))
  Node_ParseIniFile(node213, "osd/pir_sho/pir_sho_bomber.osd")
  Body_SetFriendOrFoeID(node213, 5)
  Body_SetNameKey(node213, -1)
  Body_SetCargoKey(node213, -1, 0)
  Body_SetCargoKey(node213, -1, 1)
  Body_SetCargoKey(node213, -1, 2)
  Node_EnterSimulation(node213)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("nod_vessel", "pir_sho_bomber3_1")
  Node_AddSon(node176, node214)
  Body_SetCS(node214, MAT_Vector3(239.59684, 3527.043421, 542.401384), MAT_Vector3(-88.314611, 0, 0))
  Node_ParseIniFile(node214, "osd/pir_sho/pir_sho_bomber.osd")
  Body_SetFriendOrFoeID(node214, 4)
  Body_SetNameKey(node214, -1)
  Body_SetCargoKey(node214, -1, 0)
  Body_SetCargoKey(node214, -1, 1)
  Body_SetCargoKey(node214, -1, 2)
  Node_EnterSimulation(node214)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("nod_vessel", "pir_sho_bomber3_2")
  Node_AddSon(node176, node215)
  Body_SetCS(node215, MAT_Vector3(235.306053, 3481.990153, 542.4014), MAT_Vector3(-88.31461, 0, 0))
  Node_ParseIniFile(node215, "osd/pir_sho/pir_sho_bomber.osd")
  Body_SetFriendOrFoeID(node215, 5)
  Body_SetNameKey(node215, -1)
  Body_SetCargoKey(node215, -1, 0)
  Body_SetCargoKey(node215, -1, 1)
  Body_SetCargoKey(node215, -1, 2)
  Node_EnterSimulation(node215)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("nod_vessel", "pir_sho_bomber3_3")
  Node_AddSon(node176, node216)
  Body_SetCS(node216, MAT_Vector3(237.451474, 3582.822562, 542.4014), MAT_Vector3(-88.31461, 0, 0))
  Node_ParseIniFile(node216, "osd/pir_sho/pir_sho_bomber.osd")
  Body_SetFriendOrFoeID(node216, 4)
  Body_SetNameKey(node216, -1)
  Body_SetCargoKey(node216, -1, 0)
  Body_SetCargoKey(node216, -1, 1)
  Body_SetCargoKey(node216, -1, 2)
  Node_EnterSimulation(node216)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide3_1")
  Node_AddSon(node176, node217)
  Body_SetCS(node217, MAT_Vector3(284.662836, 3586.400161, 527.039404), MAT_Vector3(-91.105707, 0, 0))
  Node_ParseIniFile(node217, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node217, 4)
  Body_SetNameKey(node217, -1)
  Body_SetCargoKey(node217, -1, 0)
  Body_SetCargoKey(node217, -1, 1)
  Body_SetCargoKey(node217, -1, 2)
  Node_EnterSimulation(node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide3_2")
  Node_AddSon(node176, node218)
  Body_SetCS(node218, MAT_Vector3(285.171099, 3530.487157, 527.0394), MAT_Vector3(-91.10571, 0, 0))
  Node_ParseIniFile(node218, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node218, 4)
  Body_SetNameKey(node218, -1)
  Body_SetCargoKey(node218, -1, 0)
  Body_SetCargoKey(node218, -1, 1)
  Body_SetCargoKey(node218, -1, 2)
  Node_EnterSimulation(node218)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide3_3")
  Node_AddSon(node176, node219)
  Body_SetCS(node219, MAT_Vector3(285.679399, 3484.23183, 527.0394), MAT_Vector3(-91.10571, 0, 0))
  Node_ParseIniFile(node219, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node219, 4)
  Body_SetNameKey(node219, -1)
  Body_SetCargoKey(node219, -1, 0)
  Body_SetCargoKey(node219, -1, 1)
  Body_SetCargoKey(node219, -1, 2)
  Node_EnterSimulation(node219)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide3_4")
  Node_AddSon(node176, node220)
  Body_SetCS(node220, MAT_Vector3(238.915931, 3622.997511, 527.0394), MAT_Vector3(-91.10571, 0, 0))
  Node_ParseIniFile(node220, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node220, 4)
  Body_SetNameKey(node220, -1)
  Body_SetCargoKey(node220, -1, 0)
  Body_SetCargoKey(node220, -1, 1)
  Body_SetCargoKey(node220, -1, 2)
  Node_EnterSimulation(node220)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide3_5")
  Node_AddSon(node176, node221)
  Body_SetCS(node221, MAT_Vector3(237.899303, 3451.193082, 527.0394), MAT_Vector3(-91.10571, 0, 0))
  Node_ParseIniFile(node221, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node221, 4)
  Body_SetNameKey(node221, -1)
  Body_SetCargoKey(node221, -1, 0)
  Body_SetCargoKey(node221, -1, 1)
  Body_SetCargoKey(node221, -1, 2)
  Node_EnterSimulation(node221)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node222)
  Camera_SetBackPlane(node222, 1024)
  Node_EnterSimulation(node222)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("NOD_Scenario", "IngameScene")
  Node_AddSon(node0, node223)
  Node_EnterSimulation(node223)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node223, node224)
  Node_EnterSimulation(node224)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node223, node225)
  Node_EnterSimulation(node225)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node225, node226)
  Position_SetPosition(node226, MAT_Vector3(861.002627, 2762.035287, 503.996852))
  Position_SetRadius(node226, 5)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("NOD_Position", "LookFrom_2")
  Node_AddSon(node225, node227)
  Position_SetPosition(node227, MAT_Vector3(924.267679, 2977.497941, 559.390165))
  Position_SetRadius(node227, 5)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("NOD_Path", "PlayerPath")
  Node_AddSon(node225, node228)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node228, node229)
  Position_SetPosition(node229, MAT_Vector3(855.8162, 2646.383, 506.0294))
  Position_SetRadius(node229, 5)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node228, node230)
  Position_SetPosition(node230, MAT_Vector3(855.3271, 2740.684, 506.0294))
  Position_SetRadius(node230, 5)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node228, node231)
  Position_SetPosition(node231, MAT_Vector3(870.218204, 2785.244555, 517.853089))
  Position_SetRadius(node231, 5)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node228, node232)
  Position_SetPosition(node232, MAT_Vector3(954.141916, 2990.45573, 556.9408))
  Position_SetRadius(node232, 5)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node223, node233)
  Node_EnterSimulation(node233)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("NOD_Director", "Intro")
  Node_AddSon(node233, node234)
  Node_EnterSimulation(node234)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("NOD_Director", "IntroAddOn")
  Node_AddSon(node233, node235)
  Node_EnterSimulation(node235)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("NOD_Director", "Intro_Audio")
  Node_AddSon(node233, node236)
  Node_EnterSimulation(node236)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node223, node237)
  Node_EnterSimulation(node237)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node223, node238)
  Node_EnterSimulation(node238)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, N)
SetEnemyMatrixElement(2, 0, N)
SetEnemyMatrixElement(3, 0, E)
SetEnemyMatrixElement(4, 0, E)
SetEnemyMatrixElement(5, 0, E)
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
SetEnemyMatrixElement(5, 1, E)
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
SetEnemyMatrixElement(5, 2, E)
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
SetEnemyMatrixElement(5, 3, E)
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
SetEnemyMatrixElement(2, 4, N)
SetEnemyMatrixElement(3, 4, F)
SetEnemyMatrixElement(4, 4, F)
SetEnemyMatrixElement(5, 4, F)
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
SetEnemyMatrixElement(1, 5, E)
SetEnemyMatrixElement(2, 5, N)
SetEnemyMatrixElement(3, 5, F)
SetEnemyMatrixElement(4, 5, F)
SetEnemyMatrixElement(5, 5, F)
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
                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                      if not (o6423.Value ~= True) then
                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
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
                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                      if not (o6447.Value == True) then
                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
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
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
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
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o76, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o76, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o76, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetFriendlyFireMode(L0.Node, 0)
  CallFunction(o76, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o79.SetStateValue(L1)
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
o79 = { [nil] = {}, Start = function()
  o79["Value"] = False
  o6415.StartCalculate()
  o6416.StartCalculate()
end, SetStateValue = function(L0)
  if not (o79.Value == L0) then
    o79["Value"] = L0
    o6415.ReCalculate()
    o6416.ReCalculate()
  end
end }
S_o123 = { [nil] = {}, Start = function(L0)

end }
S_o169 = { [nil] = {}, Start = function(L0)

end }
S_o215 = { [nil] = {}, Start = function(L0)

end }
S_o261 = { [nil] = {}, Start = function(L0)

end }
S_o307 = { [nil] = {}, Start = function(L0)

end }
S_o353 = { [nil] = {}, Start = function(L0)

end }
S_o399 = { [nil] = {}, Start = function(L0)

end }
S_o445 = { [nil] = {}, Start = function(L0)

end }
S_o491 = { [nil] = {}, Start = function(L0)

end }
S_o537 = { [nil] = {}, Start = function(L0)

end }
S_o583 = { [nil] = {}, Start = function(L0)

end }
S_o629 = { [nil] = {}, Start = function(L0)

end }
S_o675 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o675, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o675, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o675, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o675, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o675, "Code5")
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
S_o721 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o721, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o721, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o721, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o721, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o721, "Code5")
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
S_o767 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o767, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o767, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o767, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o767, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o767, "Code5")
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
S_o813 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o813, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o813, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o813, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o813, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o813, "Code5")
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
S_o859 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o859, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o859, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o859, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o859, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o859, "Code5")
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
S_o905 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o905, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o905, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o905, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o905, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o905, "Code5")
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
S_o951 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o951, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o951, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o951, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o951, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o951, "Code5")
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
S_o997 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o997, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o997, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o997, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o997, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o997, "Code5")
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
S_o1043 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1043, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1043, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1043, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1043, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o1043, "Code5")
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
S_o1089 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1089, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1089, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1089, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1089, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o1089, "Code5")
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
S_o1135 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1135, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1135, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1135, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1135, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o1135, "Code5")
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
S_o1181 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1181, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1181, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1181, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1181, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o1181, "Code5")
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
S_o1227 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1227, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1227, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1227, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1227, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o1227, "Code5")
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
S_o1273 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1273, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1273, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1273, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1273, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o1273, "Code5")
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
S_o1319 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1319, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1319, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1319, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1319, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o1319, "Code5")
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
S_o1365 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1365, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1365, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1365, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1365, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o1365, "Code5")
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
S_o1411 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1411, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1411, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1411, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1411, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o1411, "Code5")
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
S_o1457 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1457, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1457, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1457, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1457, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o1457, "Code5")
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
S_o1503 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1503, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1503, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1503, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 60)
  CallFunction(o1503, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code5")
  else
    CallFunction(o1503, "Code5")
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

end }
S_o2653 = { [nil] = {}, Start = function(L0)

end }
S_o2699 = { [nil] = {}, Start = function(L0)

end }
S_o2745 = { [nil] = {}, Start = function(L0)

end }
S_o2791 = { [nil] = {}, Start = function(L0)

end }
S_o2837 = { [nil] = {}, Start = function(L0)

end }
S_o2883 = { [nil] = {}, Start = function(L0)

end }
S_o2929 = { [nil] = {}, Start = function(L0)

end }
S_o2975 = { [nil] = {}, Start = function(L0)

end }
S_o3021 = { [nil] = {}, Start = function(L0)

end }
S_o3067 = { [nil] = {}, Start = function(L0)

end }
S_o3113 = { [nil] = {}, Start = function(L0)

end }
S_o3159 = { [nil] = {}, Start = function(L0)

end }
S_o3203 = { [nil] = {}, Start = function(L0)

end }
S_o3247 = { [nil] = {}, Start = function(L0)

end }
S_o3291 = { [nil] = {}, Start = function(L0)

end }
S_o3335 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3335, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3335, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3335, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetFriendlyFireMode(L0.Node, 0)
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3335, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3335, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o3335, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o3339.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o3336.Value ~= True) then
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
o3336 = { [nil] = {}, GetCalculated = function()
  if not (o6389.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3336.SetStateValue(o3336.GetCalculated())
end, StartCalculate = function()
  o3336["Value"] = o3336.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3336.Value == L0) then
    DelayedFunction(30, o3336, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3336.Value == L0) then
    o3336["Value"] = L0
    CallFunction(o3335, "ProcesseStateChange")
  end
end }
o3339 = { [nil] = {}, Start = function()
  o3339["Value"] = False
  o6418.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3339.Value == L0) then
    o3339["Value"] = L0
    o6418.ReCalculate()
  end
end }
S_o3383 = { [nil] = {}, Start = function(L0)

end }
S_o3429 = { [nil] = {}, Start = function(L0)

end }
S_o3475 = { [nil] = {}, Start = function(L0)

end }
S_o3521 = { [nil] = {}, Start = function(L0)

end }
S_o3567 = { [nil] = {}, Start = function(L0)

end }
S_o3613 = { [nil] = {}, Start = function(L0)

end }
S_o3659 = { [nil] = {}, Start = function(L0)

end }
S_o3705 = { [nil] = {}, Start = function(L0)

end }
S_o3751 = { [nil] = {}, Start = function(L0)

end }
S_o3797 = { [nil] = {}, Start = function(L0)

end }
S_o3843 = { [nil] = {}, Start = function(L0)

end }
S_o3889 = { [nil] = {}, Start = function(L0)

end }
S_o3935 = { [nil] = {}, Start = function(L0)

end }
S_o3981 = { [nil] = {}, Start = function(L0)

end }
S_o4027 = { [nil] = {}, Start = function(L0)

end }
S_o4073 = { [nil] = {}, Start = function(L0)

end }
S_o4119 = { [nil] = {}, Start = function(L0)

end }
S_o4165 = { [nil] = {}, Start = function(L0)

end }
S_o4211 = { [nil] = {}, Start = function(L0)

end }
S_o4257 = { [nil] = {}, Start = function(L0)

end }
S_o4303 = { [nil] = {}, Start = function(L0)

end }
S_o4349 = { [nil] = {}, Start = function(L0)

end }
S_o4395 = { [nil] = {}, Start = function(L0)

end }
S_o4441 = { [nil] = {}, Start = function(L0)

end }
S_o4487 = { [nil] = {}, Start = function(L0)

end }
S_o4533 = { [nil] = {}, Start = function(L0)

end }
S_o4579 = { [nil] = {}, Start = function(L0)

end }
S_o4625 = { [nil] = {}, Start = function(L0)

end }
S_o4671 = { [nil] = {}, Start = function(L0)

end }
S_o4717 = { [nil] = {}, Start = function(L0)

end }
S_o4763 = { [nil] = {}, Start = function(L0)

end }
S_o4809 = { [nil] = {}, Start = function(L0)

end }
S_o4855 = { [nil] = {}, Start = function(L0)

end }
S_o4901 = { [nil] = {}, Start = function(L0)

end }
S_o4947 = { [nil] = {}, Start = function(L0)

end }
S_o4993 = { [nil] = {}, Start = function(L0)

end }
S_o5039 = { [nil] = {}, Start = function(L0)

end }
S_o5085 = { [nil] = {}, Start = function(L0)

end }
S_o5131 = { [nil] = {}, Start = function(L0)

end }
S_o5177 = { [nil] = {}, Start = function(L0)

end }
S_o5223 = { [nil] = {}, Start = function(L0)

end }
S_o5269 = { [nil] = {}, Start = function(L0)

end }
S_o5315 = { [nil] = {}, Start = function(L0)

end }
S_o5361 = { [nil] = {}, Start = function(L0)

end }
S_o5407 = { [nil] = {}, Start = function(L0)

end }
S_o5453 = { [nil] = {}, Start = function(L0)

end }
S_o5499 = { [nil] = {}, Start = function(L0)

end }
S_o5545 = { [nil] = {}, Start = function(L0)

end }
S_o5591 = { [nil] = {}, Start = function(L0)

end }
S_o5637 = { [nil] = {}, Start = function(L0)

end }
S_o5683 = { [nil] = {}, Start = function(L0)

end }
S_o5729 = { [nil] = {}, Start = function(L0)

end }
S_o5775 = { [nil] = {}, Start = function(L0)

end }
S_o5821 = { [nil] = {}, Start = function(L0)

end }
S_o5867 = { [nil] = {}, Start = function(L0)

end }
S_o5913 = { [nil] = {}, Start = function(L0)

end }
S_o5959 = { [nil] = {}, Start = function(L0)

end }
o6005 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/dm_Harvester1_ApproachPath", "/Scenario_Dynamic/Navigation/dm_Harvester1_DockPath", "/Scenario_Dynamic/Navigation/dm_Harvester1_Area")
o6006 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/dm_Harvester2_ApproachPath", "/Scenario_Dynamic/Navigation/dm_Harvester2_DockPath", "/Scenario_Dynamic/Navigation/dm_Harvester2_Area")
S_o6007 = { [nil] = {}, Start = function(L0)

end }
S_o6053 = { [nil] = {}, Start = function(L0)

end }
S_o6099 = { [nil] = {}, Start = function(L0)

end }
S_o6145 = { [nil] = {}, Start = function(L0)

end }
S_o6191 = { [nil] = {}, Start = function(L0)

end }
S_o6237 = { [nil] = {}, Start = function(L0)

end }
S_o6283 = { [nil] = {}, Start = function(L0)

end }
S_o6329 = { [nil] = {}, Start = function(L0)

end }
S_o6375 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_plasma2", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_shell", 9999)
  Body_AddItem(L0.Node, "gun_flak", 1)
  Body_AddItem(L0.Node, "device_generator1", 1)
  Body_AddItem(L0.Node, "ammo_energy", 200)
  Body_AddItem(L0.Node, "torpedo_threshershark", 2)
  Body_AddItem(L0.Node, "gun_vendetta1", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 4)
  CallFunction(o6375, "Code9")
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
o6389 = { [nil] = {}, Start = function()
  o6389["Value"] = False
  o3336.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6389.Value == L0) then
    o6389["Value"] = L0
    o3336.ReCalculate()
  end
end }
o6390 = { [nil] = {}, GetCalculated = function()
  if not (o6473.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6390.SetStateValue(o6390.GetCalculated())
end, StartCalculate = function()
  o6390["Value"] = o6390.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o6451, "Code7")
end, SetStateValue = function(L0)
  if not (o6390.Value == L0) then
    o6390["Value"] = L0
    if not (L0 ~= 1) then
      o6390.ChangeTo1()
    end
  end
end }
o6391 = { [nil] = {}, GetCalculated = function()
  if not (o6531.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6391.SetStateValue(o6391.GetCalculated())
end, StartCalculate = function()
  o6391["Value"] = o6391.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o6509, "Code6")
end, SetStateValue = function(L0)
  if not (o6391.Value == L0) then
    o6391["Value"] = L0
    if not (L0 ~= 1) then
      o6391.ChangeTo1()
    end
  end
end }
o6392 = { [nil] = {}, GetCalculated = function()
  if not (o6645.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6392.SetStateValue(o6392.GetCalculated())
end, StartCalculate = function()
  o6392["Value"] = o6392.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o6624, "Code5")
end, SetStateValue = function(L0)
  if not (o6392.Value == L0) then
    o6392["Value"] = L0
    if not (L0 ~= 1) then
      o6392.ChangeTo1()
    end
  end
end }
o6393 = { [nil] = {}, GetCalculated = function()
  if not (o6588.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6393.SetStateValue(o6393.GetCalculated())
end, StartCalculate = function()
  o6393["Value"] = o6393.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o6567, "Code5")
end, SetStateValue = function(L0)
  if not (o6393.Value == L0) then
    o6393["Value"] = L0
    if not (L0 ~= 1) then
      o6393.ChangeTo1()
    end
  end
end }
o6394 = { [nil] = {}, GetCalculated = function()
  if not (o6698.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6754.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6810.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6866.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6922.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6978.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7034.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7090.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7146.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7202.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7258.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7314.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 ~= 9) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6394.SetStateValue(o6394.GetCalculated())
end, StartCalculate = function()
  o6394["Value"] = o6394.GetCalculated()
  o6396.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6394.Value == L0) then
    o6394["Value"] = L0
    o6396.ReCalculate()
  end
end }
o6395 = { [nil] = {}, GetCalculated = function()
  if not (o6698.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6754.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6810.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6866.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6922.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6978.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7034.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7090.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7146.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7202.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7258.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7314.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 ~= 12) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6395.SetStateValue(o6395.GetCalculated())
end, StartCalculate = function()
  o6395["Value"] = o6395.GetCalculated()
  o6397.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6395.Value == L0) then
    o6395["Value"] = L0
    o6397.ReCalculate()
  end
end }
o6396 = { [nil] = {}, GetCalculated = function()
  if not (o6394.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6396.SetStateValue(o6396.GetCalculated())
end, StartCalculate = function()
  o6396["Value"] = o6396.GetCalculated()
  o7355.StartCalculate()
  o7411.StartCalculate()
  o7467.StartCalculate()
  o7523.StartCalculate()
  o7579.StartCalculate()
  o7635.StartCalculate()
  o7691.StartCalculate()
  o7747.StartCalculate()
  o7803.StartCalculate()
  o7859.StartCalculate()
  o7915.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3335.Node, o6375.Node, 735)
end, SetStateValue = function(L0)
  if not (o6396.Value == L0) then
    o6396["Value"] = L0
    o7355.ReCalculate()
    o7411.ReCalculate()
    o7467.ReCalculate()
    o7523.ReCalculate()
    o7579.ReCalculate()
    o7635.ReCalculate()
    o7691.ReCalculate()
    o7747.ReCalculate()
    o7803.ReCalculate()
    o7859.ReCalculate()
    o7915.ReCalculate()
    if not (L0 ~= 1) then
      o6396.ChangeTo1()
    end
  end
end }
o6397 = { [nil] = {}, GetCalculated = function()
  if not (o6395.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6397.SetStateValue(o6397.GetCalculated())
end, StartCalculate = function()
  o6397["Value"] = o6397.GetCalculated()
  o6417.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
  SED_SetTaskTextKey(0, -1, -1)
  SendRadioMessageTake(o3335.Node, o6375.Node, 184)
end, SetStateValue = function(L0)
  if not (o6397.Value == L0) then
    o6397["Value"] = L0
    o6417.ReCalculate()
    if not (L0 ~= 1) then
      o6397.ChangeTo1()
    end
  end
end }
o6398 = { [nil] = {}, GetCalculated = function()
  if not (o7413.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6398.SetStateValue(o6398.GetCalculated())
end, StartCalculate = function()
  o6398["Value"] = o6398.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3335.Node, o6375.Node, 736)
end, SetStateValue = function(L0)
  if not (o6398.Value == L0) then
    o6398["Value"] = L0
    if not (L0 ~= 1) then
      o6398.ChangeTo1()
    end
  end
end }
o6399 = { [nil] = {}, GetCalculated = function()
  if not (o7357.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6399.SetStateValue(o6399.GetCalculated())
end, StartCalculate = function()
  o6399["Value"] = o6399.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3335.Node, o6375.Node, 732)
end, SetStateValue = function(L0)
  if not (o6399.Value == L0) then
    DelayedFunction(10, o6399, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6399.Value == L0) then
    o6399["Value"] = L0
    if not (L0 ~= 1) then
      o6399.ChangeTo1()
    end
  end
end }
o6400 = { [nil] = {}, GetCalculated = function()
  if not (o7363.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6400.SetStateValue(o6400.GetCalculated())
end, StartCalculate = function()
  o6400["Value"] = o6400.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o7353.Node, o6375.Node, 180)
end, SetStateValue = function(L0)
  if not (o6400.Value == L0) then
    o6400["Value"] = L0
    if not (L0 ~= 1) then
      o6400.ChangeTo1()
    end
  end
end }
o6401 = { [nil] = {}, GetCalculated = function()
  if not (o7364.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6401.SetStateValue(o6401.GetCalculated())
end, StartCalculate = function()
  o6401["Value"] = o6401.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o7353.Node, o6375.Node, 181)
end, SetStateValue = function(L0)
  if not (o6401.Value == L0) then
    o6401["Value"] = L0
    if not (L0 ~= 1) then
      o6401.ChangeTo1()
    end
  end
end }
o6402 = { [nil] = {}, GetCalculated = function()
  if not (o7365.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6402.SetStateValue(o6402.GetCalculated())
end, StartCalculate = function()
  o6402["Value"] = o6402.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o7353.Node, o6375.Node, 182)
end, SetStateValue = function(L0)
  if not (o6402.Value == L0) then
    o6402["Value"] = L0
    if not (L0 ~= 1) then
      o6402.ChangeTo1()
    end
  end
end }
o6403 = { [nil] = {}, GetCalculated = function()
  if not (o7374.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6403.SetStateValue(o6403.GetCalculated())
end, StartCalculate = function()
  o6403["Value"] = o6403.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3335.Node, o6375.Node, 188)
  Game_BonusObjectiveReached(GetGameNode(), 1, 2002, 2103)
end, SetStateValue = function(L0)
  if not (o6403.Value == L0) then
    o6403["Value"] = L0
    if not (L0 ~= 1) then
      o6403.ChangeTo1()
    end
  end
end }
o6404 = { [nil] = {}, GetCalculated = function()
  if not (o7375.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6404.SetStateValue(o6404.GetCalculated())
end, StartCalculate = function()
  o6404["Value"] = o6404.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6451.Node, o6375.Node, 185)
end, SetStateValue = function(L0)
  if not (o6404.Value == L0) then
    o6404["Value"] = L0
    if not (L0 ~= 1) then
      o6404.ChangeTo1()
    end
  end
end }
o6405 = { [nil] = {}, GetCalculated = function()
  if not (o7376.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6405.SetStateValue(o6405.GetCalculated())
end, StartCalculate = function()
  o6405["Value"] = o6405.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6509.Node, o6375.Node, 186)
end, SetStateValue = function(L0)
  if not (o6405.Value == L0) then
    o6405["Value"] = L0
    if not (L0 ~= 1) then
      o6405.ChangeTo1()
    end
  end
end }
o6406 = { [nil] = {}, GetCalculated = function()
  if not (o7377.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6406.SetStateValue(o6406.GetCalculated())
end, StartCalculate = function()
  o6406["Value"] = o6406.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6624.Node, o6375.Node, 187)
end, SetStateValue = function(L0)
  if not (o6406.Value == L0) then
    o6406["Value"] = L0
    if not (L0 ~= 1) then
      o6406.ChangeTo1()
    end
  end
end }
o6407 = { [nil] = {}, GetCalculated = function()
  if not (o7378.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6407.SetStateValue(o6407.GetCalculated())
end, StartCalculate = function()
  o6407["Value"] = o6407.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6567.Node, o6375.Node, 189)
end, SetStateValue = function(L0)
  if not (o6407.Value == L0) then
    o6407["Value"] = L0
    if not (L0 ~= 1) then
      o6407.ChangeTo1()
    end
  end
end }
o6408 = { [nil] = {}, GetCalculated = function()
  if not (o7424.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7480.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7536.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7592.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7648.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7704.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7760.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7816.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7872.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7928.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7368.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 ~= 4) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6408.SetStateValue(o6408.GetCalculated())
end, StartCalculate = function()
  o6408["Value"] = o6408.GetCalculated()
  o7971.StartCalculate()
  o8027.StartCalculate()
  o8083.StartCalculate()
  o8139.StartCalculate()
  o8195.StartCalculate()
  o8251.StartCalculate()
  o8307.StartCalculate()
  o8363.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6408.Value == L0) then
    o6408["Value"] = L0
    o7971.ReCalculate()
    o8027.ReCalculate()
    o8083.ReCalculate()
    o8139.ReCalculate()
    o8195.ReCalculate()
    o8251.ReCalculate()
    o8307.ReCalculate()
    o8363.ReCalculate()
  end
end }
o6410 = { [nil] = {}, GetCalculated = function()
  if not (o7424.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7480.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7536.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7592.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7648.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7704.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7760.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7816.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7872.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7928.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7368.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 ~= 8) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6410.SetStateValue(o6410.GetCalculated())
end, StartCalculate = function()
  o6410["Value"] = o6410.GetCalculated()
  o6412.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6410.Value == L0) then
    o6410["Value"] = L0
    o6412.ReCalculate()
  end
end }
o6411 = { [nil] = {}, GetCalculated = function()
  if not (o7424.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7480.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7536.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7592.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7648.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7704.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7760.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7816.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7872.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7928.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o7368.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 ~= 11) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6411.SetStateValue(o6411.GetCalculated())
end, StartCalculate = function()
  o6411["Value"] = o6411.GetCalculated()
  o6413.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6411.Value == L0) then
    o6411["Value"] = L0
    o6413.ReCalculate()
  end
end }
o6412 = { [nil] = {}, GetCalculated = function()
  if not (o6410.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6412.SetStateValue(o6412.GetCalculated())
end, StartCalculate = function()
  o6412["Value"] = o6412.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6624.Node, o6375.Node, 178)
end, SetStateValue = function(L0)
  if not (o6412.Value == L0) then
    o6412["Value"] = L0
    if not (L0 ~= 1) then
      o6412.ChangeTo1()
    end
  end
end }
o6413 = { [nil] = {}, GetCalculated = function()
  if not (o6411.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6413.SetStateValue(o6413.GetCalculated())
end, StartCalculate = function()
  o6413["Value"] = o6413.GetCalculated()
  o6417.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 2, 2000, 2101)
  SED_SetTaskTextKey(0, -1, -1)
  SendRadioMessageTake(o3335.Node, o6375.Node, 737)
end, SetStateValue = function(L0)
  if not (o6413.Value == L0) then
    o6413["Value"] = L0
    o6417.ReCalculate()
    if not (L0 ~= 1) then
      o6413.ChangeTo1()
    end
  end
end }
o6414 = { [nil] = {}, GetCalculated = function()
  if not (o8141.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6414.SetStateValue(o6414.GetCalculated())
end, StartCalculate = function()
  o6414["Value"] = o6414.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3335.Node, o6375.Node, 733)
  SendRadioMessageTake(o30.Node, o6375.Node, 190)
  SendRadioMessageTake(o30.Node, o6375.Node, 734)
end, SetStateValue = function(L0)
  if not (o6414.Value == L0) then
    o6414["Value"] = L0
    if not (L0 ~= 1) then
      o6414.ChangeTo1()
    end
  end
end }
o6415 = { [nil] = {}, GetCalculated = function()
  if not (o7984.Value ~= True) then
    if not (o8040.Value ~= True) then
      if not (o8096.Value ~= True) then
        if not (o8152.Value ~= True) then
          if not (o8208.Value ~= True) then
            if not (o8264.Value ~= True) then
              if not (o8320.Value ~= True) then
                if not (o8376.Value ~= True) then
                  if not (o79.Value ~= False) then
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
  o6415.SetStateValue(o6415.GetCalculated())
end, StartCalculate = function()
  o6415["Value"] = o6415.GetCalculated()
  o7970.StartCalculate()
  o8026.StartCalculate()
  o8082.StartCalculate()
  o8138.StartCalculate()
  o8194.StartCalculate()
  o8250.StartCalculate()
  o8306.StartCalculate()
  o8362.StartCalculate()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 2, 2002, 2102)
  SendRadioMessageTake(o3335.Node, o6375.Node, 738)
end, SetStateValue = function(L0)
  if not (o6415.Value == L0) then
    o6415["Value"] = L0
    o7970.ReCalculate()
    o8026.ReCalculate()
    o8082.ReCalculate()
    o8138.ReCalculate()
    o8194.ReCalculate()
    o8250.ReCalculate()
    o8306.ReCalculate()
    o8362.ReCalculate()
    if not (L0 ~= 1) then
      o6415.ChangeTo1()
    end
  end
end }
o6416 = { [nil] = {}, GetCalculated = function()
  if not (o7984.Value ~= True) then
    if not (o8040.Value ~= True) then
      if not (o8096.Value ~= True) then
        if not (o8152.Value ~= True) then
          if not (o8208.Value ~= True) then
            if not (o8264.Value ~= True) then
              if not (o8320.Value ~= True) then
                if not (o8376.Value ~= True) then
                  if not (o79.Value ~= True) then
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
  o6416.SetStateValue(o6416.GetCalculated())
end, StartCalculate = function()
  o6416["Value"] = o6416.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveFailed(GetGameNode(), 2, 0, 0)
end, SetStateValue = function(L0)
  if not (o6416.Value == L0) then
    o6416["Value"] = L0
    if not (L0 ~= 1) then
      o6416.ChangeTo1()
    end
  end
end }
o6417 = { [nil] = {}, GetCalculated = function()
  if not (o6397.Value ~= True) then
    if not (o6413.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o6417.SetStateValue(o6417.GetCalculated())
end, StartCalculate = function()
  o6417["Value"] = o6417.GetCalculated()
  o6423.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 3, 2000, 2104)
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o6417.Value == L0) then
    DelayedFunction(2, o6417, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6417.Value == L0) then
    o6417["Value"] = L0
    o6423.ReCalculate()
    if not (L0 ~= 1) then
      o6417.ChangeTo1()
    end
  end
end }
o6418 = { [nil] = {}, GetCalculated = function()
  if not (o3339.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6418.SetStateValue(o6418.GetCalculated())
end, StartCalculate = function()
  o6418["Value"] = o6418.GetCalculated()
  o6447.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 1, 2001, 2104)
  SendRadioMessageTake(o6375.Node, o6375.Node, 183)
end, SetStateValue = function(L0)
  if not (o6418.Value == L0) then
    o6418["Value"] = L0
    o6447.ReCalculate()
    if not (L0 ~= 1) then
      o6418.ChangeTo1()
    end
  end
end }
o6419 = { [nil] = {}, GetCalculated = function()
  if not (o6473.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6419.SetStateValue(o6419.GetCalculated())
end, StartCalculate = function()
  o6419["Value"] = o6419.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o6451, "Code7")
end, SetStateValue = function(L0)
  if not (o6419.Value == L0) then
    o6419["Value"] = L0
    if not (L0 ~= 1) then
      o6419.ChangeTo1()
    end
  end
end }
o6420 = { [nil] = {}, GetCalculated = function()
  if not (o6531.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6420.SetStateValue(o6420.GetCalculated())
end, StartCalculate = function()
  o6420["Value"] = o6420.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o6509, "Code6")
end, SetStateValue = function(L0)
  if not (o6420.Value == L0) then
    o6420["Value"] = L0
    if not (L0 ~= 1) then
      o6420.ChangeTo1()
    end
  end
end }
o6421 = { [nil] = {}, GetCalculated = function()
  if not (o6588.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6421.SetStateValue(o6421.GetCalculated())
end, StartCalculate = function()
  o6421["Value"] = o6421.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o6567, "Code5")
end, SetStateValue = function(L0)
  if not (o6421.Value == L0) then
    o6421["Value"] = L0
    if not (L0 ~= 1) then
      o6421.ChangeTo1()
    end
  end
end }
o6422 = { [nil] = {}, GetCalculated = function()
  if not (o6645.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6422.SetStateValue(o6422.GetCalculated())
end, StartCalculate = function()
  o6422["Value"] = o6422.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o6624, "Code5")
end, SetStateValue = function(L0)
  if not (o6422.Value == L0) then
    o6422["Value"] = L0
    if not (L0 ~= 1) then
      o6422.ChangeTo1()
    end
  end
end }
o6423 = { [nil] = {}, GetCalculated = function()
  if not (o6417.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6423.SetStateValue(o6423.GetCalculated())
end, StartCalculate = function()
  o6423["Value"] = o6423.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6423.Value == L0) then
    o6423["Value"] = L0
    o2.ReCalculate()
  end
end }
o6447 = { [nil] = {}, GetCalculated = function()
  if not (o6418.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6447.SetStateValue(o6447.GetCalculated())
end, StartCalculate = function()
  o6447["Value"] = o6447.GetCalculated()
  o26.StartCalculate()
end, ChangeTo1 = function()
  Game_BonusObjectiveFailed(GetGameNode(), 1, 2003, 2100)
end, SetStateValue = function(L0)
  if not (o6447.Value == L0) then
    o6447["Value"] = L0
    o26.ReCalculate()
    if not (L0 ~= 1) then
      o6447.ChangeTo1()
    end
  end
end }
S_o6451 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o6006)
  CallFunction(o6451, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6451, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o6006, "Code3")
  else
    CallFunction(o6451, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetShieldBarrier(L0.Node, 0.09, 0.1)
  CallFunction(o6451, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/StoneyPath_1", 1, 2 } }("Code5")
  else
    CallFunction(o6451, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  o8426.SetStateValue(True)
  CallFunction(o6451, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "E", "", "", "", 0.5, "Code7")
  else
    CallFunction(o6451, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  StopAllActiveBehaviours(L0)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o6451, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o6005, nil, 0, "Code10")
  else
    CallFunction(o6451, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, SetStateValue_KineticShield10 = function(L0, L1)
  o6473.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6454.Value ~= True) then
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
o6454 = { [nil] = {}, GetCalculated = function()
  if not (o6572.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6454.SetStateValue(o6454.GetCalculated())
end, StartCalculate = function()
  o6454["Value"] = o6454.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6454.Value == L0) then
    o6454["Value"] = L0
    CallFunction(o6451, "ProcesseStateChange")
  end
end }
o6473 = { [nil] = {}, Start = function()
  o6473["Value"] = False
  o6390.StartCalculate()
  o6419.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6473.Value == L0) then
    o6473["Value"] = L0
    o6390.ReCalculate()
    o6419.ReCalculate()
  end
end }
S_o6509 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o6005)
  CallFunction(o6509, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6509, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o6005, "Code3")
  else
    CallFunction(o6509, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetShieldBarrier(L0.Node, 0.09, 0.1)
  CallFunction(o6509, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MayDayPath_1", 1, 2 } }("Code5")
  else
    CallFunction(o6509, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "E", "", "", "", 0.5, "Code6")
  else
    CallFunction(o6509, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o6509, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o6005, nil, 0, "Code9")
  else
    CallFunction(o6509, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_KineticShield10 = function(L0, L1)
  o6531.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6512.Value ~= True) then
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
o6512 = { [nil] = {}, GetCalculated = function()
  if not (o8426.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6512.SetStateValue(o6512.GetCalculated())
end, StartCalculate = function()
  o6512["Value"] = o6512.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6512.Value == L0) then
    o6512["Value"] = L0
    CallFunction(o6509, "ProcesseStateChange")
  end
end }
o6531 = { [nil] = {}, Start = function()
  o6531["Value"] = False
  o6391.StartCalculate()
  o6420.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6531.Value == L0) then
    o6531["Value"] = L0
    o6391.ReCalculate()
    o6420.ReCalculate()
  end
end }
S_o6567 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6567, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6567, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6567, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetShieldBarrier(L0.Node, 0.09, 0.1)
  CallFunction(o6567, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o6567, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  StopAllActiveBehaviours(L0)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o6567, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o6006, nil, 0, "Code8")
  else
    CallFunction(o6567, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Born = function(L0, L1)
  o6572.SetStateValue(L1)
end, SetStateValue_KineticShield10 = function(L0, L1)
  o6588.SetStateValue(L1)
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
o6572 = { [nil] = {}, Start = function()
  o6572["Value"] = False
  o6454.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6572.Value == L0) then
    o6572["Value"] = L0
    o6454.ReCalculate()
  end
end }
o6588 = { [nil] = {}, Start = function()
  o6588["Value"] = False
  o6393.StartCalculate()
  o6421.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6588.Value == L0) then
    o6588["Value"] = L0
    o6393.ReCalculate()
    o6421.ReCalculate()
  end
end }
S_o6624 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6624, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6624, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6624, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetShieldBarrier(L0.Node, 0.09, 0.1)
  CallFunction(o6624, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o6624, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  StopAllActiveBehaviours(L0)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o6624, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o6006, nil, 0, "Code8")
  else
    CallFunction(o6624, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_KineticShield10 = function(L0, L1)
  o6645.SetStateValue(L1)
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
o6645 = { [nil] = {}, Start = function()
  o6645["Value"] = False
  o6392.StartCalculate()
  o6422.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6645.Value == L0) then
    o6645["Value"] = L0
    o6392.ReCalculate()
    o6422.ReCalculate()
  end
end }
S_o6681 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6681, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6681, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6681, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "wng", "pla", "E", "", 0.75, "Code4")
  else
    CallFunction(o6681, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o6698.SetStateValue(L1)
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
o6698 = { [nil] = {}, Start = function()
  o6698["Value"] = False
  o6394.StartCalculate()
  o6395.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6698.Value == L0) then
    o6698["Value"] = L0
    o6394.ReCalculate()
    o6395.ReCalculate()
  end
end }
S_o6737 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6737, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6737, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6737, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "wng", "pla", "E", "", 0.75, "Code4")
  else
    CallFunction(o6737, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o6754.SetStateValue(L1)
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
o6754 = { [nil] = {}, Start = function()
  o6754["Value"] = False
  o6394.StartCalculate()
  o6395.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6754.Value == L0) then
    o6754["Value"] = L0
    o6394.ReCalculate()
    o6395.ReCalculate()
  end
end }
S_o6793 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6793, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6793, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6793, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "wng", "pla", "E", "", 0.75, "Code4")
  else
    CallFunction(o6793, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o6810.SetStateValue(L1)
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
o6810 = { [nil] = {}, Start = function()
  o6810["Value"] = False
  o6394.StartCalculate()
  o6395.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6810.Value == L0) then
    o6810["Value"] = L0
    o6394.ReCalculate()
    o6395.ReCalculate()
  end
end }
S_o6849 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6849, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6849, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6849, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "wng", "pla", "E", "", 0.75, "Code4")
  else
    CallFunction(o6849, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o6866.SetStateValue(L1)
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
o6866 = { [nil] = {}, Start = function()
  o6866["Value"] = False
  o6394.StartCalculate()
  o6395.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6866.Value == L0) then
    o6866["Value"] = L0
    o6394.ReCalculate()
    o6395.ReCalculate()
  end
end }
S_o6905 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6905, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6905, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6905, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "wng", "pla", "E", "", 0.75, "Code4")
  else
    CallFunction(o6905, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o6922.SetStateValue(L1)
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
o6922 = { [nil] = {}, Start = function()
  o6922["Value"] = False
  o6394.StartCalculate()
  o6395.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6922.Value == L0) then
    o6922["Value"] = L0
    o6394.ReCalculate()
    o6395.ReCalculate()
  end
end }
S_o6961 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6961, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6961, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6961, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "wng", "pla", "E", "", 0.75, "Code4")
  else
    CallFunction(o6961, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o6978.SetStateValue(L1)
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
o6978 = { [nil] = {}, Start = function()
  o6978["Value"] = False
  o6394.StartCalculate()
  o6395.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6978.Value == L0) then
    o6978["Value"] = L0
    o6394.ReCalculate()
    o6395.ReCalculate()
  end
end }
S_o7017 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7017, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7017, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7017, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "wng", "pla", "E", "", 0.75, "Code4")
  else
    CallFunction(o7017, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o7034.SetStateValue(L1)
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
o7034 = { [nil] = {}, Start = function()
  o7034["Value"] = False
  o6394.StartCalculate()
  o6395.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7034.Value == L0) then
    o7034["Value"] = L0
    o6394.ReCalculate()
    o6395.ReCalculate()
  end
end }
S_o7073 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7073, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7073, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7073, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "wng", "pla", "E", "", 0.75, "Code4")
  else
    CallFunction(o7073, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o7090.SetStateValue(L1)
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
o7090 = { [nil] = {}, Start = function()
  o7090["Value"] = False
  o6394.StartCalculate()
  o6395.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7090.Value == L0) then
    o7090["Value"] = L0
    o6394.ReCalculate()
    o6395.ReCalculate()
  end
end }
S_o7129 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7129, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7129, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7129, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "wng", "pla", "E", "", 0.75, "Code4")
  else
    CallFunction(o7129, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o7146.SetStateValue(L1)
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
o7146 = { [nil] = {}, Start = function()
  o7146["Value"] = False
  o6394.StartCalculate()
  o6395.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7146.Value == L0) then
    o7146["Value"] = L0
    o6394.ReCalculate()
    o6395.ReCalculate()
  end
end }
S_o7185 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7185, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7185, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7185, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "wng", "pla", "E", "", 0.75, "Code4")
  else
    CallFunction(o7185, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o7202.SetStateValue(L1)
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
o7202 = { [nil] = {}, Start = function()
  o7202["Value"] = False
  o6394.StartCalculate()
  o6395.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7202.Value == L0) then
    o7202["Value"] = L0
    o6394.ReCalculate()
    o6395.ReCalculate()
  end
end }
S_o7241 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7241, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7241, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7241, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o6375.Node, True)
  CallFunction(o7241, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "har_", "player", "", "", 0.75, "Code5")
  else
    CallFunction(o7241, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmpJump = function(L0, L1)
  o7258.SetStateValue(L1)
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
o7258 = { [nil] = {}, Start = function()
  o7258["Value"] = False
  o6394.StartCalculate()
  o6395.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7258.Value == L0) then
    o7258["Value"] = L0
    o6394.ReCalculate()
    o6395.ReCalculate()
  end
end }
S_o7297 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7297, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7297, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7297, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "har_", "pla", "E", "", 0.75, "Code4")
  else
    CallFunction(o7297, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o7314.SetStateValue(L1)
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
o7314 = { [nil] = {}, Start = function()
  o7314["Value"] = False
  o6394.StartCalculate()
  o6395.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7314.Value == L0) then
    o7314["Value"] = L0
    o6394.ReCalculate()
    o6395.ReCalculate()
  end
end }
S_o7353 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7353, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7353, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7353, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetObservedDestroyer(L0.Node, 1, o6375.Node)
  Body_SetObservedDestroyer(L0.Node, 2, o6451.Node)
  Body_SetObservedDestroyer(L0.Node, 3, o6509.Node)
  Body_SetObservedDestroyer(L0.Node, 4, o6624.Node)
  Body_SetObservedDestroyer(L0.Node, 5, o6567.Node)
  CallFunction(o7353, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "player", "wng", "", "", 0.75, "Code9")
  else
    CallFunction(o7353, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_Born = function(L0, L1)
  o7357.SetStateValue(L1)
end, SetStateValue_KineticShield75 = function(L0, L1)
  o7363.SetStateValue(L1)
end, SetStateValue_KineticShield50 = function(L0, L1)
  o7364.SetStateValue(L1)
end, SetStateValue_KineticShield25 = function(L0, L1)
  o7365.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o7368.SetStateValue(L1)
end, SetStateValue_DestroyedBy1 = function(L0, L1)
  o7374.SetStateValue(L1)
end, SetStateValue_DestroyedBy2 = function(L0, L1)
  o7375.SetStateValue(L1)
end, SetStateValue_DestroyedBy3 = function(L0, L1)
  o7376.SetStateValue(L1)
end, SetStateValue_DestroyedBy4 = function(L0, L1)
  o7377.SetStateValue(L1)
end, SetStateValue_DestroyedBy5 = function(L0, L1)
  o7378.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7355.Value ~= True) then
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
o7355 = { [nil] = {}, GetCalculated = function()
  if not (o6396.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7355.SetStateValue(o7355.GetCalculated())
end, StartCalculate = function()
  o7355["Value"] = o7355.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7355.Value == L0) then
    DelayedFunction(25, o7355, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7355.Value == L0) then
    o7355["Value"] = L0
    CallFunction(o7353, "ProcesseStateChange")
  end
end }
o7357 = { [nil] = {}, Start = function()
  o7357["Value"] = False
  o6399.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7357.Value == L0) then
    o7357["Value"] = L0
    o6399.ReCalculate()
  end
end }
o7363 = { [nil] = {}, Start = function()
  o7363["Value"] = False
  o6400.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7363.Value == L0) then
    o7363["Value"] = L0
    o6400.ReCalculate()
  end
end }
o7364 = { [nil] = {}, Start = function()
  o7364["Value"] = False
  o6401.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7364.Value == L0) then
    o7364["Value"] = L0
    o6401.ReCalculate()
  end
end }
o7365 = { [nil] = {}, Start = function()
  o7365["Value"] = False
  o6402.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7365.Value == L0) then
    o7365["Value"] = L0
    o6402.ReCalculate()
  end
end }
o7368 = { [nil] = {}, Start = function()
  o7368["Value"] = False
  o6408.StartCalculate()
  o6410.StartCalculate()
  o6411.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7368.Value == L0) then
    o7368["Value"] = L0
    o6408.ReCalculate()
    o6410.ReCalculate()
    o6411.ReCalculate()
  end
end }
o7374 = { [nil] = {}, Start = function()
  o7374["Value"] = False
  o6403.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7374.Value == L0) then
    o7374["Value"] = L0
    o6403.ReCalculate()
  end
end }
o7375 = { [nil] = {}, Start = function()
  o7375["Value"] = False
  o6404.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7375.Value == L0) then
    o7375["Value"] = L0
    o6404.ReCalculate()
  end
end }
o7376 = { [nil] = {}, Start = function()
  o7376["Value"] = False
  o6405.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7376.Value == L0) then
    o7376["Value"] = L0
    o6405.ReCalculate()
  end
end }
o7377 = { [nil] = {}, Start = function()
  o7377["Value"] = False
  o6406.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7377.Value == L0) then
    o7377["Value"] = L0
    o6406.ReCalculate()
  end
end }
o7378 = { [nil] = {}, Start = function()
  o7378["Value"] = False
  o6407.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7378.Value == L0) then
    o7378["Value"] = L0
    o6407.ReCalculate()
  end
end }
S_o7409 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7409, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7409, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7409, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "wng", "pla", "E", "", 0.75, "Code4")
  else
    CallFunction(o7409, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Born = function(L0, L1)
  o7413.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o7424.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7411.Value ~= True) then
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
o7411 = { [nil] = {}, GetCalculated = function()
  if not (o6396.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7411.SetStateValue(o7411.GetCalculated())
end, StartCalculate = function()
  o7411["Value"] = o7411.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7411.Value == L0) then
    DelayedFunction(25, o7411, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7411.Value == L0) then
    o7411["Value"] = L0
    CallFunction(o7409, "ProcesseStateChange")
  end
end }
o7413 = { [nil] = {}, Start = function()
  o7413["Value"] = False
  o6398.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7413.Value == L0) then
    o7413["Value"] = L0
    o6398.ReCalculate()
  end
end }
o7424 = { [nil] = {}, Start = function()
  o7424["Value"] = False
  o6408.StartCalculate()
  o6410.StartCalculate()
  o6411.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7424.Value == L0) then
    o7424["Value"] = L0
    o6408.ReCalculate()
    o6410.ReCalculate()
    o6411.ReCalculate()
  end
end }
S_o7465 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7465, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7465, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7465, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "wng", "pla", "E", "", 0.75, "Code4")
  else
    CallFunction(o7465, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o7480.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7467.Value ~= True) then
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
o7467 = { [nil] = {}, GetCalculated = function()
  if not (o6396.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7467.SetStateValue(o7467.GetCalculated())
end, StartCalculate = function()
  o7467["Value"] = o7467.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7467.Value == L0) then
    DelayedFunction(26.048947, o7467, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7467.Value == L0) then
    o7467["Value"] = L0
    CallFunction(o7465, "ProcesseStateChange")
  end
end }
o7480 = { [nil] = {}, Start = function()
  o7480["Value"] = False
  o6408.StartCalculate()
  o6410.StartCalculate()
  o6411.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7480.Value == L0) then
    o7480["Value"] = L0
    o6408.ReCalculate()
    o6410.ReCalculate()
    o6411.ReCalculate()
  end
end }
S_o7521 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7521, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7521, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7521, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "wng", "pla", "E", "", 0.75, "Code4")
  else
    CallFunction(o7521, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o7536.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7523.Value ~= True) then
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
o7523 = { [nil] = {}, GetCalculated = function()
  if not (o6396.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7523.SetStateValue(o7523.GetCalculated())
end, StartCalculate = function()
  o7523["Value"] = o7523.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7523.Value == L0) then
    DelayedFunction(26.04895, o7523, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7523.Value == L0) then
    o7523["Value"] = L0
    CallFunction(o7521, "ProcesseStateChange")
  end
end }
o7536 = { [nil] = {}, Start = function()
  o7536["Value"] = False
  o6408.StartCalculate()
  o6410.StartCalculate()
  o6411.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7536.Value == L0) then
    o7536["Value"] = L0
    o6408.ReCalculate()
    o6410.ReCalculate()
    o6411.ReCalculate()
  end
end }
S_o7577 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7577, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7577, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7577, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "wng", "pla", "E", "", 0.75, "Code4")
  else
    CallFunction(o7577, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o7592.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7579.Value ~= True) then
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
o7579 = { [nil] = {}, GetCalculated = function()
  if not (o6396.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7579.SetStateValue(o7579.GetCalculated())
end, StartCalculate = function()
  o7579["Value"] = o7579.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7579.Value == L0) then
    DelayedFunction(27.04895, o7579, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7579.Value == L0) then
    o7579["Value"] = L0
    CallFunction(o7577, "ProcesseStateChange")
  end
end }
o7592 = { [nil] = {}, Start = function()
  o7592["Value"] = False
  o6408.StartCalculate()
  o6410.StartCalculate()
  o6411.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7592.Value == L0) then
    o7592["Value"] = L0
    o6408.ReCalculate()
    o6410.ReCalculate()
    o6411.ReCalculate()
  end
end }
S_o7633 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7633, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7633, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7633, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "wng", "pla", "E", "", 0.75, "Code4")
  else
    CallFunction(o7633, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o7648.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7635.Value ~= True) then
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
o7635 = { [nil] = {}, GetCalculated = function()
  if not (o6396.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7635.SetStateValue(o7635.GetCalculated())
end, StartCalculate = function()
  o7635["Value"] = o7635.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7635.Value == L0) then
    DelayedFunction(25.895065, o7635, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7635.Value == L0) then
    o7635["Value"] = L0
    CallFunction(o7633, "ProcesseStateChange")
  end
end }
o7648 = { [nil] = {}, Start = function()
  o7648["Value"] = False
  o6408.StartCalculate()
  o6410.StartCalculate()
  o6411.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7648.Value == L0) then
    o7648["Value"] = L0
    o6408.ReCalculate()
    o6410.ReCalculate()
    o6411.ReCalculate()
  end
end }
S_o7689 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7689, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7689, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7689, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "wng", "pla", "E", "", 0.75, "Code4")
  else
    CallFunction(o7689, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o7704.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7691.Value ~= True) then
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
o7691 = { [nil] = {}, GetCalculated = function()
  if not (o6396.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7691.SetStateValue(o7691.GetCalculated())
end, StartCalculate = function()
  o7691["Value"] = o7691.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7691.Value == L0) then
    DelayedFunction(26.489505, o7691, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7691.Value == L0) then
    o7691["Value"] = L0
    CallFunction(o7689, "ProcesseStateChange")
  end
end }
o7704 = { [nil] = {}, Start = function()
  o7704["Value"] = False
  o6408.StartCalculate()
  o6410.StartCalculate()
  o6411.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7704.Value == L0) then
    o7704["Value"] = L0
    o6408.ReCalculate()
    o6410.ReCalculate()
    o6411.ReCalculate()
  end
end }
S_o7745 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7745, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7745, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7745, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "wng", "pla", "E", "", 0.75, "Code4")
  else
    CallFunction(o7745, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o7760.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7747.Value ~= True) then
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
o7747 = { [nil] = {}, GetCalculated = function()
  if not (o6396.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7747.SetStateValue(o7747.GetCalculated())
end, StartCalculate = function()
  o7747["Value"] = o7747.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7747.Value == L0) then
    DelayedFunction(26.565799, o7747, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7747.Value == L0) then
    o7747["Value"] = L0
    CallFunction(o7745, "ProcesseStateChange")
  end
end }
o7760 = { [nil] = {}, Start = function()
  o7760["Value"] = False
  o6408.StartCalculate()
  o6410.StartCalculate()
  o6411.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7760.Value == L0) then
    o7760["Value"] = L0
    o6408.ReCalculate()
    o6410.ReCalculate()
    o6411.ReCalculate()
  end
end }
S_o7801 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7801, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7801, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7801, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o6375.Node, True)
  CallFunction(o7801, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "har_back", "", "", "", 0.75, "Code5")
  else
    CallFunction(o7801, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o7816.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7803.Value ~= True) then
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
o7803 = { [nil] = {}, GetCalculated = function()
  if not (o6396.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7803.SetStateValue(o7803.GetCalculated())
end, StartCalculate = function()
  o7803["Value"] = o7803.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7803.Value == L0) then
    DelayedFunction(25, o7803, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7803.Value == L0) then
    o7803["Value"] = L0
    CallFunction(o7801, "ProcesseStateChange")
  end
end }
o7816 = { [nil] = {}, Start = function()
  o7816["Value"] = False
  o6408.StartCalculate()
  o6410.StartCalculate()
  o6411.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7816.Value == L0) then
    o7816["Value"] = L0
    o6408.ReCalculate()
    o6410.ReCalculate()
    o6411.ReCalculate()
  end
end }
S_o7857 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7857, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7857, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7857, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o6375.Node, True)
  CallFunction(o7857, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "har_back", "", "", "", 0.75, "Code5")
  else
    CallFunction(o7857, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o7872.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7859.Value ~= True) then
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
o7859 = { [nil] = {}, GetCalculated = function()
  if not (o6396.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7859.SetStateValue(o7859.GetCalculated())
end, StartCalculate = function()
  o7859["Value"] = o7859.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7859.Value == L0) then
    DelayedFunction(26.489749, o7859, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7859.Value == L0) then
    o7859["Value"] = L0
    CallFunction(o7857, "ProcesseStateChange")
  end
end }
o7872 = { [nil] = {}, Start = function()
  o7872["Value"] = False
  o6408.StartCalculate()
  o6410.StartCalculate()
  o6411.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7872.Value == L0) then
    o7872["Value"] = L0
    o6408.ReCalculate()
    o6410.ReCalculate()
    o6411.ReCalculate()
  end
end }
S_o7913 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7913, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7913, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7913, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o6375.Node, True)
  CallFunction(o7913, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "/Scenario_Dynamic/Navigation/BattleArea_Harvester", "har_back", "", "", "", 0.75, "Code5")
  else
    CallFunction(o7913, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o7928.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7915.Value ~= True) then
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
o7915 = { [nil] = {}, GetCalculated = function()
  if not (o6396.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7915.SetStateValue(o7915.GetCalculated())
end, StartCalculate = function()
  o7915["Value"] = o7915.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7915.Value == L0) then
    DelayedFunction(27.897947, o7915, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7915.Value == L0) then
    o7915["Value"] = L0
    CallFunction(o7913, "ProcesseStateChange")
  end
end }
o7928 = { [nil] = {}, Start = function()
  o7928["Value"] = False
  o6408.StartCalculate()
  o6410.StartCalculate()
  o6411.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7928.Value == L0) then
    o7928["Value"] = L0
    o6408.ReCalculate()
    o6410.ReCalculate()
    o6411.ReCalculate()
  end
end }
S_o7969 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7969, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7969, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7969, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o6375.Node, True)
  CallFunction(o7969, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Station", "/Scenario_Dynamic/Navigation/BattleArea_Station", "/Scenario_Dynamic/Navigation/BattleArea_Station", "mac_dolphinhab_des_1", "player", "", "", 0.5, "Code5")
  else
    CallFunction(o7969, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o7969, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o7984.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7971.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o7970.Value ~= True) then
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
o7970 = { [nil] = {}, GetCalculated = function()
  if not (o6415.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7970.SetStateValue(o7970.GetCalculated())
end, StartCalculate = function()
  o7970["Value"] = o7970.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7970.Value == L0) then
    DelayedFunction(5, o7970, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7970.Value == L0) then
    o7970["Value"] = L0
    CallFunction(o7969, "ProcesseStateChange")
  end
end }
o7971 = { [nil] = {}, GetCalculated = function()
  if not (o6408.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7971.SetStateValue(o7971.GetCalculated())
end, StartCalculate = function()
  o7971["Value"] = o7971.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7971.Value == L0) then
    o7971["Value"] = L0
    CallFunction(o7969, "ProcesseStateChange")
  end
end }
o7984 = { [nil] = {}, Start = function()
  o7984["Value"] = False
  o6415.StartCalculate()
  o6416.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7984.Value == L0) then
    o7984["Value"] = L0
    o6415.ReCalculate()
    o6416.ReCalculate()
  end
end }
S_o8025 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8025, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8025, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o8025, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o6375.Node, True)
  CallFunction(o8025, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Station", "/Scenario_Dynamic/Navigation/BattleArea_Station", "/Scenario_Dynamic/Navigation/BattleArea_Station", "mac_dolphinhab_des_1", "player", "", "", 0.5, "Code5")
  else
    CallFunction(o8025, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o8025, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o8040.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o8027.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o8026.Value ~= True) then
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
o8026 = { [nil] = {}, GetCalculated = function()
  if not (o6415.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8026.SetStateValue(o8026.GetCalculated())
end, StartCalculate = function()
  o8026["Value"] = o8026.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8026.Value == L0) then
    DelayedFunction(5, o8026, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o8026.Value == L0) then
    o8026["Value"] = L0
    CallFunction(o8025, "ProcesseStateChange")
  end
end }
o8027 = { [nil] = {}, GetCalculated = function()
  if not (o6408.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8027.SetStateValue(o8027.GetCalculated())
end, StartCalculate = function()
  o8027["Value"] = o8027.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8027.Value == L0) then
    o8027["Value"] = L0
    CallFunction(o8025, "ProcesseStateChange")
  end
end }
o8040 = { [nil] = {}, Start = function()
  o8040["Value"] = False
  o6415.StartCalculate()
  o6416.StartCalculate()
end, SetStateValue = function(L0)
  if not (o8040.Value == L0) then
    o8040["Value"] = L0
    o6415.ReCalculate()
    o6416.ReCalculate()
  end
end }
S_o8081 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8081, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8081, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o8081, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o6375.Node, True)
  CallFunction(o8081, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Station", "/Scenario_Dynamic/Navigation/BattleArea_Station", "/Scenario_Dynamic/Navigation/BattleArea_Station", "mac_dolphinhab_des_1", "mac", "gen", "player", 0.5, "Code5")
  else
    CallFunction(o8081, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o8081, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o8096.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o8083.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o8082.Value ~= True) then
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
o8082 = { [nil] = {}, GetCalculated = function()
  if not (o6415.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8082.SetStateValue(o8082.GetCalculated())
end, StartCalculate = function()
  o8082["Value"] = o8082.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8082.Value == L0) then
    DelayedFunction(5, o8082, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o8082.Value == L0) then
    o8082["Value"] = L0
    CallFunction(o8081, "ProcesseStateChange")
  end
end }
o8083 = { [nil] = {}, GetCalculated = function()
  if not (o6408.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8083.SetStateValue(o8083.GetCalculated())
end, StartCalculate = function()
  o8083["Value"] = o8083.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8083.Value == L0) then
    o8083["Value"] = L0
    CallFunction(o8081, "ProcesseStateChange")
  end
end }
o8096 = { [nil] = {}, Start = function()
  o8096["Value"] = False
  o6415.StartCalculate()
  o6416.StartCalculate()
end, SetStateValue = function(L0)
  if not (o8096.Value == L0) then
    o8096["Value"] = L0
    o6415.ReCalculate()
    o6416.ReCalculate()
  end
end }
S_o8137 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8137, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8137, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o8137, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Station", "/Scenario_Dynamic/Navigation/BattleArea_Station", "/Scenario_Dynamic/Navigation/BattleArea_Station", "mac_dolphinhab_des_1", "mac", "gen", "player", 0.5, "Code4")
  else
    CallFunction(o8137, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o8137, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Born = function(L0, L1)
  o8141.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o8152.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o8139.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o8138.Value ~= True) then
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
o8138 = { [nil] = {}, GetCalculated = function()
  if not (o6415.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8138.SetStateValue(o8138.GetCalculated())
end, StartCalculate = function()
  o8138["Value"] = o8138.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8138.Value == L0) then
    DelayedFunction(5, o8138, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o8138.Value == L0) then
    o8138["Value"] = L0
    CallFunction(o8137, "ProcesseStateChange")
  end
end }
o8139 = { [nil] = {}, GetCalculated = function()
  if not (o6408.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8139.SetStateValue(o8139.GetCalculated())
end, StartCalculate = function()
  o8139["Value"] = o8139.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8139.Value == L0) then
    o8139["Value"] = L0
    CallFunction(o8137, "ProcesseStateChange")
  end
end }
o8141 = { [nil] = {}, Start = function()
  o8141["Value"] = False
  o6414.StartCalculate()
end, SetStateValue = function(L0)
  if not (o8141.Value == L0) then
    o8141["Value"] = L0
    o6414.ReCalculate()
  end
end }
o8152 = { [nil] = {}, Start = function()
  o8152["Value"] = False
  o6415.StartCalculate()
  o6416.StartCalculate()
end, SetStateValue = function(L0)
  if not (o8152.Value == L0) then
    o8152["Value"] = L0
    o6415.ReCalculate()
    o6416.ReCalculate()
  end
end }
S_o8193 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8193, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8193, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o8193, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Station", "/Scenario_Dynamic/Navigation/BattleArea_Station", "/Scenario_Dynamic/Navigation/BattleArea_Station", "mac_dolphinhab_des_1", "mac", "gen", "player", 0.5, "Code4")
  else
    CallFunction(o8193, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o8193, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o8208.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o8195.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o8194.Value ~= True) then
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
o8194 = { [nil] = {}, GetCalculated = function()
  if not (o6415.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8194.SetStateValue(o8194.GetCalculated())
end, StartCalculate = function()
  o8194["Value"] = o8194.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8194.Value == L0) then
    DelayedFunction(5, o8194, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o8194.Value == L0) then
    o8194["Value"] = L0
    CallFunction(o8193, "ProcesseStateChange")
  end
end }
o8195 = { [nil] = {}, GetCalculated = function()
  if not (o6408.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8195.SetStateValue(o8195.GetCalculated())
end, StartCalculate = function()
  o8195["Value"] = o8195.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8195.Value == L0) then
    o8195["Value"] = L0
    CallFunction(o8193, "ProcesseStateChange")
  end
end }
o8208 = { [nil] = {}, Start = function()
  o8208["Value"] = False
  o6415.StartCalculate()
  o6416.StartCalculate()
end, SetStateValue = function(L0)
  if not (o8208.Value == L0) then
    o8208["Value"] = L0
    o6415.ReCalculate()
    o6416.ReCalculate()
  end
end }
S_o8249 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8249, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8249, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o8249, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Station", "/Scenario_Dynamic/Navigation/BattleArea_Station", "/Scenario_Dynamic/Navigation/BattleArea_Station", "mac_dolphinhab_des_1", "mac", "gen", "player", 0.5, "Code4")
  else
    CallFunction(o8249, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o8249, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o8264.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o8251.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o8250.Value ~= True) then
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
o8250 = { [nil] = {}, GetCalculated = function()
  if not (o6415.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8250.SetStateValue(o8250.GetCalculated())
end, StartCalculate = function()
  o8250["Value"] = o8250.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8250.Value == L0) then
    DelayedFunction(5, o8250, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o8250.Value == L0) then
    o8250["Value"] = L0
    CallFunction(o8249, "ProcesseStateChange")
  end
end }
o8251 = { [nil] = {}, GetCalculated = function()
  if not (o6408.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8251.SetStateValue(o8251.GetCalculated())
end, StartCalculate = function()
  o8251["Value"] = o8251.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8251.Value == L0) then
    o8251["Value"] = L0
    CallFunction(o8249, "ProcesseStateChange")
  end
end }
o8264 = { [nil] = {}, Start = function()
  o8264["Value"] = False
  o6415.StartCalculate()
  o6416.StartCalculate()
end, SetStateValue = function(L0)
  if not (o8264.Value == L0) then
    o8264["Value"] = L0
    o6415.ReCalculate()
    o6416.ReCalculate()
  end
end }
S_o8305 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8305, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8305, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o8305, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Station", "/Scenario_Dynamic/Navigation/BattleArea_Station", "/Scenario_Dynamic/Navigation/BattleArea_Station", "mac_dolphinhab_des_1", "mac", "gen", "player", 0.5, "Code4")
  else
    CallFunction(o8305, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o8305, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o8320.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o8307.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o8306.Value ~= True) then
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
o8306 = { [nil] = {}, GetCalculated = function()
  if not (o6415.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8306.SetStateValue(o8306.GetCalculated())
end, StartCalculate = function()
  o8306["Value"] = o8306.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8306.Value == L0) then
    DelayedFunction(5, o8306, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o8306.Value == L0) then
    o8306["Value"] = L0
    CallFunction(o8305, "ProcesseStateChange")
  end
end }
o8307 = { [nil] = {}, GetCalculated = function()
  if not (o6408.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8307.SetStateValue(o8307.GetCalculated())
end, StartCalculate = function()
  o8307["Value"] = o8307.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8307.Value == L0) then
    o8307["Value"] = L0
    CallFunction(o8305, "ProcesseStateChange")
  end
end }
o8320 = { [nil] = {}, Start = function()
  o8320["Value"] = False
  o6415.StartCalculate()
  o6416.StartCalculate()
end, SetStateValue = function(L0)
  if not (o8320.Value == L0) then
    o8320["Value"] = L0
    o6415.ReCalculate()
    o6416.ReCalculate()
  end
end }
S_o8361 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8361, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8361, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o8361, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BattleArea_Station", "/Scenario_Dynamic/Navigation/BattleArea_Station", "/Scenario_Dynamic/Navigation/BattleArea_Station", "mac_dolphinhab_des_1", "mac", "gen", "player", 0.5, "Code4")
  else
    CallFunction(o8361, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o8361, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o8376.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o8363.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o8362.Value ~= True) then
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
o8362 = { [nil] = {}, GetCalculated = function()
  if not (o6415.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8362.SetStateValue(o8362.GetCalculated())
end, StartCalculate = function()
  o8362["Value"] = o8362.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8362.Value == L0) then
    DelayedFunction(5, o8362, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o8362.Value == L0) then
    o8362["Value"] = L0
    CallFunction(o8361, "ProcesseStateChange")
  end
end }
o8363 = { [nil] = {}, GetCalculated = function()
  if not (o6408.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8363.SetStateValue(o8363.GetCalculated())
end, StartCalculate = function()
  o8363["Value"] = o8363.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8363.Value == L0) then
    o8363["Value"] = L0
    CallFunction(o8361, "ProcesseStateChange")
  end
end }
o8376 = { [nil] = {}, Start = function()
  o8376["Value"] = False
  o6415.StartCalculate()
  o6416.StartCalculate()
end, SetStateValue = function(L0)
  if not (o8376.Value == L0) then
    o8376["Value"] = L0
    o6415.ReCalculate()
    o6416.ReCalculate()
  end
end }
S_o8417 = { [nil] = {}, Start = function(L0)

end }
S_o8418 = { [nil] = {}, Start = function(L0)

end }
S_o8419 = { [nil] = {}, Start = function(L0)

end }
o8421 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o8422 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Agressive")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o8422, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o8422, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/IngameScene/Navigation/LookFrom_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0.75, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o8422, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4.8, "Code9")
  else
    CallFunction(o8422, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Camera_MoveTo(L0.Node, "/IngameScene/Navigation/LookFrom_2", 5, "MMMN", 0)
  CallFunction(o8422, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o8426 = { [nil] = {}, Start = function()
  o8426["Value"] = False
  o6512.StartCalculate()
end, SetStateValue = function(L0)
  if not (o8426.Value == L0) then
    o8426["Value"] = L0
    o6512.ReCalculate()
  end
end }
S_o8427 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  FormationLib.PlaceFormationPath(o8420, o8421, "/IngameScene/Navigation/PlayerPath")
  CallFunction(o8427, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o8420, o8421, "/IngameScene/Navigation/PlayerPath", "pos_1", "pos_4", 1, 1, "Code2")
  else
    CallFunction(o8427, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  Director_EndCutscene(L0.Node)
  CallFunction(o8427, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code4")
  else
    CallFunction(o8427, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  SED_SetTaskTextKey(2100, -1, -1)
  o6389.SetStateValue(True)
  CallFunction(o8427, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5.589495, "Code7")
  else
    CallFunction(o8427, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  SendRadioMessageTake(o3335.Node, o6375.Node, 176)
  CallFunction(o8427, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6.174865, "Code9")
  else
    CallFunction(o8427, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  SendRadioMessageTake(o6509.Node, o6375.Node, 177)
  CallFunction(o8427, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o8433 = { [nil] = {}, Start = function(L0)

end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 238)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_building1_1", S_o30)
  o76 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_dolphinhab_des_1", S_o76)
  o79.Start()
  o123 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant1_1", S_o123)
  o169 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant1_2", S_o169)
  o215 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant1_3", S_o215)
  o261 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_shelter_docking_1", S_o261)
  o307 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_shelter_docking_2", S_o307)
  o353 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_beacon_1", S_o353)
  o399 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_beacon_2", S_o399)
  o445 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock2_1", S_o445)
  o491 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tower_1", S_o491)
  o537 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tower_2", S_o537)
  o583 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml_1", S_o583)
  o629 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml3_1", S_o629)
  o675 = BindEasy(Node_Find("/Scenario_Static/Object"), "west_turret_medium_1/Turm1", S_o675)
  o721 = BindEasy(Node_Find("/Scenario_Static/Object"), "west_turret_medium_2/Turm1", S_o721)
  o767 = BindEasy(Node_Find("/Scenario_Static/Object"), "west_turret_medium_3/Turm1", S_o767)
  o813 = BindEasy(Node_Find("/Scenario_Static/Object"), "south_turret_medium_1/Turm1", S_o813)
  o859 = BindEasy(Node_Find("/Scenario_Static/Object"), "south_turret_medium_2/Turm1", S_o859)
  o905 = BindEasy(Node_Find("/Scenario_Static/Object"), "south_turret_medium_3/Turm1", S_o905)
  o951 = BindEasy(Node_Find("/Scenario_Static/Object"), "east_turret_medium_1/Turm1", S_o951)
  o997 = BindEasy(Node_Find("/Scenario_Static/Object"), "east_turret_medium_2/Turm1", S_o997)
  o1043 = BindEasy(Node_Find("/Scenario_Static/Object"), "east_turret_medium_3/Turm1", S_o1043)
  o1089 = BindEasy(Node_Find("/Scenario_Static/Object"), "west_torptower_1/Turm1", S_o1089)
  o1135 = BindEasy(Node_Find("/Scenario_Static/Object"), "west_torptower_2/Turm1", S_o1135)
  o1181 = BindEasy(Node_Find("/Scenario_Static/Object"), "south_torptower_1/Turm1", S_o1181)
  o1227 = BindEasy(Node_Find("/Scenario_Static/Object"), "south_torptower_2/Turm1", S_o1227)
  o1273 = BindEasy(Node_Find("/Scenario_Static/Object"), "east_torptower_1/Turm1", S_o1273)
  o1319 = BindEasy(Node_Find("/Scenario_Static/Object"), "east_torptower_2/Turm1", S_o1319)
  o1365 = BindEasy(Node_Find("/Scenario_Static/Object"), "east_torp_m_1/Turm1", S_o1365)
  o1411 = BindEasy(Node_Find("/Scenario_Static/Object"), "east_torp_m_2/Turm1", S_o1411)
  o1457 = BindEasy(Node_Find("/Scenario_Static/Object"), "east_torp_m_3/Turm1", S_o1457)
  o1503 = BindEasy(Node_Find("/Scenario_Static/Object"), "south_torp_m_1/Turm1", S_o1503)
  o1549 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_1_1", S_o1549)
  o1595 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_1_2", S_o1595)
  o1641 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_1_3", S_o1641)
  o1687 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangway02_1", S_o1687)
  o1733 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangway02_2", S_o1733)
  o1779 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock1_1", S_o1779)
  o1825 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock2_3", S_o1825)
  o1871 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_1", S_o1871)
  o1917 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_2", S_o1917)
  o1963 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_3", S_o1963)
  o2009 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_2", S_o2009)
  o2055 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_3", S_o2055)
  o2101 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_4", S_o2101)
  o2147 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_5", S_o2147)
  o2193 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_6", S_o2193)
  o2239 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_7", S_o2239)
  o2285 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_8", S_o2285)
  o2331 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_9", S_o2331)
  o2377 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_10", S_o2377)
  o2423 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_1", S_o2423)
  o2469 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_2", S_o2469)
  o2515 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_industry2_1", S_o2515)
  o2561 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big03_1", S_o2561)
  o2607 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_1", S_o2607)
  o2653 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_2", S_o2653)
  o2699 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_3", S_o2699)
  o2745 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_1", S_o2745)
  o2791 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_industry1_1", S_o2791)
  o2837 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_industry3_1", S_o2837)
  o2883 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock3_1", S_o2883)
  o2929 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_1", S_o2929)
  o2975 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_starfound_1", S_o2975)
  o3021 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vehiclestation_1", S_o3021)
  o3067 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock2_2", S_o3067)
  o3113 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_1", S_o3113)
  o3159 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_1/Turm1", S_o3159)
  o3203 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_2/Turm1", S_o3203)
  o3247 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_3/Turm1", S_o3247)
  o3291 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_4/Turm1", S_o3291)
  o3335 = BindEasy(Node_Find("/Scenario_Static/Object"), "wng_harvester_1", S_o3335)
  o3339.Start()
  o3383 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_1", S_o3383)
  o3429 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02", S_o3429)
  o3475 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_05", S_o3475)
  o3521 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_1", S_o3521)
  o3567 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_b", S_o3567)
  o3613 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_1", S_o3613)
  o3659 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_04", S_o3659)
  o3705 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_06", S_o3705)
  o3751 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_07", S_o3751)
  o3797 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_1", S_o3797)
  o3843 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_2", S_o3843)
  o3889 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_1", S_o3889)
  o3935 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_03", S_o3935)
  o3981 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_03_c", S_o3981)
  o4027 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_03_d", S_o4027)
  o4073 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_1", S_o4073)
  o4119 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_b", S_o4119)
  o4165 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02", S_o4165)
  o4211 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_b", S_o4211)
  o4257 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03", S_o4257)
  o4303 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_1", S_o4303)
  o4349 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_l", S_o4349)
  o4395 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_1", S_o4395)
  o4441 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_b", S_o4441)
  o4487 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_c", S_o4487)
  o4533 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_1", S_o4533)
  o4579 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_05", S_o4579)
  o4625 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_05_b", S_o4625)
  o4671 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_02", S_o4671)
  o4717 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_02_b", S_o4717)
  o4763 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_1", S_o4763)
  o4809 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_c", S_o4809)
  o4855 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_b", S_o4855)
  o4901 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_02", S_o4901)
  o4947 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_1", S_o4947)
  o4993 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_b", S_o4993)
  o5039 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_1", S_o5039)
  o5085 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_m_1", S_o5085)
  o5131 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_edgering_1", S_o5131)
  o5177 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_2", S_o5177)
  o5223 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_2c", S_o5223)
  o5269 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_2", S_o5269)
  o5315 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_2", S_o5315)
  o5361 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_3", S_o5361)
  o5407 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_2", S_o5407)
  o5453 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_2", S_o5453)
  o5499 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_2", S_o5499)
  o5545 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_2", S_o5545)
  o5591 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_3", S_o5591)
  o5637 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_3", S_o5637)
  o5683 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_3", S_o5683)
  o5729 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_4", S_o5729)
  o5775 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_4b", S_o5775)
  o5821 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_3", S_o5821)
  o5867 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_3", S_o5867)
  o5913 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_3", S_o5913)
  o5959 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_3", S_o5959)
  o6007 = BindEasy(Node_Find("/Scenario_Dynamic/Object/DestructableBuildings"), "East_trafo_des", S_o6007)
  o6053 = BindEasy(Node_Find("/Scenario_Dynamic/Object/DestructableBuildings"), "West_trafo_des", S_o6053)
  o6099 = BindEasy(Node_Find("/Scenario_Dynamic/Object/DestructableBuildings"), "South_trafo_des", S_o6099)
  o6145 = BindEasy(Node_Find("/Scenario_Dynamic/Object/DestructableBuildings"), "gen_tank_big_des_1", S_o6145)
  o6191 = BindEasy(Node_Find("/Scenario_Dynamic/Object/DestructableBuildings"), "gen_tank_big_des_2", S_o6191)
  o6237 = BindEasy(Node_Find("/Scenario_Dynamic/Object/DestructableBuildings"), "gen_tank_big_des_3", S_o6237)
  o6283 = BindEasy(Node_Find("/Scenario_Dynamic/Object/DestructableBuildings"), "gen_tank_big_des_4", S_o6283)
  o6329 = BindEasy(Node_Find("/Scenario_Dynamic/Object/DestructableBuildings"), "gen_tank_big_des_5", S_o6329)
  o6375 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o6375)
  o6389.Start()
  o6451 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_stoney_1", S_o6451)
  o6473.Start()
  o6509 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_mayday_1", S_o6509)
  o6531.Start()
  o6567 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_animal_1", S_o6567)
  o6572.Start()
  o6588.Start()
  o6624 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_angelina_1", S_o6624)
  o6645.Start()
  o6681 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide_1", S_o6681)
  o6698.Start()
  o6737 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide_2", S_o6737)
  o6754.Start()
  o6793 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide_3", S_o6793)
  o6810.Start()
  o6849 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide_4", S_o6849)
  o6866.Start()
  o6905 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide_5", S_o6905)
  o6922.Start()
  o6961 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide_6", S_o6961)
  o6978.Start()
  o7017 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide_7", S_o7017)
  o7034.Start()
  o7073 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide_8", S_o7073)
  o7090.Start()
  o7129 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide_9", S_o7129)
  o7146.Start()
  o7185 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide_10", S_o7185)
  o7202.Start()
  o7241 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_bomber_1", S_o7241)
  o7258.Start()
  o7297 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_bomber_2", S_o7297)
  o7314.Start()
  o7353 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_chow_1", S_o7353)
  o7357.Start()
  o7363.Start()
  o7364.Start()
  o7365.Start()
  o7368.Start()
  o7374.Start()
  o7375.Start()
  o7376.Start()
  o7377.Start()
  o7378.Start()
  o7409 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide2_1", S_o7409)
  o7413.Start()
  o7424.Start()
  o7465 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide2_2", S_o7465)
  o7480.Start()
  o7521 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide2_3", S_o7521)
  o7536.Start()
  o7577 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide2_4", S_o7577)
  o7592.Start()
  o7633 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide2_5", S_o7633)
  o7648.Start()
  o7689 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide2_6", S_o7689)
  o7704.Start()
  o7745 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide2_7", S_o7745)
  o7760.Start()
  o7801 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_bomber2_1", S_o7801)
  o7816.Start()
  o7857 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_bomber2_2", S_o7857)
  o7872.Start()
  o7913 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_bomber2_3", S_o7913)
  o7928.Start()
  o7969 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_bomber3_1", S_o7969)
  o7984.Start()
  o8025 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_bomber3_2", S_o8025)
  o8040.Start()
  o8081 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_bomber3_3", S_o8081)
  o8096.Start()
  o8137 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide3_1", S_o8137)
  o8141.Start()
  o8152.Start()
  o8193 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide3_2", S_o8193)
  o8208.Start()
  o8249 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide3_3", S_o8249)
  o8264.Start()
  o8305 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide3_4", S_o8305)
  o8320.Start()
  o8361 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide3_5", S_o8361)
  o8376.Start()
  o8417 = BindEasy(Node_Find("/"), "Camera", S_o8417)
  o8418 = BindEasy(Node_Find("/IngameScene/Navigation"), "LookFrom_1", S_o8418)
  o8419 = BindEasy(Node_Find("/IngameScene/Navigation"), "LookFrom_2", S_o8419)
  o8426.Start()
  o8422 = BindEasy(Node_Find("/IngameScene/Director"), "Intro", S_o8422)
  o8427 = BindEasy(Node_Find("/IngameScene/Director"), "IntroAddOn", S_o8427)
  o8433 = BindEasy(Node_Find("/IngameScene/Director"), "Intro_Audio", S_o8433)
  o8420 = { {}, o6375 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
