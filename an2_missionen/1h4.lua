-- dekompiliert aus 1h4.sco
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
  Game_SetDecompressionHeight(node0, 250)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.058824, 0.058824, 0.043137)
  Game_SetParallelLightT(node0, 0.117647, 0.117647, 0.082353)
  Game_SetParallelLightB(node0, 0.058824, 0.058824, 0.043137)
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_1h4.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_1H4.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient1.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit2.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_hektik.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit4.sam", 3)
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
  Body_SetFriendOrFoeID(node63, 1)
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
  Body_SetFriendOrFoeID(node64, 1)
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
  Body_SetFriendOrFoeID(node65, 1)
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
  Body_SetFriendOrFoeID(node66, 1)
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
  Body_SetFriendOrFoeID(node67, 1)
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
  Body_SetCS(node90, MAT_Vector3(1831.657926, 3198.311449, 11.317261), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node95, MAT_Vector3(2365.572688, 2775.469548, 13.477434), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node100, MAT_Vector3(2738.164, 2112.137, 34.045182), MAT_Vector3(22.50918, 19.78855, 2.214895))
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
  Body_SetCS(node101, MAT_Vector3(2719.946, 2082.905, 63.691585), MAT_Vector3(41.60759, 3.855879, -5.538739))
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
  Body_SetCS(node103, MAT_Vector3(2539.963808, 3291.201042, 7.794404), MAT_Vector3(-12.13577, -1.890307, -20.82948))
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
  Body_SetCS(node104, MAT_Vector3(2931.462, 3149.625, 86.960112), MAT_Vector3(-19.29982, 14.428, -9.642937))
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
  Body_SetCS(node106, MAT_Vector3(2624.323124, 957.002202, 100.751953), MAT_Vector3(-2.348301, 24.270242, 2.255122))
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
  Body_SetCS(node108, MAT_Vector3(2960.47379, 679.299043, 162.998119), MAT_Vector3(-8.566683, 2.636106, -31.340208))
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
  Body_SetCS(node109, MAT_Vector3(2720.733162, 1509.666129, 85.460321), MAT_Vector3(10.589476, -8.397294, -6.130621))
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
  Body_SetCS(node113, MAT_Vector3(2832.175431, 475.27189, 118.047955), MAT_Vector3(96.895893, 23.581123, -58.961912))
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
  Body_SetCS(node114, MAT_Vector3(2848.35735, 232.037048, 104.522488), MAT_Vector3(-42.041961, -6.925412, -43.104916))
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
  Body_SetCS(node115, MAT_Vector3(2941.058246, 222.761848, 120.923894), MAT_Vector3(-24.656951, 10.365501, -29.864225))
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
  Body_SetCS(node116, MAT_Vector3(2899.557364, 331.55063, 120.050351), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node117, MAT_Vector3(3012.511551, 314.758923, 143.605627), MAT_Vector3(-35.827266, 29.526561, -19.768019))
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
  Body_SetCS(node118, MAT_Vector3(2926.187825, 344.034586, 113.11596), MAT_Vector3(-16.109397, -7.830995, -11.212696))
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
  Body_SetCS(node119, MAT_Vector3(2867.413956, 1778.758794, 133.280101), MAT_Vector3(-62.875907, 11.828779, -25.372184))
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
  Body_SetCS(node120, MAT_Vector3(2912.528542, 311.507025, 119.951928), MAT_Vector3(10.092391, 6.959475, 6.270563))
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
  Body_SetCS(node121, MAT_Vector3(1240.496647, 3117.852554, 21.011195), MAT_Vector3(-51.817597, 51.699835, -22.72664))
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
  Body_SetCS(node122, MAT_Vector3(1279.851471, 3203.677358, 14.242332), MAT_Vector3(-44.858425, -29.743524, 3.39679))
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
  Body_SetCS(node123, MAT_Vector3(1335.818859, 3232.745779, 38.80337), MAT_Vector3(-70.090509, 4.872047, -0.094221))
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
  Body_SetCS(node124, MAT_Vector3(1269.007617, 3092.423589, 42.907105), MAT_Vector3(-89.900713, 20.438739, -6.131959))
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
  Body_SetCS(node125, MAT_Vector3(1022.019245, 2653.343179, 47.123567), MAT_Vector3(33.009784, 20.43874, -6.131959))
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
  Body_SetCS(node126, MAT_Vector3(1163.39156, 3059.256865, 20.117932), MAT_Vector3(-16.89159, 16.616196, -5.558195))
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
  Body_SetCS(node127, MAT_Vector3(925.452942, 2597.60256, 24.649094), MAT_Vector3(-13.516228, 5.476162, 6.401307))
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
  Body_SetCS(node128, MAT_Vector3(1014.832249, 2541.335506, 34.499435), MAT_Vector3(12.984799, -5.787932, -6.540406))
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
  node134 = Node_CreateNode("nod_fx_plant", "org_grass_l_1")
  Node_AddSon(node15, node134)
  Node_ParseIniFile(node134, "osd/fx_plant/org_grass_l.osd")
  FX_Plant_SetMap(node134, "map/1H4/Terrain/org_grass_l.tga")
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node15, node135)
  Node_ParseIniFile(node135, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node135, "map/1H4/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node15, node136)
  Node_ParseIniFile(node136, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node136, "map/1H4/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_fx_plant", "org_seetang_1")
  Node_AddSon(node15, node137)
  Node_ParseIniFile(node137, "osd/fx_plant/org_seetang.osd")
  FX_Plant_SetMap(node137, "map/1H4/Terrain/org_seetang.tga")
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
  node141 = Node_CreateNode("NOD_PatrolArea", "Prison_VehiclePatrolArea")
  Node_AddSon(node140, node141)
  PatrolArea_SetPosition(node141, MAT_Vector3(2858.743039, 417.430755, 149.9617))
  PatrolArea_SetRadius(node141, 100)
  PatrolArea_SetMinZ(node141, -50)
  PatrolArea_SetMaxZ(node141, 100)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_PatrolArea", "Prison_PatrolArea")
  Node_AddSon(node140, node142)
  PatrolArea_SetPosition(node142, MAT_Vector3(2846.09669, 320.86099, 149.9617))
  PatrolArea_SetRadius(node142, 120)
  PatrolArea_SetMinZ(node142, -50)
  PatrolArea_SetMaxZ(node142, 100)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_PatrolArea", "Prison_TriggerArea")
  Node_AddSon(node140, node143)
  PatrolArea_SetPosition(node143, MAT_Vector3(2877.157297, 451.156907, 172.744567))
  PatrolArea_SetRadius(node143, 200)
  PatrolArea_SetMinZ(node143, -100)
  PatrolArea_SetMaxZ(node143, 100)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_PatrolArea", "Prison_FollowArea")
  Node_AddSon(node140, node144)
  PatrolArea_SetPosition(node144, MAT_Vector3(2877.157297, 448.795049, 172.587669))
  PatrolArea_SetRadius(node144, 500)
  PatrolArea_SetMinZ(node144, -100)
  PatrolArea_SetMaxZ(node144, 75)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Path", "TechBomberPath_1")
  Node_AddSon(node140, node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node145, node146)
  Position_SetPosition(node146, MAT_Vector3(2788.503173, 1132.362841, 158.007404))
  Position_SetRadius(node146, 5)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node145, node147)
  Position_SetPosition(node147, MAT_Vector3(2767.246444, 985.927598, 187.704524))
  Position_SetRadius(node147, 5)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node145, node148)
  Position_SetPosition(node148, MAT_Vector3(2802.674326, 830.04492, 203.792578))
  Position_SetRadius(node148, 5)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node145, node149)
  Position_SetPosition(node149, MAT_Vector3(2892.424958, 708.409194, 212.284142))
  Position_SetRadius(node149, 5)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node145, node150)
  Position_SetPosition(node150, MAT_Vector3(2905.415181, 537.174434, 205.89913))
  Position_SetRadius(node150, 5)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node145, node151)
  Position_SetPosition(node151, MAT_Vector3(2841.644998, 422.62429, 198.661934))
  Position_SetRadius(node151, 5)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Path", "AngelinaPath_1")
  Node_AddSon(node140, node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node152, node153)
  Position_SetPosition(node153, MAT_Vector3(2789.684105, 1106.382396, 160.55824))
  Position_SetRadius(node153, 5)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node152, node154)
  Position_SetPosition(node154, MAT_Vector3(2783.77946, 896.176966, 196.173507))
  Position_SetRadius(node154, 5)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node152, node155)
  Position_SetPosition(node155, MAT_Vector3(2809.759902, 806.426333, 208.534813))
  Position_SetRadius(node155, 5)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node152, node156)
  Position_SetPosition(node156, MAT_Vector3(2890.063102, 690.695254, 210.915067))
  Position_SetRadius(node156, 5)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node152, node157)
  Position_SetPosition(node157, MAT_Vector3(2894.786819, 586.773471, 213.667264))
  Position_SetRadius(node157, 5)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Path", "AngelinaWaitingPath_1")
  Node_AddSon(node140, node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node158, node159)
  Position_SetPosition(node159, MAT_Vector3(2792.232836, 449.424301, 219.645308))
  Position_SetRadius(node159, 5)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node158, node160)
  Position_SetPosition(node160, MAT_Vector3(2829.268088, 420.319437, 197.204503))
  Position_SetRadius(node160, 5)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Path", "TechBomberPath_2")
  Node_AddSon(node140, node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node161, node162)
  Position_SetPosition(node162, MAT_Vector3(2885.983713, 521.520589, 169.455609))
  Position_SetRadius(node162, 5)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node161, node163)
  Position_SetPosition(node163, MAT_Vector3(2897.092275, 669.597876, 176.261446))
  Position_SetRadius(node163, 5)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node161, node164)
  Position_SetPosition(node164, MAT_Vector3(2865.809004, 740.516197, 176.2614))
  Position_SetRadius(node164, 5)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node161, node165)
  Position_SetPosition(node165, MAT_Vector3(2784.324874, 852.704489, 176.2614))
  Position_SetRadius(node165, 5)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node161, node166)
  Position_SetPosition(node166, MAT_Vector3(2710.170536, 986.442087, 189.077914))
  Position_SetRadius(node166, 5)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node161, node167)
  Position_SetPosition(node167, MAT_Vector3(2413.251998, 1169.594254, 184.179173))
  Position_SetRadius(node167, 5)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node161, node168)
  Position_SetPosition(node168, MAT_Vector3(2399.342164, 1593.844196, 209.318297))
  Position_SetRadius(node168, 5)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Path", "TechBomberPath_3")
  Node_AddSon(node140, node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node169, node170)
  Position_SetPosition(node170, MAT_Vector3(2659.988357, 1604.503254, 112.498331))
  Position_SetRadius(node170, 5)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node169, node171)
  Position_SetPosition(node171, MAT_Vector3(2771.56888, 1767.719203, 176.360325))
  Position_SetRadius(node171, 5)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node169, node172)
  Position_SetPosition(node172, MAT_Vector3(2820.2533, 1920.727379, 177.409461))
  Position_SetRadius(node172, 5)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node169, node173)
  Position_SetPosition(node173, MAT_Vector3(3004.732943, 2006.678379, 192.200291))
  Position_SetRadius(node173, 5)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node169, node174)
  Position_SetPosition(node174, MAT_Vector3(3060.37228, 1968.426335, 190.804022))
  Position_SetRadius(node174, 5)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_PatrolArea", "PirateStation_PatrolArea")
  Node_AddSon(node140, node175)
  PatrolArea_SetPosition(node175, MAT_Vector3(3164.169188, 2029.013877, 119.986759))
  PatrolArea_SetRadius(node175, 100)
  PatrolArea_SetMinZ(node175, -20)
  PatrolArea_SetMaxZ(node175, 50)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_PatrolArea", "PirateStation_TriggerArea")
  Node_AddSon(node140, node176)
  PatrolArea_SetPosition(node176, MAT_Vector3(3191.614762, 1982.462141, 144.297963))
  PatrolArea_SetRadius(node176, 300)
  PatrolArea_SetMinZ(node176, -100)
  PatrolArea_SetMaxZ(node176, 100)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_PatrolArea", "PirateStation_FollowArea")
  Node_AddSon(node140, node177)
  PatrolArea_SetPosition(node177, MAT_Vector3(3144.112084, 2002.478888, 169.421643))
  PatrolArea_SetRadius(node177, 500)
  PatrolArea_SetMinZ(node177, -100)
  PatrolArea_SetMaxZ(node177, 75)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_PatrolArea", "BomberEscort_TriggerArea")
  Node_AddSon(node140, node178)
  PatrolArea_SetPosition(node178, MAT_Vector3(0, 0, 0))
  PatrolArea_SetRadius(node178, 350)
  PatrolArea_SetMinZ(node178, -100)
  PatrolArea_SetMaxZ(node178, 100)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_PatrolArea", "BomberEscort_FollowArea")
  Node_AddSon(node140, node179)
  PatrolArea_SetPosition(node179, MAT_Vector3(0, 0, 0))
  PatrolArea_SetRadius(node179, 400)
  PatrolArea_SetMinZ(node179, -125)
  PatrolArea_SetMaxZ(node179, 125)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_PatrolArea", "Crawler_TriggerArea")
  Node_AddSon(node140, node180)
  PatrolArea_SetPosition(node180, MAT_Vector3(0, 0, 0))
  PatrolArea_SetRadius(node180, 350)
  PatrolArea_SetMinZ(node180, -100)
  PatrolArea_SetMaxZ(node180, 100)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_PatrolArea", "Crawler_FollowArea")
  Node_AddSon(node140, node181)
  PatrolArea_SetPosition(node181, MAT_Vector3(0, 0, 0))
  PatrolArea_SetRadius(node181, 400)
  PatrolArea_SetMinZ(node181, -125)
  PatrolArea_SetMaxZ(node181, 125)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("NOD_Path", "AngelinaPath_2")
  Node_AddSon(node140, node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node182, node183)
  Position_SetPosition(node183, MAT_Vector3(2511.231758, 1727.315169, 151.230791))
  Position_SetRadius(node183, 5)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node182, node184)
  Position_SetPosition(node184, MAT_Vector3(2539.928328, 2089.308447, 179.984537))
  Position_SetRadius(node184, 5)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node182, node185)
  Position_SetPosition(node185, MAT_Vector3(2326.653068, 2387.216746, 109.257139))
  Position_SetRadius(node185, 5)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node182, node186)
  Position_SetPosition(node186, MAT_Vector3(2184.469562, 2823.92323, 137.719052))
  Position_SetRadius(node186, 5)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node182, node187)
  Position_SetPosition(node187, MAT_Vector3(2021.974126, 3081.20767, 91.191941))
  Position_SetRadius(node187, 5)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node182, node188)
  Position_SetPosition(node188, MAT_Vector3(1622.50618, 3204.771908, 94.220446))
  Position_SetRadius(node188, 5)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node182, node189)
  Position_SetPosition(node189, MAT_Vector3(1498.941942, 3208.157229, 114.344558))
  Position_SetRadius(node189, 5)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Path", "WINGESCAPE_Path")
  Node_AddSon(node140, node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node190, node191)
  Position_SetPosition(node191, MAT_Vector3(2681.63025, 2241.218582, 182.214243))
  Position_SetRadius(node191, 25)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node190, node192)
  Position_SetPosition(node192, MAT_Vector3(2681.63, 2453.343971, 382.2142))
  Position_SetRadius(node192, 25)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Path", "CinganPath_1")
  Node_AddSon(node140, node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node193, node194)
  Position_SetPosition(node194, MAT_Vector3(2828.06978, 84.894247, 225))
  Position_SetRadius(node194, 10)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node193, node195)
  Position_SetPosition(node195, MAT_Vector3(2828.01196, 203.23018, 225))
  Position_SetRadius(node195, 10)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node193, node196)
  Position_SetPosition(node196, MAT_Vector3(2854.032047, 379.814307, 225))
  Position_SetRadius(node196, 10)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_Path", "CinganPath_2")
  Node_AddSon(node140, node197)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node197, node198)
  Position_SetPosition(node198, MAT_Vector3(2921.592382, 589.086595, 225))
  Position_SetRadius(node198, 10)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node197, node199)
  Position_SetPosition(node199, MAT_Vector3(2869.685891, 740.685394, 225))
  Position_SetRadius(node199, 10)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node197, node200)
  Position_SetPosition(node200, MAT_Vector3(2775.76066, 874.982158, 225))
  Position_SetRadius(node200, 10)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node197, node201)
  Position_SetPosition(node201, MAT_Vector3(2788.119597, 1305.885295, 225))
  Position_SetRadius(node201, 10)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node197, node202)
  Position_SetPosition(node202, MAT_Vector3(2740.725496, 1835.687849, 225))
  Position_SetRadius(node202, 10)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node197, node203)
  Position_SetPosition(node203, MAT_Vector3(2952.307607, 2004.954086, 225))
  Position_SetRadius(node203, 10)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node197, node204)
  Position_SetPosition(node204, MAT_Vector3(3179.124555, 2006.646661, 225))
  Position_SetRadius(node204, 10)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("NOD_PatrolArea", "TZDock_PatrolArea")
  Node_AddSon(node140, node205)
  PatrolArea_SetPosition(node205, MAT_Vector3(3256.066485, 1943.330226, 196.290088))
  PatrolArea_SetRadius(node205, 100)
  PatrolArea_SetMinZ(node205, -20)
  PatrolArea_SetMaxZ(node205, 20)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("NOD_Path", "TZDock_ApproachPath")
  Node_AddSon(node140, node206)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node206, node207)
  Position_SetPosition(node207, MAT_Vector3(3083.046122, 1977.934298, 188.545172))
  Position_SetRadius(node207, 5)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node206, node208)
  Position_SetPosition(node208, MAT_Vector3(3104.46769, 1872.474267, 191.9062))
  Position_SetRadius(node208, 5)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node206, node209)
  Position_SetPosition(node209, MAT_Vector3(3154.725986, 1821.392065, 162))
  Position_SetRadius(node209, 5)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("NOD_Path", "TZDock_DockPath")
  Node_AddSon(node140, node210)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node210, node211)
  Position_SetPosition(node211, MAT_Vector3(3209.103815, 1791.731431, 162))
  Position_SetRadius(node211, 5)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node210, node212)
  Position_SetPosition(node212, MAT_Vector3(3270.896802, 1737.353603, 162))
  Position_SetRadius(node212, 5)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("NOD_PatrolArea", "OverallArea")
  Node_AddSon(node140, node213)
  PatrolArea_SetPosition(node213, MAT_Vector3(2000, 2000, 250))
  PatrolArea_SetRadius(node213, 2500)
  PatrolArea_SetMinZ(node213, -250)
  PatrolArea_SetMaxZ(node213, 0)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("NOD_Path", "Stoney_Path_1")
  Node_AddSon(node140, node214)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node214, node215)
  Position_SetPosition(node215, MAT_Vector3(3194.21888, 1967.50218, 187.474994))
  Position_SetRadius(node215, 5)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node214, node216)
  Position_SetPosition(node216, MAT_Vector3(3055.020765, 2031.952693, 180.942382))
  Position_SetRadius(node216, 5)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("NOD_Path", "CrawlerPath_1")
  Node_AddSon(node140, node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node217, node218)
  Position_SetPosition(node218, MAT_Vector3(2725.067771, 3413.798283, 95.669599))
  Position_SetRadius(node218, 5)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node217, node219)
  Position_SetPosition(node219, MAT_Vector3(2608.572584, 2868.720828, 96.297065))
  Position_SetRadius(node219, 5)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node217, node220)
  Position_SetPosition(node220, MAT_Vector3(2612.050708, 2541.320624, 100.8463))
  Position_SetRadius(node220, 5)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node217, node221)
  Position_SetPosition(node221, MAT_Vector3(2592.895674, 2251.985967, 144.036027))
  Position_SetRadius(node221, 5)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node217, node222)
  Position_SetPosition(node222, MAT_Vector3(2541.074812, 1812.286227, 160.802097))
  Position_SetRadius(node222, 5)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node217, node223)
  Position_SetPosition(node223, MAT_Vector3(2471.525633, 1478.450169, 165.439592))
  Position_SetRadius(node223, 5)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node217, node224)
  Position_SetPosition(node224, MAT_Vector3(2457.615798, 1318.487058, 154.059589))
  Position_SetRadius(node224, 5)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node217, node225)
  Position_SetPosition(node225, MAT_Vector3(2534.119894, 1137.659194, 182.186751))
  Position_SetRadius(node225, 5)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node217, node226)
  Position_SetPosition(node226, MAT_Vector3(2614.10145, 925.534199, 180))
  Position_SetRadius(node226, 5)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node217, node227)
  Position_SetPosition(node227, MAT_Vector3(2492.390387, 737.751417, 180))
  Position_SetRadius(node227, 5)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node217, node228)
  Position_SetPosition(node228, MAT_Vector3(2283.742851, 605.607977, 181.077516))
  Position_SetRadius(node228, 5)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node217, node229)
  Position_SetPosition(node229, MAT_Vector3(2026.41089, 546.491175, 181.21988))
  Position_SetRadius(node229, 5)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node217, node230)
  Position_SetPosition(node230, MAT_Vector3(1953.384253, 553.446093, 180))
  Position_SetRadius(node230, 5)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node217, node231)
  Position_SetPosition(node231, MAT_Vector3(1636.93549, 577.788306, 210.047017))
  Position_SetRadius(node231, 5)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node217, node232)
  Position_SetPosition(node232, MAT_Vector3(1212.6855, 810.778054, 160.827388))
  Position_SetRadius(node232, 5)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node217, node233)
  Position_SetPosition(node233, MAT_Vector3(993.605587, 1057.677638, 166.668645))
  Position_SetRadius(node233, 5)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node217, node234)
  Position_SetPosition(node234, MAT_Vector3(746.706003, 1043.767803, 175.759768))
  Position_SetRadius(node234, 5)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("NOD_Position", "pos_18")
  Node_AddSon(node217, node235)
  Position_SetPosition(node235, MAT_Vector3(558.923221, 974.218624, 179.779506))
  Position_SetRadius(node235, 5)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("NOD_Position", "pos_19")
  Node_AddSon(node217, node236)
  Position_SetPosition(node236, MAT_Vector3(517.193714, 1134.181735, 171.794288))
  Position_SetRadius(node236, 5)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("NOD_Position", "pos_20")
  Node_AddSon(node217, node237)
  Position_SetPosition(node237, MAT_Vector3(680.634283, 1342.829271, 161.58502))
  Position_SetRadius(node237, 5)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("NOD_Position", "pos_21")
  Node_AddSon(node217, node238)
  Position_SetPosition(node238, MAT_Vector3(687.589201, 1547.999348, 159.20409))
  Position_SetRadius(node238, 5)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("NOD_Position", "pos_22")
  Node_AddSon(node217, node239)
  Position_SetPosition(node239, MAT_Vector3(524.148632, 1822.718603, 157.890791))
  Position_SetRadius(node239, 5)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("NOD_Position", "pos_23")
  Node_AddSon(node217, node240)
  Position_SetPosition(node240, MAT_Vector3(607.607646, 2069.618188, 159.676606))
  Position_SetRadius(node240, 5)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("NOD_Position", "pos_24")
  Node_AddSon(node217, node241)
  Position_SetPosition(node241, MAT_Vector3(892.759278, 2226.103839, 155.823103))
  Position_SetRadius(node241, 5)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("NOD_Position", "pos_25")
  Node_AddSon(node217, node242)
  Position_SetPosition(node242, MAT_Vector3(958.830998, 2413.886622, 112.335458))
  Position_SetRadius(node242, 5)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("NOD_Position", "pos_26")
  Node_AddSon(node217, node243)
  Position_SetPosition(node243, MAT_Vector3(1049.24493, 2629.489076, 119.584523))
  Position_SetRadius(node243, 5)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("NOD_Position", "pos_27")
  Node_AddSon(node217, node244)
  Position_SetPosition(node244, MAT_Vector3(924.056409, 2285.220641, 139.513227))
  Position_SetRadius(node244, 5)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("NOD_Position", "pos_28")
  Node_AddSon(node217, node245)
  Position_SetPosition(node245, MAT_Vector3(621.517482, 2080.050564, 161.848527))
  Position_SetRadius(node245, 5)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("NOD_Path", "TechbomberEscape_Path_1")
  Node_AddSon(node140, node246)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node246, node247)
  Position_SetPosition(node247, MAT_Vector3(3042.376116, 2004.70983, 148.703796))
  Position_SetRadius(node247, 5)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node246, node248)
  Position_SetPosition(node248, MAT_Vector3(2899.878065, 1990.764565, 122.607331))
  Position_SetRadius(node248, 5)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node246, node249)
  Position_SetPosition(node249, MAT_Vector3(2731.032527, 1863.097534, 163.013821))
  Position_SetRadius(node249, 5)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node246, node250)
  Position_SetPosition(node250, MAT_Vector3(2547.933197, 1857.583141, 180.968069))
  Position_SetRadius(node250, 5)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("NOD_PatrolArea", "Crawler_FightArea")
  Node_AddSon(node140, node251)
  PatrolArea_SetPosition(node251, MAT_Vector3(2405.092529, 2591.087138, 63.155268))
  PatrolArea_SetRadius(node251, 1024)
  PatrolArea_SetMinZ(node251, -100)
  PatrolArea_SetMaxZ(node251, 185)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node138, node252)
  Node_EnterSimulation(node252)
  Game_LoadProgress_Advance(node0)
  node253 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node138, node253)
  Node_EnterSimulation(node253)
  Game_LoadProgress_Advance(node0)
  node254 = Node_CreateNode("NOD_Trigger", "PrisonArea_Trigger")
  Node_AddSon(node253, node254)
  Body_SetFriendOrFoeID(node254, 0)
  Body_SetCS(node254, MAT_Vector3(2864.892575, 625.006412, 185.657451), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node254, 200, 30, 100)
  Node_EnterSimulation(node254)
  Game_LoadProgress_Advance(node0)
  node255 = Node_CreateNode("NOD_Trigger", "PrisonAreaLeave_Trigger")
  Node_AddSon(node253, node255)
  Body_SetFriendOrFoeID(node255, 0)
  Body_SetCS(node255, MAT_Vector3(2871.978577, 669.881721, 185.6575), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node255, 200, 20, 100)
  Node_EnterSimulation(node255)
  Game_LoadProgress_Advance(node0)
  node256 = Node_CreateNode("NOD_Trigger", "ActivateCrawler_Trigger")
  Node_AddSon(node253, node256)
  Body_SetFriendOrFoeID(node256, 0)
  Body_SetPosition(node256, MAT_Vector3(2540.009683, 2089.430959, 180.22249))
  Trigger_SetPresenceSphere(node256, 50)
  Node_EnterSimulation(node256)
  Game_LoadProgress_Advance(node0)
  node257 = Node_CreateNode("NOD_Trigger", "AttackCrawler_Trigger")
  Node_AddSon(node253, node257)
  Body_SetFriendOrFoeID(node257, 0)
  Body_SetPosition(node257, MAT_Vector3(2293.639501, 2481.257286, 136.019893))
  Trigger_SetPresenceSphere(node257, 50)
  Node_EnterSimulation(node257)
  Game_LoadProgress_Advance(node0)
  node258 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node138, node258)
  Node_EnterSimulation(node258)
  Game_LoadProgress_Advance(node0)
  node259 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node258, node259)
  Body_SetCS(node259, MAT_Vector3(1344.529466, 3209.472611, 100), MAT_Vector3(-98.125218, 0, 0))
  Node_ParseIniFile(node259, "osd/pla/pla_ship1.osd")
  Body_SetFriendOrFoeID(node259, 2)
  Node_EnterSimulation(node259)
  Game_LoadProgress_Advance(node0)
  node260 = Node_CreateNode("nod_vessel", "wng_angelina_1")
  Node_AddSon(node258, node260)
  Body_SetCS(node260, MAT_Vector3(1334.431965, 3225.265655, 100), MAT_Vector3(-100.81072, 0, 0))
  Node_ParseIniFile(node260, "osd/wng/wng_angelina.osd")
  Body_SetFriendOrFoeID(node260, 3)
  Body_SetNameKey(node260, -1)
  Body_SetCargoKey(node260, -1, 0)
  Body_SetCargoKey(node260, -1, 1)
  Body_SetCargoKey(node260, -1, 2)
  Node_EnterSimulation(node260)
  Game_LoadProgress_Advance(node0)
  node261 = Node_CreateNode("nod_vessel", "wng_techbomber_1")
  Node_AddSon(node258, node261)
  Body_SetCS(node261, MAT_Vector3(1327.107989, 3194.146477, 100), MAT_Vector3(-99.124019, 0, 0))
  Node_ParseIniFile(node261, "osd/wng/wng_techbomber.osd")
  Body_SetFriendOrFoeID(node261, 2)
  Body_SetNameKey(node261, -1)
  Body_SetCargoKey(node261, -1, 0)
  Body_SetCargoKey(node261, -1, 1)
  Body_SetCargoKey(node261, -1, 2)
  Node_EnterSimulation(node261)
  Game_LoadProgress_Advance(node0)
  node262 = Node_CreateNode("nod_vessel", "wng_stoney_1")
  Node_AddSon(node258, node262)
  Body_SetCS(node262, MAT_Vector3(3274.540321, 1731.181169, 503.6849), MAT_Vector3(49.461371, 0, 0))
  Node_ParseIniFile(node262, "osd/wng/wng_stoney.osd")
  Body_SetFriendOrFoeID(node262, 2)
  Body_SetNameKey(node262, -1)
  Body_SetCargoKey(node262, -1, 0)
  Body_SetCargoKey(node262, -1, 1)
  Body_SetCargoKey(node262, -1, 2)
  Node_EnterSimulation(node262)
  Game_LoadProgress_Advance(node0)
  node263 = Node_CreateNode("nod_generic", "tz_dock1_1_des_1")
  Node_AddSon(node258, node263)
  Body_SetCS(node263, MAT_Vector3(3278.219563, 1729.91918, 19.989656), MAT_Vector3(138.882622, 0, 0))
  Node_ParseIniFile(node263, "osd/tz/tz_dock1_1_des.osd")
  Body_SetFriendOrFoeID(node263, 5)
  Body_SetNameKey(node263, -1)
  Body_SetCargoKey(node263, -1, 0)
  Body_SetCargoKey(node263, -1, 1)
  Body_SetCargoKey(node263, -1, 2)
  Node_EnterSimulation(node263)
  Game_LoadProgress_Advance(node0)
  node264 = Node_CreateNode("nod_generic", "gen_metalblock1_des_1")
  Node_AddSon(node258, node264)
  Body_SetCS(node264, MAT_Vector3(3157.925845, 1795.605254, 41.860044), MAT_Vector3(49.515595, 0, 0))
  Node_ParseIniFile(node264, "osd/gen/gen_metalblock1_des.osd")
  Body_SetFriendOrFoeID(node264, 5)
  Body_SetNameKey(node264, -1)
  Body_SetCargoKey(node264, -1, 0)
  Body_SetCargoKey(node264, -1, 1)
  Body_SetCargoKey(node264, -1, 2)
  Node_EnterSimulation(node264)
  Game_LoadProgress_Advance(node0)
  node265 = Node_CreateNode("nod_generic", "gen_metalblock2_des_1")
  Node_AddSon(node258, node265)
  Body_SetCS(node265, MAT_Vector3(3180.038894, 1844.766519, 35.385372), MAT_Vector3(-42.461861, 0, 0))
  Node_ParseIniFile(node265, "osd/gen/gen_metalblock2_des.osd")
  Body_SetFriendOrFoeID(node265, 5)
  Body_SetNameKey(node265, -1)
  Body_SetCargoKey(node265, -1, 0)
  Body_SetCargoKey(node265, -1, 1)
  Body_SetCargoKey(node265, -1, 2)
  Node_EnterSimulation(node265)
  Game_LoadProgress_Advance(node0)
  node266 = Node_CreateNode("nod_generic", "gen_metalblock2_des_2")
  Node_AddSon(node258, node266)
  Body_SetCS(node266, MAT_Vector3(3100.916755, 1894.366019, 93.851201), MAT_Vector3(47.855138, 0, 0))
  Node_ParseIniFile(node266, "osd/gen/gen_metalblock2_des.osd")
  Body_SetFriendOrFoeID(node266, 5)
  Body_SetNameKey(node266, -1)
  Body_SetCargoKey(node266, -1, 0)
  Body_SetCargoKey(node266, -1, 1)
  Body_SetCargoKey(node266, -1, 2)
  Node_EnterSimulation(node266)
  Game_LoadProgress_Advance(node0)
  node267 = Node_CreateNode("nod_generic", "gen_metalblock3_des_1")
  Node_AddSon(node258, node267)
  Body_SetCS(node267, MAT_Vector3(3147.789811, 1825.661383, 76.789364), MAT_Vector3(-43.703714, 0, 0))
  Node_ParseIniFile(node267, "osd/gen/gen_metalblock3_des.osd")
  Body_SetFriendOrFoeID(node267, 5)
  Body_SetNameKey(node267, -1)
  Body_SetCargoKey(node267, -1, 0)
  Body_SetCargoKey(node267, -1, 1)
  Body_SetCargoKey(node267, -1, 2)
  Node_EnterSimulation(node267)
  Game_LoadProgress_Advance(node0)
  node268 = Node_CreateNode("nod_generic", "gen_tank_big_des_1")
  Node_AddSon(node258, node268)
  Body_SetCS(node268, MAT_Vector3(3124.150196, 1856.361704, 98.754772), MAT_Vector3(39.717938, 7.781182, 0.733144))
  Node_ParseIniFile(node268, "osd/gen/gen_tank_big_des.osd")
  Body_SetFriendOrFoeID(node268, 5)
  Body_SetNameKey(node268, -1)
  Body_SetCargoKey(node268, -1, 0)
  Body_SetCargoKey(node268, -1, 1)
  Body_SetCargoKey(node268, -1, 2)
  Node_EnterSimulation(node268)
  Game_LoadProgress_Advance(node0)
  node269 = Node_CreateNode("nod_generic", "gen_tank_big_des_2")
  Node_AddSon(node258, node269)
  Body_SetCS(node269, MAT_Vector3(3084.395405, 1881.115184, 99.234309), MAT_Vector3(34.540405, 0.388892, -0.79597))
  Node_ParseIniFile(node269, "osd/gen/gen_tank_big_des.osd")
  Body_SetFriendOrFoeID(node269, 5)
  Body_SetNameKey(node269, -1)
  Body_SetCargoKey(node269, -1, 0)
  Body_SetCargoKey(node269, -1, 1)
  Body_SetCargoKey(node269, -1, 2)
  Node_EnterSimulation(node269)
  Game_LoadProgress_Advance(node0)
  node270 = Node_CreateNode("nod_generic", "gen_vehiclestation_des_1")
  Node_AddSon(node258, node270)
  Body_SetCS(node270, MAT_Vector3(3125.446416, 1933.532151, 103.754823), MAT_Vector3(-45.776287, 0, 0))
  Node_ParseIniFile(node270, "osd/gen/gen_vehiclestation_des.osd")
  Body_SetFriendOrFoeID(node270, 5)
  Body_SetNameKey(node270, -1)
  Body_SetCargoKey(node270, -1, 0)
  Body_SetCargoKey(node270, -1, 1)
  Body_SetCargoKey(node270, -1, 2)
  Node_EnterSimulation(node270)
  Game_LoadProgress_Advance(node0)
  node271 = Node_CreateNode("nod_vessel", "tz_scout_1")
  Node_AddSon(node258, node271)
  Body_SetCS(node271, MAT_Vector3(2845.525682, 438.993008, 166.635151), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node271, "osd/tz/tz_scout_narrow.osd")
  Body_SetFriendOrFoeID(node271, 1)
  Body_SetNameKey(node271, -1)
  Body_SetCargoKey(node271, -1, 0)
  Body_SetCargoKey(node271, -1, 1)
  Body_SetCargoKey(node271, -1, 2)
  Node_EnterSimulation(node271)
  Game_LoadProgress_Advance(node0)
  node272 = Node_CreateNode("nod_vessel", "tz_scout_2")
  Node_AddSon(node258, node272)
  Body_SetCS(node272, MAT_Vector3(2910.212889, 408.762028, 159.97233), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node272, "osd/tz/tz_scout_narrow.osd")
  Body_SetFriendOrFoeID(node272, 1)
  Body_SetNameKey(node272, -1)
  Body_SetCargoKey(node272, -1, 0)
  Body_SetCargoKey(node272, -1, 1)
  Body_SetCargoKey(node272, -1, 2)
  Node_EnterSimulation(node272)
  Game_LoadProgress_Advance(node0)
  node273 = Node_CreateNode("nod_vehicle", "tz_buggy_1")
  Node_AddSon(node258, node273)
  Body_SetCS(node273, MAT_Vector3(2870.739942, 365.656201, 127.681539), MAT_Vector3(25.834823, 0, 0))
  Node_ParseIniFile(node273, "osd/tz/tz_buggy.osd")
  Body_SetFriendOrFoeID(node273, 1)
  Body_SetNameKey(node273, -1)
  Body_SetCargoKey(node273, -1, 0)
  Body_SetCargoKey(node273, -1, 1)
  Body_SetCargoKey(node273, -1, 2)
  Node_EnterSimulation(node273)
  Game_LoadProgress_Advance(node0)
  node274 = Node_CreateNode("nod_vehicle", "tz_buggy_2")
  Node_AddSon(node258, node274)
  Body_SetCS(node274, MAT_Vector3(2869.572243, 443.062653, 137.041184), MAT_Vector3(23.769018, 0, 0))
  Node_ParseIniFile(node274, "osd/tz/tz_buggy.osd")
  Body_SetFriendOrFoeID(node274, 1)
  Body_SetNameKey(node274, -1)
  Body_SetCargoKey(node274, -1, 0)
  Body_SetCargoKey(node274, -1, 1)
  Body_SetCargoKey(node274, -1, 2)
  Node_EnterSimulation(node274)
  Game_LoadProgress_Advance(node0)
  node275 = Node_CreateNode("nod_waypoint", "nav_waypoint_1")
  Node_AddSon(node258, node275)
  Body_SetPosition(node275, MAT_Vector3(2842.825924, 370.663392, 192.041687))
  WayPoint_SetRadius(node275, 150)
  Node_ParseIniFile(node275, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node275)
  Game_LoadProgress_Advance(node0)
  node276 = Node_CreateNode("nod_waypoint", "nav_guard_1")
  Node_AddSon(node258, node276)
  Body_SetPosition(node276, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node276, 5)
  Node_ParseIniFile(node276, "osd/nav/nav_guard.osd")
  Node_EnterSimulation(node276)
  Game_LoadProgress_Advance(node0)
  node277 = Node_CreateNode("nod_waypoint", "nav_guard_2")
  Node_AddSon(node258, node277)
  Body_SetPosition(node277, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node277, 5)
  Node_ParseIniFile(node277, "osd/nav/nav_guard.osd")
  Node_EnterSimulation(node277)
  Game_LoadProgress_Advance(node0)
  node278 = Node_CreateNode("nod_vessel", "Cingan")
  Node_AddSon(node258, node278)
  Body_SetCS(node278, MAT_Vector3(2829.471762, -72.324689, 225), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node278, "osd/tz/tz_cingan.osd")
  Body_SetFriendOrFoeID(node278, 5)
  Body_SetNameKey(node278, -1)
  Body_SetCargoKey(node278, -1, 0)
  Body_SetCargoKey(node278, -1, 1)
  Body_SetCargoKey(node278, -1, 2)
  Node_EnterSimulation(node278)
  Game_LoadProgress_Advance(node0)
  node279 = Node_CreateNode("nod_vessel", "cin_scout_1")
  Node_AddSon(node258, node279)
  Body_SetCS(node279, MAT_Vector3(2781.666796, 40.164523, 200), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node279, "osd/tz/tz_scout_narrow.osd")
  Body_SetFriendOrFoeID(node279, 4)
  Body_SetNameKey(node279, -1)
  Body_SetCargoKey(node279, -1, 0)
  Body_SetCargoKey(node279, -1, 1)
  Body_SetCargoKey(node279, -1, 2)
  Node_EnterSimulation(node279)
  Game_LoadProgress_Advance(node0)
  node280 = Node_CreateNode("nod_vessel", "cin_scout_2")
  Node_AddSon(node258, node280)
  Body_SetCS(node280, MAT_Vector3(2828.800876, 37.33281, 212.883617), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node280, "osd/tz/tz_scout_narrow.osd")
  Body_SetFriendOrFoeID(node280, 4)
  Body_SetNameKey(node280, -1)
  Body_SetCargoKey(node280, -1, 0)
  Body_SetCargoKey(node280, -1, 1)
  Body_SetCargoKey(node280, -1, 2)
  Node_EnterSimulation(node280)
  Game_LoadProgress_Advance(node0)
  node281 = Node_CreateNode("nod_vessel", "cin_scout_3")
  Node_AddSon(node258, node281)
  Body_SetCS(node281, MAT_Vector3(2855.500063, 33.496135, 221.667884), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node281, "osd/tz/tz_scout_narrow.osd")
  Body_SetFriendOrFoeID(node281, 4)
  Body_SetNameKey(node281, -1)
  Body_SetCargoKey(node281, -1, 0)
  Body_SetCargoKey(node281, -1, 1)
  Body_SetCargoKey(node281, -1, 2)
  Node_EnterSimulation(node281)
  Game_LoadProgress_Advance(node0)
  node282 = Node_CreateNode("nod_vessel", "cin_scout_4")
  Node_AddSon(node258, node282)
  Body_SetCS(node282, MAT_Vector3(2801.177283, 20.505925, 198.558854), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node282, "osd/tz/tz_scout_narrow.osd")
  Body_SetFriendOrFoeID(node282, 4)
  Body_SetNameKey(node282, -1)
  Body_SetCargoKey(node282, -1, 0)
  Body_SetCargoKey(node282, -1, 1)
  Body_SetCargoKey(node282, -1, 2)
  Node_EnterSimulation(node282)
  Game_LoadProgress_Advance(node0)
  node283 = Node_CreateNode("nod_vessel", "cin_scout_5")
  Node_AddSon(node258, node283)
  Body_SetCS(node283, MAT_Vector3(2844.87136, 15.782205, 195.959132), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node283, "osd/tz/tz_scout_narrow.osd")
  Body_SetFriendOrFoeID(node283, 4)
  Body_SetNameKey(node283, -1)
  Body_SetCargoKey(node283, -1, 0)
  Body_SetCargoKey(node283, -1, 1)
  Body_SetCargoKey(node283, -1, 2)
  Node_EnterSimulation(node283)
  Game_LoadProgress_Advance(node0)
  node284 = Node_CreateNode("nod_vessel", "cin_bomber_1")
  Node_AddSon(node258, node284)
  Body_SetCS(node284, MAT_Vector3(2878.944471, 62.880854, 210), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node284, "osd/tz/tz_bomber.osd")
  Body_SetFriendOrFoeID(node284, 4)
  Body_SetNameKey(node284, -1)
  Body_SetCargoKey(node284, -1, 0)
  Body_SetCargoKey(node284, -1, 1)
  Body_SetCargoKey(node284, -1, 2)
  Node_EnterSimulation(node284)
  Game_LoadProgress_Advance(node0)
  node285 = Node_CreateNode("nod_vessel", "cra_scout1_1")
  Node_AddSon(node258, node285)
  Body_SetCS(node285, MAT_Vector3(2733.000794, 3500.085316, 24.70869), MAT_Vector3(-176.243258, 22.976897, 9.931746))
  Node_ParseIniFile(node285, "osd/cra/cra_scout1_wide.osd")
  Body_SetFriendOrFoeID(node285, 6)
  Body_SetNameKey(node285, -1)
  Body_SetCargoKey(node285, -1, 0)
  Body_SetCargoKey(node285, -1, 1)
  Body_SetCargoKey(node285, -1, 2)
  Node_EnterSimulation(node285)
  Game_LoadProgress_Advance(node0)
  node286 = Node_CreateNode("nod_vessel", "cra_scout1_2")
  Node_AddSon(node258, node286)
  Body_SetCS(node286, MAT_Vector3(2769.033171, 3525.193313, 24.70869), MAT_Vector3(169.447921, 22.9769, 9.931746))
  Node_ParseIniFile(node286, "osd/cra/cra_scout1_wide.osd")
  Body_SetFriendOrFoeID(node286, 6)
  Body_SetNameKey(node286, -1)
  Body_SetCargoKey(node286, -1, 0)
  Body_SetCargoKey(node286, -1, 1)
  Body_SetCargoKey(node286, -1, 2)
  Node_EnterSimulation(node286)
  Game_LoadProgress_Advance(node0)
  node287 = Node_CreateNode("nod_vessel", "cra_scout1_3")
  Node_AddSon(node258, node287)
  Body_SetCS(node287, MAT_Vector3(2676.980452, 3494.135757, 20.151721), MAT_Vector3(-139.529875, 22.9769, 9.931746))
  Node_ParseIniFile(node287, "osd/cra/cra_scout1_wide.osd")
  Body_SetFriendOrFoeID(node287, 6)
  Body_SetNameKey(node287, -1)
  Body_SetCargoKey(node287, -1, 0)
  Body_SetCargoKey(node287, -1, 1)
  Body_SetCargoKey(node287, -1, 2)
  Node_EnterSimulation(node287)
  Game_LoadProgress_Advance(node0)
  node288 = Node_CreateNode("nod_vehicle", "tz_buggy_4")
  Node_AddSon(node258, node288)
  Body_SetCS(node288, MAT_Vector3(3178.9524, 2075.205144, 112.623857), MAT_Vector3(124.320253, 0, 0))
  Node_ParseIniFile(node288, "osd/tz/tz_buggy.osd")
  Body_SetFriendOrFoeID(node288, 1)
  Body_SetNameKey(node288, -1)
  Body_SetCargoKey(node288, -1, 0)
  Body_SetCargoKey(node288, -1, 1)
  Body_SetCargoKey(node288, -1, 2)
  Node_EnterSimulation(node288)
  Game_LoadProgress_Advance(node0)
  node289 = Node_CreateNode("nod_vehicle", "tz_buggy_5")
  Node_AddSon(node258, node289)
  Body_SetCS(node289, MAT_Vector3(3114.154189, 2025.307654, 112.766511), MAT_Vector3(48.517184, 0, 0))
  Node_ParseIniFile(node289, "osd/tz/tz_buggy.osd")
  Body_SetFriendOrFoeID(node289, 1)
  Body_SetNameKey(node289, -1)
  Body_SetCargoKey(node289, -1, 0)
  Body_SetCargoKey(node289, -1, 1)
  Body_SetCargoKey(node289, -1, 2)
  Node_EnterSimulation(node289)
  Game_LoadProgress_Advance(node0)
  node290 = Node_CreateNode("nod_vehicle", "tz_buggy_6")
  Node_AddSon(node258, node290)
  Body_SetCS(node290, MAT_Vector3(3093.07159, 2054.505267, 111.918483), MAT_Vector3(-29.217982, 0, 0))
  Node_ParseIniFile(node290, "osd/tz/tz_buggy.osd")
  Body_SetFriendOrFoeID(node290, 1)
  Body_SetNameKey(node290, -1)
  Body_SetCargoKey(node290, -1, 0)
  Body_SetCargoKey(node290, -1, 1)
  Body_SetCargoKey(node290, -1, 2)
  Node_EnterSimulation(node290)
  Game_LoadProgress_Advance(node0)
  node291 = Node_CreateNode("nod_vehicle", "tz_buggy_7")
  Node_AddSon(node258, node291)
  Body_SetCS(node291, MAT_Vector3(3135.31319, 2081.46197, 111.9185), MAT_Vector3(-139.723838, 0, 0))
  Node_ParseIniFile(node291, "osd/tz/tz_buggy.osd")
  Body_SetFriendOrFoeID(node291, 1)
  Body_SetNameKey(node291, -1)
  Body_SetCargoKey(node291, -1, 0)
  Body_SetCargoKey(node291, -1, 1)
  Body_SetCargoKey(node291, -1, 2)
  Node_EnterSimulation(node291)
  Game_LoadProgress_Advance(node0)
  node292 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node292)
  Camera_SetBackPlane(node292, 1000)
  Node_EnterSimulation(node292)
  Game_LoadProgress_Advance(node0)
  node293 = Node_CreateNode("NOD_Scenario", "IngameScenes")
  Node_AddSon(node0, node293)
  Node_EnterSimulation(node293)
  Game_LoadProgress_Advance(node0)
  node294 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node293, node294)
  Node_EnterSimulation(node294)
  Game_LoadProgress_Advance(node0)
  node295 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node293, node295)
  Node_EnterSimulation(node295)
  Game_LoadProgress_Advance(node0)
  node296 = Node_CreateNode("NOD_Position", "LookFrom_0")
  Node_AddSon(node295, node296)
  Position_SetPosition(node296, MAT_Vector3(1114.934598, 3188.915162, 76.315168))
  Position_SetRadius(node296, 5)
  Game_LoadProgress_Advance(node0)
  node297 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node295, node297)
  Position_SetPosition(node297, MAT_Vector3(1739.687385, 3108.613192, 95))
  Position_SetRadius(node297, 5)
  Game_LoadProgress_Advance(node0)
  node298 = Node_CreateNode("NOD_Position", "LookAt_1")
  Node_AddSon(node295, node298)
  Position_SetPosition(node298, MAT_Vector3(778.893671, 3280.579941, 95))
  Position_SetRadius(node298, 5)
  Game_LoadProgress_Advance(node0)
  node299 = Node_CreateNode("NOD_Path", "PlayerPath_1")
  Node_AddSon(node295, node299)
  Game_LoadProgress_Advance(node0)
  node300 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node299, node300)
  Position_SetPosition(node300, MAT_Vector3(1025.623, 3188.125, 62.99199))
  Position_SetRadius(node300, 5)
  Game_LoadProgress_Advance(node0)
  node301 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node299, node301)
  Position_SetPosition(node301, MAT_Vector3(1110.65, 3189.306, 62.99199))
  Position_SetRadius(node301, 5)
  Game_LoadProgress_Advance(node0)
  node302 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node299, node302)
  Position_SetPosition(node302, MAT_Vector3(1209.498738, 3173.312472, 65.835823))
  Position_SetRadius(node302, 5)
  Game_LoadProgress_Advance(node0)
  node303 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node299, node303)
  Position_SetPosition(node303, MAT_Vector3(1350.889874, 3123.986437, 90.624616))
  Position_SetRadius(node303, 5)
  Game_LoadProgress_Advance(node0)
  node304 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node299, node304)
  Position_SetPosition(node304, MAT_Vector3(1560.902739, 3123.162531, 89.878215))
  Position_SetRadius(node304, 5)
  Game_LoadProgress_Advance(node0)
  node305 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node299, node305)
  Position_SetPosition(node305, MAT_Vector3(1735.371123, 3097.699575, 89.821684))
  Position_SetRadius(node305, 5)
  Game_LoadProgress_Advance(node0)
  node306 = Node_CreateNode("NOD_Path", "EeriePath_1")
  Node_AddSon(node295, node306)
  Game_LoadProgress_Advance(node0)
  node307 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node306, node307)
  Position_SetPosition(node307, MAT_Vector3(1162.261646, 3229.997453, 97.55174))
  Position_SetRadius(node307, 5)
  Game_LoadProgress_Advance(node0)
  node308 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node306, node308)
  Position_SetPosition(node308, MAT_Vector3(1354.432788, 3160.594806, 90.62462))
  Position_SetRadius(node308, 5)
  Game_LoadProgress_Advance(node0)
  node309 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node306, node309)
  Position_SetPosition(node309, MAT_Vector3(1554.998354, 3157.409948, 89.87822))
  Position_SetRadius(node309, 5)
  Game_LoadProgress_Advance(node0)
  node310 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node306, node310)
  Position_SetPosition(node310, MAT_Vector3(1737.732858, 3130.766019, 89.82168))
  Position_SetRadius(node310, 5)
  Game_LoadProgress_Advance(node0)
  node311 = Node_CreateNode("NOD_Path", "PlayerPath_2")
  Node_AddSon(node295, node311)
  Game_LoadProgress_Advance(node0)
  node312 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node311, node312)
  Position_SetPosition(node312, MAT_Vector3(2764.726366, 1458.810926, 177.682729))
  Position_SetRadius(node312, 5)
  Game_LoadProgress_Advance(node0)
  node313 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node311, node313)
  Position_SetPosition(node313, MAT_Vector3(2793.563084, 1303.092649, 145.942724))
  Position_SetRadius(node313, 5)
  Game_LoadProgress_Advance(node0)
  node314 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node311, node314)
  Position_SetPosition(node314, MAT_Vector3(2793.563084, 1157.261246, 157.653765))
  Position_SetRadius(node314, 5)
  Game_LoadProgress_Advance(node0)
  node315 = Node_CreateNode("NOD_Position", "LookFrom_2")
  Node_AddSon(node295, node315)
  Position_SetPosition(node315, MAT_Vector3(2814.984646, 1300.62093, 145.480945))
  Position_SetRadius(node315, 5)
  Game_LoadProgress_Advance(node0)
  node316 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node293, node316)
  Node_EnterSimulation(node316)
  Game_LoadProgress_Advance(node0)
  node317 = Node_CreateNode("NOD_Director", "Intro")
  Node_AddSon(node316, node317)
  Node_EnterSimulation(node317)
  Game_LoadProgress_Advance(node0)
  node318 = Node_CreateNode("NOD_Director", "Intro_AddOn")
  Node_AddSon(node316, node318)
  Node_EnterSimulation(node318)
  Game_LoadProgress_Advance(node0)
  node319 = Node_CreateNode("NOD_Director", "Intro_Audio")
  Node_AddSon(node316, node319)
  Node_EnterSimulation(node319)
  Game_LoadProgress_Advance(node0)
  node320 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node293, node320)
  Node_EnterSimulation(node320)
  Game_LoadProgress_Advance(node0)
  node321 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node293, node321)
  Node_EnterSimulation(node321)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, N)
