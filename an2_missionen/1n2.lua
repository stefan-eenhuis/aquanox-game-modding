-- dekompiliert aus 1n2.sco
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
  Game_LoadFog(node0, "map/1H4/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/1H4/Lmsh/", "map/1H4/Ltex/")
  Game_SetTerrainDepth(node0, 5285)
  Game_SetDecompressionHeight(node0, 550)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.058824, 0.058824, 0.043137)
  Game_SetParallelLightT(node0, 0.117647, 0.117647, 0.082353)
  Game_SetParallelLightB(node0, 0.058824, 0.058824, 0.043137)
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_1n2.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_1N2.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient1.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit3.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_hektik.sam", 2)
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
  Position_SetPosition(node11, MAT_Vector3(1110.649657, 3189.305912, 62.991993))
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
  Body_SetFriendOrFoeID(node62, 4)
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
  node129 = Node_CreateNode("nod_fx_rays", "fx_rays_1H4_1")
  Node_AddSon(node15, node129)
  Node_ParseIniFile(node129, "osd/fx_rays/fx_rays_1H4.osd")
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_fx_sky", "fx_sky_1H4_1")
  Node_AddSon(node15, node130)
  Node_ParseIniFile(node130, "osd/fx_sky/fx_sky_1H4.osd")
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_fx_flare", "fx_flare_1H4_1")
  Node_AddSon(node15, node131)
  Node_ParseIniFile(node131, "osd/fx_flare/fx_flare_1H4.osd")
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_fx_plant", "org_seetang_1")
  Node_AddSon(node15, node132)
  Node_ParseIniFile(node132, "osd/fx_plant/org_seetang.osd")
  FX_Plant_SetMap(node132, "map/1H4/Terrain/org_seetang.tga")
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_fx_plankton", "fx_plankton_tz_d_1")
  Node_AddSon(node15, node133)
  Node_ParseIniFile(node133, "osd/fx_plankton/fx_plankton_tz_d.osd")
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
  node136 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node15, node136)
  Node_ParseIniFile(node136, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node136, "map/1H4/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_fx_plant", "org_grass_l_1")
  Node_AddSon(node15, node137)
  Node_ParseIniFile(node137, "osd/fx_plant/org_grass_l.osd")
  FX_Plant_SetMap(node137, "map/1H4/Terrain/org_grass_l.tga")
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
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
  node141 = Node_CreateNode("NOD_PatrolArea", "Brainfire_TankPatrolArea")
  Node_AddSon(node140, node141)
  PatrolArea_SetPosition(node141, MAT_Vector3(2652.136172, 1762.680945, 114.298962))
  PatrolArea_SetRadius(node141, 256)
  PatrolArea_SetMinZ(node141, -50)
  PatrolArea_SetMaxZ(node141, 50)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_PatrolArea", "BrainfireBattle_PatrolArea")
  Node_AddSon(node140, node142)
  PatrolArea_SetPosition(node142, MAT_Vector3(2651.825549, 1759.664069, 315.8736))
  PatrolArea_SetRadius(node142, 300)
  PatrolArea_SetMinZ(node142, -50)
  PatrolArea_SetMaxZ(node142, 50)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_PatrolArea", "BrainfireBattle_TriggerArea")
  Node_AddSon(node140, node143)
  PatrolArea_SetPosition(node143, MAT_Vector3(2652.08476, 1761.98583, 127.6558))
  PatrolArea_SetRadius(node143, 375)
  PatrolArea_SetMinZ(node143, -105)
  PatrolArea_SetMaxZ(node143, 380)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_PatrolArea", "BrainfireBattle_FollowArea")
  Node_AddSon(node140, node144)
  PatrolArea_SetPosition(node144, MAT_Vector3(2656.808478, 1761.98583, 127.6558))
  PatrolArea_SetRadius(node144, 600)
  PatrolArea_SetMinZ(node144, -105)
  PatrolArea_SetMaxZ(node144, 370)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Path", "Techbomber1_Path_1")
  Node_AddSon(node140, node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node145, node146)
  Position_SetPosition(node146, MAT_Vector3(2757.593657, 4041.957714, 130))
  Position_SetRadius(node146, 5)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node145, node147)
  Position_SetPosition(node147, MAT_Vector3(2678.998117, 3914.036451, 131.929469))
  Position_SetRadius(node147, 5)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node145, node148)
  Position_SetPosition(node148, MAT_Vector3(2677.273657, 3807.694724, 127))
  Position_SetRadius(node148, 5)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node145, node149)
  Position_SetPosition(node149, MAT_Vector3(2640.543231, 3743.865496, 120))
  Position_SetRadius(node149, 5)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node145, node150)
  Position_SetPosition(node150, MAT_Vector3(2590.944188, 3649.391128, 130))
  Position_SetRadius(node150, 5)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node145, node151)
  Position_SetPosition(node151, MAT_Vector3(2633.457653, 3530.117238, 129))
  Position_SetRadius(node151, 5)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node145, node152)
  Position_SetPosition(node152, MAT_Vector3(2634.959992, 3257.698577, 150))
  Position_SetRadius(node152, 5)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node145, node153)
  Position_SetPosition(node153, MAT_Vector3(2630.84119, 3003.574103, 300))
  Position_SetRadius(node153, 5)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node145, node154)
  Position_SetPosition(node154, MAT_Vector3(2630.107859, 2821.16253, 450))
  Position_SetRadius(node154, 5)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node145, node155)
  Position_SetPosition(node155, MAT_Vector3(2629.349366, 2525.88285, 450))
  Position_SetRadius(node155, 5)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node145, node156)
  Position_SetPosition(node156, MAT_Vector3(2628.232352, 2123.231735, 455))
  Position_SetRadius(node156, 5)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node145, node157)
  Position_SetPosition(node157, MAT_Vector3(2823.085384, 1929.559546, 455))
  Position_SetRadius(node157, 5)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node145, node158)
  Position_SetPosition(node158, MAT_Vector3(2823.116289, 1878.678095, 455))
  Position_SetRadius(node158, 5)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node145, node159)
  Position_SetPosition(node159, MAT_Vector3(2823.722469, 1841.130755, 455))
  Position_SetRadius(node159, 5)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Path", "Techbomber2_Path_1")
  Node_AddSon(node140, node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node160, node161)
  Position_SetPosition(node161, MAT_Vector3(2841.840958, 4018.339408, 150))
  Position_SetRadius(node161, 5)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node160, node162)
  Position_SetPosition(node162, MAT_Vector3(2778.597043, 3908.131352, 131))
  Position_SetRadius(node162, 5)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node160, node163)
  Position_SetPosition(node163, MAT_Vector3(2778.053973, 3808.87593, 124))
  Position_SetRadius(node163, 5)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node160, node164)
  Position_SetPosition(node164, MAT_Vector3(2766.122494, 3729.693845, 129))
  Position_SetRadius(node164, 5)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node160, node165)
  Position_SetPosition(node165, MAT_Vector3(2793.283918, 3650.57193, 132))
  Position_SetRadius(node165, 5)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node160, node166)
  Position_SetPosition(node166, MAT_Vector3(2803.912819, 3532.478859, 130))
  Position_SetRadius(node166, 5)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node160, node167)
  Position_SetPosition(node167, MAT_Vector3(2742.82555, 3257.699, 150))
  Position_SetRadius(node167, 5)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node160, node168)
  Position_SetPosition(node168, MAT_Vector3(2741.06841, 3003.574, 300))
  Position_SetRadius(node168, 5)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node160, node169)
  Position_SetPosition(node169, MAT_Vector3(2739.15448, 2822.34393, 450))
  Position_SetRadius(node169, 5)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node160, node170)
  Position_SetPosition(node170, MAT_Vector3(2739.57641, 2528.244859, 450))
  Position_SetRadius(node170, 5)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node160, node171)
  Position_SetPosition(node171, MAT_Vector3(2736.09755, 2140.945944, 455))
  Position_SetRadius(node171, 5)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node160, node172)
  Position_SetPosition(node172, MAT_Vector3(2913.236606, 1966.168818, 455))
  Position_SetRadius(node172, 5)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node160, node173)
  Position_SetPosition(node173, MAT_Vector3(2921.534473, 1879.827892, 455))
  Position_SetRadius(node173, 5)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node160, node174)
  Position_SetPosition(node174, MAT_Vector3(2922.171942, 1838.83118, 455))
  Position_SetRadius(node174, 5)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_Path", "TechB_DockOnPath_1")
  Node_AddSon(node140, node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node175, node176)
  Position_SetPosition(node176, MAT_Vector3(2771.363784, 1762.411585, 455))
  Position_SetRadius(node176, 5)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node175, node177)
  Position_SetPosition(node177, MAT_Vector3(2718.100705, 1763.240121, 455))
  Position_SetRadius(node177, 5)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_Path", "DockApproach_Path1")
  Node_AddSon(node140, node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node178, node179)
  Position_SetPosition(node179, MAT_Vector3(2818.967655, 1764.127978, 455))
  Position_SetRadius(node179, 5)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node178, node180)
  Position_SetPosition(node180, MAT_Vector3(2852.115741, 1800.621799, 455))
  Position_SetRadius(node180, 5)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_PatrolArea", "DockArea")
  Node_AddSon(node140, node181)
  PatrolArea_SetPosition(node181, MAT_Vector3(2980.211, 1790.245, 450))
  PatrolArea_SetRadius(node181, 100)
  PatrolArea_SetMinZ(node181, -20)
  PatrolArea_SetMaxZ(node181, 20)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("NOD_Path", "Eerie_Path_1")
  Node_AddSon(node140, node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node182, node183)
  Position_SetPosition(node183, MAT_Vector3(1385.139971, 3147.237731, 95.536093))
  Position_SetRadius(node183, 5)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node182, node184)
  Position_SetPosition(node184, MAT_Vector3(1544.149916, 3127.162928, 90.59375))
  Position_SetRadius(node184, 5)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node182, node185)
  Position_SetPosition(node185, MAT_Vector3(1862.370209, 3117.006961, 88.980391))
  Position_SetRadius(node185, 5)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node182, node186)
  Position_SetPosition(node186, MAT_Vector3(2075.645512, 2981.59407, 90.060155))
  Position_SetRadius(node186, 5)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node182, node187)
  Position_SetPosition(node187, MAT_Vector3(2327.85202, 2910.502303, 300))
  Position_SetRadius(node187, 5)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node182, node188)
  Position_SetPosition(node188, MAT_Vector3(2563.131918, 2896.961014, 500))
  Position_SetRadius(node188, 5)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_Path", "Eerie_Path_2")
  Node_AddSon(node140, node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node189, node190)
  Position_SetPosition(node190, MAT_Vector3(2025.015375, 2996.448724, 90.67741))
  Position_SetRadius(node190, 5)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node189, node191)
  Position_SetPosition(node191, MAT_Vector3(1808.244, 3103.198452, 86.338409))
  Position_SetRadius(node191, 5)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node189, node192)
  Position_SetPosition(node192, MAT_Vector3(1559.533564, 3130.168953, 90.832733))
  Position_SetRadius(node192, 5)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node189, node193)
  Position_SetPosition(node193, MAT_Vector3(1378.418823, 3140.32492, 96.468572))
  Position_SetRadius(node193, 5)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node189, node194)
  Position_SetPosition(node194, MAT_Vector3(1261.625205, 3180.948787, 96.046556))
  Position_SetRadius(node194, 5)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node189, node195)
  Position_SetPosition(node195, MAT_Vector3(1180.37747, 3189.412093, 93.848056))
  Position_SetRadius(node195, 5)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_PatrolArea", "Atl_BattleArea")
  Node_AddSon(node140, node196)
  PatrolArea_SetPosition(node196, MAT_Vector3(3063.254592, 2952.7793, -6.340941))
  PatrolArea_SetRadius(node196, 1280)
  PatrolArea_SetMinZ(node196, -20)
  PatrolArea_SetMaxZ(node196, 500)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node138, node197)
  Node_EnterSimulation(node197)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node138, node198)
  Node_EnterSimulation(node198)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("NOD_Trigger", "BrainfireDistance_1500")
  Node_AddSon(node198, node199)
  Body_SetFriendOrFoeID(node199, 0)
  Body_SetPosition(node199, MAT_Vector3(2654.209319, 1760.808509, 150))
  Trigger_SetPresenceSphere(node199, 1500)
  Node_EnterSimulation(node199)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("NOD_Trigger", "BrainfireDistance_1000")
  Node_AddSon(node198, node200)
  Body_SetFriendOrFoeID(node200, 0)
  Body_SetPosition(node200, MAT_Vector3(2654.209, 1760.809, 150))
  Trigger_SetPresenceSphere(node200, 1000)
  Node_EnterSimulation(node200)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("NOD_Trigger", "BrainfireDistance_750")
  Node_AddSon(node198, node201)
  Body_SetFriendOrFoeID(node201, 0)
  Body_SetPosition(node201, MAT_Vector3(2654.209, 1760.809, 150))
  Trigger_SetPresenceSphere(node201, 750)
  Node_EnterSimulation(node201)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("NOD_Trigger", "BrainfireDistance_toClose")
  Node_AddSon(node198, node202)
  Body_SetFriendOrFoeID(node202, 0)
  Body_SetPosition(node202, MAT_Vector3(2654.209, 1760.809, 150))
  Trigger_SetPresenceSphere(node202, 400)
  Node_EnterSimulation(node202)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("NOD_Trigger", "TriggerAgressiveMusic")
  Node_AddSon(node198, node203)
  Body_SetFriendOrFoeID(node203, 0)
  Body_SetPosition(node203, MAT_Vector3(2664.407789, 3073.125719, 150))
  Trigger_SetPresenceSphere(node203, 768)
  Node_EnterSimulation(node203)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node138, node204)
  Node_EnterSimulation(node204)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node204, node205)
  Body_SetCS(node205, MAT_Vector3(1045.722011, 3185.85016, 63.319736), MAT_Vector3(-91.273479, 0, 0))
  Node_ParseIniFile(node205, "osd/pla/pla_ship1.osd")
  Body_SetFriendOrFoeID(node205, 2)
  Node_EnterSimulation(node205)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("nod_vessel", "wng_techbomber_1")
  Node_AddSon(node204, node206)
  Body_SetCS(node206, MAT_Vector3(1098.269927, 3109.494535, 49.178227), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node206, "osd/wng/wng_techbomber.osd")
  Body_SetFriendOrFoeID(node206, 3)
  Body_SetNameKey(node206, -1)
  Body_SetCargoKey(node206, -1, 0)
  Body_SetCargoKey(node206, -1, 1)
  Body_SetCargoKey(node206, -1, 2)
  Node_EnterSimulation(node206)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("nod_vessel", "atl_frigate_1")
  Node_AddSon(node204, node207)
  Body_SetCS(node207, MAT_Vector3(2758.895566, 1939.184574, 476.624559), MAT_Vector3(-43.720625, 0.390383, -0.35077))
  Node_ParseIniFile(node207, "osd/atl/atl_frigate.osd")
  Body_SetFriendOrFoeID(node207, 4)
  Body_SetNameKey(node207, -1)
  Body_SetCargoKey(node207, -1, 0)
  Body_SetCargoKey(node207, -1, 1)
  Body_SetCargoKey(node207, -1, 2)
  Node_EnterSimulation(node207)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("nod_vessel", "atl_frigate_2")
  Node_AddSon(node204, node208)
  Body_SetCS(node208, MAT_Vector3(2559.318915, 1932.099423, 473.176173), MAT_Vector3(41.120992, 0.390383, -0.35077))
  Node_ParseIniFile(node208, "osd/atl/atl_frigate.osd")
  Body_SetFriendOrFoeID(node208, 4)
  Body_SetNameKey(node208, -1)
  Body_SetCargoKey(node208, -1, 0)
  Body_SetCargoKey(node208, -1, 1)
  Body_SetCargoKey(node208, -1, 2)
  Node_EnterSimulation(node208)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("nod_vessel", "atl_frigate_3")
  Node_AddSon(node204, node209)
  Body_SetCS(node209, MAT_Vector3(2791.962026, 1775.0358, 479.075685), MAT_Vector3(0.690481, 0.390383, -0.35077))
  Node_ParseIniFile(node209, "osd/atl/atl_frigate.osd")
  Body_SetFriendOrFoeID(node209, 4)
  Body_SetNameKey(node209, -1)
  Body_SetCargoKey(node209, -1, 0)
  Body_SetCargoKey(node209, -1, 1)
  Body_SetCargoKey(node209, -1, 2)
  Node_EnterSimulation(node209)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("nod_vehicle", "atl_tank_1")
  Node_AddSon(node204, node210)
  Body_SetCS(node210, MAT_Vector3(2493.026026, 1713.593772, 74.237272), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node210, "osd/atl/atl_tank.osd")
  Body_SetFriendOrFoeID(node210, 4)
  Body_SetNameKey(node210, -1)
  Body_SetCargoKey(node210, -1, 0)
  Body_SetCargoKey(node210, -1, 1)
  Body_SetCargoKey(node210, -1, 2)
  Node_EnterSimulation(node210)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("nod_vehicle", "atl_tank_2")
  Node_AddSon(node204, node211)
  Body_SetCS(node211, MAT_Vector3(2675.833402, 1625.575621, 90.41189), MAT_Vector3(-33.744933, 0, 0))
  Node_ParseIniFile(node211, "osd/atl/atl_tank.osd")
  Body_SetFriendOrFoeID(node211, 4)
  Body_SetNameKey(node211, -1)
  Body_SetCargoKey(node211, -1, 0)
  Body_SetCargoKey(node211, -1, 1)
  Body_SetCargoKey(node211, -1, 2)
  Node_EnterSimulation(node211)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("nod_vehicle", "atl_buggy_1")
  Node_AddSon(node204, node212)
  Body_SetCS(node212, MAT_Vector3(2552.779202, 1615.683136, 92.279746), MAT_Vector3(35.211191, 0, 0))
  Node_ParseIniFile(node212, "osd/atl/atl_buggy.osd")
  Body_SetFriendOrFoeID(node212, 0)
  Body_SetNameKey(node212, -1)
  Body_SetCargoKey(node212, -1, 0)
  Body_SetCargoKey(node212, -1, 1)
  Body_SetCargoKey(node212, -1, 2)
  Node_EnterSimulation(node212)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("nod_vehicle", "atl_buggy_2")
  Node_AddSon(node204, node213)
  Body_SetCS(node213, MAT_Vector3(2719.208138, 1871.094054, 96.677795), MAT_Vector3(75.708943, 0, 0))
  Node_ParseIniFile(node213, "osd/atl/atl_buggy.osd")
  Body_SetFriendOrFoeID(node213, 0)
  Body_SetNameKey(node213, -1)
  Body_SetCargoKey(node213, -1, 0)
  Body_SetCargoKey(node213, -1, 1)
  Body_SetCargoKey(node213, -1, 2)
  Node_EnterSimulation(node213)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("nod_vessel", "atl_scout1_1")
  Node_AddSon(node204, node214)
  Body_SetCS(node214, MAT_Vector3(2625.223175, 1540.052478, 250), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node214, "osd/atl/atl_scout1_wide_1n2.osd")
  Body_SetFriendOrFoeID(node214, 4)
  Body_SetNameKey(node214, -1)
  Body_SetCargoKey(node214, -1, 0)
  Body_SetCargoKey(node214, -1, 1)
  Body_SetCargoKey(node214, -1, 2)
  Node_EnterSimulation(node214)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("nod_vessel", "atl_scout1_2")
  Node_AddSon(node204, node215)
  Body_SetCS(node215, MAT_Vector3(2642.86869, 1540.052, 250), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node215, "osd/atl/atl_scout1_wide_1n2.osd")
  Body_SetFriendOrFoeID(node215, 4)
  Body_SetNameKey(node215, -1)
  Body_SetCargoKey(node215, -1, 0)
  Body_SetCargoKey(node215, -1, 1)
  Body_SetCargoKey(node215, -1, 2)
  Node_EnterSimulation(node215)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("nod_vessel", "atl_scout1_3")
  Node_AddSon(node204, node216)
  Body_SetCS(node216, MAT_Vector3(2659.712613, 1540.052, 250), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node216, "osd/atl/atl_scout1_wide_1n2.osd")
  Body_SetFriendOrFoeID(node216, 4)
  Body_SetNameKey(node216, -1)
  Body_SetCargoKey(node216, -1, 0)
  Body_SetCargoKey(node216, -1, 1)
  Body_SetCargoKey(node216, -1, 2)
  Node_EnterSimulation(node216)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("nod_vessel", "atl_scout1_4")
  Node_AddSon(node204, node217)
  Body_SetCS(node217, MAT_Vector3(2674.658322, 1540.052, 250), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node217, "osd/atl/atl_scout1_wide_1n2.osd")
  Body_SetFriendOrFoeID(node217, 4)
  Body_SetNameKey(node217, -1)
  Body_SetCargoKey(node217, -1, 0)
  Body_SetCargoKey(node217, -1, 1)
  Body_SetCargoKey(node217, -1, 2)
  Node_EnterSimulation(node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("nod_vessel", "atl_scout1_7")
  Node_AddSon(node204, node218)
  Body_SetCS(node218, MAT_Vector3(2690.178, 1540.627, 250), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node218, "osd/atl/atl_scout1_wide_1n2.osd")
  Body_SetFriendOrFoeID(node218, 4)
  Body_SetNameKey(node218, -1)
  Body_SetCargoKey(node218, -1, 0)
  Body_SetCargoKey(node218, -1, 1)
  Body_SetCargoKey(node218, -1, 2)
  Node_EnterSimulation(node218)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("nod_vessel", "atl_scout1_8")
  Node_AddSon(node204, node219)
  Body_SetCS(node219, MAT_Vector3(2706.848, 1542.351, 250), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node219, "osd/atl/atl_scout1_wide_1n2.osd")
  Body_SetFriendOrFoeID(node219, 4)
  Body_SetNameKey(node219, -1)
  Body_SetCargoKey(node219, -1, 0)
  Body_SetCargoKey(node219, -1, 1)
  Body_SetCargoKey(node219, -1, 2)
  Node_EnterSimulation(node219)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("nod_vessel", "atl_scout1_9")
  Node_AddSon(node204, node220)
  Body_SetCS(node220, MAT_Vector3(2723.063146, 1541.830115, 250), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node220, "osd/atl/atl_scout1_wide_1n2.osd")
  Body_SetFriendOrFoeID(node220, 4)
  Body_SetNameKey(node220, -1)
  Body_SetCargoKey(node220, -1, 0)
  Body_SetCargoKey(node220, -1, 1)
  Body_SetCargoKey(node220, -1, 2)
  Node_EnterSimulation(node220)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("nod_vessel", "atl_scout1_10")
  Node_AddSon(node204, node221)
  Body_SetCS(node221, MAT_Vector3(2740.134185, 1543.153077, 250), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node221, "osd/atl/atl_scout1_wide_1n2.osd")
  Body_SetFriendOrFoeID(node221, 4)
  Body_SetNameKey(node221, -1)
  Body_SetCargoKey(node221, -1, 0)
  Body_SetCargoKey(node221, -1, 1)
  Body_SetCargoKey(node221, -1, 2)
  Node_EnterSimulation(node221)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("nod_vessel", "atl_techbomber_1")
  Node_AddSon(node204, node222)
  Body_SetCS(node222, MAT_Vector3(2780.204328, 4086.770217, 130), MAT_Vector3(155, 0, 0))
  Node_ParseIniFile(node222, "osd/gen/gen_transporter.osd")
  Body_SetFriendOrFoeID(node222, 4)
  Body_SetNameKey(node222, -1)
  Body_SetCargoKey(node222, -1, 0)
  Body_SetCargoKey(node222, -1, 1)
  Body_SetCargoKey(node222, -1, 2)
  Node_EnterSimulation(node222)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("nod_vessel", "atl_techbomber_2")
  Node_AddSon(node204, node223)
  Body_SetCS(node223, MAT_Vector3(2868.640822, 4066.479333, 150), MAT_Vector3(155, 0, 0))
  Node_ParseIniFile(node223, "osd/gen/gen_transporter.osd")
  Body_SetFriendOrFoeID(node223, 4)
  Body_SetNameKey(node223, -1)
  Body_SetCargoKey(node223, -1, 0)
  Body_SetCargoKey(node223, -1, 1)
  Body_SetCargoKey(node223, -1, 2)
  Node_EnterSimulation(node223)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("nod_waypoint", "nav_emp_1")
  Node_AddSon(node204, node224)
  Body_SetPosition(node224, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node224, 150)
  Node_ParseIniFile(node224, "osd/nav/nav_emp.osd")
  Node_EnterSimulation(node224)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("nod_waypoint", "nav_emp_2")
  Node_AddSon(node204, node225)
  Body_SetPosition(node225, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node225, 5)
  Node_ParseIniFile(node225, "osd/nav/nav_emp.osd")
  Node_EnterSimulation(node225)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("nod_waypoint", "nav_guard_1")
  Node_AddSon(node204, node226)
  Body_SetPosition(node226, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node226, 5)
  Node_ParseIniFile(node226, "osd/nav/nav_guard.osd")
  Node_EnterSimulation(node226)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("nod_waypoint", "nav_escort_1")
  Node_AddSon(node204, node227)
  Body_SetPosition(node227, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node227, 5)
  Node_ParseIniFile(node227, "osd/nav/nav_escort.osd")
  Node_EnterSimulation(node227)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node228)
  Camera_SetBackPlane(node228, 1000)
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
  node232 = Node_CreateNode("NOD_Position", "LookFrom_0")
  Node_AddSon(node231, node232)
  Position_SetPosition(node232, MAT_Vector3(1118.149386, 3189.162988, 63.50503))
  Position_SetRadius(node232, 5)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node231, node233)
  Position_SetPosition(node233, MAT_Vector3(1262.428813, 3185.13926, 20.339649))
  Position_SetRadius(node233, 5)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("NOD_Position", "LookAt_1")
  Node_AddSon(node231, node234)
  Position_SetPosition(node234, MAT_Vector3(1066.998292, 3186.908758, 62.270271))
  Position_SetRadius(node234, 5)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("NOD_Path", "PlayerPath_1")
  Node_AddSon(node231, node235)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node235, node236)
  Position_SetPosition(node236, MAT_Vector3(1047.103642, 3186.648941, 65.482313))
  Position_SetRadius(node236, 5)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node235, node237)
  Position_SetPosition(node237, MAT_Vector3(1112.883578, 3188.570038, 65.48231))
  Position_SetRadius(node237, 5)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node235, node238)
  Position_SetPosition(node238, MAT_Vector3(1183.012058, 3184.546259, 39.643563))
  Position_SetRadius(node238, 5)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node235, node239)
  Position_SetPosition(node239, MAT_Vector3(1270.384662, 3185.69564, 37.938913))
  Position_SetRadius(node239, 5)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node235, node240)
  Position_SetPosition(node240, MAT_Vector3(1607.040031, 3147.122726, 38.889405))
  Position_SetRadius(node240, 5)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("NOD_Path", "BomberPath_1")
  Node_AddSon(node231, node241)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node241, node242)
  Position_SetPosition(node242, MAT_Vector3(1159.14936, 3185.468719, 65.48231))
  Position_SetRadius(node242, 5)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node241, node243)
  Position_SetPosition(node243, MAT_Vector3(1270.38472, 3183.971439, 65.48231))
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
  node247 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node229, node247)
  Node_EnterSimulation(node247)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node229, node248)
  Node_EnterSimulation(node248)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, F)
