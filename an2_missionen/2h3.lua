-- dekompiliert aus 2h3.sco
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
  Terrain_LoadTerrain(node1, "map/2H3/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/2H1/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/2H3/Lmsh/", "map/2H3/Ltex/")
  Game_SetTerrainDepth(node0, 1224)
  Game_SetDecompressionHeight(node0, 600)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.07451, 0.086275, 0.086275)
  Game_SetParallelLightT(node0, 0.231373, 0.258824, 0.262745)
  Game_SetParallelLightB(node0, 0.262745, 0.294118, 0.298039)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_2h3.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_2H3.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient2.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit2.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_hektik.sam", 2)
  Game_SetNPCHitFactor(node0, 1)
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
  node8 = Node_CreateNode("nod_generic", "pla_harvester_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(2576, 360.5, 500), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node8, "osd/pla/pla_harvester.osd")
  Body_SetFriendOrFoeID(node8, 2)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "mac_building1_1")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(1036.271023, 3412.559137, 382.755042), MAT_Vector3(-90.060173, 0, 0))
  Node_ParseIniFile(node9, "osd/mac/mac_building1.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "mac_dolphinhab_des_1")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(718, 3601.284921, 390), MAT_Vector3(-89.740011, 0, 0))
  Node_ParseIniFile(node10, "osd/mac/mac_dolphinhab_des.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, 355)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "gen_pplant1_1")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(1207.468364, 3356.919571, 430.71708), MAT_Vector3(-55.582536, 0, 0))
  Node_ParseIniFile(node11, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "gen_pplant1_2")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(1127.089386, 3464.817368, 433.815862), MAT_Vector3(-13.986784, 0, 0))
  Node_ParseIniFile(node12, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "gen_pplant1_3")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(756.352562, 3477.839109, 410.885061), MAT_Vector3(179.885573, 0, 0))
  Node_ParseIniFile(node13, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "mac_shelter_docking_1")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(595.544289, 3453.234185, 434.268185), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node14, "osd/mac/mac_shelter_docking.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "mac_shelter_docking_2")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(737.655913, 3285.889787, 414.059123), MAT_Vector3(-0.076311, 0, 0))
  Node_ParseIniFile(node15, "osd/mac/mac_shelter_docking.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "mac_beacon_1")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(833.565331, 3077.470324, 466.238906), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node16, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "mac_beacon_2")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(1304.163298, 3408.466629, 392.978186), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node17, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "gen_metalblock2_1")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(778.957107, 3123.494363, 450.043827), MAT_Vector3(90.279075, 0, 0))
  Node_ParseIniFile(node18, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "gen_tower_1")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(1160.787301, 3437.806999, 425.163092), MAT_Vector3(-66.515794, 0, 0))
  Node_ParseIniFile(node19, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "gen_tower_2")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(1140.697593, 3417.997202, 423.734726), MAT_Vector3(-21.626946, 0, 0))
  Node_ParseIniFile(node20, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "gen_tank_sml_1")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(1179.667378, 3398.650201, 420.658211), MAT_Vector3(44.723006, 0, 0))
  Node_ParseIniFile(node21, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "gen_tank_sml3_1")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(819.326383, 3514.367135, 384.471838), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node22, "osd/gen/gen_tank_sml3.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_turret", "west_turret_medium_1")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(884.020103, 3434.198947, 429.791637), MAT_Vector3(55.951946, 0, 0))
  Node_ParseIniFile(node23, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_turret", "west_turret_medium_2")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(565.180235, 3295.78119, 464.726872), MAT_Vector3(140.820913, 0, 0))
  Node_ParseIniFile(node24, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_turret", "west_turret_medium_3")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(498.381897, 3348.113372, 463.796592), MAT_Vector3(140.8209, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_turret", "south_turret_medium_1")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(712.850305, 3134.464991, 438.950279), MAT_Vector3(140.8209, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_turret", "south_turret_medium_2")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(965.130664, 3025.829768, 510.62238), MAT_Vector3(178.735273, 0, 0))
  Node_ParseIniFile(node27, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_turret", "south_turret_medium_3")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(1082.337122, 3144.518884, 474.945631), MAT_Vector3(178.7353, 0, 0))
  Node_ParseIniFile(node28, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_turret", "east_turret_medium_1")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(1363.26067, 3222.201303, 433.746819), MAT_Vector3(-90.967831, 0, 0))
  Node_ParseIniFile(node29, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_turret", "east_turret_medium_2")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(1409.889633, 3407.835514, 400.113365), MAT_Vector3(-90.96783, 0, 0))
  Node_ParseIniFile(node30, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_turret", "east_turret_medium_3")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(1072.604747, 3381.117097, 457.412427), MAT_Vector3(-90.96783, 0, 0))
  Node_ParseIniFile(node31, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_turret", "west_torptower_1")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(883.369469, 3409.494006, 435.167043), MAT_Vector3(-51.082492, 0, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_turret", "west_torptower_2")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(529.711102, 3345.541142, 470.198243), MAT_Vector3(140.211103, 0, 0))
  Node_ParseIniFile(node33, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_turret", "south_torptower_1")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(834.090021, 3164.292445, 522.915648), MAT_Vector3(179.797954, 0, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_turret", "south_torptower_2")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(1126.097869, 3176.868974, 474.497128), MAT_Vector3(176.418994, 0, 0))
  Node_ParseIniFile(node35, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_turret", "east_torptower_1")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(1072.106957, 3402.513415, 462.981666), MAT_Vector3(-90.14555, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_turret", "east_torptower_2")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(1342.5526, 3247.382811, 435.756072), MAT_Vector3(-90.14555, 0, 0))
  Node_ParseIniFile(node37, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_turret", "east_torp_m_1")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(1221.447049, 3409.702148, 438.367501), MAT_Vector3(-90.28814, 0, 0))
  Node_ParseIniFile(node38, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_turret", "east_torp_m_2")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(1082.206809, 3236.681644, 426.59738), MAT_Vector3(-90.28814, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_turret", "east_torp_m_3")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(969.092485, 3239.328408, 425.493951), MAT_Vector3(93.499964, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_turret", "south_torp_m_1")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(930.794932, 3038.509095, 516.6637), MAT_Vector3(-178.532911, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_torp_m.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_rohr_small03_1_1")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(716.8548, 3664.920154, 380), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_rohr_small03_1_2")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(736.147124, 3664.745839, 380), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node43, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_rohr_small03_1_3")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(697.70814, 3664.919794, 380), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node44, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_gangway02_1")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(707.18017, 3723.036906, 390), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node45, "osd/gen/gen_gangway02.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_gangway02_2")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(726.474902, 3714.446908, 390), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node46, "osd/gen/gen_gangway02.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "gen_metalblock1_1")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(772.551952, 3655.147973, 346.57172), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node47, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "gen_metalblock2_3")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(758.213121, 3705.849058, 353.61122), MAT_Vector3(179.922159, 0, 0))
  Node_ParseIniFile(node48, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "gen_elfnote_1")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(1645.185098, 2382.483855, 352.652916), MAT_Vector3(-23.027318, 0, 0))
  Node_ParseIniFile(node49, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "gen_elfnote_2")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(1632.587243, 3408.278303, 372.421333), MAT_Vector3(-67.859658, 0, 0))
  Node_ParseIniFile(node50, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_elfnote_3")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(2663.699735, 3430.74328, 339.337444), MAT_Vector3(-67.85966, 0, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "gen_rohr_small01_2")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(1644.82694, 2442.928288, 333.785783), MAT_Vector3(0, -10, 0))
  Node_ParseIniFile(node52, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_rohr_small01_3")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(1602.64233, 2341.428516, 333.7858), MAT_Vector3(131.123084, -10, 0))
  Node_ParseIniFile(node53, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "gen_rohr_small01_4")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(1603.032413, 2425.172524, 333.7858), MAT_Vector3(46.45272, -10, 0))
  Node_ParseIniFile(node54, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "gen_rohr_small01_5")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(1649.686318, 2322.689666, 333.7858), MAT_Vector3(-179.983228, -10, 0))
  Node_ParseIniFile(node55, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "gen_rohr_small01_6")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(1614.492478, 1368.056482, 269.000955), MAT_Vector3(0.088404, -10, 0))
  Node_ParseIniFile(node56, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "gen_rohr_small01_7")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(1636.124, 3349.02, 358.1536), MAT_Vector3(-179.7024, -10, 0))
  Node_ParseIniFile(node57, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "gen_rohr_small01_8")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(1686.297633, 3409.584625, 348.894738), MAT_Vector3(-90.542912, -30.163106, -2.814507))
  Node_ParseIniFile(node58, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "gen_rohr_small01_9")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(2602.639, 3430.214974, 318.504793), MAT_Vector3(90.036505, -8.687073, -0.351063))
  Node_ParseIniFile(node59, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "gen_rohr_small01_10")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(2704.255642, 3473.513937, 326.440624), MAT_Vector3(-44.23916, -8.687073, -0.351063))
  Node_ParseIniFile(node60, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "gen_quay_1")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(1970.451, 1761.127, 280.0342), MAT_Vector3(-42.70681, 0, 0))
  Node_ParseIniFile(node61, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "gen_quay_2")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(2135.781, 1574.54, 280.0342), MAT_Vector3(-42.70681, 0, 0))
  Node_ParseIniFile(node62, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "mac_industry2_1")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(2159.549, 1831.932, 306.6181), MAT_Vector3(-41.45599, 0, 0))
  Node_ParseIniFile(node63, "osd/mac/mac_industry2.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "gen_rohr_big03_1")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(2015.244, 1707.833, 273.135), MAT_Vector3(136, 0, 0))
  Node_ParseIniFile(node64, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "gen_rohr_small03_1")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(2028.057, 1697.593, 272.294), MAT_Vector3(136, 0, 0))
  Node_ParseIniFile(node65, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "gen_rohr_small03_2")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(2035.303, 1691.406, 270.7112), MAT_Vector3(136, 0, 0))
  Node_ParseIniFile(node66, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "gen_rohr_small03_3")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(1762.027, 1440.893, 270.7112), MAT_Vector3(136, 0, 0))
  Node_ParseIniFile(node67, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "gen_rohr_small01_1")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(1657.203, 1336.518, 270), MAT_Vector3(136, 0, 0))
  Node_ParseIniFile(node68, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "mac_industry1_1")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(1897.346, 1566.414, 306.2688), MAT_Vector3(-135.5422, 0, 0))
  Node_ParseIniFile(node69, "osd/mac/mac_industry1.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "mac_industry3_1")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(1578.086, 1265.182, 313.8715), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node70, "osd/mac/mac_industry3.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "gen_metalblock3_1")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(1325.454, 1281.151, 271.8456), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node71, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "gen_rohr_big02_1")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(1455.247, 1293.674, 272.6377), MAT_Vector3(-90.10879, 0, 0))
  Node_ParseIniFile(node72, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "gen_starfound_1")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(1333.473, 1212.237, 295.9616), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node73, "osd/gen/gen_starfound.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "gen_vehiclestation_1")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(1326.418, 1205.308, 270.0247), MAT_Vector3(-89.93887, 0, 0))
  Node_ParseIniFile(node74, "osd/gen/gen_vehiclestation.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "gen_metalblock2_2")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(1307.614, 1418.906, 260.1052), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node75, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "gen_rohr_small02_1")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(1321.727, 1288.681, 272.1944), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node76, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "gen_turret_socket_1")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(1935.43, 1722.226, 300.4983), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node77, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "gen_turret_socket_2")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(2009.221, 1803.637, 300.4983), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node78, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "gen_turret_socket_3")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(2174.85, 1616.753, 300.4983), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node79, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "gen_turret_socket_4")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(2113.491, 1548.978, 300.4983), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node80, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node80, 0)
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
  FX_Plant_SetMap(node133, "map/2H3/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node134)
  Node_ParseIniFile(node134, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node134, "map/2H3/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_fx_plant", "org_grass_l_white_1")
  Node_AddSon(node7, node135)
  Node_ParseIniFile(node135, "osd/fx_plant/org_grass_l_white.osd")
  FX_Plant_SetMap(node135, "map/2H3/Terrain/org_grass_l.tga")
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_fx_plant", "org_grass_s_white_1")
  Node_AddSon(node7, node136)
  Node_ParseIniFile(node136, "osd/fx_plant/org_grass_s_white.osd")
  FX_Plant_SetMap(node136, "map/2H3/Terrain/org_grass_s.tga")
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
  node149 = Node_CreateNode("NOD_PatrolArea", "Nav1Battle_PatrolArea")
  Node_AddSon(node148, node149)
  PatrolArea_SetPosition(node149, MAT_Vector3(1353.781142, 2651.24803, 278.272983))
  PatrolArea_SetRadius(node149, 75)
  PatrolArea_SetMinZ(node149, -50)
  PatrolArea_SetMaxZ(node149, 50)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_PatrolArea", "Nav1Battle_TriggerArea")
  Node_AddSon(node148, node150)
  PatrolArea_SetPosition(node150, MAT_Vector3(1353.781, 2651.248, 278.273))
  PatrolArea_SetRadius(node150, 500)
  PatrolArea_SetMinZ(node150, -200)
  PatrolArea_SetMaxZ(node150, 350)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_PatrolArea", "Nav1Battle_FollowArea")
  Node_AddSon(node148, node151)
  PatrolArea_SetPosition(node151, MAT_Vector3(1353.781, 2651.248, 278.273))
  PatrolArea_SetRadius(node151, 720)
  PatrolArea_SetMinZ(node151, -300)
  PatrolArea_SetMaxZ(node151, 320)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_PatrolArea", "Nav2Battle_PatrolArea")
  Node_AddSon(node148, node152)
  PatrolArea_SetPosition(node152, MAT_Vector3(2599.02165, 3290.536522, 375))
  PatrolArea_SetRadius(node152, 75)
  PatrolArea_SetMinZ(node152, -50)
  PatrolArea_SetMaxZ(node152, 50)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_PatrolArea", "Nav2Battle_TriggerArea")
  Node_AddSon(node148, node153)
  PatrolArea_SetPosition(node153, MAT_Vector3(2598.197744, 3290.536522, 375))
  PatrolArea_SetRadius(node153, 500)
  PatrolArea_SetMinZ(node153, -200)
  PatrolArea_SetMaxZ(node153, 350)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_PatrolArea", "Nav2Battle_FollowArea")
  Node_AddSon(node148, node154)
  PatrolArea_SetPosition(node154, MAT_Vector3(2598.3383, 3289.877509, 375))
  PatrolArea_SetRadius(node154, 720)
  PatrolArea_SetMinZ(node154, -300)
  PatrolArea_SetMaxZ(node154, 220)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Path", "SwedenborgPath_1")
  Node_AddSon(node148, node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node155, node156)
  Position_SetPosition(node156, MAT_Vector3(2884.715291, 3245.91408, 427.391781))
  Position_SetRadius(node156, 5)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node155, node157)
  Position_SetPosition(node157, MAT_Vector3(2999.265372, 3234.104793, 462.643181))
  Position_SetRadius(node157, 5)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node155, node158)
  Position_SetPosition(node158, MAT_Vector3(3105.318784, 3206.214215, 417.576095))
  Position_SetRadius(node158, 5)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node155, node159)
  Position_SetPosition(node159, MAT_Vector3(3304.593302, 3111.572119, 393.919515))
  Position_SetRadius(node159, 5)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node155, node160)
  Position_SetPosition(node160, MAT_Vector3(3402.610382, 2999.383895, 421.329321))
  Position_SetRadius(node160, 5)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node155, node161)
  Position_SetPosition(node161, MAT_Vector3(3490.611716, 2905.862961, 464.562518))
  Position_SetRadius(node161, 5)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node155, node162)
  Position_SetPosition(node162, MAT_Vector3(3616.358472, 2812.797164, 398.261388))
  Position_SetRadius(node162, 5)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node155, node163)
  Position_SetPosition(node163, MAT_Vector3(3797.040559, 2694.704297, 394.817764))
  Position_SetRadius(node163, 5)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_PatrolArea", "Swedenborg_TriggerArea")
  Node_AddSon(node148, node164)
  PatrolArea_SetPosition(node164, MAT_Vector3(0, 0, 0))
  PatrolArea_SetRadius(node164, 350)
  PatrolArea_SetMinZ(node164, -100)
  PatrolArea_SetMaxZ(node164, 100)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_PatrolArea", "Swedenborg_FollowArea")
  Node_AddSon(node148, node165)
  PatrolArea_SetPosition(node165, MAT_Vector3(0, 0, 0))
  PatrolArea_SetRadius(node165, 500)
  PatrolArea_SetMinZ(node165, -200)
  PatrolArea_SetMaxZ(node165, 200)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_PatrolArea", "SwedenborgBattle_PatrolArea")
  Node_AddSon(node148, node166)
  PatrolArea_SetPosition(node166, MAT_Vector3(3735.632268, 2732.494014, 410.463702))
  PatrolArea_SetRadius(node166, 100)
  PatrolArea_SetMinZ(node166, -50)
  PatrolArea_SetMaxZ(node166, 50)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_PatrolArea", "SwedenborgBattle_TriggerArea")
  Node_AddSon(node148, node167)
  PatrolArea_SetPosition(node167, MAT_Vector3(3734.45134, 2734.855872, 356.314203))
  PatrolArea_SetRadius(node167, 275)
  PatrolArea_SetMinZ(node167, -200)
  PatrolArea_SetMaxZ(node167, 350)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_PatrolArea", "SwedenborgBattle_FollowArea")
  Node_AddSon(node148, node168)
  PatrolArea_SetPosition(node168, MAT_Vector3(3733.270411, 2732.494014, 378.763196))
  PatrolArea_SetRadius(node168, 512)
  PatrolArea_SetMinZ(node168, -300)
  PatrolArea_SetMaxZ(node168, 220)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node146, node169)
  Node_EnterSimulation(node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node146, node170)
  Node_EnterSimulation(node170)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Trigger", "ReachingWP1")
  Node_AddSon(node170, node171)
  Body_SetFriendOrFoeID(node171, 0)
  Body_SetPosition(node171, MAT_Vector3(1356.14, 2646.834, 284))
  Trigger_SetPresenceSphere(node171, 640)
  Node_EnterSimulation(node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_Trigger", "ChangeWP1")
  Node_AddSon(node170, node172)
  Body_SetFriendOrFoeID(node172, 0)
  Body_SetPosition(node172, MAT_Vector3(1356.13962, 2646.834088, 284))
  Trigger_SetPresenceSphere(node172, 300)
  Node_EnterSimulation(node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_Trigger", "ChangeWP2")
  Node_AddSon(node170, node173)
  Body_SetFriendOrFoeID(node173, 0)
  Body_SetCS(node173, MAT_Vector3(2434.861698, 3289.608441, 321.165804), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node173, 40, 500, 300)
  Node_EnterSimulation(node173)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_Trigger", "ChangeWPFollow")
  Node_AddSon(node170, node174)
  Body_SetFriendOrFoeID(node174, 0)
  Body_SetCS(node174, MAT_Vector3(3437.459707, 2963.482205, 433.924437), MAT_Vector3(-37.196577, 0, 0))
  Trigger_SetBoxMode(node174, 40, 300, 250)
  Node_EnterSimulation(node174)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node146, node175)
  Node_EnterSimulation(node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node175, node176)
  Body_SetCS(node176, MAT_Vector3(2538.851368, 455.313725, 483.908593), MAT_Vector3(-174.731339, 42.195877, 14.947853))
  Node_ParseIniFile(node176, "osd/pla/pla_ship1.osd")
  Body_SetFriendOrFoeID(node176, 1)
  Node_EnterSimulation(node176)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("nod_waypoint", "nav_waypoint_1")
  Node_AddSon(node175, node177)
  Body_SetPosition(node177, MAT_Vector3(1351.541849, 2655.334383, 284.281376))
  WayPoint_SetRadius(node177, 50)
  Node_ParseIniFile(node177, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("nod_waypoint", "nav_waypoint_2")
  Node_AddSon(node175, node178)
  Body_SetPosition(node178, MAT_Vector3(2599.1025, 3289.077708, 367.771269))
  WayPoint_SetRadius(node178, 50)
  Node_ParseIniFile(node178, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("nod_waypoint", "nav_follow_1")
  Node_AddSon(node175, node179)
  Body_SetPosition(node179, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node179, 100)
  Node_ParseIniFile(node179, "osd/nav/nav_follow.osd")
  Node_EnterSimulation(node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("nod_vessel", "mac_swedenborg_1")
  Node_AddSon(node175, node180)
  Body_SetCS(node180, MAT_Vector3(2834.188518, 3245.291865, 427.030473), MAT_Vector3(80.918869, 0, 0))
  Node_ParseIniFile(node180, "osd/mac/mac_swedenborg_narrow.osd")
  Body_SetFriendOrFoeID(node180, 4)
  Body_SetNameKey(node180, -1)
  Body_SetCargoKey(node180, -1, 0)
  Body_SetCargoKey(node180, -1, 1)
  Body_SetCargoKey(node180, -1, 2)
  Node_EnterSimulation(node180)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("nod_vessel", "swed_guard_1")
  Node_AddSon(node175, node181)
  Body_SetCS(node181, MAT_Vector3(3699.35407, 2908.518632, 428.749451), MAT_Vector3(134.880664, 0, 0))
  Node_ParseIniFile(node181, "osd/pir_tz/pir_tz_scout2_narrow_plasma.osd")
  Body_SetFriendOrFoeID(node181, 4)
  Body_SetNameKey(node181, -1)
  Body_SetCargoKey(node181, -1, 0)
  Body_SetCargoKey(node181, -1, 1)
  Body_SetCargoKey(node181, -1, 2)
  Node_EnterSimulation(node181)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("nod_vessel", "swed_guard_2")
  Node_AddSon(node175, node182)
  Body_SetCS(node182, MAT_Vector3(3714.33795, 2902.191224, 425.426767), MAT_Vector3(139.892245, 0, 0))
  Node_ParseIniFile(node182, "osd/pir_tz/pir_tz_scout2_narrow_plasma.osd")
  Body_SetFriendOrFoeID(node182, 4)
  Body_SetNameKey(node182, -1)
  Body_SetCargoKey(node182, -1, 0)
  Body_SetCargoKey(node182, -1, 1)
  Body_SetCargoKey(node182, -1, 2)
  Node_EnterSimulation(node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("nod_vessel", "pir_tz_scout2_1")
  Node_AddSon(node175, node183)
  Body_SetCS(node183, MAT_Vector3(1369.426054, 2684.828811, 269.846741), MAT_Vector3(163.575972, 0, 0))
  Node_ParseIniFile(node183, "osd/pir_tz/pir_tz_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node183, 3)
  Body_SetNameKey(node183, -1)
  Body_SetCargoKey(node183, -1, 0)
  Body_SetCargoKey(node183, -1, 1)
  Body_SetCargoKey(node183, -1, 2)
  Node_EnterSimulation(node183)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("nod_vessel", "pir_tz_scout2_2")
  Node_AddSon(node175, node184)
  Body_SetCS(node184, MAT_Vector3(1325.218, 2684.549, 253.71308), MAT_Vector3(-123.9886, 0, 0))
  Node_ParseIniFile(node184, "osd/pir_tz/pir_tz_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node184, 3)
  Body_SetNameKey(node184, -1)
  Body_SetCargoKey(node184, -1, 0)
  Body_SetCargoKey(node184, -1, 1)
  Body_SetCargoKey(node184, -1, 2)
  Node_EnterSimulation(node184)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("nod_vessel", "pir_tz_scout2_3")
  Node_AddSon(node175, node185)
  Body_SetCS(node185, MAT_Vector3(1326.337179, 2607.045845, 270.193002), MAT_Vector3(157.702817, 0, 0))
  Node_ParseIniFile(node185, "osd/pir_tz/pir_tz_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node185, 3)
  Body_SetNameKey(node185, -1)
  Body_SetCargoKey(node185, -1, 0)
  Body_SetCargoKey(node185, -1, 1)
  Body_SetCargoKey(node185, -1, 2)
  Node_EnterSimulation(node185)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("nod_vessel", "pir_tz_scout1_1")
  Node_AddSon(node175, node186)
  Body_SetCS(node186, MAT_Vector3(2656.550693, 3336.377577, 321.468198), MAT_Vector3(113.980526, 0, 0))
  Node_ParseIniFile(node186, "osd/pir_tz/pir_tz_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node186, 3)
  Body_SetNameKey(node186, -1)
  Body_SetCargoKey(node186, -1, 0)
  Body_SetCargoKey(node186, -1, 1)
  Body_SetCargoKey(node186, -1, 2)
  Node_EnterSimulation(node186)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("nod_vessel", "pir_tz_scout1_2")
  Node_AddSon(node175, node187)
  Body_SetCS(node187, MAT_Vector3(2561.801812, 3348.73659, 321.4682), MAT_Vector3(162.270793, 0, 0))
  Node_ParseIniFile(node187, "osd/pir_tz/pir_tz_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node187, 3)
  Body_SetNameKey(node187, -1)
  Body_SetCargoKey(node187, -1, 0)
  Body_SetCargoKey(node187, -1, 1)
  Body_SetCargoKey(node187, -1, 2)
  Node_EnterSimulation(node187)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("nod_vessel", "pir_tz_scout1_3")
  Node_AddSon(node175, node188)
  Body_SetCS(node188, MAT_Vector3(2585.695273, 3238.333599, 321.4682), MAT_Vector3(119.853651, 0, 0))
  Node_ParseIniFile(node188, "osd/pir_tz/pir_tz_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node188, 3)
  Body_SetNameKey(node188, -1)
  Body_SetCargoKey(node188, -1, 0)
  Body_SetCargoKey(node188, -1, 1)
  Body_SetCargoKey(node188, -1, 2)
  Node_EnterSimulation(node188)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node189)
  Camera_SetBackPlane(node189, 1024)
  Node_EnterSimulation(node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Scenario", "IngameScene")
  Node_AddSon(node0, node190)
  Node_EnterSimulation(node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node190, node191)
  Node_EnterSimulation(node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node190, node192)
  Node_EnterSimulation(node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Path", "PlayerPath")
  Node_AddSon(node192, node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node193, node194)
  Position_SetPosition(node194, MAT_Vector3(2525.590691, 502.302704, 482.609103))
  Position_SetRadius(node194, 5)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node193, node195)
  Position_SetPosition(node195, MAT_Vector3(2486.137118, 460.393426, 482.6091))
  Position_SetRadius(node195, 5)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node193, node196)
  Position_SetPosition(node196, MAT_Vector3(2417.853485, 483.078818, 482.6091))
  Position_SetRadius(node196, 5)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node193, node197)
  Position_SetPosition(node197, MAT_Vector3(2359.759847, 675.262211, 374.409672))
  Position_SetRadius(node197, 5)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node193, node198)
  Position_SetPosition(node198, MAT_Vector3(2357.57511, 915.969794, 318.397097))
  Position_SetRadius(node198, 5)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node193, node199)
  Position_SetPosition(node199, MAT_Vector3(2323.300853, 1180.301336, 376.54345))
  Position_SetRadius(node199, 5)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node192, node200)
  Position_SetPosition(node200, MAT_Vector3(2460.574741, 430.634845, 482))
  Position_SetRadius(node200, 5)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("NOD_Position", "LookFrom_2")
  Node_AddSon(node192, node201)
  Position_SetPosition(node201, MAT_Vector3(2324.498774, 675.607792, 365.889782))
  Position_SetRadius(node201, 5)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("NOD_Position", "LookFrom_3")
  Node_AddSon(node192, node202)
  Position_SetPosition(node202, MAT_Vector3(2375.102236, 938.129741, 317.327289))
  Position_SetRadius(node202, 5)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("NOD_Position", "LookFrom_4")
  Node_AddSon(node192, node203)
  Position_SetPosition(node203, MAT_Vector3(2317.891415, 1211.112036, 370.900765))
  Position_SetRadius(node203, 5)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node190, node204)
  Node_EnterSimulation(node204)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("NOD_Director", "Intro")
  Node_AddSon(node204, node205)
  Node_EnterSimulation(node205)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node190, node206)
  Node_EnterSimulation(node206)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node190, node207)
  Node_EnterSimulation(node207)
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
SetEnemyMatrixElement(0, 4, N)
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
                                                                                                                                                                                                                                                                      if not (o6035.Value ~= True) then
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
                                                                                                                                                                                                                                                                      if not (o6059.Value == True) then
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
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o30, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o30, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o30, "Code3")
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
S_o77 = { [nil] = {}, Start = function(L0)

end }
S_o123 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o123, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o123, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o123, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0.624435)
  Body_SetEmpShield(L0.Node, 0.814352)
  CallFunction(o123, "Code5")
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
S_o170 = { [nil] = {}, Start = function(L0)

end }
S_o216 = { [nil] = {}, Start = function(L0)

end }
S_o262 = { [nil] = {}, Start = function(L0)

end }
S_o308 = { [nil] = {}, Start = function(L0)

end }
S_o354 = { [nil] = {}, Start = function(L0)

end }
S_o400 = { [nil] = {}, Start = function(L0)

end }
S_o446 = { [nil] = {}, Start = function(L0)

end }
S_o492 = { [nil] = {}, Start = function(L0)

end }
S_o538 = { [nil] = {}, Start = function(L0)

end }
S_o584 = { [nil] = {}, Start = function(L0)

end }
S_o630 = { [nil] = {}, Start = function(L0)

end }
S_o676 = { [nil] = {}, Start = function(L0)

end }
S_o722 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o722, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o722, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o722, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o722, "Code4")
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
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o767, "Code4")
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
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o812, "Code4")
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
S_o857 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o857, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o857, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o857, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o857, "Code4")
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
S_o902 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o902, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o902, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o902, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o902, "Code4")
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
S_o947 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o947, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o947, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o947, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o947, "Code4")
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
S_o992 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o992, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o992, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o992, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o992, "Code4")
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
S_o1037 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1037, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1037, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1037, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o1037, "Code4")
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
S_o1082 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1082, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1082, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1082, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o1082, "Code4")
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
S_o1127 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1127, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1127, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1127, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o1127, "Code4")
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
S_o1172 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1172, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1172, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1172, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o1172, "Code4")
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
S_o1217 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1217, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1217, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1217, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o1217, "Code4")
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
S_o1262 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1262, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1262, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1262, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o1262, "Code4")
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
S_o1307 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1307, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1307, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1307, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o1307, "Code4")
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
S_o1352 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1352, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1352, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1352, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o1352, "Code4")
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
S_o1397 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1397, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1397, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1397, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o1397, "Code4")
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
S_o1442 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1442, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1442, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1442, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o1442, "Code4")
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
S_o1487 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1487, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1487, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1487, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o1487, "Code4")
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
S_o1532 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1532, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1532, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1532, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o1532, "Code4")
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
S_o1577 = { [nil] = {}, Start = function(L0)

end }
S_o1623 = { [nil] = {}, Start = function(L0)

end }
S_o1669 = { [nil] = {}, Start = function(L0)

end }
S_o1715 = { [nil] = {}, Start = function(L0)

end }
S_o1761 = { [nil] = {}, Start = function(L0)

end }
S_o1807 = { [nil] = {}, Start = function(L0)

end }
S_o1853 = { [nil] = {}, Start = function(L0)

end }
S_o1899 = { [nil] = {}, Start = function(L0)

end }
S_o1945 = { [nil] = {}, Start = function(L0)

end }
S_o1991 = { [nil] = {}, Start = function(L0)

end }
S_o2037 = { [nil] = {}, Start = function(L0)

end }
S_o2083 = { [nil] = {}, Start = function(L0)

end }
S_o2129 = { [nil] = {}, Start = function(L0)

end }
S_o2175 = { [nil] = {}, Start = function(L0)

end }
S_o2221 = { [nil] = {}, Start = function(L0)

end }
S_o2267 = { [nil] = {}, Start = function(L0)

end }
S_o2313 = { [nil] = {}, Start = function(L0)

end }
S_o2359 = { [nil] = {}, Start = function(L0)

end }
S_o2405 = { [nil] = {}, Start = function(L0)

end }
S_o2451 = { [nil] = {}, Start = function(L0)

end }
S_o2497 = { [nil] = {}, Start = function(L0)

end }
S_o2543 = { [nil] = {}, Start = function(L0)

end }
S_o2589 = { [nil] = {}, Start = function(L0)

end }
S_o2635 = { [nil] = {}, Start = function(L0)

end }
S_o2681 = { [nil] = {}, Start = function(L0)

end }
S_o2727 = { [nil] = {}, Start = function(L0)

end }
S_o2773 = { [nil] = {}, Start = function(L0)

end }
S_o2819 = { [nil] = {}, Start = function(L0)

end }
S_o2865 = { [nil] = {}, Start = function(L0)

end }
S_o2911 = { [nil] = {}, Start = function(L0)

end }
S_o2957 = { [nil] = {}, Start = function(L0)

end }
S_o3003 = { [nil] = {}, Start = function(L0)

end }
S_o3049 = { [nil] = {}, Start = function(L0)

end }
S_o3095 = { [nil] = {}, Start = function(L0)

end }
S_o3141 = { [nil] = {}, Start = function(L0)

end }
S_o3187 = { [nil] = {}, Start = function(L0)

end }
S_o3231 = { [nil] = {}, Start = function(L0)

end }
S_o3275 = { [nil] = {}, Start = function(L0)

end }
S_o3319 = { [nil] = {}, Start = function(L0)

end }
S_o3363 = { [nil] = {}, Start = function(L0)

end }
S_o3409 = { [nil] = {}, Start = function(L0)

end }
S_o3455 = { [nil] = {}, Start = function(L0)

end }
S_o3501 = { [nil] = {}, Start = function(L0)

end }
S_o3547 = { [nil] = {}, Start = function(L0)

end }
S_o3593 = { [nil] = {}, Start = function(L0)

end }
S_o3639 = { [nil] = {}, Start = function(L0)

end }
S_o3685 = { [nil] = {}, Start = function(L0)

end }
S_o3731 = { [nil] = {}, Start = function(L0)

end }
S_o3777 = { [nil] = {}, Start = function(L0)

end }
S_o3823 = { [nil] = {}, Start = function(L0)

end }
S_o3869 = { [nil] = {}, Start = function(L0)

end }
S_o3915 = { [nil] = {}, Start = function(L0)

end }
S_o3961 = { [nil] = {}, Start = function(L0)

end }
S_o4007 = { [nil] = {}, Start = function(L0)

end }
S_o4053 = { [nil] = {}, Start = function(L0)

end }
S_o4099 = { [nil] = {}, Start = function(L0)

end }
S_o4145 = { [nil] = {}, Start = function(L0)

end }
S_o4191 = { [nil] = {}, Start = function(L0)

end }
S_o4237 = { [nil] = {}, Start = function(L0)

end }
S_o4283 = { [nil] = {}, Start = function(L0)

end }
S_o4329 = { [nil] = {}, Start = function(L0)

end }
S_o4375 = { [nil] = {}, Start = function(L0)

end }
S_o4421 = { [nil] = {}, Start = function(L0)

end }
S_o4467 = { [nil] = {}, Start = function(L0)

end }
S_o4513 = { [nil] = {}, Start = function(L0)

end }
S_o4559 = { [nil] = {}, Start = function(L0)

end }
S_o4605 = { [nil] = {}, Start = function(L0)

end }
S_o4651 = { [nil] = {}, Start = function(L0)

end }
S_o4697 = { [nil] = {}, Start = function(L0)

end }
S_o4743 = { [nil] = {}, Start = function(L0)

end }
S_o4789 = { [nil] = {}, Start = function(L0)

end }
S_o4835 = { [nil] = {}, Start = function(L0)

end }
S_o4881 = { [nil] = {}, Start = function(L0)

end }
S_o4927 = { [nil] = {}, Start = function(L0)

end }
S_o4973 = { [nil] = {}, Start = function(L0)

end }
S_o5019 = { [nil] = {}, Start = function(L0)

end }
S_o5065 = { [nil] = {}, Start = function(L0)

end }
S_o5111 = { [nil] = {}, Start = function(L0)

end }
S_o5157 = { [nil] = {}, Start = function(L0)

end }
S_o5203 = { [nil] = {}, Start = function(L0)

end }
S_o5249 = { [nil] = {}, Start = function(L0)

end }
S_o5295 = { [nil] = {}, Start = function(L0)

end }
S_o5341 = { [nil] = {}, Start = function(L0)

end }
S_o5387 = { [nil] = {}, Start = function(L0)

end }
S_o5433 = { [nil] = {}, Start = function(L0)

end }
S_o5479 = { [nil] = {}, Start = function(L0)

end }
S_o5525 = { [nil] = {}, Start = function(L0)

end }
S_o5571 = { [nil] = {}, Start = function(L0)

end }
S_o5617 = { [nil] = {}, Start = function(L0)

end }
S_o5663 = { [nil] = {}, Start = function(L0)

end }
S_o5709 = { [nil] = {}, Start = function(L0)

end }
S_o5755 = { [nil] = {}, Start = function(L0)

end }
S_o5801 = { [nil] = {}, Start = function(L0)

end }
S_o5847 = { [nil] = {}, Start = function(L0)

end }
S_o5893 = { [nil] = {}, Start = function(L0)

end }
S_o5939 = { [nil] = {}, Start = function(L0)

end }
o5986 = FormationLib.CreateFormation("Triangle", "", "", "", 30, 30)
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
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o5987, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5987, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5987, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
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
  o6025.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5992.Value == L0) then
    o5992["Value"] = L0
    o6025.ReCalculate()
  end
