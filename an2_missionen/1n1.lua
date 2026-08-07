-- dekompiliert aus 1n1.sco
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
  Terrain_LoadTerrain(node1, "map/1H4/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/1N1/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/1H4/Lmsh/", "map/1H4/Ltex/")
  Game_SetTerrainDepth(node0, 5285)
  Game_SetDecompressionHeight(node0, 200)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.058824, 0.058824, 0.043137)
  Game_SetParallelLightT(node0, 0.117647, 0.117647, 0.082353)
  Game_SetParallelLightB(node0, 0.058824, 0.058824, 0.043137)
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_1n1.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_1N1.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient1.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit2.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_mystery.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_hektik.sam", 3)
  Game_SetNPCHitFactor(node0, 1)
  Game_SetEnvironmentCubeMap(node0, "map/1H4/CubeMap/envcubemap.dds")
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
  node5 = Node_CreateNode("NOD_PatrolArea", "Atacama_DockPatrolArea")
  Node_AddSon(node4, node5)
  PatrolArea_SetPosition(node5, MAT_Vector3(1195.875495, 3321.408853, 175.754393))
  PatrolArea_SetRadius(node5, 150)
  PatrolArea_SetMinZ(node5, -20)
  PatrolArea_SetMaxZ(node5, 20)
  Game_LoadProgress_Advance(node0)
  node6 = Node_CreateNode("NOD_Path", "Atacama_DockApproach_Path")
  Node_AddSon(node4, node6)
  Game_LoadProgress_Advance(node0)
  node7 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node6, node7)
  Position_SetPosition(node7, MAT_Vector3(1356.282964, 3159.782678, 79.934337))
  Position_SetRadius(node7, 5)
  Game_LoadProgress_Advance(node0)
  node8 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node6, node8)
  Position_SetPosition(node8, MAT_Vector3(1270.075, 3184.582, 61.8379))
  Position_SetRadius(node8, 5)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node6, node9)
  Position_SetPosition(node9, MAT_Vector3(1183.867157, 3185.762929, 61.8379))
  Position_SetRadius(node9, 5)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("NOD_Path", "Atacama_DockDock_Path")
  Node_AddSon(node4, node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node10, node11)
  Position_SetPosition(node11, MAT_Vector3(1096.613309, 3188.904873, 62.991993))
  Position_SetRadius(node11, 5)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node10, node12)
  Position_SetPosition(node12, MAT_Vector3(1025.623086, 3188.125071, 62.99199))
  Position_SetRadius(node12, 5)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node2, node13)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node2, node14)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node2, node15)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "tz_atacamagate_1")
  Node_AddSon(node15, node16)
  Body_SetCS(node16, MAT_Vector3(662.302, 3321.001, 168.502), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node16, "osd/tz/tz_atacamagate.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "gen_dock_1")
  Node_AddSon(node15, node17)
  Body_SetCS(node17, MAT_Vector3(974.495, 3274.61, 16.50147), MAT_Vector3(90.11568, 0, 0))
  Node_ParseIniFile(node17, "osd/gen/gen_dock.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "tz_elem01a_1")
  Node_AddSon(node15, node18)
  Body_SetCS(node18, MAT_Vector3(906.2476, 3608.873, 97.89492), MAT_Vector3(179.8824, 0, 0))
  Node_ParseIniFile(node18, "osd/tz/tz_element01a.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "tz_elem01a_2")
  Node_AddSon(node15, node19)
  Body_SetCS(node19, MAT_Vector3(803.7599, 2919.565, 166.8369), MAT_Vector3(-54.68998, 0, 0))
  Node_ParseIniFile(node19, "osd/tz/tz_element01a.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "tz_elem01a_3")
  Node_AddSon(node15, node20)
  Body_SetCS(node20, MAT_Vector3(700.3705, 3445.536, 92.74578), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node20, "osd/tz/tz_element01a.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "tz_elem03a_1")
  Node_AddSon(node15, node21)
  Body_SetCS(node21, MAT_Vector3(730.0732, 3520.541, 85.64412), MAT_Vector3(-89.95915, 0, 0))
  Node_ParseIniFile(node21, "osd/tz/tz_element03a.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "tz_elem03a_3")
  Node_AddSon(node15, node22)
  Body_SetCS(node22, MAT_Vector3(731.7873, 3184.36, 82.46058), MAT_Vector3(-0.278261, 0, 0))
  Node_ParseIniFile(node22, "osd/tz/tz_element03a.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "tz_elem03a_2")
  Node_AddSon(node15, node23)
  Body_SetCS(node23, MAT_Vector3(836.2106, 2807.97, 164.558), MAT_Vector3(-13.51275, 0.096226, -0.448375))
  Node_ParseIniFile(node23, "osd/tz/tz_element03a.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "tz_elem05a_1")
  Node_AddSon(node15, node24)
  Body_SetCS(node24, MAT_Vector3(806.223, 3574.541, 88.94297), MAT_Vector3(179.993, 0, 0))
  Node_ParseIniFile(node24, "osd/tz/tz_element05a.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "tz_elem05a_2")
  Node_AddSon(node15, node25)
  Body_SetCS(node25, MAT_Vector3(1086.591, 3568.893, 42.84075), MAT_Vector3(179.993, 0, 0))
  Node_ParseIniFile(node25, "osd/tz/tz_element05a.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "tz_elem05a_3")
  Node_AddSon(node15, node26)
  Body_SetCS(node26, MAT_Vector3(2206.017, 3592.5, -31.65835), MAT_Vector3(135.499, 0, 0))
  Node_ParseIniFile(node26, "osd/tz/tz_element05a.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "tz_elem06a_1")
  Node_AddSon(node15, node27)
  Body_SetCS(node27, MAT_Vector3(707.7853, 3060.48, 75.79857), MAT_Vector3(-54.3999, 0, 0))
  Node_ParseIniFile(node27, "osd/tz/tz_element06a.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "ent_beacon_1")
  Node_AddSon(node15, node28)
  Body_SetCS(node28, MAT_Vector3(2219.369, 3474.574, 92.58082), MAT_Vector3(-85.373, 0, 0))
  Node_ParseIniFile(node28, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "ent_beacon_2")
  Node_AddSon(node15, node29)
  Body_SetCS(node29, MAT_Vector3(2048.66, 2567.389, 92.58082), MAT_Vector3(-113.4501, 0, 0))
  Node_ParseIniFile(node29, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "tz_elem01_r_1")
  Node_AddSon(node15, node30)
  Body_SetCS(node30, MAT_Vector3(1983.471, 3469.497, 26.64036), MAT_Vector3(105.7679, -5.785886, 1.828459))
  Node_ParseIniFile(node30, "osd/tz/tz_element01_raw.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "tz_elem01_l_1")
  Node_AddSon(node15, node31)
  Body_SetCS(node31, MAT_Vector3(1943.543, 2512.131, 93.51702), MAT_Vector3(74.14434, -13.35011, -14.79427))
  Node_ParseIniFile(node31, "osd/tz/tz_element01_raw.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "tz_elem07_1")
  Node_AddSon(node15, node32)
  Body_SetCS(node32, MAT_Vector3(1570.576, 3563.146, 108.4579), MAT_Vector3(20.66536, 0, 0))
  Node_ParseIniFile(node32, "osd/tz/tz_element07.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_quay_1")
  Node_AddSon(node15, node33)
  Body_SetCS(node33, MAT_Vector3(2192.695, 3384.334, 13.58425), MAT_Vector3(-84.83332, 0, 0))
  Node_ParseIniFile(node33, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "gen_bunker_1")
  Node_AddSon(node15, node34)
  Body_SetCS(node34, MAT_Vector3(1708.11, 2955.732, 89.33217), MAT_Vector3(-129.712, 0, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "gen_mhaus1_1")
  Node_AddSon(node15, node35)
  Body_SetCS(node35, MAT_Vector3(1761.85, 3269.435, 7.157054), MAT_Vector3(141.0515, 0, 0))
  Node_ParseIniFile(node35, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_mhaus2_1")
  Node_AddSon(node15, node36)
  Body_SetCS(node36, MAT_Vector3(1696.997, 3351.468, 91.5734), MAT_Vector3(45.00206, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_turret", "gen_turret_medium_1")
  Node_AddSon(node15, node37)
  Body_SetCS(node37, MAT_Vector3(805.741, 3429.531, 78.10379), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node37, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_turret", "gen_turret_medium_2")
  Node_AddSon(node15, node38)
  Body_SetCS(node38, MAT_Vector3(708.7575, 3372.367, 79.04509), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node38, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_turret", "gen_turret_medium_3")
  Node_AddSon(node15, node39)
  Body_SetCS(node39, MAT_Vector3(747.3468, 3125.194, 76.14194), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_turret", "gen_turret_medium_4")
  Node_AddSon(node15, node40)
  Body_SetCS(node40, MAT_Vector3(713.3165, 3235.296, 79.48325), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_turret", "gen_turret_medium_7")
  Node_AddSon(node15, node41)
  Body_SetCS(node41, MAT_Vector3(2301.942, 3574.422, 95), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_turret", "gen_turret_medium_8")
  Node_AddSon(node15, node42)
  Body_SetCS(node42, MAT_Vector3(1732.24, 3021.22, 77.60071), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_turret", "gen_turret_medium_11")
  Node_AddSon(node15, node43)
  Body_SetCS(node43, MAT_Vector3(2053.048, 2605.708, 95.45529), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node43, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_turret", "gen_turret_medium_12")
  Node_AddSon(node15, node44)
  Body_SetCS(node44, MAT_Vector3(2273.088, 3347.834, 12.34193), MAT_Vector3(6.244772, 0, 0))
  Node_ParseIniFile(node44, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_turret", "gen_turret_medium_13")
  Node_AddSon(node15, node45)
  Body_SetCS(node45, MAT_Vector3(1772.969, 2900.455, 77.15885), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node45, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_turret", "gen_turret_medium_14")
  Node_AddSon(node15, node46)
  Body_SetCS(node46, MAT_Vector3(1085.874, 3384.971, 35.03747), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node46, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_turret", "gen_turret_medium_15")
  Node_AddSon(node15, node47)
  Body_SetCS(node47, MAT_Vector3(898.4327, 2884.788, 152.1461), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node47, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_turret", "gen_turret_medium_16")
  Node_AddSon(node15, node48)
  Body_SetCS(node48, MAT_Vector3(983.7849, 3093.01, 36.11801), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node48, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_turret", "gen_turret_medium_17")
  Node_AddSon(node15, node49)
  Body_SetCS(node49, MAT_Vector3(966.5129, 3050.222, 35.57774), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node49, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_turret", "gen_torptower_1")
  Node_AddSon(node15, node50)
  Body_SetCS(node50, MAT_Vector3(823.3205, 3486.394, 81.3955), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node50, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_turret", "gen_torptower_2")
  Node_AddSon(node15, node51)
  Body_SetCS(node51, MAT_Vector3(874.3844, 2872.865, 154.05), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_turret", "gen_torptower_3")
  Node_AddSon(node15, node52)
  Body_SetCS(node52, MAT_Vector3(939.151, 3084.632, 37.63743), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node52, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_turret", "gen_torptower_4")
  Node_AddSon(node15, node53)
  Body_SetCS(node53, MAT_Vector3(1056.347, 3396.748, 36.68413), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node53, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_turret", "gen_torptower_5")
  Node_AddSon(node15, node54)
  Body_SetCS(node54, MAT_Vector3(1979.016, 2643.022, 95.25739), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node54, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "tz_element06a_1")
  Node_AddSon(node15, node55)
  Body_SetCS(node55, MAT_Vector3(1695.975, 2688.837, 19.40167), MAT_Vector3(49.29578, 0, 0))
  Node_ParseIniFile(node55, "osd/tz/tz_element06a.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "tz_geb_addon01_1")
  Node_AddSon(node15, node56)
  Body_SetCS(node56, MAT_Vector3(1625.167, 3541.354, 284.9592), MAT_Vector3(20.66536, 0, 0))
  Node_ParseIniFile(node56, "osd/tz/tz_geb_addon01.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "tz_geb_add_china_big_1")
  Node_AddSon(node15, node57)
  Body_SetCS(node57, MAT_Vector3(765.2612, 3184.053, 305.4655), MAT_Vector3(-0.020447, 0, 0))
  Node_ParseIniFile(node57, "osd/tz/tz_geb_add_china_big.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "gen_turbine2_1")
  Node_AddSon(node15, node58)
  Body_SetCS(node58, MAT_Vector3(1301.541, 3059.284, 56.3762), MAT_Vector3(-97.74649, 0, 0))
  Node_ParseIniFile(node58, "osd/gen/gen_turbine2.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "gen_turbine2_2")
  Node_AddSon(node15, node59)
  Body_SetCS(node59, MAT_Vector3(1332.725, 3299.415, 57.65967), MAT_Vector3(-96.05635, 0, 0))
  Node_ParseIniFile(node59, "osd/gen/gen_turbine2.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "gen_turbine2_3")
  Node_AddSon(node15, node60)
  Body_SetCS(node60, MAT_Vector3(1297.569, 3360.47, 57.23188), MAT_Vector3(-92.95775, 0, 0))
  Node_ParseIniFile(node60, "osd/gen/gen_turbine2.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "gen_turbine2_4")
  Node_AddSon(node15, node61)
  Body_SetCS(node61, MAT_Vector3(1251.565, 3040.108, 56.35574), MAT_Vector3(-93.80282, 0, 0))
  Node_ParseIniFile(node61, "osd/gen/gen_turbine2.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "atl_brainfire_1")
  Node_AddSon(node15, node62)
  Body_SetCS(node62, MAT_Vector3(2658.396, 1768.388, 448.1572), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node62, "osd/atl/atl_brainfire.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "gen_metalblock3_1")
  Node_AddSon(node15, node63)
  Body_SetCS(node63, MAT_Vector3(2732.892, 348.4681, 108.4942), MAT_Vector3(54.13549, 0, 0))
  Node_ParseIniFile(node63, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "gen_tank_sml_1")
  Node_AddSon(node15, node64)
  Body_SetCS(node64, MAT_Vector3(2808.824, 311.275, 101.6901), MAT_Vector3(-22.75852, 6.116278, -5.827175))
  Node_ParseIniFile(node64, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "gen_vehiclestation_1")
  Node_AddSon(node15, node65)
  Body_SetCS(node65, MAT_Vector3(2787.772, 372.4698, 114.5625), MAT_Vector3(-125.9208, 0, 0))
  Node_ParseIniFile(node65, "osd/gen/gen_vehiclestation.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "tz_element03_raw_1")
  Node_AddSon(node15, node66)
  Body_SetCS(node66, MAT_Vector3(2934.588, 190.0249, 75.61294), MAT_Vector3(-151.7342, 4.764047, -7.499194))
  Node_ParseIniFile(node66, "osd/tz/tz_element03_raw.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "tz_element05_raw_1")
  Node_AddSon(node15, node67)
  Body_SetCS(node67, MAT_Vector3(2754.33, 91.67653, 84.223), MAT_Vector3(65.2254, -18.59019, -2.211051))
  Node_ParseIniFile(node67, "osd/tz/tz_element05_raw.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "gen_elfnote_1")
  Node_AddSon(node15, node68)
  Body_SetCS(node68, MAT_Vector3(2657.726, 3657.059, 28.62116), MAT_Vector3(22.36798, 0, 0))
  Node_ParseIniFile(node68, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "gen_elfnote_2")
  Node_AddSon(node15, node69)
  Body_SetCS(node69, MAT_Vector3(2654.341, 2406.182, 49.61515), MAT_Vector3(-66.0056, 0, 0))
  Node_ParseIniFile(node69, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "gen_elfnote_3")
  Node_AddSon(node15, node70)
  Body_SetCS(node70, MAT_Vector3(2716.969, 1097.755, 99.16632), MAT_Vector3(-112.2665, -6.244007, -5.962167))
  Node_ParseIniFile(node70, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "gen_rohr_small01_1")
  Node_AddSon(node15, node71)
  Body_SetCS(node71, MAT_Vector3(2613.991, 3615.277, 14.89581), MAT_Vector3(130.5675, 0, 0))
  Node_ParseIniFile(node71, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "gen_rohr_small01_2")
  Node_AddSon(node15, node72)
  Body_SetCS(node72, MAT_Vector3(2657.327, 3598.099, 11.03795), MAT_Vector3(179.9746, -2.910415, 1.066977))
  Node_ParseIniFile(node72, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "gen_rohr_small01_3")
  Node_AddSon(node15, node73)
  Body_SetCS(node73, MAT_Vector3(2665.899, 3716.657, 17.03296), MAT_Vector3(0.424982, -2.910415, 1.066977))
  Node_ParseIniFile(node73, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "gen_rohr_small01_4")
  Node_AddSon(node15, node74)
  Body_SetCS(node74, MAT_Vector3(2654.09, 2466.921, 27.36098), MAT_Vector3(1.183577, -8.97421, -2.466826))
  Node_ParseIniFile(node74, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "gen_rohr_small01_5")
  Node_AddSon(node15, node75)
  Body_SetCS(node75, MAT_Vector3(2609.495, 2447.958, 27.73654), MAT_Vector3(49.74957, -8.97421, -2.466826))
  Node_ParseIniFile(node75, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "gen_rohr_small01_6")
  Node_AddSon(node15, node76)
  Body_SetCS(node76, MAT_Vector3(2658.241, 2344.89, 27.73654), MAT_Vector3(-179.8876, -8.97421, -2.466826))
  Node_ParseIniFile(node76, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "gen_rohr_small01_7")
  Node_AddSon(node15, node77)
  Body_SetCS(node77, MAT_Vector3(2720.431, 1155.846, 74.68208), MAT_Vector3(-0.475307, -16.13579, -4.208117))
  Node_ParseIniFile(node77, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "gen_rohr_small01_8")
  Node_AddSon(node15, node78)
  Body_SetCS(node78, MAT_Vector3(2759.736, 1061.296, 92.89695), MAT_Vector3(-128.0034, -6.022999, -0.541898))
  Node_ParseIniFile(node78, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("NOD_Directory", "TerrainObjects")
  Node_AddSon(node15, node79)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "ter_bridgering_m_1")
  Node_AddSon(node79, node80)
  Body_SetCS(node80, MAT_Vector3(2273.649, 758.299, 193.9374), MAT_Vector3(35.35793, 1.266429, -2.371336))
  Node_ParseIniFile(node80, "osd/ter/ter_bridgering_m.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_generic", "ter_bridgering_l_1")
  Node_AddSon(node79, node81)
  Body_SetCS(node81, MAT_Vector3(2569.493, 863.7842, 101.3112), MAT_Vector3(-62.12647, 0, 0))
  Node_ParseIniFile(node81, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_generic", "ter_bridgering_l_2")
  Node_AddSon(node79, node82)
  Body_SetCS(node82, MAT_Vector3(2137.066, 539.9722, 136.4487), MAT_Vector3(-88.79513, 0, 0))
  Node_ParseIniFile(node82, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_generic", "ter_bridgering_l_3")
  Node_AddSon(node79, node83)
  Body_SetCS(node83, MAT_Vector3(1078.905, 971.5255, 140.3415), MAT_Vector3(-156.655, 0, 0))
  Node_ParseIniFile(node83, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_generic", "ter_bridgering_l_4")
  Node_AddSon(node79, node84)
  Body_SetCS(node84, MAT_Vector3(706.3185, 1000.595, 147.7561), MAT_Vector3(-60.16921, 0, 0))
  Node_ParseIniFile(node84, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_generic", "ter_bridgering_l_5")
  Node_AddSon(node79, node85)
  Body_SetCS(node85, MAT_Vector3(866.4437, 1971.051, 109.0714), MAT_Vector3(28.30729, 0, 0))
  Node_ParseIniFile(node85, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "ter_megalith_l_03_1")
  Node_AddSon(node79, node86)
  Body_SetCS(node86, MAT_Vector3(1891.777, 621.9339, 74.43238), MAT_Vector3(10.70726, -9.913386, -3.672873))
  Node_ParseIniFile(node86, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "ter_edgering_1")
  Node_AddSon(node79, node87)
  Body_SetCS(node87, MAT_Vector3(1378.651, 1349.98, 99.62728), MAT_Vector3(80.28802, 0, 0))
  Node_ParseIniFile(node87, "osd/ter/ter_edgering.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "ter_rock_l_01_1")
  Node_AddSon(node79, node88)
  Body_SetCS(node88, MAT_Vector3(1402.996, 3065.465, 22.42007), MAT_Vector3(39.6271, -73.33568, 35.55392))
  Node_ParseIniFile(node88, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "ter_rock_l_01_2")
  Node_AddSon(node79, node89)
  Body_SetCS(node89, MAT_Vector3(2593.053, 2653.826, 6.4488), MAT_Vector3(-147.9993, -21.71285, -26.75201))
  Node_ParseIniFile(node89, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_generic", "ter_rock_s_01_1")
  Node_AddSon(node79, node90)
  Body_SetCS(node90, MAT_Vector3(1831.658, 3198.311, 11.31726), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node90, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node90, 0)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_generic", "ter_rock_m_01_1")
  Node_AddSon(node79, node91)
  Body_SetCS(node91, MAT_Vector3(1868.591, 2896.868, 2.090673), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node91, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node91, 0)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_generic", "ter_rock_m_01_2")
  Node_AddSon(node79, node92)
  Body_SetCS(node92, MAT_Vector3(2762.759, 2690.098, 41.02655), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node92, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node92, 0)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "ter_rock_m_01_3")
  Node_AddSon(node79, node93)
  Body_SetCS(node93, MAT_Vector3(2699.039, 2701.34, 20.14388), MAT_Vector3(-110.7857, 65.64774, 15.69881))
  Node_ParseIniFile(node93, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node93, 0)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1")
  Node_AddSon(node79, node94)
  Body_SetCS(node94, MAT_Vector3(1892.765, 2923.687, 5.152919), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node94, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node94, 0)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_generic", "ter_megalith_s_02_1")
  Node_AddSon(node79, node95)
  Body_SetCS(node95, MAT_Vector3(2365.573, 2775.47, 13.47743), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node95, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node95, 0)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1")
  Node_AddSon(node79, node96)
  Body_SetCS(node96, MAT_Vector3(1600.809, 3194.901, 21.81238), MAT_Vector3(25.62272, 7.194079, -19.92303))
  Node_ParseIniFile(node96, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node96, 0)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_generic", "ter_megalith_m_01_1")
  Node_AddSon(node79, node97)
  Body_SetCS(node97, MAT_Vector3(2258.851, 2860.488, 12.49127), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node97, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node97, 0)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_generic", "ter_megalith_m_01_3")
  Node_AddSon(node79, node98)
  Body_SetCS(node98, MAT_Vector3(2258.851, 2860.488, 12.49127), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node98, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node98, 0)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_generic", "ter_megalith_s_03_3")
  Node_AddSon(node79, node99)
  Body_SetCS(node99, MAT_Vector3(2081.855, 3083.8, 21.81238), MAT_Vector3(25.62272, 7.194079, -19.92303))
  Node_ParseIniFile(node99, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node99, 0)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_generic", "ter_megalith_m_01_4")
  Node_AddSon(node79, node100)
  Body_SetCS(node100, MAT_Vector3(2738.164, 2112.137, 34.04518), MAT_Vector3(22.50918, 19.78855, 2.214895))
  Node_ParseIniFile(node100, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node100, 0)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_generic", "ter_megalith_s_03_2")
  Node_AddSon(node79, node101)
  Body_SetCS(node101, MAT_Vector3(2719.946, 2082.905, 63.69159), MAT_Vector3(41.60759, 3.855879, -5.538739))
  Node_ParseIniFile(node101, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node101, 0)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_generic", "ter_megalith_m_01_2")
  Node_AddSon(node79, node102)
  Body_SetCS(node102, MAT_Vector3(2651.653, 2286.819, 31.46406), MAT_Vector3(-12.13577, -1.890307, -20.82948))
  Node_ParseIniFile(node102, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node102, 0)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_generic", "ter_megalith_m_01_2x")
  Node_AddSon(node79, node103)
  Body_SetCS(node103, MAT_Vector3(2539.964, 3291.201, 7.794404), MAT_Vector3(-12.13577, -1.890307, -20.82948))
  Node_ParseIniFile(node103, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node103, 0)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_generic", "ter_megalith_l_03_2")
  Node_AddSon(node79, node104)
  Body_SetCS(node104, MAT_Vector3(2931.462, 3149.625, 86.96011), MAT_Vector3(-19.29982, 14.428, -9.642937))
  Node_ParseIniFile(node104, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node104, 0)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_generic", "ter_rock_m_01_4")
  Node_AddSon(node79, node105)
  Body_SetCS(node105, MAT_Vector3(2461.959, 1713.583, 69.13504), MAT_Vector3(35.11385, 9.220537, 29.43788))
  Node_ParseIniFile(node105, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node105, 0)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_generic", "ter_rock_m_01_5")
  Node_AddSon(node79, node106)
  Body_SetCS(node106, MAT_Vector3(2624.323, 957.0022, 100.752), MAT_Vector3(-2.348301, 24.27024, 2.255122))
  Node_ParseIniFile(node106, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node106, 0)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_generic", "ter_megalith_m_01_5")
  Node_AddSon(node79, node107)
  Body_SetCS(node107, MAT_Vector3(2182.594, 1199.711, 129.6518), MAT_Vector3(-2.067273, 4.382826, -16.35735))
  Node_ParseIniFile(node107, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node107, 0)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_generic", "ter_megalith_m_1")
  Node_AddSon(node79, node108)
  Body_SetCS(node108, MAT_Vector3(2960.474, 679.299, 162.9981), MAT_Vector3(-8.566683, 2.636106, -31.34021))
  Node_ParseIniFile(node108, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node108, 0)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_generic", "ter_megalith_m_2")
  Node_AddSon(node79, node109)
  Body_SetCS(node109, MAT_Vector3(2720.733, 1509.666, 85.46032), MAT_Vector3(10.58948, -8.397294, -6.130621))
  Node_ParseIniFile(node109, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node109, 0)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_generic", "ter_megalith_angelina")
  Node_AddSon(node79, node110)
  Body_SetCS(node110, MAT_Vector3(2727.295, 663.2482, 96.23999), MAT_Vector3(-54.26494, -6.885732, 25.3968))
  Node_ParseIniFile(node110, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node110, 0)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_generic", "ter_rock_m_1")
  Node_AddSon(node79, node111)
  Body_SetCS(node111, MAT_Vector3(2856.341, 1078.089, 93.39846), MAT_Vector3(-128.0041, 76.56917, 50.74074))
  Node_ParseIniFile(node111, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node111, 0)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_generic", "ter_rock_s_1")
  Node_AddSon(node79, node112)
  Body_SetCS(node112, MAT_Vector3(2923.884, 1030.526, 108.6315), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node112, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node112, 0)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_generic", "ter_rock_s_01_2")
  Node_AddSon(node79, node113)
  Body_SetCS(node113, MAT_Vector3(2832.175, 475.2719, 118.048), MAT_Vector3(96.89589, 23.58112, -58.96191))
  Node_ParseIniFile(node113, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node113, 0)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_generic", "ter_rock_l_01_3")
  Node_AddSon(node79, node114)
  Body_SetCS(node114, MAT_Vector3(2848.357, 232.037, 104.5225), MAT_Vector3(-42.04196, -6.925412, -43.10492))
  Node_ParseIniFile(node114, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node114, 0)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_generic", "ter_rock_m_01_6")
  Node_AddSon(node79, node115)
  Body_SetCS(node115, MAT_Vector3(2941.058, 222.7618, 120.9239), MAT_Vector3(-24.65695, 10.3655, -29.86423))
  Node_ParseIniFile(node115, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node115, 0)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_generic", "ter_megalith_s_03_4")
  Node_AddSon(node79, node116)
  Body_SetCS(node116, MAT_Vector3(2899.557, 331.5506, 120.0504), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node116, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node116, 0)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_generic", "ter_megalith_m_01_6")
  Node_AddSon(node79, node117)
  Body_SetCS(node117, MAT_Vector3(3012.512, 314.7589, 143.6056), MAT_Vector3(-35.82727, 29.52656, -19.76802))
  Node_ParseIniFile(node117, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node117, 0)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_generic", "ter_megalith_s_01_2")
  Node_AddSon(node79, node118)
  Body_SetCS(node118, MAT_Vector3(2926.188, 344.0346, 113.116), MAT_Vector3(-16.1094, -7.830995, -11.2127))
  Node_ParseIniFile(node118, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node118, 0)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_generic", "ter_megalith_s_01_3")
  Node_AddSon(node79, node119)
  Body_SetCS(node119, MAT_Vector3(2867.414, 1778.759, 133.2801), MAT_Vector3(-62.87591, 11.82878, -25.37218))
  Node_ParseIniFile(node119, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node119, 0)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_generic", "ter_megalith_s_02_2")
  Node_AddSon(node79, node120)
  Body_SetCS(node120, MAT_Vector3(2912.529, 311.507, 119.9519), MAT_Vector3(10.09239, 6.959475, 6.270563))
  Node_ParseIniFile(node120, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node120, 0)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_generic", "ter_rock_m_01_7")
  Node_AddSon(node79, node121)
  Body_SetCS(node121, MAT_Vector3(1240.497, 3117.853, 21.01119), MAT_Vector3(-51.8176, 51.69984, -22.72664))
  Node_ParseIniFile(node121, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node121, 0)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_generic", "ter_rock_s_01_3")
  Node_AddSon(node79, node122)
  Body_SetCS(node122, MAT_Vector3(1279.851, 3203.677, 14.24233), MAT_Vector3(-44.85842, -29.74352, 3.39679))
  Node_ParseIniFile(node122, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node122, 0)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_generic", "ter_megalith_s_01_4")
  Node_AddSon(node79, node123)
  Body_SetCS(node123, MAT_Vector3(1335.819, 3232.746, 38.80337), MAT_Vector3(-70.09051, 4.872047, -0.094221))
  Node_ParseIniFile(node123, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node123, 0)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_generic", "ter_megalith_s_02_3")
  Node_AddSon(node79, node124)
  Body_SetCS(node124, MAT_Vector3(1269.008, 3092.424, 42.90711), MAT_Vector3(-89.90071, 20.43874, -6.131959))
  Node_ParseIniFile(node124, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node124, 0)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_generic", "ter_megalith_s_02_4")
  Node_AddSon(node79, node125)
  Body_SetCS(node125, MAT_Vector3(1022.019, 2653.343, 47.12357), MAT_Vector3(33.00978, 20.43874, -6.131959))
  Node_ParseIniFile(node125, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node125, 0)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_generic", "ter_megalith_m_01_7")
  Node_AddSon(node79, node126)
  Body_SetCS(node126, MAT_Vector3(1163.392, 3059.257, 20.11793), MAT_Vector3(-16.89159, 16.6162, -5.558195))
  Node_ParseIniFile(node126, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node126, 0)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, -1, 0)
  Body_SetCargoKey(node126, -1, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_generic", "ter_megalith_m_01_8")
  Node_AddSon(node79, node127)
  Body_SetCS(node127, MAT_Vector3(925.4529, 2597.603, 24.64909), MAT_Vector3(-13.51623, 5.476162, 6.401307))
  Node_ParseIniFile(node127, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node127, 0)
  Body_SetNameKey(node127, -1)
  Body_SetCargoKey(node127, -1, 0)
  Body_SetCargoKey(node127, -1, 1)
  Body_SetCargoKey(node127, -1, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_generic", "ter_megalith_m_02_1")
  Node_AddSon(node79, node128)
  Body_SetCS(node128, MAT_Vector3(1014.832, 2541.336, 34.49943), MAT_Vector3(12.9848, -5.787932, -6.540406))
  Node_ParseIniFile(node128, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node128, 0)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, -1, 0)
  Body_SetCargoKey(node128, -1, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_fx_sky", "fx_sky_1H4_1")
  Node_AddSon(node15, node129)
  Node_ParseIniFile(node129, "osd/fx_sky/fx_sky_1H4.osd")
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_fx_flare", "fx_flare_1H4_1")
  Node_AddSon(node15, node130)
  Node_ParseIniFile(node130, "osd/fx_flare/fx_flare_1H4.osd")
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_fx_plant", "org_grass_l_1")
  Node_AddSon(node15, node131)
  Node_ParseIniFile(node131, "osd/fx_plant/org_grass_l.osd")
  FX_Plant_SetMap(node131, "map/1H4/Terrain/org_grass_l.tga")
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_fx_plankton", "fx_plankton_tz_d_1")
  Node_AddSon(node15, node132)
  Node_ParseIniFile(node132, "osd/fx_plankton/fx_plankton_tz_d.osd")
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node15, node133)
  Node_ParseIniFile(node133, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node133, "map/1H4/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node15, node134)
  Node_ParseIniFile(node134, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node134, "map/1H4/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node15, node135)
  Node_ParseIniFile(node135, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node135, "map/1H4/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_fx_plant", "org_seetang_1")
  Node_AddSon(node15, node136)
  Node_ParseIniFile(node136, "osd/fx_plant/org_seetang.osd")
  FX_Plant_SetMap(node136, "map/1H4/Terrain/org_seetang.tga")
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node137)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node137, node138)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node137, node139)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("NOD_PatrolArea", "Brainfire_TankPatrolArea")
  Node_AddSon(node139, node140)
  PatrolArea_SetPosition(node140, MAT_Vector3(2652.136172, 1762.680945, 114.298962))
  PatrolArea_SetRadius(node140, 256)
  PatrolArea_SetMinZ(node140, -50)
  PatrolArea_SetMaxZ(node140, 50)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_PatrolArea", "OverallArea")
  Node_AddSon(node139, node141)
  PatrolArea_SetPosition(node141, MAT_Vector3(2000, 2000, 100))
  PatrolArea_SetRadius(node141, 2500)
  PatrolArea_SetMinZ(node141, -100)
  PatrolArea_SetMaxZ(node141, 99)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Path", "AvengerPath_1")
  Node_AddSon(node139, node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node142, node143)
  Position_SetPosition(node143, MAT_Vector3(2776.685447, 1573.732661, 150))
  Position_SetRadius(node143, 5)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node142, node144)
  Position_SetPosition(node144, MAT_Vector3(2776.588414, 1191.499703, 150))
  Position_SetRadius(node144, 5)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node142, node145)
  Position_SetPosition(node145, MAT_Vector3(2794.345841, 1049.843466, 150))
  Position_SetRadius(node145, 5)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node142, node146)
  Position_SetPosition(node146, MAT_Vector3(2810.823977, 836.4516, 150))
  Position_SetRadius(node146, 5)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node142, node147)
  Position_SetPosition(node147, MAT_Vector3(2898.053632, 681.020939, 160))
  Position_SetRadius(node147, 5)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node142, node148)
  Position_SetPosition(node148, MAT_Vector3(2898.158441, 423.674327, 160))
  Position_SetRadius(node148, 5)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node142, node149)
  Position_SetPosition(node149, MAT_Vector3(2846.25187, 220.993223, 160))
  Position_SetRadius(node149, 5)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node142, node150)
  Position_SetPosition(node150, MAT_Vector3(2846.252, 7.601334, 160))
  Position_SetRadius(node150, 5)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Path", "Intrepido1Path_1")
  Node_AddSon(node139, node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node151, node152)
  Position_SetPosition(node152, MAT_Vector3(2776.685, 1529.618765, 160))
  Position_SetRadius(node152, 5)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node151, node153)
  Position_SetPosition(node153, MAT_Vector3(2776.588, 1191.5, 160))
  Position_SetRadius(node153, 5)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node151, node154)
  Position_SetPosition(node154, MAT_Vector3(2794.346, 1049.843, 160))
  Position_SetRadius(node154, 5)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node151, node155)
  Position_SetPosition(node155, MAT_Vector3(2810.824, 836.4516, 160))
  Position_SetRadius(node155, 5)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node151, node156)
  Position_SetPosition(node156, MAT_Vector3(2898.054, 681.0209, 170))
  Position_SetRadius(node156, 5)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node151, node157)
  Position_SetPosition(node157, MAT_Vector3(2898.158, 423.6743, 170))
  Position_SetRadius(node157, 5)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node151, node158)
  Position_SetPosition(node158, MAT_Vector3(2846.252, 220.9932, 170))
  Position_SetRadius(node158, 5)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node151, node159)
  Position_SetPosition(node159, MAT_Vector3(2846.252, 7.601334, 170))
  Position_SetRadius(node159, 5)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Path", "Intrepido1Path_2")
  Node_AddSon(node139, node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node160, node161)
  Position_SetPosition(node161, MAT_Vector3(2755.830998, 1592.582045, 160))
  Position_SetRadius(node161, 5)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node160, node162)
  Position_SetPosition(node162, MAT_Vector3(2754.931921, 1191.5, 160))
  Position_SetRadius(node162, 5)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node160, node163)
  Position_SetPosition(node163, MAT_Vector3(2767.47642, 1049.441961, 160))
  Position_SetRadius(node163, 5)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node160, node164)
  Position_SetPosition(node164, MAT_Vector3(2781.548189, 836.050561, 160))
  Position_SetRadius(node164, 5)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node160, node165)
  Position_SetPosition(node165, MAT_Vector3(2870.783382, 677.411553, 170))
  Position_SetRadius(node165, 5)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node160, node166)
  Position_SetPosition(node166, MAT_Vector3(2871.689459, 423.273261, 170))
  Position_SetRadius(node166, 5)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node160, node167)
  Position_SetPosition(node167, MAT_Vector3(2819.783459, 221.394239, 170))
  Position_SetRadius(node167, 5)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node160, node168)
  Position_SetPosition(node168, MAT_Vector3(2820.986574, 7.200295, 170))
  Position_SetRadius(node168, 5)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Path", "Intrepido1Path_3")
  Node_AddSon(node139, node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node169, node170)
  Position_SetPosition(node170, MAT_Vector3(2796.736925, 1592.983083, 160))
  Position_SetRadius(node170, 5)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node169, node171)
  Position_SetPosition(node171, MAT_Vector3(2798.244079, 1192.302077, 160))
  Position_SetRadius(node171, 5)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node169, node172)
  Position_SetPosition(node172, MAT_Vector3(2820.413503, 1051.447154, 160))
  Position_SetRadius(node172, 5)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node169, node173)
  Position_SetPosition(node173, MAT_Vector3(2840.500849, 839.25887, 160))
  Position_SetRadius(node173, 5)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node169, node174)
  Position_SetPosition(node174, MAT_Vector3(2925.725657, 681.421939, 170))
  Position_SetRadius(node174, 5)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node169, node175)
  Position_SetPosition(node175, MAT_Vector3(2924.225503, 423.273261, 170))
  Position_SetRadius(node175, 5)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node169, node176)
  Position_SetPosition(node176, MAT_Vector3(2875.928849, 220.9932, 170))
  Position_SetRadius(node176, 5)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node169, node177)
  Position_SetPosition(node177, MAT_Vector3(2873.923657, 7.601334, 170))
  Position_SetRadius(node177, 5)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_Path", "AvengerPath_2")
  Node_AddSon(node139, node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node178, node179)
  Position_SetPosition(node179, MAT_Vector3(2798.543, 1016.411, 180.1893))
  Position_SetRadius(node179, 5)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node178, node180)
  Position_SetPosition(node180, MAT_Vector3(2614.043, 892.8465, 123.932225))
  Position_SetRadius(node180, 5)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node178, node181)
  Position_SetPosition(node181, MAT_Vector3(2522.64, 794.6721, 116.258231))
  Position_SetRadius(node181, 5)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("NOD_Path", "AvengerPath_3")
  Node_AddSon(node139, node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node182, node183)
  Position_SetPosition(node183, MAT_Vector3(2496.952105, 751.528408, 108.534516))
  Position_SetRadius(node183, 5)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node182, node184)
  Position_SetPosition(node184, MAT_Vector3(2400.115908, 686.5773, 180.011115))
  Position_SetRadius(node184, 5)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node182, node185)
  Position_SetPosition(node185, MAT_Vector3(2297.375064, 614.540617, 160))
  Position_SetRadius(node185, 5)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node182, node186)
  Position_SetPosition(node186, MAT_Vector3(2179.28214, 554.313225, 123.301791))
  Position_SetRadius(node186, 5)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node182, node187)
  Position_SetPosition(node187, MAT_Vector3(2001.899304, 526.440808, 126.696295))
  Position_SetRadius(node187, 5)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node182, node188)
  Position_SetPosition(node188, MAT_Vector3(1982.649581, 583.789369, 150))
  Position_SetRadius(node188, 5)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_Path", "AvengerPath_Canyon1")
  Node_AddSon(node139, node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node189, node190)
  Position_SetPosition(node190, MAT_Vector3(1961.523564, 651.193795, 121.026604))
  Position_SetRadius(node190, 5)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node189, node191)
  Position_SetPosition(node191, MAT_Vector3(1918.296778, 734.995399, 132.611451))
  Position_SetRadius(node191, 5)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node189, node192)
  Position_SetPosition(node192, MAT_Vector3(1807.569813, 830.543373, 115.712318))
  Position_SetRadius(node192, 5)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node189, node193)
  Position_SetPosition(node193, MAT_Vector3(1715.176949, 893.239917, 116.958827))
  Position_SetRadius(node193, 5)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node189, node194)
  Position_SetPosition(node194, MAT_Vector3(1615.978893, 1021.961204, 113.602036))
  Position_SetRadius(node194, 5)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node189, node195)
  Position_SetPosition(node195, MAT_Vector3(1555.751501, 1167.572523, 117.317211))
  Position_SetRadius(node195, 5)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node189, node196)
  Position_SetPosition(node196, MAT_Vector3(1480.17203, 1255.785194, 117.82209))
  Position_SetRadius(node196, 5)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node189, node197)
  Position_SetPosition(node197, MAT_Vector3(1327.832158, 1312.469797, 116.194314))
  Position_SetRadius(node197, 5)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node189, node198)
  Position_SetPosition(node198, MAT_Vector3(1239.262465, 1336.088382, 147.688003))
  Position_SetRadius(node198, 5)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node189, node199)
  Position_SetPosition(node199, MAT_Vector3(1119.988612, 1260.508911, 136.88448))
  Position_SetRadius(node199, 5)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node189, node200)
  Position_SetPosition(node200, MAT_Vector3(992.448254, 1164.853642, 122.131456))
  Position_SetRadius(node200, 5)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node189, node201)
  Position_SetPosition(node201, MAT_Vector3(889.19598, 1108.996188, 122.1315))
  Position_SetRadius(node201, 5)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node189, node202)
  Position_SetPosition(node202, MAT_Vector3(769.01707, 1056.52351, 122.1315))
  Position_SetRadius(node202, 5)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node189, node203)
  Position_SetPosition(node203, MAT_Vector3(636.989544, 990.510222, 150))
  Position_SetRadius(node203, 5)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("NOD_Path", "AvengerPath_Canyon2")
  Node_AddSon(node139, node204)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node204, node205)
  Position_SetPosition(node205, MAT_Vector3(602.317233, 979.57003, 150))
  Position_SetRadius(node205, 5)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node204, node206)
  Position_SetPosition(node206, MAT_Vector3(534.610761, 979.57, 150))
  Position_SetRadius(node206, 5)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node204, node207)
  Position_SetPosition(node207, MAT_Vector3(522.762173, 1059.125066, 150))
  Position_SetRadius(node207, 5)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("NOD_Path", "AvengerPath_Canyon3")
  Node_AddSon(node139, node208)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node208, node209)
  Position_SetPosition(node209, MAT_Vector3(527.840117, 1148.836098, 130))
  Position_SetRadius(node209, 5)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node208, node210)
  Position_SetPosition(node210, MAT_Vector3(617.551188, 1230.083825, 150))
  Position_SetRadius(node210, 5)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node208, node211)
  Position_SetPosition(node211, MAT_Vector3(686.950315, 1333.336079, 150))
  Position_SetRadius(node211, 5)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("NOD_Path", "AvengerPath_Canyon4")
  Node_AddSon(node139, node212)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node212, node213)
  Position_SetPosition(node213, MAT_Vector3(725.432967, 1379.574233, 97.656301))
  Position_SetRadius(node213, 5)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node212, node214)
  Position_SetPosition(node214, MAT_Vector3(803.854608, 1431.84168, 69.077531))
  Position_SetRadius(node214, 5)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node212, node215)
  Position_SetPosition(node215, MAT_Vector3(862.081974, 1485.216765, 69.280381))
  Position_SetRadius(node215, 5)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node212, node216)
  Position_SetPosition(node216, MAT_Vector3(934.86618, 1565.279392, 59.367435))
  Position_SetRadius(node216, 5)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node212, node217)
  Position_SetPosition(node217, MAT_Vector3(988.241265, 1645.342019, 39.853104))
  Position_SetRadius(node217, 5)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node212, node218)
  Position_SetPosition(node218, MAT_Vector3(1029.485648, 1732.683066, 65.905684))
  Position_SetRadius(node218, 5)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node212, node219)
  Position_SetPosition(node219, MAT_Vector3(1019.781087, 1807.893413, 59.7299))
  Position_SetRadius(node219, 5)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node212, node220)
  Position_SetPosition(node220, MAT_Vector3(966.406003, 1873.399199, 67.75331))
  Position_SetRadius(node220, 5)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node212, node221)
  Position_SetPosition(node221, MAT_Vector3(891.195656, 1951.035685, 60.145167))
  Position_SetRadius(node221, 5)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node212, node222)
  Position_SetPosition(node222, MAT_Vector3(808.677313, 2051.096353, 61.778378))
  Position_SetRadius(node222, 5)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node212, node223)
  Position_SetPosition(node223, MAT_Vector3(794.150048, 2108.734799, 79.42201))
  Position_SetRadius(node223, 5)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("NOD_Path", "AvengerPath_Canyon5")
  Node_AddSon(node139, node224)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node224, node225)
  Position_SetPosition(node225, MAT_Vector3(794.150048, 2157.257603, 99.193282))
  Position_SetRadius(node225, 5)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node224, node226)
  Position_SetPosition(node226, MAT_Vector3(874.212675, 2205.780408, 88.499886))
  Position_SetRadius(node226, 5)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node224, node227)
  Position_SetPosition(node227, MAT_Vector3(939.71846, 2297.973736, 72.701763))
  Position_SetRadius(node227, 5)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node224, node228)
  Position_SetPosition(node228, MAT_Vector3(963.979862, 2421.706886, 44.034611))
  Position_SetRadius(node228, 5)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node224, node229)
  Position_SetPosition(node229, MAT_Vector3(961.553722, 2523.604775, 61.827325))
  Position_SetRadius(node229, 5)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("NOD_Path", "AvengerPath_Canyon6")
  Node_AddSon(node139, node230)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node230, node231)
  Position_SetPosition(node231, MAT_Vector3(966.406003, 2564.849159, 51.600423))
  Position_SetRadius(node231, 5)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node230, node232)
  Position_SetPosition(node232, MAT_Vector3(1019.781087, 2596.388982, 42.620051))
  Position_SetRadius(node232, 5)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node230, node233)
  Position_SetPosition(node233, MAT_Vector3(1071.295181, 2651.314258, 58.531046))
  Position_SetRadius(node233, 5)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node230, node234)
  Position_SetPosition(node234, MAT_Vector3(1163.48851, 2738.655306, 55.679945))
  Position_SetRadius(node234, 5)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node230, node235)
  Position_SetPosition(node235, MAT_Vector3(1175.619211, 2845.405475, 62.995339))
  Position_SetRadius(node235, 5)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("NOD_Path", "AvengerPath_CanyonOUT")
  Node_AddSon(node139, node236)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node236, node237)
  Position_SetPosition(node237, MAT_Vector3(1180.471491, 2932.746522, 67.018856))
  Position_SetRadius(node237, 5)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node236, node238)
  Position_SetPosition(node238, MAT_Vector3(1267.812539, 2969.138626, 65.071679))
  Position_SetRadius(node238, 5)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node236, node239)
  Position_SetPosition(node239, MAT_Vector3(1376.988848, 3022.51371, 74.101101))
  Position_SetRadius(node239, 5)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node236, node240)
  Position_SetPosition(node240, MAT_Vector3(1589.050034, 3110.243236, 91.66633))
  Position_SetRadius(node240, 5)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node236, node241)
  Position_SetPosition(node241, MAT_Vector3(1384.267269, 3151.099142, 96.154626))
  Position_SetRadius(node241, 5)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("NOD_Path", "SecondIntrepidoScouts_Path")
  Node_AddSon(node139, node242)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node242, node243)
  Position_SetPosition(node243, MAT_Vector3(2480.576048, 1462.854019, 167.9824))
  Position_SetRadius(node243, 15)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("NOD_PatrolArea", "Intrepido_PatrolArea")
  Node_AddSon(node139, node244)
  PatrolArea_SetPosition(node244, MAT_Vector3(2811.419, 1056.39, 177.5821))
  PatrolArea_SetRadius(node244, 100)
  PatrolArea_SetMinZ(node244, -20)
  PatrolArea_SetMaxZ(node244, 20)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("NOD_PatrolArea", "Intrepido_TriggerArea")
  Node_AddSon(node139, node245)
  PatrolArea_SetPosition(node245, MAT_Vector3(2811.419, 1056.39, 177.5821))
  PatrolArea_SetRadius(node245, 250)
  PatrolArea_SetMinZ(node245, -150)
  PatrolArea_SetMaxZ(node245, 50)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("NOD_PatrolArea", "Intrepido_FollowArea")
  Node_AddSon(node139, node246)
  PatrolArea_SetPosition(node246, MAT_Vector3(2811.419, 1056.39, 177.5821))
  PatrolArea_SetRadius(node246, 550)
  PatrolArea_SetMinZ(node246, -150)
  PatrolArea_SetMaxZ(node246, 50)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node137, node247)
  Node_EnterSimulation(node247)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node137, node248)
  Node_EnterSimulation(node248)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("NOD_Trigger", "Start_Intrepido")
  Node_AddSon(node248, node249)
  Body_SetFriendOrFoeID(node249, 0)
  Body_SetPosition(node249, MAT_Vector3(2776.835544, 1593.252837, 100))
  Trigger_SetPresenceSphere(node249, 1000)
  Node_EnterSimulation(node249)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_1")
  Node_AddSon(node248, node250)
  Body_SetFriendOrFoeID(node250, 0)
  Body_SetCS(node250, MAT_Vector3(1096.108856, 2714.306829, 74.888704), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node250, 200, 20, 100)
  Node_EnterSimulation(node250)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node137, node251)
  Node_EnterSimulation(node251)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node251, node252)
  Body_SetCS(node252, MAT_Vector3(1024.125703, 3188.25402, 63.977287), MAT_Vector3(-89.899882, 0, 0))
  Node_ParseIniFile(node252, "osd/pla/pla_ship1.osd")
  Body_SetFriendOrFoeID(node252, 2)
  Node_EnterSimulation(node252)
  Game_LoadProgress_Advance(node0)
  node253 = Node_CreateNode("nod_vessel", "dealer")
  Node_AddSon(node251, node253)
  Body_SetCS(node253, MAT_Vector3(2776.983591, 1593.047246, 150), MAT_Vector3(-179.972739, 0, 0))
  Node_ParseIniFile(node253, "osd/gen/gen_avenger_narrow.osd")
  Body_SetFriendOrFoeID(node253, 3)
  Body_SetNameKey(node253, 356)
  Body_SetCargoKey(node253, -1, 0)
  Body_SetCargoKey(node253, -1, 1)
  Body_SetCargoKey(node253, -1, 2)
  Node_EnterSimulation(node253)
  Game_LoadProgress_Advance(node0)
  node254 = Node_CreateNode("nod_vehicle", "atl_buggy_1")
  Node_AddSon(node251, node254)
  Body_SetCS(node254, MAT_Vector3(2552.779202, 1615.683136, 92.279746), MAT_Vector3(35.211191, 0, 0))
  Node_ParseIniFile(node254, "osd/atl/atl_buggy.osd")
  Body_SetFriendOrFoeID(node254, 1)
  Body_SetNameKey(node254, -1)
  Body_SetCargoKey(node254, -1, 0)
  Body_SetCargoKey(node254, -1, 1)
  Body_SetCargoKey(node254, -1, 2)
  Node_EnterSimulation(node254)
  Game_LoadProgress_Advance(node0)
  node255 = Node_CreateNode("nod_vehicle", "atl_buggy_2")
  Node_AddSon(node251, node255)
  Body_SetCS(node255, MAT_Vector3(2719.208138, 1871.094054, 96.677795), MAT_Vector3(75.708943, 0, 0))
  Node_ParseIniFile(node255, "osd/atl/atl_buggy.osd")
  Body_SetFriendOrFoeID(node255, 1)
  Body_SetNameKey(node255, -1)
  Body_SetCargoKey(node255, -1, 0)
  Body_SetCargoKey(node255, -1, 1)
  Body_SetCargoKey(node255, -1, 2)
  Node_EnterSimulation(node255)
  Game_LoadProgress_Advance(node0)
  node256 = Node_CreateNode("nod_vessel", "tz_intrepido_1")
  Node_AddSon(node251, node256)
  Body_SetCS(node256, MAT_Vector3(2777.081826, 1547.762445, 160), MAT_Vector3(179.719817, 0, 0))
  Node_ParseIniFile(node256, "osd/tz/tz_intrepido_wide.osd")
  Body_SetFriendOrFoeID(node256, 4)
  Body_SetNameKey(node256, -1)
  Body_SetCargoKey(node256, -1, 0)
  Body_SetCargoKey(node256, -1, 1)
  Body_SetCargoKey(node256, -1, 2)
  Node_EnterSimulation(node256)
  Game_LoadProgress_Advance(node0)
  node257 = Node_CreateNode("nod_vessel", "tz_intrepido_2")
  Node_AddSon(node251, node257)
  Body_SetCS(node257, MAT_Vector3(2756.050372, 1617.5385, 160), MAT_Vector3(179.7198, 0, 0))
  Node_ParseIniFile(node257, "osd/tz/tz_intrepido_wide.osd")
  Body_SetFriendOrFoeID(node257, 4)
  Body_SetNameKey(node257, -1)
  Body_SetCargoKey(node257, -1, 0)
  Body_SetCargoKey(node257, -1, 1)
  Body_SetCargoKey(node257, -1, 2)
  Node_EnterSimulation(node257)
  Game_LoadProgress_Advance(node0)
  node258 = Node_CreateNode("nod_vessel", "tz_intrepido_3")
  Node_AddSon(node251, node258)
  Body_SetCS(node258, MAT_Vector3(2797.119758, 1616.254778, 160), MAT_Vector3(179.7198, 0, 0))
  Node_ParseIniFile(node258, "osd/tz/tz_intrepido_wide.osd")
  Body_SetFriendOrFoeID(node258, 4)
  Body_SetNameKey(node258, -1)
  Body_SetCargoKey(node258, -1, 0)
  Body_SetCargoKey(node258, -1, 1)
  Body_SetCargoKey(node258, -1, 2)
  Node_EnterSimulation(node258)
  Game_LoadProgress_Advance(node0)
  node259 = Node_CreateNode("nod_vessel", "tz_intrepido_wide_1")
  Node_AddSon(node251, node259)
  Body_SetCS(node259, MAT_Vector3(2464.662745, 2210.924899, 233.064389), MAT_Vector3(-152.404822, 0, 0))
  Node_ParseIniFile(node259, "osd/tz/tz_intrepido_wide.osd")
  Body_SetFriendOrFoeID(node259, 4)
  Body_SetNameKey(node259, -1)
  Body_SetCargoKey(node259, -1, 0)
  Body_SetCargoKey(node259, -1, 1)
  Body_SetCargoKey(node259, -1, 2)
  Node_EnterSimulation(node259)
  Game_LoadProgress_Advance(node0)
  node260 = Node_CreateNode("nod_vessel", "tz_intrepido_wide_2")
  Node_AddSon(node251, node260)
  Body_SetCS(node260, MAT_Vector3(2506.192762, 2225.240231, 225.168), MAT_Vector3(-151.555884, 0, 0))
  Node_ParseIniFile(node260, "osd/tz/tz_intrepido_wide.osd")
  Body_SetFriendOrFoeID(node260, 4)
  Body_SetNameKey(node260, -1)
  Body_SetCargoKey(node260, -1, 0)
  Body_SetCargoKey(node260, -1, 1)
  Body_SetCargoKey(node260, -1, 2)
  Node_EnterSimulation(node260)
  Game_LoadProgress_Advance(node0)
  node261 = Node_CreateNode("nod_vessel", "tz_intrepido_wide_3")
  Node_AddSon(node251, node261)
  Body_SetCS(node261, MAT_Vector3(2479.332688, 2238.670156, 210.206432), MAT_Vector3(-164.253969, 0, 0))
  Node_ParseIniFile(node261, "osd/tz/tz_intrepido_wide.osd")
  Body_SetFriendOrFoeID(node261, 4)
  Body_SetNameKey(node261, -1)
  Body_SetCargoKey(node261, -1, 0)
  Body_SetCargoKey(node261, -1, 1)
  Body_SetCargoKey(node261, -1, 2)
  Node_EnterSimulation(node261)
  Game_LoadProgress_Advance(node0)
  node262 = Node_CreateNode("nod_vessel", "tz_intrepido_wide_4")
  Node_AddSon(node251, node262)
  Body_SetCS(node262, MAT_Vector3(2411.504243, 2214.527561, 199.816455), MAT_Vector3(-148.015186, 0, 0))
  Node_ParseIniFile(node262, "osd/tz/tz_intrepido_wide.osd")
  Body_SetFriendOrFoeID(node262, 4)
  Body_SetNameKey(node262, -1)
  Body_SetCargoKey(node262, -1, 0)
  Body_SetCargoKey(node262, -1, 1)
  Body_SetCargoKey(node262, -1, 2)
  Node_EnterSimulation(node262)
  Game_LoadProgress_Advance(node0)
  node263 = Node_CreateNode("nod_vessel", "tz_intrepido_wide_5")
  Node_AddSon(node251, node263)
  Body_SetCS(node263, MAT_Vector3(2392.534941, 2183.487722, 206.050441), MAT_Vector3(-138.152312, 0, 0))
  Node_ParseIniFile(node263, "osd/tz/tz_intrepido_wide.osd")
  Body_SetFriendOrFoeID(node263, 4)
  Body_SetNameKey(node263, -1)
  Body_SetCargoKey(node263, -1, 0)
  Body_SetCargoKey(node263, -1, 1)
  Body_SetCargoKey(node263, -1, 2)
  Node_EnterSimulation(node263)
  Game_LoadProgress_Advance(node0)
  node264 = Node_CreateNode("nod_waypoint", "nav_guard_1")
  Node_AddSon(node251, node264)
  Body_SetPosition(node264, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node264, 100)
  Node_ParseIniFile(node264, "osd/nav/nav_guard.osd")
  Node_EnterSimulation(node264)
  Game_LoadProgress_Advance(node0)
  node265 = Node_CreateNode("nod_waypoint", "nav_waypoint_1")
  Node_AddSon(node251, node265)
  Body_SetPosition(node265, MAT_Vector3(2566.762183, 850.771133, 150.014177))
  WayPoint_SetRadius(node265, 125)
  Node_ParseIniFile(node265, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node265)
  Game_LoadProgress_Advance(node0)
  node266 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_1")
  Node_AddSon(node251, node266)
  Body_SetPosition(node266, MAT_Vector3(1957.392051, 608.902605, 151.550503))
  WayPoint_SetRadius(node266, 125)
  Node_ParseIniFile(node266, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node266)
  Game_LoadProgress_Advance(node0)
  node267 = Node_CreateNode("nod_trash", "des_mine02_2")
  Node_AddSon(node251, node267)
  Body_SetCS(node267, MAT_Vector3(1947.589682, 696.910154, 162.3056), MAT_Vector3(133.713695, 10.998219, -32.196167))
  Node_ParseIniFile(node267, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node267, 4)
  Node_EnterSimulation(node267)
  Game_LoadProgress_Advance(node0)
  node268 = Node_CreateNode("nod_trash", "des_mine02_3")
  Node_AddSon(node251, node268)
  Body_SetCS(node268, MAT_Vector3(1911.375977, 742.895745, 152.992835), MAT_Vector3(-136.811954, 2.797434, 56.070964))
  Node_ParseIniFile(node268, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node268, 4)
  Node_EnterSimulation(node268)
  Game_LoadProgress_Advance(node0)
  node269 = Node_CreateNode("nod_trash", "des_mine02_4")
  Node_AddSon(node251, node269)
  Body_SetCS(node269, MAT_Vector3(1873.437426, 786.007282, 147.513411), MAT_Vector3(116.6943, -14.13101, 52.161483))
  Node_ParseIniFile(node269, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node269, 4)
  Node_EnterSimulation(node269)
  Game_LoadProgress_Advance(node0)
  node270 = Node_CreateNode("nod_trash", "des_mine02_5")
  Node_AddSon(node251, node270)
  Body_SetCS(node270, MAT_Vector3(1827.892646, 821.39706, 137.052735), MAT_Vector3(178.794139, -22.797625, 9.145157))
  Node_ParseIniFile(node270, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node270, 4)
  Node_EnterSimulation(node270)
  Game_LoadProgress_Advance(node0)
  node271 = Node_CreateNode("nod_trash", "des_mine02_6")
  Node_AddSon(node251, node271)
  Body_SetCS(node271, MAT_Vector3(1779.166917, 851.537027, 137.0527), MAT_Vector3(-122.11448, 32.10044, -5.77737))
  Node_ParseIniFile(node271, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node271, 4)
  Node_EnterSimulation(node271)
  Game_LoadProgress_Advance(node0)
  node272 = Node_CreateNode("nod_trash", "des_mine02_7")
  Node_AddSon(node251, node272)
  Body_SetCS(node272, MAT_Vector3(1734.330482, 879.703658, 161.959173), MAT_Vector3(-91.979867, 32.10044, -5.77737))
  Node_ParseIniFile(node272, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node272, 4)
  Node_EnterSimulation(node272)
  Game_LoadProgress_Advance(node0)
  node273 = Node_CreateNode("nod_trash", "des_mine02_8")
  Node_AddSon(node251, node273)
  Body_SetCS(node273, MAT_Vector3(1695.817536, 920.515884, 141.037736), MAT_Vector3(-16.71519, 32.10044, -5.77737))
  Node_ParseIniFile(node273, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node273, 4)
  Node_EnterSimulation(node273)
  Game_LoadProgress_Advance(node0)
  node274 = Node_CreateNode("nod_trash", "des_mine02_9")
  Node_AddSon(node251, node274)
  Body_SetCS(node274, MAT_Vector3(1660.75351, 967.651132, 137.0527), MAT_Vector3(-13.461469, 32.10044, -5.77737))
  Node_ParseIniFile(node274, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node274, 4)
  Node_EnterSimulation(node274)
  Game_LoadProgress_Advance(node0)
  node275 = Node_CreateNode("nod_trash", "des_mine02_10")
  Node_AddSon(node251, node275)
  Body_SetCS(node275, MAT_Vector3(1625.114664, 1010.187819, 140.041477), MAT_Vector3(-98.751596, 32.10044, -5.77737))
  Node_ParseIniFile(node275, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node275, 4)
  Node_EnterSimulation(node275)
  Game_LoadProgress_Advance(node0)
  node276 = Node_CreateNode("nod_trash", "des_mine02_11")
  Node_AddSon(node251, node276)
  Body_SetCS(node276, MAT_Vector3(1611.665541, 1063.388369, 134.775364), MAT_Vector3(-77.463447, 44.14752, -10.81908))
  Node_ParseIniFile(node276, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node276, 4)
  Node_EnterSimulation(node276)
  Game_LoadProgress_Advance(node0)
  node277 = Node_CreateNode("nod_trash", "des_mine02_12")
  Node_AddSon(node251, node277)
  Body_SetCS(node277, MAT_Vector3(1589.071259, 1114.536351, 143.044454), MAT_Vector3(-153.5189, 10.99822, -32.19617))
  Node_ParseIniFile(node277, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node277, 4)
  Node_EnterSimulation(node277)
  Game_LoadProgress_Advance(node0)
  node278 = Node_CreateNode("nod_trash", "des_mine02_13")
  Node_AddSon(node251, node278)
  Body_SetCS(node278, MAT_Vector3(1625.115, 1010.188, 140.0415), MAT_Vector3(-98.7516, 32.10044, -5.77737))
  Node_ParseIniFile(node278, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node278, 4)
  Node_EnterSimulation(node278)
  Game_LoadProgress_Advance(node0)
  node279 = Node_CreateNode("nod_trash", "des_mine02_14")
  Node_AddSon(node251, node279)
  Body_SetCS(node279, MAT_Vector3(1611.666, 1063.388, 134.7754), MAT_Vector3(-77.46345, 44.14752, -10.81908))
  Node_ParseIniFile(node279, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node279, 4)
  Node_EnterSimulation(node279)
  Game_LoadProgress_Advance(node0)
  node280 = Node_CreateNode("nod_trash", "des_mine02_15")
  Node_AddSon(node251, node280)
  Body_SetCS(node280, MAT_Vector3(1553.675373, 1161.864777, 143.0445), MAT_Vector3(-34.20171, 10.99822, -32.19617))
  Node_ParseIniFile(node280, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node280, 4)
  Node_EnterSimulation(node280)
  Game_LoadProgress_Advance(node0)
  node281 = Node_CreateNode("nod_trash", "des_mine02_16")
  Node_AddSon(node251, node281)
  Body_SetCS(node281, MAT_Vector3(1522.234443, 1210.970121, 133.399604), MAT_Vector3(28.315903, 44.14752, -10.81908))
  Node_ParseIniFile(node281, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node281, 4)
  Node_EnterSimulation(node281)
  Game_LoadProgress_Advance(node0)
  node282 = Node_CreateNode("nod_trash", "des_mine02_17")
  Node_AddSon(node251, node282)
  Body_SetCS(node282, MAT_Vector3(1470.583983, 1244.91143, 132.726029), MAT_Vector3(42.65641, 10.99822, -32.19617))
  Node_ParseIniFile(node282, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node282, 4)
  Node_EnterSimulation(node282)
  Game_LoadProgress_Advance(node0)
  node283 = Node_CreateNode("nod_trash", "des_mine02_18")
  Node_AddSon(node251, node283)
  Body_SetCS(node283, MAT_Vector3(1443.376186, 1288.319767, 140.0415), MAT_Vector3(39.688372, 32.10044, -5.77737))
  Node_ParseIniFile(node283, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node283, 4)
  Node_EnterSimulation(node283)
  Game_LoadProgress_Advance(node0)
  node284 = Node_CreateNode("nod_trash", "des_mine02_19")
  Node_AddSon(node251, node284)
  Body_SetCS(node284, MAT_Vector3(1416.400148, 1237.232282, 128.584317), MAT_Vector3(150.14476, 44.14752, -10.81908))
  Node_ParseIniFile(node284, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node284, 4)
  Node_EnterSimulation(node284)
  Game_LoadProgress_Advance(node0)
  node285 = Node_CreateNode("nod_trash", "des_mine02_20")
  Node_AddSon(node251, node285)
  Body_SetCS(node285, MAT_Vector3(1395.879654, 1291.328433, 143.0445), MAT_Vector3(-66.311751, 10.99822, -32.19617))
  Node_ParseIniFile(node285, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node285, 4)
  Node_EnterSimulation(node285)
  Game_LoadProgress_Advance(node0)
  node286 = Node_CreateNode("nod_trash", "des_mine02_21")
  Node_AddSon(node251, node286)
  Body_SetCS(node286, MAT_Vector3(1382.585327, 1343.020773, 132.477722), MAT_Vector3(-101.493591, -9.516157, -17.820544))
  Node_ParseIniFile(node286, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node286, 4)
  Node_EnterSimulation(node286)
  Game_LoadProgress_Advance(node0)
  node287 = Node_CreateNode("nod_trash", "des_mine02_22")
  Node_AddSon(node251, node287)
  Body_SetCS(node287, MAT_Vector3(1341.850683, 1304.665717, 136.413513), MAT_Vector3(-157.141106, 10.99822, -32.19617))
  Node_ParseIniFile(node287, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node287, 4)
  Node_EnterSimulation(node287)
  Game_LoadProgress_Advance(node0)
  node288 = Node_CreateNode("nod_trash", "des_mine02_23")
  Node_AddSon(node251, node288)
  Body_SetCS(node288, MAT_Vector3(1296.465416, 1323.924722, 135.739402), MAT_Vector3(146.764531, 32.10044, -5.77737))
  Node_ParseIniFile(node288, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node288, 4)
  Node_EnterSimulation(node288)
  Game_LoadProgress_Advance(node0)
  node289 = Node_CreateNode("nod_trash", "des_mine02_24")
  Node_AddSon(node251, node289)
  Body_SetCS(node289, MAT_Vector3(1196.287137, 1301.970835, 143.027058), MAT_Vector3(-46.640472, 44.14752, -10.81908))
  Node_ParseIniFile(node289, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node289, 4)
  Node_EnterSimulation(node289)
  Game_LoadProgress_Advance(node0)
  node290 = Node_CreateNode("nod_trash", "des_mine02_25")
  Node_AddSon(node251, node290)
  Body_SetCS(node290, MAT_Vector3(1163.19522, 1275.096644, 146.775784), MAT_Vector3(-174.152639, 4.024709, -78.911781))
  Node_ParseIniFile(node290, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node290, 4)
  Node_EnterSimulation(node290)
  Game_LoadProgress_Advance(node0)
  node291 = Node_CreateNode("nod_trash", "des_mine02_26")
  Node_AddSon(node251, node291)
  Body_SetCS(node291, MAT_Vector3(1146.124194, 1319.951149, 169.100774), MAT_Vector3(0.67407, 16.682348, 7.255586))
  Node_ParseIniFile(node291, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node291, 4)
  Node_EnterSimulation(node291)
  Game_LoadProgress_Advance(node0)
  node292 = Node_CreateNode("nod_trash", "des_mine02_27")
  Node_AddSon(node251, node292)
  Body_SetCS(node292, MAT_Vector3(1543.708105, 1256.055514, 152.074873), MAT_Vector3(-98.223434, 10.99822, -32.19617))
  Node_ParseIniFile(node292, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node292, 4)
  Node_EnterSimulation(node292)
  Game_LoadProgress_Advance(node0)
  node293 = Node_CreateNode("nod_trash", "des_mine02_28")
  Node_AddSon(node251, node293)
  Body_SetCS(node293, MAT_Vector3(1582.360573, 1200.339017, 146.112517), MAT_Vector3(159.993677, 7.815781, 11.32093))
  Node_ParseIniFile(node293, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node293, 4)
  Node_EnterSimulation(node293)
  Game_LoadProgress_Advance(node0)
  node294 = Node_CreateNode("nod_trash", "des_mine02_29")
  Node_AddSon(node251, node294)
  Body_SetCS(node294, MAT_Vector3(1656.122388, 1062.443754, 163.804946), MAT_Vector3(-110.378232, 2.177374, 38.422237))
  Node_ParseIniFile(node294, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node294, 4)
  Node_EnterSimulation(node294)
  Game_LoadProgress_Advance(node0)
  node295 = Node_CreateNode("nod_trash", "des_mine02_30")
  Node_AddSon(node251, node295)
  Body_SetCS(node295, MAT_Vector3(1128.626242, 1246.168906, 155.418122), MAT_Vector3(-12.612081, -11.219455, -92.152038))
  Node_ParseIniFile(node295, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node295, 4)
  Node_EnterSimulation(node295)
  Game_LoadProgress_Advance(node0)
  node296 = Node_CreateNode("nod_trash", "des_mine02_30a")
  Node_AddSon(node251, node296)
  Body_SetCS(node296, MAT_Vector3(1235.733852, 1332.679188, 178.829991), MAT_Vector3(119.359226, -36.277021, -75.242666))
  Node_ParseIniFile(node296, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node296, 4)
  Node_EnterSimulation(node296)
  Game_LoadProgress_Advance(node0)
  node297 = Node_CreateNode("nod_trash", "des_mine02_31")
  Node_AddSon(node251, node297)
  Body_SetCS(node297, MAT_Vector3(1080.966653, 1268.178075, 152.570578), MAT_Vector3(170.65622, 13.844573, -89.155603))
  Node_ParseIniFile(node297, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node297, 4)
  Node_EnterSimulation(node297)
  Game_LoadProgress_Advance(node0)
  node298 = Node_CreateNode("nod_trash", "des_mine02_32")
  Node_AddSon(node251, node298)
  Body_SetCS(node298, MAT_Vector3(1036.555237, 1204.356447, 162.130117), MAT_Vector3(-92.493551, -13.766653, -112.119165))
  Node_ParseIniFile(node298, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node298, 4)
  Node_EnterSimulation(node298)
  Game_LoadProgress_Advance(node0)
  node299 = Node_CreateNode("nod_trash", "des_mine02_33")
  Node_AddSon(node251, node299)
  Body_SetCS(node299, MAT_Vector3(1089.078328, 1209.917224, 168.638739), MAT_Vector3(-76.416007, -11.21945, -92.15204))
  Node_ParseIniFile(node299, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node299, 4)
  Node_EnterSimulation(node299)
  Game_LoadProgress_Advance(node0)
  node300 = Node_CreateNode("nod_trash", "des_mine02_34")
  Node_AddSon(node251, node300)
  Body_SetCS(node300, MAT_Vector3(997.462424, 1165.135154, 152.5706), MAT_Vector3(42.397891, -11.577314, -69.502318))
  Node_ParseIniFile(node300, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node300, 4)
  Node_EnterSimulation(node300)
  Game_LoadProgress_Advance(node0)
  node301 = Node_CreateNode("nod_trash", "des_mine02_35")
  Node_AddSon(node251, node301)
  Body_SetCS(node301, MAT_Vector3(1054.374423, 1152.622191, 162.536889), MAT_Vector3(-133.910904, -13.76665, -112.1192))
  Node_ParseIniFile(node301, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node301, 4)
  Node_EnterSimulation(node301)
  Game_LoadProgress_Advance(node0)
  node302 = Node_CreateNode("nod_trash", "des_mine02_36")
  Node_AddSon(node251, node302)
  Body_SetCS(node302, MAT_Vector3(1007.964848, 1119.299595, 164.774267), MAT_Vector3(-98.827066, 40.835443, -128.461091))
  Node_ParseIniFile(node302, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node302, 4)
  Node_EnterSimulation(node302)
  Game_LoadProgress_Advance(node0)
  node303 = Node_CreateNode("nod_trash", "des_mine02_37")
  Node_AddSon(node251, node303)
  Body_SetCS(node303, MAT_Vector3(1015.286656, 1067.548817, 167.214961), MAT_Vector3(-42.549482, -42.357749, -150.043251))
  Node_ParseIniFile(node303, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node303, 4)
  Node_EnterSimulation(node303)
  Game_LoadProgress_Advance(node0)
  node304 = Node_CreateNode("nod_trash", "des_mine02_38")
  Node_AddSon(node251, node304)
  Body_SetCS(node304, MAT_Vector3(1066.085196, 1080.007658, 179.622), MAT_Vector3(-21.466724, 4.882716, -148.087732))
  Node_ParseIniFile(node304, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node304, 4)
  Node_EnterSimulation(node304)
  Game_LoadProgress_Advance(node0)
  node305 = Node_CreateNode("nod_trash", "des_mine02_39")
  Node_AddSon(node251, node305)
  Body_SetCS(node305, MAT_Vector3(962.319668, 1126.532701, 145.655189), MAT_Vector3(-133.756376, -11.57731, -69.50232))
  Node_ParseIniFile(node305, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node305, 4)
  Node_EnterSimulation(node305)
  Game_LoadProgress_Advance(node0)
  node306 = Node_CreateNode("nod_trash", "des_mine02_40")
  Node_AddSon(node251, node306)
  Body_SetCS(node306, MAT_Vector3(941.907, 1172.188472, 175.796732), MAT_Vector3(-166.58548, -63.923949, -119.929799))
  Node_ParseIniFile(node306, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node306, 4)
  Node_EnterSimulation(node306)
  Game_LoadProgress_Advance(node0)
  node307 = Node_CreateNode("nod_trash", "des_mine02_41")
  Node_AddSon(node251, node307)
  Body_SetCS(node307, MAT_Vector3(913.49064, 1121.661859, 164.7743), MAT_Vector3(73.531201, 71.641626, -147.48215))
  Node_ParseIniFile(node307, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node307, 4)
  Node_EnterSimulation(node307)
  Game_LoadProgress_Advance(node0)
  node308 = Node_CreateNode("nod_trash", "des_mine02_42")
  Node_AddSon(node251, node308)
  Body_SetCS(node308, MAT_Vector3(865.429061, 1123.755273, 154.369538), MAT_Vector3(-75.549781, -20.803096, -131.185851))
  Node_ParseIniFile(node308, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node308, 4)
  Node_EnterSimulation(node308)
  Game_LoadProgress_Advance(node0)
  node309 = Node_CreateNode("nod_trash", "des_mine02_43")
  Node_AddSon(node251, node309)
  Body_SetCS(node309, MAT_Vector3(890.083586, 1072.465334, 138.185025), MAT_Vector3(9.084907, 51.546092, -110.452594))
  Node_ParseIniFile(node309, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node309, 4)
  Node_EnterSimulation(node309)
  Game_LoadProgress_Advance(node0)
  node310 = Node_CreateNode("nod_trash", "des_mine02_44")
  Node_AddSon(node251, node310)
  Body_SetCS(node310, MAT_Vector3(824.150949, 1102.91441, 141.925872), MAT_Vector3(-55.466974, -9.408528, -61.958602))
  Node_ParseIniFile(node310, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node310, 4)
  Node_EnterSimulation(node310)
  Game_LoadProgress_Advance(node0)
  node311 = Node_CreateNode("nod_trash", "des_mine02_45")
  Node_AddSon(node251, node311)
  Body_SetCS(node311, MAT_Vector3(803.955928, 1061.190456, 165.851826), MAT_Vector3(62.197055, -63.92395, -119.9298))
  Node_ParseIniFile(node311, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node311, 4)
  Node_EnterSimulation(node311)
  Game_LoadProgress_Advance(node0)
  node312 = Node_CreateNode("nod_trash", "des_mine02_46")
  Node_AddSon(node251, node312)
  Body_SetCS(node312, MAT_Vector3(751.063759, 1067.663376, 156.27972), MAT_Vector3(176.011869, 19.622279, 171.671396))
  Node_ParseIniFile(node312, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node312, 4)
  Node_EnterSimulation(node312)
  Game_LoadProgress_Advance(node0)
  node313 = Node_CreateNode("nod_trash", "des_mine02_47")
  Node_AddSon(node251, node313)
  Body_SetCS(node313, MAT_Vector3(839.701697, 1033.113277, 184.192224), MAT_Vector3(73.194398, 35.174686, -103.194678))
  Node_ParseIniFile(node313, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node313, 4)
  Node_EnterSimulation(node313)
  Game_LoadProgress_Advance(node0)
  node314 = Node_CreateNode("nod_trash", "des_mine02_48")
  Node_AddSon(node251, node314)
  Body_SetCS(node314, MAT_Vector3(776.454613, 1022.964985, 187.545735), MAT_Vector3(33.594226, 63.531449, -28.459979))
  Node_ParseIniFile(node314, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node314, 4)
  Node_EnterSimulation(node314)
  Game_LoadProgress_Advance(node0)
  node315 = Node_CreateNode("nod_trash", "des_mine02_49")
  Node_AddSon(node251, node315)
  Body_SetCS(node315, MAT_Vector3(717.956796, 1027.517916, 123.279261), MAT_Vector3(-70.863697, -37.377887, -24.497044))
  Node_ParseIniFile(node315, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node315, 4)
  Node_EnterSimulation(node315)
  Game_LoadProgress_Advance(node0)
  node316 = Node_CreateNode("nod_trash", "des_mine02_50")
  Node_AddSon(node251, node316)
  Body_SetCS(node316, MAT_Vector3(664.602373, 1002.883355, 142.23275), MAT_Vector3(-177.114934, -83.832706, -136.770307))
  Node_ParseIniFile(node316, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node316, 4)
  Node_EnterSimulation(node316)
  Game_LoadProgress_Advance(node0)
  node317 = Node_CreateNode("nod_trash", "des_mine02_51")
  Node_AddSon(node251, node317)
  Body_SetCS(node317, MAT_Vector3(623.821422, 979.840283, 163.572842), MAT_Vector3(60.50956, -32.210489, 88.710672))
  Node_ParseIniFile(node317, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node317, 4)
  Node_EnterSimulation(node317)
  Game_LoadProgress_Advance(node0)
  node318 = Node_CreateNode("nod_trash", "des_mine02_52")
  Node_AddSon(node251, node318)
  Body_SetCS(node318, MAT_Vector3(573.447895, 993.706645, 161.486168), MAT_Vector3(-69.218726, 63.53145, -28.45998))
  Node_ParseIniFile(node318, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node318, 4)
  Node_EnterSimulation(node318)
  Game_LoadProgress_Advance(node0)
  node319 = Node_CreateNode("nod_trash", "des_mine02_53")
  Node_AddSon(node251, node319)
  Body_SetCS(node319, MAT_Vector3(597.666444, 944.303438, 120.456184), MAT_Vector3(165.222566, -37.37789, -24.49704))
  Node_ParseIniFile(node319, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node319, 4)
  Node_EnterSimulation(node319)
  Game_LoadProgress_Advance(node0)
  node320 = Node_CreateNode("nod_trash", "des_mine02_54")
  Node_AddSon(node251, node320)
  Body_SetCS(node320, MAT_Vector3(550.079389, 934.498756, 142.2328), MAT_Vector3(97.23341, -83.83271, -136.7703))
  Node_ParseIniFile(node320, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node320, 4)
  Node_EnterSimulation(node320)
  Game_LoadProgress_Advance(node0)
  node321 = Node_CreateNode("nod_trash", "des_mine02_55")
  Node_AddSon(node251, node321)
  Body_SetCS(node321, MAT_Vector3(512.890921, 908.515587, 158.652921), MAT_Vector3(19.940421, -24.685758, 156.336631))
  Node_ParseIniFile(node321, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node321, 4)
  Node_EnterSimulation(node321)
  Game_LoadProgress_Advance(node0)
  node322 = Node_CreateNode("nod_trash", "des_mine02_56")
  Node_AddSon(node251, node322)
  Body_SetCS(node322, MAT_Vector3(516.713548, 864.493383, 137.989429), MAT_Vector3(-29.419892, 2.801479, 92.897548))
  Node_ParseIniFile(node322, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node322, 4)
  Node_EnterSimulation(node322)
  Game_LoadProgress_Advance(node0)
  node323 = Node_CreateNode("nod_trash", "des_mine02_57")
  Node_AddSon(node251, node323)
  Body_SetCS(node323, MAT_Vector3(556.987659, 870.093543, 171.258525), MAT_Vector3(13.058382, 63.53145, -28.45998))
  Node_ParseIniFile(node323, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node323, 4)
  Node_EnterSimulation(node323)
  Game_LoadProgress_Advance(node0)
  node324 = Node_CreateNode("nod_trash", "des_mine02_58")
  Node_AddSon(node251, node324)
  Body_SetCS(node324, MAT_Vector3(532.577783, 818.245698, 120.4562), MAT_Vector3(82.32646, -37.37789, -24.49704))
  Node_ParseIniFile(node324, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node324, 4)
  Node_EnterSimulation(node324)
  Game_LoadProgress_Advance(node0)
  node325 = Node_CreateNode("nod_trash", "des_mine02_59")
  Node_AddSon(node251, node325)
  Body_SetCS(node325, MAT_Vector3(550.0794, 934.4988, 142.2328), MAT_Vector3(97.23341, -83.83271, -136.7703))
  Node_ParseIniFile(node325, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node325, 4)
  Node_EnterSimulation(node325)
  Game_LoadProgress_Advance(node0)
  node326 = Node_CreateNode("nod_trash", "des_mine02_60")
  Node_AddSon(node251, node326)
  Body_SetCS(node326, MAT_Vector3(539.782975, 776.335365, 141.679338), MAT_Vector3(-127.004273, -66.0806, 44.962926))
  Node_ParseIniFile(node326, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node326, 4)
  Node_EnterSimulation(node326)
  Game_LoadProgress_Advance(node0)
  node327 = Node_CreateNode("nod_trash", "des_mine02_61")
  Node_AddSon(node251, node327)
  Body_SetCS(node327, MAT_Vector3(506.901893, 742.359382, 172.920532), MAT_Vector3(24.160554, -66.0806, 44.96293))
  Node_ParseIniFile(node327, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node327, 4)
  Node_EnterSimulation(node327)
  Game_LoadProgress_Advance(node0)
  node328 = Node_CreateNode("nod_trash", "des_mine02_62")
  Node_AddSon(node251, node328)
  Body_SetCS(node328, MAT_Vector3(563.751452, 744.83112, 158.652851), MAT_Vector3(-114.05007, -66.0806, 44.96293))
  Node_ParseIniFile(node328, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node328, 4)
  Node_EnterSimulation(node328)
  Game_LoadProgress_Advance(node0)
  node329 = Node_CreateNode("nod_trash", "des_mine02_64")
  Node_AddSon(node251, node329)
  Body_SetCS(node329, MAT_Vector3(543.977743, 702.811866, 153.487027), MAT_Vector3(13.108978, -66.0806, 44.96293))
  Node_ParseIniFile(node329, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node329, 4)
  Node_EnterSimulation(node329)
  Game_LoadProgress_Advance(node0)
  node330 = Node_CreateNode("nod_trash", "des_mine02_65")
  Node_AddSon(node251, node330)
  Body_SetCS(node330, MAT_Vector3(530.795195, 980.468408, 153.732994), MAT_Vector3(-38.875389, -66.0806, 44.96293))
  Node_ParseIniFile(node330, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node330, 4)
  Node_EnterSimulation(node330)
  Game_LoadProgress_Advance(node0)
  node331 = Node_CreateNode("nod_trash", "des_mine02_66")
  Node_AddSon(node251, node331)
  Body_SetCS(node331, MAT_Vector3(500.310648, 1021.663721, 172.9205), MAT_Vector3(-110.276949, -66.0806, 44.96293))
  Node_ParseIniFile(node331, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node331, 4)
  Node_EnterSimulation(node331)
  Game_LoadProgress_Advance(node0)
  node332 = Node_CreateNode("nod_trash", "des_mine02_67")
  Node_AddSon(node251, node332)
  Body_SetCS(node332, MAT_Vector3(558.808061, 1051.324337, 163.572779), MAT_Vector3(26.471024, -22.968421, -22.875092))
  Node_ParseIniFile(node332, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node332, 4)
  Node_EnterSimulation(node332)
  Game_LoadProgress_Advance(node0)
  node333 = Node_CreateNode("nod_trash", "des_mine02_68")
  Node_AddSon(node251, node333)
  Body_SetCS(node333, MAT_Vector3(467.354391, 1054.619997, 168.246637), MAT_Vector3(143.025826, -66.0806, 44.96293))
  Node_ParseIniFile(node333, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node333, 4)
  Node_EnterSimulation(node333)
  Game_LoadProgress_Advance(node0)
  node334 = Node_CreateNode("nod_trash", "des_mine02_69")
  Node_AddSon(node251, node334)
  Body_SetCS(node334, MAT_Vector3(471.503847, 975.404445, 149.551097), MAT_Vector3(90.292733, -66.0806, 44.96293))
  Node_ParseIniFile(node334, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node334, 4)
  Node_EnterSimulation(node334)
  Game_LoadProgress_Advance(node0)
  node335 = Node_CreateNode("nod_trash", "des_mine02_70")
  Node_AddSon(node251, node335)
  Body_SetCS(node335, MAT_Vector3(428.660659, 1009.184569, 156.930919), MAT_Vector3(-127.175933, -66.0806, 44.96293))
  Node_ParseIniFile(node335, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node335, 4)
  Node_EnterSimulation(node335)
  Game_LoadProgress_Advance(node0)
  node336 = Node_CreateNode("nod_trash", "des_mine02_71")
  Node_AddSon(node251, node336)
  Body_SetCS(node336, MAT_Vector3(447.645737, 944.166876, 177.348391), MAT_Vector3(-78.570389, -50.732953, 56.818621))
  Node_ParseIniFile(node336, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node336, 4)
  Node_EnterSimulation(node336)
  Game_LoadProgress_Advance(node0)
  node337 = Node_CreateNode("nod_trash", "des_mine02_72")
  Node_AddSon(node251, node337)
  Body_SetCS(node337, MAT_Vector3(506.078081, 1099.934486, 150.535121), MAT_Vector3(-122.813822, -22.96842, -22.87509))
  Node_ParseIniFile(node337, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node337, 4)
  Node_EnterSimulation(node337)
  Game_LoadProgress_Advance(node0)
  node338 = Node_CreateNode("nod_trash", "des_mine02_73")
  Node_AddSon(node251, node338)
  Body_SetCS(node338, MAT_Vector3(563.751466, 1100.758767, 164.802685), MAT_Vector3(-56.780666, -51.019264, 41.348134))
  Node_ParseIniFile(node338, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node338, 4)
  Node_EnterSimulation(node338)
  Game_LoadProgress_Advance(node0)
  node339 = Node_CreateNode("nod_trash", "des_mine02_74")
  Node_AddSon(node251, node339)
  Body_SetCS(node339, MAT_Vector3(450.08223, 1103.109915, 146.845167), MAT_Vector3(-82.151149, -45.649815, 104.071663))
  Node_ParseIniFile(node339, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node339, 4)
  Node_EnterSimulation(node339)
  Game_LoadProgress_Advance(node0)
  node340 = Node_CreateNode("nod_trash", "des_mine02_75")
  Node_AddSon(node251, node340)
  Body_SetCS(node340, MAT_Vector3(417.949915, 1061.091113, 154.190999), MAT_Vector3(22.216873, -74.187391, -34.279268))
  Node_ParseIniFile(node340, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node340, 4)
  Node_EnterSimulation(node340)
  Game_LoadProgress_Advance(node0)
  node341 = Node_CreateNode("nod_trash", "des_mine02_76")
  Node_AddSon(node251, node341)
  Body_SetCS(node341, MAT_Vector3(523.445103, 1153.439164, 140.555446), MAT_Vector3(-26.333079, -33.331126, 136.08436))
  Node_ParseIniFile(node341, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node341, 4)
  Node_EnterSimulation(node341)
  Game_LoadProgress_Advance(node0)
  node342 = Node_CreateNode("nod_trash", "des_mine02_77")
  Node_AddSon(node251, node342)
  Body_SetCS(node342, MAT_Vector3(555.512493, 1190.563721, 154.05783), MAT_Vector3(5.576864, -53.774406, 18.384336))
  Node_ParseIniFile(node342, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node342, 4)
  Node_EnterSimulation(node342)
  Game_LoadProgress_Advance(node0)
  node343 = Node_CreateNode("nod_trash", "des_mine02_78")
  Node_AddSon(node251, node343)
  Body_SetCS(node343, MAT_Vector3(587.64479, 1153.489019, 159.386527), MAT_Vector3(157.326491, -47.298523, 105.210742))
  Node_ParseIniFile(node343, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node343, 4)
  Node_EnterSimulation(node343)
  Game_LoadProgress_Advance(node0)
  node344 = Node_CreateNode("nod_trash", "des_mine02_79")
  Node_AddSon(node251, node344)
  Body_SetCS(node344, MAT_Vector3(600.857099, 1220.10473, 146.258078), MAT_Vector3(174.353097, -34.661429, 176.952909))
  Node_ParseIniFile(node344, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node344, 4)
  Node_EnterSimulation(node344)
  Game_LoadProgress_Advance(node0)
  node345 = Node_CreateNode("nod_trash", "des_mine02_80")
  Node_AddSon(node251, node345)
  Body_SetCS(node345, MAT_Vector3(637.932949, 1253.885133, 140.295789), MAT_Vector3(27.138849, -39.158715, -23.657262))
  Node_ParseIniFile(node345, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node345, 4)
  Node_EnterSimulation(node345)
  Game_LoadProgress_Advance(node0)
  node346 = Node_CreateNode("nod_trash", "des_mine02_81")
  Node_AddSon(node251, node346)
  Body_SetCS(node346, MAT_Vector3(631.376858, 1297.622646, 150.731543), MAT_Vector3(12.084438, -33.33113, 136.0844))
  Node_ParseIniFile(node346, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node346, 4)
  Node_EnterSimulation(node346)
  Game_LoadProgress_Advance(node0)
  node347 = Node_CreateNode("nod_trash", "des_mine02_82")
  Node_AddSon(node251, node347)
  Body_SetCS(node347, MAT_Vector3(687.337548, 1291.080599, 162.232079), MAT_Vector3(108.808019, -53.77441, 18.38434))
  Node_ParseIniFile(node347, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node347, 4)
  Node_EnterSimulation(node347)
  Game_LoadProgress_Advance(node0)
  node348 = Node_CreateNode("nod_trash", "des_mine02_83")
  Node_AddSon(node251, node348)
  Body_SetCS(node348, MAT_Vector3(681.570147, 1343.811413, 158.886034), MAT_Vector3(-45.833651, -0.390579, 121.909053))
  Node_ParseIniFile(node348, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node348, 4)
  Node_EnterSimulation(node348)
  Game_LoadProgress_Advance(node0)
  node349 = Node_CreateNode("nod_trash", "des_mine02_84")
  Node_AddSon(node251, node349)
  Body_SetCS(node349, MAT_Vector3(717.027924, 1381.590684, 146.2581), MAT_Vector3(113.423182, -34.66143, 176.9529))
  Node_ParseIniFile(node349, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node349, 4)
  Node_EnterSimulation(node349)
  Game_LoadProgress_Advance(node0)
  node350 = Node_CreateNode("nod_trash", "des_mine02_85")
  Node_AddSon(node251, node350)
  Body_SetCS(node350, MAT_Vector3(738.449499, 1330.508309, 152.974274), MAT_Vector3(4.68351, -57.73638, -171.5165))
  Node_ParseIniFile(node350, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node350, 4)
  Node_EnterSimulation(node350)
  Game_LoadProgress_Advance(node0)
  node351 = Node_CreateNode("nod_trash", "des_mine02_86")
  Node_AddSon(node251, node351)
  Body_SetCS(node351, MAT_Vector3(721.60424, 1437.36138, 137.385738), MAT_Vector3(-30.803364, -33.33113, 136.0844))
  Node_ParseIniFile(node351, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node351, 4)
  Node_EnterSimulation(node351)
  Game_LoadProgress_Advance(node0)
  node352 = Node_CreateNode("nod_trash", "des_mine02_87")
  Node_AddSon(node251, node352)
  Body_SetCS(node352, MAT_Vector3(723.589388, 1487.170759, 140.378415), MAT_Vector3(51.339943, -53.77441, 18.38434))
  Node_ParseIniFile(node352, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node352, 4)
  Node_EnterSimulation(node352)
  Game_LoadProgress_Advance(node0)
  node353 = Node_CreateNode("nod_trash", "des_mine02_88")
  Node_AddSon(node251, node353)
  Body_SetCS(node353, MAT_Vector3(660.972436, 1576.976554, 145.540238), MAT_Vector3(-62.457318, -0.390579, 121.9091))
  Node_ParseIniFile(node353, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node353, 4)
  Node_EnterSimulation(node353)
  Game_LoadProgress_Advance(node0)
  node354 = Node_CreateNode("nod_trash", "des_mine02_89")
  Node_AddSon(node251, node354)
  Body_SetCS(node354, MAT_Vector3(670.984925, 1408.684057, 153.845629), MAT_Vector3(86.655748, -34.66143, 176.9529))
  Node_ParseIniFile(node354, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node354, 4)
  Node_EnterSimulation(node354)
  Game_LoadProgress_Advance(node0)
  node355 = Node_CreateNode("nod_trash", "des_mine02_90")
  Node_AddSon(node251, node355)
  Body_SetCS(node355, MAT_Vector3(770.581855, 1445.854917, 152.9743), MAT_Vector3(-108.639894, -57.73638, -171.5165))
  Node_ParseIniFile(node355, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node355, 4)
  Node_EnterSimulation(node355)
  Game_LoadProgress_Advance(node0)
  node356 = Node_CreateNode("nod_trash", "des_mine02_91")
  Node_AddSon(node251, node356)
  Body_SetCS(node356, MAT_Vector3(671.713114, 1489.522047, 189.508323), MAT_Vector3(51.761117, -63.13373, 95.5422))
  Node_ParseIniFile(node356, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node356, 4)
  Node_EnterSimulation(node356)
  Game_LoadProgress_Advance(node0)
  node357 = Node_CreateNode("nod_trash", "des_mine02_92")
  Node_AddSon(node251, node357)
  Body_SetCS(node357, MAT_Vector3(694.648348, 1443.613222, 213.19705), MAT_Vector3(7.865642, -25.283135, 143.024004))
  Node_ParseIniFile(node357, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node357, 4)
  Node_EnterSimulation(node357)
  Game_LoadProgress_Advance(node0)
  node358 = Node_CreateNode("nod_trash", "des_mine02_93")
  Node_AddSon(node251, node358)
  Body_SetCS(node358, MAT_Vector3(707.902942, 1530.130521, 137.289244), MAT_Vector3(66.202459, -69.41451, 96.250873))
  Node_ParseIniFile(node358, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node358, 4)
  Node_EnterSimulation(node358)
  Game_LoadProgress_Advance(node0)
  node359 = Node_CreateNode("nod_trash", "des_mine02_94")
  Node_AddSon(node251, node359)
  Body_SetCS(node359, MAT_Vector3(694.680233, 1577.869738, 172.617945), MAT_Vector3(-79.530829, -43.216284, -149.980447))
  Node_ParseIniFile(node359, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node359, 4)
  Node_EnterSimulation(node359)
  Game_LoadProgress_Advance(node0)
  node360 = Node_CreateNode("nod_trash", "des_mine02_95")
  Node_AddSon(node251, node360)
  Body_SetCS(node360, MAT_Vector3(638.756852, 1618.051469, 159.441519), MAT_Vector3(-122.344963, -57.73638, -171.5165))
  Node_ParseIniFile(node360, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node360, 4)
  Node_EnterSimulation(node360)
  Game_LoadProgress_Advance(node0)
  node361 = Node_CreateNode("nod_trash", "des_mine02_96")
  Node_AddSon(node251, node361)
  Body_SetCS(node361, MAT_Vector3(596.133612, 1652.49027, 128.386508), MAT_Vector3(171.887711, -79.735482, 22.660152))
  Node_ParseIniFile(node361, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node361, 4)
  Node_EnterSimulation(node361)
  Game_LoadProgress_Advance(node0)
  node362 = Node_CreateNode("nod_trash", "des_mine02_97")
  Node_AddSon(node251, node362)
  Body_SetCS(node362, MAT_Vector3(604.751342, 1705.321166, 130.63923), MAT_Vector3(-153.753338, -25.28314, 143.024))
  Node_ParseIniFile(node362, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node362, 4)
  Node_EnterSimulation(node362)
  Game_LoadProgress_Advance(node0)
  node363 = Node_CreateNode("nod_trash", "des_mine02_98")
  Node_AddSon(node251, node363)
  Body_SetCS(node363, MAT_Vector3(572.764697, 1733.532238, 137.2892), MAT_Vector3(10.89869, -69.41451, 96.25087))
  Node_ParseIniFile(node363, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node363, 4)
  Node_EnterSimulation(node363)
  Game_LoadProgress_Advance(node0)
  node364 = Node_CreateNode("nod_trash", "des_mine02_99")
  Node_AddSon(node251, node364)
  Body_SetCS(node364, MAT_Vector3(598.043623, 1778.265379, 104.308608), MAT_Vector3(158.661112, -57.73638, -171.5165))
  Node_ParseIniFile(node364, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node364, 4)
  Node_EnterSimulation(node364)
  Game_LoadProgress_Advance(node0)
  node365 = Node_CreateNode("nod_trash", "des_mine02_100")
  Node_AddSon(node251, node365)
  Body_SetCS(node365, MAT_Vector3(543.101611, 1797.552283, 149.013137), MAT_Vector3(-119.842644, -57.73638, -171.5165))
  Node_ParseIniFile(node365, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node365, 4)
  Node_EnterSimulation(node365)
  Game_LoadProgress_Advance(node0)
  node366 = Node_CreateNode("nod_trash", "des_mine02_101")
  Node_AddSon(node251, node366)
  Body_SetCS(node366, MAT_Vector3(776.815813, 1397.409229, 128.3865), MAT_Vector3(5.161819, -79.73548, 22.66015))
  Node_ParseIniFile(node366, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node366, 4)
  Node_EnterSimulation(node366)
  Game_LoadProgress_Advance(node0)
  node367 = Node_CreateNode("nod_trash", "des_mine02_102")
  Node_AddSon(node251, node367)
  Body_SetCS(node367, MAT_Vector3(819.680468, 1446.697441, 106.306354), MAT_Vector3(103.794596, -25.28314, 143.024))
  Node_ParseIniFile(node367, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node367, 4)
  Node_EnterSimulation(node367)
  Game_LoadProgress_Advance(node0)
  node368 = Node_CreateNode("nod_trash", "des_mine02_103")
  Node_AddSon(node251, node368)
  Body_SetCS(node368, MAT_Vector3(869.705062, 1436.997362, 123.766645), MAT_Vector3(-97.202607, -69.41451, 96.25087))
  Node_ParseIniFile(node368, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node368, 4)
  Node_EnterSimulation(node368)
  Game_LoadProgress_Advance(node0)
  node369 = Node_CreateNode("nod_trash", "des_mine02_104")
  Node_AddSon(node251, node369)
  Body_SetCS(node369, MAT_Vector3(877.85936, 1498.658833, 104.3086), MAT_Vector3(-13.475595, -32.154911, 160.192991))
  Node_ParseIniFile(node369, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node369, 4)
  Node_EnterSimulation(node369)
  Game_LoadProgress_Advance(node0)
  node370 = Node_CreateNode("nod_trash", "des_mine02_105")
  Node_AddSon(node251, node370)
  Body_SetCS(node370, MAT_Vector3(910.370673, 1540.10937, 100.662029), MAT_Vector3(-46.593782, -62.230938, -145.420493))
  Node_ParseIniFile(node370, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node370, 4)
  Node_EnterSimulation(node370)
  Game_LoadProgress_Advance(node0)
  node371 = Node_CreateNode("nod_trash", "des_mine02_106")
  Node_AddSon(node251, node371)
  Body_SetCS(node371, MAT_Vector3(943.326859, 1583.99586, 110.902407), MAT_Vector3(146.615452, -79.73548, 22.66015))
  Node_ParseIniFile(node371, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node371, 4)
  Node_EnterSimulation(node371)
  Game_LoadProgress_Advance(node0)
  node372 = Node_CreateNode("nod_trash", "des_mine02_107")
  Node_AddSon(node251, node372)
  Body_SetCS(node372, MAT_Vector3(975.563193, 1633.28386, 104.795429), MAT_Vector3(167.595651, -25.28314, 143.024))
  Node_ParseIniFile(node372, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node372, 4)
  Node_EnterSimulation(node372)
  Game_LoadProgress_Advance(node0)
  node373 = Node_CreateNode("nod_trash", "des_mine02_108")
  Node_AddSon(node251, node373)
  Body_SetCS(node373, MAT_Vector3(1008.527698, 1688.656251, 104.5557), MAT_Vector3(2.517681, -69.41451, 96.25087))
  Node_ParseIniFile(node373, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node373, 4)
  Node_EnterSimulation(node373)
  Game_LoadProgress_Advance(node0)
  node374 = Node_CreateNode("nod_trash", "des_mine02_109")
  Node_AddSon(node251, node374)
  Body_SetCS(node374, MAT_Vector3(1032.561164, 1743.111405, 99.99154), MAT_Vector3(-119.418404, -32.15491, 160.193))
  Node_ParseIniFile(node374, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node374, 4)
  Node_EnterSimulation(node374)
  Game_LoadProgress_Advance(node0)
  node375 = Node_CreateNode("nod_trash", "des_mine02_110")
  Node_AddSon(node251, node375)
  Body_SetCS(node375, MAT_Vector3(1021.378072, 1802.275348, 100.662), MAT_Vector3(132.409699, -62.23094, -145.4205))
  Node_ParseIniFile(node375, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node375, 4)
  Node_EnterSimulation(node375)
  Game_LoadProgress_Advance(node0)
  node376 = Node_CreateNode("nod_trash", "des_mine02_111")
  Node_AddSon(node251, node376)
  Body_SetCS(node376, MAT_Vector3(990.56408, 1842.619559, 108.312164), MAT_Vector3(-13.589986, -82.974864, -25.519453))
  Node_ParseIniFile(node376, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node376, 4)
  Node_EnterSimulation(node376)
  Game_LoadProgress_Advance(node0)
  node377 = Node_CreateNode("nod_trash", "des_mine02_112")
  Node_AddSon(node251, node377)
  Body_SetCS(node377, MAT_Vector3(942.497174, 1901.354995, 95.356649), MAT_Vector3(-37.772366, -25.28314, 143.024))
  Node_ParseIniFile(node377, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node377, 4)
  Node_EnterSimulation(node377)
  Game_LoadProgress_Advance(node0)
  node378 = Node_CreateNode("nod_trash", "des_mine02_113")
  Node_AddSon(node251, node378)
  Body_SetCS(node378, MAT_Vector3(888.073192, 1947.279559, 102.839564), MAT_Vector3(-67.412501, -46.878795, 138.430613))
  Node_ParseIniFile(node378, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node378, 4)
  Node_EnterSimulation(node378)
  Game_LoadProgress_Advance(node0)
  node379 = Node_CreateNode("nod_trash", "des_mine02_114")
  Node_AddSon(node251, node379)
  Body_SetCS(node379, MAT_Vector3(815.999995, 1999.418828, 99.99154), MAT_Vector3(-170.529455, -32.15491, 160.193))
  Node_ParseIniFile(node379, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node379, 4)
  Node_EnterSimulation(node379)
  Game_LoadProgress_Advance(node0)
  node380 = Node_CreateNode("nod_trash", "des_mine02_115")
  Node_AddSon(node251, node380)
  Body_SetCS(node380, MAT_Vector3(857.2288, 2023.108815, 117.229012), MAT_Vector3(-116.501254, -62.23094, -145.4205))
  Node_ParseIniFile(node380, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node380, 4)
  Node_EnterSimulation(node380)
  Game_LoadProgress_Advance(node0)
  node381 = Node_CreateNode("nod_trash", "des_mine02_116")
  Node_AddSon(node251, node381)
  Body_SetCS(node381, MAT_Vector3(767.368426, 2059.911027, 113.912317), MAT_Vector3(-18.028483, -82.97486, -25.51945))
  Node_ParseIniFile(node381, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node381, 4)
  Node_EnterSimulation(node381)
  Game_LoadProgress_Advance(node0)
  node382 = Node_CreateNode("nod_trash", "des_mine02_117")
  Node_AddSon(node251, node382)
  Body_SetCS(node382, MAT_Vector3(821.626017, 2058.817361, 95.35665), MAT_Vector3(165.903477, -25.28314, 143.024))
  Node_ParseIniFile(node382, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node382, 4)
  Node_EnterSimulation(node382)
  Game_LoadProgress_Advance(node0)
  node383 = Node_CreateNode("nod_trash", "des_mine02_118")
  Node_AddSon(node251, node383)
  Body_SetCS(node383, MAT_Vector3(793.59884, 2109.067341, 105.172982), MAT_Vector3(86.283066, -46.8788, 138.4306))
  Node_ParseIniFile(node383, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node383, 4)
  Node_EnterSimulation(node383)
  Game_LoadProgress_Advance(node0)
  node384 = Node_CreateNode("nod_trash", "des_mine02_119")
  Node_AddSon(node251, node384)
  Body_SetCS(node384, MAT_Vector3(806.552564, 2162.38727, 135.692285), MAT_Vector3(71.837893, -27.067149, 130.94795))
  Node_ParseIniFile(node384, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node384, 4)
  Node_EnterSimulation(node384)
  Game_LoadProgress_Advance(node0)
  node385 = Node_CreateNode("nod_trash", "des_mine02_120")
  Node_AddSon(node251, node385)
  Body_SetCS(node385, MAT_Vector3(752.126075, 2131.754513, 132.629321), MAT_Vector3(12.001815, -62.23094, -145.4205))
  Node_ParseIniFile(node385, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node385, 4)
  Node_EnterSimulation(node385)
  Game_LoadProgress_Advance(node0)
  node386 = Node_CreateNode("nod_trash", "des_mine02_121")
  Node_AddSon(node251, node386)
  Body_SetCS(node386, MAT_Vector3(705.933407, 2120.6826, 140.746193), MAT_Vector3(-72.660587, -82.97486, -25.51945))
  Node_ParseIniFile(node386, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node386, 4)
  Node_EnterSimulation(node386)
  Game_LoadProgress_Advance(node0)
  node387 = Node_CreateNode("nod_trash", "des_mine02_122")
  Node_AddSon(node251, node387)
  Body_SetCS(node387, MAT_Vector3(712.530805, 2074.994519, 169.32486), MAT_Vector3(-50.290057, -16.360206, -177.657343))
  Node_ParseIniFile(node387, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node387, 4)
  Node_EnterSimulation(node387)
  Game_LoadProgress_Advance(node0)
  node388 = Node_CreateNode("nod_trash", "des_mine02_123")
  Node_AddSon(node251, node388)
  Body_SetCS(node388, MAT_Vector3(658.83267, 2116.402917, 128.895889), MAT_Vector3(-85.205177, -62.23094, -145.4205))
  Node_ParseIniFile(node388, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node388, 4)
  Node_EnterSimulation(node388)
  Game_LoadProgress_Advance(node0)
  node389 = Node_CreateNode("nod_trash", "des_mine02_124")
  Node_AddSon(node251, node389)
  Body_SetCS(node389, MAT_Vector3(597.287887, 2085.255115, 117.879056), MAT_Vector3(126.199499, -82.97486, -25.51945))
  Node_ParseIniFile(node389, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node389, 4)
  Node_EnterSimulation(node389)
  Game_LoadProgress_Advance(node0)
  node390 = Node_CreateNode("nod_trash", "des_mine02_125")
  Node_AddSon(node251, node390)
  Body_SetCS(node390, MAT_Vector3(712.5308, 2074.995, 169.3249), MAT_Vector3(-50.29006, -16.36021, -177.6573))
  Node_ParseIniFile(node390, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node390, 4)
  Node_EnterSimulation(node390)
  Game_LoadProgress_Advance(node0)
  node391 = Node_CreateNode("nod_trash", "des_mine02_126")
  Node_AddSon(node251, node391)
  Body_SetCS(node391, MAT_Vector3(857.416881, 2184.515771, 131.979573), MAT_Vector3(-143.01462, -82.97486, -25.51945))
  Node_ParseIniFile(node391, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node391, 4)
  Node_EnterSimulation(node391)
  Game_LoadProgress_Advance(node0)
  node392 = Node_CreateNode("nod_trash", "des_mine02_127")
  Node_AddSon(node251, node392)
  Body_SetCS(node392, MAT_Vector3(882.584647, 2232.058623, 142.228054), MAT_Vector3(71.832683, -16.36021, -177.6573))
  Node_ParseIniFile(node392, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node392, 4)
  Node_EnterSimulation(node392)
  Game_LoadProgress_Advance(node0)
  node393 = Node_CreateNode("nod_trash", "des_mine02_128")
  Node_AddSon(node251, node393)
  Body_SetCS(node393, MAT_Vector3(920.999048, 2265.200116, 122.254516), MAT_Vector3(-3.183565, -62.23094, -145.4205))
  Node_ParseIniFile(node393, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node393, 4)
  Node_EnterSimulation(node393)
  Game_LoadProgress_Advance(node0)
  node394 = Node_CreateNode("nod_trash", "des_mine02_129")
  Node_AddSon(node251, node394)
  Body_SetCS(node394, MAT_Vector3(932.671876, 2217.519103, 113.362959), MAT_Vector3(-37.49088, -53.872599, -76.764866))
  Node_ParseIniFile(node394, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node394, 4)
  Node_EnterSimulation(node394)
  Game_LoadProgress_Advance(node0)
  node395 = Node_CreateNode("nod_trash", "des_mine02_130")
  Node_AddSon(node251, node395)
  Body_SetCS(node395, MAT_Vector3(941.631122, 2312.361828, 90.956571), MAT_Vector3(86.573906, -16.36021, -177.6573))
  Node_ParseIniFile(node395, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node395, 4)
  Node_EnterSimulation(node395)
  Game_LoadProgress_Advance(node0)
  node396 = Node_CreateNode("nod_trash", "des_mine02_131")
  Node_AddSon(node251, node396)
  Body_SetCS(node396, MAT_Vector3(937.395542, 2378.125578, 84.692947), MAT_Vector3(62.259515, -46.03848, -86.901122))
  Node_ParseIniFile(node396, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node396, 4)
  Node_EnterSimulation(node396)
  Game_LoadProgress_Advance(node0)
  node397 = Node_CreateNode("nod_trash", "des_mine02_132")
  Node_AddSon(node251, node397)
  Body_SetCS(node397, MAT_Vector3(973.516171, 2417.464931, 92.550549), MAT_Vector3(-95.860824, -8.825656, -174.428776))
  Node_ParseIniFile(node397, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node397, 4)
  Node_EnterSimulation(node397)
  Game_LoadProgress_Advance(node0)
  node398 = Node_CreateNode("nod_trash", "des_mine02_133")
  Node_AddSon(node251, node398)
  Body_SetCS(node398, MAT_Vector3(905.834652, 2513.289062, 120.129257), MAT_Vector3(-114.017811, -62.23094, -145.4205))
  Node_ParseIniFile(node398, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node398, 4)
  Node_EnterSimulation(node398)
  Game_LoadProgress_Advance(node0)
  node399 = Node_CreateNode("nod_trash", "des_mine02_134")
  Node_AddSon(node251, node399)
  Body_SetCS(node399, MAT_Vector3(956.29049, 2484.409066, 104.065063), MAT_Vector3(-21.113464, -53.8726, -76.76487))
  Node_ParseIniFile(node399, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node399, 4)
  Node_EnterSimulation(node399)
  Game_LoadProgress_Advance(node0)
  node400 = Node_CreateNode("nod_trash", "des_mine02_135")
  Node_AddSon(node251, node400)
  Body_SetCS(node400, MAT_Vector3(988.043145, 2526.747637, 90.95657), MAT_Vector3(-44.962967, -16.36021, -177.6573))
  Node_ParseIniFile(node400, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node400, 4)
  Node_EnterSimulation(node400)
  Game_LoadProgress_Advance(node0)
  node401 = Node_CreateNode("nod_trash", "des_mine02_136")
  Node_AddSon(node251, node401)
  Body_SetCS(node401, MAT_Vector3(961.289572, 2592.249723, 90.95657), MAT_Vector3(-66.477129, -16.36021, -177.6573))
  Node_ParseIniFile(node401, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node401, 4)
  Node_EnterSimulation(node401)
  Game_LoadProgress_Advance(node0)
  node402 = Node_CreateNode("nod_trash", "des_mine02_137")
  Node_AddSon(node251, node402)
  Body_SetCS(node402, MAT_Vector3(919.193435, 2461.159121, 123.207758), MAT_Vector3(88.787083, -0.327725, 127.374417))
  Node_ParseIniFile(node402, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node402, 4)
  Node_EnterSimulation(node402)
  Game_LoadProgress_Advance(node0)
  node403 = Node_CreateNode("nod_trash", "des_mine02_138")
  Node_AddSon(node251, node403)
  Body_SetCS(node403, MAT_Vector3(932.246203, 2561.350271, 126.554389), MAT_Vector3(168.037962, 1.593107, 138.664067))
  Node_ParseIniFile(node403, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node403, 4)
  Node_EnterSimulation(node403)
  Game_LoadProgress_Advance(node0)
  node404 = Node_CreateNode("nod_trash", "des_mine02_139")
  Node_AddSon(node251, node404)
  Body_SetCS(node404, MAT_Vector3(870.450738, 2557.807201, 119.913016), MAT_Vector3(-45.420574, 1.593107, 138.6641))
  Node_ParseIniFile(node404, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node404, 4)
  Node_EnterSimulation(node404)
  Game_LoadProgress_Advance(node0)
  node405 = Node_CreateNode("nod_trash", "des_mine02_140")
  Node_AddSon(node251, node405)
  Body_SetCS(node405, MAT_Vector3(853.855167, 2494.924362, 115.238527), MAT_Vector3(169.330422, 1.593107, 138.6641))
  Node_ParseIniFile(node405, "osd/des/des_mine02.osd")
  Body_SetFriendOrFoeID(node405, 4)
  Node_EnterSimulation(node405)
  Game_LoadProgress_Advance(node0)
  node406 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node406)
  Camera_SetBackPlane(node406, 256)
  Node_EnterSimulation(node406)
  Game_LoadProgress_Advance(node0)
  node407 = Node_CreateNode("NOD_Scenario", "IngameScenes")
  Node_AddSon(node0, node407)
  Node_EnterSimulation(node407)
  Game_LoadProgress_Advance(node0)
  node408 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node407, node408)
  Node_EnterSimulation(node408)
  Game_LoadProgress_Advance(node0)
  node409 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node407, node409)
  Node_EnterSimulation(node409)
  Game_LoadProgress_Advance(node0)
  node410 = Node_CreateNode("NOD_Position", "LookFrom_0")
  Node_AddSon(node409, node410)
  Position_SetPosition(node410, MAT_Vector3(1138.234537, 3205.353297, 72))
  Position_SetRadius(node410, 5)
  Game_LoadProgress_Advance(node0)
  node411 = Node_CreateNode("NOD_Path", "PlayerPath_1")
  Node_AddSon(node409, node411)
  Game_LoadProgress_Advance(node0)
  node412 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node411, node412)
  Position_SetPosition(node412, MAT_Vector3(1045.767025, 3188.932913, 63.27852))
  Position_SetRadius(node412, 5)
  Game_LoadProgress_Advance(node0)
  node413 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node411, node413)
  Position_SetPosition(node413, MAT_Vector3(1085.83384, 3188.357796, 64))
  Position_SetRadius(node413, 5)
  Game_LoadProgress_Advance(node0)
  node414 = Node_CreateNode("NOD_Path", "PlayerPath_2")
  Node_AddSon(node409, node414)
  Game_LoadProgress_Advance(node0)
  node415 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node414, node415)
  Position_SetPosition(node415, MAT_Vector3(1121.229897, 3187.984666, 70))
  Position_SetRadius(node415, 5)
  Game_LoadProgress_Advance(node0)
  node416 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node414, node416)
  Position_SetPosition(node416, MAT_Vector3(1269.399075, 3186.803736, 70))
  Position_SetRadius(node416, 5)
  Game_LoadProgress_Advance(node0)
  node417 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node414, node417)
  Position_SetPosition(node417, MAT_Vector3(1355.606956, 3163.185138, 70))
  Position_SetRadius(node417, 5)
  Game_LoadProgress_Advance(node0)
  node418 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node407, node418)
  Node_EnterSimulation(node418)
  Game_LoadProgress_Advance(node0)
  node419 = Node_CreateNode("NOD_Director", "Intro")
  Node_AddSon(node418, node419)
  Node_EnterSimulation(node419)
  Game_LoadProgress_Advance(node0)
  node420 = Node_CreateNode("NOD_Director", "Intro_AddOn")
  Node_AddSon(node418, node420)
  Node_EnterSimulation(node420)
  Game_LoadProgress_Advance(node0)
  node421 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node407, node421)
  Node_EnterSimulation(node421)
  Game_LoadProgress_Advance(node0)
  node422 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node407, node422)
  Node_EnterSimulation(node422)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, F)