SetEnemyMatrixElement(2, 0, N)
SetEnemyMatrixElement(3, 0, N)
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
SetEnemyMatrixElement(1, 1, F)
SetEnemyMatrixElement(2, 1, N)
SetEnemyMatrixElement(3, 1, N)
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
SetEnemyMatrixElement(2, 2, F)
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
SetEnemyMatrixElement(0, 3, N)
SetEnemyMatrixElement(1, 3, N)
SetEnemyMatrixElement(2, 3, F)
SetEnemyMatrixElement(3, 3, F)
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
                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                  if not (o5229.Value ~= True) then
                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                    if not (True ~= True) then
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
                                                                                                                                                                                                                                  if not (o5253.Value == True) then
                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                  if not (False == True) then
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
                                                                                                                                                  if not (False == True) then
                                                                                                                                                    if not (False == True) then
                                                                                                                                                      if not (False == True) then
                                                                                                                                                        if not (False == True) then
                                                                                                                                                          if not (False == True) then
                                                                                                                                                            if not (False == True) then
                                                                                                                                                              if not (False == True) then
                                                                                                                                                                if not (False == True) then
                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                  if not (o5254.Value == True) then
                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                  if not (False == True) then
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
end, ReCalculate = function()
  o27.SetStateValue(o27.GetCalculated())