end }
S_o5993 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5993, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5993, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5993, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o5993, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5993, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5993, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5998.SetStateValue(L1)
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
o5998 = { [nil] = {}, Start = function()
  o5998["Value"] = False
  o6026.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5998.Value == L0) then
    o5998["Value"] = L0
    o6026.ReCalculate()
  end
end }
S_o5999 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5999, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5999, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5999, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o5999, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5999, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5999, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o6004.SetStateValue(L1)
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
o6004 = { [nil] = {}, Start = function()
  o6004["Value"] = False
  o6027.StartCalculate()
  o6082.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6004.Value == L0) then
    o6004["Value"] = L0
    o6027.ReCalculate()
    o6082.ReCalculate()
  end
end }
S_o6005 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6005, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6005, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6005, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o6005, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6005, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6005, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o6010.SetStateValue(L1)
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
o6010 = { [nil] = {}, Start = function()
  o6010["Value"] = False
  o6028.StartCalculate()
  o6139.StartCalculate()
  o6196.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6010.Value == L0) then
    o6010["Value"] = L0
    o6028.ReCalculate()
    o6139.ReCalculate()
    o6196.ReCalculate()
  end
end }
S_o6011 = { [nil] = {}, Start = function(L0)
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
  Body_AddItem(L0.Node, "torpedo_threshershark", 1)
  Body_AddItem(L0.Node, "torpedo_bullshark", 1)
  Body_AddItem(L0.Node, "gun_empactor", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 4)
  CallFunction(o6011, "Code10")
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
o6025 = { [nil] = {}, GetCalculated = function()
  if not (o5992.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6025.SetStateValue(o6025.GetCalculated())
end, StartCalculate = function()
  o6025["Value"] = o6025.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6078.Node, o6011.Node, 192)
  SendRadioMessageTake(o30.Node, o6011.Node, 193)
end, SetStateValue = function(L0)
  if not (o6025.Value == L0) then
    o6025["Value"] = L0
    if not (L0 ~= 1) then
      o6025.ChangeTo1()
    end
  end
end }
o6026 = { [nil] = {}, GetCalculated = function()
  if not (o5998.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6026.SetStateValue(o6026.GetCalculated())
end, StartCalculate = function()
  o6026["Value"] = o6026.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
  SendRadioMessageTake(o30.Node, o6011.Node, 194)
  SED_SetTaskTextKey(2101, -1, -1)
  Game_SetWayPoint(GetGameNode(), o6068.Node)
end, SetStateValue = function(L0)
  if not (o6026.Value == L0) then
    DelayedFunction(10, o6026, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6026.Value == L0) then
    o6026["Value"] = L0
    if not (L0 ~= 1) then
      o6026.ChangeTo1()
    end
  end
end }
o6027 = { [nil] = {}, GetCalculated = function()
  if not (o6004.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6027.SetStateValue(o6027.GetCalculated())
end, StartCalculate = function()
  o6027["Value"] = o6027.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 2, 2000, 2101)
  SendRadioMessageTake(o30.Node, o6011.Node, 195)
  SED_SetTaskTextKey(2102, -1, -1)
  Game_SetWayPoint(GetGameNode(), o6073.Node)
  Game_PlayMusic(GetGameNode(), "Track3")
end, SetStateValue = function(L0)
  if not (o6027.Value == L0) then
    DelayedFunction(5, o6027, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6027.Value == L0) then
    o6027["Value"] = L0
    if not (L0 ~= 1) then
      o6027.ChangeTo1()
    end
  end
end }
o6028 = { [nil] = {}, GetCalculated = function()
  if not (o6010.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6028.SetStateValue(o6028.GetCalculated())
end, StartCalculate = function()
  o6028["Value"] = o6028.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 3, 2000, 2102)
  SendRadioMessageTake(o30.Node, o6011.Node, 197)
  SED_SetTaskTextKey(2103, -1, -1)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  SendRadioMessageTake(o30.Node, o6011.Node, 196)
  Game_PlayMusic(GetGameNode(), "Agressive")
end, SetStateValue = function(L0)
  if not (o6028.Value == L0) then
    o6028["Value"] = L0
    if not (L0 ~= 1) then
      o6028.ChangeTo1()
    end
  end
end }
o6029 = { [nil] = {}, GetCalculated = function()
  if not (o6152.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6209.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 ~= 1) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6029.SetStateValue(o6029.GetCalculated())
end, StartCalculate = function()
  o6029["Value"] = o6029.GetCalculated()
  o6031.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6029.Value == L0) then
    o6029["Value"] = L0
    o6031.ReCalculate()
  end
end }
o6030 = { [nil] = {}, GetCalculated = function()
  if not (o6152.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o6209.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 ~= 2) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6030.SetStateValue(o6030.GetCalculated())
end, StartCalculate = function()
  o6030["Value"] = o6030.GetCalculated()
  o6032.StartCalculate()
  o6034.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6030.Value == L0) then
    o6030["Value"] = L0
    o6032.ReCalculate()
    o6034.ReCalculate()
  end
end }
o6031 = { [nil] = {}, GetCalculated = function()
  if not (o6029.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6031.SetStateValue(o6031.GetCalculated())
end, StartCalculate = function()
  o6031["Value"] = o6031.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6078.Node, o6011.Node, 198)
end, SetStateValue = function(L0)
  if not (o6031.Value == L0) then
    o6031["Value"] = L0
    if not (L0 ~= 1) then
      o6031.ChangeTo1()
    end
  end
end }
o6032 = { [nil] = {}, GetCalculated = function()
  if not (o6030.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6032.SetStateValue(o6032.GetCalculated())
end, StartCalculate = function()
  o6032["Value"] = o6032.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6078.Node, o6011.Node, 199)
end, SetStateValue = function(L0)
  if not (o6032.Value == L0) then
    o6032["Value"] = L0
    if not (L0 ~= 1) then
      o6032.ChangeTo1()
    end
  end
end }
o6033 = { [nil] = {}, GetCalculated = function()
  if not (o6093.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6033.SetStateValue(o6033.GetCalculated())
end, StartCalculate = function()
  o6033["Value"] = o6033.GetCalculated()
  o6035.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o6011.Node, 201)
  Game_PrimaryObjectiveReached(GetGameNode(), 4, 2000, 2103)
  SED_SetTaskTextKey(0, -1, -1)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o6033.Value == L0) then
    o6033["Value"] = L0
    o6035.ReCalculate()
    if not (L0 ~= 1) then
      o6033.ChangeTo1()
    end
  end
