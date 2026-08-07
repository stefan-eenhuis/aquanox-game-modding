-- dekompiliert aus map\5h4\script\5h4.sco
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
  Game_SetTerrainDepth(node0, 5835)
  Game_SetDecompressionHeight(node0, 700)
  Game_SetAmbientLight(node0, 0.070588, 0.12549, 0.015686)
  Game_SetParallelLightT(node0, 0.141176, 0.25098, 0.031373)
  Game_SetParallelLightB(node0, 0.666667, 0.443137, 0.172549)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_5H4_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track08_sad.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_track06_nointro.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_badend.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_sfx_matrixdist2.sam", 3)
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
  Body_SetCS(node58, MAT_Vector3(2656.67154, 1767.81318, 448.1572), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node58, "osd/des/des_brainfire.osd")
  Body_SetFriendOrFoeID(node58, 5)
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
  node62 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node7, node62)
  Node_ParseIniFile(node62, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node62, "map/3H3/Terrain/coral01.tga")
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_fx_plant", "fungus_01_1")
  Node_AddSon(node7, node63)
  Node_ParseIniFile(node63, "osd/fx_plant/fungus_01.osd")
  FX_Plant_SetMap(node63, "map/3H3/Terrain/fungus01.tga")
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_fx_plant", "fungus_02_1")
  Node_AddSon(node7, node64)
  Node_ParseIniFile(node64, "osd/fx_plant/fungus_02.osd")
  FX_Plant_SetMap(node64, "map/3H3/Terrain/fungus02.tga")
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node7, node65)
  Node_ParseIniFile(node65, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node65, "map/3H3/Terrain/grass01.tga")
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node7, node66)
  Node_ParseIniFile(node66, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node66, "map/3H3/Terrain/stone01.tga")
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node67)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node67, node68)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node67, node69)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("NOD_PatrolArea", "BrainfireBattle_PatrolArea")
  Node_AddSon(node69, node70)
  PatrolArea_SetPosition(node70, MAT_Vector3(2677.806146, 1844.691046, 315.873638))
  PatrolArea_SetRadius(node70, 300)
  PatrolArea_SetMinZ(node70, -50)
  PatrolArea_SetMaxZ(node70, 50)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("NOD_PatrolArea", "BrainfireBattle_TriggerArea")
  Node_AddSon(node69, node71)
  PatrolArea_SetPosition(node71, MAT_Vector3(2681.607567, 1792.690238, 127.655845))
  PatrolArea_SetRadius(node71, 450)
  PatrolArea_SetMinZ(node71, -105)
  PatrolArea_SetMaxZ(node71, 565)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("NOD_PatrolArea", "BrainfireBattle_FollowArea")
  Node_AddSon(node69, node72)
  PatrolArea_SetPosition(node72, MAT_Vector3(2681.608, 1792.69, 127.6558))
  PatrolArea_SetRadius(node72, 600)
  PatrolArea_SetMinZ(node72, -105)
  PatrolArea_SetMaxZ(node72, 565)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("NOD_PatrolArea", "BrainfireBattle_FollowArea2")
  Node_AddSon(node69, node73)
  PatrolArea_SetPosition(node73, MAT_Vector3(2681.608, 1792.69, 127.6558))
  PatrolArea_SetRadius(node73, 3000)
  PatrolArea_SetMinZ(node73, -105)
  PatrolArea_SetMaxZ(node73, 565)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("NOD_Position", "Respawn_Pos_1")
  Node_AddSon(node69, node74)
  Position_SetPosition(node74, MAT_Vector3(2489.257432, 1550.478039, 500))
  Position_SetRadius(node74, 5)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("NOD_Position", "Respawn_Pos_2")
  Node_AddSon(node69, node75)
  Position_SetPosition(node75, MAT_Vector3(2560.112956, 1519.993461, 480.841667))
  Position_SetRadius(node75, 5)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("NOD_Position", "Respawn_Pos_3")
  Node_AddSon(node69, node76)
  Position_SetPosition(node76, MAT_Vector3(2424.992339, 1596.616302, 456.319034))
  Position_SetRadius(node76, 5)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("NOD_Path", "TechB_DockOnPath_1")
  Node_AddSon(node69, node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node77, node78)
  Position_SetPosition(node78, MAT_Vector3(2680.209, 2241.510519, 497))
  Position_SetRadius(node78, 5)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node77, node79)
  Position_SetPosition(node79, MAT_Vector3(2806.820596, 2111.936541, 443.126569))
  Position_SetRadius(node79, 5)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node77, node80)
  Position_SetPosition(node80, MAT_Vector3(2857.079295, 1896.073505, 419.67147))
  Position_SetRadius(node80, 5)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("NOD_Path", "DockOn_Path1")
  Node_AddSon(node69, node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node81, node82)
  Position_SetPosition(node82, MAT_Vector3(2805.337401, 1766.418775, 452.933498))
  Position_SetRadius(node82, 5)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node81, node83)
  Position_SetPosition(node83, MAT_Vector3(2705.415583, 1766.667277, 452.846456))
  Position_SetRadius(node83, 5)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("NOD_Path", "DockApproach_Path1")
  Node_AddSon(node69, node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node84, node85)
  Position_SetPosition(node85, MAT_Vector3(2840.235635, 1770.451422, 452.9335))
  Position_SetRadius(node85, 5)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node84, node86)
  Position_SetPosition(node86, MAT_Vector3(2927.992275, 1806.369795, 452.8465))
  Position_SetRadius(node86, 5)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_PatrolArea", "DockArea")
  Node_AddSon(node69, node87)
  PatrolArea_SetPosition(node87, MAT_Vector3(2980.210587, 1790.244817, 452.30916))
  PatrolArea_SetRadius(node87, 100)
  PatrolArea_SetMinZ(node87, -20)
  PatrolArea_SetMaxZ(node87, 20)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Position", "Respawn_Pos_4")
  Node_AddSon(node69, node88)
  Position_SetPosition(node88, MAT_Vector3(2489.257, 1550.478, 500))
  Position_SetRadius(node88, 5)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Position", "Respawn_Pos_5")
  Node_AddSon(node69, node89)
  Position_SetPosition(node89, MAT_Vector3(2560.113, 1519.993, 480.8417))
  Position_SetRadius(node89, 5)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Position", "Respawn_Pos_6")
  Node_AddSon(node69, node90)
  Position_SetPosition(node90, MAT_Vector3(2424.992, 1596.616, 456.319))
  Position_SetRadius(node90, 5)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node67, node91)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node67, node92)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Trigger", "TechBomberDockOn")
  Node_AddSon(node92, node93)
  Body_SetFriendOrFoeID(node93, 0)
  Body_SetCS(node93, MAT_Vector3(2711.457984, 1767.492934, 456.026408), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node93, 10, 25, 15)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node67, node94)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node94, node95)
  Body_SetCS(node95, MAT_Vector3(2585.795854, 2738.163907, 450), MAT_Vector3(-178.835823, 0, 0))
  Node_ParseIniFile(node95, "osd/pla/pla_succubus2.osd")
  Body_SetFriendOrFoeID(node95, 1)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_vessel", "atl_ghost_1")
  Node_AddSon(node94, node96)
  Body_SetCS(node96, MAT_Vector3(2642.789864, 1964.638113, 616.624981), MAT_Vector3(-179.820826, 0, 0))
  Node_ParseIniFile(node96, "osd/atl/atl_ghost.osd")
  Body_SetFriendOrFoeID(node96, 5)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_vessel", "tz_techbomber")
  Node_AddSon(node94, node97)
  Body_SetCS(node97, MAT_Vector3(2680.717654, 2559.438099, 497), MAT_Vector3(178.65915, 0, 0))
  Node_ParseIniFile(node97, "osd/atl/atl_techbomber.osd")
  Body_SetFriendOrFoeID(node97, 6)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_vessel", "atl_scout2_1")
  Node_AddSon(node94, node98)
  Body_SetCS(node98, MAT_Vector3(2598.712199, 1976.107875, 284.402801), MAT_Vector3(-26.878384, 0, 0))
  Node_ParseIniFile(node98, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node98, 3)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_vessel", "atl_scout2_respawn_1")
  Node_AddSon(node94, node99)
  Body_SetCS(node99, MAT_Vector3(2525.384328, 1888.773919, 284.4028), MAT_Vector3(-48.883696, 0, 0))
  Node_ParseIniFile(node99, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node99, 7)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_vessel", "atl_scout1_1")
  Node_AddSon(node94, node100)
  Body_SetCS(node100, MAT_Vector3(2799.012193, 1933.462554, 290.994052), MAT_Vector3(36.384045, 0, 0))
  Node_ParseIniFile(node100, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node100, 3)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_vessel", "atl_scout1_respawn_1")
  Node_AddSon(node94, node101)
  Body_SetCS(node101, MAT_Vector3(2554.311792, 1831.298603, 290.9941), MAT_Vector3(-8.472074, 0, 0))
  Node_ParseIniFile(node101, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node101, 7)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_vessel", "atl_scout1_respawn_2")
  Node_AddSon(node94, node102)
  Body_SetCS(node102, MAT_Vector3(2491.972137, 1843.17326, 290.9941), MAT_Vector3(-8.472074, 0, 0))
  Node_ParseIniFile(node102, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node102, 3)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_vessel", "atl_bomber_1")
  Node_AddSon(node94, node103)
  Body_SetCS(node103, MAT_Vector3(2713.057135, 1964.715386, 309.119994), MAT_Vector3(69.959923, 0, 0))
  Node_ParseIniFile(node103, "osd/atl/atl_bomber.osd")
  Body_SetFriendOrFoeID(node103, 3)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_vessel", "atl_bomber_respawn_1")
  Node_AddSon(node94, node104)
  Body_SetCS(node104, MAT_Vector3(2818.517022, 1814.764031, 309.12), MAT_Vector3(18.497287, 0, 0))
  Node_ParseIniFile(node104, "osd/atl/atl_bomber.osd")
  Body_SetFriendOrFoeID(node104, 3)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_vessel", "atl_fregatte_1")
  Node_AddSon(node94, node105)
  Body_SetCS(node105, MAT_Vector3(2572.333385, 1917.066405, 526.325657), MAT_Vector3(45.337194, 0, 0))
  Node_ParseIniFile(node105, "osd/atl/atl_fregatte.osd")
  Body_SetFriendOrFoeID(node105, 3)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_vessel", "wng_bonham_c5_1")
  Node_AddSon(node94, node106)
  Body_SetCS(node106, MAT_Vector3(2551.047108, 2772.668613, 450), MAT_Vector3(-177.307076, 0, 0))
  Node_ParseIniFile(node106, "osd/wng/wng_bonham_c5.osd")
  Body_SetFriendOrFoeID(node106, 2)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_vessel", "wng_harper_c5_1")
  Node_AddSon(node94, node107)
  Body_SetCS(node107, MAT_Vector3(2614.010126, 2784.699763, 450), MAT_Vector3(-178.079487, 0, 0))
  Node_ParseIniFile(node107, "osd/wng/wng_harper_c5.osd")
  Body_SetFriendOrFoeID(node107, 2)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_vessel", "wng_chaka_c5_1")
  Node_AddSon(node94, node108)
  Body_SetCS(node108, MAT_Vector3(2547.785876, 2742.738906, 702.335), MAT_Vector3(-179.222122, 0, 0))
  Node_ParseIniFile(node108, "osd/wng/wng_chaka_c5.osd")
  Body_SetFriendOrFoeID(node108, 2)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_vessel", "atl_scout2_2_1")
  Node_AddSon(node94, node109)
  Body_SetCS(node109, MAT_Vector3(2853.742561, 1385.852343, 286.749907), MAT_Vector3(0.029317, 0, 0))
  Node_ParseIniFile(node109, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node109, 3)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_vessel", "atl_scout2_2_2")
  Node_AddSon(node94, node110)
  Body_SetCS(node110, MAT_Vector3(2835.821478, 1370.118605, 286.7499), MAT_Vector3(0.029317, 0, 0))
  Node_ParseIniFile(node110, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node110, 3)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_vessel", "atl_scout2_2_3")
  Node_AddSon(node94, node111)
  Body_SetCS(node111, MAT_Vector3(2815.702297, 1344.826916, 286.7499), MAT_Vector3(0.029317, 0, 0))
  Node_ParseIniFile(node111, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node111, 7)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_vessel", "atl_scout2_2_4")
  Node_AddSon(node94, node112)
  Body_SetCS(node112, MAT_Vector3(2794.433953, 1312.63699, 286.7499), MAT_Vector3(0.029317, 0, 0))
  Node_ParseIniFile(node112, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node112, 3)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_vessel", "atl_scout2_2_5")
  Node_AddSon(node94, node113)
  Body_SetCS(node113, MAT_Vector3(2772.609992, 1286.056477, 286.7499), MAT_Vector3(0.029317, 0, 0))
  Node_ParseIniFile(node113, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node113, 3)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_vessel", "atl_scout1_1_1")
  Node_AddSon(node94, node114)
  Body_SetCS(node114, MAT_Vector3(2766.88, 1419.345, 290.9941), MAT_Vector3(-0.390539, 0, 0))
  Node_ParseIniFile(node114, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node114, 3)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_vessel", "atl_scout1_1_2")
  Node_AddSon(node94, node115)
  Body_SetCS(node115, MAT_Vector3(2742.417, 1388.866, 290.9941), MAT_Vector3(-0.390539, 0, 0))
  Node_ParseIniFile(node115, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node115, 3)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_vessel", "atl_scout1_1_3")
  Node_AddSon(node94, node116)
  Body_SetCS(node116, MAT_Vector3(2781.317, 1391.273, 290.9941), MAT_Vector3(-0.390539, 0, 0))
  Node_ParseIniFile(node116, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node116, 3)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_vessel", "atl_bomber_2_1")
  Node_AddSon(node94, node117)
  Body_SetCS(node117, MAT_Vector3(2903.14917, 1391.631222, 309.12), MAT_Vector3(2.430769, 0, 0))
  Node_ParseIniFile(node117, "osd/atl/atl_bomber.osd")
  Body_SetFriendOrFoeID(node117, 3)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_vessel", "atl_scout1_2_1")
  Node_AddSon(node94, node118)
  Body_SetCS(node118, MAT_Vector3(2396.121075, 1672.840637, 290.9941), MAT_Vector3(-65.834809, 0, 0))
  Node_ParseIniFile(node118, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node118, 3)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_vessel", "atl_scout1_2_2")
  Node_AddSon(node94, node119)
  Body_SetCS(node119, MAT_Vector3(2369.008501, 1678.727601, 290.9941), MAT_Vector3(-65.599026, 0, 0))
  Node_ParseIniFile(node119, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node119, 3)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_vessel", "atl_scout1_2_3")
  Node_AddSon(node94, node120)
  Body_SetCS(node120, MAT_Vector3(2389.907537, 1640.306452, 290.9941), MAT_Vector3(-61.377179, 0, 0))
  Node_ParseIniFile(node120, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node120, 3)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_vessel", "atl_scout1_2_4")
  Node_AddSon(node94, node121)
  Body_SetCS(node121, MAT_Vector3(2354.843978, 1643.75492, 290.9941), MAT_Vector3(-61.37718, 0, 0))
  Node_ParseIniFile(node121, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node121, 3)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_vessel", "atl_scout1_2_5")
  Node_AddSon(node94, node122)
  Body_SetCS(node122, MAT_Vector3(2332.426016, 1679.393846, 290.9941), MAT_Vector3(-61.37718, 0, 0))
  Node_ParseIniFile(node122, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node122, 3)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_vessel", "atl_scout1_2_6")
  Node_AddSon(node94, node123)
  Body_SetCS(node123, MAT_Vector3(2362.891481, 1605.242053, 290.9941), MAT_Vector3(-61.37718, 0, 0))
  Node_ParseIniFile(node123, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node123, 7)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node124)
  Camera_SetBackPlane(node124, 512)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_Scenario", "IngameSequences")
  Node_AddSon(node0, node125)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node125, node126)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node125, node127)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("NOD_Path", "PlayerPath_1")
  Node_AddSon(node127, node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node128, node129)
  Position_SetPosition(node129, MAT_Vector3(2561.066131, 2834.093302, 450))
  Position_SetRadius(node129, 5)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node128, node130)
  Position_SetPosition(node130, MAT_Vector3(2599.714722, 2503.242178, 450))
  Position_SetRadius(node130, 5)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node128, node131)
  Position_SetPosition(node131, MAT_Vector3(2624.432381, 2292.321944, 450))
  Position_SetRadius(node131, 5)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node127, node132)
  Position_SetPosition(node132, MAT_Vector3(2519.741656, 3040.925096, 460))
  Position_SetRadius(node132, 5)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("NOD_Position", "LookFrom_2")
  Node_AddSon(node127, node133)
  Position_SetPosition(node133, MAT_Vector3(2625.202179, 2105.790882, 460))
  Position_SetRadius(node133, 5)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("NOD_Position", "LookFrom_3")
  Node_AddSon(node127, node134)
  Position_SetPosition(node134, MAT_Vector3(2577.415425, 2497.146573, 460))
  Position_SetRadius(node134, 5)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("NOD_Position", "LookAt_1")
  Node_AddSon(node127, node135)
  Position_SetPosition(node135, MAT_Vector3(2672.988575, 1767.165441, 480))
  Position_SetRadius(node135, 5)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("NOD_Position", "LookFrom_4")
  Node_AddSon(node127, node136)
  Position_SetPosition(node136, MAT_Vector3(2700.177064, 2430.410576, 497.144842))
  Position_SetRadius(node136, 5)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("NOD_Position", "LookFrom_5")
  Node_AddSon(node127, node137)
  Position_SetPosition(node137, MAT_Vector3(2731.217282, 1905.025484, 582.007166))
  Position_SetRadius(node137, 5)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("NOD_Path", "TechBomber_Path_1")
  Node_AddSon(node127, node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node138, node139)
  Position_SetPosition(node139, MAT_Vector3(2680.208952, 2404.643628, 497))
  Position_SetRadius(node139, 5)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node138, node140)
  Position_SetPosition(node140, MAT_Vector3(2679.938798, 2310.498335, 497))
  Position_SetRadius(node140, 5)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_Path", "Ghost_Path_1")
  Node_AddSon(node127, node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node141, node142)
  Position_SetPosition(node142, MAT_Vector3(2643.749065, 2174.672662, 650.294672))
  Position_SetRadius(node142, 55)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node125, node143)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Director", "Chapter1_Intro_V")
  Node_AddSon(node143, node144)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Director", "Chapter1_Intro_A")
  Node_AddSon(node143, node145)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Director", "Chapter1_Intro_TwoMinutesToGo")
  Node_AddSon(node143, node146)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Director", "Chapter1_Intro_OneMinuteToGo")
  Node_AddSon(node143, node147)
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Director", "Chapter2_Intro_V")
  Node_AddSon(node143, node148)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Director", "Chapter2_Intro_Music")
  Node_AddSon(node143, node149)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Director", "Chapter2_BomberDocked")
  Node_AddSon(node143, node150)
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Director", "Chapter2_10sec")
  Node_AddSon(node143, node151)
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Director", "Chapter2_20sec")
  Node_AddSon(node143, node152)
  Node_EnterSimulation(node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Director", "Chapter2_30sec")
  Node_AddSon(node143, node153)
  Node_EnterSimulation(node153)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Director", "Chapter2_40sec")
  Node_AddSon(node143, node154)
  Node_EnterSimulation(node154)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Director", "Chapter2_50sec")
  Node_AddSon(node143, node155)
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Director", "Chapter2_60sec")
  Node_AddSon(node143, node156)
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Director", "Chapter2_70sec")
  Node_AddSon(node143, node157)
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Director", "Chapter2_DockFailed")
  Node_AddSon(node143, node158)
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Director", "Chapter2_Extro_V")
  Node_AddSon(node143, node159)
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Director", "Chapter2_ExtroAddOn_V")
  Node_AddSon(node143, node160)
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Director", "Chapter2_Extro_A")
  Node_AddSon(node143, node161)
  Node_EnterSimulation(node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Director", "Chapter2_Extro_Music")
  Node_AddSon(node143, node162)
  Node_EnterSimulation(node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node125, node163)
  Node_EnterSimulation(node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node125, node164)
  Node_EnterSimulation(node164)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, N)
SetEnemyMatrixElement(2, 0, N)
SetEnemyMatrixElement(3, 0, E)
SetEnemyMatrixElement(4, 0, N)
SetEnemyMatrixElement(5, 0, E)
SetEnemyMatrixElement(6, 0, F)
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
SetEnemyMatrixElement(4, 1, N)
SetEnemyMatrixElement(5, 1, N)
SetEnemyMatrixElement(6, 1, F)
SetEnemyMatrixElement(7, 1, E)
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
SetEnemyMatrixElement(4, 2, N)
SetEnemyMatrixElement(5, 2, N)
SetEnemyMatrixElement(6, 2, F)
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
SetEnemyMatrixElement(5, 3, F)
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
SetEnemyMatrixElement(6, 5, E)
SetEnemyMatrixElement(7, 5, N)
SetEnemyMatrixElement(8, 5, N)
SetEnemyMatrixElement(9, 5, N)
SetEnemyMatrixElement(10, 5, N)
SetEnemyMatrixElement(11, 5, N)
SetEnemyMatrixElement(12, 5, N)
SetEnemyMatrixElement(13, 5, N)
SetEnemyMatrixElement(14, 5, N)
SetEnemyMatrixElement(15, 5, N)
SetEnemyMatrixElement(0, 6, F)
SetEnemyMatrixElement(1, 6, F)
SetEnemyMatrixElement(2, 6, F)
SetEnemyMatrixElement(3, 6, E)
SetEnemyMatrixElement(4, 6, N)
SetEnemyMatrixElement(5, 6, E)
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
SetEnemyMatrixElement(1, 7, E)
SetEnemyMatrixElement(2, 7, N)
SetEnemyMatrixElement(3, 7, F)
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
                                                                                                        if not (o1874.Value ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
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
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
end, ChangeTo1 = function()
  Game_MissionEnd(GetGameNode(), 1)
  Script_Log("RC1OK_092501_2019")
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
                                                                                                      if not (o1849.Value == True) then
                                                                                                        if not (False == True) then
                                                                                                          if not (False == True) then
                                                                                                            if not (o2000.Value == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
                                                                                                                      if not (False == True) then
                                                                                                                        if not (False == True) then
                                                                                                                          if not (False == True) then
                                                                                                                            if not (False == True) then
                                                                                                                              if not (False == True) then
                                                                                                                                if not (False == True) then
                                                                                                                                  if not (False == True) then
                                                                                                                                    if not (False == True) then
                                                                                                                                      if not (False == True) then
                                                                                                                                        if not (False == True) then
                                                                                                                                          if not (False == True) then
                                                                                                                                            if not (False == True) then
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
end, ReCalculate = function()
  o26.SetStateValue(o26.GetCalculated())
end, StartCalculate = function()
  o26["Value"] = o26.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "track3")
  SendRadioMessageTake(o1866.Node, o1866.Node, 1167)
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
end, SetStateValue_Destroyed = function(L0, L1)
  o1821.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
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
  o1849.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1821.Value == L0) then
    o1821["Value"] = L0
    o1849.ReCalculate()
  end
end }
o1849 = { [nil] = {}, GetCalculated = function()
  if not (o1821.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1849.SetStateValue(o1849.GetCalculated())
end, StartCalculate = function()
  o1849["Value"] = o1849.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1849.Value == L0) then
    o1849["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o1853 = { [nil] = {}, Start = function(L0)

end }
S_o1854 = { [nil] = {}, Start = function(L0)

end }
S_o1855 = { [nil] = {}, Start = function(L0)

end }
o1856 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/DockApproach_Path1", "/Scenario_Dynamic/Navigation/DockOn_Path1", "/Scenario_Dynamic/Navigation/DockArea")
S_o1857 = { [nil] = {}, Start = function(L0)

end }
S_o1858 = { [nil] = {}, Start = function(L0)

end }
S_o1859 = { [nil] = {}, Start = function(L0)

end }
S_o1860 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1860, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1860, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1860, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "tz_techbomber", "", "", "", False, False, True)
  CallFunction(o1860, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1860, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1860, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1865.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1865 = { [nil] = {}, Start = function()
  o1865["Value"] = False
  o2982.StartCalculate()
  o3031.StartCalculate()
  o3080.StartCalculate()
  o3129.StartCalculate()
  o3178.StartCalculate()
  o3227.StartCalculate()
  o3304.StartCalculate()
  o3307.StartCalculate()
  o3310.StartCalculate()
  o3313.StartCalculate()
  o3316.StartCalculate()
  o3319.StartCalculate()
  o3322.StartCalculate()
  o3325.StartCalculate()
  o3328.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1865.Value == L0) then
    o1865["Value"] = L0
    o2982.ReCalculate()
    o3031.ReCalculate()
    o3080.ReCalculate()
    o3129.ReCalculate()
    o3178.ReCalculate()
    o3227.ReCalculate()
    o3304.ReCalculate()
    o3307.ReCalculate()
    o3310.ReCalculate()
    o3313.ReCalculate()
    o3316.ReCalculate()
    o3319.ReCalculate()
    o3322.ReCalculate()
    o3325.ReCalculate()
    o3328.ReCalculate()
  end
end }
S_o1866 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_lasergatlin", 1)
  Body_AddItem(L0.Node, "gun_sizzler", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_energy", 3000)
  Body_AddItem(L0.Node, "torpedo_bigbang1", 3)
  Body_AddItem(L0.Node, "torpedo_maneater", 9)
  Body_AddItem(L0.Node, "device_generator", 1)
  Body_AddItem(L0.Node, "device_repair", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 6)
  CallFunction(o1866, "Code9")
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
o1871 = { [nil] = {}, Start = function()
  o1871["Value"] = False
  o3290.StartCalculate()
  o3293.StartCalculate()
  o3296.StartCalculate()
  o3300.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1871.Value == L0) then
    o1871["Value"] = L0
    o3290.ReCalculate()
    o3293.ReCalculate()
    o3296.ReCalculate()
    o3300.ReCalculate()
  end
end }
o1872 = { [nil] = {}, Start = function()
  o1872["Value"] = False
  o1903.StartCalculate()
  o3331.StartCalculate()
  o3338.StartCalculate()
  o3343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1872.Value == L0) then
    o1872["Value"] = L0
    o1903.ReCalculate()
    o3331.ReCalculate()
    o3338.ReCalculate()
    o3343.ReCalculate()
  end