end, StartCalculate = function()
  o27["Value"] = o27.GetCalculated()
end, ChangeTo1 = function()
  Game_MissionEnd(GetGameNode(), 0)
end, SetStateValue = function(L0)
  if not (o27.Value == L0) then
    o27["Value"] = L0
    if not (L0 ~= 1) then
      o27.ChangeTo1()
    end
  end
end }
o28 = { [nil] = {}, GetCalculated = function()
  if not (False == True) then
    if not (False == True) then
      if not (False == True) then
        if not (False == True) then
          if not (False == True) then
            if not (False == True) then
              if not (False == True) then
                if not (False == True) then
                  if not (False == True) then
                    if not (False == True) then
                      if not (False == True) then
                        if not (False == True) then
                          if not (False == True) then
                            if not (False == True) then
                              if not (False == True) then
                                if not (False == True) then
                                  if not (False == True) then
                                    if not (False == True) then
                                      if not (False == True) then
                                        if not (False == True) then
                                          if not (False == True) then
                                            if not (False == True) then
                                              if not (False == True) then
                                                if not (False == True) then
                                                  if not (False == True) then
                                                    if not (False == True) then
                                                      if not (False == True) then
                                                        if not (False == True) then
                                                          if not (False == True) then
                                                            if not (False == True) then
                                                              if not (False == True) then
                                                                if not (False == True) then
                                                                  if not (False == True) then
                                                                    if not (False == True) then
                                                                      if not (False == True) then
                                                                        if not (False == True) then
                                                                          if not (False == True) then
                                                                            if not (False == True) then
                                                                              if not (False == True) then
                                                                                if not (False == True) then
                                                                                  if not (False == True) then
                                                                                    if not (False == True) then
                                                                                      if not (False == True) then
                                                                                        if not (False == True) then
                                                                                          if not (False == True) then
                                                                                            if not (False == True) then
                                                                                              if not (False == True) then
                                                                                                if not (False == True) then
                                                                                                  if not (False == True) then
                                                                                                    if not (False == True) then
                                                                                                      if not (False == True) then
                                                                                                        if not (False == True) then
                                                                                                          if not (False == True) then
                                                                                                            if not (False == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
                                                                                                                      if not (False == True) then
                                                                                                                        if not (False == True) then
                                                                                                                          if not (False == True) then
                                                                                                                            if not (False == True) then
                                                                                                                              if not (False == True) then
                                                                                                                                if not (False == True) then
                                                                                                                                  if not (False == True) then
                                                                                                                                    if not (False == True) then
                                                                                                                                      if not (False == True) then
                                                                                                                                        if not (False == True) then
                                                                                                                                          if not (False == True) then
                                                                                                                                            if not (False == True) then
                                                                                                                                              if not (False == True) then
                                                                                                                                                if not (False == True) then
                                                                                                                                                  if not (False == True) then
                                                                                                                                                    if not (False == True) then
                                                                                                                                                      if not (False == True) then
                                                                                                                                                        if not (False == True) then
                                                                                                                                                          if not (False == True) then
                                                                                                                                                            if not (False == True) then
                                                                                                                                                              if not (False == True) then
                                                                                                                                                                if not (False == True) then
                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                  if not (o5255.Value == True) then
                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                  if not (False == True) then
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
end, ReCalculate = function()
  o28.SetStateValue(o28.GetCalculated())
end, StartCalculate = function()
  o28["Value"] = o28.GetCalculated()
end, ChangeTo1 = function()
  Game_MissionEnd(GetGameNode(), 0)
end, SetStateValue = function(L0)
  if not (o28.Value == L0) then
    o28["Value"] = L0
    if not (L0 ~= 1) then
      o28.ChangeTo1()
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
o5165 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/DockApproach_Path1", "/Scenario_Dynamic/Navigation/TechB_DockOnPath_1", "/Scenario_Dynamic/Navigation/DockArea")
S_o5166 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5166, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5166, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5166, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "atl_techbomber_", "", "", "", False, False, True)
  CallFunction(o5166, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5166, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5166, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5171.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5171 = { [nil] = {}, Start = function()
  o5171["Value"] = False
  o5214.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5171.Value == L0) then
    o5171["Value"] = L0
    o5214.ReCalculate()
  end
end }
S_o5172 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5172, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5172, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5172, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "atl_techbomber_", "", "", "", False, False, True)
  CallFunction(o5172, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5172, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5172, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5177.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5177 = { [nil] = {}, Start = function()
  o5177["Value"] = False
  o5215.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5177.Value == L0) then
    o5177["Value"] = L0
    o5215.ReCalculate()
  end
end }
S_o5178 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5178, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5178, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5178, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "atl_techbomber_", "", "", "", False, False, True)
  CallFunction(o5178, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5178, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5178, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5183.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5183 = { [nil] = {}, Start = function()
  o5183["Value"] = False
  o5216.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5183.Value == L0) then
    o5183["Value"] = L0
    o5216.ReCalculate()
  end
end }
S_o5184 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5184, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5184, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5184, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "atl_techbomber_", "", "", "", False, False, True)
  CallFunction(o5184, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5184, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5184, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5189.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5189 = { [nil] = {}, Start = function()
  o5189["Value"] = False
  o5217.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5189.Value == L0) then
    o5189["Value"] = L0
    o5217.ReCalculate()
  end
end }
S_o5190 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5190, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5190, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5190, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "atl_scout1_", "", "", "", False, False, True)
  CallFunction(o5190, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5190, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5190, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5195.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5191.Value ~= True) then
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
o5191 = { [nil] = {}, GetCalculated = function()
  if not (o5219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5191.SetStateValue(o5191.GetCalculated())
end, StartCalculate = function()
  o5191["Value"] = o5191.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5191.Value == L0) then
    o5191["Value"] = L0
    CallFunction(o5190, "ProcesseStateChange")
  end
end }
o5195 = { [nil] = {}, Start = function()
  o5195["Value"] = False
  o5228.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5195.Value == L0) then
    o5195["Value"] = L0
    o5228.ReCalculate()
  end