end }
o6034 = { [nil] = {}, GetCalculated = function()
  if not (o6030.Value ~= True) then
    if not (o6255.Value ~= True) then
      if not (o6311.Value ~= True) then
        if not (o6367.Value ~= True) then
          if not (o6423.Value ~= True) then
            if not (o6479.Value ~= True) then
              if not (o6535.Value ~= True) then
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
end, ReCalculate = function()
  o6034.SetStateValue(o6034.GetCalculated())
end, StartCalculate = function()
  o6034["Value"] = o6034.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o6011.Node, 202)
  Game_BonusObjectiveReached(GetGameNode(), 1, 2002, 2104)
end, SetStateValue = function(L0)
  if not (o6034.Value == L0) then
    DelayedFunction(2, o6034, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6034.Value == L0) then
    o6034["Value"] = L0
    if not (L0 ~= 1) then
      o6034.ChangeTo1()
    end
  end
end }
o6035 = { [nil] = {}, GetCalculated = function()
  if not (o6033.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6035.SetStateValue(o6035.GetCalculated())
end, StartCalculate = function()
  o6035["Value"] = o6035.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6035.Value == L0) then
    o6035["Value"] = L0
    o2.ReCalculate()
  end
end }
o6059 = { [nil] = {}, GetCalculated = function()
  if not (o6085.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6059.SetStateValue(o6059.GetCalculated())
end, StartCalculate = function()
  o6059["Value"] = o6059.GetCalculated()
  o26.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 4, 2001, 2103)
  SendRadioMessageTake(o30.Node, o6011.Node, 200)
end, SetStateValue = function(L0)
  if not (o6059.Value == L0) then
    o6059["Value"] = L0
    o26.ReCalculate()
    if not (L0 ~= 1) then
      o6059.ChangeTo1()
    end
  end
end }
S_o6063 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o6063, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6068 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o6068, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6073 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o6078.Node)
  CallFunction(o6073, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6078 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6078, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6078, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6078, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o6078, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o6078, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o6078, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6078, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/SwedenborgPath_1", 1, 1 } }(o5985, o5986, "/Scenario_Dynamic/Navigation/Swedenborg_TriggerArea", "/Scenario_Dynamic/Navigation/Swedenborg_FollowArea", False, "Code8")
  else
    CallFunction(o6078, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o6078, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code10")
  else
    CallFunction(o6078, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/SwedenborgBattle_PatrolArea", "/Scenario_Dynamic/Navigation/SwedenborgBattle_TriggerArea", "/Scenario_Dynamic/Navigation/SwedenborgBattle_FollowArea", "E", "", "", "", 1, "Code11")
  else
    CallFunction(o6078, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_Destroyed = function(L0, L1)
  o6085.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o6093.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o6095.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o6082.Value ~= True) then
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
o6082 = { [nil] = {}, GetCalculated = function()
  if not (o6004.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6082.SetStateValue(o6082.GetCalculated())
end, StartCalculate = function()
  o6082["Value"] = o6082.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6082.Value == L0) then
    DelayedFunction(3.5, o6082, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6082.Value == L0) then
    o6082["Value"] = L0
    CallFunction(o6078, "ProcesseStateChange")
  end
end }
o6085 = { [nil] = {}, Start = function()
  o6085["Value"] = False
  o6059.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6085.Value == L0) then
    o6085["Value"] = L0
    o6059.ReCalculate()
  end
end }
o6093 = { [nil] = {}, Start = function()
  o6093["Value"] = False
  o6033.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6093.Value == L0) then
    o6093["Value"] = L0
    o6033.ReCalculate()
  end
end }
o6095 = { [nil] = {}, Start = function()
  o6095["Value"] = False
  o6137.StartCalculate()
  o6194.StartCalculate()
  o6251.StartCalculate()
  o6307.StartCalculate()
  o6363.StartCalculate()
  o6419.StartCalculate()
  o6475.StartCalculate()
  o6531.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6095.Value == L0) then
    o6095["Value"] = L0
    o6137.ReCalculate()
    o6194.ReCalculate()
    o6251.ReCalculate()
    o6307.ReCalculate()
    o6363.ReCalculate()
    o6419.ReCalculate()
    o6475.ReCalculate()
    o6531.ReCalculate()
  end
end }
S_o6136 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6136, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6136, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6136, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o6136, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6136, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/SwedenborgBattle_PatrolArea", "/Scenario_Dynamic/Navigation/SwedenborgBattle_TriggerArea", "/Scenario_Dynamic/Navigation/SwedenborgBattle_FollowArea", "E", "", "", "", 0.5, "Code6")
  else
    CallFunction(o6136, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o6136, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_DestEmp = function(L0, L1)
  o6152.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6139.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o6137.Value ~= True) then
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
o6137 = { [nil] = {}, GetCalculated = function()
  if not (o6095.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6137.SetStateValue(o6137.GetCalculated())
end, StartCalculate = function()
  o6137["Value"] = o6137.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6137.Value == L0) then
    DelayedFunction(3, o6137, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6137.Value == L0) then
    o6137["Value"] = L0
    CallFunction(o6136, "ProcesseStateChange")
  end
end }
o6139 = { [nil] = {}, GetCalculated = function()
  if not (o6010.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6139.SetStateValue(o6139.GetCalculated())
end, StartCalculate = function()
  o6139["Value"] = o6139.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6139.Value == L0) then
    DelayedFunction(4, o6139, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6139.Value == L0) then
    o6139["Value"] = L0
    CallFunction(o6136, "ProcesseStateChange")
  end
end }
o6152 = { [nil] = {}, Start = function()
  o6152["Value"] = False
  o6029.StartCalculate()
  o6030.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6152.Value == L0) then
    o6152["Value"] = L0
    o6029.ReCalculate()
    o6030.ReCalculate()
  end
