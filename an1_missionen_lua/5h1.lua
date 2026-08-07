-- dekompiliert aus map\5h1\script\5h1.sco
-- Quelle laut Bytecode: =(none)
-- lua4dec.py, 2026-07-28

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
  Terrain_LoadTerrain(node1, "map/3H3/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/3H3/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrain(node0, 0.025, 0.3)
  Game_SetCausticObject(node0, 0.1, 0.3)
  Game_SetCausticBuilding(node0, 0.025, 0.3)
  Game_SetLightCache(node0, "map/3H3/Lmsh/", "map/3H3/Ltex/")
  Game_SetTerrainDepth(node0, 5385)
  Game_SetDecompressionHeight(node0, 475)
  Game_SetAmbientLight(node0, 0.070588, 0.12549, 0.015686)
  Game_SetParallelLightT(node0, 0.141176, 0.25098, 0.031373)
  Game_SetParallelLightB(node0, 0.666667, 0.443137, 0.172549)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_5H1_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track01_frag_heroic2.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_track05.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_badend.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_sfx_timesend.sam", 3)
  Game_LoadMusic(node0, "sfx/sample/music/music_track05_short.sam", 4)
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
  node8 = Node_CreateNode("nod_generic", "tz_AtacamaG")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(662.302, 3321.001, 168.502), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node8, "osd/ata/ata_gate.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "gen_dock_1")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(974.495, 3274.61, 16.50147), MAT_Vector3(90.11568, 0, 0))
  Node_ParseIniFile(node9, "osd/gen/gen_dock.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "tz_elem01a_1")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(906.2476, 3608.873, 97.89492), MAT_Vector3(179.8824, 0, 0))
  Node_ParseIniFile(node10, "osd/tz/tz_element01a.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "tz_elem01a_2")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(803.7599, 2919.565, 166.8369), MAT_Vector3(-54.68998, 0, 0))
  Node_ParseIniFile(node11, "osd/tz/tz_element01a.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "tz_elem01a_3")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(700.3705, 3445.536, 92.74578), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node12, "osd/tz/tz_element01a.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "tz_elem03a_1")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(730.0732, 3520.541, 85.64412), MAT_Vector3(-89.95915, 0, 0))
  Node_ParseIniFile(node13, "osd/tz/tz_element03a.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "tz_elem03a_3")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(731.7873, 3184.36, 82.46058), MAT_Vector3(-0.278261, 0, 0))
  Node_ParseIniFile(node14, "osd/tz/tz_element03a.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "tz_elem03a_2")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(836.2106, 2807.97, 164.558), MAT_Vector3(-13.51275, 0.096226, -0.448375))
  Node_ParseIniFile(node15, "osd/tz/tz_element03a.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "tz_elem05a_1")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(806.223, 3574.541, 88.94297), MAT_Vector3(179.993, 0, 0))
  Node_ParseIniFile(node16, "osd/tz/tz_element05a.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "tz_elem05a_2")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(1086.591, 3568.893, 42.84075), MAT_Vector3(179.993, 0, 0))
  Node_ParseIniFile(node17, "osd/tz/tz_element05a.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "tz_elem05a_3")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(2206.017, 3592.5, -31.65835), MAT_Vector3(135.499, 0, 0))
  Node_ParseIniFile(node18, "osd/tz/tz_element05a.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "tz_elem06a_1")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(707.7853, 3060.48, 75.79857), MAT_Vector3(-54.3999, 0, 0))
  Node_ParseIniFile(node19, "osd/tz/tz_element06a.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "gen_kai2_1")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(2219.369, 3474.574, 92.58082), MAT_Vector3(-85.373, 0, 0))
  Node_ParseIniFile(node20, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "gen_kai2_2")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(2048.66, 2567.389, 92.58082), MAT_Vector3(-113.4501, 0, 0))
  Node_ParseIniFile(node21, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "tz_elem01_r_1")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(1983.471, 3469.497, 26.64036), MAT_Vector3(105.7679, -5.785886, 1.828459))
  Node_ParseIniFile(node22, "osd/tz/tz_element01_raw.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "tz_elem01_l_1")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(1943.543, 2512.131, 93.51702), MAT_Vector3(74.14434, -13.35011, -14.79427))
  Node_ParseIniFile(node23, "osd/tz/tz_element01_raw.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "tz_elem07_1")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(1570.576, 3563.146, 108.4579), MAT_Vector3(20.66536, 0, 0))
  Node_ParseIniFile(node24, "osd/tz/tz_element07.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "gen_kai1_1")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(2192.695, 3384.334, 13.58425), MAT_Vector3(-84.83332, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_kai1.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_bunker_1")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(1708.11, 2955.732, 89.33217), MAT_Vector3(-129.712, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "gen_mhaus1_1")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(1761.85, 3269.435, 7.157054), MAT_Vector3(141.0515, 0, 0))
  Node_ParseIniFile(node27, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "gen_mhaus2_1")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(1696.997, 3351.468, 91.5734), MAT_Vector3(45.00206, 0, 0))
  Node_ParseIniFile(node28, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "gen_turret_medium_1")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(805.741, 3429.531, 78.10379), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node29, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "gen_turret_medium_2")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(708.7575, 3372.367, 79.04509), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node30, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "gen_turret_medium_3")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(747.3468, 3125.194, 76.14194), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node31, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "gen_turret_medium_4")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(713.3165, 3235.296, 79.48325), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_turret_medium_5")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(1972.285, 2599.167, 132.0839), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node33, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "gen_turret_medium_6")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(2135.843, 3469.287, 130.0035), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "gen_torptower_1")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(823.3205, 3486.394, 81.3955), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node35, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_torptower_2")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(874.3844, 2872.865, 154.05), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "gen_turret_medium_7")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(2301.942, 3574.422, 95), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node37, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "gen_turret_medium_8")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(1732.24, 3021.22, 77.60071), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node38, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_turret_medium_9")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(1344.339, 3009.743, 55), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_turret_medium_10")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(1744.525, 3591.798, 170.6067), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_turret_medium_11")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(2053.048, 2605.708, 95.45529), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_turret_medium_12")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(2273.088, 3347.834, 12.34193), MAT_Vector3(6.244772, 0, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_turret_medium_13")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(1772.969, 2900.455, 77.15885), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node43, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_turret_medium_14")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(1085.874, 3384.971, 35.03747), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node44, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_turret_medium_15")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(898.4327, 2884.788, 152.1461), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node45, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_turret_medium_16")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(983.7849, 3093.01, 36.11801), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node46, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "gen_turret_medium_17")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(966.5129, 3050.222, 35.57774), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node47, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "gen_torptower_3")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(939.151, 3084.632, 37.63743), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node48, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "gen_torptower_4")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(1056.347, 3396.748, 36.68413), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node49, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "gen_torptower_5")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(1979.016, 2643.022, 95.25739), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node50, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_vent_1")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(1301.541, 3059.284, 56.3762), MAT_Vector3(-97.74649, 0, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_vent.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "gen_vent_2")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(1332.725, 3299.415, 57.65967), MAT_Vector3(-96.05635, 0, 0))
  Node_ParseIniFile(node52, "osd/gen/gen_vent.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_vent_3")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(1297.569, 3360.47, 57.23188), MAT_Vector3(-92.95775, 0, 0))
  Node_ParseIniFile(node53, "osd/gen/gen_vent.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "gen_vent_4")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(1251.565, 3040.108, 56.35574), MAT_Vector3(-93.80282, 0, 0))
  Node_ParseIniFile(node54, "osd/gen/gen_vent.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "tz_geb_addon01_1")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(1625.167, 3541.354, 284.9592), MAT_Vector3(20.66536, 0, 0))
  Node_ParseIniFile(node55, "osd/tz/tz_geb_addon01.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "tz_geb_add_china_big_1")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(765.2612, 3184.053, 305.4655), MAT_Vector3(-0.020447, 0, 0))
  Node_ParseIniFile(node56, "osd/tz/tz_geb_add_china_big.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "tz_element06a_1")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(1695.975, 2688.837, 19.40167), MAT_Vector3(49.29578, 0, 0))
  Node_ParseIniFile(node57, "osd/tz/tz_element06a.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "des_brainfire_1")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(2658.396, 1768.388, 448.1572), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node58, "osd/des/des_brainfire.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node7, node59)
  Node_ParseIniFile(node59, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_fx_sky", "fx_sky_09_1")
  Node_AddSon(node7, node60)
  Node_ParseIniFile(node60, "osd/fx_sky/fx_sky_09.osd")
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_fx_plankton", "fx_plankton_green_1")
  Node_AddSon(node7, node61)
  Node_ParseIniFile(node61, "osd/fx_plankton/fx_plankton_green.osd")
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node62)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node62, node63)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node62, node64)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("NOD_PatrolArea", "AtacamaBattle_PatrolArea")
  Node_AddSon(node64, node65)
  PatrolArea_SetPosition(node65, MAT_Vector3(2398.800321, 3018.942687, 105))
  PatrolArea_SetRadius(node65, 250)
  PatrolArea_SetMinZ(node65, -50)
  PatrolArea_SetMaxZ(node65, 50)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("NOD_PatrolArea", "AtacamaBattle_TriggerArea")
  Node_AddSon(node64, node66)
  PatrolArea_SetPosition(node66, MAT_Vector3(2395.322666, 3015.465202, 105))
  PatrolArea_SetRadius(node66, 480)
  PatrolArea_SetMinZ(node66, -105)
  PatrolArea_SetMaxZ(node66, 350)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("NOD_PatrolArea", "AtacamaBattle_FollowArea")
  Node_AddSon(node64, node67)
  PatrolArea_SetPosition(node67, MAT_Vector3(2405.755042, 3011.987744, 105))
  PatrolArea_SetRadius(node67, 550)
  PatrolArea_SetMinZ(node67, -105)
  PatrolArea_SetMaxZ(node67, 350)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("NOD_PatrolArea", "Brainfire_PatrolArea")
  Node_AddSon(node64, node68)
  PatrolArea_SetPosition(node68, MAT_Vector3(2668.101659, 1740.366656, 223.251452))
  PatrolArea_SetRadius(node68, 250)
  PatrolArea_SetMinZ(node68, -50)
  PatrolArea_SetMaxZ(node68, 50)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("NOD_PatrolArea", "Brainfire_TriggerArea")
  Node_AddSon(node64, node69)
  PatrolArea_SetPosition(node69, MAT_Vector3(2647.641671, 1739.314797, 105))
  PatrolArea_SetRadius(node69, 480)
  PatrolArea_SetMinZ(node69, -105)
  PatrolArea_SetMaxZ(node69, 350)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("NOD_PatrolArea", "Brainfire_FollowArea")
  Node_AddSon(node64, node70)
  PatrolArea_SetPosition(node70, MAT_Vector3(2655.64753, 1735.837797, 105))
  PatrolArea_SetRadius(node70, 550)
  PatrolArea_SetMinZ(node70, -105)
  PatrolArea_SetMaxZ(node70, 350)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("NOD_PatrolArea", "Canyon_PatrolArea")
  Node_AddSon(node64, node71)
  PatrolArea_SetPosition(node71, MAT_Vector3(474.116256, 1949.710292, 233.181071))
  PatrolArea_SetRadius(node71, 125)
  PatrolArea_SetMinZ(node71, -50)
  PatrolArea_SetMaxZ(node71, 50)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("NOD_PatrolArea", "Canyon_PatrolArea_Ground")
  Node_AddSon(node64, node72)
  PatrolArea_SetPosition(node72, MAT_Vector3(526.07714, 1976.871201, 214.5835))
  PatrolArea_SetRadius(node72, 100)
  PatrolArea_SetMinZ(node72, -50)
  PatrolArea_SetMaxZ(node72, 50)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("NOD_PatrolArea", "Canyon_TriggerArea")
  Node_AddSon(node64, node73)
  PatrolArea_SetPosition(node73, MAT_Vector3(490.574603, 1995.594677, 118))
  PatrolArea_SetRadius(node73, 400)
  PatrolArea_SetMinZ(node73, -105)
  PatrolArea_SetMaxZ(node73, 350)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("NOD_PatrolArea", "Canyon_FollowArea")
  Node_AddSon(node64, node74)
  PatrolArea_SetPosition(node74, MAT_Vector3(493.011126, 1993.404679, 118))
  PatrolArea_SetRadius(node74, 550)
  PatrolArea_SetMinZ(node74, -105)
  PatrolArea_SetMaxZ(node74, 350)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("NOD_Path", "cra_fregatte_3_1_Path")
  Node_AddSon(node64, node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node75, node76)
  Position_SetPosition(node76, MAT_Vector3(2370.020343, 3050.382918, 200))
  Position_SetRadius(node76, 25)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("NOD_Path", "cra_fregatte_4_1_Path")
  Node_AddSon(node64, node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node77, node78)
  Position_SetPosition(node78, MAT_Vector3(2321.601896, 3016.136049, 200))
  Position_SetRadius(node78, 25)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("NOD_Position", "Respawn_Pos1")
  Node_AddSon(node64, node79)
  Position_SetPosition(node79, MAT_Vector3(2740.951789, 3422.018531, 101.353331))
  Position_SetRadius(node79, 5)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("NOD_Position", "Respawn_Pos2")
  Node_AddSon(node64, node80)
  Position_SetPosition(node80, MAT_Vector3(2734.7727, 3451.267686, 101.3533))
  Position_SetRadius(node80, 5)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("NOD_Position", "Respawn_Pos3")
  Node_AddSon(node64, node81)
  Position_SetPosition(node81, MAT_Vector3(2777.203893, 3396.477894, 101.3533))
  Position_SetRadius(node81, 5)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("NOD_Position", "Respawn_Pos4")
  Node_AddSon(node64, node82)
  Position_SetPosition(node82, MAT_Vector3(2779.675613, 3433.965646, 101.3533))
  Position_SetRadius(node82, 5)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("NOD_Position", "Respawn_Pos5")
  Node_AddSon(node64, node83)
  Position_SetPosition(node83, MAT_Vector3(2739.304187, 3382.059527, 101.3533))
  Position_SetRadius(node83, 5)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node62, node84)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node62, node85)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node62, node86)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node86, node87)
  Body_SetCS(node87, MAT_Vector3(2620.792046, 3643.107504, 97.119543), MAT_Vector3(158.610873, 0, 0))
  Node_ParseIniFile(node87, "osd/pla/pla_succubus2.osd")
  Body_SetFriendOrFoeID(node87, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Directory", "TornadoZone_Directory")
  Node_AddSon(node86, node88)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_vessel", "CreoleGirl")
  Node_AddSon(node88, node89)
  Body_SetCS(node89, MAT_Vector3(2063.787045, 3019.869002, 215.856921), MAT_Vector3(-164.67062, 0, 0))
  Node_ParseIniFile(node89, "osd/tz/tz_creolegirl.osd")
  Body_SetFriendOrFoeID(node89, 1)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_vessel", "tz_fregatte_1")
  Node_AddSon(node88, node90)
  Body_SetCS(node90, MAT_Vector3(2267.839, 3159.256, 129.6424), MAT_Vector3(-124.0647, 0, 0))
  Node_ParseIniFile(node90, "osd/tz/tz_fregatte.osd")
  Body_SetFriendOrFoeID(node90, 0)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_vessel", "tz_bomber_1_1")
  Node_AddSon(node88, node91)
  Body_SetCS(node91, MAT_Vector3(2213.59732, 3142.588338, 102.9526), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node91, "osd/tz/tz_bomber.osd")
  Body_SetFriendOrFoeID(node91, 1)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_vessel", "tz_scout2v2_1_1")
  Node_AddSon(node88, node92)
  Body_SetCS(node92, MAT_Vector3(2247.450543, 2983.478187, 115.843679), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node92, "osd/tz/tz_scout2v2.osd")
  Body_SetFriendOrFoeID(node92, 1)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_vessel", "tz_scout2v2_1_2")
  Node_AddSon(node88, node93)
  Body_SetCS(node93, MAT_Vector3(2252.528527, 3032.565361, 115.843679), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node93, "osd/tz/tz_scout2v2.osd")
  Body_SetFriendOrFoeID(node93, 1)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_vehicle", "tz_tank1_1_1")
  Node_AddSon(node88, node94)
  Body_SetCS(node94, MAT_Vector3(2240.679899, 3061.340601, 115.843679), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node94, "osd/tz/tz_tank1.osd")
  Body_SetFriendOrFoeID(node94, 1)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_vehicle", "tz_tank1_1_2")
  Node_AddSon(node88, node95)
  Body_SetCS(node95, MAT_Vector3(2216.982743, 3041.029066, 115.8437), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node95, "osd/tz/tz_tank1.osd")
  Body_SetFriendOrFoeID(node95, 1)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_vehicle", "tz_tank1_1_3")
  Node_AddSon(node88, node96)
  Body_SetCS(node96, MAT_Vector3(2205.134115, 3108.735513, 115.8437), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node96, "osd/tz/tz_tank1.osd")
  Body_SetFriendOrFoeID(node96, 1)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_vehicle", "tz_tank2_1_1")
  Node_AddSon(node88, node97)
  Body_SetCS(node97, MAT_Vector3(2249.969797, 3120.112358, 115.843679), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node97, "osd/tz/tz_tank2.osd")
  Body_SetFriendOrFoeID(node97, 1)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_vessel", "tz_scout2v3_1")
  Node_AddSon(node88, node98)
  Body_SetCS(node98, MAT_Vector3(2117.445478, 2753.058606, 328.482421), MAT_Vector3(-53.378122, 0, 0))
  Node_ParseIniFile(node98, "osd/tz/tz_scout2v3.osd")
  Body_SetFriendOrFoeID(node98, 1)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_vessel", "tz_scout2v3_2")
  Node_AddSon(node88, node99)
  Body_SetCS(node99, MAT_Vector3(2085.361926, 2779.928574, 328.4824), MAT_Vector3(-53.37812, 0, 0))
  Node_ParseIniFile(node99, "osd/tz/tz_scout2v3.osd")
  Body_SetFriendOrFoeID(node99, 1)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_vessel", "tz_scout2v3_3")
  Node_AddSon(node88, node100)
  Body_SetCS(node100, MAT_Vector3(2041.648812, 2790.355999, 328.4824), MAT_Vector3(-53.37812, 0, 0))
  Node_ParseIniFile(node100, "osd/tz/tz_scout2v3.osd")
  Body_SetFriendOrFoeID(node100, 1)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("NOD_Directory", "Crawler_Directory")
  Node_AddSon(node86, node101)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_vessel", "MagmaEater")
  Node_AddSon(node101, node102)
  Body_SetCS(node102, MAT_Vector3(2539.100305, 3380.681605, 256.387842), MAT_Vector3(127.093423, 0, 0))
  Node_ParseIniFile(node102, "osd/cra/cra_magmaeater.osd")
  Body_SetFriendOrFoeID(node102, 4)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_vessel", "cra_bomber_1_1")
  Node_AddSon(node101, node103)
  Body_SetCS(node103, MAT_Vector3(2432.291149, 2915.042608, 123.354571), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node103, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node103, 4)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_vessel", "cra_scout1_1_1")
  Node_AddSon(node101, node104)
  Body_SetCS(node104, MAT_Vector3(2512.594365, 2935.118412, 174.240413), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node104, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node104, 5)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_vessel", "cra_scout1_1_2")
  Node_AddSon(node101, node105)
  Body_SetCS(node105, MAT_Vector3(2403.948838, 2994.164894, 153.886076), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node105, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node105, 4)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_vessel", "cra_scout1_1_3")
  Node_AddSon(node101, node106)
  Body_SetCS(node106, MAT_Vector3(2523.222732, 3017.783487, 219.019953), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node106, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node106, 4)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_vessel", "cra_fregatte_1_1")
  Node_AddSon(node101, node107)
  Body_SetCS(node107, MAT_Vector3(2567.822734, 3039.748889, 197.57397), MAT_Vector3(63.196624, 0, 0))
  Node_ParseIniFile(node107, "osd/cra/cra_fregatte.osd")
  Body_SetFriendOrFoeID(node107, 4)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_vehicle", "cra_tank_1")
  Node_AddSon(node101, node108)
  Body_SetCS(node108, MAT_Vector3(2456.450877, 2800.946972, 420.868619), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node108, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node108, 4)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_vehicle", "cra_tank_2")
  Node_AddSon(node101, node109)
  Body_SetCS(node109, MAT_Vector3(2513.686115, 3137.949636, 423.5956), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node109, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node109, 4)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_vehicle", "cra_tank_3")
  Node_AddSon(node101, node110)
  Body_SetCS(node110, MAT_Vector3(2370.793514, 3116.693266, 423.5956), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node110, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node110, 5)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_vessel", "cra_bomber_2_1")
  Node_AddSon(node101, node111)
  Body_SetCS(node111, MAT_Vector3(2709.809, 3057.935, 145.065905), MAT_Vector3(92.61087, 0, 0))
  Node_ParseIniFile(node111, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node111, 4)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_vessel", "cra_scout2v1_2_1")
  Node_AddSon(node101, node112)
  Body_SetCS(node112, MAT_Vector3(2609.430506, 3070.925352, 123.354613), MAT_Vector3(108.813797, 0, 0))
  Node_ParseIniFile(node112, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node112, 5)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_vessel", "cra_scout2v1_2_2")
  Node_AddSon(node101, node113)
  Body_SetCS(node113, MAT_Vector3(2641.315828, 3015.42174, 108.4281), MAT_Vector3(93.747488, 0, 0))
  Node_ParseIniFile(node113, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node113, 5)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_vessel", "cra_scout2v1_2_3")
  Node_AddSon(node101, node114)
  Body_SetCS(node114, MAT_Vector3(2630.687734, 3128.790552, 140.995038), MAT_Vector3(108.8138, 0, 0))
  Node_ParseIniFile(node114, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node114, 4)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_vessel", "cra_scout2v1_2_4")
  Node_AddSon(node101, node115)
  Body_SetCS(node115, MAT_Vector3(2708.628989, 2965.822955, 130.81787), MAT_Vector3(93.74749, 0, 0))
  Node_ParseIniFile(node115, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node115, 4)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_vessel", "cra_scout1_bf_1")
  Node_AddSon(node101, node116)
  Body_SetCS(node116, MAT_Vector3(2493.298754, 1788.232136, 145.298591), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node116, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node116, 5)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_vessel", "cra_scout2v1_bf_1")
  Node_AddSon(node101, node117)
  Body_SetCS(node117, MAT_Vector3(2511.190181, 1733.684452, 257.445025), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node117, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node117, 4)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_vessel", "cra_scout2v1_bf_2")
  Node_AddSon(node101, node118)
  Body_SetCS(node118, MAT_Vector3(2655.373664, 1589.500336, 257.445), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node118, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node118, 4)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_vehicle", "cra_tank_bf_1")
  Node_AddSon(node101, node119)
  Body_SetCS(node119, MAT_Vector3(2535.765666, 1863.059432, 319.876425), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node119, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node119, 5)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_vehicle", "cra_tank_bf_2")
  Node_AddSon(node101, node120)
  Body_SetCS(node120, MAT_Vector3(2628.96548, 1621.706605, 513.4906), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node120, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node120, 4)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_vessel", "cra_bomber_bf_1")
  Node_AddSon(node101, node121)
  Body_SetCS(node121, MAT_Vector3(2483.958108, 1709.864429, 157.39249), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node121, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node121, 4)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_vessel", "cra_fregatte_3_1")
  Node_AddSon(node101, node122)
  Body_SetCS(node122, MAT_Vector3(2691.556195, 3301.772236, 200), MAT_Vector3(126.39065, 0, 0))
  Node_ParseIniFile(node122, "osd/cra/cra_fregatte.osd")
  Body_SetFriendOrFoeID(node122, 4)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_vessel", "cra_scout1_3_1")
  Node_AddSon(node101, node123)
  Body_SetCS(node123, MAT_Vector3(2623.821398, 3316.58678, 174.2404), MAT_Vector3(136.135595, 0, 0))
  Node_ParseIniFile(node123, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node123, 5)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_vessel", "cra_scout1_3_2")
  Node_AddSon(node101, node124)
  Body_SetCS(node124, MAT_Vector3(2603.223334, 3354.486706, 174.2404), MAT_Vector3(136.1356, 0, 0))
  Node_ParseIniFile(node124, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node124, 4)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_vessel", "cra_scout1_3_3")
  Node_AddSon(node101, node125)
  Body_SetCS(node125, MAT_Vector3(2648.94138, 3365.716076, 174.2404), MAT_Vector3(136.1356, 0, 0))
  Node_ParseIniFile(node125, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node125, 4)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_vessel", "cra_scout1_3_4")
  Node_AddSon(node101, node126)
  Body_SetCS(node126, MAT_Vector3(2632.899463, 3400.205304, 174.2404), MAT_Vector3(136.1356, 0, 0))
  Node_ParseIniFile(node126, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node126, 5)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, -1, 0)
  Body_SetCargoKey(node126, -1, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_vessel", "cra_scout1_3_5")
  Node_AddSon(node101, node127)
  Body_SetCS(node127, MAT_Vector3(2596.805542, 3385.366578, 174.2404), MAT_Vector3(136.1356, 0, 0))
  Node_ParseIniFile(node127, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node127, 5)
  Body_SetNameKey(node127, -1)
  Body_SetCargoKey(node127, -1, 0)
  Body_SetCargoKey(node127, -1, 1)
  Body_SetCargoKey(node127, -1, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_vessel", "cra_bomber_3_1")
  Node_AddSon(node101, node128)
  Body_SetCS(node128, MAT_Vector3(2743.01995, 3251.450504, 128.625385), MAT_Vector3(126.892616, 0, 0))
  Node_ParseIniFile(node128, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node128, 4)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, -1, 0)
  Body_SetCargoKey(node128, -1, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_vessel", "cra_bomber_3_2")
  Node_AddSon(node101, node129)
  Body_SetCS(node129, MAT_Vector3(2586.534329, 3425.323968, 128.6254), MAT_Vector3(126.8926, 0, 0))
  Node_ParseIniFile(node129, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node129, 5)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_vessel", "cra_bomber_3_3")
  Node_AddSon(node101, node130)
  Body_SetCS(node130, MAT_Vector3(2708.245078, 3435.756378, 128.6254), MAT_Vector3(126.8926, 0, 0))
  Node_ParseIniFile(node130, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node130, 4)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_vessel", "cra_bomber_c_1")
  Node_AddSon(node101, node131)
  Body_SetCS(node131, MAT_Vector3(520.273661, 1989.125171, 195.132253), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node131, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node131, 4)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_vessel", "cra_scout1_c_1")
  Node_AddSon(node101, node132)
  Body_SetCS(node132, MAT_Vector3(517.735979, 1968.433301, 195.132253), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node132, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node132, 4)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_vehicle", "cra_tank_c_1")
  Node_AddSon(node101, node133)
  Body_SetCS(node133, MAT_Vector3(538.992708, 2012.127688, 195.132253), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node133, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node133, 5)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, -1, 0)
  Body_SetCargoKey(node133, -1, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_vehicle", "cra_tank_c_2")
  Node_AddSon(node101, node134)
  Body_SetCS(node134, MAT_Vector3(517.15036, 1946.374988, 195.132253), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node134, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node134, 5)
  Body_SetNameKey(node134, -1)
  Body_SetCargoKey(node134, -1, 0)
  Body_SetCargoKey(node134, -1, 1)
  Body_SetCargoKey(node134, -1, 2)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_vessel", "cra_fregatte_4_1")
  Node_AddSon(node101, node135)
  Body_SetCS(node135, MAT_Vector3(2474.264998, 2764.449141, 200), MAT_Vector3(36.496323, 0, 0))
  Node_ParseIniFile(node135, "osd/cra/cra_fregatte.osd")
  Body_SetFriendOrFoeID(node135, 4)
  Body_SetNameKey(node135, -1)
  Body_SetCargoKey(node135, -1, 0)
  Body_SetCargoKey(node135, -1, 1)
  Body_SetCargoKey(node135, -1, 2)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_vessel", "cra_scout1_4_1")
  Node_AddSon(node101, node136)
  Body_SetCS(node136, MAT_Vector3(2524.114847, 2829.790748, 174.2404), MAT_Vector3(36.913342, 0, 0))
  Node_ParseIniFile(node136, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node136, 5)
  Body_SetNameKey(node136, -1)
  Body_SetCargoKey(node136, -1, 0)
  Body_SetCargoKey(node136, -1, 1)
  Body_SetCargoKey(node136, -1, 2)
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_vessel", "cra_scout1_4_2")
  Node_AddSon(node101, node137)
  Body_SetCS(node137, MAT_Vector3(2520.601286, 2800.119641, 174.2404), MAT_Vector3(36.91334, 0, 0))
  Node_ParseIniFile(node137, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node137, 5)
  Body_SetNameKey(node137, -1)
  Body_SetCargoKey(node137, -1, 0)
  Body_SetCargoKey(node137, -1, 1)
  Body_SetCargoKey(node137, -1, 2)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_vessel", "cra_scout1_4_3")
  Node_AddSon(node101, node138)
  Body_SetCS(node138, MAT_Vector3(2439.590668, 2727.6981, 174.2404), MAT_Vector3(36.91334, 0, 0))
  Node_ParseIniFile(node138, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node138, 4)
  Body_SetNameKey(node138, -1)
  Body_SetCargoKey(node138, -1, 0)
  Body_SetCargoKey(node138, -1, 1)
  Body_SetCargoKey(node138, -1, 2)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_vessel", "cra_scout1_4_4")
  Node_AddSon(node101, node139)
  Body_SetCS(node139, MAT_Vector3(2426.121432, 2705.834993, 174.2404), MAT_Vector3(36.91334, 0, 0))
  Node_ParseIniFile(node139, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node139, 4)
  Body_SetNameKey(node139, -1)
  Body_SetCargoKey(node139, -1, 0)
  Body_SetCargoKey(node139, -1, 1)
  Body_SetCargoKey(node139, -1, 2)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_vessel", "cra_scout1_4_5")
  Node_AddSon(node101, node140)
  Body_SetCS(node140, MAT_Vector3(2560.61858, 2814.564908, 174.2404), MAT_Vector3(36.91334, 0, 0))
  Node_ParseIniFile(node140, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node140, 5)
  Body_SetNameKey(node140, -1)
  Body_SetCargoKey(node140, -1, 0)
  Body_SetCargoKey(node140, -1, 1)
  Body_SetCargoKey(node140, -1, 2)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("nod_vessel", "cra_scout1_4_6")
  Node_AddSon(node101, node141)
  Body_SetCS(node141, MAT_Vector3(2581.788454, 2769.645826, 174.2404), MAT_Vector3(36.91334, 0, 0))
  Node_ParseIniFile(node141, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node141, 5)
  Body_SetNameKey(node141, -1)
  Body_SetCargoKey(node141, -1, 0)
  Body_SetCargoKey(node141, -1, 1)
  Body_SetCargoKey(node141, -1, 2)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("nod_vessel", "cra_scout1_4_7")
  Node_AddSon(node101, node142)
  Body_SetCS(node142, MAT_Vector3(2515.657561, 2669.118868, 174.2404), MAT_Vector3(36.91334, 0, 0))
  Node_ParseIniFile(node142, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node142, 5)
  Body_SetNameKey(node142, -1)
  Body_SetCargoKey(node142, -1, 0)
  Body_SetCargoKey(node142, -1, 1)
  Body_SetCargoKey(node142, -1, 2)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("nod_vessel", "cra_scout1_4_8")
  Node_AddSon(node101, node143)
  Body_SetCS(node143, MAT_Vector3(2379.445826, 2740.056597, 174.2404), MAT_Vector3(36.91334, 0, 0))
  Node_ParseIniFile(node143, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node143, 4)
  Body_SetNameKey(node143, -1)
  Body_SetCargoKey(node143, -1, 0)
  Body_SetCargoKey(node143, -1, 1)
  Body_SetCargoKey(node143, -1, 2)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("nod_vessel", "cra_scout1_4_9")
  Node_AddSon(node101, node144)
  Body_SetCS(node144, MAT_Vector3(2372.567078, 2700.891561, 174.2404), MAT_Vector3(36.91334, 0, 0))
  Node_ParseIniFile(node144, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node144, 4)
  Body_SetNameKey(node144, -1)
  Body_SetCargoKey(node144, -1, 0)
  Body_SetCargoKey(node144, -1, 1)
  Body_SetCargoKey(node144, -1, 2)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("nod_vessel", "cra_bomber_4_1")
  Node_AddSon(node101, node145)
  Body_SetCS(node145, MAT_Vector3(2428.800073, 2669.073265, 70.030152), MAT_Vector3(41.689151, 0, 0))
  Node_ParseIniFile(node145, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node145, 4)
  Body_SetNameKey(node145, -1)
  Body_SetCargoKey(node145, -1, 0)
  Body_SetCargoKey(node145, -1, 1)
  Body_SetCargoKey(node145, -1, 2)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("nod_vessel", "cra_scout2v1_5_1")
  Node_AddSon(node101, node146)
  Body_SetCS(node146, MAT_Vector3(2688.39782, 3404.317598, 123.3546), MAT_Vector3(126.744742, 0, 0))
  Node_ParseIniFile(node146, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node146, 5)
  Body_SetNameKey(node146, -1)
  Body_SetCargoKey(node146, -1, 0)
  Body_SetCargoKey(node146, -1, 1)
  Body_SetCargoKey(node146, -1, 2)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("nod_vessel", "cra_scout2v1_5_2")
  Node_AddSon(node101, node147)
  Body_SetCS(node147, MAT_Vector3(2720.411835, 3395.143303, 123.3546), MAT_Vector3(126.7447, 0, 0))
  Node_ParseIniFile(node147, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node147, 4)
  Body_SetNameKey(node147, -1)
  Body_SetCargoKey(node147, -1, 0)
  Body_SetCargoKey(node147, -1, 1)
  Body_SetCargoKey(node147, -1, 2)
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("nod_vessel", "cra_scout2v1_5_3")
  Node_AddSon(node101, node148)
  Body_SetCS(node148, MAT_Vector3(2673.172073, 3439.845245, 123.3546), MAT_Vector3(126.7447, 0, 0))
  Node_ParseIniFile(node148, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node148, 4)
  Body_SetNameKey(node148, -1)
  Body_SetCargoKey(node148, -1, 0)
  Body_SetCargoKey(node148, -1, 1)
  Body_SetCargoKey(node148, -1, 2)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("nod_vessel", "cra_scout2v1_5_4")
  Node_AddSon(node101, node149)
  Body_SetCS(node149, MAT_Vector3(2701.281709, 3370.937172, 123.3546), MAT_Vector3(126.7447, 0, 0))
  Node_ParseIniFile(node149, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node149, 4)
  Body_SetNameKey(node149, -1)
  Body_SetCargoKey(node149, -1, 0)
  Body_SetCargoKey(node149, -1, 1)
  Body_SetCargoKey(node149, -1, 2)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("nod_vessel", "cra_scout2v1_5_5")
  Node_AddSon(node101, node150)
  Body_SetCS(node150, MAT_Vector3(2755.447145, 3374.322322, 123.3546), MAT_Vector3(126.7447, 0, 0))
  Node_ParseIniFile(node150, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node150, 5)
  Body_SetNameKey(node150, -1)
  Body_SetCargoKey(node150, -1, 0)
  Body_SetCargoKey(node150, -1, 1)
  Body_SetCargoKey(node150, -1, 2)
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("nod_vessel", "DeGrange_c5_1")
  Node_AddSon(node86, node151)
  Body_SetCS(node151, MAT_Vector3(2513.760664, 3138.12186, 527.605521), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node151, "osd/wng/wng_degrange_c5.osd")
  Body_SetFriendOrFoeID(node151, 3)
  Body_SetNameKey(node151, -1)
  Body_SetCargoKey(node151, -1, 0)
  Body_SetCargoKey(node151, -1, 1)
  Body_SetCargoKey(node151, -1, 2)
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("nod_vessel", "Harper_c5_1")
  Node_AddSon(node86, node152)
  Body_SetCS(node152, MAT_Vector3(2513.760664, 3138.12186, 527.605521), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node152, "osd/wng/wng_harper_c5.osd")
  Body_SetFriendOrFoeID(node152, 3)
  Body_SetNameKey(node152, -1)
  Body_SetCargoKey(node152, -1, 0)
  Body_SetCargoKey(node152, -1, 1)
  Body_SetCargoKey(node152, -1, 2)
  Node_EnterSimulation(node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("nod_vessel", "Pico_c5_1")
  Node_AddSon(node86, node153)
  Body_SetCS(node153, MAT_Vector3(2513.760664, 3138.12186, 527.605521), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node153, "osd/wng/wng_pico_c5.osd")
  Body_SetFriendOrFoeID(node153, 3)
  Body_SetNameKey(node153, -1)
  Body_SetCargoKey(node153, -1, 0)
  Body_SetCargoKey(node153, -1, 1)
  Body_SetCargoKey(node153, -1, 2)
  Node_EnterSimulation(node153)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("nod_vessel", "Bonham_c5_1")
  Node_AddSon(node86, node154)
  Body_SetCS(node154, MAT_Vector3(2513.760664, 3138.12186, 527.605521), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node154, "osd/wng/wng_bonham_c5.osd")
  Body_SetFriendOrFoeID(node154, 3)
  Body_SetNameKey(node154, -1)
  Body_SetCargoKey(node154, -1, 0)
  Body_SetCargoKey(node154, -1, 1)
  Body_SetCargoKey(node154, -1, 2)
  Node_EnterSimulation(node154)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("nod_vessel", "Chaka_c5_1")
  Node_AddSon(node86, node155)
  Body_SetCS(node155, MAT_Vector3(2513.760664, 3138.12186, 527.605521), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node155, "osd/wng/wng_chaka_c5.osd")
  Body_SetFriendOrFoeID(node155, 3)
  Body_SetNameKey(node155, -1)
  Body_SetCargoKey(node155, -1, 0)
  Body_SetCargoKey(node155, -1, 1)
  Body_SetCargoKey(node155, -1, 2)
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("nod_waypoint", "nav_waypoint_01_1")
  Node_AddSon(node86, node156)
  Body_SetPosition(node156, MAT_Vector3(2313.201715, 3015.248077, 100.7096))
  WayPoint_SetRadius(node156, 100)
  Node_ParseIniFile(node156, "osd/nav/nav_waypoint_01.osd")
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("nod_waypoint", "nav_waypoint_02_1")
  Node_AddSon(node86, node157)
  Body_SetPosition(node157, MAT_Vector3(2558.637533, 1708.513928, 130.686372))
  WayPoint_SetRadius(node157, 100)
  Node_ParseIniFile(node157, "osd/nav/nav_waypoint_02.osd")
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("nod_waypoint", "nav_waypoint_03_1")
  Node_AddSon(node86, node158)
  Body_SetPosition(node158, MAT_Vector3(622.838693, 2088.888098, 129.166401))
  WayPoint_SetRadius(node158, 100)
  Node_ParseIniFile(node158, "osd/nav/nav_waypoint_03.osd")
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node86, node159)
  Node_ParseIniFile(node159, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node159, "map/3H3/Terrain/coral01.tga")
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("nod_fx_plant", "fungus_01_1")
  Node_AddSon(node86, node160)
  Node_ParseIniFile(node160, "osd/fx_plant/fungus_01.osd")
  FX_Plant_SetMap(node160, "map/3H3/Terrain/fungus01.tga")
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("nod_fx_plant", "fungus_02_1")
  Node_AddSon(node86, node161)
  Node_ParseIniFile(node161, "osd/fx_plant/fungus_02.osd")
  FX_Plant_SetMap(node161, "map/3H3/Terrain/fungus02.tga")
  Node_EnterSimulation(node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node86, node162)
  Node_ParseIniFile(node162, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node162, "map/3H3/Terrain/grass01.tga")
  Node_EnterSimulation(node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node86, node163)
  Node_ParseIniFile(node163, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node163, "map/3H3/Terrain/stone01.tga")
  Node_EnterSimulation(node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node164)
  Camera_SetBackPlane(node164, 512)
  Node_EnterSimulation(node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Scenario", "IngameSequences")
  Node_AddSon(node0, node165)
  Node_EnterSimulation(node165)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node165, node166)
  Node_EnterSimulation(node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node165, node167)
  Node_EnterSimulation(node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node167, node168)
  Position_SetPosition(node168, MAT_Vector3(2650.450674, 3763.982465, 116.456897))
  Position_SetRadius(node168, 5)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Position", "LookFrom_2")
  Node_AddSon(node167, node169)
  Position_SetPosition(node169, MAT_Vector3(2476.854343, 3095.575824, 46.581042))
  Position_SetRadius(node169, 5)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Position", "LookAt_1")
  Node_AddSon(node167, node170)
  Position_SetPosition(node170, MAT_Vector3(2181.29227, 3042.28925, 211.864321))
  Position_SetRadius(node170, 5)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Path", "PlayerPath_1")
  Node_AddSon(node167, node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node171, node172)
  Position_SetPosition(node172, MAT_Vector3(2736.658537, 3910.41774, 107.867832))
  Position_SetRadius(node172, 5)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node171, node173)
  Position_SetPosition(node173, MAT_Vector3(2607.937207, 3590.385808, 134.340255))
  Position_SetRadius(node173, 5)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_Position", "LookFrom_3")
  Node_AddSon(node167, node174)
  Position_SetPosition(node174, MAT_Vector3(2389.305535, 1803.816529, 128.975966))
  Position_SetRadius(node174, 5)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_Position", "LookFrom_4")
  Node_AddSon(node167, node175)
  Position_SetPosition(node175, MAT_Vector3(2649.975823, 2013.706987, 128.976))
  Position_SetRadius(node175, 5)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_Position", "LookAt_2")
  Node_AddSon(node167, node176)
  Position_SetPosition(node176, MAT_Vector3(2662.007778, 1796.490365, 366.397447))
  Position_SetRadius(node176, 5)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Path", "PlayerPath_2")
  Node_AddSon(node167, node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node177, node178)
  Position_SetPosition(node178, MAT_Vector3(2393.85043, 2717.20397, 93.812807))
  Position_SetRadius(node178, 5)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node177, node179)
  Position_SetPosition(node179, MAT_Vector3(2499.328512, 2633.220512, 118.341299))
  Position_SetRadius(node179, 5)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node177, node180)
  Position_SetPosition(node180, MAT_Vector3(2502.652342, 2329.523065, 138.319023))
  Position_SetRadius(node180, 5)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_Position", "LookFrom_5")
  Node_AddSon(node167, node181)
  Position_SetPosition(node181, MAT_Vector3(2515.499469, 2629.047255, 128.976))
  Position_SetRadius(node181, 5)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("NOD_Path", "PlayerPath_3")
  Node_AddSon(node167, node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node182, node183)
  Position_SetPosition(node183, MAT_Vector3(2162.465114, 2984.080506, 96.938282))
  Position_SetRadius(node183, 5)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node182, node184)
  Position_SetPosition(node184, MAT_Vector3(1904.120909, 3160.941177, 89.528487))
  Position_SetRadius(node184, 5)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node182, node185)
  Position_SetPosition(node185, MAT_Vector3(1622.506195, 3160.11727, 89.576691))
  Position_SetRadius(node185, 5)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_Position", "LookFrom_6")
  Node_AddSon(node167, node186)
  Position_SetPosition(node186, MAT_Vector3(1995.146834, 3126.787539, 98.572338))
  Position_SetRadius(node186, 5)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_Position", "LookFrom_7")
  Node_AddSon(node167, node187)
  Position_SetPosition(node187, MAT_Vector3(1917.699792, 3180.341921, 98.57234))
  Position_SetRadius(node187, 5)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node165, node188)
  Node_EnterSimulation(node188)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_Director", "Chapter1_Intro_V")
  Node_AddSon(node188, node189)
  Node_EnterSimulation(node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Director", "Chapter1_Intro_A")
  Node_AddSon(node188, node190)
  Node_EnterSimulation(node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Director", "Chapter2_Intro_V")
  Node_AddSon(node188, node191)
  Node_EnterSimulation(node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Director", "Chapter2_Intro_A")
  Node_AddSon(node188, node192)
  Node_EnterSimulation(node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Director", "Chapter3_Intro_V")
  Node_AddSon(node188, node193)
  Node_EnterSimulation(node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Director", "Chapter3_Intro_A")
  Node_AddSon(node188, node194)
  Node_EnterSimulation(node194)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Director", "Chapter3_Extro")
  Node_AddSon(node188, node195)
  Node_EnterSimulation(node195)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_Director", "Chapter4_MagmaEater")
  Node_AddSon(node188, node196)
  Node_EnterSimulation(node196)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node165, node197)
  Node_EnterSimulation(node197)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node165, node198)
  Node_EnterSimulation(node198)
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
SetEnemyMatrixElement(0, 2, N)
SetEnemyMatrixElement(1, 2, F)
SetEnemyMatrixElement(2, 2, F)
SetEnemyMatrixElement(3, 2, F)
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
SetEnemyMatrixElement(0, 3, N)
SetEnemyMatrixElement(1, 3, F)
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
SetEnemyMatrixElement(0, 4, E)
SetEnemyMatrixElement(1, 4, E)
SetEnemyMatrixElement(2, 4, E)
SetEnemyMatrixElement(3, 4, E)
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
SetEnemyMatrixElement(2, 5, E)
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
                                                                                                        if not (o1881.Value ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
                                                                                                                                                if not (True ~= True) then
                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                          if not (True ~= True) then
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
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
end, ChangeTo1 = function()
  Game_MissionEnd(GetGameNode(), 1)
  Script_Log("RC1OK_092501_1818")
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
                                                                                                          if not (o1955.Value == True) then
                                                                                                            if not (False == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
                                                                                                                      if not (False == True) then
                                                                                                                        if not (False == True) then
                                                                                                                          if not (False == True) then
                                                                                                                            if not (False == True) then
                                                                                                                              if not (False == True) then
                                                                                                                                if not (False == True) then
                                                                                                                                  if not (False == True) then
                                                                                                                                    if not (False == True) then
                                                                                                                                      if not (False == True) then
                                                                                                                                        if not (False == True) then
                                                                                                                                          if not (False == True) then
                                                                                                                                            if not (False == True) then
                                                                                                                                              if not (False == True) then
                                                                                                                                                if not (False == True) then
                                                                                                                                                  if not (False == True) then
                                                                                                                                                    if not (False == True) then
                                                                                                                                                      if not (False == True) then
                                                                                                                                                        if not (False == True) then
                                                                                                                                                          if not (False == True) then
                                                                                                                                                            if not (False == True) then
                                                                                                                                                              if not (False == True) then
                                                                                                                                                                if not (False == True) then
                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                        if not (False == True) then
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
end, ReCalculate = function()
  o26.SetStateValue(o26.GetCalculated())
end, StartCalculate = function()
  o26["Value"] = o26.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "track3")
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
                                                                                                      if not (o1850.Value == True) then
                                                                                                        if not (False == True) then
                                                                                                          if not (False == True) then
                                                                                                            if not (False == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
                                                                                                                      if not (False == True) then
                                                                                                                        if not (False == True) then
                                                                                                                          if not (False == True) then
                                                                                                                            if not (False == True) then
                                                                                                                              if not (False == True) then
                                                                                                                                if not (False == True) then
                                                                                                                                  if not (False == True) then
                                                                                                                                    if not (False == True) then
                                                                                                                                      if not (False == True) then
                                                                                                                                        if not (False == True) then
                                                                                                                                          if not (False == True) then
                                                                                                                                            if not (False == True) then
                                                                                                                                              if not (False == True) then
                                                                                                                                                if not (False == True) then
                                                                                                                                                  if not (False == True) then
                                                                                                                                                    if not (False == True) then
                                                                                                                                                      if not (False == True) then
                                                                                                                                                        if not (False == True) then
                                                                                                                                                          if not (False == True) then
                                                                                                                                                            if not (False == True) then
                                                                                                                                                              if not (False == True) then
                                                                                                                                                                if not (False == True) then
                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                        if not (False == True) then
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
end, ReCalculate = function()
  o27.SetStateValue(o27.GetCalculated())
end, StartCalculate = function()
  o27["Value"] = o27.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "track3")
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
S_o64 = { [nil] = {}, Start = function(L0)

end }
S_o98 = { [nil] = {}, Start = function(L0)

end }
S_o132 = { [nil] = {}, Start = function(L0)

end }
S_o166 = { [nil] = {}, Start = function(L0)

end }
S_o200 = { [nil] = {}, Start = function(L0)

end }
S_o234 = { [nil] = {}, Start = function(L0)

end }
S_o268 = { [nil] = {}, Start = function(L0)

end }
S_o302 = { [nil] = {}, Start = function(L0)

end }
S_o336 = { [nil] = {}, Start = function(L0)

end }
S_o370 = { [nil] = {}, Start = function(L0)

end }
S_o404 = { [nil] = {}, Start = function(L0)

end }
S_o438 = { [nil] = {}, Start = function(L0)

end }
S_o472 = { [nil] = {}, Start = function(L0)

end }
S_o506 = { [nil] = {}, Start = function(L0)

end }
S_o540 = { [nil] = {}, Start = function(L0)

end }
S_o574 = { [nil] = {}, Start = function(L0)

end }
S_o608 = { [nil] = {}, Start = function(L0)

end }
S_o642 = { [nil] = {}, Start = function(L0)

end }
S_o676 = { [nil] = {}, Start = function(L0)

end }
S_o710 = { [nil] = {}, Start = function(L0)

end }
S_o744 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o744, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o744, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o744, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o744, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 375, "E", "", "", "", "Code5")
  else
    CallFunction(o744, "Code5")
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
S_o782 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o782, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o782, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o782, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o782, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 375, "E", "", "", "", "Code5")
  else
    CallFunction(o782, "Code5")
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
S_o820 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o820, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o820, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o820, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o820, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 375, "E", "", "", "", "Code5")
  else
    CallFunction(o820, "Code5")
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
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o858, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 375, "E", "", "", "", "Code5")
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
S_o896 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o896, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o896, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o896, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o896, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 375, "E", "", "", "", "Code5")
  else
    CallFunction(o896, "Code5")
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
S_o934 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o934, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o934, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o934, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o934, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 375, "E", "", "", "", "Code5")
  else
    CallFunction(o934, "Code5")
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
S_o972 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o972, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o972, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o972, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o972, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 375, "E", "", "", "", "Code5")
  else
    CallFunction(o972, "Code5")
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
S_o1010 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1010, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1010, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1010, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1010, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 375, "E", "", "", "", "Code5")
  else
    CallFunction(o1010, "Code5")
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
S_o1048 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1048, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1048, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1048, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1048, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 375, "E", "", "", "", "Code5")
  else
    CallFunction(o1048, "Code5")
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
S_o1086 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1086, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1086, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1086, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1086, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 375, "E", "", "", "", "Code5")
  else
    CallFunction(o1086, "Code5")
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
S_o1124 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1124, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1124, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1124, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1124, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 375, "E", "", "", "", "Code5")
  else
    CallFunction(o1124, "Code5")
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
S_o1162 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1162, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1162, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1162, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1162, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 375, "E", "", "", "", "Code5")
  else
    CallFunction(o1162, "Code5")
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
S_o1200 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1200, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1200, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1200, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1200, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 375, "E", "", "", "", "Code5")
  else
    CallFunction(o1200, "Code5")
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
S_o1238 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1238, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1238, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1238, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1238, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 375, "E", "", "", "", "Code5")
  else
    CallFunction(o1238, "Code5")
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
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1276, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 375, "E", "", "", "", "Code5")
  else
    CallFunction(o1276, "Code5")
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
S_o1314 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1314, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1314, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1314, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1314, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 375, "E", "", "", "", "Code5")
  else
    CallFunction(o1314, "Code5")
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
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1352, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 375, "E", "", "", "", "Code5")
  else
    CallFunction(o1352, "Code5")
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
S_o1390 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1390, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1390, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1390, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1390, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 375, "E", "", "", "", "Code5")
  else
    CallFunction(o1390, "Code5")
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
S_o1428 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1428, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1428, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1428, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1428, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 375, "E", "", "", "", "Code5")
  else
    CallFunction(o1428, "Code5")
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
S_o1466 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1466, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1466, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1466, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1466, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 375, "E", "", "", "", "Code5")
  else
    CallFunction(o1466, "Code5")
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
S_o1504 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1504, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1504, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1504, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1504, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 375, "E", "", "", "", "Code5")
  else
    CallFunction(o1504, "Code5")
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
S_o1542 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1542, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1542, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1542, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 70)
  CallFunction(o1542, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 375, "E", "", "", "", "Code5")
  else
    CallFunction(o1542, "Code5")
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
S_o1580 = { [nil] = {}, Start = function(L0)

end }
S_o1614 = { [nil] = {}, Start = function(L0)

end }
S_o1648 = { [nil] = {}, Start = function(L0)

end }
S_o1682 = { [nil] = {}, Start = function(L0)

end }
S_o1716 = { [nil] = {}, Start = function(L0)

end }
S_o1750 = { [nil] = {}, Start = function(L0)

end }
S_o1784 = { [nil] = {}, Start = function(L0)

end }
S_o1818 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1818, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1818, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1818, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0.59)
  CallFunction(o1818, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o1821.SetStateValue(L1)
end, SetStateValue_KineticShield50 = function(L0, L1)
  o1823.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1821 = { [nil] = {}, Start = function()
  o1821["Value"] = False
  o1850.StartCalculate()
  o1869.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1821.Value == L0) then
    o1821["Value"] = L0
    o1850.ReCalculate()
    o1869.ReCalculate()
  end
end }
o1823 = { [nil] = {}, Start = function()
  o1823["Value"] = False
  o1868.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1823.Value == L0) then
    o1823["Value"] = L0
    o1868.ReCalculate()
  end