SetEnemyMatrixElement(2, 0, N)
SetEnemyMatrixElement(3, 0, N)
SetEnemyMatrixElement(4, 0, N)
SetEnemyMatrixElement(5, 0, N)
SetEnemyMatrixElement(6, 0, E)
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
SetEnemyMatrixElement(2, 1, E)
SetEnemyMatrixElement(3, 1, E)
SetEnemyMatrixElement(4, 1, F)
SetEnemyMatrixElement(5, 1, F)
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
SetEnemyMatrixElement(0, 2, N)
SetEnemyMatrixElement(1, 2, E)
SetEnemyMatrixElement(2, 2, F)
SetEnemyMatrixElement(3, 2, F)
SetEnemyMatrixElement(4, 2, N)
SetEnemyMatrixElement(5, 2, N)
SetEnemyMatrixElement(6, 2, E)
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
SetEnemyMatrixElement(1, 3, E)
SetEnemyMatrixElement(2, 3, F)
SetEnemyMatrixElement(3, 3, F)
SetEnemyMatrixElement(4, 3, N)
SetEnemyMatrixElement(5, 3, N)
SetEnemyMatrixElement(6, 3, E)
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
SetEnemyMatrixElement(1, 5, N)
SetEnemyMatrixElement(2, 5, N)
SetEnemyMatrixElement(3, 5, N)
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
SetEnemyMatrixElement(0, 6, E)
SetEnemyMatrixElement(1, 6, E)
SetEnemyMatrixElement(2, 6, E)
SetEnemyMatrixElement(3, 6, E)
SetEnemyMatrixElement(4, 6, N)
SetEnemyMatrixElement(5, 6, N)
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
                                                                                                                                                                                                                                  if not (o5237.Value ~= True) then
                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                          if not (True ~= True) then
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
                                                                                                                                                                                                                                  if not (o5261.Value == True) then
                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                        if not (False == True) then
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
                                                                                                                                                                                                                                  if not (o5262.Value == True) then
                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                        if not (False == True) then
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
o5166 = FormationLib.CreateFormation("InverseTriangle", "", "", "", 50, 50)
o5168 = FormationLib.CreateFormation("Tunnel", "", "", "", 30, 30)
o5170 = FormationLib.CreateFormation("Tunnel", "", "", "", 50, 50)
o5171 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/TZDock_ApproachPath", "/Scenario_Dynamic/Navigation/TZDock_DockPath", "/Scenario_Dynamic/Navigation/TZDock_PatrolArea")
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
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "wng_ang", "wng_tech", "", False, False, True)
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
  o5216.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5177.Value == L0) then
    o5177["Value"] = L0
    o5216.ReCalculate()
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
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "wng_ang", "wng_tech", "", False, False, True)
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
  o5236.StartCalculate()
  o6069.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5183.Value == L0) then
    o5183["Value"] = L0
    o5236.ReCalculate()
    o6069.ReCalculate()
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
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "wng_tech", "", "", "", False, False, True)
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
      if not (o5185.Value ~= True) then
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
o5185 = { [nil] = {}, GetCalculated = function()
  if not (o5226.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5185.SetStateValue(o5185.GetCalculated())
end, StartCalculate = function()
  o5185["Value"] = o5185.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5185.Value == L0) then
    o5185["Value"] = L0
    CallFunction(o5184, "ProcesseStateChange")
  end
end }
o5189 = { [nil] = {}, Start = function()
  o5189["Value"] = False
  o6468.StartCalculate()
  o6525.StartCalculate()
  o6582.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5189.Value == L0) then
    o5189["Value"] = L0
    o6468.ReCalculate()
    o6525.ReCalculate()
    o6582.ReCalculate()
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
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "wng_tech", "", "", "", False, False, True)
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
  if not (o5226.Value ~= True) then
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
  o5399.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5195.Value == L0) then
    o5195["Value"] = L0
    o5399.ReCalculate()
  end