end }
S_o5196 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o5196, "Code10")
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
o5210 = { [nil] = {}, GetCalculated = function()
  if not (o5276.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5210.SetStateValue(o5210.GetCalculated())
end, StartCalculate = function()
  o5210["Value"] = o5210.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5257.Node, o5196.Node, 144)
end, SetStateValue = function(L0)
  if not (o5210.Value == L0) then
    o5210["Value"] = L0
    if not (L0 ~= 1) then
      o5210.ChangeTo1()
    end
  end
end }
o5211 = { [nil] = {}, GetCalculated = function()
  if not (o5277.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5211.SetStateValue(o5211.GetCalculated())
end, StartCalculate = function()
  o5211["Value"] = o5211.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5257.Node, o5196.Node, 145)
end, SetStateValue = function(L0)
  if not (o5211.Value == L0) then
    o5211["Value"] = L0
    if not (L0 ~= 1) then
      o5211.ChangeTo1()
    end
  end
end }
o5212 = { [nil] = {}, GetCalculated = function()
  if not (o5278.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5212.SetStateValue(o5212.GetCalculated())
end, StartCalculate = function()
  o5212["Value"] = o5212.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5257.Node, o5196.Node, 146)
end, SetStateValue = function(L0)
  if not (o5212.Value == L0) then
    o5212["Value"] = L0
    if not (L0 ~= 1) then
      o5212.ChangeTo1()
    end
  end
end }
o5213 = { [nil] = {}, GetCalculated = function()
  if not (o6128.Value == True) then
    if not (o5324.Value == True) then
      if not (o5379.Value == True) then
        if not (o5434.Value == True) then
          if not (o6186.Value ~= True) then
            return 1
          else
            return 0
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o5213.SetStateValue(o5213.GetCalculated())
end, StartCalculate = function()
  o5213["Value"] = o5213.GetCalculated()
end, ChangeTo1 = function()
  SetEnemyMatrixElement(2, 4, E)
  SetEnemyMatrixElement(4, 2, E)
  SetEnemyMatrixElement(3, 4, E)
  SetEnemyMatrixElement(4, 3, E)
end, SetStateValue = function(L0)
  if not (o5213.Value == L0) then
    o5213["Value"] = L0
    if not (L0 ~= 1) then
      o5213.ChangeTo1()
    end
  end
end }
o5214 = { [nil] = {}, GetCalculated = function()
  if not (o5171.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5214.SetStateValue(o5214.GetCalculated())
end, StartCalculate = function()
  o5214["Value"] = o5214.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o31.Node, o5196.Node, 131)
end, SetStateValue = function(L0)
  if not (o5214.Value == L0) then
    o5214["Value"] = L0
    if not (L0 ~= 1) then
      o5214.ChangeTo1()
    end
  end
end }
o5215 = { [nil] = {}, GetCalculated = function()
  if not (o5177.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5215.SetStateValue(o5215.GetCalculated())
end, StartCalculate = function()
  o5215["Value"] = o5215.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o31.Node, o5196.Node, 132)
end, SetStateValue = function(L0)
  if not (o5215.Value == L0) then
    o5215["Value"] = L0
    if not (L0 ~= 1) then
      o5215.ChangeTo1()
    end
  end
end }
o5216 = { [nil] = {}, GetCalculated = function()
  if not (o5183.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5216.SetStateValue(o5216.GetCalculated())
end, StartCalculate = function()
  o5216["Value"] = o5216.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o31.Node, o5196.Node, 133)
end, SetStateValue = function(L0)
  if not (o5216.Value == L0) then
    o5216["Value"] = L0
    if not (L0 ~= 1) then
      o5216.ChangeTo1()
    end
  end
end }
o5217 = { [nil] = {}, GetCalculated = function()
  if not (o5189.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5217.SetStateValue(o5217.GetCalculated())
end, StartCalculate = function()
  o5217["Value"] = o5217.GetCalculated()
  o5220.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o31.Node, o5196.Node, 139)
end, SetStateValue = function(L0)
  if not (o5217.Value == L0) then
    o5217["Value"] = L0
    o5220.ReCalculate()
    if not (L0 ~= 1) then
      o5217.ChangeTo1()
    end
  end
end }
o5218 = { [nil] = {}, GetCalculated = function()
  if not (o6138.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5218.SetStateValue(o5218.GetCalculated())
end, StartCalculate = function()
  o5218["Value"] = o5218.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o6244.Node)
end, SetStateValue = function(L0)
  if not (o5218.Value == L0) then
    DelayedFunction(2, o5218, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5218.Value == L0) then
    o5218["Value"] = L0
    if not (L0 ~= 1) then
      o5218.ChangeTo1()
    end
  end
end }
o5219 = { [nil] = {}, GetCalculated = function()
  if not (o6138.Value ~= True) then
    if not (o6196.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5219.SetStateValue(o5219.GetCalculated())
end, StartCalculate = function()
  o5219["Value"] = o5219.GetCalculated()
  o5191.StartCalculate()
  o5258.StartCalculate()
  o5260.StartCalculate()
  o5268.StartCalculate()
  o5677.StartCalculate()
  o5733.StartCalculate()
  o5789.StartCalculate()
  o5845.StartCalculate()
  o5901.StartCalculate()
  o5957.StartCalculate()
  o6013.StartCalculate()
  o6069.StartCalculate()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "Atmo")
  SendRadioMessageTake(o5257.Node, o5196.Node, 134)
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
  SED_SetTaskTextKey(2101, -1, -1)
  Game_SetWayPoint(GetGameNode(), o6249.Node)
end, SetStateValue = function(L0)
  if not (o5219.Value == L0) then
    DelayedFunction(2, o5219, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5219.Value == L0) then
    o5219["Value"] = L0
    o5191.ReCalculate()
    o5258.ReCalculate()
    o5260.ReCalculate()
    o5268.ReCalculate()
    o5677.ReCalculate()
    o5733.ReCalculate()
    o5789.ReCalculate()
    o5845.ReCalculate()
    o5901.ReCalculate()
    o5957.ReCalculate()
    o6013.ReCalculate()
    o6069.ReCalculate()
    if not (L0 ~= 1) then
      o5219.ChangeTo1()
    end
  end
end }
o5220 = { [nil] = {}, GetCalculated = function()
  if not (o5217.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5220.SetStateValue(o5220.GetCalculated())
end, StartCalculate = function()
  o5220["Value"] = o5220.GetCalculated()
  o5253.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 1, 2001, 2100)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  SED_SetTaskTextKey(0, -1, -1)
end, SetStateValue = function(L0)
  if not (o5220.Value == L0) then
    DelayedFunction(4, o5220, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5220.Value == L0) then
    o5220["Value"] = L0
    o5253.ReCalculate()
    if not (L0 ~= 1) then
      o5220.ChangeTo1()
    end
  end
end }
o5221 = { [nil] = {}, GetCalculated = function()
  if not (o5281.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5221.SetStateValue(o5221.GetCalculated())
end, StartCalculate = function()
  o5221["Value"] = o5221.GetCalculated()
  o5254.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 2, 2001, 2101)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  SED_SetTaskTextKey(0, -1, -1)
end, SetStateValue = function(L0)
  if not (o5221.Value == L0) then
    DelayedFunction(2, o5221, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5221.Value == L0) then
    o5221["Value"] = L0
    o5254.ReCalculate()
    if not (L0 ~= 1) then
      o5221.ChangeTo1()
    end
  end
end }
o5222 = { [nil] = {}, Start = function()
  o5222["Value"] = False
  o5223.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5222.Value == L0) then
    o5222["Value"] = L0
    o5223.ReCalculate()
  end