end }
o1850 = { [nil] = {}, GetCalculated = function()
  if not (o1821.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1850.SetStateValue(o1850.GetCalculated())
end, StartCalculate = function()
  o1850["Value"] = o1850.GetCalculated()
  o27.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1850.Value == L0) then
    o1850["Value"] = L0
    o27.ReCalculate()
  end
end }
S_o1853 = { [nil] = {}, Start = function(L0)

end }
S_o1854 = { [nil] = {}, Start = function(L0)

end }
S_o1855 = { [nil] = {}, Start = function(L0)

end }
S_o1856 = { [nil] = {}, Start = function(L0)

end }
S_o1857 = { [nil] = {}, Start = function(L0)

end }
S_o1858 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_plasmagatlin", 1)
  Body_AddItem(L0.Node, "gun_sizzler", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_energy", 3000)
  Body_AddItem(L0.Node, "torpedo_tigershark", 5)
  Body_AddItem(L0.Node, "torpedo_maneater", 7)
  Body_AddItem(L0.Node, "device_generator2", 1)
  Body_AddItem(L0.Node, "device_repair2", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 6)
  Body_AddItem(L0.Node, "device_booster", 999)
  CallFunction(o1858, "Code10")
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
o1863 = { [nil] = {}, GetCalculated = function()
  if not (o1916.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1863.SetStateValue(o1863.GetCalculated())
end, StartCalculate = function()
  o1863["Value"] = o1863.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1858.Node, o1858.Node, 1161)
end, SetStateValue = function(L0)
  if not (o1863.Value == L0) then
    o1863["Value"] = L0
    if not (L0 ~= 1) then
      o1863.ChangeTo1()
    end
  end
end }
o1864 = { [nil] = {}, GetCalculated = function()
  if not (o2515.Value ~= True) then
    if not (o2563.Value ~= True) then
      if not (o2611.Value ~= True) then
        if not (o2659.Value ~= True) then
          if not (o2706.Value ~= True) then
            if not (o2747.Value ~= True) then
              if not (o2786.Value ~= True) then
                if not (o2825.Value ~= True) then
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
end, ReCalculate = function()
  o1864.SetStateValue(o1864.GetCalculated())
end, StartCalculate = function()
  o1864["Value"] = o1864.GetCalculated()
  o1866.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1864.Value == L0) then
    o1864["Value"] = L0
    o1866.ReCalculate()
  end
end }
o1865 = { [nil] = {}, GetCalculated = function()
  if not (o2871.Value ~= True) then
    if not (o2919.Value ~= True) then
      if not (o2967.Value ~= True) then
        if not (o3015.Value ~= True) then
          if not (o3063.Value ~= True) then
            return 1
          else
            return 0
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o1865.SetStateValue(o1865.GetCalculated())
end, StartCalculate = function()
  o1865["Value"] = o1865.GetCalculated()
  o1866.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1865.Value == L0) then
    o1865["Value"] = L0
    o1866.ReCalculate()
  end