end }
S_o5196 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_vendetta2", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_shell", 30000)
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
  if not (o5351.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5210.SetStateValue(o5210.GetCalculated())
end, StartCalculate = function()
  o5210["Value"] = o5210.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5333.Node, o5196.Node, 104)
end, SetStateValue = function(L0)
  if not (o5210.Value == L0) then
    o5210["Value"] = L0
    if not (L0 ~= 1) then
      o5210.ChangeTo1()
    end
  end
end }
o5211 = { [nil] = {}, GetCalculated = function()
  if not (o5352.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5211.SetStateValue(o5211.GetCalculated())
end, StartCalculate = function()
  o5211["Value"] = o5211.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5333.Node, o5196.Node, 105)
end, SetStateValue = function(L0)
  if not (o5211.Value == L0) then
    o5211["Value"] = L0
    if not (L0 ~= 1) then
      o5211.ChangeTo1()
    end
  end
end }
o5212 = { [nil] = {}, GetCalculated = function()
  if not (o5353.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5212.SetStateValue(o5212.GetCalculated())
end, StartCalculate = function()
  o5212["Value"] = o5212.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5333.Node, o5196.Node, 106)
end, SetStateValue = function(L0)
  if not (o5212.Value == L0) then
    o5212["Value"] = L0
    if not (L0 ~= 1) then
      o5212.ChangeTo1()
    end
  end
end }
o5213 = { [nil] = {}, GetCalculated = function()
  if not (o5356.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5213.SetStateValue(o5213.GetCalculated())
end, StartCalculate = function()
  o5213["Value"] = o5213.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 1, 2001, 2101)
end, SetStateValue = function(L0)
  if not (o5213.Value == L0) then
    o5213["Value"] = L0
    if not (L0 ~= 1) then
      o5213.ChangeTo1()
    end
  end
end }
o5214 = { [nil] = {}, GetCalculated = function()
  if not (o5407.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5214.SetStateValue(o5214.GetCalculated())
end, StartCalculate = function()
  o5214["Value"] = o5214.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 3, 2001, 2103)
end, SetStateValue = function(L0)
  if not (o5214.Value == L0) then
    o5214["Value"] = L0
    if not (L0 ~= 1) then
      o5214.ChangeTo1()
    end
  end
end }
o5215 = { [nil] = {}, GetCalculated = function()
  if not (o5859.Value ~= True) then
    if not (o5915.Value ~= True) then
      if not (o5964.Value ~= True) then
        if not (o6011.Value ~= True) then
          return 1
        else
          return 0
        end
      end
    end
  end
end, ReCalculate = function()
  o5215.SetStateValue(o5215.GetCalculated())
end, StartCalculate = function()
  o5215["Value"] = o5215.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  SED_SetTaskTextKey(0, -1, -1)
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o5215.Value == L0) then
    DelayedFunction(2, o5215, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5215.Value == L0) then
    o5215["Value"] = L0
    if not (L0 ~= 1) then
      o5215.ChangeTo1()
    end
  end