end }
o5223 = { [nil] = {}, GetCalculated = function()
  if not (o5222.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5223.SetStateValue(o5223.GetCalculated())
end, StartCalculate = function()
  o5223["Value"] = o5223.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 2, 2000, 2101)
  Game_SetWayPoint(GetGameNode(), o6254.Node)
  SED_SetTaskTextKey(2102, -1, -1)
end, SetStateValue = function(L0)
  if not (o5223.Value == L0) then
    o5223["Value"] = L0
    if not (L0 ~= 1) then
      o5223.ChangeTo1()
    end
  end
end }
o5224 = { [nil] = {}, Start = function()
  o5224["Value"] = False
  o5225.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5224.Value == L0) then
    o5224["Value"] = L0
    o5225.ReCalculate()
  end
end }
o5225 = { [nil] = {}, GetCalculated = function()
  if not (o5224.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5225.SetStateValue(o5225.GetCalculated())
end, StartCalculate = function()
  o5225["Value"] = o5225.GetCalculated()
  o5229.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 3, 2000, 2102)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  SED_SetTaskTextKey(0, -1, -1)
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o5225.Value == L0) then
    DelayedFunction(5, o5225, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5225.Value == L0) then
    o5225["Value"] = L0
    o5229.ReCalculate()
    if not (L0 ~= 1) then
      o5225.ChangeTo1()
    end
  end