end }
o1873 = { [nil] = {}, Start = function()
  o1873["Value"] = False
  o1874.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1873.Value == L0) then
    o1873["Value"] = L0
    o1874.ReCalculate()
  end
end }
o1874 = { [nil] = {}, GetCalculated = function()
  if not (o1873.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1874.SetStateValue(o1874.GetCalculated())
end, StartCalculate = function()
  o1874["Value"] = o1874.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1874.Value == L0) then
    o1874["Value"] = L0
    o2.ReCalculate()
  end
end }
S_o1902 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1902, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1902, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1902, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o1902, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o1902, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o1818.Node, "DP_ver_1", "DP_ver_1", 20, 20, 1e+32, "Code6")
  else
    CallFunction(o1902, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.UnInfiltrate(L0, "Code7")
  else
    CallFunction(o1902, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code8")
  else
    CallFunction(o1902, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1902, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  StopAllActiveBehaviours(L0)
  CallFunction(o1902, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code11")
  else
    CallFunction(o1902, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Ghost_Path_1", 1, 1 } }("Code12")
  else
    CallFunction(o1902, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code13")
  else
    CallFunction(o1902, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
end, SetStateValue_Born = function(L0, L1)
  o1908.SetStateValue(L1)
end, SetStateValue_DipoledOut = function(L0, L1)
  o1910.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1903.Value ~= True) then
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
o1903 = { [nil] = {}, GetCalculated = function()
  if not (o1872.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1903.SetStateValue(o1903.GetCalculated())
end, StartCalculate = function()
  o1903["Value"] = o1903.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1903.Value == L0) then
    DelayedFunction(19.5, o1903, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1903.Value == L0) then
    o1903["Value"] = L0
    CallFunction(o1902, "ProcesseStateChange")
  end
end }
o1908 = { [nil] = {}, Start = function()
  o1908["Value"] = False
  o1953.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1908.Value == L0) then
    o1908["Value"] = L0
    o1953.ReCalculate()
  end
end }
o1910 = { [nil] = {}, Start = function()
  o1910["Value"] = False
  o3335.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1910.Value == L0) then
    o1910["Value"] = L0
    o3335.ReCalculate()
  end
end }
S_o1952 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1952, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1952, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1952, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o1952, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1952, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1952, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o1952, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TechB_DockOnPath_1", 1, 1 } }("Code8")
  else
    CallFunction(o1952, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5 } }("Code9")
  else
    CallFunction(o1952, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  o1975.SetStateValue(True)
  CallFunction(o1952, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o1856, nil, 1e+32, "Code11")
  else
    CallFunction(o1952, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_Born = function(L0, L1)
  o1959.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o1970.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1953.Value ~= True) then
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
o1953 = { [nil] = {}, GetCalculated = function()
  if not (o1908.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1953.SetStateValue(o1953.GetCalculated())
end, StartCalculate = function()
  o1953["Value"] = o1953.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1953.Value == L0) then
    DelayedFunction(171.564325, o1953, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1953.Value == L0) then
    o1953["Value"] = L0
    CallFunction(o1952, "ProcesseStateChange")
  end
end }
o1959 = { [nil] = {}, Start = function()
  o1959["Value"] = False
  o2053.StartCalculate()
  o2150.StartCalculate()
  o2199.StartCalculate()
  o2296.StartCalculate()
  o2541.StartCalculate()
  o2590.StartCalculate()
  o2639.StartCalculate()
  o2688.StartCalculate()
  o2737.StartCalculate()
  o2786.StartCalculate()
  o2835.StartCalculate()
  o2884.StartCalculate()
  o2933.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1959.Value == L0) then
    o1959["Value"] = L0
    o2053.ReCalculate()
    o2150.ReCalculate()
    o2199.ReCalculate()
    o2296.ReCalculate()
    o2541.ReCalculate()
    o2590.ReCalculate()
    o2639.ReCalculate()
    o2688.ReCalculate()
    o2737.ReCalculate()
    o2786.ReCalculate()
    o2835.ReCalculate()
    o2884.ReCalculate()
    o2933.ReCalculate()
  end
end }
o1970 = { [nil] = {}, Start = function()
  o1970["Value"] = False
  o2000.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1970.Value == L0) then
    o1970["Value"] = L0
    o2000.ReCalculate()
  end
end }
o1975 = { [nil] = {}, Start = function()
  o1975["Value"] = False
  o2539.StartCalculate()
  o2588.StartCalculate()
  o2637.StartCalculate()
  o2686.StartCalculate()
  o2735.StartCalculate()
  o2784.StartCalculate()
  o2833.StartCalculate()
  o2882.StartCalculate()
  o2931.StartCalculate()
  o2980.StartCalculate()
  o3029.StartCalculate()
  o3078.StartCalculate()
  o3127.StartCalculate()
  o3176.StartCalculate()
  o3225.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1975.Value == L0) then
    o1975["Value"] = L0
    o2539.ReCalculate()
    o2588.ReCalculate()
    o2637.ReCalculate()
    o2686.ReCalculate()
    o2735.ReCalculate()
    o2784.ReCalculate()
    o2833.ReCalculate()
    o2882.ReCalculate()
    o2931.ReCalculate()
    o2980.ReCalculate()
    o3029.ReCalculate()
    o3078.ReCalculate()
    o3127.ReCalculate()
    o3176.ReCalculate()
    o3225.ReCalculate()
  end
end }
o2000 = { [nil] = {}, GetCalculated = function()
  if not (o1970.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2000.SetStateValue(o2000.GetCalculated())
end, StartCalculate = function()
  o2000["Value"] = o2000.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2000.Value == L0) then
    o2000["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o2004 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2004, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2004, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2004, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Gun_SetSniperBullet(L0.Node, "bul_sizzler_p", 4)
  Gun_SetDogBullet(L0.Node, "bul_doommortar_p", 3)
  CallFunction(o2004, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "E", "", "", "", 0.75, "Code6")
  else
    CallFunction(o2004, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2052 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2052, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2052, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2052, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Gun_SetSniperBullet(L0.Node, "bul_sizzler_p", 4)
  Gun_SetDogBullet(L0.Node, "bul_doommortar_p", 3)
  CallFunction(o2052, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "E", "", "", "", 0.75, "/Scenario_Dynamic/Navigation/Respawn_Pos_3", "Code6")
  else
    CallFunction(o2052, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  CallFunction(o2052, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "E", "", "", "", 0.75, "Code8")
  else
    CallFunction(o2052, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2053.Value ~= True) then
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
o2053 = { [nil] = {}, GetCalculated = function()
  if not (o1959.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2053.SetStateValue(o2053.GetCalculated())
end, StartCalculate = function()
  o2053["Value"] = o2053.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2053.Value == L0) then
    o2053["Value"] = L0
    CallFunction(o2052, "ProcesseStateChange")
  end
end }
S_o2101 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2101, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2101, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2101, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o2101, "Code4")
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
S_o2149 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2149, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2149, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2149, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "E", "", "", "", 0.75, "/Scenario_Dynamic/Navigation/Respawn_Pos_3", "Code4")
  else
    CallFunction(o2149, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  StopAllActiveBehaviours(L0)
  CallFunction(o2149, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "E", "", "", "", 0.75, "Code6")
  else
    CallFunction(o2149, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2150.Value ~= True) then
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
o2150 = { [nil] = {}, GetCalculated = function()
  if not (o1959.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2150.SetStateValue(o2150.GetCalculated())
end, StartCalculate = function()
  o2150["Value"] = o2150.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2150.Value == L0) then
    o2150["Value"] = L0
    CallFunction(o2149, "ProcesseStateChange")
  end
end }
S_o2198 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2198, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2198, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2198, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "E", "", "", "", 0.75, "/Scenario_Dynamic/Navigation/Respawn_Pos_3", "Code4")
  else
    CallFunction(o2198, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  StopAllActiveBehaviours(L0)
  CallFunction(o2198, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "E", "", "", "", 0.75, "Code6")
  else
    CallFunction(o2198, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2199.Value ~= True) then
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
o2199 = { [nil] = {}, GetCalculated = function()
  if not (o1959.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2199.SetStateValue(o2199.GetCalculated())
end, StartCalculate = function()
  o2199["Value"] = o2199.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2199.Value == L0) then
    o2199["Value"] = L0
    CallFunction(o2198, "ProcesseStateChange")
  end
end }
S_o2247 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2247, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2247, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2247, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o2247, "Code4")
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
S_o2295 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2295, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2295, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2295, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "E", "", "", "", 0.75, "/Scenario_Dynamic/Navigation/Respawn_Pos_3", "Code4")
  else
    CallFunction(o2295, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  StopAllActiveBehaviours(L0)
  CallFunction(o2295, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "E", "", "", "", 0.75, "Code6")
  else
    CallFunction(o2295, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2296.Value ~= True) then
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
o2296 = { [nil] = {}, GetCalculated = function()
  if not (o1959.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2296.SetStateValue(o2296.GetCalculated())
end, StartCalculate = function()
  o2296["Value"] = o2296.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2296.Value == L0) then
    o2296["Value"] = L0
    CallFunction(o2295, "ProcesseStateChange")
  end
end }
S_o2344 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2344, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2344, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2344, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o2344, "Code4")
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
S_o2391 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2391, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2391, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2391, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o2391, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2391, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2391, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "E", "", "", "", 0.75, "Code7")
  else
    CallFunction(o2391, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2440 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2440, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2440, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2440, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o2440, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2440, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2440, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "E", "", "", "", 0.75, "Code7")
  else
    CallFunction(o2440, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2489 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2489, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2489, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2489, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  Gun_SetDogBullet(L0.Node, "bul_flak_p", 3)
  Gun_SetSniperBullet(L0.Node, "bul_sizzler_p", 6)
  CallFunction(o2489, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o2489, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2489, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "E", "", "", "", 0.75, "Code9")
  else
    CallFunction(o2489, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2538 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2538, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2538, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2538, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Gun_SetDogBullet(L0.Node, "bul_doommortar_p", 3)
  Gun_SetSniperBullet(L0.Node, "bul_sizzler_p", 4)
  CallFunction(o2538, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "E", "", "", "", 0.75, "Code6")
  else
    CallFunction(o2538, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "E", "", "", "", 0.75, "Code7")
  else
    CallFunction(o2538, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2541.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2539.Value ~= True) then
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
o2539 = { [nil] = {}, GetCalculated = function()
  if not (o1975.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2539.SetStateValue(o2539.GetCalculated())
end, StartCalculate = function()
  o2539["Value"] = o2539.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2539.Value == L0) then
    o2539["Value"] = L0
    CallFunction(o2538, "ProcesseStateChange")
  end
end }
o2541 = { [nil] = {}, GetCalculated = function()
  if not (o1959.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2541.SetStateValue(o2541.GetCalculated())
end, StartCalculate = function()
  o2541["Value"] = o2541.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2541.Value == L0) then
    DelayedFunction(11.545, o2541, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2541.Value == L0) then
    o2541["Value"] = L0
    CallFunction(o2538, "ProcesseStateChange")
  end
end }
S_o2587 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2587, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2587, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2587, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Gun_SetDogBullet(L0.Node, "bul_doommortar_p", 3)
  Gun_SetSniperBullet(L0.Node, "bul_sizzler_p", 4)
  CallFunction(o2587, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "E", "", "", "", 0.75, "Code6")
  else
    CallFunction(o2587, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "E", "", "", "", 0.75, "Code7")
  else
    CallFunction(o2587, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2590.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2588.Value ~= True) then
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
o2588 = { [nil] = {}, GetCalculated = function()
  if not (o1975.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2588.SetStateValue(o2588.GetCalculated())
end, StartCalculate = function()
  o2588["Value"] = o2588.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2588.Value == L0) then
    o2588["Value"] = L0
    CallFunction(o2587, "ProcesseStateChange")
  end
end }
o2590 = { [nil] = {}, GetCalculated = function()
  if not (o1959.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2590.SetStateValue(o2590.GetCalculated())
end, StartCalculate = function()
  o2590["Value"] = o2590.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2590.Value == L0) then
    DelayedFunction(11.545, o2590, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2590.Value == L0) then
    o2590["Value"] = L0
    CallFunction(o2587, "ProcesseStateChange")
  end
end }
S_o2636 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2636, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2636, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2636, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Gun_SetDogBullet(L0.Node, "bul_doommortar_p", 3)
  Gun_SetSniperBullet(L0.Node, "bul_sizzler_p", 4)
  CallFunction(o2636, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "E", "", "", "", 0.75, "Code6")
  else
    CallFunction(o2636, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "E", "", "", "", 0.75, "Code7")
  else
    CallFunction(o2636, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2639.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2637.Value ~= True) then
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
o2637 = { [nil] = {}, GetCalculated = function()
  if not (o1975.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2637.SetStateValue(o2637.GetCalculated())
end, StartCalculate = function()
  o2637["Value"] = o2637.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2637.Value == L0) then
    o2637["Value"] = L0
    CallFunction(o2636, "ProcesseStateChange")
  end
end }
o2639 = { [nil] = {}, GetCalculated = function()
  if not (o1959.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2639.SetStateValue(o2639.GetCalculated())
end, StartCalculate = function()
  o2639["Value"] = o2639.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2639.Value == L0) then
    DelayedFunction(11.545, o2639, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2639.Value == L0) then
    o2639["Value"] = L0
    CallFunction(o2636, "ProcesseStateChange")
  end
end }
S_o2685 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2685, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2685, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2685, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Gun_SetDogBullet(L0.Node, "bul_doommortar_p", 3)
  Gun_SetSniperBullet(L0.Node, "bul_sizzler_p", 4)
  CallFunction(o2685, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "E", "", "", "", 0.75, "Code6")
  else
    CallFunction(o2685, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "E", "", "", "", 0.75, "Code7")
  else
    CallFunction(o2685, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2688.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2686.Value ~= True) then
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
o2686 = { [nil] = {}, GetCalculated = function()
  if not (o1975.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2686.SetStateValue(o2686.GetCalculated())
end, StartCalculate = function()
  o2686["Value"] = o2686.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2686.Value == L0) then
    o2686["Value"] = L0
    CallFunction(o2685, "ProcesseStateChange")
  end
end }
o2688 = { [nil] = {}, GetCalculated = function()
  if not (o1959.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2688.SetStateValue(o2688.GetCalculated())
end, StartCalculate = function()
  o2688["Value"] = o2688.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2688.Value == L0) then
    DelayedFunction(11.545, o2688, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2688.Value == L0) then
    o2688["Value"] = L0
    CallFunction(o2685, "ProcesseStateChange")
  end
end }
S_o2734 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2734, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2734, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2734, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Gun_SetDogBullet(L0.Node, "bul_doommortar_p", 3)
  Gun_SetSniperBullet(L0.Node, "bul_sizzler_p", 4)
  CallFunction(o2734, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "E", "", "", "", 0.75, "Code6")
  else
    CallFunction(o2734, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "E", "", "", "", 0.75, "Code7")
  else
    CallFunction(o2734, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2737.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2735.Value ~= True) then
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
o2735 = { [nil] = {}, GetCalculated = function()
  if not (o1975.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2735.SetStateValue(o2735.GetCalculated())
end, StartCalculate = function()
  o2735["Value"] = o2735.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2735.Value == L0) then
    o2735["Value"] = L0
    CallFunction(o2734, "ProcesseStateChange")
  end
end }
o2737 = { [nil] = {}, GetCalculated = function()
  if not (o1959.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2737.SetStateValue(o2737.GetCalculated())
end, StartCalculate = function()
  o2737["Value"] = o2737.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2737.Value == L0) then
    DelayedFunction(11.545, o2737, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2737.Value == L0) then
    o2737["Value"] = L0
    CallFunction(o2734, "ProcesseStateChange")
  end
end }
S_o2783 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2783, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2783, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2783, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "tz_techbomber", "E", "", "", 0.75, "Code4")
  else
    CallFunction(o2783, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "E", "", "", "", 0.75, "Code5")
  else
    CallFunction(o2783, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2786.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2784.Value ~= True) then
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
o2784 = { [nil] = {}, GetCalculated = function()
  if not (o1975.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2784.SetStateValue(o2784.GetCalculated())
end, StartCalculate = function()
  o2784["Value"] = o2784.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2784.Value == L0) then
    o2784["Value"] = L0
    CallFunction(o2783, "ProcesseStateChange")
  end
end }
o2786 = { [nil] = {}, GetCalculated = function()
  if not (o1959.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2786.SetStateValue(o2786.GetCalculated())
end, StartCalculate = function()
  o2786["Value"] = o2786.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2786.Value == L0) then
    DelayedFunction(14.74124, o2786, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2786.Value == L0) then
    o2786["Value"] = L0
    CallFunction(o2783, "ProcesseStateChange")
  end
end }
S_o2832 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2832, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2832, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2832, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "tz_techbomber", "E", "", "", 0.75, "Code4")
  else
    CallFunction(o2832, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "E", "", "", "", 0.75, "Code5")
  else
    CallFunction(o2832, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2835.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2833.Value ~= True) then
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
o2833 = { [nil] = {}, GetCalculated = function()
  if not (o1975.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2833.SetStateValue(o2833.GetCalculated())
end, StartCalculate = function()
  o2833["Value"] = o2833.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2833.Value == L0) then
    o2833["Value"] = L0
    CallFunction(o2832, "ProcesseStateChange")
  end
end }
o2835 = { [nil] = {}, GetCalculated = function()
  if not (o1959.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2835.SetStateValue(o2835.GetCalculated())
end, StartCalculate = function()
  o2835["Value"] = o2835.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2835.Value == L0) then
    DelayedFunction(14.74124, o2835, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2835.Value == L0) then
    o2835["Value"] = L0
    CallFunction(o2832, "ProcesseStateChange")
  end
end }
S_o2881 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2881, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2881, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2881, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "tz_techbomber", "E", "", "", 0.75, "Code4")
  else
    CallFunction(o2881, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "E", "", "", "", 0.75, "Code5")
  else
    CallFunction(o2881, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2884.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2882.Value ~= True) then
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
o2882 = { [nil] = {}, GetCalculated = function()
  if not (o1975.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2882.SetStateValue(o2882.GetCalculated())
end, StartCalculate = function()
  o2882["Value"] = o2882.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2882.Value == L0) then
    o2882["Value"] = L0
    CallFunction(o2881, "ProcesseStateChange")
  end
end }
o2884 = { [nil] = {}, GetCalculated = function()
  if not (o1959.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2884.SetStateValue(o2884.GetCalculated())
end, StartCalculate = function()
  o2884["Value"] = o2884.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2884.Value == L0) then
    DelayedFunction(14.74124, o2884, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2884.Value == L0) then
    o2884["Value"] = L0
    CallFunction(o2881, "ProcesseStateChange")
  end
end }
S_o2930 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2930, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2930, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2930, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "tz_techbomber", "E", "", "", 0.75, "Code4")
  else
    CallFunction(o2930, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "E", "", "", "", 0.75, "Code5")
  else
    CallFunction(o2930, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2933.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2931.Value ~= True) then
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
o2931 = { [nil] = {}, GetCalculated = function()
  if not (o1975.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2931.SetStateValue(o2931.GetCalculated())
end, StartCalculate = function()
  o2931["Value"] = o2931.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2931.Value == L0) then
    o2931["Value"] = L0
    CallFunction(o2930, "ProcesseStateChange")
  end
end }
o2933 = { [nil] = {}, GetCalculated = function()
  if not (o1959.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2933.SetStateValue(o2933.GetCalculated())
end, StartCalculate = function()
  o2933["Value"] = o2933.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2933.Value == L0) then
    DelayedFunction(15.0014, o2933, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2933.Value == L0) then
    o2933["Value"] = L0
    CallFunction(o2930, "ProcesseStateChange")
  end
end }
S_o2979 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2979, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2979, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2979, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "tz_techbomber", "E", "", "", 0.75, "Code4")
  else
    CallFunction(o2979, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "E", "", "", "", 0.75, "Code5")
  else
    CallFunction(o2979, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2982.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2980.Value ~= True) then
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
o2980 = { [nil] = {}, GetCalculated = function()
  if not (o1975.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2980.SetStateValue(o2980.GetCalculated())
end, StartCalculate = function()
  o2980["Value"] = o2980.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2980.Value == L0) then
    o2980["Value"] = L0
    CallFunction(o2979, "ProcesseStateChange")
  end
end }
o2982 = { [nil] = {}, GetCalculated = function()
  if not (o1865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2982.SetStateValue(o2982.GetCalculated())
end, StartCalculate = function()
  o2982["Value"] = o2982.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2982.Value == L0) then
    DelayedFunction(24.74124, o2982, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2982.Value == L0) then
    o2982["Value"] = L0
    CallFunction(o2979, "ProcesseStateChange")
  end
end }
S_o3028 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3028, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3028, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3028, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "tz_techbomber", "E", "", "", 0.75, "Code4")
  else
    CallFunction(o3028, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "E", "", "", "", 0.75, "Code5")
  else
    CallFunction(o3028, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3031.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3029.Value ~= True) then
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
o3029 = { [nil] = {}, GetCalculated = function()
  if not (o1975.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3029.SetStateValue(o3029.GetCalculated())
end, StartCalculate = function()
  o3029["Value"] = o3029.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3029.Value == L0) then
    o3029["Value"] = L0
    CallFunction(o3028, "ProcesseStateChange")
  end
end }
o3031 = { [nil] = {}, GetCalculated = function()
  if not (o1865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3031.SetStateValue(o3031.GetCalculated())
end, StartCalculate = function()
  o3031["Value"] = o3031.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3031.Value == L0) then
    DelayedFunction(24.74124, o3031, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3031.Value == L0) then
    o3031["Value"] = L0
    CallFunction(o3028, "ProcesseStateChange")
  end
end }
S_o3077 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3077, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3077, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3077, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "tz_techbomber", "E", "", "", 0.75, "Code4")
  else
    CallFunction(o3077, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "E", "", "", "", 0.75, "Code5")
  else
    CallFunction(o3077, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3080.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3078.Value ~= True) then
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
o3078 = { [nil] = {}, GetCalculated = function()
  if not (o1975.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3078.SetStateValue(o3078.GetCalculated())
end, StartCalculate = function()
  o3078["Value"] = o3078.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3078.Value == L0) then
    o3078["Value"] = L0
    CallFunction(o3077, "ProcesseStateChange")
  end
end }
o3080 = { [nil] = {}, GetCalculated = function()
  if not (o1865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3080.SetStateValue(o3080.GetCalculated())
end, StartCalculate = function()
  o3080["Value"] = o3080.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3080.Value == L0) then
    DelayedFunction(24.74124, o3080, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3080.Value == L0) then
    o3080["Value"] = L0
    CallFunction(o3077, "ProcesseStateChange")
  end
end }
S_o3126 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3126, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3126, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3126, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "tz_techbomber", "E", "", "", 0.75, "Code4")
  else
    CallFunction(o3126, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "E", "", "", "", 0.75, "Code5")
  else
    CallFunction(o3126, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3129.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3127.Value ~= True) then
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
o3127 = { [nil] = {}, GetCalculated = function()
  if not (o1975.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3127.SetStateValue(o3127.GetCalculated())
end, StartCalculate = function()
  o3127["Value"] = o3127.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3127.Value == L0) then
    o3127["Value"] = L0
    CallFunction(o3126, "ProcesseStateChange")
  end
end }
o3129 = { [nil] = {}, GetCalculated = function()
  if not (o1865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3129.SetStateValue(o3129.GetCalculated())
end, StartCalculate = function()
  o3129["Value"] = o3129.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3129.Value == L0) then
    DelayedFunction(24.74124, o3129, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3129.Value == L0) then
    o3129["Value"] = L0
    CallFunction(o3126, "ProcesseStateChange")
  end
end }
S_o3175 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3175, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3175, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3175, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "tz_techbomber", "E", "", "", 0.75, "Code4")
  else
    CallFunction(o3175, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "E", "", "", "", 0.75, "Code5")
  else
    CallFunction(o3175, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3178.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3176.Value ~= True) then
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
o3176 = { [nil] = {}, GetCalculated = function()
  if not (o1975.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3176.SetStateValue(o3176.GetCalculated())
end, StartCalculate = function()
  o3176["Value"] = o3176.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3176.Value == L0) then
    o3176["Value"] = L0
    CallFunction(o3175, "ProcesseStateChange")
  end
end }
o3178 = { [nil] = {}, GetCalculated = function()
  if not (o1865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3178.SetStateValue(o3178.GetCalculated())
end, StartCalculate = function()
  o3178["Value"] = o3178.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3178.Value == L0) then
    DelayedFunction(24.74124, o3178, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3178.Value == L0) then
    o3178["Value"] = L0
    CallFunction(o3175, "ProcesseStateChange")
  end
end }
S_o3224 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3224, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3224, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3224, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_TriggerArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea", "tz_techbomber", "E", "", "", 0.75, "Code4")
  else
    CallFunction(o3224, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainfireBattle_PatrolArea", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "/Scenario_Dynamic/Navigation/BrainfireBattle_FollowArea2", "E", "", "", "", 0.75, "Code5")
  else
    CallFunction(o3224, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3227.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3225.Value ~= True) then
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
o3225 = { [nil] = {}, GetCalculated = function()
  if not (o1975.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3225.SetStateValue(o3225.GetCalculated())
end, StartCalculate = function()
  o3225["Value"] = o3225.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3225.Value == L0) then
    o3225["Value"] = L0
    CallFunction(o3224, "ProcesseStateChange")
  end
end }
o3227 = { [nil] = {}, GetCalculated = function()
  if not (o1865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3227.SetStateValue(o3227.GetCalculated())
end, StartCalculate = function()
  o3227["Value"] = o3227.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3227.Value == L0) then
    DelayedFunction(24.74124, o3227, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3227.Value == L0) then
    o3227["Value"] = L0
    CallFunction(o3224, "ProcesseStateChange")
  end
end }
S_o3273 = { [nil] = {}, Start = function(L0)

end }
S_o3274 = { [nil] = {}, Start = function(L0)

end }
S_o3275 = { [nil] = {}, Start = function(L0)

end }
S_o3276 = { [nil] = {}, Start = function(L0)

end }
S_o3277 = { [nil] = {}, Start = function(L0)

end }
o3279 = FormationLib.CreateFormation("Row", "", "", "", 35, 35)
S_o3280 = { [nil] = {}, Start = function(L0)

end }
S_o3281 = { [nil] = {}, Start = function(L0)

end }
S_o3283 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  SetEnemyMatrixElement(3, 1, N)
  SetEnemyMatrixElement(3, 2, N)
  SetEnemyMatrixElement(7, 1, N)
  SetEnemyMatrixElement(7, 2, N)
  Game_PlayMusic(GetGameNode(), "agressive")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  FormationLib.PlaceFormationPath(o3278, o3279, "/IngameSequences/Navigation/PlayerPath_1")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o3283, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.75, "Code13")
  else
    CallFunction(o3283, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 14, "MMMN", 0)
  CallFunction(o3283, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o3278, o3279, "/IngameSequences/Navigation/PlayerPath_1", "pos_1", "pos_2", 0.4, 1, "Code15")
  else
    CallFunction(o3283, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_3", 3, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 2, "MMMN", 0)
  CallFunction(o3283, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o3278, o3279, "/IngameSequences/Navigation/PlayerPath_1", "pos_2", "pos_3", 0.6, 1, "Code18")
  else
    CallFunction(o3283, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  Director_EndCutscene(L0.Node)
  CallFunction(o2391, "Code6")
  CallFunction(o2440, "Code6")
  CallFunction(o2489, "Code8")
  SED_SetTaskTextKey(1321, -1, -1)
  SetEnemyMatrixElement(3, 1, E)
  SetEnemyMatrixElement(3, 2, E)
  SetEnemyMatrixElement(7, 1, E)
  SetEnemyMatrixElement(7, 2, E)
  CallFunction(o3283, "Code27")
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3286 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.25, "Code1")
  else
    CallFunction(o3286, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o1866.Node, o1866.Node, 268)
  SendRadioMessageTake(o1866.Node, o1866.Node, 269)
  o1871.SetStateValue(True)
  CallFunction(o3286, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3289 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3289, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o1866.Node, o1866.Node, 1165)
  CallFunction(o3289, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3290.Value ~= True) then
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
o3290 = { [nil] = {}, GetCalculated = function()
  if not (o1871.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3290.SetStateValue(o3290.GetCalculated())
end, StartCalculate = function()
  o3290["Value"] = o3290.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3290.Value == L0) then
    DelayedFunction(60, o3290, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3290.Value == L0) then
    o3290["Value"] = L0
    CallFunction(o3289, "ProcesseStateChange")
  end
end }
S_o3292 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3292, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o1866.Node, o1866.Node, 1166)
  CallFunction(o3292, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3293.Value ~= True) then
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
o3293 = { [nil] = {}, GetCalculated = function()
  if not (o1871.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3293.SetStateValue(o3293.GetCalculated())
end, StartCalculate = function()
  o3293["Value"] = o3293.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3293.Value == L0) then
    DelayedFunction(120, o3293, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3293.Value == L0) then
    o3293["Value"] = L0
    CallFunction(o3292, "ProcesseStateChange")
  end
end }
S_o3295 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3295, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_4", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/tz_techbomber", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o3295, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.75, "Code8")
  else
    CallFunction(o3295, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o3282, o3279, "/IngameSequences/Navigation/TechBomber_Path_1", "pos_1", "pos_2", 1, 1, "Code9")
  else
    CallFunction(o3295, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Director_EndCutscene(L0.Node)
  CallFunction(o1952, "Code6")
  SED_SetTaskTextKey(1322, -1, -1)
  CallFunction(o3295, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3296.Value ~= True) then
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
o3296 = { [nil] = {}, GetCalculated = function()
  if not (o1871.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3296.SetStateValue(o3296.GetCalculated())
end, StartCalculate = function()
  o3296["Value"] = o3296.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3296.Value == L0) then
    DelayedFunction(172, o3296, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3296.Value == L0) then
    o3296["Value"] = L0
    CallFunction(o3295, "ProcesseStateChange")
  end
end }
S_o3299 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3299, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Game_PlayMusic(GetGameNode(), "track4")
  CallFunction(o3299, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code3")
  else
    CallFunction(o3299, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Game_PlayMusic(GetGameNode(), "agressive")
  CallFunction(o3299, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3300.Value ~= True) then
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
o3300 = { [nil] = {}, GetCalculated = function()
  if not (o1871.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3300.SetStateValue(o3300.GetCalculated())
end, StartCalculate = function()
  o3300["Value"] = o3300.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3300.Value == L0) then
    DelayedFunction(172, o3300, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3300.Value == L0) then
    o3300["Value"] = L0
    CallFunction(o3299, "ProcesseStateChange")
  end
end }
S_o3303 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3303, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o1866.Node, o1866.Node, 273)
  SED_SetTaskTextKey(1321, -1, -1)
  CallFunction(o3303, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3304.Value ~= True) then
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
o3304 = { [nil] = {}, GetCalculated = function()
  if not (o1865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3304.SetStateValue(o3304.GetCalculated())
end, StartCalculate = function()
  o3304["Value"] = o3304.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3304.Value == L0) then
    DelayedFunction(15, o3304, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3304.Value == L0) then
    o3304["Value"] = L0
    CallFunction(o3303, "ProcesseStateChange")
  end
end }
S_o3306 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3306, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o1866.Node, o1866.Node, 274)
  CallFunction(o3306, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3307.Value ~= True) then
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
o3307 = { [nil] = {}, GetCalculated = function()
  if not (o1865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3307.SetStateValue(o3307.GetCalculated())
end, StartCalculate = function()
  o3307["Value"] = o3307.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3307.Value == L0) then
    DelayedFunction(25, o3307, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3307.Value == L0) then
    o3307["Value"] = L0
    CallFunction(o3306, "ProcesseStateChange")
  end
end }
S_o3309 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3309, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o1866.Node, o1866.Node, 275)
  CallFunction(o3309, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3310.Value ~= True) then
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
o3310 = { [nil] = {}, GetCalculated = function()
  if not (o1865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3310.SetStateValue(o3310.GetCalculated())
end, StartCalculate = function()
  o3310["Value"] = o3310.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3310.Value == L0) then
    DelayedFunction(35, o3310, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3310.Value == L0) then
    o3310["Value"] = L0
    CallFunction(o3309, "ProcesseStateChange")
  end
end }
S_o3312 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3312, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o1866.Node, o1866.Node, 276)
  CallFunction(o3312, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3313.Value ~= True) then
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
o3313 = { [nil] = {}, GetCalculated = function()
  if not (o1865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3313.SetStateValue(o3313.GetCalculated())
end, StartCalculate = function()
  o3313["Value"] = o3313.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3313.Value == L0) then
    DelayedFunction(45, o3313, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3313.Value == L0) then
    o3313["Value"] = L0
    CallFunction(o3312, "ProcesseStateChange")
  end
end }
S_o3315 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3315, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o1866.Node, o1866.Node, 277)
  CallFunction(o3315, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3316.Value ~= True) then
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
o3316 = { [nil] = {}, GetCalculated = function()
  if not (o1865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3316.SetStateValue(o3316.GetCalculated())
end, StartCalculate = function()
  o3316["Value"] = o3316.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3316.Value == L0) then
    DelayedFunction(55, o3316, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3316.Value == L0) then
    o3316["Value"] = L0
    CallFunction(o3315, "ProcesseStateChange")
  end
end }
S_o3318 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3318, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o1866.Node, o1866.Node, 278)
  CallFunction(o3318, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3319.Value ~= True) then
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
o3319 = { [nil] = {}, GetCalculated = function()
  if not (o1865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3319.SetStateValue(o3319.GetCalculated())
end, StartCalculate = function()
  o3319["Value"] = o3319.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3319.Value == L0) then
    DelayedFunction(65, o3319, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3319.Value == L0) then
    o3319["Value"] = L0
    CallFunction(o3318, "ProcesseStateChange")
  end
end }
S_o3321 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3321, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o1866.Node, o1866.Node, 279)
  CallFunction(o3321, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3322.Value ~= True) then
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
o3322 = { [nil] = {}, GetCalculated = function()
  if not (o1865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3322.SetStateValue(o3322.GetCalculated())
end, StartCalculate = function()
  o3322["Value"] = o3322.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3322.Value == L0) then
    DelayedFunction(75, o3322, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3322.Value == L0) then
    o3322["Value"] = L0
    CallFunction(o3321, "ProcesseStateChange")
  end
end }
S_o3324 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3324, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o1866.Node, o1866.Node, 280)
  CallFunction(o3324, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3325.Value ~= True) then
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
o3325 = { [nil] = {}, GetCalculated = function()
  if not (o1865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3325.SetStateValue(o3325.GetCalculated())
end, StartCalculate = function()
  o3325["Value"] = o3325.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3325.Value == L0) then
    DelayedFunction(85, o3325, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3325.Value == L0) then
    o3325["Value"] = L0
    CallFunction(o3324, "ProcesseStateChange")
  end
end }
S_o3327 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3327, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o1866.Node, o1866.Node, 281)
  o1872.SetStateValue(True)
  CallFunction(o3327, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3328.Value ~= True) then
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
o3328 = { [nil] = {}, GetCalculated = function()
  if not (o1865.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3328.SetStateValue(o3328.GetCalculated())
end, StartCalculate = function()
  o3328["Value"] = o3328.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3328.Value == L0) then
    DelayedFunction(100, o3328, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3328.Value == L0) then
    o3328["Value"] = L0
    CallFunction(o3327, "ProcesseStateChange")
  end
end }
S_o3330 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3330, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_5", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/atl_ghost_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o3330, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10.75, "Code8")
  else
    CallFunction(o3330, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  CallFunction(o1902, "Code9")
  CallFunction(o3330, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3331.Value ~= True) then
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
o3331 = { [nil] = {}, GetCalculated = function()
  if not (o1872.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3331.SetStateValue(o3331.GetCalculated())
end, StartCalculate = function()
  o3331["Value"] = o3331.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3331.Value == L0) then
    DelayedFunction(20, o3331, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3331.Value == L0) then
    o3331["Value"] = L0
    CallFunction(o3330, "ProcesseStateChange")
  end
end }
S_o3334 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3334, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_EndCutscene(L0.Node)
  o1873.SetStateValue(True)
  CallFunction(o3334, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3335.Value ~= True) then
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
o3335 = { [nil] = {}, GetCalculated = function()
  if not (o1910.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3335.SetStateValue(o3335.GetCalculated())
end, StartCalculate = function()
  o3335["Value"] = o3335.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3335.Value == L0) then
    DelayedFunction(10, o3335, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3335.Value == L0) then
    o3335["Value"] = L0
    CallFunction(o3334, "ProcesseStateChange")
  end
end }
S_o3337 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3337, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.25, "Code2")
  else
    CallFunction(o3337, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o1902.Node, o1866.Node, 282)
  CallFunction(o3337, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 20, "Code4")
  else
    CallFunction(o3337, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  SendRadioMessageTake(o1866.Node, o1866.Node, 1168)
  CallFunction(o3337, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3338.Value ~= True) then
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
o3338 = { [nil] = {}, GetCalculated = function()
  if not (o1872.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3338.SetStateValue(o3338.GetCalculated())
end, StartCalculate = function()
  o3338["Value"] = o3338.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3338.Value == L0) then
    DelayedFunction(20, o3338, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3338.Value == L0) then
    o3338["Value"] = L0
    CallFunction(o3337, "ProcesseStateChange")
  end
end }
S_o3342 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3342, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Game_PlayMusic(GetGameNode(), "track4")
  CallFunction(o3342, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 8, "Code3")
  else
    CallFunction(o3342, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Game_PlayMusic(GetGameNode(), "atmo")
  CallFunction(o3342, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3343.Value ~= True) then
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
o3343 = { [nil] = {}, GetCalculated = function()
  if not (o1872.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3343.SetStateValue(o3343.GetCalculated())
end, StartCalculate = function()
  o3343["Value"] = o3343.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3343.Value == L0) then
    DelayedFunction(20, o3343, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3343.Value == L0) then
    o3343["Value"] = L0
    CallFunction(o3342, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 164)
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
  o1853 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Respawn_Pos_1", S_o1853)
  o1854 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Respawn_Pos_2", S_o1854)
  o1855 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Respawn_Pos_3", S_o1855)
  o1857 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Respawn_Pos_4", S_o1857)
  o1858 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Respawn_Pos_5", S_o1858)
  o1859 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Respawn_Pos_6", S_o1859)
  o1860 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TechBomberDockOn", S_o1860)
  o1865.Start()
  o1866 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o1866)
  o1871.Start()
  o1872.Start()
  o1873.Start()
  o1902 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_ghost_1", S_o1902)
  o1908.Start()
  o1910.Start()
  o1952 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_techbomber", S_o1952)
  o1959.Start()
  o1970.Start()
  o1975.Start()
  o2004 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_1", S_o2004)
  o2052 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_respawn_1", S_o2052)
  o2101 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_1", S_o2101)
  o2149 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_respawn_1", S_o2149)
  o2198 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_respawn_2", S_o2198)
  o2247 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_bomber_1", S_o2247)
  o2295 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_bomber_respawn_1", S_o2295)
  o2344 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_fregatte_1", S_o2344)
  o2391 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_bonham_c5_1", S_o2391)
  o2440 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_harper_c5_1", S_o2440)
  o2489 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_chaka_c5_1", S_o2489)
  o2538 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_2_1", S_o2538)
  o2587 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_2_2", S_o2587)
  o2636 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_2_3", S_o2636)
  o2685 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_2_4", S_o2685)
  o2734 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_2_5", S_o2734)
  o2783 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_1_1", S_o2783)
  o2832 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_1_2", S_o2832)
  o2881 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_1_3", S_o2881)
  o2930 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_bomber_2_1", S_o2930)
  o2979 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_2_1", S_o2979)
  o3028 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_2_2", S_o3028)
  o3077 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_2_3", S_o3077)
  o3126 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_2_4", S_o3126)
  o3175 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_2_5", S_o3175)
  o3224 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_2_6", S_o3224)
  o3273 = BindEasy(Node_Find("/"), "Camera", S_o3273)
  o3274 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_1", S_o3274)
  o3275 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_2", S_o3275)
  o3276 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_3", S_o3276)
  o3277 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_1", S_o3277)
  o3280 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_4", S_o3280)
  o3281 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_5", S_o3281)
  o3283 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_V", S_o3283)
  o3286 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_A", S_o3286)
  o3289 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_TwoMinutesToGo", S_o3289)
  o3292 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_OneMinuteToGo", S_o3292)
  o3295 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_Intro_V", S_o3295)
  o3299 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_Intro_Music", S_o3299)
  o3303 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_BomberDocked", S_o3303)
  o3306 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_10sec", S_o3306)
  o3309 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_20sec", S_o3309)
  o3312 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_30sec", S_o3312)
  o3315 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_40sec", S_o3315)
  o3318 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_50sec", S_o3318)
  o3321 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_60sec", S_o3321)
  o3324 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_70sec", S_o3324)
  o3327 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_DockFailed", S_o3327)
  o3330 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_Extro_V", S_o3330)
  o3334 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_ExtroAddOn_V", S_o3334)
  o3337 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_Extro_A", S_o3337)
  o3342 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_Extro_Music", S_o3342)
  o3278 = { {}, o1866, o2391, o2440, o2489 }()
  o3282 = { {}, o1952 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end