SetEnemyMatrixElement(2, 0, N)
SetEnemyMatrixElement(3, 0, N)
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
SetEnemyMatrixElement(3, 1, N)
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
SetEnemyMatrixElement(1, 2, N)
SetEnemyMatrixElement(2, 2, F)
SetEnemyMatrixElement(3, 2, F)
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
SetEnemyMatrixElement(0, 3, N)
SetEnemyMatrixElement(1, 3, N)
SetEnemyMatrixElement(2, 3, F)
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
SetEnemyMatrixElement(0, 4, N)
SetEnemyMatrixElement(1, 4, N)
SetEnemyMatrixElement(2, 4, E)
SetEnemyMatrixElement(3, 4, E)
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
                                                                                                                                                                                                                                  if not (o5200.Value ~= True) then
                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
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
                                                                                                                                                                end
                                                                                                                                                              end
                                                                                                                                                            end
                                                                                                                                                          end
                                                                                                                                                        end
                                                                                                                                                      end
                                                                                                                                                    end
                                                                                                                                                  end
                                                                                                                                                end
                                                                                                                                              end
                                                                                                                                            end
                                                                                                                                          end
                                                                                                                                        end
                                                                                                                                      end
                                                                                                                                    end
                                                                                                                                  end
                                                                                                                                end
                                                                                                                              end
                                                                                                                            end
                                                                                                                          end
                                                                                                                        end
                                                                                                                      end
                                                                                                                    end
                                                                                                                  end
                                                                                                                end
                                                                                                              end
                                                                                                            end
                                                                                                          end
                                                                                                        end
                                                                                                      end
                                                                                                    end
                                                                                                  end
                                                                                                end
                                                                                              end
                                                                                            end
                                                                                          end
                                                                                        end
                                                                                      end
                                                                                    end
                                                                                  end
                                                                                end
                                                                              end
                                                                            end
                                                                          end
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
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
                                                                                                                                                                                                                                  if not (o5224.Value == True) then
                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
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
                                                                                                                                                                                  end
                                                                                                                                                                                end
                                                                                                                                                                              end
                                                                                                                                                                            end
                                                                                                                                                                          end
                                                                                                                                                                        end
                                                                                                                                                                      end
                                                                                                                                                                    end
                                                                                                                                                                  end
                                                                                                                                                                end
                                                                                                                                                              end
                                                                                                                                                            end
                                                                                                                                                          end
                                                                                                                                                        end
                                                                                                                                                      end
                                                                                                                                                    end
                                                                                                                                                  end
                                                                                                                                                end
                                                                                                                                              end
                                                                                                                                            end
                                                                                                                                          end
                                                                                                                                        end
                                                                                                                                      end
                                                                                                                                    end
                                                                                                                                  end
                                                                                                                                end
                                                                                                                              end
                                                                                                                            end
                                                                                                                          end
                                                                                                                        end
                                                                                                                      end
                                                                                                                    end
                                                                                                                  end
                                                                                                                end
                                                                                                              end
                                                                                                            end
                                                                                                          end
                                                                                                        end
                                                                                                      end
                                                                                                    end
                                                                                                  end
                                                                                                end
                                                                                              end
                                                                                            end
                                                                                          end
                                                                                        end
                                                                                      end
                                                                                    end
                                                                                  end
                                                                                end
                                                                              end
                                                                            end
                                                                          end
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
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
o30 = DockLib.CreateDockMaster("/Scenario_Static/Navigation/Atacama_DockApproach_Path", "/Scenario_Static/Navigation/Atacama_DockDock_Path", "/Scenario_Static/Navigation/Atacama_DockPatrolArea")
S_o31 = { [nil] = {}, Start = function(L0)

end }
S_o77 = { [nil] = {}, Start = function(L0)

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

end }
S_o721 = { [nil] = {}, Start = function(L0)

end }
S_o767 = { [nil] = {}, Start = function(L0)

end }
S_o813 = { [nil] = {}, Start = function(L0)

end }
S_o859 = { [nil] = {}, Start = function(L0)

end }
S_o905 = { [nil] = {}, Start = function(L0)

end }
S_o951 = { [nil] = {}, Start = function(L0)

end }
S_o997 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_SetAngleArea(L0.Node, 170, -10, 60)
  CallFunction(o997, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code2")
  else
    CallFunction(o997, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
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
  Turret_SetAngleArea(L0.Node, 170, -10, 60)
  CallFunction(o1042, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code2")
  else
    CallFunction(o1042, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1087 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_SetAngleArea(L0.Node, 170, -10, 60)
  CallFunction(o1087, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code2")
  else
    CallFunction(o1087, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1132 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_SetAngleArea(L0.Node, 170, -10, 60)
  CallFunction(o1132, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code2")
  else
    CallFunction(o1132, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1177 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_SetAngleArea(L0.Node, 170, -10, 60)
  CallFunction(o1177, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code2")
  else
    CallFunction(o1177, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1222 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_SetAngleArea(L0.Node, 170, -10, 60)
  CallFunction(o1222, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code2")
  else
    CallFunction(o1222, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1267 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_SetAngleArea(L0.Node, 170, -10, 60)
  CallFunction(o1267, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code2")
  else
    CallFunction(o1267, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1312 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_SetAngleArea(L0.Node, 170, -10, 60)
  CallFunction(o1312, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code2")
  else
    CallFunction(o1312, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1357 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_SetAngleArea(L0.Node, 170, -10, 60)
  CallFunction(o1357, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code2")
  else
    CallFunction(o1357, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1402 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_SetAngleArea(L0.Node, 170, -10, 60)
  CallFunction(o1402, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code2")
  else
    CallFunction(o1402, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1447 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_SetAngleArea(L0.Node, 170, -10, 60)
  CallFunction(o1447, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code2")
  else
    CallFunction(o1447, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1492 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_SetAngleArea(L0.Node, 170, -10, 60)
  CallFunction(o1492, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code2")
  else
    CallFunction(o1492, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1537 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_SetAngleArea(L0.Node, 170, -10, 60)
  CallFunction(o1537, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code2")
  else
    CallFunction(o1537, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1582 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_SetAngleArea(L0.Node, 170, -10, 60)
  CallFunction(o1582, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code2")
  else
    CallFunction(o1582, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1627 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_SetAngleArea(L0.Node, 170, -10, 60)
  CallFunction(o1627, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code2")
  else
    CallFunction(o1627, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1672 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_SetAngleArea(L0.Node, 170, -10, 60)
  CallFunction(o1672, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code2")
  else
    CallFunction(o1672, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1717 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_SetAngleArea(L0.Node, 170, -10, 60)
  CallFunction(o1717, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code2")
  else
    CallFunction(o1717, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1762 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_SetAngleArea(L0.Node, 170, -10, 60)
  CallFunction(o1762, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code2")
  else
    CallFunction(o1762, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
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
S_o3233 = { [nil] = {}, Start = function(L0)

end }
S_o3279 = { [nil] = {}, Start = function(L0)

end }
S_o3325 = { [nil] = {}, Start = function(L0)

end }
S_o3371 = { [nil] = {}, Start = function(L0)

end }
S_o3417 = { [nil] = {}, Start = function(L0)

end }
S_o3463 = { [nil] = {}, Start = function(L0)

end }
S_o3509 = { [nil] = {}, Start = function(L0)

end }
S_o3555 = { [nil] = {}, Start = function(L0)

end }
S_o3601 = { [nil] = {}, Start = function(L0)

end }
S_o3647 = { [nil] = {}, Start = function(L0)

end }
S_o3693 = { [nil] = {}, Start = function(L0)

end }
S_o3739 = { [nil] = {}, Start = function(L0)

end }
S_o3785 = { [nil] = {}, Start = function(L0)

end }
S_o3831 = { [nil] = {}, Start = function(L0)

end }
S_o3877 = { [nil] = {}, Start = function(L0)

end }
S_o3923 = { [nil] = {}, Start = function(L0)

end }
S_o3969 = { [nil] = {}, Start = function(L0)

end }
S_o4015 = { [nil] = {}, Start = function(L0)

end }
S_o4061 = { [nil] = {}, Start = function(L0)

end }
S_o4107 = { [nil] = {}, Start = function(L0)

end }
S_o4153 = { [nil] = {}, Start = function(L0)

end }
S_o4199 = { [nil] = {}, Start = function(L0)

end }
S_o4245 = { [nil] = {}, Start = function(L0)

end }
S_o4291 = { [nil] = {}, Start = function(L0)

end }
S_o4337 = { [nil] = {}, Start = function(L0)

end }
S_o4383 = { [nil] = {}, Start = function(L0)

end }
S_o4429 = { [nil] = {}, Start = function(L0)

end }
S_o4475 = { [nil] = {}, Start = function(L0)

end }
S_o4521 = { [nil] = {}, Start = function(L0)

end }
S_o4567 = { [nil] = {}, Start = function(L0)

end }
S_o4613 = { [nil] = {}, Start = function(L0)

end }
S_o4659 = { [nil] = {}, Start = function(L0)

end }
S_o4705 = { [nil] = {}, Start = function(L0)

end }
S_o4751 = { [nil] = {}, Start = function(L0)

end }
S_o4797 = { [nil] = {}, Start = function(L0)

end }
S_o4843 = { [nil] = {}, Start = function(L0)

end }
S_o4889 = { [nil] = {}, Start = function(L0)

end }
S_o4935 = { [nil] = {}, Start = function(L0)

end }
S_o4981 = { [nil] = {}, Start = function(L0)

end }
S_o5027 = { [nil] = {}, Start = function(L0)

end }
S_o5073 = { [nil] = {}, Start = function(L0)

end }
S_o5119 = { [nil] = {}, Start = function(L0)

end }
S_o5165 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5165, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5165, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5165, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o5165, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5165, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5165, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5170.SetStateValue(L1)
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
o5170 = { [nil] = {}, Start = function()
  o5170["Value"] = False
  o5232.StartCalculate()
  o5402.StartCalculate()
  o5461.StartCalculate()
  o5520.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5170.Value == L0) then
    o5170["Value"] = L0
    o5232.ReCalculate()
    o5402.ReCalculate()
    o5461.ReCalculate()
    o5520.ReCalculate()
  end
end }
S_o5171 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5171, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5171, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5171, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "dealer", "", "", "", False, False, True)
  CallFunction(o5171, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5171, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5171, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5176.SetStateValue(L1)
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
o5176 = { [nil] = {}, Start = function()
  o5176["Value"] = False
  o5196.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5176.Value == L0) then
    o5176["Value"] = L0
    o5196.ReCalculate()
  end
end }
S_o5177 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_vendetta2", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_shell", 9999)
  Body_AddItem(L0.Node, "gun_plasma1", 1)
  Body_AddItem(L0.Node, "device_generator0", 1)
  Body_AddItem(L0.Node, "ammo_energy", 200)
  Body_AddItem(L0.Node, "torpedo_stanley", 2)
  Body_AddItem(L0.Node, "buzzer_normal", 4)
  Body_AddItem(L0.Node, "gun_vendetta1", 1)
  Body_AddItem(L0.Node, "gun_empactor", 1)
  CallFunction(o5177, "Code10")
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
o5191 = { [nil] = {}, GetCalculated = function()
  if not (o5403.Value == True) then
    if not (o5462.Value == True) then
      if not (o5521.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o5191.SetStateValue(o5191.GetCalculated())
end, StartCalculate = function()
  o5191["Value"] = o5191.GetCalculated()
  o5399.StartCalculate()
  o5400.StartCalculate()
  o5458.StartCalculate()
  o5459.StartCalculate()
  o5517.StartCalculate()
  o5518.StartCalculate()
end, ChangeTo1 = function()
  CallFunction(o5228, "Code10")
  SendRadioMessageTake(o5397.Node, o5177.Node, 115)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  Game_PlayMusic(GetGameNode(), "Agressive")
end, SetStateValue = function(L0)
  if not (o5191.Value == L0) then
    o5191["Value"] = L0
    o5399.ReCalculate()
    o5400.ReCalculate()
    o5458.ReCalculate()
    o5459.ReCalculate()
    o5517.ReCalculate()
    o5518.ReCalculate()
    if not (L0 ~= 1) then
      o5191.ChangeTo1()
    end
  end
end }
o5192 = { [nil] = {}, GetCalculated = function()
  if not (o5403.Value == True) then
    if not (o5462.Value == True) then
      if not (o5521.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o5192.SetStateValue(o5192.GetCalculated())
end, StartCalculate = function()
  o5192["Value"] = o5192.GetCalculated()
end, ChangeTo1 = function()
  SED_SetTaskTextKey(0, -1, -1)
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
end, SetStateValue = function(L0)
  if not (o5192.Value == L0) then
    DelayedFunction(4, o5192, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5192.Value == L0) then
    o5192["Value"] = L0
    if not (L0 ~= 1) then
      o5192.ChangeTo1()
    end
  end
end }
o5193 = { [nil] = {}, GetCalculated = function()
  if not (o5415.Value ~= True) then
    if not (o5474.Value ~= True) then
      if not (o5533.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o5193.SetStateValue(o5193.GetCalculated())
end, StartCalculate = function()
  o5193["Value"] = o5193.GetCalculated()
  o5577.StartCalculate()
  o5634.StartCalculate()
  o5691.StartCalculate()
  o5748.StartCalculate()
  o5805.StartCalculate()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o5864.Node)
  SED_SetTaskTextKey(2101, -1, -1)
  SendRadioMessageTake(o5228.Node, o5177.Node, 116)
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o5193.Value == L0) then
    DelayedFunction(2, o5193, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5193.Value == L0) then
    o5193["Value"] = L0
    o5577.ReCalculate()
    o5634.ReCalculate()
    o5691.ReCalculate()
    o5748.ReCalculate()
    o5805.ReCalculate()
    if not (L0 ~= 1) then
      o5193.ChangeTo1()
    end
  end
end }
o5194 = { [nil] = {}, GetCalculated = function()
  if not (o5867.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5194.SetStateValue(o5194.GetCalculated())
end, StartCalculate = function()
  o5194["Value"] = o5194.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o5869.Node)
end, SetStateValue = function(L0)
  if not (o5194.Value == L0) then
    o5194["Value"] = L0
    if not (L0 ~= 1) then
      o5194.ChangeTo1()
    end
  end
end }
o5195 = { [nil] = {}, GetCalculated = function()
  if not (o5872.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5195.SetStateValue(o5195.GetCalculated())
end, StartCalculate = function()
  o5195["Value"] = o5195.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 2, 2000, 2101)
  SED_SetTaskTextKey(2102, -1, -1)
  SendRadioMessageTake(o5228.Node, o5177.Node, 117)
  Game_SetWayPoint(GetGameNode(), o5859.Node)
  Game_PlayMusic(GetGameNode(), "Track4")
end, SetStateValue = function(L0)
  if not (o5195.Value == L0) then
    DelayedFunction(2, o5195, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5195.Value == L0) then
    o5195["Value"] = L0
    if not (L0 ~= 1) then
      o5195.ChangeTo1()
    end
  end
end }
o5196 = { [nil] = {}, GetCalculated = function()
  if not (o5176.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5196.SetStateValue(o5196.GetCalculated())
end, StartCalculate = function()
  o5196["Value"] = o5196.GetCalculated()
  o5200.StartCalculate()
  o5576.StartCalculate()
  o5633.StartCalculate()
  o5690.StartCalculate()
  o5747.StartCalculate()
  o5804.StartCalculate()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  SED_SetTaskTextKey(0, -1, -1)
  Game_PrimaryObjectiveReached(GetGameNode(), 3, 2000, 2102)
  SendRadioMessageTake(o5228.Node, o5177.Node, 118)
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o5196.Value == L0) then
    DelayedFunction(5, o5196, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5196.Value == L0) then
    o5196["Value"] = L0
    o5200.ReCalculate()
    o5576.ReCalculate()
    o5633.ReCalculate()
    o5690.ReCalculate()
    o5747.ReCalculate()
    o5804.ReCalculate()
    if not (L0 ~= 1) then
      o5196.ChangeTo1()
    end
  end
end }
o5197 = { [nil] = {}, GetCalculated = function()
  if not (o5264.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5197.SetStateValue(o5197.GetCalculated())
end, StartCalculate = function()
  o5197["Value"] = o5197.GetCalculated()
  o5224.StartCalculate()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  SED_SetTaskTextKey(0, -1, -1)
  Game_PrimaryObjectiveFailed(GetGameNode(), 3, 2001, 2100)
end, SetStateValue = function(L0)
  if not (o5197.Value == L0) then
    DelayedFunction(2, o5197, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5197.Value == L0) then
    o5197["Value"] = L0
    o5224.ReCalculate()
    if not (L0 ~= 1) then
      o5197.ChangeTo1()
    end
  end
end }
o5199 = { [nil] = {}, GetCalculated = function()
  if not (o5590.Value ~= True) then
    if not (o5647.Value ~= True) then
      if not (o5704.Value ~= True) then
        if not (o5761.Value ~= True) then
          if not (o5818.Value ~= True) then
            if not (o5262.Value ~= False) then
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
  o5199.SetStateValue(o5199.GetCalculated())
end, StartCalculate = function()
  o5199["Value"] = o5199.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 1, 2002, 2103)
  SendRadioMessageTake(o5228.Node, o5177.Node, 122)
end, SetStateValue = function(L0)
  if not (o5199.Value == L0) then
    DelayedFunction(2, o5199, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5199.Value == L0) then
    o5199["Value"] = L0
    if not (L0 ~= 1) then
      o5199.ChangeTo1()
    end
  end
end }
o5200 = { [nil] = {}, GetCalculated = function()
  if not (o5196.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5200.SetStateValue(o5200.GetCalculated())
end, StartCalculate = function()
  o5200["Value"] = o5200.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5200.Value == L0) then
    o5200["Value"] = L0
    o2.ReCalculate()
  end
end }
o5224 = { [nil] = {}, GetCalculated = function()
  if not (o5197.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5224.SetStateValue(o5224.GetCalculated())
end, StartCalculate = function()
  o5224["Value"] = o5224.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5224.Value == L0) then
    o5224["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o5228 = { [nil] = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5228, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5228, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5228, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0.915646)
  Body_SetEmpShield(L0.Node, 0.447987)
  CallFunction(o5228, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code6")
  else
    CallFunction(o5228, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o5228, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5228, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AvengerPath_1", 0.2, 1 } }("Code9")
  else
    CallFunction(o5228, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code10")
  else
    CallFunction(o5228, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  StopAllActiveBehaviours(L0)
  CallFunction(o5228, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code12")
  else
    CallFunction(o5228, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 3 } }("Code13")
  else
    CallFunction(o5228, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/AvengerPath_2", "pos_1", "pos_2", 1, 1 } }("Code14")
  else
    CallFunction(o5228, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/AvengerPath_2", "pos_2", "pos_3", 0.5, 1 } }("Code15")
  else
    CallFunction(o5228, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code16")
  else
    CallFunction(o5228, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code17")
  else
    CallFunction(o5228, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5228, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/AvengerPath_3", "pos_1", "pos_4", 1, 2 } }("Code19")
  else
    CallFunction(o5228, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/AvengerPath_3", "pos_5", "pos_6", 0.5, 2 } }("Code20")
  else
    CallFunction(o5228, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code21")
  else
    CallFunction(o5228, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code22")
  else
    CallFunction(o5228, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5228, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AvengerPath_Canyon1", 0.6, 2 } }("Code24")
  else
    CallFunction(o5228, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AvengerPath_Canyon2", 0.4, 2 } }("Code25")
  else
    CallFunction(o5228, "Code25")
  end
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AvengerPath_Canyon3", 0.5, 2 } }("Code26")
  else
    CallFunction(o5228, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AvengerPath_Canyon4", 0.6, 2 } }("Code27")
  else
    CallFunction(o5228, "Code27")
  end
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AvengerPath_Canyon5", 0.6, 2 } }("Code28")
  else
    CallFunction(o5228, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AvengerPath_Canyon6", 0.23, 2 } }("Code29")
  else
    CallFunction(o5228, "Code29")
  end
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AvengerPath_CanyonOUT", 1, 2 } }("Code30")
  else
    CallFunction(o5228, "Code30")
  end
end, Code30 = function(L0)
  L0["CodeIndex"] = 30
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o30, nil, 0, "Code31")
  else
    CallFunction(o5228, "Code31")
  end
end }, Code31 = function(L0)
  L0["CodeIndex"] = 31
end, SetStateValue_DestEmp = function(L0, L1)
  o5262.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o5264.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o5232.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 17) then
    if not (L0.CodeIndex >= 18) then
      if not (o5248.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 22) then
    if not (L0.CodeIndex >= 23) then
      if not (o5249.Value ~= True) then
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
o5232 = { [nil] = {}, GetCalculated = function()
  if not (o5170.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5232.SetStateValue(o5232.GetCalculated())
end, StartCalculate = function()
  o5232["Value"] = o5232.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5232.Value == L0) then
    o5232["Value"] = L0
    CallFunction(o5228, "ProcesseStateChange")
  end
end }
o5248 = { [nil] = {}, GetCalculated = function()
  if not (o5867.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5248.SetStateValue(o5248.GetCalculated())
end, StartCalculate = function()
  o5248["Value"] = o5248.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5248.Value == L0) then
    o5248["Value"] = L0
    CallFunction(o5228, "ProcesseStateChange")
  end
end }
o5249 = { [nil] = {}, GetCalculated = function()
  if not (o5872.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5249.SetStateValue(o5249.GetCalculated())
end, StartCalculate = function()
  o5249["Value"] = o5249.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5249.Value == L0) then
    DelayedFunction(11, o5249, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5249.Value == L0) then
    o5249["Value"] = L0
    CallFunction(o5228, "ProcesseStateChange")
  end
end }
o5262 = { [nil] = {}, Start = function()
  o5262["Value"] = False
  o5199.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5262.Value == L0) then
    o5262["Value"] = L0
    o5199.ReCalculate()
  end
end }
o5264 = { [nil] = {}, Start = function()
  o5264["Value"] = False
  o5197.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5264.Value == L0) then
    o5264["Value"] = L0
    o5197.ReCalculate()
  end
end }
S_o5303 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5303, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5303, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5303, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Brainfire_TankPatrolArea", "/Scenario_Dynamic/Navigation/Brainfire_TankPatrolArea", "/Scenario_Dynamic/Navigation/Brainfire_TankPatrolArea", "E", "", "", "", 15, "Code4")
  else
    CallFunction(o5303, "Code4")
  end
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
S_o5350 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5350, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5350, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5350, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Brainfire_TankPatrolArea", "/Scenario_Dynamic/Navigation/Brainfire_TankPatrolArea", "/Scenario_Dynamic/Navigation/Brainfire_TankPatrolArea", "E", "", "", "", 15, "Code4")
  else
    CallFunction(o5350, "Code4")
  end
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
S_o5397 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5397, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5397, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5397, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code4")
  else
    CallFunction(o5397, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o5397, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5397, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Intrepido1Path_1", 0.2, 1 } }("Code7")
  else
    CallFunction(o5397, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/OverallArea", "pla", "dealer", "", "", 20, 0.15, "Code8")
  else
    CallFunction(o5397, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o5397, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_Attacked = function(L0, L1)
  o5403.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o5415.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o5402.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o5399.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o5400.Value ~= True) then
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
o5399 = { [nil] = {}, GetCalculated = function()
  if not (o5191.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5399.SetStateValue(o5399.GetCalculated())
end, StartCalculate = function()
  o5399["Value"] = o5399.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5399.Value == L0) then
    DelayedFunction(2, o5399, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5399.Value == L0) then
    o5399["Value"] = L0
    CallFunction(o5397, "ProcesseStateChange")
  end
end }
o5400 = { [nil] = {}, GetCalculated = function()
  if not (True ~= True) then
    if not (o5191.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5400.SetStateValue(o5400.GetCalculated())
end, StartCalculate = function()
  o5400["Value"] = o5400.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5400.Value == L0) then
    o5400["Value"] = L0
    CallFunction(o5397, "ProcesseStateChange")
  end
end }
o5402 = { [nil] = {}, GetCalculated = function()
  if not (o5170.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5402.SetStateValue(o5402.GetCalculated())
end, StartCalculate = function()
  o5402["Value"] = o5402.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5402.Value == L0) then
    o5402["Value"] = L0
    CallFunction(o5397, "ProcesseStateChange")
  end
end }
o5403 = { [nil] = {}, Start = function()
  o5403["Value"] = False
  o5191.StartCalculate()
  o5192.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5403.Value == L0) then
    o5403["Value"] = L0
    o5191.ReCalculate()
    o5192.ReCalculate()
  end
end }
o5415 = { [nil] = {}, Start = function()
  o5415["Value"] = False
  o5193.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5415.Value == L0) then
    o5415["Value"] = L0
    o5193.ReCalculate()
  end
end }
S_o5456 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5456, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5456, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5456, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code4")
  else
    CallFunction(o5456, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o5456, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5456, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Intrepido1Path_2", 0.2, 1 } }("Code7")
  else
    CallFunction(o5456, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/OverallArea", "pla", "dealer", "", "", 20, 0.15, "Code8")
  else
    CallFunction(o5456, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o5456, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_Attacked = function(L0, L1)
  o5462.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o5474.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o5461.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o5458.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o5459.Value ~= True) then
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
o5458 = { [nil] = {}, GetCalculated = function()
  if not (o5191.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5458.SetStateValue(o5458.GetCalculated())
end, StartCalculate = function()
  o5458["Value"] = o5458.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5458.Value == L0) then
    DelayedFunction(2, o5458, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5458.Value == L0) then
    o5458["Value"] = L0
    CallFunction(o5456, "ProcesseStateChange")
  end
end }
o5459 = { [nil] = {}, GetCalculated = function()
  if not (True ~= True) then
    if not (o5191.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5459.SetStateValue(o5459.GetCalculated())
end, StartCalculate = function()
  o5459["Value"] = o5459.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5459.Value == L0) then
    o5459["Value"] = L0
    CallFunction(o5456, "ProcesseStateChange")
  end
end }
o5461 = { [nil] = {}, GetCalculated = function()
  if not (o5170.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5461.SetStateValue(o5461.GetCalculated())
end, StartCalculate = function()
  o5461["Value"] = o5461.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5461.Value == L0) then
    o5461["Value"] = L0
    CallFunction(o5456, "ProcesseStateChange")
  end
end }
o5462 = { [nil] = {}, Start = function()
  o5462["Value"] = False
  o5191.StartCalculate()
  o5192.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5462.Value == L0) then
    o5462["Value"] = L0
    o5191.ReCalculate()
    o5192.ReCalculate()
  end
end }
o5474 = { [nil] = {}, Start = function()
  o5474["Value"] = False
  o5193.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5474.Value == L0) then
    o5474["Value"] = L0
    o5193.ReCalculate()
  end
end }
S_o5515 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5515, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5515, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5515, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code4")
  else
    CallFunction(o5515, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o5515, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5515, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Intrepido1Path_3", 0.2, 1 } }("Code7")
  else
    CallFunction(o5515, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/OverallArea", "pla", "dealer", "", "", 20, 0.15, "Code8")
  else
    CallFunction(o5515, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o5515, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_Attacked = function(L0, L1)
  o5521.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o5533.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o5520.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o5517.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o5518.Value ~= True) then
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
o5517 = { [nil] = {}, GetCalculated = function()
  if not (o5191.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5517.SetStateValue(o5517.GetCalculated())
end, StartCalculate = function()
  o5517["Value"] = o5517.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5517.Value == L0) then
    DelayedFunction(2, o5517, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5517.Value == L0) then
    o5517["Value"] = L0
    CallFunction(o5515, "ProcesseStateChange")
  end
end }
o5518 = { [nil] = {}, GetCalculated = function()
  if not (True ~= True) then
    if not (o5191.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5518.SetStateValue(o5518.GetCalculated())
end, StartCalculate = function()
  o5518["Value"] = o5518.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5518.Value == L0) then
    o5518["Value"] = L0
    CallFunction(o5515, "ProcesseStateChange")
  end
end }
o5520 = { [nil] = {}, GetCalculated = function()
  if not (o5170.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5520.SetStateValue(o5520.GetCalculated())
end, StartCalculate = function()
  o5520["Value"] = o5520.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5520.Value == L0) then
    o5520["Value"] = L0
    CallFunction(o5515, "ProcesseStateChange")
  end
end }
o5521 = { [nil] = {}, Start = function()
  o5521["Value"] = False
  o5191.StartCalculate()
  o5192.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5521.Value == L0) then
    o5521["Value"] = L0
    o5191.ReCalculate()
    o5192.ReCalculate()
  end
end }
o5533 = { [nil] = {}, Start = function()
  o5533["Value"] = False
  o5193.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5533.Value == L0) then
    o5533["Value"] = L0
    o5193.ReCalculate()
  end
end }
S_o5574 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5574, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5574, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5574, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/SecondIntrepidoScouts_Path", 1, 1 } }("Code4")
  else
    CallFunction(o5574, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Intrepido_PatrolArea", "/Scenario_Dynamic/Navigation/Intrepido_TriggerArea", "/Scenario_Dynamic/Navigation/Intrepido_FollowArea", "E", "", "", "", 0.25, "Code5")
  else
    CallFunction(o5574, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o5574, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o5590.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5577.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5576.Value ~= True) then
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
o5576 = { [nil] = {}, GetCalculated = function()
  if not (o5196.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5576.SetStateValue(o5576.GetCalculated())
end, StartCalculate = function()
  o5576["Value"] = o5576.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5576.Value == L0) then
    o5576["Value"] = L0
    CallFunction(o5574, "ProcesseStateChange")
  end
end }
o5577 = { [nil] = {}, GetCalculated = function()
  if not (o5193.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5577.SetStateValue(o5577.GetCalculated())
end, StartCalculate = function()
  o5577["Value"] = o5577.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5577.Value == L0) then
    DelayedFunction(30.34279, o5577, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5577.Value == L0) then
    o5577["Value"] = L0
    CallFunction(o5574, "ProcesseStateChange")
  end
end }
o5590 = { [nil] = {}, Start = function()
  o5590["Value"] = False
  o5199.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5590.Value == L0) then
    o5590["Value"] = L0
    o5199.ReCalculate()
  end
end }
S_o5631 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5631, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5631, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5631, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/SecondIntrepidoScouts_Path", 1, 1 } }("Code4")
  else
    CallFunction(o5631, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Intrepido_PatrolArea", "/Scenario_Dynamic/Navigation/Intrepido_TriggerArea", "/Scenario_Dynamic/Navigation/Intrepido_FollowArea", "E", "", "", "", 0.25, "Code5")
  else
    CallFunction(o5631, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o5631, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o5647.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5634.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5633.Value ~= True) then
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
o5633 = { [nil] = {}, GetCalculated = function()
  if not (o5196.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5633.SetStateValue(o5633.GetCalculated())
end, StartCalculate = function()
  o5633["Value"] = o5633.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5633.Value == L0) then
    o5633["Value"] = L0
    CallFunction(o5631, "ProcesseStateChange")
  end
end }
o5634 = { [nil] = {}, GetCalculated = function()
  if not (o5193.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5634.SetStateValue(o5634.GetCalculated())
end, StartCalculate = function()
  o5634["Value"] = o5634.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5634.Value == L0) then
    DelayedFunction(31.34279, o5634, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5634.Value == L0) then
    o5634["Value"] = L0
    CallFunction(o5631, "ProcesseStateChange")
  end
end }
o5647 = { [nil] = {}, Start = function()
  o5647["Value"] = False
  o5199.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5647.Value == L0) then
    o5647["Value"] = L0
    o5199.ReCalculate()
  end
end }
S_o5688 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5688, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5688, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5688, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/SecondIntrepidoScouts_Path", 1, 1 } }("Code4")
  else
    CallFunction(o5688, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Intrepido_PatrolArea", "/Scenario_Dynamic/Navigation/Intrepido_TriggerArea", "/Scenario_Dynamic/Navigation/Intrepido_FollowArea", "E", "", "", "", 0.25, "Code5")
  else
    CallFunction(o5688, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o5688, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o5704.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5691.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5690.Value ~= True) then
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
o5690 = { [nil] = {}, GetCalculated = function()
  if not (o5196.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5690.SetStateValue(o5690.GetCalculated())
end, StartCalculate = function()
  o5690["Value"] = o5690.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5690.Value == L0) then
    o5690["Value"] = L0
    CallFunction(o5688, "ProcesseStateChange")
  end
end }
o5691 = { [nil] = {}, GetCalculated = function()
  if not (o5193.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5691.SetStateValue(o5691.GetCalculated())
end, StartCalculate = function()
  o5691["Value"] = o5691.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5691.Value == L0) then
    DelayedFunction(30.94279, o5691, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5691.Value == L0) then
    o5691["Value"] = L0
    CallFunction(o5688, "ProcesseStateChange")
  end
end }
o5704 = { [nil] = {}, Start = function()
  o5704["Value"] = False
  o5199.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5704.Value == L0) then
    o5704["Value"] = L0
    o5199.ReCalculate()
  end
end }
S_o5745 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5745, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5745, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5745, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/SecondIntrepidoScouts_Path", 1, 1 } }("Code4")
  else
    CallFunction(o5745, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Intrepido_PatrolArea", "/Scenario_Dynamic/Navigation/Intrepido_TriggerArea", "/Scenario_Dynamic/Navigation/Intrepido_FollowArea", "E", "", "", "", 0.25, "Code5")
  else
    CallFunction(o5745, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o5745, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o5761.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5748.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5747.Value ~= True) then
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
o5747 = { [nil] = {}, GetCalculated = function()
  if not (o5196.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5747.SetStateValue(o5747.GetCalculated())
end, StartCalculate = function()
  o5747["Value"] = o5747.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5747.Value == L0) then
    o5747["Value"] = L0
    CallFunction(o5745, "ProcesseStateChange")
  end
end }
o5748 = { [nil] = {}, GetCalculated = function()
  if not (o5193.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5748.SetStateValue(o5748.GetCalculated())
end, StartCalculate = function()
  o5748["Value"] = o5748.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5748.Value == L0) then
    DelayedFunction(32.74279, o5748, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5748.Value == L0) then
    o5748["Value"] = L0
    CallFunction(o5745, "ProcesseStateChange")
  end
end }
o5761 = { [nil] = {}, Start = function()
  o5761["Value"] = False
  o5199.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5761.Value == L0) then
    o5761["Value"] = L0
    o5199.ReCalculate()
  end
end }
S_o5802 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5802, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5802, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5802, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/SecondIntrepidoScouts_Path", 1, 1 } }("Code4")
  else
    CallFunction(o5802, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Intrepido_PatrolArea", "/Scenario_Dynamic/Navigation/Intrepido_TriggerArea", "/Scenario_Dynamic/Navigation/Intrepido_FollowArea", "E", "", "", "", 0.25, "Code5")
  else
    CallFunction(o5802, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o5802, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o5818.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5805.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5804.Value ~= True) then
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
o5804 = { [nil] = {}, GetCalculated = function()
  if not (o5196.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5804.SetStateValue(o5804.GetCalculated())
end, StartCalculate = function()
  o5804["Value"] = o5804.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5804.Value == L0) then
    o5804["Value"] = L0
    CallFunction(o5802, "ProcesseStateChange")
  end
end }
o5805 = { [nil] = {}, GetCalculated = function()
  if not (o5193.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5805.SetStateValue(o5805.GetCalculated())
end, StartCalculate = function()
  o5805["Value"] = o5805.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5805.Value == L0) then
    DelayedFunction(31.94279, o5805, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5805.Value == L0) then
    o5805["Value"] = L0
    CallFunction(o5802, "ProcesseStateChange")
  end
end }
o5818 = { [nil] = {}, Start = function()
  o5818["Value"] = False
  o5199.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5818.Value == L0) then
    o5818["Value"] = L0
    o5199.ReCalculate()
  end
end }
S_o5859 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o5228.Node)
  CallFunction(o5859, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5864 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o5864, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o5867.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5867 = { [nil] = {}, Start = function()
  o5867["Value"] = False
  o5194.StartCalculate()
  o5248.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5867.Value == L0) then
    o5867["Value"] = L0
    o5194.ReCalculate()
    o5248.ReCalculate()
  end
end }
S_o5869 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o5869, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o5872.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5872 = { [nil] = {}, Start = function()
  o5872["Value"] = False
  o5195.StartCalculate()
  o5249.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5872.Value == L0) then
    o5872["Value"] = L0
    o5195.ReCalculate()
    o5249.ReCalculate()
  end
end }
S_o5874 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5874, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5874, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5874, "Code3")
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
S_o5916 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5916, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5916, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5916, "Code3")
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
S_o5958 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5958, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5958, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5958, "Code3")
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
S_o6000 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6000, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6000, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6000, "Code3")
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
S_o6042 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6042, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6042, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6042, "Code3")
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
S_o6084 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6084, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6084, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6084, "Code3")
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
S_o6126 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6126, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6126, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6126, "Code3")
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
S_o6168 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6168, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6168, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6168, "Code3")
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
S_o6210 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6210, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6210, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6210, "Code3")
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
S_o6252 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6252, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6252, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6252, "Code3")
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
S_o6294 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6294, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6294, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6294, "Code3")
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
S_o6336 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6336, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6336, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6336, "Code3")
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
S_o6378 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6378, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6378, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6378, "Code3")
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
S_o6420 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6420, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6420, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6420, "Code3")
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
S_o6462 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6462, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6462, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6462, "Code3")
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
S_o6504 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6504, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6504, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6504, "Code3")
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
S_o6546 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6546, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6546, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6546, "Code3")
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
S_o6588 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6588, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6588, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6588, "Code3")
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
S_o6630 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6630, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6630, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6630, "Code3")
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
S_o6672 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6672, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6672, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6672, "Code3")
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
S_o6714 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6714, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6714, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6714, "Code3")
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
S_o6756 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6756, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6756, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6756, "Code3")
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
S_o6798 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6798, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6798, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6798, "Code3")
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
S_o6840 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6840, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6840, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6840, "Code3")
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
S_o6882 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6882, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6882, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6882, "Code3")
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
S_o6924 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6924, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6924, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6924, "Code3")
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
S_o6966 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6966, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6966, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6966, "Code3")
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
S_o7008 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7008, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7008, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7008, "Code3")
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
S_o7050 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7050, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7050, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7050, "Code3")
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
S_o7092 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7092, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7092, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7092, "Code3")
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
S_o7134 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7134, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7134, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7134, "Code3")
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
S_o7176 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7176, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7176, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7176, "Code3")
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
S_o7218 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7218, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7218, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7218, "Code3")
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
S_o7260 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7260, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7260, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7260, "Code3")
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
S_o7302 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7302, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7302, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7302, "Code3")
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
S_o7344 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7344, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7344, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7344, "Code3")
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
S_o7386 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7386, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7386, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7386, "Code3")
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
S_o7428 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7428, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7428, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7428, "Code3")
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
S_o7470 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7470, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7470, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7470, "Code3")
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
S_o7512 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7512, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7512, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7512, "Code3")
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
S_o7554 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7554, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7554, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7554, "Code3")
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
S_o7596 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7596, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7596, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7596, "Code3")
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
S_o7638 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7638, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7638, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7638, "Code3")
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
S_o7680 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7680, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7680, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7680, "Code3")
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
S_o7722 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7722, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7722, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7722, "Code3")
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
S_o7764 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7764, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7764, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7764, "Code3")
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
S_o7806 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7806, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7806, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7806, "Code3")
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
S_o7848 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7848, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7848, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7848, "Code3")
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
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7890, "Code3")
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
S_o7932 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7932, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7932, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7932, "Code3")
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
S_o7974 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7974, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7974, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7974, "Code3")
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
S_o8016 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8016, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8016, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8016, "Code3")
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
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8058, "Code3")
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
S_o8100 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8100, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8100, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8100, "Code3")
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
S_o8142 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8142, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8142, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8142, "Code3")
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
S_o8184 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8184, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8184, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8184, "Code3")
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
S_o8226 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8226, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8226, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8226, "Code3")
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
S_o8268 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8268, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8268, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8268, "Code3")
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
S_o8310 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8310, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8310, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8310, "Code3")
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
S_o8352 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8352, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8352, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8352, "Code3")
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
S_o8394 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8394, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8394, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8394, "Code3")
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
S_o8436 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8436, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8436, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8436, "Code3")
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
S_o8478 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8478, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8478, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8478, "Code3")
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
S_o8520 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8520, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8520, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8520, "Code3")
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
S_o8562 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8562, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8562, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8562, "Code3")
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
S_o8604 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8604, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8604, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8604, "Code3")
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
S_o8646 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8646, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8646, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8646, "Code3")
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
S_o8688 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8688, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8688, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8688, "Code3")
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
S_o8730 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8730, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8730, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8730, "Code3")
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
S_o8772 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8772, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8772, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8772, "Code3")
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
S_o8814 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8814, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8814, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8814, "Code3")
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
S_o8856 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8856, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8856, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8856, "Code3")
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
S_o8898 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8898, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8898, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8898, "Code3")
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
S_o8940 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8940, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8940, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8940, "Code3")
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
S_o8982 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8982, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8982, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8982, "Code3")
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
S_o9024 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9024, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9024, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9024, "Code3")
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
S_o9066 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9066, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9066, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9066, "Code3")
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
S_o9108 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9108, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9108, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9108, "Code3")
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
S_o9150 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9150, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9150, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9150, "Code3")
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
S_o9192 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9192, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9192, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9192, "Code3")
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
S_o9234 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9234, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9234, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9234, "Code3")
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
S_o9276 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9276, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9276, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9276, "Code3")
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
S_o9318 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9318, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9318, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9318, "Code3")
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
S_o9360 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9360, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9360, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9360, "Code3")
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
S_o9402 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9402, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9402, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9402, "Code3")
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
S_o9444 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9444, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9444, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9444, "Code3")
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
S_o9486 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9486, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9486, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9486, "Code3")
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
S_o9528 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9528, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9528, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9528, "Code3")
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
S_o9570 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9570, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9570, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9570, "Code3")
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
S_o9612 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9612, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9612, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9612, "Code3")
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
S_o9654 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9654, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9654, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9654, "Code3")
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
S_o9696 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9696, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9696, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9696, "Code3")
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
S_o9738 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9738, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9738, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9738, "Code3")
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
S_o9780 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9780, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9780, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9780, "Code3")
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
S_o9822 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9822, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9822, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9822, "Code3")
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
S_o9864 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9864, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9864, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9864, "Code3")
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
S_o9906 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9906, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9906, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9906, "Code3")
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
S_o9948 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9948, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9948, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9948, "Code3")
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
S_o9990 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9990, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9990, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9990, "Code3")
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
S_o10032 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10032, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10032, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10032, "Code3")
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
S_o10074 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10074, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10074, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10074, "Code3")
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
S_o10116 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10116, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10116, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10116, "Code3")
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
S_o10158 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10158, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10158, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10158, "Code3")
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
S_o10200 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10200, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10200, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10200, "Code3")
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
S_o10242 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10242, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10242, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10242, "Code3")
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
S_o10284 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10284, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10284, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10284, "Code3")
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
S_o10326 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10326, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10326, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10326, "Code3")
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
S_o10368 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10368, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10368, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10368, "Code3")
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
S_o10410 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10410, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10410, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10410, "Code3")
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
S_o10452 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10452, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10452, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10452, "Code3")
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
S_o10494 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10494, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10494, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10494, "Code3")
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
S_o10536 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10536, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10536, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10536, "Code3")
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
S_o10578 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10578, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10578, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10578, "Code3")
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
S_o10620 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10620, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10620, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10620, "Code3")
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
S_o10662 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10662, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10662, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10662, "Code3")
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
S_o10704 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10704, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10704, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10704, "Code3")
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
S_o10746 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10746, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10746, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10746, "Code3")
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
S_o10788 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10788, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10788, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10788, "Code3")
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
S_o10830 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10830, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10830, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10830, "Code3")
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
S_o10872 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10872, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10872, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10872, "Code3")
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
S_o10914 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10914, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10914, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10914, "Code3")
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
S_o10956 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10956, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10956, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10956, "Code3")
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
S_o10998 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10998, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10998, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10998, "Code3")
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
S_o11040 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11040, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11040, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11040, "Code3")
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
S_o11082 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11082, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11082, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11082, "Code3")
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
S_o11124 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11124, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11124, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11124, "Code3")
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
S_o11166 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11166, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11166, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11166, "Code3")
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
S_o11208 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11208, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11208, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11208, "Code3")
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
S_o11250 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11250, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11250, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11250, "Code3")
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
S_o11292 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11292, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11292, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11292, "Code3")
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
S_o11334 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11334, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11334, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11334, "Code3")
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
S_o11376 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11376, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11376, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11376, "Code3")
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
S_o11418 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11418, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11418, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11418, "Code3")
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
S_o11460 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11460, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11460, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11460, "Code3")
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
S_o11502 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11502, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11502, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11502, "Code3")
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
S_o11544 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11544, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11544, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11544, "Code3")
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
S_o11586 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11586, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11586, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11586, "Code3")
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
S_o11628 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11628, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11628, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11628, "Code3")
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
S_o11670 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11670, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11670, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11670, "Code3")
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
S_o11712 = { [nil] = {}, Start = function(L0)

end }
S_o11713 = { [nil] = {}, Start = function(L0)

end }
o11714 = FormationLib.CreateFormation("Triangle", "", "", "", 10, 10)
S_o11716 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Track3")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o11716, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o11716, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/IngameScenes/Navigation/LookFrom_0", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  FormationLib.PlaceFormationPath(o11715, o11714, "/IngameScenes/Navigation/PlayerPath_1")
  CallFunction(o11716, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o11715, o11714, "/IngameScenes/Navigation/PlayerPath_1", "pos_1", "pos_2", 0.3, 1, "Code10")
  else
    CallFunction(o11716, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o11715, o11714, "/IngameScenes/Navigation/PlayerPath_2", "pos_1", "pos_3", 1, 1, "Code11")
  else
    CallFunction(o11716, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Director_EndCutscene(L0.Node)
  CallFunction(o11716, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code13")
  else
    CallFunction(o11716, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Game_SetWayPoint(GetGameNode(), o5859.Node)
  SED_SetTaskTextKey(2100, -1, -1)
  CallFunction(o11716, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o11720 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3, "Code1")
  else
    CallFunction(o11720, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Camera_MoveTo(L0.Node, "/Scenario_Dynamic/Object/player1", 2, "MMMN", 20)
  CallFunction(o11720, "Code2")
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
  Game_LoadProgress_Enter(Node_Find("/"), 422)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o31 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_atacamagate_1", S_o31)
  o77 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dock_1", S_o77)
  o123 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem01a_1", S_o123)
  o169 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem01a_2", S_o169)
  o215 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem01a_3", S_o215)
  o261 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem03a_1", S_o261)
  o307 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem03a_3", S_o307)
  o353 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem03a_2", S_o353)
  o399 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem05a_1", S_o399)
  o445 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem05a_2", S_o445)
  o491 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem05a_3", S_o491)
  o537 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem06a_1", S_o537)
  o583 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_beacon_1", S_o583)
  o629 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_beacon_2", S_o629)
  o675 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem01_r_1", S_o675)
  o721 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem01_l_1", S_o721)
  o767 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem07_1", S_o767)
  o813 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_1", S_o813)
  o859 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker_1", S_o859)
  o905 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus1_1", S_o905)
  o951 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus2_1", S_o951)
  o997 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_1/Turm1", S_o997)
  o1042 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_2/Turm1", S_o1042)
  o1087 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_3/Turm1", S_o1087)
  o1132 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_4/Turm1", S_o1132)
  o1177 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_7/Turm1", S_o1177)
  o1222 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_8/Turm1", S_o1222)
  o1267 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_11/Turm1", S_o1267)
  o1312 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_12/Turm1", S_o1312)
  o1357 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_13/Turm1", S_o1357)
  o1402 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_14/Turm1", S_o1402)
  o1447 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_15/Turm1", S_o1447)
  o1492 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_16/Turm1", S_o1492)
  o1537 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_17/Turm1", S_o1537)
  o1582 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torptower_1/Turm1", S_o1582)
  o1627 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torptower_2/Turm1", S_o1627)
  o1672 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torptower_3/Turm1", S_o1672)
  o1717 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torptower_4/Turm1", S_o1717)
  o1762 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torptower_5/Turm1", S_o1762)
  o1807 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element06a_1", S_o1807)
  o1853 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_geb_addon01_1", S_o1853)
  o1899 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_geb_add_china_big_1", S_o1899)
  o1945 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turbine2_1", S_o1945)
  o1991 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turbine2_2", S_o1991)
  o2037 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turbine2_3", S_o2037)
  o2083 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turbine2_4", S_o2083)
  o2129 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_brainfire_1", S_o2129)
  o2175 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock3_1", S_o2175)
  o2221 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml_1", S_o2221)
  o2267 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vehiclestation_1", S_o2267)
  o2313 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element03_raw_1", S_o2313)
  o2359 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element05_raw_1", S_o2359)
  o2405 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_1", S_o2405)
  o2451 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_2", S_o2451)
  o2497 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elfnote_3", S_o2497)
  o2543 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_1", S_o2543)
  o2589 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_2", S_o2589)
  o2635 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_3", S_o2635)
  o2681 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_4", S_o2681)
  o2727 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_5", S_o2727)
  o2773 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_6", S_o2773)
  o2819 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_7", S_o2819)
  o2865 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_8", S_o2865)
  o2911 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_bridgering_m_1", S_o2911)
  o2957 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_bridgering_l_1", S_o2957)
  o3003 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_bridgering_l_2", S_o3003)
  o3049 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_bridgering_l_3", S_o3049)
  o3095 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_bridgering_l_4", S_o3095)
  o3141 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_bridgering_l_5", S_o3141)
  o3187 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_l_03_1", S_o3187)
  o3233 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_edgering_1", S_o3233)
  o3279 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_rock_l_01_1", S_o3279)
  o3325 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_rock_l_01_2", S_o3325)
  o3371 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_rock_s_01_1", S_o3371)
  o3417 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_rock_m_01_1", S_o3417)
  o3463 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_rock_m_01_2", S_o3463)
  o3509 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_rock_m_01_3", S_o3509)
  o3555 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_s_01_1", S_o3555)
  o3601 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_s_02_1", S_o3601)
  o3647 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_s_03_1", S_o3647)
  o3693 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_m_01_1", S_o3693)
  o3739 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_m_01_3", S_o3739)
  o3785 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_s_03_3", S_o3785)
  o3831 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_m_01_4", S_o3831)
  o3877 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_s_03_2", S_o3877)
  o3923 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_m_01_2", S_o3923)
  o3969 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_m_01_2x", S_o3969)
  o4015 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_l_03_2", S_o4015)
  o4061 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_rock_m_01_4", S_o4061)
  o4107 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_rock_m_01_5", S_o4107)
  o4153 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_m_01_5", S_o4153)
  o4199 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_m_1", S_o4199)
  o4245 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_m_2", S_o4245)
  o4291 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_angelina", S_o4291)
  o4337 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_rock_m_1", S_o4337)
  o4383 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_rock_s_1", S_o4383)
  o4429 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_rock_s_01_2", S_o4429)
  o4475 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_rock_l_01_3", S_o4475)
  o4521 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_rock_m_01_6", S_o4521)
  o4567 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_s_03_4", S_o4567)
  o4613 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_m_01_6", S_o4613)
  o4659 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_s_01_2", S_o4659)
  o4705 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_s_01_3", S_o4705)
  o4751 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_s_02_2", S_o4751)
  o4797 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_rock_m_01_7", S_o4797)
  o4843 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_rock_s_01_3", S_o4843)
  o4889 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_s_01_4", S_o4889)
  o4935 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_s_02_3", S_o4935)
  o4981 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_s_02_4", S_o4981)
  o5027 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_m_01_7", S_o5027)
  o5073 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_m_01_8", S_o5073)
  o5119 = BindEasy(Node_Find("/Scenario_Static/Object/TerrainObjects"), "ter_megalith_m_02_1", S_o5119)
  o5165 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Start_Intrepido", S_o5165)
  o5170.Start()
  o5171 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresenceBox_1", S_o5171)
  o5176.Start()
  o5177 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o5177)
  o5228 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "dealer", S_o5228)
  o5262.Start()
  o5264.Start()
  o5303 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_buggy_1", S_o5303)
  o5350 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_buggy_2", S_o5350)
  o5397 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_intrepido_1", S_o5397)
  o5403.Start()
  o5415.Start()
  o5456 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_intrepido_2", S_o5456)
  o5462.Start()
  o5474.Start()
  o5515 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_intrepido_3", S_o5515)
  o5521.Start()
  o5533.Start()
  o5574 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_intrepido_wide_1", S_o5574)
  o5590.Start()
  o5631 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_intrepido_wide_2", S_o5631)
  o5647.Start()
  o5688 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_intrepido_wide_3", S_o5688)
  o5704.Start()
  o5745 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_intrepido_wide_4", S_o5745)
  o5761.Start()
  o5802 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_intrepido_wide_5", S_o5802)
  o5818.Start()
  o5859 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_guard_1", S_o5859)
  o5864 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1", S_o5864)
  o5867.Start()
  o5869 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_1", S_o5869)
  o5872.Start()
  o5874 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_2", S_o5874)
  o5916 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_3", S_o5916)
  o5958 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_4", S_o5958)
  o6000 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_5", S_o6000)
  o6042 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_6", S_o6042)
  o6084 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_7", S_o6084)
  o6126 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_8", S_o6126)
  o6168 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_9", S_o6168)
  o6210 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_10", S_o6210)
  o6252 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_11", S_o6252)
  o6294 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_12", S_o6294)
  o6336 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_13", S_o6336)
  o6378 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_14", S_o6378)
  o6420 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_15", S_o6420)
  o6462 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_16", S_o6462)
  o6504 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_17", S_o6504)
  o6546 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_18", S_o6546)
  o6588 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_19", S_o6588)
  o6630 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_20", S_o6630)
  o6672 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_21", S_o6672)
  o6714 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_22", S_o6714)
  o6756 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_23", S_o6756)
  o6798 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_24", S_o6798)
  o6840 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_25", S_o6840)
  o6882 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_26", S_o6882)
  o6924 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_27", S_o6924)
  o6966 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_28", S_o6966)
  o7008 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_29", S_o7008)
  o7050 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_30", S_o7050)
  o7092 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_30a", S_o7092)
  o7134 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_31", S_o7134)
  o7176 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_32", S_o7176)
  o7218 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_33", S_o7218)
  o7260 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_34", S_o7260)
  o7302 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_35", S_o7302)
  o7344 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_36", S_o7344)
  o7386 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_37", S_o7386)
  o7428 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_38", S_o7428)
  o7470 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_39", S_o7470)
  o7512 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_40", S_o7512)
  o7554 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_41", S_o7554)
  o7596 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_42", S_o7596)
  o7638 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_43", S_o7638)
  o7680 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_44", S_o7680)
  o7722 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_45", S_o7722)
  o7764 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_46", S_o7764)
  o7806 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_47", S_o7806)
  o7848 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_48", S_o7848)
  o7890 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_49", S_o7890)
  o7932 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_50", S_o7932)
  o7974 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_51", S_o7974)
  o8016 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_52", S_o8016)
  o8058 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_53", S_o8058)
  o8100 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_54", S_o8100)
  o8142 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_55", S_o8142)
  o8184 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_56", S_o8184)
  o8226 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_57", S_o8226)
  o8268 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_58", S_o8268)
  o8310 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_59", S_o8310)
  o8352 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_60", S_o8352)
  o8394 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_61", S_o8394)
  o8436 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_62", S_o8436)
  o8478 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_64", S_o8478)
  o8520 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_65", S_o8520)
  o8562 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_66", S_o8562)
  o8604 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_67", S_o8604)
  o8646 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_68", S_o8646)
  o8688 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_69", S_o8688)
  o8730 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_70", S_o8730)
  o8772 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_71", S_o8772)
  o8814 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_72", S_o8814)
  o8856 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_73", S_o8856)
  o8898 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_74", S_o8898)
  o8940 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_75", S_o8940)
  o8982 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_76", S_o8982)
  o9024 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_77", S_o9024)
  o9066 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_78", S_o9066)
  o9108 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_79", S_o9108)
  o9150 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_80", S_o9150)
  o9192 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_81", S_o9192)
  o9234 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_82", S_o9234)
  o9276 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_83", S_o9276)
  o9318 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_84", S_o9318)
  o9360 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_85", S_o9360)
  o9402 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_86", S_o9402)
  o9444 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_87", S_o9444)
  o9486 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_88", S_o9486)
  o9528 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_89", S_o9528)
  o9570 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_90", S_o9570)
  o9612 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_91", S_o9612)
  o9654 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_92", S_o9654)
  o9696 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_93", S_o9696)
  o9738 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_94", S_o9738)
  o9780 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_95", S_o9780)
  o9822 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_96", S_o9822)
  o9864 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_97", S_o9864)
  o9906 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_98", S_o9906)
  o9948 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_99", S_o9948)
  o9990 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_100", S_o9990)
  o10032 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_101", S_o10032)
  o10074 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_102", S_o10074)
  o10116 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_103", S_o10116)
  o10158 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_104", S_o10158)
  o10200 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_105", S_o10200)
  o10242 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_106", S_o10242)
  o10284 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_107", S_o10284)
  o10326 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_108", S_o10326)
  o10368 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_109", S_o10368)
  o10410 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_110", S_o10410)
  o10452 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_111", S_o10452)
  o10494 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_112", S_o10494)
  o10536 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_113", S_o10536)
  o10578 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_114", S_o10578)
  o10620 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_115", S_o10620)
  o10662 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_116", S_o10662)
  o10704 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_117", S_o10704)
  o10746 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_118", S_o10746)
  o10788 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_119", S_o10788)
  o10830 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_120", S_o10830)
  o10872 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_121", S_o10872)
  o10914 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_122", S_o10914)
  o10956 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_123", S_o10956)
  o10998 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_124", S_o10998)
  o11040 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_125", S_o11040)
  o11082 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_126", S_o11082)
  o11124 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_127", S_o11124)
  o11166 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_128", S_o11166)
  o11208 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_129", S_o11208)
  o11250 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_130", S_o11250)
  o11292 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_131", S_o11292)
  o11334 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_132", S_o11334)
  o11376 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_133", S_o11376)
  o11418 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_134", S_o11418)
  o11460 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_135", S_o11460)
  o11502 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_136", S_o11502)
  o11544 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_137", S_o11544)
  o11586 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_138", S_o11586)
  o11628 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_139", S_o11628)
  o11670 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_mine02_140", S_o11670)
  o11712 = BindEasy(Node_Find("/"), "Camera", S_o11712)
  o11713 = BindEasy(Node_Find("/IngameScenes/Navigation"), "LookFrom_0", S_o11713)
  o11716 = BindEasy(Node_Find("/IngameScenes/Director"), "Intro", S_o11716)
  o11720 = BindEasy(Node_Find("/IngameScenes/Director"), "Intro_AddOn", S_o11720)
  o11715 = { {}, o5177 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