end }
o5216 = { [nil] = {}, GetCalculated = function()
  if not (o5177.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5216.SetStateValue(o5216.GetCalculated())
end, StartCalculate = function()
  o5216["Value"] = o5216.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5333.Node, o5196.Node, 83)
  Game_PlayMusic(GetGameNode(), "Agressive")
end, SetStateValue = function(L0)
  if not (o5216.Value == L0) then
    o5216["Value"] = L0
    if not (L0 ~= 1) then
      o5216.ChangeTo1()
    end
  end
end }
o5217 = { [nil] = {}, Start = function()
  o5217["Value"] = False
  o6068.StartCalculate()
  o6126.StartCalculate()
  o6183.StartCalculate()
  o6240.StartCalculate()
  o6297.StartCalculate()
  o6354.StartCalculate()
  o6411.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5217.Value == L0) then
    o5217["Value"] = L0
    o6068.ReCalculate()
    o6126.ReCalculate()
    o6183.ReCalculate()
    o6240.ReCalculate()
    o6297.ReCalculate()
    o6354.ReCalculate()
    o6411.ReCalculate()
  end
end }
o5218 = { [nil] = {}, Start = function()
  o5218["Value"] = False
  o5276.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5218.Value == L0) then
    o5218["Value"] = L0
    o5276.ReCalculate()
  end