end }
o1866 = { [nil] = {}, GetCalculated = function()
  if not (o1864.Value ~= True) then
    if not (o1865.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1866.SetStateValue(o1866.GetCalculated())
end, StartCalculate = function()
  o1866["Value"] = o1866.GetCalculated()
  o3096.StartCalculate()
  o3144.StartCalculate()
  o3192.StartCalculate()
  o3240.StartCalculate()
  o3279.StartCalculate()
  o3318.StartCalculate()
  o5034.StartCalculate()
  o5042.StartCalculate()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "atmo")
end, SetStateValue = function(L0)
  if not (o1866.Value == L0) then
    o1866["Value"] = L0
    o3096.ReCalculate()
    o3144.ReCalculate()
    o3192.ReCalculate()
    o3240.ReCalculate()
    o3279.ReCalculate()
    o3318.ReCalculate()
    o5034.ReCalculate()
    o5042.ReCalculate()
    if not (L0 ~= 1) then
      o1866.ChangeTo1()
    end
  end
end }
o1867 = { [nil] = {}, Start = function()
  o1867["Value"] = False
  o1911.StartCalculate()
  o2308.StartCalculate()
  o2356.StartCalculate()
  o2404.StartCalculate()
  o3366.StartCalculate()
  o3414.StartCalculate()
  o3462.StartCalculate()
  o3510.StartCalculate()
  o3558.StartCalculate()
  o3606.StartCalculate()
  o3654.StartCalculate()
  o3702.StartCalculate()
  o3750.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1867.Value == L0) then
    o1867["Value"] = L0
    o1911.ReCalculate()
    o2308.ReCalculate()
    o2356.ReCalculate()
    o2404.ReCalculate()
    o3366.ReCalculate()
    o3414.ReCalculate()
    o3462.ReCalculate()
    o3510.ReCalculate()
    o3558.ReCalculate()
    o3606.ReCalculate()
    o3654.ReCalculate()
    o3702.ReCalculate()
    o3750.ReCalculate()
  end