end }
o5226 = { [nil] = {}, GetCalculated = function()
  if not (o6242.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5226.SetStateValue(o5226.GetCalculated())
end, StartCalculate = function()
  o5226["Value"] = o5226.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6123.Node, o5196.Node, 697)
end, SetStateValue = function(L0)
  if not (o5226.Value == L0) then
    o5226["Value"] = L0
    if not (L0 ~= 1) then
      o5226.ChangeTo1()
    end
  end
end }
o5227 = { [nil] = {}, GetCalculated = function()
  if not (o6130.Value == True) then
    if not (o6188.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5227.SetStateValue(o5227.GetCalculated())
end, StartCalculate = function()
  o5227["Value"] = o5227.GetCalculated()
  o5255.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 1, 2001, 2100)
  SED_SetTaskTextKey(0, -1, -1)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
end, SetStateValue = function(L0)
  if not (o5227.Value == L0) then
    DelayedFunction(2, o5227, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5227.Value == L0) then
    o5227["Value"] = L0
    o5255.ReCalculate()
    if not (L0 ~= 1) then
      o5227.ChangeTo1()
    end
  end
end }
o5228 = { [nil] = {}, GetCalculated = function()
  if not (o5195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5228.SetStateValue(o5228.GetCalculated())
end, StartCalculate = function()
  o5228["Value"] = o5228.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "Agressive")
end, SetStateValue = function(L0)
  if not (o5228.Value == L0) then
    o5228["Value"] = L0
    if not (L0 ~= 1) then
      o5228.ChangeTo1()
    end
  end
end }
o5229 = { [nil] = {}, GetCalculated = function()
  if not (o5225.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5229.SetStateValue(o5229.GetCalculated())
end, StartCalculate = function()
  o5229["Value"] = o5229.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5229.Value == L0) then
    o5229["Value"] = L0
    o2.ReCalculate()
  end
end }
o5253 = { [nil] = {}, GetCalculated = function()
  if not (o5220.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5253.SetStateValue(o5253.GetCalculated())
end, StartCalculate = function()
  o5253["Value"] = o5253.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5253.Value == L0) then
    o5253["Value"] = L0
    o26.ReCalculate()
  end
end }
o5254 = { [nil] = {}, GetCalculated = function()
  if not (o5221.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5254.SetStateValue(o5254.GetCalculated())
end, StartCalculate = function()
  o5254["Value"] = o5254.GetCalculated()
  o27.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5254.Value == L0) then
    o5254["Value"] = L0
    o27.ReCalculate()
  end
end }
o5255 = { [nil] = {}, GetCalculated = function()
  if not (o5227.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5255.SetStateValue(o5255.GetCalculated())
end, StartCalculate = function()
  o5255["Value"] = o5255.GetCalculated()
  o28.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5255.Value == L0) then
    o5255["Value"] = L0
    o28.ReCalculate()
  end
end }
S_o5257 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o30)
  CallFunction(o5257, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5257, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o30, "Code3")
  else
    CallFunction(o5257, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o5257, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameScenes/Navigation/BomberPath_1", 0.75, 1 } }("Code5")
  else
    CallFunction(o5257, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code6")
  else
    CallFunction(o5257, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Eerie_Path_1", 0.75, 1 } }("Code7")
  else
    CallFunction(o5257, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code8")
  else
    CallFunction(o5257, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5257, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o6123.Node, "dp_ver_1", "dp_ver_1", 0.4, 0.75, 60, "Code10")
  else
    CallFunction(o5257, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 3 } }("Code11")
  else
    CallFunction(o5257, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o6181.Node, "dp_ver_1", "dp_ver_1", 0.4, 0.75, 60, "Code12")
  else
    CallFunction(o5257, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 3 } }("Code13")
  else
    CallFunction(o5257, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  o5222.SetStateValue(True)
  CallFunction(o5257, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Eerie_Path_2", 0.75, 1 } }("Code15")
  else
    CallFunction(o5257, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  o5224.SetStateValue(True)
  CallFunction(o5257, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o30, nil, 1e+32, "Code17")
  else
    CallFunction(o5257, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
end, SetStateValue_KineticShield75 = function(L0, L1)
  o5276.SetStateValue(L1)
end, SetStateValue_KineticShield50 = function(L0, L1)
  o5277.SetStateValue(L1)
end, SetStateValue_KineticShield25 = function(L0, L1)
  o5278.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o5281.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5267.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5258.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o5260.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o5268.Value ~= True) then
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
o5258 = { [nil] = {}, GetCalculated = function()
  if not (o5219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5258.SetStateValue(o5258.GetCalculated())
end, StartCalculate = function()
  o5258["Value"] = o5258.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5258.Value == L0) then
    o5258["Value"] = L0
    CallFunction(o5257, "ProcesseStateChange")
  end
end }
o5260 = { [nil] = {}, GetCalculated = function()
  if not (o5219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5260.SetStateValue(o5260.GetCalculated())
end, StartCalculate = function()
  o5260["Value"] = o5260.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5260.Value == L0) then
    o5260["Value"] = L0
    CallFunction(o5257, "ProcesseStateChange")
  end
end }
o5267 = { [nil] = {}, GetCalculated = function()
  if not (o6270.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5267.SetStateValue(o5267.GetCalculated())
end, StartCalculate = function()
  o5267["Value"] = o5267.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5267.Value == L0) then
    DelayedFunction(5, o5267, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5267.Value == L0) then
    o5267["Value"] = L0
    CallFunction(o5257, "ProcesseStateChange")
  end
end }
o5268 = { [nil] = {}, GetCalculated = function()
  if not (o5219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5268.SetStateValue(o5268.GetCalculated())
end, StartCalculate = function()
  o5268["Value"] = o5268.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5268.Value == L0) then
    o5268["Value"] = L0
    CallFunction(o5257, "ProcesseStateChange")
  end
end }
o5276 = { [nil] = {}, Start = function()
  o5276["Value"] = False
  o5210.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5276.Value == L0) then
    o5276["Value"] = L0
    o5210.ReCalculate()
  end
end }
o5277 = { [nil] = {}, Start = function()
  o5277["Value"] = False
  o5211.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5277.Value == L0) then
    o5277["Value"] = L0
    o5211.ReCalculate()
  end
end }
o5278 = { [nil] = {}, Start = function()
  o5278["Value"] = False
  o5212.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5278.Value == L0) then
    o5278["Value"] = L0
    o5212.ReCalculate()
  end
end }
o5281 = { [nil] = {}, Start = function()
  o5281["Value"] = False
  o5221.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5281.Value == L0) then
    o5281["Value"] = L0
    o5221.ReCalculate()
  end
end }
S_o5322 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5322, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5322, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5322, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o5322, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o5324.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5324 = { [nil] = {}, Start = function()
  o5324["Value"] = False
  o5213.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5324.Value == L0) then
    o5324["Value"] = L0
    o5213.ReCalculate()
  end
end }
S_o5377 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5377, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5377, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5377, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o5377, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o5379.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5379 = { [nil] = {}, Start = function()
  o5379["Value"] = False
  o5213.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5379.Value == L0) then
    o5379["Value"] = L0
    o5213.ReCalculate()
  end