end }
S_o6193 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6193, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6193, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6193, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o6193, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6193, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/SwedenborgBattle_PatrolArea", "/Scenario_Dynamic/Navigation/SwedenborgBattle_TriggerArea", "/Scenario_Dynamic/Navigation/SwedenborgBattle_FollowArea", "E", "", "", "", 0.5, "Code6")
  else
    CallFunction(o6193, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o6193, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_DestEmp = function(L0, L1)
  o6209.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6196.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o6194.Value ~= True) then
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
o6194 = { [nil] = {}, GetCalculated = function()
  if not (o6095.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6194.SetStateValue(o6194.GetCalculated())
end, StartCalculate = function()
  o6194["Value"] = o6194.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6194.Value == L0) then
    DelayedFunction(3, o6194, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6194.Value == L0) then
    o6194["Value"] = L0
    CallFunction(o6193, "ProcesseStateChange")
  end
end }
o6196 = { [nil] = {}, GetCalculated = function()
  if not (o6010.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6196.SetStateValue(o6196.GetCalculated())
end, StartCalculate = function()
  o6196["Value"] = o6196.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6196.Value == L0) then
    DelayedFunction(4, o6196, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6196.Value == L0) then
    o6196["Value"] = L0
    CallFunction(o6193, "ProcesseStateChange")
  end
end }
o6209 = { [nil] = {}, Start = function()
  o6209["Value"] = False
  o6029.StartCalculate()
  o6030.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6209.Value == L0) then
    o6209["Value"] = L0
    o6029.ReCalculate()
    o6030.ReCalculate()
  end