end }
o1868 = { [nil] = {}, GetCalculated = function()
  if not (o1823.Value ~= True) then
    if not (o5040.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1868.SetStateValue(o1868.GetCalculated())
end, StartCalculate = function()
  o1868["Value"] = o1868.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1858.Node, o1858.Node, 1159)
end, SetStateValue = function(L0)
  if not (o1868.Value == L0) then
    o1868["Value"] = L0
    if not (L0 ~= 1) then
      o1868.ChangeTo1()
    end
  end
end }
o1869 = { [nil] = {}, GetCalculated = function()
  if not (o1821.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1869.SetStateValue(o1869.GetCalculated())
end, StartCalculate = function()
  o1869["Value"] = o1869.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1858.Node, o1858.Node, 1160)
end, SetStateValue = function(L0)
  if not (o1869.Value == L0) then
    o1869["Value"] = L0
    if not (L0 ~= 1) then
      o1869.ChangeTo1()
    end
  end
end }
o1870 = { [nil] = {}, GetCalculated = function()
  if not (o3111.Value ~= True) then
    if not (o3159.Value ~= True) then
      if not (o3207.Value ~= True) then
        if not (o3248.Value ~= True) then
          if not (o3287.Value ~= True) then
            if not (o3333.Value ~= True) then
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
  o1870.SetStateValue(o1870.GetCalculated())
end, StartCalculate = function()
  o1870["Value"] = o1870.GetCalculated()
  o1872.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1858.Node, o1858.Node, 245)
  CallFunction(o4794, "Code10")
  CallFunction(o4743, "Code10")
  CallFunction(o4845, "Code10")
  CallFunction(o4896, "Code10")
  CallFunction(o4947, "Code10")
  Script_Log("brainfire_crawler_down")
  Game_SetWayPoint(GetGameNode(), o4998.Node)
  SED_SetTaskTextKey(1314, -1, -1)
end, SetStateValue = function(L0)
  if not (o1870.Value == L0) then
    o1870["Value"] = L0
    o1872.ReCalculate()
    if not (L0 ~= 1) then
      o1870.ChangeTo1()
    end
  end