end }
S_o5432 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5432, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5432, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5432, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o5432, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o5434.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5434 = { [nil] = {}, Start = function()
  o5434["Value"] = False
  o5213.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5434.Value == L0) then
    o5434["Value"] = L0
    o5213.ReCalculate()
  end
end }
S_o5487 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5487, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5487, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5487, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Brainfire_TankPatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "E", "", "", "", 15, "Code4")
  else
    CallFunction(o5487, "Code4")
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
S_o5534 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5534, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5534, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5534, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Brainfire_TankPatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "E", "", "", "", 15, "Code4")
  else
    CallFunction(o5534, "Code4")
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
S_o5581 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5581, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5581, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5581, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Brainfire_TankPatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "E", "", "", "", 15, "Code4")
  else
    CallFunction(o5581, "Code4")
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
S_o5628 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5628, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5628, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5628, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Brainfire_TankPatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "E", "", "", "", 15, "Code4")
  else
    CallFunction(o5628, "Code4")
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
S_o5675 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5165)
  CallFunction(o5675, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5675, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5165, "Code3")
  else
    CallFunction(o5675, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Atl_BattleArea", "/Scenario_Dynamic/Navigation/Atl_BattleArea", "/Scenario_Dynamic/Navigation/Atl_BattleArea", "E", "", "", "", 15, "Code4")
  else
    CallFunction(o5675, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5677.Value ~= True) then
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
o5677 = { [nil] = {}, GetCalculated = function()
  if not (o5219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5677.SetStateValue(o5677.GetCalculated())
end, StartCalculate = function()
  o5677["Value"] = o5677.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5677.Value == L0) then
    DelayedFunction(5, o5677, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5677.Value == L0) then
    o5677["Value"] = L0
    CallFunction(o5675, "ProcesseStateChange")
  end
end }
S_o5731 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5165)
  CallFunction(o5731, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5731, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5165, "Code3")
  else
    CallFunction(o5731, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Atl_BattleArea", "/Scenario_Dynamic/Navigation/Atl_BattleArea", "/Scenario_Dynamic/Navigation/Atl_BattleArea", "E", "", "", "", 15, "Code4")
  else
    CallFunction(o5731, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5733.Value ~= True) then
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
o5733 = { [nil] = {}, GetCalculated = function()
  if not (o5219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5733.SetStateValue(o5733.GetCalculated())
end, StartCalculate = function()
  o5733["Value"] = o5733.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5733.Value == L0) then
    DelayedFunction(5, o5733, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5733.Value == L0) then
    o5733["Value"] = L0
    CallFunction(o5731, "ProcesseStateChange")
  end
end }
S_o5787 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5165)
  CallFunction(o5787, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5787, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5165, "Code3")
  else
    CallFunction(o5787, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Atl_BattleArea", "/Scenario_Dynamic/Navigation/Atl_BattleArea", "/Scenario_Dynamic/Navigation/Atl_BattleArea", "E", "", "", "", 15, "Code4")
  else
    CallFunction(o5787, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5789.Value ~= True) then
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
o5789 = { [nil] = {}, GetCalculated = function()
  if not (o5219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5789.SetStateValue(o5789.GetCalculated())
end, StartCalculate = function()
  o5789["Value"] = o5789.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5789.Value == L0) then
    DelayedFunction(5, o5789, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5789.Value == L0) then
    o5789["Value"] = L0
    CallFunction(o5787, "ProcesseStateChange")
  end
end }
S_o5843 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5165)
  CallFunction(o5843, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5843, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5165, "Code3")
  else
    CallFunction(o5843, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Atl_BattleArea", "/Scenario_Dynamic/Navigation/Atl_BattleArea", "/Scenario_Dynamic/Navigation/Atl_BattleArea", "E", "", "", "", 15, "Code4")
  else
    CallFunction(o5843, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5845.Value ~= True) then
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
o5845 = { [nil] = {}, GetCalculated = function()
  if not (o5219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5845.SetStateValue(o5845.GetCalculated())
end, StartCalculate = function()
  o5845["Value"] = o5845.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5845.Value == L0) then
    DelayedFunction(5, o5845, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5845.Value == L0) then
    o5845["Value"] = L0
    CallFunction(o5843, "ProcesseStateChange")
  end
end }
S_o5899 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5165)
  CallFunction(o5899, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5899, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5165, "Code3")
  else
    CallFunction(o5899, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Atl_BattleArea", "/Scenario_Dynamic/Navigation/Atl_BattleArea", "/Scenario_Dynamic/Navigation/Atl_BattleArea", "E", "", "", "", 15, "Code4")
  else
    CallFunction(o5899, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5901.Value ~= True) then
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
o5901 = { [nil] = {}, GetCalculated = function()
  if not (o5219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5901.SetStateValue(o5901.GetCalculated())
end, StartCalculate = function()
  o5901["Value"] = o5901.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5901.Value == L0) then
    DelayedFunction(85, o5901, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5901.Value == L0) then
    o5901["Value"] = L0
    CallFunction(o5899, "ProcesseStateChange")
  end
end }
S_o5955 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5165)
  CallFunction(o5955, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5955, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5165, "Code3")
  else
    CallFunction(o5955, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Atl_BattleArea", "/Scenario_Dynamic/Navigation/Atl_BattleArea", "/Scenario_Dynamic/Navigation/Atl_BattleArea", "E", "", "", "", 15, "Code4")
  else
    CallFunction(o5955, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5957.Value ~= True) then
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
o5957 = { [nil] = {}, GetCalculated = function()
  if not (o5219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5957.SetStateValue(o5957.GetCalculated())
end, StartCalculate = function()
  o5957["Value"] = o5957.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5957.Value == L0) then
    DelayedFunction(85, o5957, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5957.Value == L0) then
    o5957["Value"] = L0
    CallFunction(o5955, "ProcesseStateChange")
  end
end }
S_o6011 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5165)
  CallFunction(o6011, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6011, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5165, "Code3")
  else
    CallFunction(o6011, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Atl_BattleArea", "/Scenario_Dynamic/Navigation/Atl_BattleArea", "/Scenario_Dynamic/Navigation/Atl_BattleArea", "E", "", "", "", 15, "Code4")
  else
    CallFunction(o6011, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6013.Value ~= True) then
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
o6013 = { [nil] = {}, GetCalculated = function()
  if not (o5219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6013.SetStateValue(o6013.GetCalculated())
end, StartCalculate = function()
  o6013["Value"] = o6013.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6013.Value == L0) then
    DelayedFunction(190, o6013, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6013.Value == L0) then
    o6013["Value"] = L0
    CallFunction(o6011, "ProcesseStateChange")
  end
end }
S_o6067 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5165)
  CallFunction(o6067, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6067, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o5165, "Code3")
  else
    CallFunction(o6067, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Atl_BattleArea", "/Scenario_Dynamic/Navigation/Atl_BattleArea", "/Scenario_Dynamic/Navigation/Atl_BattleArea", "E", "", "", "", 15, "Code4")
  else
    CallFunction(o6067, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6069.Value ~= True) then
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
o6069 = { [nil] = {}, GetCalculated = function()
  if not (o5219.Value ~= True) then
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
    DelayedFunction(190, o6069, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6069.Value == L0) then
    o6069["Value"] = L0
    CallFunction(o6067, "ProcesseStateChange")
  end
end }
S_o6123 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6123, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6123, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6123, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o6123, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 10 } }("Code5")
  else
    CallFunction(o6123, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Techbomber1_Path_1", 0.75, 1 } }("Code6")
  else
    CallFunction(o6123, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o5165, nil, 1e+32, "Code7")
  else
    CallFunction(o6123, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6123, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Attacked = function(L0, L1)
  o6128.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o6130.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o6138.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6128 = { [nil] = {}, Start = function()
  o6128["Value"] = False
  o5213.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6128.Value == L0) then
    o6128["Value"] = L0
    o5213.ReCalculate()
  end
end }
o6130 = { [nil] = {}, Start = function()
  o6130["Value"] = False
  o5227.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6130.Value == L0) then
    o6130["Value"] = L0
    o5227.ReCalculate()
  end
end }
o6138 = { [nil] = {}, Start = function()
  o6138["Value"] = False
  o5218.StartCalculate()
  o5219.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6138.Value == L0) then
    o6138["Value"] = L0
    o5218.ReCalculate()
    o5219.ReCalculate()
  end