end }
S_o6250 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6250, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6250, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6250, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav1Battle_PatrolArea", "/Scenario_Dynamic/Navigation/Nav1Battle_TriggerArea", "/Scenario_Dynamic/Navigation/Nav1Battle_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o6250, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o6250, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o6255.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o6251.Value ~= True) then
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
o6251 = { [nil] = {}, GetCalculated = function()
  if not (o6095.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6251.SetStateValue(o6251.GetCalculated())
end, StartCalculate = function()
  o6251["Value"] = o6251.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6251.Value == L0) then
    DelayedFunction(5, o6251, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6251.Value == L0) then
    o6251["Value"] = L0
    CallFunction(o6250, "ProcesseStateChange")
  end
end }
o6255 = { [nil] = {}, Start = function()
  o6255["Value"] = False
  o6034.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6255.Value == L0) then
    o6255["Value"] = L0
    o6034.ReCalculate()
  end
end }
S_o6306 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6306, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6306, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6306, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav1Battle_PatrolArea", "/Scenario_Dynamic/Navigation/Nav1Battle_TriggerArea", "/Scenario_Dynamic/Navigation/Nav1Battle_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o6306, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o6306, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o6311.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o6307.Value ~= True) then
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
o6307 = { [nil] = {}, GetCalculated = function()
  if not (o6095.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6307.SetStateValue(o6307.GetCalculated())
end, StartCalculate = function()
  o6307["Value"] = o6307.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6307.Value == L0) then
    DelayedFunction(5, o6307, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6307.Value == L0) then
    o6307["Value"] = L0
    CallFunction(o6306, "ProcesseStateChange")
  end
end }
o6311 = { [nil] = {}, Start = function()
  o6311["Value"] = False
  o6034.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6311.Value == L0) then
    o6311["Value"] = L0
    o6034.ReCalculate()
  end