end }
o5219 = { [nil] = {}, Start = function()
  o5219["Value"] = False
  o5220.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5219.Value == L0) then
    o5219["Value"] = L0
    o5220.ReCalculate()
  end
end }
o5220 = { [nil] = {}, GetCalculated = function()
  if not (o5219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5220.SetStateValue(o5220.GetCalculated())
end, StartCalculate = function()
  o5220["Value"] = o5220.GetCalculated()
end, ChangeTo1 = function()
  SED_SetTaskTextKey(2101, -1, -1)
  Game_SetWayPoint(GetGameNode(), o6053.Node)
end, SetStateValue = function(L0)
  if not (o5220.Value == L0) then
    DelayedFunction(40, o5220, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5220.Value == L0) then
    o5220["Value"] = L0
    if not (L0 ~= 1) then
      o5220.ChangeTo1()
    end
  end
end }
o5221 = { [nil] = {}, GetCalculated = function()
  if not (o6071.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5221.SetStateValue(o5221.GetCalculated())
end, StartCalculate = function()
  o5221["Value"] = o5221.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5265.Node, o5196.Node, 84)
end, SetStateValue = function(L0)
  if not (o5221.Value == L0) then
    o5221["Value"] = L0
    if not (L0 ~= 1) then
      o5221.ChangeTo1()
    end
  end
end }
o5222 = { [nil] = {}, GetCalculated = function()
  if not (o6071.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5222.SetStateValue(o5222.GetCalculated())
end, StartCalculate = function()
  o5222["Value"] = o5222.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5196.Node, o5196.Node, 85)
  SendRadioMessageTake(o6063.Node, o5196.Node, 86)
  SendRadioMessageTake(o5265.Node, o5196.Node, 87)
  SendRadioMessageTake(o5333.Node, o5196.Node, 88)
  Game_PlayMusic(GetGameNode(), "Track3")
end, SetStateValue = function(L0)
  if not (o5222.Value == L0) then
    DelayedFunction(10, o5222, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5222.Value == L0) then
    o5222["Value"] = L0
    if not (L0 ~= 1) then
      o5222.ChangeTo1()
    end
  end
end }
o5223 = { [nil] = {}, Start = function()
  o5223["Value"] = False
  o5271.StartCalculate()
  o6638.StartCalculate()
  o6685.StartCalculate()
  o6732.StartCalculate()
  o6779.StartCalculate()
  o6848.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5223.Value == L0) then
    o5223["Value"] = L0
    o5271.ReCalculate()
    o6638.ReCalculate()
    o6685.ReCalculate()
    o6732.ReCalculate()
    o6779.ReCalculate()
    o6848.ReCalculate()
  end
end }
o5224 = { [nil] = {}, Start = function()
  o5224["Value"] = False
  o5272.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5224.Value == L0) then
    o5224["Value"] = L0
    o5272.ReCalculate()
  end
end }
o5225 = { [nil] = {}, Start = function()
  o5225["Value"] = False
  o5403.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5225.Value == L0) then
    o5225["Value"] = L0
    o5403.ReCalculate()
  end
end }
o5226 = { [nil] = {}, Start = function()
  o5226["Value"] = False
  o5185.StartCalculate()
  o5191.StartCalculate()
  o5459.StartCalculate()
  o5507.StartCalculate()
  o5555.StartCalculate()
  o5603.StartCalculate()
  o5651.StartCalculate()
  o5699.StartCalculate()
  o5747.StartCalculate()
  o5795.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5226.Value == L0) then
    o5226["Value"] = L0
    o5185.ReCalculate()
    o5191.ReCalculate()
    o5459.ReCalculate()
    o5507.ReCalculate()
    o5555.ReCalculate()
    o5603.ReCalculate()
    o5651.ReCalculate()
    o5699.ReCalculate()
    o5747.ReCalculate()
    o5795.ReCalculate()
  end
end }
o5227 = { [nil] = {}, Start = function()
  o5227["Value"] = False
  o5404.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5227.Value == L0) then
    o5227["Value"] = L0
    o5404.ReCalculate()
  end
end }
o5228 = { [nil] = {}, GetCalculated = function()
  if not (o6072.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5228.SetStateValue(o5228.GetCalculated())
end, StartCalculate = function()
  o5228["Value"] = o5228.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5397.Node, o5196.Node, 107)
  Game_BonusObjectiveReached(GetGameNode(), 1, 2002, 2104)
end, SetStateValue = function(L0)
  if not (o5228.Value == L0) then
    DelayedFunction(2, o5228, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5228.Value == L0) then
    o5228["Value"] = L0
    if not (L0 ~= 1) then
      o5228.ChangeTo1()
    end
  end
end }
o5229 = { [nil] = {}, Start = function()
  o5229["Value"] = False
  o5230.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5229.Value == L0) then
    o5229["Value"] = L0
    o5230.ReCalculate()
  end
end }
o5230 = { [nil] = {}, GetCalculated = function()
  if not (o5229.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5230.SetStateValue(o5230.GetCalculated())
end, StartCalculate = function()
  o5230["Value"] = o5230.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 2, 2000, 2101)
  SED_SetTaskTextKey(2102, -1, -1)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  Game_PlayMusic(GetGameNode(), "Track4")
end, SetStateValue = function(L0)
  if not (o5230.Value == L0) then
    DelayedFunction(2, o5230, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5230.Value == L0) then
    o5230["Value"] = L0
    if not (L0 ~= 1) then
      o5230.ChangeTo1()
    end
  end
end }
o5231 = { [nil] = {}, Start = function()
  o5231["Value"] = False
  o5232.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5231.Value == L0) then
    o5231["Value"] = L0
    o5232.ReCalculate()
  end