end }
S_o6181 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6181, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6181, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6181, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o6181, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 10 } }("Code5")
  else
    CallFunction(o6181, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Techbomber2_Path_1", 0.75, 1 } }("Code6")
  else
    CallFunction(o6181, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o5165, nil, 1e+32, "Code7")
  else
    CallFunction(o6181, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6181, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Attacked = function(L0, L1)
  o6186.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o6188.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o6196.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6186 = { [nil] = {}, Start = function()
  o6186["Value"] = False
  o5213.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6186.Value == L0) then
    o6186["Value"] = L0
    o5213.ReCalculate()
  end
end }
o6188 = { [nil] = {}, Start = function()
  o6188["Value"] = False
  o5227.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6188.Value == L0) then
    o6188["Value"] = L0
    o5227.ReCalculate()
  end
end }
o6196 = { [nil] = {}, Start = function()
  o6196["Value"] = False
  o5219.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6196.Value == L0) then
    o6196["Value"] = L0
    o5219.ReCalculate()
  end
end }
S_o6239 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o6123.Node)
  CallFunction(o6239, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o6242.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6242 = { [nil] = {}, Start = function()
  o6242["Value"] = False
  o5226.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6242.Value == L0) then
    o6242["Value"] = L0
    o5226.ReCalculate()
  end
end }
S_o6244 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o6181.Node)
  CallFunction(o6244, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6249 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o5257.Node)
  CallFunction(o6249, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6254 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o5257.Node)
  CallFunction(o6254, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6259 = { [nil] = {}, Start = function(L0)

end }
S_o6260 = { [nil] = {}, Start = function(L0)

end }
S_o6261 = { [nil] = {}, Start = function(L0)

end }
S_o6262 = { [nil] = {}, Start = function(L0)

end }
o6263 = FormationLib.CreateFormation("Triangle", "", "", "", 10, 10)
S_o6265 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Track3")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o6265, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o6265, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/IngameScenes/Navigation/LookFrom_0", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameScenes/Navigation/LookAt_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o6265, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.3, "Code9")
  else
    CallFunction(o6265, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  o6270.SetStateValue(True)
  FormationLib.PlaceFormationPath(o6264, o6263, "/IngameScenes/Navigation/PlayerPath_1")
  CallFunction(o6265, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o6264, o6263, "/IngameScenes/Navigation/PlayerPath_1", "pos_1", "pos_5", 0.8, 1, "Code12")
  else
    CallFunction(o6265, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Director_EndCutscene(L0.Node)
  CallFunction(o6265, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code14")
  else
    CallFunction(o6265, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  SED_SetTaskTextKey(2100, -1, -1)
  Game_SetWayPoint(GetGameNode(), o6239.Node)
  CallFunction(o6265, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6270 = { [nil] = {}, Start = function()
  o6270["Value"] = False
  o5267.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6270.Value == L0) then
    o6270["Value"] = L0
    o5267.ReCalculate()
  end
end }
S_o6271 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code1")
  else
    CallFunction(o6271, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Camera_MoveTo(L0.Node, "/IngameScenes/Navigation/LookFrom_1", 5, "MMMN", 0)
  CallFunction(o6271, "Code2")
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
  Game_LoadProgress_Enter(Node_Find("/"), 248)
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
  o5166 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "BrainfireDistance_1500", S_o5166)
  o5171.Start()
  o5172 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "BrainfireDistance_1000", S_o5172)
  o5177.Start()
  o5178 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "BrainfireDistance_750", S_o5178)
  o5183.Start()
  o5184 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "BrainfireDistance_toClose", S_o5184)
  o5189.Start()
  o5190 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerAgressiveMusic", S_o5190)
  o5195.Start()
  o5196 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o5196)
  o5222.Start()
  o5224.Start()
  o5257 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_techbomber_1", S_o5257)
  o5276.Start()
  o5277.Start()
  o5278.Start()
  o5281.Start()
  o5322 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_frigate_1", S_o5322)
  o5324.Start()
  o5377 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_frigate_2", S_o5377)
  o5379.Start()
  o5432 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_frigate_3", S_o5432)
  o5434.Start()
  o5487 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_tank_1", S_o5487)
  o5534 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_tank_2", S_o5534)
  o5581 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_buggy_1", S_o5581)
  o5628 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_buggy_2", S_o5628)
  o5675 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_1", S_o5675)
  o5731 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_2", S_o5731)
  o5787 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_3", S_o5787)
  o5843 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_4", S_o5843)
  o5899 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_7", S_o5899)
  o5955 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_8", S_o5955)
  o6011 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_9", S_o6011)
  o6067 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_10", S_o6067)
  o6123 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_techbomber_1", S_o6123)
  o6128.Start()
  o6130.Start()
  o6138.Start()
  o6181 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_techbomber_2", S_o6181)
  o6186.Start()
  o6188.Start()
  o6196.Start()
  o6239 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_emp_1", S_o6239)
  o6242.Start()
  o6244 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_emp_2", S_o6244)
  o6249 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_guard_1", S_o6249)
  o6254 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_escort_1", S_o6254)
  o6259 = BindEasy(Node_Find("/"), "Camera", S_o6259)
  o6260 = BindEasy(Node_Find("/IngameScenes/Navigation"), "LookFrom_0", S_o6260)
  o6261 = BindEasy(Node_Find("/IngameScenes/Navigation"), "LookFrom_1", S_o6261)
  o6262 = BindEasy(Node_Find("/IngameScenes/Navigation"), "LookAt_1", S_o6262)
  o6270.Start()
  o6265 = BindEasy(Node_Find("/IngameScenes/Director"), "Intro", S_o6265)
  o6271 = BindEasy(Node_Find("/IngameScenes/Director"), "Intro_AddOn", S_o6271)
  o6264 = { {}, o5196 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