end }
S_o6362 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6362, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6362, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6362, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav1Battle_PatrolArea", "/Scenario_Dynamic/Navigation/Nav1Battle_TriggerArea", "/Scenario_Dynamic/Navigation/Nav1Battle_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o6362, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o6362, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o6367.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o6363.Value ~= True) then
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
o6363 = { [nil] = {}, GetCalculated = function()
  if not (o6095.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6363.SetStateValue(o6363.GetCalculated())
end, StartCalculate = function()
  o6363["Value"] = o6363.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6363.Value == L0) then
    DelayedFunction(5, o6363, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6363.Value == L0) then
    o6363["Value"] = L0
    CallFunction(o6362, "ProcesseStateChange")
  end
end }
o6367 = { [nil] = {}, Start = function()
  o6367["Value"] = False
  o6034.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6367.Value == L0) then
    o6367["Value"] = L0
    o6034.ReCalculate()
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
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2Battle_PatrolArea", "/Scenario_Dynamic/Navigation/Nav2Battle_TriggerArea", "/Scenario_Dynamic/Navigation/Nav2Battle_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o6418, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o6418, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o6423.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
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
  if not (o6095.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6419.SetStateValue(o6419.GetCalculated())
end, StartCalculate = function()
  o6419["Value"] = o6419.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6419.Value == L0) then
    DelayedFunction(4, o6419, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6419.Value == L0) then
    o6419["Value"] = L0
    CallFunction(o6418, "ProcesseStateChange")
  end