end }
o1871 = { [nil] = {}, GetCalculated = function()
  if not (o3381.Value ~= True) then
    if not (o3429.Value ~= True) then
      if not (o3477.Value ~= True) then
        if not (o3525.Value ~= True) then
          if not (o3573.Value ~= True) then
            if not (o3669.Value ~= True) then
              if not (o3621.Value ~= True) then
                if not (o3717.Value ~= True) then
                  if not (o3765.Value ~= True) then
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
  o1871.SetStateValue(o1871.GetCalculated())
end, StartCalculate = function()
  o1871["Value"] = o1871.GetCalculated()
  o1872.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("all_3rdwave_crawler_down")
end, SetStateValue = function(L0)
  if not (o1871.Value == L0) then
    o1871["Value"] = L0
    o1872.ReCalculate()
    if not (L0 ~= 1) then
      o1871.ChangeTo1()
    end
  end
end }
o1872 = { [nil] = {}, GetCalculated = function()
  if not (o1870.Value ~= True) then
    if not (o1871.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1872.SetStateValue(o1872.GetCalculated())
end, StartCalculate = function()
  o1872["Value"] = o1872.GetCalculated()
  o5046.StartCalculate()
  o5050.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("chapter2_completed")
  Game_PlayMusic(GetGameNode(), "atmo")
end, SetStateValue = function(L0)
  if not (o1872.Value == L0) then
    o1872["Value"] = L0
    o5046.ReCalculate()
    o5050.ReCalculate()
    if not (L0 ~= 1) then
      o1872.ChangeTo1()
    end
  end
end }
o1873 = { [nil] = {}, Start = function()
  o1873["Value"] = False
  o3798.StartCalculate()
  o3846.StartCalculate()
  o3894.StartCalculate()
  o3933.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1873.Value == L0) then
    o1873["Value"] = L0
    o3798.ReCalculate()
    o3846.ReCalculate()
    o3894.ReCalculate()
    o3933.ReCalculate()
  end
end }
o1874 = { [nil] = {}, GetCalculated = function()
  if not (o3813.Value ~= True) then
    if not (o3861.Value ~= True) then
      if not (o3902.Value ~= True) then
        if not (o3941.Value ~= True) then
          return 1
        else
          return 0
        end
      end
    end
  end
end, ReCalculate = function()
  o1874.SetStateValue(o1874.GetCalculated())
end, StartCalculate = function()
  o1874["Value"] = o1874.GetCalculated()
  o1875.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("canyon crawler down")
  SED_SetTaskTextKey(1316, -1, -1)
end, SetStateValue = function(L0)
  if not (o1874.Value == L0) then
    o1874["Value"] = L0
    o1875.ReCalculate()
    if not (L0 ~= 1) then
      o1874.ChangeTo1()
    end
  end
end }
o1875 = { [nil] = {}, GetCalculated = function()
  if not (o1874.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1875.SetStateValue(o1875.GetCalculated())
end, StartCalculate = function()
  o1875["Value"] = o1875.GetCalculated()
  o1912.StartCalculate()
  o3972.StartCalculate()
  o4020.StartCalculate()
  o4068.StartCalculate()
  o4116.StartCalculate()
  o4164.StartCalculate()
  o4212.StartCalculate()
  o4260.StartCalculate()
  o4308.StartCalculate()
  o4356.StartCalculate()
  o4404.StartCalculate()
  o4452.StartCalculate()
  o5054.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("chapter3_completed")
end, SetStateValue = function(L0)
  if not (o1875.Value == L0) then
    o1875["Value"] = L0
    o1912.ReCalculate()
    o3972.ReCalculate()
    o4020.ReCalculate()
    o4068.ReCalculate()
    o4116.ReCalculate()
    o4164.ReCalculate()
    o4212.ReCalculate()
    o4260.ReCalculate()
    o4308.ReCalculate()
    o4356.ReCalculate()
    o4404.ReCalculate()
    o4452.ReCalculate()
    o5054.ReCalculate()
    if not (L0 ~= 1) then
      o1875.ChangeTo1()
    end
  end
end }
o1876 = { [nil] = {}, GetCalculated = function()
  if not (o3987.Value ~= True) then
    if not (o4035.Value ~= True) then
      if not (o4083.Value ~= True) then
        if not (o4131.Value ~= True) then
          if not (o4179.Value ~= True) then
            if not (o4227.Value ~= True) then
              if not (o4467.Value ~= True) then
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
  o1876.SetStateValue(o1876.GetCalculated())
end, StartCalculate = function()
  o1876["Value"] = o1876.GetCalculated()
  o2451.StartCalculate()
  o4501.StartCalculate()
  o4550.StartCalculate()
  o4599.StartCalculate()
  o4648.StartCalculate()
  o4697.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("fourth crawler wave down")
end, SetStateValue = function(L0)
  if not (o1876.Value == L0) then
    o1876["Value"] = L0
    o2451.ReCalculate()
    o4501.ReCalculate()
    o4550.ReCalculate()
    o4599.ReCalculate()
    o4648.ReCalculate()
    o4697.ReCalculate()
    if not (L0 ~= 1) then
      o1876.ChangeTo1()
    end
  end
end }
o1877 = { [nil] = {}, GetCalculated = function()
  if not (o2454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1877.SetStateValue(o1877.GetCalculated())
end, StartCalculate = function()
  o1877["Value"] = o1877.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o2450.Node, o1858.Node, 248)
  SED_SetTaskTextKey(1317, -1, -1)
end, SetStateValue = function(L0)
  if not (o1877.Value == L0) then
    DelayedFunction(10, o1877, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1877.Value == L0) then
    o1877["Value"] = L0
    if not (L0 ~= 1) then
      o1877.ChangeTo1()
    end
  end
end }
o1878 = { [nil] = {}, GetCalculated = function()
  if not (o2460.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1878.SetStateValue(o1878.GetCalculated())
end, StartCalculate = function()
  o1878["Value"] = o1878.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o2450.Node, o1858.Node, 1162)
end, SetStateValue = function(L0)
  if not (o1878.Value == L0) then
    o1878["Value"] = L0
    if not (L0 ~= 1) then
      o1878.ChangeTo1()
    end
  end
end }
o1879 = { [nil] = {}, GetCalculated = function()
  if not (o4516.Value == True) then
    if not (o4565.Value == True) then
      if not (o4614.Value == True) then
        if not (o4663.Value == True) then
          if not (o4712.Value ~= True) then
            return 1
          else
            return 0
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o1879.SetStateValue(o1879.GetCalculated())
end, StartCalculate = function()
  o1879["Value"] = o1879.GetCalculated()
  o1880.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("fifth crawler wave down")
end, SetStateValue = function(L0)
  if not (o1879.Value == L0) then
    o1879["Value"] = L0
    o1880.ReCalculate()
    if not (L0 ~= 1) then
      o1879.ChangeTo1()
    end
  end
end }
o1880 = { [nil] = {}, GetCalculated = function()
  if not (o2456.Value ~= True) then
    if not (o1879.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1880.SetStateValue(o1880.GetCalculated())
end, StartCalculate = function()
  o1880["Value"] = o1880.GetCalculated()
  o1881.StartCalculate()
  o4500.StartCalculate()
  o4549.StartCalculate()
  o4598.StartCalculate()
  o4647.StartCalculate()
  o4696.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1909.Node, o1858.Node, 1163)
end, SetStateValue = function(L0)
  if not (o1880.Value == L0) then
    DelayedFunction(20, o1880, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1880.Value == L0) then
    o1880["Value"] = L0
    o1881.ReCalculate()
    o4500.ReCalculate()
    o4549.ReCalculate()
    o4598.ReCalculate()
    o4647.ReCalculate()
    o4696.ReCalculate()
    if not (L0 ~= 1) then
      o1880.ChangeTo1()
    end
  end
end }
o1881 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1881.SetStateValue(o1881.GetCalculated())
end, StartCalculate = function()
  o1881["Value"] = o1881.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1881.Value == L0) then
    o1881["Value"] = L0
    o2.ReCalculate()
  end
end }
S_o1909 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1909, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1909, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1909, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o1909, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1909, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1909, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetKineticShield(L0.Node, 0, 0.715641)
  CallFunction(o1909, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code8")
  else
    CallFunction(o1909, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1909, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Body_SetKineticShield(L0.Node, 0, 0.584153)
  CallFunction(o1909, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code11")
  else
    CallFunction(o1909, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1909, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
end, SetStateValue_Destroyed = function(L0, L1)
  o1916.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1911.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o1912.Value ~= True) then
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
o1911 = { [nil] = {}, GetCalculated = function()
  if not (o1867.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1911.SetStateValue(o1911.GetCalculated())
end, StartCalculate = function()
  o1911["Value"] = o1911.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1911.Value == L0) then
    o1911["Value"] = L0
    CallFunction(o1909, "ProcesseStateChange")
  end
end }
o1912 = { [nil] = {}, GetCalculated = function()
  if not (o1875.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1912.SetStateValue(o1912.GetCalculated())
end, StartCalculate = function()
  o1912["Value"] = o1912.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1912.Value == L0) then
    o1912["Value"] = L0
    CallFunction(o1909, "ProcesseStateChange")
  end
end }
o1916 = { [nil] = {}, Start = function()
  o1916["Value"] = False
  o1863.StartCalculate()
  o1955.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1916.Value == L0) then
    o1916["Value"] = L0
    o1863.ReCalculate()
    o1955.ReCalculate()
  end
end }
o1955 = { [nil] = {}, GetCalculated = function()
  if not (o1916.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1955.SetStateValue(o1955.GetCalculated())
end, StartCalculate = function()
  o1955["Value"] = o1955.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1955.Value == L0) then
    o1955["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o1959 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1959, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1959, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1959, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o1959, "Code4")
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
S_o2006 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2006, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2006, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2006, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2006, "Code4")
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
S_o2054 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2054, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2054, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2054, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2054, "Code4")
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
S_o2102 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2102, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2102, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2102, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2102, "Code4")
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
S_o2150 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2150, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2150, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2150, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "", "", "", "", 0, "Code4")
  else
    CallFunction(o2150, "Code4")
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
S_o2189 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2189, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2189, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2189, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "", "", "", "", 0, "Code4")
  else
    CallFunction(o2189, "Code4")
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
S_o2228 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2228, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2228, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2228, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "", "", "", "", 0, "Code4")
  else
    CallFunction(o2228, "Code4")
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
S_o2267 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2267, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2267, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2267, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "", "", "", "", 0, "Code4")
  else
    CallFunction(o2267, "Code4")
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
S_o2306 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2306, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2306, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2306, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2306, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2308.Value ~= True) then
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
o2308 = { [nil] = {}, GetCalculated = function()
  if not (o1867.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2308.SetStateValue(o2308.GetCalculated())
end, StartCalculate = function()
  o2308["Value"] = o2308.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2308.Value == L0) then
    o2308["Value"] = L0
    CallFunction(o2306, "ProcesseStateChange")
  end
end }
S_o2354 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2354, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2354, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2354, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2354, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2356.Value ~= True) then
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
o2356 = { [nil] = {}, GetCalculated = function()
  if not (o1867.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2356.SetStateValue(o2356.GetCalculated())
end, StartCalculate = function()
  o2356["Value"] = o2356.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2356.Value == L0) then
    o2356["Value"] = L0
    CallFunction(o2354, "ProcesseStateChange")
  end
end }
S_o2402 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2402, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2402, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2402, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2402, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2404.Value ~= True) then
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
o2404 = { [nil] = {}, GetCalculated = function()
  if not (o1867.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2404.SetStateValue(o2404.GetCalculated())
end, StartCalculate = function()
  o2404["Value"] = o2404.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2404.Value == L0) then
    o2404["Value"] = L0
    CallFunction(o2402, "ProcesseStateChange")
  end
end }
S_o2450 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2450, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2450, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2450, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "CreoleGirl", "", "", "")
  CallFunction(o2450, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2450, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2450, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o2450, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Born = function(L0, L1)
  o2454.SetStateValue(L1)
end, SetStateValue_DipoledOut = function(L0, L1)
  o2456.SetStateValue(L1)
end, SetStateValue_KineticShield75 = function(L0, L1)
  o2460.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2451.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2452.Value ~= True) then
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
o2451 = { [nil] = {}, GetCalculated = function()
  if not (o1876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2451.SetStateValue(o2451.GetCalculated())
end, StartCalculate = function()
  o2451["Value"] = o2451.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2451.Value == L0) then
    DelayedFunction(4.564856, o2451, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2451.Value == L0) then
    o2451["Value"] = L0
    CallFunction(o2450, "ProcesseStateChange")
  end
end }
o2452 = { [nil] = {}, GetCalculated = function()
  if not (o2460.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2452.SetStateValue(o2452.GetCalculated())
end, StartCalculate = function()
  o2452["Value"] = o2452.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2452.Value == L0) then
    DelayedFunction(2, o2452, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2452.Value == L0) then
    o2452["Value"] = L0
    CallFunction(o2450, "ProcesseStateChange")
  end
end }
o2454 = { [nil] = {}, Start = function()
  o2454["Value"] = False
  o1877.StartCalculate()
  o5057.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2454.Value == L0) then
    o2454["Value"] = L0
    o1877.ReCalculate()
    o5057.ReCalculate()
  end
end }
o2456 = { [nil] = {}, Start = function()
  o2456["Value"] = False
  o1880.StartCalculate()
  o4499.StartCalculate()
  o4548.StartCalculate()
  o4597.StartCalculate()
  o4646.StartCalculate()
  o4695.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2456.Value == L0) then
    o2456["Value"] = L0
    o1880.ReCalculate()
    o4499.ReCalculate()
    o4548.ReCalculate()
    o4597.ReCalculate()
    o4646.ReCalculate()
    o4695.ReCalculate()
  end
end }
o2460 = { [nil] = {}, Start = function()
  o2460["Value"] = False
  o1878.StartCalculate()
  o2452.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2460.Value == L0) then
    o2460["Value"] = L0
    o1878.ReCalculate()
    o2452.ReCalculate()
  end
end }
S_o2498 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2498, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2498, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2498, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2498, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Born = function(L0, L1)
  o2502.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o2515.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2502 = { [nil] = {}, Start = function()
  o2502["Value"] = False
  o2856.StartCalculate()
  o2904.StartCalculate()
  o2952.StartCalculate()
  o3000.StartCalculate()
  o3048.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2502.Value == L0) then
    o2502["Value"] = L0
    o2856.ReCalculate()
    o2904.ReCalculate()
    o2952.ReCalculate()
    o3000.ReCalculate()
    o3048.ReCalculate()
  end
end }
o2515 = { [nil] = {}, Start = function()
  o2515["Value"] = False
  o1864.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2515.Value == L0) then
    o2515["Value"] = L0
    o1864.ReCalculate()
  end
end }
S_o2546 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2546, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2546, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2546, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2546, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o2563.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2563 = { [nil] = {}, Start = function()
  o2563["Value"] = False
  o1864.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2563.Value == L0) then
    o2563["Value"] = L0
    o1864.ReCalculate()
  end
end }
S_o2594 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2594, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2594, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2594, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2594, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o2611.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2611 = { [nil] = {}, Start = function()
  o2611["Value"] = False
  o1864.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2611.Value == L0) then
    o2611["Value"] = L0
    o1864.ReCalculate()
  end
end }
S_o2642 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2642, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2642, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2642, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2642, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o2659.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2659 = { [nil] = {}, Start = function()
  o2659["Value"] = False
  o1864.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2659.Value == L0) then
    o2659["Value"] = L0
    o1864.ReCalculate()
  end
end }
S_o2690 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2690, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2690, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2690, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o2690, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o2706.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2706 = { [nil] = {}, Start = function()
  o2706["Value"] = False
  o1864.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2706.Value == L0) then
    o2706["Value"] = L0
    o1864.ReCalculate()
  end
end }
S_o2737 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2737, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2737, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2737, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 0, "Code4")
  else
    CallFunction(o2737, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2747.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2747 = { [nil] = {}, Start = function()
  o2747["Value"] = False
  o1864.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2747.Value == L0) then
    o2747["Value"] = L0
    o1864.ReCalculate()
  end
end }
S_o2776 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2776, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2776, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2776, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 0, "Code4")
  else
    CallFunction(o2776, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2786.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2786 = { [nil] = {}, Start = function()
  o2786["Value"] = False
  o1864.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2786.Value == L0) then
    o2786["Value"] = L0
    o1864.ReCalculate()
  end
end }
S_o2815 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2815, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2815, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2815, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 0, "Code4")
  else
    CallFunction(o2815, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2825.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2825 = { [nil] = {}, Start = function()
  o2825["Value"] = False
  o1864.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2825.Value == L0) then
    o2825["Value"] = L0
    o1864.ReCalculate()
  end
end }
S_o2854 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2854, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2854, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2854, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2854, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o2871.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2856.Value ~= True) then
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
o2856 = { [nil] = {}, GetCalculated = function()
  if not (o2502.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2856.SetStateValue(o2856.GetCalculated())
end, StartCalculate = function()
  o2856["Value"] = o2856.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2856.Value == L0) then
    DelayedFunction(50, o2856, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2856.Value == L0) then
    o2856["Value"] = L0
    CallFunction(o2854, "ProcesseStateChange")
  end
end }
o2871 = { [nil] = {}, Start = function()
  o2871["Value"] = False
  o1865.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2871.Value == L0) then
    o2871["Value"] = L0
    o1865.ReCalculate()
  end
end }
S_o2902 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2902, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2902, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2902, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2902, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o2919.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2904.Value ~= True) then
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
o2904 = { [nil] = {}, GetCalculated = function()
  if not (o2502.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2904.SetStateValue(o2904.GetCalculated())
end, StartCalculate = function()
  o2904["Value"] = o2904.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2904.Value == L0) then
    DelayedFunction(50, o2904, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2904.Value == L0) then
    o2904["Value"] = L0
    CallFunction(o2902, "ProcesseStateChange")
  end
end }
o2919 = { [nil] = {}, Start = function()
  o2919["Value"] = False
  o1865.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2919.Value == L0) then
    o2919["Value"] = L0
    o1865.ReCalculate()
  end
end }
S_o2950 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2950, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2950, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2950, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2950, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o2967.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2952.Value ~= True) then
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
o2952 = { [nil] = {}, GetCalculated = function()
  if not (o2502.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2952.SetStateValue(o2952.GetCalculated())
end, StartCalculate = function()
  o2952["Value"] = o2952.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2952.Value == L0) then
    DelayedFunction(50, o2952, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2952.Value == L0) then
    o2952["Value"] = L0
    CallFunction(o2950, "ProcesseStateChange")
  end
end }
o2967 = { [nil] = {}, Start = function()
  o2967["Value"] = False
  o1865.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2967.Value == L0) then
    o2967["Value"] = L0
    o1865.ReCalculate()
  end
end }
S_o2998 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2998, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2998, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2998, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2998, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o3015.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3000.Value ~= True) then
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
o3000 = { [nil] = {}, GetCalculated = function()
  if not (o2502.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3000.SetStateValue(o3000.GetCalculated())
end, StartCalculate = function()
  o3000["Value"] = o3000.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3000.Value == L0) then
    DelayedFunction(50, o3000, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3000.Value == L0) then
    o3000["Value"] = L0
    CallFunction(o2998, "ProcesseStateChange")
  end
end }
o3015 = { [nil] = {}, Start = function()
  o3015["Value"] = False
  o1865.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3015.Value == L0) then
    o3015["Value"] = L0
    o1865.ReCalculate()
  end
end }
S_o3046 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3046, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3046, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3046, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3046, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o3063.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3048.Value ~= True) then
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
o3048 = { [nil] = {}, GetCalculated = function()
  if not (o2502.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3048.SetStateValue(o3048.GetCalculated())
end, StartCalculate = function()
  o3048["Value"] = o3048.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3048.Value == L0) then
    DelayedFunction(50, o3048, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3048.Value == L0) then
    o3048["Value"] = L0
    CallFunction(o3046, "ProcesseStateChange")
  end
end }
o3063 = { [nil] = {}, Start = function()
  o3063["Value"] = False
  o1865.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3063.Value == L0) then
    o3063["Value"] = L0
    o1865.ReCalculate()
  end