end }
o5232 = { [nil] = {}, GetCalculated = function()
  if not (o5231.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5232.SetStateValue(o5232.GetCalculated())
end, StartCalculate = function()
  o5232["Value"] = o5232.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 3, 2000, 2102)
  SED_SetTaskTextKey(2103, -1, -1)
  Game_SetWayPoint(GetGameNode(), o6058.Node)
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o5232.Value == L0) then
    DelayedFunction(1, o5232, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5232.Value == L0) then
    o5232["Value"] = L0
    if not (L0 ~= 1) then
      o5232.ChangeTo1()
    end
  end
end }
o5233 = { [nil] = {}, Start = function()
  o5233["Value"] = False
  o5234.StartCalculate()
  o5237.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5233.Value == L0) then
    o5233["Value"] = L0
    o5234.ReCalculate()
    o5237.ReCalculate()
  end
end }
o5234 = { [nil] = {}, GetCalculated = function()
  if not (o5233.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5234.SetStateValue(o5234.GetCalculated())
end, StartCalculate = function()
  o5234["Value"] = o5234.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 4, 2000, 2103)
  SED_SetTaskTextKey(0, -1, -1)
end, SetStateValue = function(L0)
  if not (o5234.Value == L0) then
    DelayedFunction(2, o5234, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5234.Value == L0) then
    o5234["Value"] = L0
    if not (L0 ~= 1) then
      o5234.ChangeTo1()
    end
  end
end }
o5235 = { [nil] = {}, GetCalculated = function()
  if not (o5297.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5235.SetStateValue(o5235.GetCalculated())
end, StartCalculate = function()
  o5235["Value"] = o5235.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o5265, "Code19")
end, SetStateValue = function(L0)
  if not (o5235.Value == L0) then
    o5235["Value"] = L0
    if not (L0 ~= 1) then
      o5235.ChangeTo1()
    end
  end
end }
o5236 = { [nil] = {}, GetCalculated = function()
  if not (o5183.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5236.SetStateValue(o5236.GetCalculated())
end, StartCalculate = function()
  o5236["Value"] = o5236.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o5236.Value == L0) then
    o5236["Value"] = L0
    if not (L0 ~= 1) then
      o5236.ChangeTo1()
    end
  end
end }
o5237 = { [nil] = {}, GetCalculated = function()
  if not (o5233.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5237.SetStateValue(o5237.GetCalculated())
end, StartCalculate = function()
  o5237["Value"] = o5237.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5237.Value == L0) then
    o5237["Value"] = L0
    o2.ReCalculate()
  end
end }
o5261 = { [nil] = {}, GetCalculated = function()
  if not (o5356.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5261.SetStateValue(o5261.GetCalculated())
end, StartCalculate = function()
  o5261["Value"] = o5261.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5261.Value == L0) then
    o5261["Value"] = L0
    o26.ReCalculate()
  end
end }
o5262 = { [nil] = {}, GetCalculated = function()
  if not (o5417.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5262.SetStateValue(o5262.GetCalculated())
end, StartCalculate = function()
  o5262["Value"] = o5262.GetCalculated()
  o27.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5262.Value == L0) then
    o5262["Value"] = L0
    o27.ReCalculate()
  end
end }
S_o5265 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5265, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5265, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5265, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetShieldBarrier(L0.Node, 0.09, 0.1)
  CallFunction(o5265, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o5265, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5265, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  CallFunction(o5265, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AngelinaPath_1", 1, 1 } }("Code8")
  else
    CallFunction(o5265, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/Prison_FollowArea", "E", "", "", "", 5, 0.25, "Code9")
  else
    CallFunction(o5265, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AngelinaWaitingPath_1", 0.25, 1 } }("Code10")
  else
    CallFunction(o5265, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code11")
  else
    CallFunction(o5265, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5265, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Prison_FollowArea", "/Scenario_Dynamic/Navigation/Prison_FollowArea", "/Scenario_Dynamic/Navigation/Prison_FollowArea", "E", "", "", "", 0.5, "Code13")
  else
    CallFunction(o5265, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o5166, 0, 375, "E", "", "", "", "/Scenario_Dynamic/Navigation/BomberEscort_TriggerArea", "/Scenario_Dynamic/Navigation/BomberEscort_FollowArea", 0.5, 5, "Code14")
  else
    CallFunction(o5265, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 12 } }("Code15")
  else
    CallFunction(o5265, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  SendRadioMessageTake(o5265.Node, o5196.Node, 94)
  SendRadioMessageTake(o5196.Node, o5196.Node, 95)
  CallFunction(o5265, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AngelinaPath_2", 1, 1 } }("Code18")
  else
    CallFunction(o5265, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o30, nil, 0, "Code19")
  else
    CallFunction(o5265, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  StopAllActiveBehaviours(L0)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o5265, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code22")
  else
    CallFunction(o5265, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  Vessel_CollisionObjects(L0.Node, 1)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o5265, "Code24")
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AngelinaPath_2", 1, 1 } }("Code25")
  else
    CallFunction(o5265, "Code25")
  end
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o30, nil, 1e+32, "Code26")
  else
    CallFunction(o5265, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code27")
  else
    CallFunction(o5265, "Code27")
  end
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5265, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
end, SetStateValue_KineticShield10 = function(L0, L1)
  o5297.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 11) then
    if not (L0.CodeIndex >= 12) then
      if not (o5276.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 12) then
    if not (L0.CodeIndex >= 13) then
      if not (o5271.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 13) then
    if not (L0.CodeIndex >= 14) then
      if not (o5272.Value ~= True) then
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
o5271 = { [nil] = {}, GetCalculated = function()
  if not (o5223.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5271.SetStateValue(o5271.GetCalculated())
end, StartCalculate = function()
  o5271["Value"] = o5271.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5271.Value == L0) then
    DelayedFunction(3, o5271, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5271.Value == L0) then
    o5271["Value"] = L0
    CallFunction(o5265, "ProcesseStateChange")
  end
end }
o5272 = { [nil] = {}, GetCalculated = function()
  if not (o5224.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5272.SetStateValue(o5272.GetCalculated())
end, StartCalculate = function()
  o5272["Value"] = o5272.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5272.Value == L0) then
    o5272["Value"] = L0
    CallFunction(o5265, "ProcesseStateChange")
  end
end }
o5276 = { [nil] = {}, GetCalculated = function()
  if not (o5218.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5276.SetStateValue(o5276.GetCalculated())
end, StartCalculate = function()
  o5276["Value"] = o5276.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5276.Value == L0) then
    DelayedFunction(1, o5276, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5276.Value == L0) then
    o5276["Value"] = L0
    CallFunction(o5265, "ProcesseStateChange")
  end
end }
o5297 = { [nil] = {}, Start = function()
  o5297["Value"] = False
  o5235.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5297.Value == L0) then
    o5297["Value"] = L0
    o5235.ReCalculate()
  end
end }
S_o5333 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5333, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5333, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5333, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o5333, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5333, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  StopAllActiveBehaviours(L0)
  CallFunction(o5333, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code7")
  else
    CallFunction(o5333, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o5333, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TechBomberPath_1", 1, 1 } }("Code9")
  else
    CallFunction(o5333, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  o5217.SetStateValue(True)
  CallFunction(o5333, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o2267.Node, "dp_ver_1", "dp_ver_1", 0.5, 0.75, 100, "Code11")
  else
    CallFunction(o5333, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  SendRadioMessageTake(o5196.Node, o5196.Node, 91)
  CallFunction(o5333, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 3 } }("Code13")
  else
    CallFunction(o5333, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  o5223.SetStateValue(True)
  CallFunction(o5333, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TechBomberPath_2", 0.75, 1 } }(o5165, o5166, "/Scenario_Dynamic/Navigation/BomberEscort_TriggerArea", "/Scenario_Dynamic/Navigation/BomberEscort_FollowArea", False, "Code15")
  else
    CallFunction(o5333, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  SendRadioMessageTake(o5333.Node, o5196.Node, 92)
  SendRadioMessageTake(o5196.Node, o5196.Node, 93)
  o5224.SetStateValue(True)
  CallFunction(o5333, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TechBomberPath_3", 1, 1 } }("Code19")
  else
    CallFunction(o5333, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  SendRadioMessageTake(o5333.Node, o5196.Node, 96)
  o5225.SetStateValue(True)
  CallFunction(o5333, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o5794.Node, "dp_ver_1", "dp_ver_1", 0.5, 0.75, 53.489465, "Code22")
  else
    CallFunction(o5333, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  o5227.SetStateValue(True)
  CallFunction(o5333, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    o5167(o5168, "/Scenario_Dynamic/Navigation/BomberEscort_TriggerArea", "/Scenario_Dynamic/Navigation/BomberEscort_FollowArea", False, "Code24")
  else
    CallFunction(o5333, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o30, nil, 1e+32, "Code25")
  else
    CallFunction(o5333, "Code25")
  end
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  DipolLib.LeaveSimulation(L0)
  CallFunction(o5333, "Code26")
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
end, SetStateValue_KineticShield75 = function(L0, L1)
  o5351.SetStateValue(L1)
end, SetStateValue_KineticShield50 = function(L0, L1)
  o5352.SetStateValue(L1)
end, SetStateValue_KineticShield25 = function(L0, L1)
  o5353.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o5356.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5351 = { [nil] = {}, Start = function()
  o5351["Value"] = False
  o5210.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5351.Value == L0) then
    o5351["Value"] = L0
    o5210.ReCalculate()
  end
end }
o5352 = { [nil] = {}, Start = function()
  o5352["Value"] = False
  o5211.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5352.Value == L0) then
    o5352["Value"] = L0
    o5211.ReCalculate()
  end
end }
o5353 = { [nil] = {}, Start = function()
  o5353["Value"] = False
  o5212.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5353.Value == L0) then
    o5353["Value"] = L0
    o5212.ReCalculate()
  end
end }
o5356 = { [nil] = {}, Start = function()
  o5356["Value"] = False
  o5213.StartCalculate()
  o5261.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5356.Value == L0) then
    o5356["Value"] = L0
    o5213.ReCalculate()
    o5261.ReCalculate()
  end
end }
S_o5397 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o5171)
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
    DipolLib.InUtero_Undock(L0, o5171, "Code3")
  else
    CallFunction(o5397, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SendRadioMessageTake(o5397.Node, o5196.Node, 97)
  o5226.SetStateValue(True)
  CallFunction(o5397, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Stoney_Path_1", 1, 2 } }("Code6")
  else
    CallFunction(o5397, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o5397, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5397, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  SendRadioMessageTake(o5397.Node, o5196.Node, 98)
  SendRadioMessageTake(o5196.Node, o5196.Node, 99)
  CallFunction(o5397, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o5168, 0, 0, "", "", "", "", "/Scenario_Dynamic/Navigation/BomberEscort_TriggerArea", "/Scenario_Dynamic/Navigation/BomberEscort_FollowArea", 1, 5, "Code11")
  else
    CallFunction(o5397, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  o5229.SetStateValue(True)
  SendRadioMessageTake(o5397.Node, o5196.Node, 100)
  SendRadioMessageTake(o5196.Node, o5196.Node, 101)
  CallFunction(o5397, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/Crawler_FightArea", "cra", "", "", "", 10, 1, "Code15")
  else
    CallFunction(o5397, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  o5231.SetStateValue(True)
  CallFunction(o5397, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/AngelinaPath_2", "pos_5", "pos_7", 0.5, 1 } }("Code17")
  else
    CallFunction(o5397, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  SendRadioMessageTake(o5397.Node, o5196.Node, 102)
  o5233.SetStateValue(True)
  CallFunction(o5397, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o30, nil, 1e+32, "Code20")
  else
    CallFunction(o5397, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  DipolLib.LeaveSimulation(L0)
  CallFunction(o5397, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
end, SetStateValue_Destroyed = function(L0, L1)
  o5407.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o5417.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5403.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o5404.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 10) then
    if not (L0.CodeIndex >= 11) then
      if not (o5399.Value ~= True) then
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
  if not (o5195.Value ~= True) then
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
    o5399["Value"] = L0
    CallFunction(o5397, "ProcesseStateChange")
  end
end }
o5403 = { [nil] = {}, GetCalculated = function()
  if not (o5225.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5403.SetStateValue(o5403.GetCalculated())
end, StartCalculate = function()
  o5403["Value"] = o5403.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5403.Value == L0) then
    DelayedFunction(60, o5403, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5403.Value == L0) then
    o5403["Value"] = L0
    CallFunction(o5397, "ProcesseStateChange")
  end
end }
o5404 = { [nil] = {}, GetCalculated = function()
  if not (o5227.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5404.SetStateValue(o5404.GetCalculated())
end, StartCalculate = function()
  o5404["Value"] = o5404.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5404.Value == L0) then
    DelayedFunction(1, o5404, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5404.Value == L0) then
    o5404["Value"] = L0
    CallFunction(o5397, "ProcesseStateChange")
  end
end }
o5407 = { [nil] = {}, Start = function()
  o5407["Value"] = False
  o5214.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5407.Value == L0) then
    o5407["Value"] = L0
    o5214.ReCalculate()
  end
end }
o5417 = { [nil] = {}, Start = function()
  o5417["Value"] = False
  o5262.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5417.Value == L0) then
    o5417["Value"] = L0
    o5262.ReCalculate()
  end
end }
S_o5458 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5458, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5458, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5458, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5458, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5458, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
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
o5459 = { [nil] = {}, GetCalculated = function()
  if not (o5226.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5459.SetStateValue(o5459.GetCalculated())
end, StartCalculate = function()
  o5459["Value"] = o5459.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5459.Value == L0) then
    DelayedFunction(3.45, o5459, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5459.Value == L0) then
    o5459["Value"] = L0
    CallFunction(o5458, "ProcesseStateChange")
  end
end }
S_o5506 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5506, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5506, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5506, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5506, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5506, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o5507.Value ~= True) then
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
o5507 = { [nil] = {}, GetCalculated = function()
  if not (o5226.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5507.SetStateValue(o5507.GetCalculated())
end, StartCalculate = function()
  o5507["Value"] = o5507.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5507.Value == L0) then
    DelayedFunction(3.85, o5507, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5507.Value == L0) then
    o5507["Value"] = L0
    CallFunction(o5506, "ProcesseStateChange")
  end
end }
S_o5554 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5554, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5554, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5554, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5554, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5554, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o5555.Value ~= True) then
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
o5555 = { [nil] = {}, GetCalculated = function()
  if not (o5226.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5555.SetStateValue(o5555.GetCalculated())
end, StartCalculate = function()
  o5555["Value"] = o5555.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5555.Value == L0) then
    DelayedFunction(3.9, o5555, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5555.Value == L0) then
    o5555["Value"] = L0
    CallFunction(o5554, "ProcesseStateChange")
  end
end }
S_o5602 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5602, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5602, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5602, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5602, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5602, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o5603.Value ~= True) then
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
o5603 = { [nil] = {}, GetCalculated = function()
  if not (o5226.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5603.SetStateValue(o5603.GetCalculated())
end, StartCalculate = function()
  o5603["Value"] = o5603.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5603.Value == L0) then
    DelayedFunction(4.2, o5603, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5603.Value == L0) then
    o5603["Value"] = L0
    CallFunction(o5602, "ProcesseStateChange")
  end
end }
S_o5650 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5650, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5650, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5650, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5650, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5650, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o5651.Value ~= True) then
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
o5651 = { [nil] = {}, GetCalculated = function()
  if not (o5226.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5651.SetStateValue(o5651.GetCalculated())
end, StartCalculate = function()
  o5651["Value"] = o5651.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5651.Value == L0) then
    DelayedFunction(4.1, o5651, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5651.Value == L0) then
    o5651["Value"] = L0
    CallFunction(o5650, "ProcesseStateChange")
  end
end }
S_o5698 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5698, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5698, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5698, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5698, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5698, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o5699.Value ~= True) then
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
o5699 = { [nil] = {}, GetCalculated = function()
  if not (o5226.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5699.SetStateValue(o5699.GetCalculated())
end, StartCalculate = function()
  o5699["Value"] = o5699.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5699.Value == L0) then
    DelayedFunction(4.4, o5699, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5699.Value == L0) then
    o5699["Value"] = L0
    CallFunction(o5698, "ProcesseStateChange")
  end
end }
S_o5746 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5746, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5746, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5746, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5746, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5746, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
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
  if not (o5226.Value ~= True) then
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
    DelayedFunction(4.45, o5747, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5747.Value == L0) then
    o5747["Value"] = L0
    CallFunction(o5746, "ProcesseStateChange")
  end
end }
S_o5794 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5794, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5794, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5794, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5794, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5794, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o5795.Value ~= True) then
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
o5795 = { [nil] = {}, GetCalculated = function()
  if not (o5226.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5795.SetStateValue(o5795.GetCalculated())
end, StartCalculate = function()
  o5795["Value"] = o5795.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5795.Value == L0) then
    DelayedFunction(4.99, o5795, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5795.Value == L0) then
    o5795["Value"] = L0
    CallFunction(o5794, "ProcesseStateChange")
  end
end }
S_o5842 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5842, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5842, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5842, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Prison_PatrolArea", "/Scenario_Dynamic/Navigation/Prison_TriggerArea", "/Scenario_Dynamic/Navigation/Prison_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o5842, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o5859.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5859 = { [nil] = {}, Start = function()
  o5859["Value"] = False
  o5215.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5859.Value == L0) then
    o5859["Value"] = L0
    o5215.ReCalculate()
  end
end }
S_o5898 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5898, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5898, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5898, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Prison_PatrolArea", "/Scenario_Dynamic/Navigation/Prison_TriggerArea", "/Scenario_Dynamic/Navigation/Prison_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o5898, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o5915.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5915 = { [nil] = {}, Start = function()
  o5915["Value"] = False
  o5215.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5915.Value == L0) then
    o5915["Value"] = L0
    o5215.ReCalculate()
  end
end }
S_o5954 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5954, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5954, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5954, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Prison_VehiclePatrolArea", "/Scenario_Dynamic/Navigation/Prison_TriggerArea", "/Scenario_Dynamic/Navigation/Prison_FollowArea", "E", "", "", "", 15, "Code4")
  else
    CallFunction(o5954, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o5964.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5964 = { [nil] = {}, Start = function()
  o5964["Value"] = False
  o5215.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5964.Value == L0) then
    o5964["Value"] = L0
    o5215.ReCalculate()
  end
end }
S_o6001 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6001, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6001, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6001, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Prison_VehiclePatrolArea", "/Scenario_Dynamic/Navigation/Prison_TriggerArea", "/Scenario_Dynamic/Navigation/Prison_FollowArea", "E", "", "", "", 15, "Code4")
  else
    CallFunction(o6001, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
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
  o5215.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6011.Value == L0) then
    o6011["Value"] = L0
    o5215.ReCalculate()
  end
end }
S_o6048 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o6048, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6053 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o5333.Node)
  CallFunction(o6053, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6058 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o5397.Node)
  CallFunction(o6058, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6063 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6063, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6063, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6063, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o6063, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o6063, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  o5219.SetStateValue(True)
  CallFunction(o6063, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 15 } }("Code8")
  else
    CallFunction(o6063, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  SetEnemyMatrixElement(4, 2, E)
  SetEnemyMatrixElement(2, 4, E)
  SetEnemyMatrixElement(4, 3, E)
  SetEnemyMatrixElement(3, 4, E)
  SetEnemyMatrixElement(5, 2, E)
  SetEnemyMatrixElement(2, 5, E)
  CallFunction(o6063, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code15")
  else
    CallFunction(o6063, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  o5218.SetStateValue(True)
  Game_PlayMusic(GetGameNode(), "Agressive")
  SendRadioMessageTake(o5196.Node, o5196.Node, 89)
  SendRadioMessageTake(o5333.Node, o5196.Node, 90)
  CallFunction(o6063, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/CinganPath_1", 0.4, 1 } }("Code20")
  else
    CallFunction(o6063, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code21")
  else
    CallFunction(o6063, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6063, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/CinganPath_2", 1.15, 1 } }("Code23")
  else
    CallFunction(o6063, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
end, SetStateValue_Born = function(L0, L1)
  o6071.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o6072.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6068.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 21) then
    if not (L0.CodeIndex >= 22) then
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
o6068 = { [nil] = {}, GetCalculated = function()
  if not (o5217.Value ~= True) then
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
    DelayedFunction(39.841655, o6068, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6068.Value == L0) then
    o6068["Value"] = L0
    CallFunction(o6063, "ProcesseStateChange")
  end
end }
o6069 = { [nil] = {}, GetCalculated = function()
  if not (o5183.Value ~= True) then
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
    o6069["Value"] = L0
    CallFunction(o6063, "ProcesseStateChange")
  end
end }
o6071 = { [nil] = {}, Start = function()
  o6071["Value"] = False
  o5221.StartCalculate()
  o5222.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6071.Value == L0) then
    o6071["Value"] = L0
    o5221.ReCalculate()
    o5222.ReCalculate()
  end
end }
o6072 = { [nil] = {}, Start = function()
  o6072["Value"] = False
  o5228.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6072.Value == L0) then
    o6072["Value"] = L0
    o5228.ReCalculate()
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
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6123, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 15 } }("Code4")
  else
    CallFunction(o6123, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Prison_TriggerArea", "/Scenario_Dynamic/Navigation/Prison_TriggerArea", "/Scenario_Dynamic/Navigation/Prison_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o6123, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6126.Value ~= True) then
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
o6126 = { [nil] = {}, GetCalculated = function()
  if not (o5217.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6126.SetStateValue(o6126.GetCalculated())
end, StartCalculate = function()
  o6126["Value"] = o6126.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6126.Value == L0) then
    DelayedFunction(40.789465, o6126, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6126.Value == L0) then
    o6126["Value"] = L0
    CallFunction(o6123, "ProcesseStateChange")
  end
end }
S_o6180 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6180, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6180, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6180, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 15 } }("Code4")
  else
    CallFunction(o6180, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Prison_TriggerArea", "/Scenario_Dynamic/Navigation/Prison_TriggerArea", "/Scenario_Dynamic/Navigation/Prison_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o6180, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6183.Value ~= True) then
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
o6183 = { [nil] = {}, GetCalculated = function()
  if not (o5217.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6183.SetStateValue(o6183.GetCalculated())
end, StartCalculate = function()
  o6183["Value"] = o6183.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6183.Value == L0) then
    DelayedFunction(40.471568, o6183, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6183.Value == L0) then
    o6183["Value"] = L0
    CallFunction(o6180, "ProcesseStateChange")
  end
end }
S_o6237 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6237, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6237, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6237, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 15 } }("Code4")
  else
    CallFunction(o6237, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Prison_TriggerArea", "/Scenario_Dynamic/Navigation/Prison_TriggerArea", "/Scenario_Dynamic/Navigation/Prison_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o6237, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6240.Value ~= True) then
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
o6240 = { [nil] = {}, GetCalculated = function()
  if not (o5217.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6240.SetStateValue(o6240.GetCalculated())
end, StartCalculate = function()
  o6240["Value"] = o6240.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6240.Value == L0) then
    DelayedFunction(40.898846, o6240, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6240.Value == L0) then
    o6240["Value"] = L0
    CallFunction(o6237, "ProcesseStateChange")
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
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6294, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 15 } }("Code4")
  else
    CallFunction(o6294, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Prison_TriggerArea", "/Scenario_Dynamic/Navigation/Prison_TriggerArea", "/Scenario_Dynamic/Navigation/Prison_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o6294, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6297.Value ~= True) then
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
o6297 = { [nil] = {}, GetCalculated = function()
  if not (o5217.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6297.SetStateValue(o6297.GetCalculated())
end, StartCalculate = function()
  o6297["Value"] = o6297.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6297.Value == L0) then
    DelayedFunction(40.787638, o6297, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6297.Value == L0) then
    o6297["Value"] = L0
    CallFunction(o6294, "ProcesseStateChange")
  end
end }
S_o6351 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6351, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6351, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6351, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 15 } }("Code4")
  else
    CallFunction(o6351, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Prison_TriggerArea", "/Scenario_Dynamic/Navigation/Prison_TriggerArea", "/Scenario_Dynamic/Navigation/Prison_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o6351, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6354.Value ~= True) then
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
o6354 = { [nil] = {}, GetCalculated = function()
  if not (o5217.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6354.SetStateValue(o6354.GetCalculated())
end, StartCalculate = function()
  o6354["Value"] = o6354.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6354.Value == L0) then
    DelayedFunction(40.868649, o6354, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6354.Value == L0) then
    o6354["Value"] = L0
    CallFunction(o6351, "ProcesseStateChange")
  end
end }
S_o6408 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6408, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6408, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6408, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o6408, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 10 } }("Code5")
  else
    CallFunction(o6408, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Prison_TriggerArea", "/Scenario_Dynamic/Navigation/Prison_TriggerArea", "/Scenario_Dynamic/Navigation/Prison_FollowArea", "wng_techbomber", "", "", "", 0.5, "Code6")
  else
    CallFunction(o6408, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6411.Value ~= True) then
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
o6411 = { [nil] = {}, GetCalculated = function()
  if not (o5217.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6411.SetStateValue(o6411.GetCalculated())
end, StartCalculate = function()
  o6411["Value"] = o6411.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6411.Value == L0) then
    DelayedFunction(40.874549, o6411, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6411.Value == L0) then
    o6411["Value"] = L0
    CallFunction(o6408, "ProcesseStateChange")
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
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6465, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0.689745)
  Body_SetEmpShield(L0.Node, 0.865123)
  CallFunction(o6465, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    o5169(o5170, "/Scenario_Dynamic/Navigation/Crawler_TriggerArea", "/Scenario_Dynamic/Navigation/Crawler_FollowArea", False, "Code6")
  else
    CallFunction(o6465, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/OverallArea", "/Scenario_Dynamic/Navigation/OverallArea", "/Scenario_Dynamic/Navigation/OverallArea", "pla", "", "", "", 0.25, "Code7")
  else
    CallFunction(o6465, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Attacked = function(L0, L1)
  o6469.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6468.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
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
  if not (o6469.Value == True) then
    if not (o6526.Value == True) then
      if not (o6583.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o6466.SetStateValue(o6466.GetCalculated())
end, StartCalculate = function()
  o6466["Value"] = o6466.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6466.Value == L0) then
    DelayedFunction(1.864355, o6466, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6466.Value == L0) then
    o6466["Value"] = L0
    CallFunction(o6465, "ProcesseStateChange")
  end
end }
o6468 = { [nil] = {}, GetCalculated = function()
  if not (o5189.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6468.SetStateValue(o6468.GetCalculated())
end, StartCalculate = function()
  o6468["Value"] = o6468.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6468.Value == L0) then
    DelayedFunction(5, o6468, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6468.Value == L0) then
    o6468["Value"] = L0
    CallFunction(o6465, "ProcesseStateChange")
  end
end }
o6469 = { [nil] = {}, Start = function()
  o6469["Value"] = False
  o6466.StartCalculate()
  o6523.StartCalculate()
  o6580.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6469.Value == L0) then
    o6469["Value"] = L0
    o6466.ReCalculate()
    o6523.ReCalculate()
    o6580.ReCalculate()
  end
end }
S_o6522 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6522, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6522, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6522, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0.889745)
  Body_SetEmpShield(L0.Node, 0.4)
  CallFunction(o6522, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o5170, 0, 250, "E", "", "", "", "/Scenario_Dynamic/Navigation/Crawler_TriggerArea", "/Scenario_Dynamic/Navigation/Crawler_FollowArea", 0.5, 5, "Code6")
  else
    CallFunction(o6522, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/OverallArea", "/Scenario_Dynamic/Navigation/OverallArea", "/Scenario_Dynamic/Navigation/OverallArea", "pla", "", "", "", 0.25, "Code7")
  else
    CallFunction(o6522, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Attacked = function(L0, L1)
  o6526.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6525.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o6523.Value ~= True) then
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
o6523 = { [nil] = {}, GetCalculated = function()
  if not (o6526.Value == True) then
    if not (o6469.Value == True) then
      if not (o6583.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o6523.SetStateValue(o6523.GetCalculated())
end, StartCalculate = function()
  o6523["Value"] = o6523.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6523.Value == L0) then
    DelayedFunction(0.123465, o6523, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6523.Value == L0) then
    o6523["Value"] = L0
    CallFunction(o6522, "ProcesseStateChange")
  end
end }
o6525 = { [nil] = {}, GetCalculated = function()
  if not (o5189.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6525.SetStateValue(o6525.GetCalculated())
end, StartCalculate = function()
  o6525["Value"] = o6525.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6525.Value == L0) then
    DelayedFunction(5.1, o6525, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6525.Value == L0) then
    o6525["Value"] = L0
    CallFunction(o6522, "ProcesseStateChange")
  end
end }
o6526 = { [nil] = {}, Start = function()
  o6526["Value"] = False
  o6466.StartCalculate()
  o6523.StartCalculate()
  o6580.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6526.Value == L0) then
    o6526["Value"] = L0
    o6466.ReCalculate()
    o6523.ReCalculate()
    o6580.ReCalculate()
  end
end }
S_o6579 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6579, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6579, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6579, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0.523125)
  Body_SetEmpShield(L0.Node, 0.214455)
  CallFunction(o6579, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o5170, 0, 250, "E", "", "", "", "/Scenario_Dynamic/Navigation/Crawler_TriggerArea", "/Scenario_Dynamic/Navigation/Crawler_FollowArea", 0.5, 5, "Code6")
  else
    CallFunction(o6579, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/OverallArea", "/Scenario_Dynamic/Navigation/OverallArea", "/Scenario_Dynamic/Navigation/OverallArea", "pla", "", "", "", 0.25, "Code7")
  else
    CallFunction(o6579, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Attacked = function(L0, L1)
  o6583.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6582.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o6580.Value ~= True) then
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
o6580 = { [nil] = {}, GetCalculated = function()
  if not (o6583.Value == True) then
    if not (o6526.Value == True) then
      if not (o6469.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o6580.SetStateValue(o6580.GetCalculated())
end, StartCalculate = function()
  o6580["Value"] = o6580.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6580.Value == L0) then
    DelayedFunction(1.265496, o6580, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6580.Value == L0) then
    o6580["Value"] = L0
    CallFunction(o6579, "ProcesseStateChange")
  end
end }
o6582 = { [nil] = {}, GetCalculated = function()
  if not (o5189.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6582.SetStateValue(o6582.GetCalculated())
end, StartCalculate = function()
  o6582["Value"] = o6582.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6582.Value == L0) then
    DelayedFunction(5.1, o6582, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6582.Value == L0) then
    o6582["Value"] = L0
    CallFunction(o6579, "ProcesseStateChange")
  end
end }
o6583 = { [nil] = {}, Start = function()
  o6583["Value"] = False
  o6466.StartCalculate()
  o6523.StartCalculate()
  o6580.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6583.Value == L0) then
    o6583["Value"] = L0
    o6466.ReCalculate()
    o6523.ReCalculate()
    o6580.ReCalculate()
  end
end }
S_o6636 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6636, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6636, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6636, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/PirateStation_PatrolArea", "/Scenario_Dynamic/Navigation/PirateStation_TriggerArea", "/Scenario_Dynamic/Navigation/PirateStation_FollowArea", "E", "", "", "", 15, "Code4")
  else
    CallFunction(o6636, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6638.Value ~= True) then
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
o6638 = { [nil] = {}, GetCalculated = function()
  if not (o5223.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6638.SetStateValue(o6638.GetCalculated())
end, StartCalculate = function()
  o6638["Value"] = o6638.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6638.Value == L0) then
    o6638["Value"] = L0
    CallFunction(o6636, "ProcesseStateChange")
  end
end }
S_o6683 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6683, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6683, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6683, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/PirateStation_PatrolArea", "/Scenario_Dynamic/Navigation/PirateStation_TriggerArea", "/Scenario_Dynamic/Navigation/PirateStation_FollowArea", "E", "", "", "", 15, "Code4")
  else
    CallFunction(o6683, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6685.Value ~= True) then
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
o6685 = { [nil] = {}, GetCalculated = function()
  if not (o5223.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6685.SetStateValue(o6685.GetCalculated())
end, StartCalculate = function()
  o6685["Value"] = o6685.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6685.Value == L0) then
    o6685["Value"] = L0
    CallFunction(o6683, "ProcesseStateChange")
  end
end }
S_o6730 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6730, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6730, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6730, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/PirateStation_PatrolArea", "/Scenario_Dynamic/Navigation/PirateStation_TriggerArea", "/Scenario_Dynamic/Navigation/PirateStation_FollowArea", "E", "", "", "", 15, "Code4")
  else
    CallFunction(o6730, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6732.Value ~= True) then
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
o6732 = { [nil] = {}, GetCalculated = function()
  if not (o5223.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6732.SetStateValue(o6732.GetCalculated())
end, StartCalculate = function()
  o6732["Value"] = o6732.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6732.Value == L0) then
    o6732["Value"] = L0
    CallFunction(o6730, "ProcesseStateChange")
  end
end }
S_o6777 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6777, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6777, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6777, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/PirateStation_PatrolArea", "/Scenario_Dynamic/Navigation/PirateStation_TriggerArea", "/Scenario_Dynamic/Navigation/PirateStation_FollowArea", "E", "", "", "", 15, "Code4")
  else
    CallFunction(o6777, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6779.Value ~= True) then
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
o6779 = { [nil] = {}, GetCalculated = function()
  if not (o5223.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6779.SetStateValue(o6779.GetCalculated())
end, StartCalculate = function()
  o6779["Value"] = o6779.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6779.Value == L0) then
    o6779["Value"] = L0
    CallFunction(o6777, "ProcesseStateChange")
  end
end }
S_o6824 = { [nil] = {}, Start = function(L0)

end }
o6826 = FormationLib.CreateFormation("Triangle", "", "", "", 30, 30)
o6828 = FormationLib.CreateFormation("Triangle", "", "", "", 30, 30)
o6830 = FormationLib.CreateFormation("TriangleUpper", "", "", "", 20, 20)
S_o6831 = { [nil] = {}, Start = function(L0)

end }
S_o6832 = { [nil] = {}, Start = function(L0)

end }
S_o6833 = { [nil] = {}, Start = function(L0)

end }
S_o6834 = { [nil] = {}, Start = function(L0)

end }
S_o6835 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Atmo")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o6835, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o6835, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/IngameScenes/Navigation/LookFrom_0", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  FormationLib.PlaceFormationPath(o6825, o6826, "/IngameScenes/Navigation/PlayerPath_1")
  FormationLib.PlaceFormationPath(o6829, o6830, "/IngameScenes/Navigation/EeriePath_1")
  CallFunction(o6835, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.05, "Code11")
  else
    CallFunction(o6835, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Camera_MoveTo(L0.Node, "/IngameScenes/Navigation/LookFrom_1", 20, "MMMN", 0)
  CallFunction(o6835, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o6825, o6826, "/IngameScenes/Navigation/PlayerPath_1", "pos_3", "pos_6", 1, 1, "Code13")
  else
    CallFunction(o6835, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Camera_Cut(L0.Node, 1)
  CallFunction(o6835, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code15")
  else
    CallFunction(o6835, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Camera_MoveTo(L0.Node, "/IngameScenes/Navigation/LookFrom_2", 0, "MMMN", 0)
  FormationLib.PlaceFormationPath(o6827, o6828, "/IngameScenes/Navigation/PlayerPath_2")
  CallFunction(o6835, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.05, "Code18")
  else
    CallFunction(o6835, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o6827, o6828, "/IngameScenes/Navigation/PlayerPath_2", "pos_1", "pos_3", 1, 1, "Code19")
  else
    CallFunction(o6835, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  Director_EndCutscene(L0.Node)
  CallFunction(o5265, "Code6")
  CallFunction(o5333, "Code5")
  CallFunction(o6835, "Code22")
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code23")
  else
    CallFunction(o6835, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  SED_SetTaskTextKey(2100, -1, -1)
  Game_SetWayPoint(GetGameNode(), o6048.Node)
  CallFunction(o6835, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6842 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.02, "Code1")
  else
    CallFunction(o6842, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o6829, o6830, "/IngameScenes/Navigation/EeriePath_1", "pos_1", "pos_4", 1, 1, "Code2")
  else
    CallFunction(o6842, "Code2")
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
S_o6845 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.5, "Code1")
  else
    CallFunction(o6845, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o5196.Node, o5196.Node, 81)
  CallFunction(o6845, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 22, "Code3")
  else
    CallFunction(o6845, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SendRadioMessageTake(o5333.Node, o5196.Node, 82)
  CallFunction(o6845, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6845, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Game_PlayMusic(GetGameNode(), "Atmo")
  CallFunction(o6845, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6848.Value ~= True) then
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
o6848 = { [nil] = {}, GetCalculated = function()
  if not (o5223.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6848.SetStateValue(o6848.GetCalculated())
end, StartCalculate = function()
  o6848["Value"] = o6848.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6848.Value == L0) then
    DelayedFunction(30, o6848, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6848.Value == L0) then
    o6848["Value"] = L0
    CallFunction(o6845, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 321)
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
  o5172 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "PrisonArea_Trigger", S_o5172)
  o5177.Start()
  o5178 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "PrisonAreaLeave_Trigger", S_o5178)
  o5183.Start()
  o5184 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "ActivateCrawler_Trigger", S_o5184)
  o5189.Start()
  o5190 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "AttackCrawler_Trigger", S_o5190)
  o5195.Start()
  o5196 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o5196)
  o5217.Start()
  o5218.Start()
  o5219.Start()
  o5223.Start()
  o5224.Start()
  o5225.Start()
  o5226.Start()
  o5227.Start()
  o5229.Start()
  o5231.Start()
  o5233.Start()
  o5265 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_angelina_1", S_o5265)
  o5297.Start()
  o5333 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_techbomber_1", S_o5333)
  o5351.Start()
  o5352.Start()
  o5353.Start()
  o5356.Start()
  o5397 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_stoney_1", S_o5397)
  o5407.Start()
  o5417.Start()
  o5458 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_dock1_1_des_1", S_o5458)
  o5506 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_metalblock1_des_1", S_o5506)
  o5554 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_metalblock2_des_1", S_o5554)
  o5602 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_metalblock2_des_2", S_o5602)
  o5650 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_metalblock3_des_1", S_o5650)
  o5698 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_tank_big_des_1", S_o5698)
  o5746 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_tank_big_des_2", S_o5746)
  o5794 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_vehiclestation_des_1", S_o5794)
  o5842 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout_1", S_o5842)
  o5859.Start()
  o5898 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout_2", S_o5898)
  o5915.Start()
  o5954 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_buggy_1", S_o5954)
  o5964.Start()
  o6001 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_buggy_2", S_o6001)
  o6011.Start()
  o6048 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1", S_o6048)
  o6053 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_guard_1", S_o6053)
  o6058 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_guard_2", S_o6058)
  o6063 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Cingan", S_o6063)
  o6071.Start()
  o6072.Start()
  o6123 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cin_scout_1", S_o6123)
  o6180 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cin_scout_2", S_o6180)
  o6237 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cin_scout_3", S_o6237)
  o6294 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cin_scout_4", S_o6294)
  o6351 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cin_scout_5", S_o6351)
  o6408 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cin_bomber_1", S_o6408)
  o6465 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_1", S_o6465)
  o6469.Start()
  o6522 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_2", S_o6522)
  o6526.Start()
  o6579 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_3", S_o6579)
  o6583.Start()
  o6636 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_buggy_4", S_o6636)
  o6683 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_buggy_5", S_o6683)
  o6730 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_buggy_6", S_o6730)
  o6777 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_buggy_7", S_o6777)
  o6824 = BindEasy(Node_Find("/"), "Camera", S_o6824)
  o6831 = BindEasy(Node_Find("/IngameScenes/Navigation"), "LookFrom_0", S_o6831)
  o6832 = BindEasy(Node_Find("/IngameScenes/Navigation"), "LookFrom_1", S_o6832)
  o6833 = BindEasy(Node_Find("/IngameScenes/Navigation"), "LookAt_1", S_o6833)
  o6834 = BindEasy(Node_Find("/IngameScenes/Navigation"), "LookFrom_2", S_o6834)
  o6835 = BindEasy(Node_Find("/IngameScenes/Director"), "Intro", S_o6835)
  o6842 = BindEasy(Node_Find("/IngameScenes/Director"), "Intro_AddOn", S_o6842)
  o6845 = BindEasy(Node_Find("/IngameScenes/Director"), "Intro_Audio", S_o6845)
  o5165 = { {}, o5333, o5265 }()
  o5167 = { {}, o5333, o5397 }()
  o5169 = { {}, o6465, o6522, o6579 }()
  o6825 = { {}, o5196 }()
  o6827 = { {}, o5196, o5265, o5333 }()
  o6829 = { {}, o5333, o5265 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