end }
o6423 = { [nil] = {}, Start = function()
  o6423["Value"] = False
  o6034.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6423.Value == L0) then
    o6423["Value"] = L0
    o6034.ReCalculate()
  end
end }
S_o6474 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6474, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6474, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6474, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2Battle_PatrolArea", "/Scenario_Dynamic/Navigation/Nav2Battle_TriggerArea", "/Scenario_Dynamic/Navigation/Nav2Battle_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o6474, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o6474, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o6479.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o6475.Value ~= True) then
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
o6475 = { [nil] = {}, GetCalculated = function()
  if not (o6095.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6475.SetStateValue(o6475.GetCalculated())
end, StartCalculate = function()
  o6475["Value"] = o6475.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6475.Value == L0) then
    DelayedFunction(4, o6475, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6475.Value == L0) then
    o6475["Value"] = L0
    CallFunction(o6474, "ProcesseStateChange")
  end
end }
o6479 = { [nil] = {}, Start = function()
  o6479["Value"] = False
  o6034.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6479.Value == L0) then
    o6479["Value"] = L0
    o6034.ReCalculate()
  end
end }
S_o6530 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6530, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6530, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6530, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2Battle_PatrolArea", "/Scenario_Dynamic/Navigation/Nav2Battle_TriggerArea", "/Scenario_Dynamic/Navigation/Nav2Battle_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o6530, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o6530, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o6535.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o6531.Value ~= True) then
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
o6531 = { [nil] = {}, GetCalculated = function()
  if not (o6095.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6531.SetStateValue(o6531.GetCalculated())
end, StartCalculate = function()
  o6531["Value"] = o6531.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6531.Value == L0) then
    DelayedFunction(4, o6531, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6531.Value == L0) then
    o6531["Value"] = L0
    CallFunction(o6530, "ProcesseStateChange")
  end
end }
o6535 = { [nil] = {}, Start = function()
  o6535["Value"] = False
  o6034.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6535.Value == L0) then
    o6535["Value"] = L0
    o6034.ReCalculate()
  end