end }
S_o3094 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3094, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3094, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3094, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Brainfire_PatrolArea", "/Scenario_Dynamic/Navigation/Brainfire_TriggerArea", "/Scenario_Dynamic/Navigation/Brainfire_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3094, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o3111.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3096.Value ~= True) then
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
o3096 = { [nil] = {}, GetCalculated = function()
  if not (o1866.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3096.SetStateValue(o3096.GetCalculated())
end, StartCalculate = function()
  o3096["Value"] = o3096.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3096.Value == L0) then
    o3096["Value"] = L0
    CallFunction(o3094, "ProcesseStateChange")
  end
end }
o3111 = { [nil] = {}, Start = function()
  o3111["Value"] = False
  o1870.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3111.Value == L0) then
    o3111["Value"] = L0
    o1870.ReCalculate()
  end
end }
S_o3142 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3142, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3142, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3142, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Brainfire_PatrolArea", "/Scenario_Dynamic/Navigation/Brainfire_TriggerArea", "/Scenario_Dynamic/Navigation/Brainfire_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3142, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o3159.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3144.Value ~= True) then
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
o3144 = { [nil] = {}, GetCalculated = function()
  if not (o1866.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3144.SetStateValue(o3144.GetCalculated())
end, StartCalculate = function()
  o3144["Value"] = o3144.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3144.Value == L0) then
    o3144["Value"] = L0
    CallFunction(o3142, "ProcesseStateChange")
  end
end }
o3159 = { [nil] = {}, Start = function()
  o3159["Value"] = False
  o1870.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3159.Value == L0) then
    o3159["Value"] = L0
    o1870.ReCalculate()
  end
end }
S_o3190 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3190, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3190, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3190, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Brainfire_PatrolArea", "/Scenario_Dynamic/Navigation/Brainfire_TriggerArea", "/Scenario_Dynamic/Navigation/Brainfire_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3190, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o3207.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3192.Value ~= True) then
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
o3192 = { [nil] = {}, GetCalculated = function()
  if not (o1866.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3192.SetStateValue(o3192.GetCalculated())
end, StartCalculate = function()
  o3192["Value"] = o3192.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3192.Value == L0) then
    o3192["Value"] = L0
    CallFunction(o3190, "ProcesseStateChange")
  end
end }
o3207 = { [nil] = {}, Start = function()
  o3207["Value"] = False
  o1870.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3207.Value == L0) then
    o3207["Value"] = L0
    o1870.ReCalculate()
  end
end }
S_o3238 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3238, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3238, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3238, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Brainfire_PatrolArea", "/Scenario_Dynamic/Navigation/Brainfire_TriggerArea", "/Scenario_Dynamic/Navigation/Brainfire_FollowArea", "E", "", "", "", 0, "Code4")
  else
    CallFunction(o3238, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3248.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3240.Value ~= True) then
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
o3240 = { [nil] = {}, GetCalculated = function()
  if not (o1866.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3240.SetStateValue(o3240.GetCalculated())
end, StartCalculate = function()
  o3240["Value"] = o3240.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3240.Value == L0) then
    o3240["Value"] = L0
    CallFunction(o3238, "ProcesseStateChange")
  end
end }
o3248 = { [nil] = {}, Start = function()
  o3248["Value"] = False
  o1870.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3248.Value == L0) then
    o3248["Value"] = L0
    o1870.ReCalculate()
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
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Brainfire_PatrolArea", "/Scenario_Dynamic/Navigation/Brainfire_TriggerArea", "/Scenario_Dynamic/Navigation/Brainfire_FollowArea", "E", "", "", "", 0, "Code4")
  else
    CallFunction(o3277, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3287.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3279.Value ~= True) then
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
o3279 = { [nil] = {}, GetCalculated = function()
  if not (o1866.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3279.SetStateValue(o3279.GetCalculated())
end, StartCalculate = function()
  o3279["Value"] = o3279.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3279.Value == L0) then
    o3279["Value"] = L0
    CallFunction(o3277, "ProcesseStateChange")
  end
end }
o3287 = { [nil] = {}, Start = function()
  o3287["Value"] = False
  o1870.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3287.Value == L0) then
    o3287["Value"] = L0
    o1870.ReCalculate()
  end
end }
S_o3316 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3316, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3316, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3316, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Brainfire_PatrolArea", "/Scenario_Dynamic/Navigation/Brainfire_TriggerArea", "/Scenario_Dynamic/Navigation/Brainfire_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3316, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o3333.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3318.Value ~= True) then
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
o3318 = { [nil] = {}, GetCalculated = function()
  if not (o1866.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3318.SetStateValue(o3318.GetCalculated())
end, StartCalculate = function()
  o3318["Value"] = o3318.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3318.Value == L0) then
    o3318["Value"] = L0
    CallFunction(o3316, "ProcesseStateChange")
  end
end }
o3333 = { [nil] = {}, Start = function()
  o3333["Value"] = False
  o1870.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3333.Value == L0) then
    o3333["Value"] = L0
    o1870.ReCalculate()
  end
end }
S_o3364 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3364, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3364, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3364, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/cra_fregatte_3_1_Path", 1, 1 } }("Code4")
  else
    CallFunction(o3364, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o3364, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmpJump = function(L0, L1)
  o3381.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3366.Value ~= True) then
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
o3366 = { [nil] = {}, GetCalculated = function()
  if not (o1867.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3366.SetStateValue(o3366.GetCalculated())
end, StartCalculate = function()
  o3366["Value"] = o3366.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3366.Value == L0) then
    o3366["Value"] = L0
    CallFunction(o3364, "ProcesseStateChange")
  end
end }
o3381 = { [nil] = {}, Start = function()
  o3381["Value"] = False
  o1871.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3381.Value == L0) then
    o3381["Value"] = L0
    o1871.ReCalculate()
  end
end }
S_o3412 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3412, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3412, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3412, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3412, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o3429.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3414.Value ~= True) then
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
o3414 = { [nil] = {}, GetCalculated = function()
  if not (o1867.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3414.SetStateValue(o3414.GetCalculated())
end, StartCalculate = function()
  o3414["Value"] = o3414.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3414.Value == L0) then
    o3414["Value"] = L0
    CallFunction(o3412, "ProcesseStateChange")
  end
end }
o3429 = { [nil] = {}, Start = function()
  o3429["Value"] = False
  o1871.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3429.Value == L0) then
    o3429["Value"] = L0
    o1871.ReCalculate()
  end
end }
S_o3460 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3460, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3460, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3460, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3460, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o3477.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3462.Value ~= True) then
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
o3462 = { [nil] = {}, GetCalculated = function()
  if not (o1867.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3462.SetStateValue(o3462.GetCalculated())
end, StartCalculate = function()
  o3462["Value"] = o3462.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3462.Value == L0) then
    o3462["Value"] = L0
    CallFunction(o3460, "ProcesseStateChange")
  end
end }
o3477 = { [nil] = {}, Start = function()
  o3477["Value"] = False
  o1871.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3477.Value == L0) then
    o3477["Value"] = L0
    o1871.ReCalculate()
  end
end }
S_o3508 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3508, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3508, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3508, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3508, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o3525.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3510.Value ~= True) then
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
o3510 = { [nil] = {}, GetCalculated = function()
  if not (o1867.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3510.SetStateValue(o3510.GetCalculated())
end, StartCalculate = function()
  o3510["Value"] = o3510.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3510.Value == L0) then
    o3510["Value"] = L0
    CallFunction(o3508, "ProcesseStateChange")
  end
end }
o3525 = { [nil] = {}, Start = function()
  o3525["Value"] = False
  o1871.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3525.Value == L0) then
    o3525["Value"] = L0
    o1871.ReCalculate()
  end
end }
S_o3556 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3556, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3556, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3556, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3556, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o3573.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3558.Value ~= True) then
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
o3558 = { [nil] = {}, GetCalculated = function()
  if not (o1867.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3558.SetStateValue(o3558.GetCalculated())
end, StartCalculate = function()
  o3558["Value"] = o3558.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3558.Value == L0) then
    o3558["Value"] = L0
    CallFunction(o3556, "ProcesseStateChange")
  end
end }
o3573 = { [nil] = {}, Start = function()
  o3573["Value"] = False
  o1871.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3573.Value == L0) then
    o3573["Value"] = L0
    o1871.ReCalculate()
  end
end }
S_o3604 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3604, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3604, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3604, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3604, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o3621.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3606.Value ~= True) then
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
o3606 = { [nil] = {}, GetCalculated = function()
  if not (o1867.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3606.SetStateValue(o3606.GetCalculated())
end, StartCalculate = function()
  o3606["Value"] = o3606.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3606.Value == L0) then
    o3606["Value"] = L0
    CallFunction(o3604, "ProcesseStateChange")
  end
end }
o3621 = { [nil] = {}, Start = function()
  o3621["Value"] = False
  o1871.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3621.Value == L0) then
    o3621["Value"] = L0
    o1871.ReCalculate()
  end
end }
S_o3652 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3652, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3652, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3652, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3652, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o3669.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3654.Value ~= True) then
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
o3654 = { [nil] = {}, GetCalculated = function()
  if not (o1867.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3654.SetStateValue(o3654.GetCalculated())
end, StartCalculate = function()
  o3654["Value"] = o3654.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3654.Value == L0) then
    o3654["Value"] = L0
    CallFunction(o3652, "ProcesseStateChange")
  end
end }
o3669 = { [nil] = {}, Start = function()
  o3669["Value"] = False
  o1871.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3669.Value == L0) then
    o3669["Value"] = L0
    o1871.ReCalculate()
  end
end }
S_o3700 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3700, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3700, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3700, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3700, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o3717.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3702.Value ~= True) then
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
o3702 = { [nil] = {}, GetCalculated = function()
  if not (o1867.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3702.SetStateValue(o3702.GetCalculated())
end, StartCalculate = function()
  o3702["Value"] = o3702.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3702.Value == L0) then
    o3702["Value"] = L0
    CallFunction(o3700, "ProcesseStateChange")
  end
end }
o3717 = { [nil] = {}, Start = function()
  o3717["Value"] = False
  o1871.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3717.Value == L0) then
    o3717["Value"] = L0
    o1871.ReCalculate()
  end
end }
S_o3748 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3748, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3748, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3748, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3748, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o3765.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3750.Value ~= True) then
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
o3750 = { [nil] = {}, GetCalculated = function()
  if not (o1867.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3750.SetStateValue(o3750.GetCalculated())
end, StartCalculate = function()
  o3750["Value"] = o3750.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3750.Value == L0) then
    o3750["Value"] = L0
    CallFunction(o3748, "ProcesseStateChange")
  end
end }
o3765 = { [nil] = {}, Start = function()
  o3765["Value"] = False
  o1871.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3765.Value == L0) then
    o3765["Value"] = L0
    o1871.ReCalculate()
  end
end }
S_o3796 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3796, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3796, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3796, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0.275116)
  CallFunction(o3796, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Canyon_PatrolArea", "/Scenario_Dynamic/Navigation/Canyon_TriggerArea", "/Scenario_Dynamic/Navigation/Canyon_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o3796, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmpJump = function(L0, L1)
  o3813.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3798.Value ~= True) then
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
o3798 = { [nil] = {}, GetCalculated = function()
  if not (o1873.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3798.SetStateValue(o3798.GetCalculated())
end, StartCalculate = function()
  o3798["Value"] = o3798.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3798.Value == L0) then
    o3798["Value"] = L0
    CallFunction(o3796, "ProcesseStateChange")
  end
end }
o3813 = { [nil] = {}, Start = function()
  o3813["Value"] = False
  o1874.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3813.Value == L0) then
    o3813["Value"] = L0
    o1874.ReCalculate()
  end
end }
S_o3844 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3844, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3844, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3844, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0.575116)
  CallFunction(o3844, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Canyon_PatrolArea", "/Scenario_Dynamic/Navigation/Canyon_TriggerArea", "/Scenario_Dynamic/Navigation/Canyon_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o3844, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmpJump = function(L0, L1)
  o3861.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3846.Value ~= True) then
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
o3846 = { [nil] = {}, GetCalculated = function()
  if not (o1873.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3846.SetStateValue(o3846.GetCalculated())
end, StartCalculate = function()
  o3846["Value"] = o3846.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3846.Value == L0) then
    o3846["Value"] = L0
    CallFunction(o3844, "ProcesseStateChange")
  end
end }
o3861 = { [nil] = {}, Start = function()
  o3861["Value"] = False
  o1874.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3861.Value == L0) then
    o3861["Value"] = L0
    o1874.ReCalculate()
  end
end }
S_o3892 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3892, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3892, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3892, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0.247512)
  CallFunction(o3892, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Canyon_PatrolArea_Ground", "/Scenario_Dynamic/Navigation/Canyon_TriggerArea", "/Scenario_Dynamic/Navigation/Canyon_FollowArea", "E", "", "", "", 0, "Code5")
  else
    CallFunction(o3892, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o3902.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3894.Value ~= True) then
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
o3894 = { [nil] = {}, GetCalculated = function()
  if not (o1873.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3894.SetStateValue(o3894.GetCalculated())
end, StartCalculate = function()
  o3894["Value"] = o3894.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3894.Value == L0) then
    o3894["Value"] = L0
    CallFunction(o3892, "ProcesseStateChange")
  end
end }
o3902 = { [nil] = {}, Start = function()
  o3902["Value"] = False
  o1874.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3902.Value == L0) then
    o3902["Value"] = L0
    o1874.ReCalculate()
  end
end }
S_o3931 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3931, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3931, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3931, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0.875116)
  CallFunction(o3931, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Canyon_PatrolArea_Ground", "/Scenario_Dynamic/Navigation/Canyon_TriggerArea", "/Scenario_Dynamic/Navigation/Canyon_FollowArea", "E", "", "", "", 0, "Code5")
  else
    CallFunction(o3931, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmp = function(L0, L1)
  o3941.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3933.Value ~= True) then
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
o3933 = { [nil] = {}, GetCalculated = function()
  if not (o1873.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3933.SetStateValue(o3933.GetCalculated())
end, StartCalculate = function()
  o3933["Value"] = o3933.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3933.Value == L0) then
    o3933["Value"] = L0
    CallFunction(o3931, "ProcesseStateChange")
  end
end }
o3941 = { [nil] = {}, Start = function()
  o3941["Value"] = False
  o1874.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3941.Value == L0) then
    o3941["Value"] = L0
    o1874.ReCalculate()
  end
end }
S_o3970 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3970, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3970, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3970, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/cra_fregatte_4_1_Path", 1, 1 } }("Code4")
  else
    CallFunction(o3970, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o3970, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_DestEmpJump = function(L0, L1)
  o3987.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3972.Value ~= True) then
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
o3972 = { [nil] = {}, GetCalculated = function()
  if not (o1875.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3972.SetStateValue(o3972.GetCalculated())
end, StartCalculate = function()
  o3972["Value"] = o3972.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3972.Value == L0) then
    DelayedFunction(33, o3972, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3972.Value == L0) then
    o3972["Value"] = L0
    CallFunction(o3970, "ProcesseStateChange")
  end
end }
o3987 = { [nil] = {}, Start = function()
  o3987["Value"] = False
  o1876.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3987.Value == L0) then
    o3987["Value"] = L0
    o1876.ReCalculate()
  end
end }
S_o4018 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4018, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4018, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4018, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4018, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o4035.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4020.Value ~= True) then
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
o4020 = { [nil] = {}, GetCalculated = function()
  if not (o1875.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4020.SetStateValue(o4020.GetCalculated())
end, StartCalculate = function()
  o4020["Value"] = o4020.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4020.Value == L0) then
    o4020["Value"] = L0
    CallFunction(o4018, "ProcesseStateChange")
  end
end }
o4035 = { [nil] = {}, Start = function()
  o4035["Value"] = False
  o1876.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4035.Value == L0) then
    o4035["Value"] = L0
    o1876.ReCalculate()
  end
end }
S_o4066 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4066, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4066, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4066, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4066, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o4083.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4068.Value ~= True) then
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
o4068 = { [nil] = {}, GetCalculated = function()
  if not (o1875.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4068.SetStateValue(o4068.GetCalculated())
end, StartCalculate = function()
  o4068["Value"] = o4068.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4068.Value == L0) then
    o4068["Value"] = L0
    CallFunction(o4066, "ProcesseStateChange")
  end
end }
o4083 = { [nil] = {}, Start = function()
  o4083["Value"] = False
  o1876.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4083.Value == L0) then
    o4083["Value"] = L0
    o1876.ReCalculate()
  end
end }
S_o4114 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4114, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4114, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4114, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4114, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o4131.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4116.Value ~= True) then
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
o4116 = { [nil] = {}, GetCalculated = function()
  if not (o1875.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4116.SetStateValue(o4116.GetCalculated())
end, StartCalculate = function()
  o4116["Value"] = o4116.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4116.Value == L0) then
    o4116["Value"] = L0
    CallFunction(o4114, "ProcesseStateChange")
  end
end }
o4131 = { [nil] = {}, Start = function()
  o4131["Value"] = False
  o1876.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4131.Value == L0) then
    o4131["Value"] = L0
    o1876.ReCalculate()
  end
end }
S_o4162 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4162, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4162, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4162, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4162, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o4179.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4164.Value ~= True) then
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
o4164 = { [nil] = {}, GetCalculated = function()
  if not (o1875.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4164.SetStateValue(o4164.GetCalculated())
end, StartCalculate = function()
  o4164["Value"] = o4164.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4164.Value == L0) then
    o4164["Value"] = L0
    CallFunction(o4162, "ProcesseStateChange")
  end
end }
o4179 = { [nil] = {}, Start = function()
  o4179["Value"] = False
  o1876.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4179.Value == L0) then
    o4179["Value"] = L0
    o1876.ReCalculate()
  end
end }
S_o4210 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4210, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4210, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4210, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4210, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o4227.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4212.Value ~= True) then
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
o4212 = { [nil] = {}, GetCalculated = function()
  if not (o1875.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4212.SetStateValue(o4212.GetCalculated())
end, StartCalculate = function()
  o4212["Value"] = o4212.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4212.Value == L0) then
    o4212["Value"] = L0
    CallFunction(o4210, "ProcesseStateChange")
  end
end }
o4227 = { [nil] = {}, Start = function()
  o4227["Value"] = False
  o1876.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4227.Value == L0) then
    o4227["Value"] = L0
    o1876.ReCalculate()
  end
end }
S_o4258 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4258, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4258, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4258, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4258, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4260.Value ~= True) then
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
o4260 = { [nil] = {}, GetCalculated = function()
  if not (o1875.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4260.SetStateValue(o4260.GetCalculated())
end, StartCalculate = function()
  o4260["Value"] = o4260.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4260.Value == L0) then
    o4260["Value"] = L0
    CallFunction(o4258, "ProcesseStateChange")
  end
end }
S_o4306 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4306, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4306, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4306, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4306, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4308.Value ~= True) then
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
o4308 = { [nil] = {}, GetCalculated = function()
  if not (o1875.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4308.SetStateValue(o4308.GetCalculated())
end, StartCalculate = function()
  o4308["Value"] = o4308.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4308.Value == L0) then
    o4308["Value"] = L0
    CallFunction(o4306, "ProcesseStateChange")
  end
end }
S_o4354 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4354, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4354, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4354, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4354, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4356.Value ~= True) then
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
o4356 = { [nil] = {}, GetCalculated = function()
  if not (o1875.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4356.SetStateValue(o4356.GetCalculated())
end, StartCalculate = function()
  o4356["Value"] = o4356.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4356.Value == L0) then
    o4356["Value"] = L0
    CallFunction(o4354, "ProcesseStateChange")
  end
end }
S_o4402 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4402, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4402, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4402, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4402, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4404.Value ~= True) then
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
o4404 = { [nil] = {}, GetCalculated = function()
  if not (o1875.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4404.SetStateValue(o4404.GetCalculated())
end, StartCalculate = function()
  o4404["Value"] = o4404.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4404.Value == L0) then
    o4404["Value"] = L0
    CallFunction(o4402, "ProcesseStateChange")
  end
end }
S_o4450 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4450, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4450, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4450, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4450, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmpJump = function(L0, L1)
  o4467.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4452.Value ~= True) then
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
o4452 = { [nil] = {}, GetCalculated = function()
  if not (o1875.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4452.SetStateValue(o4452.GetCalculated())
end, StartCalculate = function()
  o4452["Value"] = o4452.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4452.Value == L0) then
    o4452["Value"] = L0
    CallFunction(o4450, "ProcesseStateChange")
  end
end }
o4467 = { [nil] = {}, Start = function()
  o4467["Value"] = False
  o1876.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4467.Value == L0) then
    o4467["Value"] = L0
    o1876.ReCalculate()
  end
end }
S_o4498 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4498, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4498, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4498, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "player", "", "", "", 0.75, "/Scenario_Dynamic/Navigation/Respawn_Pos1", "Code4")
  else
    CallFunction(o4498, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o4498, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o4498, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmpJump = function(L0, L1)
  o4516.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4501.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4499.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4500.Value ~= True) then
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
o4499 = { [nil] = {}, GetCalculated = function()
  if not (o2456.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4499.SetStateValue(o4499.GetCalculated())
end, StartCalculate = function()
  o4499["Value"] = o4499.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4499.Value == L0) then
    DelayedFunction(10, o4499, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4499.Value == L0) then
    o4499["Value"] = L0
    CallFunction(o4498, "ProcesseStateChange")
  end
end }
o4500 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4500.SetStateValue(o4500.GetCalculated())
end, StartCalculate = function()
  o4500["Value"] = o4500.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4500.Value == L0) then
    o4500["Value"] = L0
    CallFunction(o4498, "ProcesseStateChange")
  end
end }
o4501 = { [nil] = {}, GetCalculated = function()
  if not (o1876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4501.SetStateValue(o4501.GetCalculated())
end, StartCalculate = function()
  o4501["Value"] = o4501.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4501.Value == L0) then
    o4501["Value"] = L0
    CallFunction(o4498, "ProcesseStateChange")
  end
end }
o4516 = { [nil] = {}, Start = function()
  o4516["Value"] = False
  o1879.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4516.Value == L0) then
    o4516["Value"] = L0
    o1879.ReCalculate()
  end
end }
S_o4547 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4547, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4547, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4547, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "player", "", "", "", 0.75, "/Scenario_Dynamic/Navigation/Respawn_Pos2", "Code4")
  else
    CallFunction(o4547, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o4547, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o4547, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmpJump = function(L0, L1)
  o4565.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4550.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4548.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4549.Value ~= True) then
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
o4548 = { [nil] = {}, GetCalculated = function()
  if not (o2456.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4548.SetStateValue(o4548.GetCalculated())
end, StartCalculate = function()
  o4548["Value"] = o4548.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4548.Value == L0) then
    DelayedFunction(10, o4548, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4548.Value == L0) then
    o4548["Value"] = L0
    CallFunction(o4547, "ProcesseStateChange")
  end
end }
o4549 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4549.SetStateValue(o4549.GetCalculated())
end, StartCalculate = function()
  o4549["Value"] = o4549.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4549.Value == L0) then
    o4549["Value"] = L0
    CallFunction(o4547, "ProcesseStateChange")
  end
end }
o4550 = { [nil] = {}, GetCalculated = function()
  if not (o1876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4550.SetStateValue(o4550.GetCalculated())
end, StartCalculate = function()
  o4550["Value"] = o4550.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4550.Value == L0) then
    o4550["Value"] = L0
    CallFunction(o4547, "ProcesseStateChange")
  end
end }
o4565 = { [nil] = {}, Start = function()
  o4565["Value"] = False
  o1879.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4565.Value == L0) then
    o4565["Value"] = L0
    o1879.ReCalculate()
  end
end }
S_o4596 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4596, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4596, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4596, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 0.75, "/Scenario_Dynamic/Navigation/Respawn_Pos3", "Code4")
  else
    CallFunction(o4596, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o4596, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o4596, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmpJump = function(L0, L1)
  o4614.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4599.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4597.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4598.Value ~= True) then
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
o4597 = { [nil] = {}, GetCalculated = function()
  if not (o2456.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4597.SetStateValue(o4597.GetCalculated())
end, StartCalculate = function()
  o4597["Value"] = o4597.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4597.Value == L0) then
    DelayedFunction(10, o4597, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4597.Value == L0) then
    o4597["Value"] = L0
    CallFunction(o4596, "ProcesseStateChange")
  end
end }
o4598 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4598.SetStateValue(o4598.GetCalculated())
end, StartCalculate = function()
  o4598["Value"] = o4598.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4598.Value == L0) then
    o4598["Value"] = L0
    CallFunction(o4596, "ProcesseStateChange")
  end
end }
o4599 = { [nil] = {}, GetCalculated = function()
  if not (o1876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4599.SetStateValue(o4599.GetCalculated())
end, StartCalculate = function()
  o4599["Value"] = o4599.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4599.Value == L0) then
    o4599["Value"] = L0
    CallFunction(o4596, "ProcesseStateChange")
  end
end }
o4614 = { [nil] = {}, Start = function()
  o4614["Value"] = False
  o1879.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4614.Value == L0) then
    o4614["Value"] = L0
    o1879.ReCalculate()
  end
end }
S_o4645 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4645, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4645, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4645, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 0.75, "/Scenario_Dynamic/Navigation/Respawn_Pos4", "Code4")
  else
    CallFunction(o4645, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o4645, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o4645, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmpJump = function(L0, L1)
  o4663.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4648.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4646.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4647.Value ~= True) then
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
o4646 = { [nil] = {}, GetCalculated = function()
  if not (o2456.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4646.SetStateValue(o4646.GetCalculated())
end, StartCalculate = function()
  o4646["Value"] = o4646.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4646.Value == L0) then
    DelayedFunction(10, o4646, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4646.Value == L0) then
    o4646["Value"] = L0
    CallFunction(o4645, "ProcesseStateChange")
  end
end }
o4647 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4647.SetStateValue(o4647.GetCalculated())
end, StartCalculate = function()
  o4647["Value"] = o4647.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4647.Value == L0) then
    o4647["Value"] = L0
    CallFunction(o4645, "ProcesseStateChange")
  end
end }
o4648 = { [nil] = {}, GetCalculated = function()
  if not (o1876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4648.SetStateValue(o4648.GetCalculated())
end, StartCalculate = function()
  o4648["Value"] = o4648.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4648.Value == L0) then
    o4648["Value"] = L0
    CallFunction(o4645, "ProcesseStateChange")
  end
end }
o4663 = { [nil] = {}, Start = function()
  o4663["Value"] = False
  o1879.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4663.Value == L0) then
    o4663["Value"] = L0
    o1879.ReCalculate()
  end
end }
S_o4694 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4694, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4694, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4694, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "player", "", "", "", 0.75, "/Scenario_Dynamic/Navigation/Respawn_Pos5", "Code4")
  else
    CallFunction(o4694, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o4694, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o4694, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmpJump = function(L0, L1)
  o4712.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4697.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4695.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4696.Value ~= True) then
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
o4695 = { [nil] = {}, GetCalculated = function()
  if not (o2456.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4695.SetStateValue(o4695.GetCalculated())
end, StartCalculate = function()
  o4695["Value"] = o4695.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4695.Value == L0) then
    DelayedFunction(10, o4695, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4695.Value == L0) then
    o4695["Value"] = L0
    CallFunction(o4694, "ProcesseStateChange")
  end
end }
o4696 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4696.SetStateValue(o4696.GetCalculated())
end, StartCalculate = function()
  o4696["Value"] = o4696.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4696.Value == L0) then
    o4696["Value"] = L0
    CallFunction(o4694, "ProcesseStateChange")
  end
end }
o4697 = { [nil] = {}, GetCalculated = function()
  if not (o1876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4697.SetStateValue(o4697.GetCalculated())
end, StartCalculate = function()
  o4697["Value"] = o4697.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4697.Value == L0) then
    o4697["Value"] = L0
    CallFunction(o4694, "ProcesseStateChange")
  end
end }
o4712 = { [nil] = {}, Start = function()
  o4712["Value"] = False
  o1879.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4712.Value == L0) then
    o4712["Value"] = L0
    o1879.ReCalculate()
  end