end }
S_o6586 = { [nil] = {}, Start = function(L0)

end }
o6588 = FormationLib.CreateFormation("Triangle", "", "", "", 5, 5)
S_o6589 = { [nil] = {}, Start = function(L0)

end }
S_o6590 = { [nil] = {}, Start = function(L0)

end }
S_o6591 = { [nil] = {}, Start = function(L0)

end }
S_o6592 = { [nil] = {}, Start = function(L0)

end }
S_o6593 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Atmo")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o6593, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o6593, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_MoveTo(L0.Node, "/IngameScene/Navigation/LookFrom_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0.5, "MMMN", 0)
  FormationLib.PlaceFormationPath(o6587, o6588, "/IngameScene/Navigation/PlayerPath")
  CallFunction(o6593, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o6587, o6588, "/IngameScene/Navigation/PlayerPath", "pos_2", "pos_3", 0.75, 1, "Code10")
  else
    CallFunction(o6593, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_MoveTo(L0.Node, "/IngameScene/Navigation/LookFrom_2", 7, "MMMN", 0)
  CallFunction(o6593, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o6587, o6588, "/IngameScene/Navigation/PlayerPath", "pos_3", "pos_4", 1, 1, "Code12")
  else
    CallFunction(o6593, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_MoveTo(L0.Node, "/IngameScene/Navigation/LookFrom_3", 5, "MMMN", 0)
  SendRadioMessageTake(o30.Node, o6011.Node, 191)
  CallFunction(o6593, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o6587, o6588, "/IngameScene/Navigation/PlayerPath", "pos_4", "pos_5", 1, 1, "Code15")
  else
    CallFunction(o6593, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Camera_MoveTo(L0.Node, "/IngameScene/Navigation/LookFrom_4", 7.5, "MMMN", 0)
  CallFunction(o6593, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o6587, o6588, "/IngameScene/Navigation/PlayerPath", "pos_5", "pos_6", 1, 1, "Code17")
  else
    CallFunction(o6593, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  Director_EndCutscene(L0.Node)
  CallFunction(o6593, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code19")
  else
    CallFunction(o6593, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  SED_SetTaskTextKey(2100, -1, -1)
  Game_SetWayPoint(GetGameNode(), o6063.Node)
  CallFunction(o6593, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 207)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "pla_harvester_1", S_o30)
  o77 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_building1_1", S_o77)
  o123 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_dolphinhab_des_1", S_o123)
  o170 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant1_1", S_o170)
  o216 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant1_2", S_o216)
  o262 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant1_3", S_o262)
  o308 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_shelter_docking_1", S_o308)
  o354 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_shelter_docking_2", S_o354)
  o400 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_beacon_1", S_o400)
  o446 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_beacon_2", S_o446)
  o492 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock2_1", S_o492)
  o538 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tower_1", S_o538)
  o584 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tower_2", S_o584)
  o630 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml_1", S_o630)
  o676 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml3_1", S_o676)
  o722 = BindEasy(Node_Find("/Scenario_Static/Object"), "west_turret_medium_1/Turm1", S_o722)
  o767 = BindEasy(Node_Find("/Scenario_Static/Object"), "west_turret_medium_2/Turm1", S_o767)
  o812 = BindEasy(Node_Find("/Scenario_Static/Object"), "west_turret_medium_3/Turm1", S_o812)
  o857 = BindEasy(Node_Find("/Scenario_Static/Object"), "south_turret_medium_1/Turm1", S_o857)
  o902 = BindEasy(Node_Find("/Scenario_Static/Object"), "south_turret_medium_2/Turm1", S_o902)
  o947 = BindEasy(Node_Find("/Scenario_Static/Object"), "south_turret_medium_3/Turm1", S_o947)
  o992 = BindEasy(Node_Find("/Scenario_Static/Object"), "east_turret_medium_1/Turm1", S_o992)
  o1037 = BindEasy(Node_Find("/Scenario_Static/Object"), "east_turret_medium_2/Turm1", S_o1037)
  o1082 = BindEasy(Node_Find("/Scenario_Static/Object"), "east_turret_medium_3/Turm1", S_o1082)
  o1127 = BindEasy(Node_Find("/Scenario_Static/Object"), "west_torptower_1/Turm1", S_o1127)
  o1172 = BindEasy(Node_Find("/Scenario_Static/Object"), "west_torptower_2/Turm1", S_o1172)
  o1217 = BindEasy(Node_Find("/Scenario_Static/Object"), "south_torptower_1/Turm1", S_o1217)
  o1262 = BindEasy(Node_Find("/Scenario_Static/Object"), "south_torptower_2/Turm1", S_o1262)
  o1307 = BindEasy(Node_Find("/Scenario_Static/Object"), "east_torptower_1/Turm1", S_o1307)
  o1352 = BindEasy(Node_Find("/Scenario_Static/Object"), "east_torptower_2/Turm1", S_o1352)
  o1397 = BindEasy(Node_Find("/Scenario_Static/Object"), "east_torp_m_1/Turm1", S_o1397)
  o1442 = BindEasy(Node_Find("/Scenario_Static/Object"), "east_torp_m_2/Turm1", S_o1442)
  o1487 = BindEasy(Node_Find("/Scenario_Static/Object"), "east_torp_m_3/Turm1", S_o1487)
  o1532 = BindEasy(Node_Find("/Scenario_Static/Object"), "south_torp_m_1/Turm1", S_o1532)
  o1577 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_1_1", S_o1577)
  o1623 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_1_2", S_o1623)
  o1669 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_1_3", S_o1669)
  o1715 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangway02_1", S_o1715)
  o1761 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangway02_2", S_o1761)
  o1807 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock1_1", S_o1807)
  o1853 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock2_3", S_o1853)
  o1899 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_1", S_o1899)
  o1945 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_2", S_o1945)
  o1991 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_3", S_o1991)
  o2037 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_2", S_o2037)
  o2083 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_3", S_o2083)
  o2129 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_4", S_o2129)
  o2175 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_5", S_o2175)
  o2221 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_6", S_o2221)
  o2267 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_7", S_o2267)
  o2313 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_8", S_o2313)
  o2359 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_9", S_o2359)
  o2405 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_10", S_o2405)
  o2451 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_1", S_o2451)
  o2497 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_2", S_o2497)
  o2543 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_industry2_1", S_o2543)
  o2589 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big03_1", S_o2589)
  o2635 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_1", S_o2635)
  o2681 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_2", S_o2681)
  o2727 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_3", S_o2727)
  o2773 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_1", S_o2773)
  o2819 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_industry1_1", S_o2819)
  o2865 = BindEasy(Node_Find("/Scenario_Static/Object"), "mac_industry3_1", S_o2865)
  o2911 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock3_1", S_o2911)
  o2957 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_1", S_o2957)
  o3003 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_starfound_1", S_o3003)
  o3049 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vehiclestation_1", S_o3049)
  o3095 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock2_2", S_o3095)
  o3141 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_1", S_o3141)
  o3187 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_1/Turm1", S_o3187)
  o3231 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_2/Turm1", S_o3231)
  o3275 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_3/Turm1", S_o3275)
  o3319 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_4/Turm1", S_o3319)
  o3363 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_1", S_o3363)
  o3409 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02", S_o3409)
  o3455 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_05", S_o3455)
  o3501 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_1", S_o3501)
  o3547 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_b", S_o3547)
  o3593 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_1", S_o3593)
  o3639 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_04", S_o3639)
  o3685 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_06", S_o3685)
  o3731 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_07", S_o3731)
  o3777 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_1", S_o3777)
  o3823 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_2", S_o3823)
  o3869 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_1", S_o3869)
  o3915 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_03", S_o3915)
  o3961 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_03_c", S_o3961)
  o4007 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_03_d", S_o4007)
  o4053 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_1", S_o4053)
  o4099 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_b", S_o4099)
  o4145 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02", S_o4145)
  o4191 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_b", S_o4191)
  o4237 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03", S_o4237)
  o4283 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_1", S_o4283)
  o4329 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_l", S_o4329)
  o4375 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_1", S_o4375)
  o4421 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_b", S_o4421)
  o4467 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_c", S_o4467)
  o4513 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_1", S_o4513)
  o4559 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_05", S_o4559)
  o4605 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_05_b", S_o4605)
  o4651 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_02", S_o4651)
  o4697 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_02_b", S_o4697)
  o4743 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_1", S_o4743)
  o4789 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_c", S_o4789)
  o4835 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_b", S_o4835)
  o4881 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_02", S_o4881)
  o4927 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_1", S_o4927)
  o4973 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_b", S_o4973)
  o5019 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_1", S_o5019)
  o5065 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_m_1", S_o5065)
  o5111 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_edgering_1", S_o5111)
  o5157 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_2", S_o5157)
  o5203 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_2c", S_o5203)
  o5249 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_2", S_o5249)
  o5295 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_2", S_o5295)
  o5341 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_3", S_o5341)
  o5387 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_2", S_o5387)
  o5433 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_2", S_o5433)
  o5479 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_2", S_o5479)
  o5525 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_2", S_o5525)
  o5571 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_3", S_o5571)
  o5617 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_3", S_o5617)
  o5663 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_3", S_o5663)
  o5709 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_4", S_o5709)
  o5755 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_4b", S_o5755)
  o5801 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_3", S_o5801)
  o5847 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_3", S_o5847)
  o5893 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_3", S_o5893)
  o5939 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_3", S_o5939)
  o5987 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "ReachingWP1", S_o5987)
  o5992.Start()
  o5993 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "ChangeWP1", S_o5993)
  o5998.Start()
  o5999 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "ChangeWP2", S_o5999)
  o6004.Start()
  o6005 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "ChangeWPFollow", S_o6005)
  o6010.Start()
  o6011 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o6011)
  o6063 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1", S_o6063)
  o6068 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_2", S_o6068)
  o6073 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_follow_1", S_o6073)
  o6078 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mac_swedenborg_1", S_o6078)
  o6085.Start()
  o6093.Start()
  o6095.Start()
  o6136 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "swed_guard_1", S_o6136)
  o6152.Start()
  o6193 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "swed_guard_2", S_o6193)
  o6209.Start()
  o6250 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_1", S_o6250)
  o6255.Start()
  o6306 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_2", S_o6306)
  o6311.Start()
  o6362 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_3", S_o6362)
  o6367.Start()
  o6418 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout1_1", S_o6418)
  o6423.Start()
  o6474 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout1_2", S_o6474)
  o6479.Start()
  o6530 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout1_3", S_o6530)
  o6535.Start()
  o6586 = BindEasy(Node_Find("/"), "Camera", S_o6586)
  o6589 = BindEasy(Node_Find("/IngameScene/Navigation"), "LookFrom_1", S_o6589)
  o6590 = BindEasy(Node_Find("/IngameScene/Navigation"), "LookFrom_2", S_o6590)
  o6591 = BindEasy(Node_Find("/IngameScene/Navigation"), "LookFrom_3", S_o6591)
  o6592 = BindEasy(Node_Find("/IngameScene/Navigation"), "LookFrom_4", S_o6592)
  o6593 = BindEasy(Node_Find("/IngameScene/Director"), "Intro", S_o6593)
  o5985 = { {}, o6078, o6136, o6193 }()
  o6587 = { {}, o6011 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