end }
S_o4743 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4743, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4743, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4743, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o4743, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o4743, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4743, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  CallFunction(o4743, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 0.75, "Code8")
  else
    CallFunction(o4743, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  StopAllActiveBehaviours(L0)
  CallFunction(o4743, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Brainfire_PatrolArea", "/Scenario_Dynamic/Navigation/Brainfire_TriggerArea", "/Scenario_Dynamic/Navigation/Brainfire_FollowArea", "E", "", "", "", 1, "Code10")
  else
    CallFunction(o4743, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  StopAllActiveBehaviours(L0)
  CallFunction(o4743, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "cra", "", "", 1, "Code12")
  else
    CallFunction(o4743, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4794 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4794, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4794, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4794, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o4794, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o4794, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4794, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  CallFunction(o4794, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 0.75, "Code8")
  else
    CallFunction(o4794, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  StopAllActiveBehaviours(L0)
  CallFunction(o4794, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Brainfire_PatrolArea", "/Scenario_Dynamic/Navigation/Brainfire_TriggerArea", "/Scenario_Dynamic/Navigation/Brainfire_FollowArea", "E", "", "", "", 1, "Code10")
  else
    CallFunction(o4794, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  StopAllActiveBehaviours(L0)
  CallFunction(o4794, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "cra", "", "", 1, "Code12")
  else
    CallFunction(o4794, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4845 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4845, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4845, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4845, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o4845, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o4845, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4845, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  CallFunction(o4845, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 0.75, "Code8")
  else
    CallFunction(o4845, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  StopAllActiveBehaviours(L0)
  CallFunction(o4845, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Brainfire_PatrolArea", "/Scenario_Dynamic/Navigation/Brainfire_TriggerArea", "/Scenario_Dynamic/Navigation/Brainfire_FollowArea", "E", "", "", "", 1, "Code10")
  else
    CallFunction(o4845, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  StopAllActiveBehaviours(L0)
  CallFunction(o4845, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "cra", "", "", 1, "Code12")
  else
    CallFunction(o4845, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4896 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4896, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4896, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4896, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o4896, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o4896, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4896, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  CallFunction(o4896, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 0.75, "Code8")
  else
    CallFunction(o4896, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  StopAllActiveBehaviours(L0)
  CallFunction(o4896, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Brainfire_PatrolArea", "/Scenario_Dynamic/Navigation/Brainfire_TriggerArea", "/Scenario_Dynamic/Navigation/Brainfire_FollowArea", "E", "", "", "", 1, "Code10")
  else
    CallFunction(o4896, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  StopAllActiveBehaviours(L0)
  CallFunction(o4896, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "cra", "", "", 1, "Code12")
  else
    CallFunction(o4896, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4947 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4947, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4947, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4947, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o4947, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o4947, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4947, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  CallFunction(o4947, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "", "", "", 0.75, "Code8")
  else
    CallFunction(o4947, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  StopAllActiveBehaviours(L0)
  CallFunction(o4947, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Brainfire_PatrolArea", "/Scenario_Dynamic/Navigation/Brainfire_TriggerArea", "/Scenario_Dynamic/Navigation/Brainfire_FollowArea", "E", "", "", "", 1, "Code10")
  else
    CallFunction(o4947, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  StopAllActiveBehaviours(L0)
  CallFunction(o4947, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AtacamaBattle_PatrolArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_TriggerArea", "/Scenario_Dynamic/Navigation/AtacamaBattle_FollowArea", "E", "cra", "", "", 1, "Code12")
  else
    CallFunction(o4947, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4998 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o4998, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5003 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o5003, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5008 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o5008, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5013 = { [nil] = {}, Start = function(L0)

end }
o5015 = FormationLib.CreateFormation("Triangle", "", "", "", 30, 30)
S_o5016 = { [nil] = {}, Start = function(L0)

end }
S_o5017 = { [nil] = {}, Start = function(L0)

end }
S_o5018 = { [nil] = {}, Start = function(L0)

end }
S_o5019 = { [nil] = {}, Start = function(L0)

end }
S_o5020 = { [nil] = {}, Start = function(L0)

end }
S_o5021 = { [nil] = {}, Start = function(L0)

end }
S_o5022 = { [nil] = {}, Start = function(L0)

end }
S_o5024 = { [nil] = {}, Start = function(L0)

end }
S_o5025 = { [nil] = {}, Start = function(L0)

end }
S_o5026 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "agressive")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  FormationLib.PlaceFormationPath(o5014, o5015, "/IngameSequences/Navigation/PlayerPath_1")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o5026, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.75, "Code9")
  else
    CallFunction(o5026, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o5014, o5015, "/IngameSequences/Navigation/PlayerPath_1", "pos_1", "pos_2", 1, 1, "Code10")
  else
    CallFunction(o5026, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 4, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_1", 5, "MMMN", 0)
  CallFunction(o5026, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 7, "Code13")
  else
    CallFunction(o5026, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Director_EndCutscene(L0.Node)
  CallFunction(o4743, "Code6")
  CallFunction(o4794, "Code6")
  CallFunction(o4845, "Code6")
  CallFunction(o4896, "Code6")
  CallFunction(o4947, "Code6")
  Game_SetWayPoint(GetGameNode(), o4998.Node)
  SED_SetTaskTextKey(1312, -1, -1)
  Player_SuppressFF(Node_Find("/Scenario_Dynamic/Object/player1"))
  CallFunction(o5026, "Code22")
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5030 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.25, "Code1")
  else
    CallFunction(o5030, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o1858.Node, o1858.Node, 242)
  SendRadioMessageTake(o1858.Node, o1858.Node, 243)
  CallFunction(o5030, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5033 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5033, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Game_PlayMusic(GetGameNode(), "agressive")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  FormationLib.PlaceFormationPath(o5014, o5015, "/IngameSequences/Navigation/PlayerPath_2")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_3", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_2", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o5033, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.75, "Code10")
  else
    CallFunction(o5033, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_4", 5, "MMMN", 0)
  CallFunction(o5033, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 7, "Code12")
  else
    CallFunction(o5033, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_5", 6, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 3, "MMMN", 0)
  CallFunction(o5033, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o5014, o5015, "/IngameSequences/Navigation/PlayerPath_2", "pos_1", "pos_3", 1, 1, "Code15")
  else
    CallFunction(o5033, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Director_EndCutscene(L0.Node)
  o5040.SetStateValue(True)
  CallFunction(o4743, "Code8")
  CallFunction(o4794, "Code8")
  CallFunction(o4845, "Code8")
  CallFunction(o4896, "Code8")
  CallFunction(o4947, "Code8")
  Game_SetWayPoint(GetGameNode(), o5003.Node)
  CallFunction(o5033, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 40, "Code24")
  else
    CallFunction(o5033, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  o1867.SetStateValue(True)
  CallFunction(o5033, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code26")
  else
    CallFunction(o5033, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  SendRadioMessageTake(o1858.Node, o1858.Node, 244)
  SED_SetTaskTextKey(1313, -1, -1)
  CallFunction(o5033, "Code28")
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5034.Value ~= True) then
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
o5034 = { [nil] = {}, GetCalculated = function()
  if not (o1866.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5034.SetStateValue(o5034.GetCalculated())
end, StartCalculate = function()
  o5034["Value"] = o5034.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5034.Value == L0) then
    DelayedFunction(19, o5034, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5034.Value == L0) then
    o5034["Value"] = L0
    CallFunction(o5033, "ProcesseStateChange")
  end
end }
o5040 = { [nil] = {}, Start = function()
  o5040["Value"] = False
  o1868.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5040.Value == L0) then
    o5040["Value"] = L0
    o1868.ReCalculate()
  end
end }
S_o5041 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5041, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.5, "Code2")
  else
    CallFunction(o5041, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o1858.Node, o1858.Node, 1158)
  CallFunction(o5041, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5042.Value ~= True) then
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
o5042 = { [nil] = {}, GetCalculated = function()
  if not (o1866.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5042.SetStateValue(o5042.GetCalculated())
end, StartCalculate = function()
  o5042["Value"] = o5042.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5042.Value == L0) then
    DelayedFunction(19, o5042, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5042.Value == L0) then
    o5042["Value"] = L0
    CallFunction(o5041, "ProcesseStateChange")
  end
end }
S_o5045 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5045, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Game_PlayMusic(GetGameNode(), "agressive")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  FormationLib.PlaceFormationPath(o5023, o5015, "/IngameSequences/Navigation/PlayerPath_3")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_6", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o5045, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.75, "Code10")
  else
    CallFunction(o5045, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_7", 4, "MMMN", 0)
  CallFunction(o5045, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o5023, o5015, "/IngameSequences/Navigation/PlayerPath_3", "pos_1", "pos_3", 1, 1, "Code12")
  else
    CallFunction(o5045, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Director_EndCutscene(L0.Node)
  o1873.SetStateValue(True)
  Game_SetWayPoint(GetGameNode(), o5008.Node)
  SED_SetTaskTextKey(1315, -1, -1)
  CallFunction(o5045, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5046.Value ~= True) then
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
o5046 = { [nil] = {}, GetCalculated = function()
  if not (o1872.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5046.SetStateValue(o5046.GetCalculated())
end, StartCalculate = function()
  o5046["Value"] = o5046.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5046.Value == L0) then
    DelayedFunction(19, o5046, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5046.Value == L0) then
    o5046["Value"] = L0
    CallFunction(o5045, "ProcesseStateChange")
  end
end }
S_o5049 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5049, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.25, "Code2")
  else
    CallFunction(o5049, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o1858.Node, o1858.Node, 246)
  CallFunction(o5049, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5050.Value ~= True) then
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
o5050 = { [nil] = {}, GetCalculated = function()
  if not (o1872.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5050.SetStateValue(o5050.GetCalculated())
end, StartCalculate = function()
  o5050["Value"] = o5050.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5050.Value == L0) then
    DelayedFunction(19, o5050, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5050.Value == L0) then
    o5050["Value"] = L0
    CallFunction(o5049, "ProcesseStateChange")
  end
end }
S_o5053 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5053, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o1858.Node, o1858.Node, 247)
  Game_SetWayPoint(GetGameNode(), o4998.Node)
  CallFunction(o5053, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5054.Value ~= True) then
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
o5054 = { [nil] = {}, GetCalculated = function()
  if not (o1875.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5054.SetStateValue(o5054.GetCalculated())
end, StartCalculate = function()
  o5054["Value"] = o5054.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5054.Value == L0) then
    DelayedFunction(19, o5054, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5054.Value == L0) then
    o5054["Value"] = L0
    CallFunction(o5053, "ProcesseStateChange")
  end
end }
S_o5056 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5056, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Game_PlayMusic(GetGameNode(), "track4")
  CallFunction(o5056, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 16, "Code3")
  else
    CallFunction(o5056, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Game_PlayMusic(GetGameNode(), "track5")
  CallFunction(o5056, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5057.Value ~= True) then
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
o5057 = { [nil] = {}, GetCalculated = function()
  if not (o2454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5057.SetStateValue(o5057.GetCalculated())
end, StartCalculate = function()
  o5057["Value"] = o5057.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5057.Value == L0) then
    DelayedFunction(8, o5057, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5057.Value == L0) then
    o5057["Value"] = L0
    CallFunction(o5056, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 198)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_AtacamaG", S_o30)
  o64 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dock_1", S_o64)
  o98 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem01a_1", S_o98)
  o132 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem01a_2", S_o132)
  o166 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem01a_3", S_o166)
  o200 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem03a_1", S_o200)
  o234 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem03a_3", S_o234)
  o268 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem03a_2", S_o268)
  o302 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem05a_1", S_o302)
  o336 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem05a_2", S_o336)
  o370 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem05a_3", S_o370)
  o404 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem06a_1", S_o404)
  o438 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_1", S_o438)
  o472 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_2", S_o472)
  o506 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem01_r_1", S_o506)
  o540 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem01_l_1", S_o540)
  o574 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem07_1", S_o574)
  o608 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai1_1", S_o608)
  o642 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker_1", S_o642)
  o676 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus1_1", S_o676)
  o710 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus2_1", S_o710)
  o744 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_1/Turm1", S_o744)
  o782 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_2/Turm1", S_o782)
  o820 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_3/Turm1", S_o820)
  o858 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_4/Turm1", S_o858)
  o896 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_5/Turm1", S_o896)
  o934 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_6/Turm1", S_o934)
  o972 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torptower_1/Turm1", S_o972)
  o1010 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torptower_2/Turm1", S_o1010)
  o1048 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_7/Turm1", S_o1048)
  o1086 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_8/Turm1", S_o1086)
  o1124 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_9/Turm1", S_o1124)
  o1162 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_10/Turm1", S_o1162)
  o1200 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_11/Turm1", S_o1200)
  o1238 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_12/Turm1", S_o1238)
  o1276 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_13/Turm1", S_o1276)
  o1314 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_14/Turm1", S_o1314)
  o1352 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_15/Turm1", S_o1352)
  o1390 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_16/Turm1", S_o1390)
  o1428 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_17/Turm1", S_o1428)
  o1466 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torptower_3/Turm1", S_o1466)
  o1504 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torptower_4/Turm1", S_o1504)
  o1542 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torptower_5/Turm1", S_o1542)
  o1580 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vent_1", S_o1580)
  o1614 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vent_2", S_o1614)
  o1648 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vent_3", S_o1648)
  o1682 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vent_4", S_o1682)
  o1716 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_geb_addon01_1", S_o1716)
  o1750 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_geb_add_china_big_1", S_o1750)
  o1784 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element06a_1", S_o1784)
  o1818 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_brainfire_1", S_o1818)
  o1821.Start()
  o1823.Start()
  o1853 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Respawn_Pos1", S_o1853)
  o1854 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Respawn_Pos2", S_o1854)
  o1855 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Respawn_Pos3", S_o1855)
  o1856 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Respawn_Pos4", S_o1856)
  o1857 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Respawn_Pos5", S_o1857)
  o1858 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o1858)
  o1867.Start()
  o1873.Start()
  o1909 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TornadoZone_Directory"), "CreoleGirl", S_o1909)
  o1916.Start()
  o1959 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TornadoZone_Directory"), "tz_fregatte_1", S_o1959)
  o2006 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TornadoZone_Directory"), "tz_bomber_1_1", S_o2006)
  o2054 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TornadoZone_Directory"), "tz_scout2v2_1_1", S_o2054)
  o2102 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TornadoZone_Directory"), "tz_scout2v2_1_2", S_o2102)
  o2150 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TornadoZone_Directory"), "tz_tank1_1_1", S_o2150)
  o2189 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TornadoZone_Directory"), "tz_tank1_1_2", S_o2189)
  o2228 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TornadoZone_Directory"), "tz_tank1_1_3", S_o2228)
  o2267 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TornadoZone_Directory"), "tz_tank2_1_1", S_o2267)
  o2306 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TornadoZone_Directory"), "tz_scout2v3_1", S_o2306)
  o2354 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TornadoZone_Directory"), "tz_scout2v3_2", S_o2354)
  o2402 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TornadoZone_Directory"), "tz_scout2v3_3", S_o2402)
  o2450 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "MagmaEater", S_o2450)
  o2454.Start()
  o2456.Start()
  o2460.Start()
  o2498 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_bomber_1_1", S_o2498)
  o2502.Start()
  o2515.Start()
  o2546 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout1_1_1", S_o2546)
  o2563.Start()
  o2594 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout1_1_2", S_o2594)
  o2611.Start()
  o2642 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout1_1_3", S_o2642)
  o2659.Start()
  o2690 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_fregatte_1_1", S_o2690)
  o2706.Start()
  o2737 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_tank_1", S_o2737)
  o2747.Start()
  o2776 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_tank_2", S_o2776)
  o2786.Start()
  o2815 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_tank_3", S_o2815)
  o2825.Start()
  o2854 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_bomber_2_1", S_o2854)
  o2871.Start()
  o2902 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout2v1_2_1", S_o2902)
  o2919.Start()
  o2950 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout2v1_2_2", S_o2950)
  o2967.Start()
  o2998 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout2v1_2_3", S_o2998)
  o3015.Start()
  o3046 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout2v1_2_4", S_o3046)
  o3063.Start()
  o3094 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout1_bf_1", S_o3094)
  o3111.Start()
  o3142 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout2v1_bf_1", S_o3142)
  o3159.Start()
  o3190 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout2v1_bf_2", S_o3190)
  o3207.Start()
  o3238 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_tank_bf_1", S_o3238)
  o3248.Start()
  o3277 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_tank_bf_2", S_o3277)
  o3287.Start()
  o3316 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_bomber_bf_1", S_o3316)
  o3333.Start()
  o3364 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_fregatte_3_1", S_o3364)
  o3381.Start()
  o3412 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout1_3_1", S_o3412)
  o3429.Start()
  o3460 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout1_3_2", S_o3460)
  o3477.Start()
  o3508 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout1_3_3", S_o3508)
  o3525.Start()
  o3556 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout1_3_4", S_o3556)
  o3573.Start()
  o3604 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout1_3_5", S_o3604)
  o3621.Start()
  o3652 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_bomber_3_1", S_o3652)
  o3669.Start()
  o3700 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_bomber_3_2", S_o3700)
  o3717.Start()
  o3748 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_bomber_3_3", S_o3748)
  o3765.Start()
  o3796 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_bomber_c_1", S_o3796)
  o3813.Start()
  o3844 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout1_c_1", S_o3844)
  o3861.Start()
  o3892 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_tank_c_1", S_o3892)
  o3902.Start()
  o3931 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_tank_c_2", S_o3931)
  o3941.Start()
  o3970 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_fregatte_4_1", S_o3970)
  o3987.Start()
  o4018 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout1_4_1", S_o4018)
  o4035.Start()
  o4066 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout1_4_2", S_o4066)
  o4083.Start()
  o4114 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout1_4_3", S_o4114)
  o4131.Start()
  o4162 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout1_4_4", S_o4162)
  o4179.Start()
  o4210 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout1_4_5", S_o4210)
  o4227.Start()
  o4258 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout1_4_6", S_o4258)
  o4306 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout1_4_7", S_o4306)
  o4354 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout1_4_8", S_o4354)
  o4402 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout1_4_9", S_o4402)
  o4450 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_bomber_4_1", S_o4450)
  o4467.Start()
  o4498 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout2v1_5_1", S_o4498)
  o4516.Start()
  o4547 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout2v1_5_2", S_o4547)
  o4565.Start()
  o4596 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout2v1_5_3", S_o4596)
  o4614.Start()
  o4645 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout2v1_5_4", S_o4645)
  o4663.Start()
  o4694 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler_Directory"), "cra_scout2v1_5_5", S_o4694)
  o4712.Start()
  o4743 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "DeGrange_c5_1", S_o4743)
  o4794 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Harper_c5_1", S_o4794)
  o4845 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Pico_c5_1", S_o4845)
  o4896 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Bonham_c5_1", S_o4896)
  o4947 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Chaka_c5_1", S_o4947)
  o4998 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_01_1", S_o4998)
  o5003 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_02_1", S_o5003)
  o5008 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_03_1", S_o5008)
  o5013 = BindEasy(Node_Find("/"), "Camera", S_o5013)
  o5016 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_1", S_o5016)
  o5017 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_2", S_o5017)
  o5018 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_1", S_o5018)
  o5019 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_3", S_o5019)
  o5020 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_4", S_o5020)
  o5021 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_2", S_o5021)
  o5022 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_5", S_o5022)
  o5024 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_6", S_o5024)
  o5025 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_7", S_o5025)
  o5040.Start()
  o5026 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_V", S_o5026)
  o5030 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_A", S_o5030)
  o5033 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_Intro_V", S_o5033)
  o5041 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_Intro_A", S_o5041)
  o5045 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter3_Intro_V", S_o5045)
  o5049 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter3_Intro_A", S_o5049)
  o5053 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter3_Extro", S_o5053)
  o5056 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter4_MagmaEater", S_o5056)
  o5014 = { {}, o1858, o4947, o4743, o4845, o4896, o4794 }()
  o5023 = { {}, o1858 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end