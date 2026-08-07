-- dekompiliert aus map\3h4\script\3h4.sco
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
  Game_SetDecompressionHeight(node0, 1800)
  Game_SetAmbientLight(node0, 0.070588, 0.12549, 0.015686)
  Game_SetParallelLightT(node0, 0.141176, 0.25098, 0.031373)
  Game_SetParallelLightB(node0, 0.666667, 0.443137, 0.172549)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_3H4_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track01_frag_heroic1.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_track06.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_badend.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_track06_short.sam", 3)
  Game_LoadMusic(node0, "sfx/sample/music/music_sfx_futurealarm.sam", 4)
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
  node37 = Node_CreateNode("nod_generic", "tz_geb_addon01_1")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(1625.167, 3541.354, 284.9592), MAT_Vector3(20.66536, 0, 0))
  Node_ParseIniFile(node37, "osd/tz/tz_geb_addon01.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "tz_geb_add_china_big_1")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(765.2612, 3184.053, 305.4655), MAT_Vector3(-0.020447, 0, 0))
  Node_ParseIniFile(node38, "osd/tz/tz_geb_add_china_big.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_turret_medium_7")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(2301.942, 3574.422, 95), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_turret_medium_8")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(1732.24, 3021.22, 77.60071), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_turret_medium_9")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(1344.339, 3009.743, 55), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_turret_medium_10")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(1744.525, 3591.798, 170.6067), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_turret_medium_11")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(2053.048, 2605.708, 95.45529), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node43, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_turret_medium_12")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(2273.088, 3347.834, 12.34193), MAT_Vector3(6.244772, 0, 0))
  Node_ParseIniFile(node44, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_turret_medium_13")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(1772.969, 2900.455, 77.15885), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node45, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_vent_1")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(1301.541, 3059.284, 56.3762), MAT_Vector3(-97.74649, 0, 0))
  Node_ParseIniFile(node46, "osd/gen/gen_vent.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "gen_vent_2")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(1332.725, 3299.415, 57.65967), MAT_Vector3(-96.05635, 0, 0))
  Node_ParseIniFile(node47, "osd/gen/gen_vent.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "gen_vent_3")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(1297.569, 3360.47, 57.23188), MAT_Vector3(-92.95775, 0, 0))
  Node_ParseIniFile(node48, "osd/gen/gen_vent.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "gen_vent_4")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(1251.565, 3040.108, 56.35574), MAT_Vector3(-93.80282, 0, 0))
  Node_ParseIniFile(node49, "osd/gen/gen_vent.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "gen_turret_medium_14")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(1085.874, 3384.971, 35.03747), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node50, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_turret_medium_15")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(898.4327, 2884.788, 152.1461), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "gen_turret_medium_16")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(983.7849, 3093.01, 36.11801), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node52, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_turret_medium_17")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(966.5129, 3050.222, 35.57774), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node53, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "gen_torptower_3")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(939.151, 3084.632, 37.63743), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node54, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "gen_torptower_4")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(1056.347, 3396.748, 36.68413), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node55, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "gen_torptower_5")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(1979.016, 2643.022, 95.25739), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node56, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node56, 0)
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
  Body_SetCS(node58, MAT_Vector3(2658.395766, 1768.388299, 448.157157), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node58, "osd/des/des_brainfire.osd")
  Body_SetFriendOrFoeID(node58, 3)
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
  node65 = Node_CreateNode("NOD_Path", "bojepath")
  Node_AddSon(node64, node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node65, node66)
  Position_SetPosition(node66, MAT_Vector3(2681.333457, 1762.368194, 700.995321))
  Position_SetRadius(node66, 5)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node65, node67)
  Position_SetPosition(node67, MAT_Vector3(2638.1342, 1776.512819, 1603.689624))
  Position_SetRadius(node67, 5)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("NOD_Path", "bojepath2")
  Node_AddSon(node64, node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node68, node69)
  Position_SetPosition(node69, MAT_Vector3(2681.333, 1762.368, 700.9953))
  Position_SetRadius(node69, 5)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node68, node70)
  Position_SetPosition(node70, MAT_Vector3(2674.465, 1774.401, 1673.241495))
  Position_SetRadius(node70, 5)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("NOD_Path", "bojepath_final")
  Node_AddSon(node64, node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node71, node72)
  Position_SetPosition(node72, MAT_Vector3(2681.333, 1762.368, 857.81074))
  Position_SetRadius(node72, 5)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node71, node73)
  Position_SetPosition(node73, MAT_Vector3(2674.465, 1774.401, 1365.291))
  Position_SetRadius(node73, 5)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("NOD_Path", "bojepath3")
  Node_AddSon(node64, node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node74, node75)
  Position_SetPosition(node75, MAT_Vector3(2674.465, 1774.401, 1482.364978))
  Position_SetRadius(node75, 5)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node74, node76)
  Position_SetPosition(node76, MAT_Vector3(2660.669323, 1776.700279, 5000))
  Position_SetRadius(node76, 5)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("NOD_PatrolArea", "BrainFireArea_1")
  Node_AddSon(node64, node77)
  PatrolArea_SetPosition(node77, MAT_Vector3(2687.648924, 1759.731822, 16.552818))
  PatrolArea_SetRadius(node77, 550)
  PatrolArea_SetMinZ(node77, -20)
  PatrolArea_SetMaxZ(node77, 650)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("NOD_PatrolArea", "BrainFireArea_2")
  Node_AddSon(node64, node78)
  PatrolArea_SetPosition(node78, MAT_Vector3(2687.649, 1759.732, 16.55282))
  PatrolArea_SetRadius(node78, 550)
  PatrolArea_SetMinZ(node78, -20)
  PatrolArea_SetMaxZ(node78, 1980)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("NOD_PatrolArea", "HoleMap")
  Node_AddSon(node64, node79)
  PatrolArea_SetPosition(node79, MAT_Vector3(2084.942987, 2079.55554, 461.786055))
  PatrolArea_SetRadius(node79, 2500)
  PatrolArea_SetMinZ(node79, -520)
  PatrolArea_SetMaxZ(node79, 320)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("NOD_Path", "DockApproachPath")
  Node_AddSon(node64, node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node80, node81)
  Position_SetPosition(node81, MAT_Vector3(2936.873427, 1779.597252, 454.789486))
  Position_SetRadius(node81, 5)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node80, node82)
  Position_SetPosition(node82, MAT_Vector3(2854.665812, 1767.718218, 456.758071))
  Position_SetRadius(node82, 5)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("NOD_Path", "DockPath")
  Node_AddSon(node64, node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node83, node84)
  Position_SetPosition(node84, MAT_Vector3(2778.452219, 1766.216329, 454.593018))
  Position_SetRadius(node84, 5)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node83, node85)
  Position_SetPosition(node85, MAT_Vector3(2712.125664, 1765.910074, 451.711192))
  Position_SetRadius(node85, 5)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("NOD_PatrolArea", "DockArea")
  Node_AddSon(node64, node86)
  PatrolArea_SetPosition(node86, MAT_Vector3(3112.128249, 1856.098669, 454.854766))
  PatrolArea_SetRadius(node86, 150)
  PatrolArea_SetMinZ(node86, -80)
  PatrolArea_SetMaxZ(node86, 50)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_Position", "CrawlerRespawnPosition")
  Node_AddSon(node64, node87)
  Position_SetPosition(node87, MAT_Vector3(2799.385139, 1653.034275, 348.04295))
  Position_SetRadius(node87, 5)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node62, node88)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node62, node89)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Trigger", "BojeTrigger")
  Node_AddSon(node89, node90)
  Body_SetFriendOrFoeID(node90, 0)
  Body_SetPosition(node90, MAT_Vector3(2672.74054, 1778.67762, 1788.641264))
  Trigger_SetPresenceSphere(node90, 50)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node62, node91)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node91, node92)
  Body_SetCS(node92, MAT_Vector3(3203.356438, 3628.515449, 158.674804), MAT_Vector3(53.928276, 0, 0))
  Node_ParseIniFile(node92, "osd/pla/pla_avenger.osd")
  Body_SetFriendOrFoeID(node92, 1)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_vessel", "wng_bonham")
  Node_AddSon(node91, node93)
  Body_SetCS(node93, MAT_Vector3(2651.649634, 1580.756567, 87.37942), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node93, "osd/wng/wng_bonham_c5.osd")
  Body_SetFriendOrFoeID(node93, 6)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_vessel", "wng_degrange")
  Node_AddSon(node91, node94)
  Body_SetCS(node94, MAT_Vector3(2484.222186, 1689.613464, 69.031669), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node94, "osd/wng/wng_degrange_c5.osd")
  Body_SetFriendOrFoeID(node94, 6)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_vessel", "wng_harper")
  Node_AddSon(node91, node95)
  Body_SetCS(node95, MAT_Vector3(2912.058111, 1889.297041, 114.702738), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node95, "osd/wng/wng_harper_c2.osd")
  Body_SetFriendOrFoeID(node95, 6)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_vessel", "wng_pico")
  Node_AddSon(node91, node96)
  Body_SetCS(node96, MAT_Vector3(2718.568439, 2045.939664, 81.001698), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node96, "osd/wng/wng_pico_c2.osd")
  Body_SetFriendOrFoeID(node96, 6)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_vessel", "atl_techbomber_1")
  Node_AddSon(node91, node97)
  Body_SetCS(node97, MAT_Vector3(2561.415252, 3665.551511, 156.561607), MAT_Vector3(-175.747784, 10.233592, -0.122787))
  Node_ParseIniFile(node97, "osd/atl/atl_techbomber.osd")
  Body_SetFriendOrFoeID(node97, 0)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_vessel", "atl_techbomber_2")
  Node_AddSon(node91, node98)
  Body_SetCS(node98, MAT_Vector3(2560.330594, 3708.684319, 157.58415), MAT_Vector3(-163.956642, 10.076398, -1.165489))
  Node_ParseIniFile(node98, "osd/atl/atl_techbomber.osd")
  Body_SetFriendOrFoeID(node98, 0)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_vessel", "tz_geb_brainfire_sat_cut")
  Node_AddSon(node91, node99)
  Body_SetCS(node99, MAT_Vector3(2680.865633, 1762.695191, 666.395), MAT_Vector3(-148.2429, 80.10177, -174.5189))
  Node_ParseIniFile(node99, "osd/tz/tz_geb_brainfire_sat.osd")
  Body_SetFriendOrFoeID(node99, 0)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_vessel", "tz_geb_brainfire_sat_1")
  Node_AddSon(node91, node100)
  Body_SetCS(node100, MAT_Vector3(2680.866, 1762.695, 751.71817), MAT_Vector3(-148.2429, 80.10177, -174.5189))
  Node_ParseIniFile(node100, "osd/tz/tz_geb_brainfire_sat.osd")
  Body_SetFriendOrFoeID(node100, 0)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_vessel", "cra_scout1_1")
  Node_AddSon(node91, node101)
  Body_SetCS(node101, MAT_Vector3(2507.890866, 2864.15193, 121.065253), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node101, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node101, 4)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_vessel", "cra_scout1_2")
  Node_AddSon(node91, node102)
  Body_SetCS(node102, MAT_Vector3(2659.33134, 2859.321371, 152.874736), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node102, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node102, 4)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_trash", "des_schrott2a_low_1")
  Node_AddSon(node91, node103)
  Body_SetCS(node103, MAT_Vector3(2781.824644, 1777.782554, 466.944553), MAT_Vector3(47.966726, 33.774842, 6.378996))
  Node_ParseIniFile(node103, "osd/des/des_schrott2a_low.osd")
  Body_SetFriendOrFoeID(node103, 8)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_trash", "des_schrott3a_low_1")
  Node_AddSon(node91, node104)
  Body_SetCS(node104, MAT_Vector3(2764.805614, 1759.062523, 446.844976), MAT_Vector3(-46.137492, -31.221747, -47.287443))
  Node_ParseIniFile(node104, "osd/des/des_schrott3a_low.osd")
  Body_SetFriendOrFoeID(node104, 8)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_trash", "des_schrott4a_low_1")
  Node_AddSon(node91, node105)
  Body_SetCS(node105, MAT_Vector3(2755.471889, 1828.389844, 452.168612), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node105, "osd/des/des_schrott4a_low.osd")
  Body_SetFriendOrFoeID(node105, 8)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_generic", "des_schrott5_bui_1")
  Node_AddSon(node91, node106)
  Body_SetCS(node106, MAT_Vector3(2785.616592, 1755.700316, 512.694716), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node106, "osd/des/des_schrott5_bui.osd")
  Body_SetFriendOrFoeID(node106, 8)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_trash", "des_schrott6_low_1")
  Node_AddSon(node91, node107)
  Body_SetCS(node107, MAT_Vector3(2784.729693, 1788.352961, 498.622059), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node107, "osd/des/des_schrott6_low.osd")
  Body_SetFriendOrFoeID(node107, 8)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_trash", "des_schrott5_low_1")
  Node_AddSon(node91, node108)
  Body_SetCS(node108, MAT_Vector3(2815.742623, 1762.80131, 487.087706), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node108, "osd/des/des_schrott5_low.osd")
  Body_SetFriendOrFoeID(node108, 8)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_trash", "des_schrott4b_low_1")
  Node_AddSon(node91, node109)
  Body_SetCS(node109, MAT_Vector3(2809.684096, 1818.844077, 424.901097), MAT_Vector3(72.542929, 45.758269, -11.092251))
  Node_ParseIniFile(node109, "osd/des/des_schrott4b_low.osd")
  Body_SetFriendOrFoeID(node109, 8)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_trash", "des_schrott3b_low_1")
  Node_AddSon(node91, node110)
  Body_SetCS(node110, MAT_Vector3(2763.922051, 1818.860914, 388.02283), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node110, "osd/des/des_schrott3b_low.osd")
  Body_SetFriendOrFoeID(node110, 8)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_trash", "des_schrott3a_low_2")
  Node_AddSon(node91, node111)
  Body_SetCS(node111, MAT_Vector3(2795.443759, 1777.284435, 409.283398), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node111, "osd/des/des_schrott3a_low.osd")
  Body_SetFriendOrFoeID(node111, 8)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_vessel", "cra_scout_respawn")
  Node_AddSon(node91, node112)
  Body_SetCS(node112, MAT_Vector3(2871.910671, 1671.410829, 484.065612), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node112, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node112, 4)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_vehicle", "cra_tank_1")
  Node_AddSon(node91, node113)
  Body_SetCS(node113, MAT_Vector3(2540.718722, 1789.313929, 71.625358), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node113, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node113, 4)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_vehicle", "cra_tank_2")
  Node_AddSon(node91, node114)
  Body_SetCS(node114, MAT_Vector3(2716.270412, 1768.396289, 95.177481), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node114, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node114, 5)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_vehicle", "cra_tank_3")
  Node_AddSon(node91, node115)
  Body_SetCS(node115, MAT_Vector3(2644.257082, 1658.758426, 84.471971), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node115, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node115, 4)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_vessel", "cra_scout1_6")
  Node_AddSon(node91, node116)
  Body_SetCS(node116, MAT_Vector3(2532.543249, 1856.682464, 199.377784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node116, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node116, 5)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_vessel", "cra_scout1_7")
  Node_AddSon(node91, node117)
  Body_SetCS(node117, MAT_Vector3(2637.616303, 1683.191404, 199.377784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node117, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node117, 4)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_vessel", "cra_scout1_8")
  Node_AddSon(node91, node118)
  Body_SetCS(node118, MAT_Vector3(2568.13846, 1676.602638, 199.377784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node118, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node118, 4)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_vessel", "cra_scout1_9")
  Node_AddSon(node91, node119)
  Body_SetCS(node119, MAT_Vector3(2724.93196, 2036.262621, 199.377784), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node119, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node119, 5)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_vessel", "cra_scout1_6_2")
  Node_AddSon(node91, node120)
  Body_SetCS(node120, MAT_Vector3(2532.543, 1856.682, 199.3778), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node120, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node120, 5)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_vessel", "cra_scout1_7_2")
  Node_AddSon(node91, node121)
  Body_SetCS(node121, MAT_Vector3(2637.616, 1683.191, 199.3778), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node121, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node121, 4)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_vessel", "cra_scout1_8_2")
  Node_AddSon(node91, node122)
  Body_SetCS(node122, MAT_Vector3(2568.138, 1676.603, 199.3778), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node122, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node122, 4)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_vessel", "cra_scout1_9_2")
  Node_AddSon(node91, node123)
  Body_SetCS(node123, MAT_Vector3(2724.932, 2036.263, 199.3778), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node123, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node123, 5)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_vessel", "tz_fregatte_creole_1")
  Node_AddSon(node91, node124)
  Body_SetCS(node124, MAT_Vector3(2678.01725, 1709.906741, 1636.37184), MAT_Vector3(113.625331, 0, 0))
  Node_ParseIniFile(node124, "osd/tz/tz_fregatte_creole.osd")
  Body_SetFriendOrFoeID(node124, 7)
  Body_SetNameKey(node124, 101)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_1")
  Node_AddSon(node91, node125)
  Body_SetPosition(node125, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node125, 5)
  Node_ParseIniFile(node125, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_waypoint", "nav_waypoint_01_1")
  Node_AddSon(node91, node126)
  Body_SetPosition(node126, MAT_Vector3(2675.10473, 1812.847319, 657.873289))
  WayPoint_SetRadius(node126, 50)
  Node_ParseIniFile(node126, "osd/nav/nav_waypoint_01.osd")
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_waypoint", "nav_waypoint_02_1")
  Node_AddSon(node91, node127)
  Body_SetPosition(node127, MAT_Vector3(2606.090437, 1752.140957, 377.240805))
  WayPoint_SetRadius(node127, 300)
  Node_ParseIniFile(node127, "osd/nav/nav_waypoint_02.osd")
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_vehicle", "cra_tank_end_1")
  Node_AddSon(node91, node128)
  Body_SetCS(node128, MAT_Vector3(2462.777662, 1711.99876, 71.62536), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node128, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node128, 5)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, -1, 0)
  Body_SetCargoKey(node128, -1, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_vessel", "cra_scout1_end_1")
  Node_AddSon(node91, node129)
  Body_SetCS(node129, MAT_Vector3(2582.142033, 1864.202259, 199.3778), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node129, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node129, 5)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_vessel", "cra_scout1_end_2")
  Node_AddSon(node91, node130)
  Body_SetCS(node130, MAT_Vector3(2700.205256, 1648.096456, 199.3778), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node130, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node130, 4)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_vessel", "cra_scout1_end_3")
  Node_AddSon(node91, node131)
  Body_SetCS(node131, MAT_Vector3(2566.957071, 1648.193131, 199.3778), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node131, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node131, 4)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_vessel", "cra_scout1_end_4")
  Node_AddSon(node91, node132)
  Body_SetCS(node132, MAT_Vector3(2775.711963, 1967.745081, 199.3778), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node132, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node132, 4)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_vessel", "cra_scout1_end_5")
  Node_AddSon(node91, node133)
  Body_SetCS(node133, MAT_Vector3(2670.991468, 1927.843753, 199.3778), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node133, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node133, 4)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, -1, 0)
  Body_SetCargoKey(node133, -1, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node91, node134)
  Node_ParseIniFile(node134, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node134, "map/3H3/Terrain/coral01.tga")
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_fx_plant", "fungus_01_1")
  Node_AddSon(node91, node135)
  Node_ParseIniFile(node135, "osd/fx_plant/fungus_01.osd")
  FX_Plant_SetMap(node135, "map/3H3/Terrain/fungus01.tga")
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_fx_plant", "fungus_02_1")
  Node_AddSon(node91, node136)
  Node_ParseIniFile(node136, "osd/fx_plant/fungus_02.osd")
  FX_Plant_SetMap(node136, "map/3H3/Terrain/fungus02.tga")
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node91, node137)
  Node_ParseIniFile(node137, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node137, "map/3H3/Terrain/grass01.tga")
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node91, node138)
  Node_ParseIniFile(node138, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node138, "map/3H3/Terrain/stone01.tga")
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_2")
  Node_AddSon(node91, node139)
  Body_SetPosition(node139, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node139, 5)
  Node_ParseIniFile(node139, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_3")
  Node_AddSon(node91, node140)
  Body_SetPosition(node140, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node140, 5)
  Node_ParseIniFile(node140, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node141)
  Camera_SetBackPlane(node141, 512)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node142)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node142, node143)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node142, node144)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Path", "TechPath_1")
  Node_AddSon(node144, node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node145, node146)
  Position_SetPosition(node146, MAT_Vector3(2564.353111, 3621.13438, 155.398214))
  Position_SetRadius(node146, 5)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node145, node147)
  Position_SetPosition(node147, MAT_Vector3(2603.594297, 3300.00792, 131.735414))
  Position_SetRadius(node147, 5)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node145, node148)
  Position_SetPosition(node148, MAT_Vector3(2588.510274, 2889.651786, 176.723735))
  Position_SetRadius(node148, 5)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node145, node149)
  Position_SetPosition(node149, MAT_Vector3(2710.09961, 2525.100593, 224.122911))
  Position_SetRadius(node149, 5)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node145, node150)
  Position_SetPosition(node150, MAT_Vector3(2849.185946, 2115.347229, 280.22221))
  Position_SetRadius(node150, 5)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node145, node151)
  Position_SetPosition(node151, MAT_Vector3(2850.515694, 1784.743385, 337.988966))
  Position_SetRadius(node151, 5)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Path", "TechPath_2")
  Node_AddSon(node144, node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node152, node153)
  Position_SetPosition(node153, MAT_Vector3(2931.706196, 2256.22577, 465.898476))
  Position_SetRadius(node153, 5)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node152, node154)
  Position_SetPosition(node154, MAT_Vector3(2856.015006, 1769.284374, 464.649526))
  Position_SetRadius(node154, 5)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node144, node155)
  Position_SetPosition(node155, MAT_Vector3(2446.254637, 3469.614734, 142.833545))
  Position_SetRadius(node155, 5)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Position", "Position_2")
  Node_AddSon(node144, node156)
  Position_SetPosition(node156, MAT_Vector3(2691.060204, 3263.972235, 122.765556))
  Position_SetRadius(node156, 5)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Position", "Position_3")
  Node_AddSon(node144, node157)
  Position_SetPosition(node157, MAT_Vector3(2699.431132, 3053.828477, 112.729415))
  Position_SetRadius(node157, 5)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Position", "Position_4")
  Node_AddSon(node144, node158)
  Position_SetPosition(node158, MAT_Vector3(2764.809315, 1723.255781, 413.882152))
  Position_SetRadius(node158, 5)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Path", "PlayerPath_1")
  Node_AddSon(node144, node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node159, node160)
  Position_SetPosition(node160, MAT_Vector3(2656.174709, 3190.253178, 125.410881))
  Position_SetRadius(node160, 5)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node159, node161)
  Position_SetPosition(node161, MAT_Vector3(2661.888898, 3098.577452, 141.237716))
  Position_SetRadius(node161, 5)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Path", "PlayerPath_2")
  Node_AddSon(node144, node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node162, node163)
  Position_SetPosition(node163, MAT_Vector3(2739.054295, 1664.093582, 330.434605))
  Position_SetRadius(node163, 5)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node162, node164)
  Position_SetPosition(node164, MAT_Vector3(2760.257158, 1702.43194, 335.072817))
  Position_SetRadius(node164, 5)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Position", "Position_5")
  Node_AddSon(node144, node165)
  Position_SetPosition(node165, MAT_Vector3(2842.903116, 1735.027936, 469.428708))
  Position_SetRadius(node165, 5)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Path", "PlayerPath_3")
  Node_AddSon(node144, node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node166, node167)
  Position_SetPosition(node167, MAT_Vector3(2674.86461, 1816.696387, 745.635878))
  Position_SetRadius(node167, 5)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node166, node168)
  Position_SetPosition(node168, MAT_Vector3(2845.675971, 1559.845008, 1203.658206))
  Position_SetRadius(node168, 5)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Path", "PlayerPath_4")
  Node_AddSon(node144, node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node169, node170)
  Position_SetPosition(node170, MAT_Vector3(3111.50238, 713.973664, 585.312379))
  Position_SetRadius(node170, 5)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node169, node171)
  Position_SetPosition(node171, MAT_Vector3(3275.039201, 980.356522, 598.76169))
  Position_SetRadius(node171, 5)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_Path", "PlayerPath_5")
  Node_AddSon(node144, node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node172, node173)
  Position_SetPosition(node173, MAT_Vector3(2674.865, 1816.696, 1144.977748))
  Position_SetRadius(node173, 5)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node172, node174)
  Position_SetPosition(node174, MAT_Vector3(2845.676, 1559.845, 951.69231))
  Position_SetRadius(node174, 5)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_Position", "Position_6")
  Node_AddSon(node144, node175)
  Position_SetPosition(node175, MAT_Vector3(2635.276396, 1732.702896, 1592.664348))
  Position_SetRadius(node175, 5)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_Position", "BojePosition_1")
  Node_AddSon(node144, node176)
  Position_SetPosition(node176, MAT_Vector3(2622.644386, 1841.363998, 1697.936131))
  Position_SetRadius(node176, 5)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node142, node177)
  Node_EnterSimulation(node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_Director", "IntroChapter1V")
  Node_AddSon(node177, node178)
  Node_EnterSimulation(node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_Director", "IntroChapter1Addon")
  Node_AddSon(node177, node179)
  Node_EnterSimulation(node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_Director", "IntroChapter2V")
  Node_AddSon(node177, node180)
  Node_EnterSimulation(node180)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_Director", "IntroChapter2Addon")
  Node_AddSon(node177, node181)
  Node_EnterSimulation(node181)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("NOD_Director", "IntroChapter4V")
  Node_AddSon(node177, node182)
  Node_EnterSimulation(node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_Director", "ShowBojeDesOrDipol")
  Node_AddSon(node177, node183)
  Node_EnterSimulation(node183)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_Director", "Music")
  Node_AddSon(node177, node184)
  Node_EnterSimulation(node184)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node142, node185)
  Node_EnterSimulation(node185)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node142, node186)
  Node_EnterSimulation(node186)
end
SetEnemyMatrixElement(0, 0, N)
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
SetEnemyMatrixElement(1, 1, N)
SetEnemyMatrixElement(2, 1, F)
SetEnemyMatrixElement(3, 1, N)
SetEnemyMatrixElement(4, 1, E)
SetEnemyMatrixElement(5, 1, E)
SetEnemyMatrixElement(6, 1, F)
SetEnemyMatrixElement(7, 1, E)
SetEnemyMatrixElement(8, 1, E)
SetEnemyMatrixElement(9, 1, N)
SetEnemyMatrixElement(10, 1, N)
SetEnemyMatrixElement(11, 1, N)
SetEnemyMatrixElement(12, 1, N)
SetEnemyMatrixElement(13, 1, N)
SetEnemyMatrixElement(14, 1, N)
SetEnemyMatrixElement(15, 1, N)
SetEnemyMatrixElement(0, 2, N)
SetEnemyMatrixElement(1, 2, F)
SetEnemyMatrixElement(2, 2, N)
SetEnemyMatrixElement(3, 2, N)
SetEnemyMatrixElement(4, 2, E)
SetEnemyMatrixElement(5, 2, E)
SetEnemyMatrixElement(6, 2, F)
SetEnemyMatrixElement(7, 2, E)
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
SetEnemyMatrixElement(2, 3, N)
SetEnemyMatrixElement(3, 3, N)
SetEnemyMatrixElement(4, 3, E)
SetEnemyMatrixElement(5, 3, E)
SetEnemyMatrixElement(6, 3, F)
SetEnemyMatrixElement(7, 3, E)
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
SetEnemyMatrixElement(3, 4, E)
SetEnemyMatrixElement(4, 4, N)
SetEnemyMatrixElement(5, 4, N)
SetEnemyMatrixElement(6, 4, E)
SetEnemyMatrixElement(7, 4, E)
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
SetEnemyMatrixElement(2, 5, E)
SetEnemyMatrixElement(3, 5, E)
SetEnemyMatrixElement(4, 5, N)
SetEnemyMatrixElement(5, 5, N)
SetEnemyMatrixElement(6, 5, N)
SetEnemyMatrixElement(7, 5, E)
SetEnemyMatrixElement(8, 5, N)
SetEnemyMatrixElement(9, 5, N)
SetEnemyMatrixElement(10, 5, N)
SetEnemyMatrixElement(11, 5, N)
SetEnemyMatrixElement(12, 5, N)
SetEnemyMatrixElement(13, 5, N)
SetEnemyMatrixElement(14, 5, N)
SetEnemyMatrixElement(15, 5, N)
SetEnemyMatrixElement(0, 6, N)
SetEnemyMatrixElement(1, 6, F)
SetEnemyMatrixElement(2, 6, F)
SetEnemyMatrixElement(3, 6, F)
SetEnemyMatrixElement(4, 6, E)
SetEnemyMatrixElement(5, 6, N)
SetEnemyMatrixElement(6, 6, N)
SetEnemyMatrixElement(7, 6, E)
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
SetEnemyMatrixElement(2, 7, E)
SetEnemyMatrixElement(3, 7, E)
SetEnemyMatrixElement(4, 7, E)
SetEnemyMatrixElement(5, 7, E)
SetEnemyMatrixElement(6, 7, E)
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
SetEnemyMatrixElement(1, 8, E)
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
                                                                                                        if not (o1846.Value ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
                                                                                                                                                if not (True ~= True) then
                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                  if not (True ~= True) then
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
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("RC1 2509 2316")
  Game_MissionEnd(GetGameNode(), 1)
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
                                                                                                        if not (o1870.Value == True) then
                                                                                                          if not (False == True) then
                                                                                                            if not (False == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
                                                                                                                      if not (False == True) then
                                                                                                                        if not (False == True) then
                                                                                                                          if not (False == True) then
                                                                                                                            if not (False == True) then
                                                                                                                              if not (False == True) then
                                                                                                                                if not (False == True) then
                                                                                                                                  if not (False == True) then
                                                                                                                                    if not (False == True) then
                                                                                                                                      if not (False == True) then
                                                                                                                                        if not (False == True) then
                                                                                                                                          if not (False == True) then
                                                                                                                                            if not (False == True) then
                                                                                                                                              if not (False == True) then
                                                                                                                                                if not (False == True) then
                                                                                                                                                  if not (False == True) then
                                                                                                                                                    if not (False == True) then
                                                                                                                                                      if not (False == True) then
                                                                                                                                                        if not (False == True) then
                                                                                                                                                          if not (False == True) then
                                                                                                                                                            if not (False == True) then
                                                                                                                                                              if not (False == True) then
                                                                                                                                                                if not (False == True) then
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
                                                                                                      if not (False == True) then
                                                                                                        if not (o1871.Value == True) then
                                                                                                          if not (False == True) then
                                                                                                            if not (False == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
                                                                                                                      if not (False == True) then
                                                                                                                        if not (False == True) then
                                                                                                                          if not (False == True) then
                                                                                                                            if not (False == True) then
                                                                                                                              if not (False == True) then
                                                                                                                                if not (False == True) then
                                                                                                                                  if not (False == True) then
                                                                                                                                    if not (False == True) then
                                                                                                                                      if not (False == True) then
                                                                                                                                        if not (False == True) then
                                                                                                                                          if not (False == True) then
                                                                                                                                            if not (False == True) then
                                                                                                                                              if not (False == True) then
                                                                                                                                                if not (False == True) then
                                                                                                                                                  if not (False == True) then
                                                                                                                                                    if not (False == True) then
                                                                                                                                                      if not (False == True) then
                                                                                                                                                        if not (False == True) then
                                                                                                                                                          if not (False == True) then
                                                                                                                                                            if not (False == True) then
                                                                                                                                                              if not (False == True) then
                                                                                                                                                                if not (False == True) then
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
                                                                                                        if not (o1872.Value == True) then
                                                                                                          if not (False == True) then
                                                                                                            if not (False == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
                                                                                                                      if not (False == True) then
                                                                                                                        if not (False == True) then
                                                                                                                          if not (False == True) then
                                                                                                                            if not (False == True) then
                                                                                                                              if not (False == True) then
                                                                                                                                if not (False == True) then
                                                                                                                                  if not (False == True) then
                                                                                                                                    if not (False == True) then
                                                                                                                                      if not (False == True) then
                                                                                                                                        if not (False == True) then
                                                                                                                                          if not (False == True) then
                                                                                                                                            if not (False == True) then
                                                                                                                                              if not (False == True) then
                                                                                                                                                if not (False == True) then
                                                                                                                                                  if not (False == True) then
                                                                                                                                                    if not (False == True) then
                                                                                                                                                      if not (False == True) then
                                                                                                                                                        if not (False == True) then
                                                                                                                                                          if not (False == True) then
                                                                                                                                                            if not (False == True) then
                                                                                                                                                              if not (False == True) then
                                                                                                                                                                if not (False == True) then
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
end, ReCalculate = function()
  o28.SetStateValue(o28.GetCalculated())
end, StartCalculate = function()
  o28["Value"] = o28.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "track3")
  Game_MissionEnd(GetGameNode(), 0)
end, SetStateValue = function(L0)
  if not (o28.Value == L0) then
    o28["Value"] = L0
    if not (L0 ~= 1) then
      o28.ChangeTo1()
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

end }
S_o780 = { [nil] = {}, Start = function(L0)

end }
S_o816 = { [nil] = {}, Start = function(L0)

end }
S_o852 = { [nil] = {}, Start = function(L0)

end }
S_o888 = { [nil] = {}, Start = function(L0)

end }
S_o924 = { [nil] = {}, Start = function(L0)

end }
S_o960 = { [nil] = {}, Start = function(L0)

end }
S_o996 = { [nil] = {}, Start = function(L0)

end }
S_o1032 = { [nil] = {}, Start = function(L0)

end }
S_o1066 = { [nil] = {}, Start = function(L0)

end }
S_o1100 = { [nil] = {}, Start = function(L0)

end }
S_o1136 = { [nil] = {}, Start = function(L0)

end }
S_o1172 = { [nil] = {}, Start = function(L0)

end }
S_o1208 = { [nil] = {}, Start = function(L0)

end }
S_o1244 = { [nil] = {}, Start = function(L0)

end }
S_o1280 = { [nil] = {}, Start = function(L0)

end }
S_o1316 = { [nil] = {}, Start = function(L0)

end }
S_o1352 = { [nil] = {}, Start = function(L0)

end }
S_o1386 = { [nil] = {}, Start = function(L0)

end }
S_o1420 = { [nil] = {}, Start = function(L0)

end }
S_o1454 = { [nil] = {}, Start = function(L0)

end }
S_o1488 = { [nil] = {}, Start = function(L0)

end }
S_o1524 = { [nil] = {}, Start = function(L0)

end }
S_o1560 = { [nil] = {}, Start = function(L0)

end }
S_o1596 = { [nil] = {}, Start = function(L0)

end }
S_o1632 = { [nil] = {}, Start = function(L0)

end }
S_o1668 = { [nil] = {}, Start = function(L0)

end }
S_o1704 = { [nil] = {}, Start = function(L0)

end }
S_o1740 = { [nil] = {}, Start = function(L0)

end }
S_o1774 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1774, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1774, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1774, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1774, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1819.Node)
  CallFunction(o1774, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1774, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_DeactivateSelectiveVulnerability(L0.Node)
  CallFunction(o1774, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1779.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o1775.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1776.Value ~= True) then
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
o1775 = { [nil] = {}, GetCalculated = function()
  if not (o3302.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1775.SetStateValue(o1775.GetCalculated())
end, StartCalculate = function()
  o1775["Value"] = o1775.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1775.Value == L0) then
    o1775["Value"] = L0
    CallFunction(o1774, "ProcesseStateChange")
  end
end }
o1776 = { [nil] = {}, GetCalculated = function()
  if not (o1818.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1776.SetStateValue(o1776.GetCalculated())
end, StartCalculate = function()
  o1776["Value"] = o1776.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1776.Value == L0) then
    DelayedFunction(15, o1776, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1776.Value == L0) then
    o1776["Value"] = L0
    CallFunction(o1774, "ProcesseStateChange")
  end
end }
o1779 = { [nil] = {}, Start = function()
  o1779["Value"] = False
  o1836.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1779.Value == L0) then
    o1779["Value"] = L0
    o1836.ReCalculate()
  end
end }
o1811 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/DockApproachPath", "/Scenario_Dynamic/Navigation/DockPath", "/Scenario_Dynamic/Navigation/DockArea")
S_o1812 = { [nil] = {}, Start = function(L0)

end }
S_o1813 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1813, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1813, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1813, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "tz_geb_brainfire_sat_1", "", "", "", False, False, True)
  CallFunction(o1813, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1813, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1813, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1818.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1818 = { [nil] = {}, Start = function()
  o1818["Value"] = False
  o1776.StartCalculate()
  o1840.StartCalculate()
  o1841.StartCalculate()
  o3311.StartCalculate()
  o3637.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1818.Value == L0) then
    o1818["Value"] = L0
    o1776.ReCalculate()
    o1840.ReCalculate()
    o1841.ReCalculate()
    o3311.ReCalculate()
    o3637.ReCalculate()
  end
end }
S_o1819 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_flak", 1)
  Body_AddItem(L0.Node, "gun_plasma2", 1)
  Body_AddItem(L0.Node, "ammo_shell", 3000)
  Body_AddItem(L0.Node, "ammo_energy", 3000)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "torpedo_maneater", 7)
  Body_AddItem(L0.Node, "gun_vendettagatlin", 1)
  Body_AddItem(L0.Node, "DEVICE_REPAIR1", 1)
  Body_AddItem(L0.Node, "DEVICE_generator1", 1)
  CallFunction(o1819, "Code9")
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
o1824 = { [nil] = {}, Start = function()
  o1824["Value"] = False
  o2270.StartCalculate()
  o2318.StartCalculate()
  o3641.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1824.Value == L0) then
    o1824["Value"] = L0
    o2270.ReCalculate()
    o2318.ReCalculate()
    o3641.ReCalculate()
  end
end }
o1825 = { [nil] = {}, GetCalculated = function()
  if not (o2368.Value ~= True) then
    if not (o2405.Value ~= True) then
      if not (o2442.Value ~= True) then
        if not (o2479.Value ~= True) then
          if not (o2515.Value ~= True) then
            if not (o2552.Value ~= True) then
              if not (o2589.Value ~= True) then
                if not (o2626.Value ~= True) then
                  if not (o2663.Value ~= True) then
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
  o1825.SetStateValue(o1825.GetCalculated())
end, StartCalculate = function()
  o1825["Value"] = o1825.GetCalculated()
  o2073.StartCalculate()
  o2123.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("ggg")
end, SetStateValue = function(L0)
  if not (o1825.Value == L0) then
    o1825["Value"] = L0
    o2073.ReCalculate()
    o2123.ReCalculate()
    if not (L0 ~= 1) then
      o1825.ChangeTo1()
    end
  end
end }
o1826 = { [nil] = {}, GetCalculated = function()
  if not (o1827.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1826.SetStateValue(o1826.GetCalculated())
end, StartCalculate = function()
  o1826["Value"] = o1826.GetCalculated()
  o2699.StartCalculate()
  o3643.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1819.Node, o1819.Node, 136)
end, SetStateValue = function(L0)
  if not (o1826.Value == L0) then
    DelayedFunction(2, o1826, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1826.Value == L0) then
    o1826["Value"] = L0
    o2699.ReCalculate()
    o3643.ReCalculate()
    if not (L0 ~= 1) then
      o1826.ChangeTo1()
    end
  end
end }
o1827 = { [nil] = {}, GetCalculated = function()
  if not (o2368.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2405.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2442.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2479.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2515.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2552.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2589.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2626.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2663.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 < 4) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1827.SetStateValue(o1827.GetCalculated())
end, StartCalculate = function()
  o1827["Value"] = o1827.GetCalculated()
  o1826.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1827.Value == L0) then
    o1827["Value"] = L0
    o1826.ReCalculate()
  end
end }
o1828 = { [nil] = {}, GetCalculated = function()
  if not (o2368.Value ~= True) then
    if not (o2405.Value ~= True) then
      if not (o2442.Value ~= True) then
        if not (o2479.Value ~= True) then
          if not (o2515.Value ~= True) then
            if not (o2552.Value ~= True) then
              if not (o2589.Value ~= True) then
                if not (o2626.Value ~= True) then
                  if not (o2663.Value ~= True) then
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
  o1828.SetStateValue(o1828.GetCalculated())
end, StartCalculate = function()
  o1828["Value"] = o1828.GetCalculated()
  o1829.StartCalculate()
  o2697.StartCalculate()
  o2747.StartCalculate()
  o2786.StartCalculate()
  o2825.StartCalculate()
  o2864.StartCalculate()
  o2912.StartCalculate()
  o2960.StartCalculate()
  o3008.StartCalculate()
  o3056.StartCalculate()
  o3104.StartCalculate()
  o3152.StartCalculate()
  o3200.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1819.Node, o1819.Node, 137)
end, SetStateValue = function(L0)
  if not (o1828.Value == L0) then
    DelayedFunction(3, o1828, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1828.Value == L0) then
    o1828["Value"] = L0
    o1829.ReCalculate()
    o2697.ReCalculate()
    o2747.ReCalculate()
    o2786.ReCalculate()
    o2825.ReCalculate()
    o2864.ReCalculate()
    o2912.ReCalculate()
    o2960.ReCalculate()
    o3008.ReCalculate()
    o3056.ReCalculate()
    o3104.ReCalculate()
    o3152.ReCalculate()
    o3200.ReCalculate()
    if not (L0 ~= 1) then
      o1828.ChangeTo1()
    end
  end
end }
o1829 = { [nil] = {}, GetCalculated = function()
  if not (o1828.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1829.SetStateValue(o1829.GetCalculated())
end, StartCalculate = function()
  o1829["Value"] = o1829.GetCalculated()
  o1837.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1819.Node, o1819.Node, 139)
end, SetStateValue = function(L0)
  if not (o1829.Value == L0) then
    DelayedFunction(45, o1829, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1829.Value == L0) then
    o1829["Value"] = L0
    o1837.ReCalculate()
    if not (L0 ~= 1) then
      o1829.ChangeTo1()
    end
  end
end }
o1830 = { [nil] = {}, Start = function()
  o1830["Value"] = False
  o3247.StartCalculate()
  o3645.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1830.Value == L0) then
    o1830["Value"] = L0
    o3247.ReCalculate()
    o3645.ReCalculate()
  end
end }
o1831 = { [nil] = {}, GetCalculated = function()
  if not (o3252.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1831.SetStateValue(o1831.GetCalculated())
end, StartCalculate = function()
  o1831["Value"] = o1831.GetCalculated()
  o3647.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1874.Node, o1819.Node, 1240)
end, SetStateValue = function(L0)
  if not (o1831.Value == L0) then
    o1831["Value"] = L0
    o3647.ReCalculate()
    if not (L0 ~= 1) then
      o1831.ChangeTo1()
    end
  end
end }
o1832 = { [nil] = {}, GetCalculated = function()
  if not (o2226.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1832.SetStateValue(o1832.GetCalculated())
end, StartCalculate = function()
  o1832["Value"] = o1832.GetCalculated()
  o3350.StartCalculate()
  o3398.StartCalculate()
  o3446.StartCalculate()
  o3494.StartCalculate()
  o3542.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1819.Node, o1819.Node, 144)
end, SetStateValue = function(L0)
  if not (o1832.Value == L0) then
    o1832["Value"] = L0
    o3350.ReCalculate()
    o3398.ReCalculate()
    o3446.ReCalculate()
    o3494.ReCalculate()
    o3542.ReCalculate()
    if not (L0 ~= 1) then
      o1832.ChangeTo1()
    end
  end
end }
o1833 = { [nil] = {}, GetCalculated = function()
  if not (o2225.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1833.SetStateValue(o1833.GetCalculated())
end, StartCalculate = function()
  o1833["Value"] = o1833.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1819.Node, o1819.Node, 1263)
end, SetStateValue = function(L0)
  if not (o1833.Value == L0) then
    o1833["Value"] = L0
    if not (L0 ~= 1) then
      o1833.ChangeTo1()
    end
  end
end }
o1834 = { [nil] = {}, Start = function()
  o1834["Value"] = False
  o2365.StartCalculate()
  o2402.StartCalculate()
  o2439.StartCalculate()
  o2476.StartCalculate()
  o2512.StartCalculate()
  o2549.StartCalculate()
  o2586.StartCalculate()
  o2623.StartCalculate()
  o2660.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1834.Value == L0) then
    o1834["Value"] = L0
    o2365.ReCalculate()
    o2402.ReCalculate()
    o2439.ReCalculate()
    o2476.ReCalculate()
    o2512.ReCalculate()
    o2549.ReCalculate()
    o2586.ReCalculate()
    o2623.ReCalculate()
    o2660.ReCalculate()
  end
end }
o1835 = { [nil] = {}, GetCalculated = function()
  if not (o2077.Value == True) then
    if not (o2127.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1835.SetStateValue(o1835.GetCalculated())
end, StartCalculate = function()
  o1835["Value"] = o1835.GetCalculated()
  o1870.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1819.Node, o1819.Node, 140)
end, SetStateValue = function(L0)
  if not (o1835.Value == L0) then
    o1835["Value"] = L0
    o1870.ReCalculate()
    if not (L0 ~= 1) then
      o1835.ChangeTo1()
    end
  end
end }
o1836 = { [nil] = {}, GetCalculated = function()
  if not (o1779.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1836.SetStateValue(o1836.GetCalculated())
end, StartCalculate = function()
  o1836["Value"] = o1836.GetCalculated()
  o1871.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1819.Node, o1819.Node, 1239)
end, SetStateValue = function(L0)
  if not (o1836.Value == L0) then
    o1836["Value"] = L0
    o1871.ReCalculate()
    if not (L0 ~= 1) then
      o1836.ChangeTo1()
    end
  end
end }
o1837 = { [nil] = {}, GetCalculated = function()
  if not (o1829.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1837.SetStateValue(o1837.GetCalculated())
end, StartCalculate = function()
  o1837["Value"] = o1837.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1819.Node, o1819.Node, 141)
  Game_SetWayPoint(GetGameNode(), o3299.Node)
end, SetStateValue = function(L0)
  if not (o1837.Value == L0) then
    DelayedFunction(15, o1837, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1837.Value == L0) then
    o1837["Value"] = L0
    if not (L0 ~= 1) then
      o1837.ChangeTo1()
    end
  end
end }
o1838 = { [nil] = {}, GetCalculated = function()
  if not (o3058.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1838.SetStateValue(o1838.GetCalculated())
end, StartCalculate = function()
  o1838["Value"] = o1838.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1819.Node, o1819.Node, 138)
end, SetStateValue = function(L0)
  if not (o1838.Value == L0) then
    DelayedFunction(2, o1838, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1838.Value == L0) then
    o1838["Value"] = L0
    if not (L0 ~= 1) then
      o1838.ChangeTo1()
    end
  end
end }
o1840 = { [nil] = {}, GetCalculated = function()
  if not (o1818.Value ~= True) then
    if not (o3252.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1840.SetStateValue(o1840.GetCalculated())
end, StartCalculate = function()
  o1840["Value"] = o1840.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("BojeDipolOutCombinationTrue")
  CallFunction(o2218, "Code8")
end, SetStateValue = function(L0)
  if not (o1840.Value == L0) then
    DelayedFunction(2, o1840, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1840.Value == L0) then
    o1840["Value"] = L0
    if not (L0 ~= 1) then
      o1840.ChangeTo1()
    end
  end
end }
o1841 = { [nil] = {}, GetCalculated = function()
  if not (o1818.Value ~= True) then
    if not (o3252.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1841.SetStateValue(o1841.GetCalculated())
end, StartCalculate = function()
  o1841["Value"] = o1841.GetCalculated()
  o1872.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("BojeSelfDestructCombinationTrue")
  CallFunction(o2218, "Code10")
end, SetStateValue = function(L0)
  if not (o1841.Value == L0) then
    DelayedFunction(2, o1841, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1841.Value == L0) then
    o1841["Value"] = L0
    o1872.ReCalculate()
    if not (L0 ~= 1) then
      o1841.ChangeTo1()
    end
  end
end }
o1842 = { [nil] = {}, GetCalculated = function()
  if not (o3302.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1842.SetStateValue(o1842.GetCalculated())
end, StartCalculate = function()
  o1842["Value"] = o1842.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
end, SetStateValue = function(L0)
  if not (o1842.Value == L0) then
    o1842["Value"] = L0
    if not (L0 ~= 1) then
      o1842.ChangeTo1()
    end
  end
end }
o1843 = { [nil] = {}, GetCalculated = function()
  if not (o3307.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1843.SetStateValue(o1843.GetCalculated())
end, StartCalculate = function()
  o1843["Value"] = o1843.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
end, SetStateValue = function(L0)
  if not (o1843.Value == L0) then
    o1843["Value"] = L0
    if not (L0 ~= 1) then
      o1843.ChangeTo1()
    end
  end
end }
o1844 = { [nil] = {}, GetCalculated = function()
  if not (o2321.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1844.SetStateValue(o1844.GetCalculated())
end, StartCalculate = function()
  o1844["Value"] = o1844.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o2268.Node)
end, SetStateValue = function(L0)
  if not (o1844.Value == L0) then
    o1844["Value"] = L0
    if not (L0 ~= 1) then
      o1844.ChangeTo1()
    end
  end
end }
o1845 = { [nil] = {}, GetCalculated = function()
  if not (o2750.Value ~= True) then
    if not (o2789.Value ~= True) then
      if not (o2828.Value ~= True) then
        if not (o2867.Value ~= True) then
          if not (o2915.Value ~= True) then
            if not (o2963.Value ~= True) then
              if not (o3011.Value ~= True) then
                if not (o3059.Value ~= True) then
                  if not (o3107.Value ~= True) then
                    if not (o3155.Value ~= True) then
                      if not (o3203.Value ~= True) then
                        if not (o3314.Value ~= True) then
                          if not (o3353.Value ~= True) then
                            if not (o3401.Value ~= True) then
                              if not (o3449.Value ~= True) then
                                if not (o3497.Value ~= True) then
                                  if not (o3545.Value ~= True) then
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
end, ReCalculate = function()
  o1845.SetStateValue(o1845.GetCalculated())
end, StartCalculate = function()
  o1845["Value"] = o1845.GetCalculated()
  o1846.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1845.Value == L0) then
    o1845["Value"] = L0
    o1846.ReCalculate()
  end
end }
o1846 = { [nil] = {}, GetCalculated = function()
  if not (o1845.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1846.SetStateValue(o1846.GetCalculated())
end, StartCalculate = function()
  o1846["Value"] = o1846.GetCalculated()
  o2.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1819.Node, o1819.Node, 145)
end, SetStateValue = function(L0)
  if not (o1846.Value == L0) then
    o1846["Value"] = L0
    o2.ReCalculate()
    if not (L0 ~= 1) then
      o1846.ChangeTo1()
    end
  end
end }
o1870 = { [nil] = {}, GetCalculated = function()
  if not (o1835.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1870.SetStateValue(o1870.GetCalculated())
end, StartCalculate = function()
  o1870["Value"] = o1870.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1870.Value == L0) then
    o1870["Value"] = L0
    o26.ReCalculate()
  end
end }
o1871 = { [nil] = {}, GetCalculated = function()
  if not (o1836.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1871.SetStateValue(o1871.GetCalculated())
end, StartCalculate = function()
  o1871["Value"] = o1871.GetCalculated()
  o27.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1871.Value == L0) then
    o1871["Value"] = L0
    o27.ReCalculate()
  end
end }
o1872 = { [nil] = {}, GetCalculated = function()
  if not (o1841.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1872.SetStateValue(o1872.GetCalculated())
end, StartCalculate = function()
  o1872["Value"] = o1872.GetCalculated()
  o28.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1872.Value == L0) then
    o1872["Value"] = L0
    o28.ReCalculate()
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
  ShieldedBody_SetLogarithmicMode(L0.Node)
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o1874, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o1874, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o1874, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1874, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  StopAllActiveBehaviours(L0)
  CallFunction(o1874, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearAreaFrom(L0, 0, "/Scenario_Dynamic/Navigation/BrainFireArea_2", o3246.Node, 1, 1, "Code10")
  else
    CallFunction(o1874, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code11")
  else
    CallFunction(o1874, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1874, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  StopAllActiveBehaviours(L0)
  CallFunction(o1874, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "E", "", "", "", 1, "Code14")
  else
    CallFunction(o1874, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1926 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1926, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1926, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1926, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o1926, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o1926, "Code5")
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
S_o1974 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1974, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1974, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1974, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o1974, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o1974, "Code5")
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
S_o2022 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2022, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2022, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2022, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o2022, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o2022, "Code5")
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
S_o2070 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2070, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2070, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2070, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o2070, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2070, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DockArea", "/Scenario_Dynamic/Navigation/DockArea" }, 1, 1, "Code6")
  else
    CallFunction(o2070, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o1811, nil, 1e+32, "Code7")
  else
    CallFunction(o2070, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2077.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2073.Value ~= True) then
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
o2073 = { [nil] = {}, GetCalculated = function()
  if not (o1825.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2073.SetStateValue(o2073.GetCalculated())
end, StartCalculate = function()
  o2073["Value"] = o2073.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2073.Value == L0) then
    o2073["Value"] = L0
    CallFunction(o2070, "ProcesseStateChange")
  end
end }
o2077 = { [nil] = {}, Start = function()
  o2077["Value"] = False
  o1835.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2077.Value == L0) then
    o2077["Value"] = L0
    o1835.ReCalculate()
  end
end }
S_o2120 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2120, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2120, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2120, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o2120, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2120, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DockArea", "/Scenario_Dynamic/Navigation/DockArea" }, 1, 1, "Code6")
  else
    CallFunction(o2120, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o1811, nil, 1e+32, "Code7")
  else
    CallFunction(o2120, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2127.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2123.Value ~= True) then
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
o2123 = { [nil] = {}, GetCalculated = function()
  if not (o1825.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2123.SetStateValue(o2123.GetCalculated())
end, StartCalculate = function()
  o2123["Value"] = o2123.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2123.Value == L0) then
    o2123["Value"] = L0
    CallFunction(o2120, "ProcesseStateChange")
  end
end }
o2127 = { [nil] = {}, Start = function()
  o2127["Value"] = False
  o1835.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2127.Value == L0) then
    o2127["Value"] = L0
    o1835.ReCalculate()
  end
end }
S_o2170 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2170, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2170, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2170, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o3246.Node)
  CallFunction(o2170, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/bojepath2", 1, 1 } }("Code5")
  else
    CallFunction(o2170, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2170, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DipoledOut = function(L0, L1)
  o2176.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2172.Value ~= True) then
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
o2172 = { [nil] = {}, GetCalculated = function()
  if not (o3302.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2172.SetStateValue(o2172.GetCalculated())
end, StartCalculate = function()
  o2172["Value"] = o2172.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2172.Value == L0) then
    DelayedFunction(2, o2172, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2172.Value == L0) then
    o2172["Value"] = L0
    CallFunction(o2170, "ProcesseStateChange")
  end
end }
o2176 = { [nil] = {}, Start = function()
  o2176["Value"] = False
  o2221.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2176.Value == L0) then
    o2176["Value"] = L0
    o2221.ReCalculate()
  end
end }
S_o2218 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2218, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2218, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2218, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o3246.Node)
  CallFunction(o2218, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/bojepath_final", 0.4, 1 } }("Code5")
  else
    CallFunction(o2218, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/bojepath3", 0.3, 1 } }("Code6")
  else
    CallFunction(o2218, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o2218, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2218, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  StopAllActiveBehaviours(L0)
  CallFunction(o2218, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code10")
  else
    CallFunction(o2218, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  StopAllActiveBehaviours(L0)
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o2218, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
end, SetStateValue_Destroyed = function(L0, L1)
  o2225.SetStateValue(L1)
end, SetStateValue_DipoledOut = function(L0, L1)
  o2226.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2221.Value ~= True) then
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
o2221 = { [nil] = {}, GetCalculated = function()
  if not (o2176.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2221.SetStateValue(o2221.GetCalculated())
end, StartCalculate = function()
  o2221["Value"] = o2221.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2221.Value == L0) then
    o2221["Value"] = L0
    CallFunction(o2218, "ProcesseStateChange")
  end
end }
o2225 = { [nil] = {}, Start = function()
  o2225["Value"] = False
  o1833.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2225.Value == L0) then
    o2225["Value"] = L0
    o1833.ReCalculate()
  end
end }
o2226 = { [nil] = {}, Start = function()
  o2226["Value"] = False
  o1832.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2226.Value == L0) then
    o2226["Value"] = L0
    o1832.ReCalculate()
  end
end }
S_o2268 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2268, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2268, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2268, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "atl_techbomber", "pla", "", "", 1, "Code4")
  else
    CallFunction(o2268, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2273.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2270.Value ~= True) then
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
o2270 = { [nil] = {}, GetCalculated = function()
  if not (o1824.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2270.SetStateValue(o2270.GetCalculated())
end, StartCalculate = function()
  o2270["Value"] = o2270.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2270.Value == L0) then
    o2270["Value"] = L0
    CallFunction(o2268, "ProcesseStateChange")
  end
end }
o2273 = { [nil] = {}, Start = function()
  o2273["Value"] = False
  o3621.StartCalculate()
  o3627.StartCalculate()
  o3642.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2273.Value == L0) then
    o2273["Value"] = L0
    o3621.ReCalculate()
    o3627.ReCalculate()
    o3642.ReCalculate()
  end
end }
S_o2316 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2316, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2316, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2316, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "atl_techbomber", "pla", "", "", 1, "Code4")
  else
    CallFunction(o2316, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2321.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2318.Value ~= True) then
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
o2318 = { [nil] = {}, GetCalculated = function()
  if not (o1824.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2318.SetStateValue(o2318.GetCalculated())
end, StartCalculate = function()
  o2318["Value"] = o2318.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2318.Value == L0) then
    DelayedFunction(1, o2318, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2318.Value == L0) then
    o2318["Value"] = L0
    CallFunction(o2316, "ProcesseStateChange")
  end
end }
o2321 = { [nil] = {}, Start = function()
  o2321["Value"] = False
  o1844.StartCalculate()
  o3621.StartCalculate()
  o3627.StartCalculate()
  o3642.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2321.Value == L0) then
    o2321["Value"] = L0
    o1844.ReCalculate()
    o3621.ReCalculate()
    o3627.ReCalculate()
    o3642.ReCalculate()
  end
end }
S_o2364 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2364, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2364, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2364, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o2364, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2364, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o2364, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o2368.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2365.Value ~= True) then
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
o2365 = { [nil] = {}, GetCalculated = function()
  if not (o1834.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2365.SetStateValue(o2365.GetCalculated())
end, StartCalculate = function()
  o2365["Value"] = o2365.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2365.Value == L0) then
    o2365["Value"] = L0
    CallFunction(o2364, "ProcesseStateChange")
  end
end }
o2368 = { [nil] = {}, Start = function()
  o2368["Value"] = False
  o1825.StartCalculate()
  o1827.StartCalculate()
  o1828.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2368.Value == L0) then
    o2368["Value"] = L0
    o1825.ReCalculate()
    o1827.ReCalculate()
    o1828.ReCalculate()
  end
end }
S_o2401 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2401, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2401, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2401, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o2401, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2401, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o2401, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o2405.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2402.Value ~= True) then
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
o2402 = { [nil] = {}, GetCalculated = function()
  if not (o1834.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2402.SetStateValue(o2402.GetCalculated())
end, StartCalculate = function()
  o2402["Value"] = o2402.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2402.Value == L0) then
    o2402["Value"] = L0
    CallFunction(o2401, "ProcesseStateChange")
  end
end }
o2405 = { [nil] = {}, Start = function()
  o2405["Value"] = False
  o1825.StartCalculate()
  o1827.StartCalculate()
  o1828.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2405.Value == L0) then
    o2405["Value"] = L0
    o1825.ReCalculate()
    o1827.ReCalculate()
    o1828.ReCalculate()
  end
end }
S_o2438 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2438, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2438, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2438, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o2438, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2438, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o2438, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o2442.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2439.Value ~= True) then
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
o2439 = { [nil] = {}, GetCalculated = function()
  if not (o1834.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2439.SetStateValue(o2439.GetCalculated())
end, StartCalculate = function()
  o2439["Value"] = o2439.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2439.Value == L0) then
    o2439["Value"] = L0
    CallFunction(o2438, "ProcesseStateChange")
  end
end }
o2442 = { [nil] = {}, Start = function()
  o2442["Value"] = False
  o1825.StartCalculate()
  o1827.StartCalculate()
  o1828.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2442.Value == L0) then
    o2442["Value"] = L0
    o1825.ReCalculate()
    o1827.ReCalculate()
    o1828.ReCalculate()
  end
end }
S_o2475 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2475, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2475, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2475, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o2475, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2475, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o2475, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o2479.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2476.Value ~= True) then
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
o2476 = { [nil] = {}, GetCalculated = function()
  if not (o1834.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2476.SetStateValue(o2476.GetCalculated())
end, StartCalculate = function()
  o2476["Value"] = o2476.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2476.Value == L0) then
    o2476["Value"] = L0
    CallFunction(o2475, "ProcesseStateChange")
  end
end }
o2479 = { [nil] = {}, Start = function()
  o2479["Value"] = False
  o1825.StartCalculate()
  o1827.StartCalculate()
  o1828.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2479.Value == L0) then
    o2479["Value"] = L0
    o1825.ReCalculate()
    o1827.ReCalculate()
    o1828.ReCalculate()
  end
end }
S_o2511 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2511, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2511, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2511, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o2511, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2511, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o2511, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o2515.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2512.Value ~= True) then
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
o2512 = { [nil] = {}, GetCalculated = function()
  if not (o1834.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2512.SetStateValue(o2512.GetCalculated())
end, StartCalculate = function()
  o2512["Value"] = o2512.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2512.Value == L0) then
    o2512["Value"] = L0
    CallFunction(o2511, "ProcesseStateChange")
  end
end }
o2515 = { [nil] = {}, Start = function()
  o2515["Value"] = False
  o1825.StartCalculate()
  o1827.StartCalculate()
  o1828.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2515.Value == L0) then
    o2515["Value"] = L0
    o1825.ReCalculate()
    o1827.ReCalculate()
    o1828.ReCalculate()
  end
end }
S_o2548 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2548, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2548, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2548, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o2548, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2548, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o2548, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o2552.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2549.Value ~= True) then
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
o2549 = { [nil] = {}, GetCalculated = function()
  if not (o1834.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2549.SetStateValue(o2549.GetCalculated())
end, StartCalculate = function()
  o2549["Value"] = o2549.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2549.Value == L0) then
    o2549["Value"] = L0
    CallFunction(o2548, "ProcesseStateChange")
  end
end }
o2552 = { [nil] = {}, Start = function()
  o2552["Value"] = False
  o1825.StartCalculate()
  o1827.StartCalculate()
  o1828.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2552.Value == L0) then
    o2552["Value"] = L0
    o1825.ReCalculate()
    o1827.ReCalculate()
    o1828.ReCalculate()
  end
end }
S_o2585 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2585, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2585, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2585, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o2585, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2585, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o2585, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o2589.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2586.Value ~= True) then
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
o2586 = { [nil] = {}, GetCalculated = function()
  if not (o1834.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2586.SetStateValue(o2586.GetCalculated())
end, StartCalculate = function()
  o2586["Value"] = o2586.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2586.Value == L0) then
    o2586["Value"] = L0
    CallFunction(o2585, "ProcesseStateChange")
  end
end }
o2589 = { [nil] = {}, Start = function()
  o2589["Value"] = False
  o1825.StartCalculate()
  o1827.StartCalculate()
  o1828.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2589.Value == L0) then
    o2589["Value"] = L0
    o1825.ReCalculate()
    o1827.ReCalculate()
    o1828.ReCalculate()
  end
end }
S_o2622 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2622, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2622, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2622, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o2622, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2622, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o2622, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o2626.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2623.Value ~= True) then
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
o2623 = { [nil] = {}, GetCalculated = function()
  if not (o1834.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2623.SetStateValue(o2623.GetCalculated())
end, StartCalculate = function()
  o2623["Value"] = o2623.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2623.Value == L0) then
    o2623["Value"] = L0
    CallFunction(o2622, "ProcesseStateChange")
  end
end }
o2626 = { [nil] = {}, Start = function()
  o2626["Value"] = False
  o1825.StartCalculate()
  o1827.StartCalculate()
  o1828.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2626.Value == L0) then
    o2626["Value"] = L0
    o1825.ReCalculate()
    o1827.ReCalculate()
    o1828.ReCalculate()
  end
end }
S_o2659 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2659, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2659, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2659, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o2659, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2659, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o2659, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o2663.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2660.Value ~= True) then
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
o2660 = { [nil] = {}, GetCalculated = function()
  if not (o1834.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2660.SetStateValue(o2660.GetCalculated())
end, StartCalculate = function()
  o2660["Value"] = o2660.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2660.Value == L0) then
    o2660["Value"] = L0
    CallFunction(o2659, "ProcesseStateChange")
  end
end }
o2663 = { [nil] = {}, Start = function()
  o2663["Value"] = False
  o1825.StartCalculate()
  o1827.StartCalculate()
  o1828.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2663.Value == L0) then
    o2663["Value"] = L0
    o1825.ReCalculate()
    o1827.ReCalculate()
    o1828.ReCalculate()
  end
end }
S_o2696 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2696, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2696, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2696, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "pla", "atl_techbomber", "wng", "", 1, "/Scenario_Dynamic/Navigation/CrawlerRespawnPosition", "Code4")
  else
    CallFunction(o2696, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "pla", "atl_techbomber", "wng", "", 1, "Code5")
  else
    CallFunction(o2696, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2699.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2697.Value ~= True) then
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
o2697 = { [nil] = {}, GetCalculated = function()
  if not (o1828.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2697.SetStateValue(o2697.GetCalculated())
end, StartCalculate = function()
  o2697["Value"] = o2697.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2697.Value == L0) then
    o2697["Value"] = L0
    CallFunction(o2696, "ProcesseStateChange")
  end
end }
o2699 = { [nil] = {}, GetCalculated = function()
  if not (o1826.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2699.SetStateValue(o2699.GetCalculated())
end, StartCalculate = function()
  o2699["Value"] = o2699.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2699.Value == L0) then
    o2699["Value"] = L0
    CallFunction(o2696, "ProcesseStateChange")
  end
end }
S_o2745 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2745, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2745, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o2745, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "des", "E", "", "", 0, "Code4")
  else
    CallFunction(o2745, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2750.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2747.Value ~= True) then
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
o2747 = { [nil] = {}, GetCalculated = function()
  if not (o1828.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2747.SetStateValue(o2747.GetCalculated())
end, StartCalculate = function()
  o2747["Value"] = o2747.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2747.Value == L0) then
    DelayedFunction(10, o2747, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2747.Value == L0) then
    o2747["Value"] = L0
    CallFunction(o2745, "ProcesseStateChange")
  end
end }
o2750 = { [nil] = {}, Start = function()
  o2750["Value"] = False
  o1845.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2750.Value == L0) then
    o2750["Value"] = L0
    o1845.ReCalculate()
  end
end }
S_o2784 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2784, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2784, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o2784, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "des", "E", "", "", 0, "Code4")
  else
    CallFunction(o2784, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2789.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2786.Value ~= True) then
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
o2786 = { [nil] = {}, GetCalculated = function()
  if not (o1828.Value ~= True) then
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
    DelayedFunction(10, o2786, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2786.Value == L0) then
    o2786["Value"] = L0
    CallFunction(o2784, "ProcesseStateChange")
  end
end }
o2789 = { [nil] = {}, Start = function()
  o2789["Value"] = False
  o1845.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2789.Value == L0) then
    o2789["Value"] = L0
    o1845.ReCalculate()
  end
end }
S_o2823 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2823, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2823, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o2823, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "des", "E", "", "", 0, "Code4")
  else
    CallFunction(o2823, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2828.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2825.Value ~= True) then
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
o2825 = { [nil] = {}, GetCalculated = function()
  if not (o1828.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2825.SetStateValue(o2825.GetCalculated())
end, StartCalculate = function()
  o2825["Value"] = o2825.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2825.Value == L0) then
    DelayedFunction(10, o2825, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2825.Value == L0) then
    o2825["Value"] = L0
    CallFunction(o2823, "ProcesseStateChange")
  end
end }
o2828 = { [nil] = {}, Start = function()
  o2828["Value"] = False
  o1845.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2828.Value == L0) then
    o2828["Value"] = L0
    o1845.ReCalculate()
  end
end }
S_o2862 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2862, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2862, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2862, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "des", "E", "", "", 1, "Code4")
  else
    CallFunction(o2862, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2867.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2864.Value ~= True) then
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
o2864 = { [nil] = {}, GetCalculated = function()
  if not (o1828.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2864.SetStateValue(o2864.GetCalculated())
end, StartCalculate = function()
  o2864["Value"] = o2864.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2864.Value == L0) then
    DelayedFunction(12, o2864, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2864.Value == L0) then
    o2864["Value"] = L0
    CallFunction(o2862, "ProcesseStateChange")
  end
end }
o2867 = { [nil] = {}, Start = function()
  o2867["Value"] = False
  o1845.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2867.Value == L0) then
    o2867["Value"] = L0
    o1845.ReCalculate()
  end
end }
S_o2910 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2910, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2910, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2910, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "des", "E", "", "", 1, "Code4")
  else
    CallFunction(o2910, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2915.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2912.Value ~= True) then
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
o2912 = { [nil] = {}, GetCalculated = function()
  if not (o1828.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2912.SetStateValue(o2912.GetCalculated())
end, StartCalculate = function()
  o2912["Value"] = o2912.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2912.Value == L0) then
    DelayedFunction(12, o2912, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2912.Value == L0) then
    o2912["Value"] = L0
    CallFunction(o2910, "ProcesseStateChange")
  end
end }
o2915 = { [nil] = {}, Start = function()
  o2915["Value"] = False
  o1845.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2915.Value == L0) then
    o2915["Value"] = L0
    o1845.ReCalculate()
  end
end }
S_o2958 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2958, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2958, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2958, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "des", "E", "", "", 1, "Code4")
  else
    CallFunction(o2958, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2963.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2960.Value ~= True) then
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
o2960 = { [nil] = {}, GetCalculated = function()
  if not (o1828.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2960.SetStateValue(o2960.GetCalculated())
end, StartCalculate = function()
  o2960["Value"] = o2960.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2960.Value == L0) then
    DelayedFunction(12, o2960, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2960.Value == L0) then
    o2960["Value"] = L0
    CallFunction(o2958, "ProcesseStateChange")
  end
end }
o2963 = { [nil] = {}, Start = function()
  o2963["Value"] = False
  o1845.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2963.Value == L0) then
    o2963["Value"] = L0
    o1845.ReCalculate()
  end
end }
S_o3006 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3006, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3006, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3006, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "des", "E", "", "", 1, "Code4")
  else
    CallFunction(o3006, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3011.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3008.Value ~= True) then
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
o3008 = { [nil] = {}, GetCalculated = function()
  if not (o1828.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3008.SetStateValue(o3008.GetCalculated())
end, StartCalculate = function()
  o3008["Value"] = o3008.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3008.Value == L0) then
    DelayedFunction(12, o3008, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3008.Value == L0) then
    o3008["Value"] = L0
    CallFunction(o3006, "ProcesseStateChange")
  end
end }
o3011 = { [nil] = {}, Start = function()
  o3011["Value"] = False
  o1845.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3011.Value == L0) then
    o3011["Value"] = L0
    o1845.ReCalculate()
  end
end }
S_o3054 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3054, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3054, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3054, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "des", "E", "", "", 1, "Code4")
  else
    CallFunction(o3054, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Born = function(L0, L1)
  o3058.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o3059.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3056.Value ~= True) then
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
o3056 = { [nil] = {}, GetCalculated = function()
  if not (o1828.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3056.SetStateValue(o3056.GetCalculated())
end, StartCalculate = function()
  o3056["Value"] = o3056.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3056.Value == L0) then
    DelayedFunction(25, o3056, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3056.Value == L0) then
    o3056["Value"] = L0
    CallFunction(o3054, "ProcesseStateChange")
  end
end }
o3058 = { [nil] = {}, Start = function()
  o3058["Value"] = False
  o1838.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3058.Value == L0) then
    o3058["Value"] = L0
    o1838.ReCalculate()
  end
end }
o3059 = { [nil] = {}, Start = function()
  o3059["Value"] = False
  o1845.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3059.Value == L0) then
    o3059["Value"] = L0
    o1845.ReCalculate()
  end
end }
S_o3102 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3102, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3102, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3102, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "des", "E", "", "", 1, "Code4")
  else
    CallFunction(o3102, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3107.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3104.Value ~= True) then
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
o3104 = { [nil] = {}, GetCalculated = function()
  if not (o1828.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3104.SetStateValue(o3104.GetCalculated())
end, StartCalculate = function()
  o3104["Value"] = o3104.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3104.Value == L0) then
    DelayedFunction(23, o3104, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3104.Value == L0) then
    o3104["Value"] = L0
    CallFunction(o3102, "ProcesseStateChange")
  end
end }
o3107 = { [nil] = {}, Start = function()
  o3107["Value"] = False
  o1845.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3107.Value == L0) then
    o3107["Value"] = L0
    o1845.ReCalculate()
  end
end }
S_o3150 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3150, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3150, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3150, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "des", "E", "", "", 1, "Code4")
  else
    CallFunction(o3150, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3155.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3152.Value ~= True) then
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
o3152 = { [nil] = {}, GetCalculated = function()
  if not (o1828.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3152.SetStateValue(o3152.GetCalculated())
end, StartCalculate = function()
  o3152["Value"] = o3152.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3152.Value == L0) then
    DelayedFunction(26, o3152, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3152.Value == L0) then
    o3152["Value"] = L0
    CallFunction(o3150, "ProcesseStateChange")
  end
end }
o3155 = { [nil] = {}, Start = function()
  o3155["Value"] = False
  o1845.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3155.Value == L0) then
    o3155["Value"] = L0
    o1845.ReCalculate()
  end
end }
S_o3198 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3198, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3198, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3198, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "des", "E", "", "", 1, "Code4")
  else
    CallFunction(o3198, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3203.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3200.Value ~= True) then
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
o3200 = { [nil] = {}, GetCalculated = function()
  if not (o1828.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3200.SetStateValue(o3200.GetCalculated())
end, StartCalculate = function()
  o3200["Value"] = o3200.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3200.Value == L0) then
    DelayedFunction(22, o3200, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3200.Value == L0) then
    o3200["Value"] = L0
    CallFunction(o3198, "ProcesseStateChange")
  end
end }
o3203 = { [nil] = {}, Start = function()
  o3203["Value"] = False
  o1845.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3203.Value == L0) then
    o3203["Value"] = L0
    o1845.ReCalculate()
  end
end }
S_o3246 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3246, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3246, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3246, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o3246, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o3246, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3246, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o3246, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_DipoledOut = function(L0, L1)
  o3252.SetStateValue(L1)
end, SetStateValue_KineticShield50 = function(L0, L1)
  o3257.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3247.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o3248.Value ~= True) then
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
o3247 = { [nil] = {}, GetCalculated = function()
  if not (o1830.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3247.SetStateValue(o3247.GetCalculated())
end, StartCalculate = function()
  o3247["Value"] = o3247.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3247.Value == L0) then
    o3247["Value"] = L0
    CallFunction(o3246, "ProcesseStateChange")
  end
end }
o3248 = { [nil] = {}, GetCalculated = function()
  if not (o3257.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3248.SetStateValue(o3248.GetCalculated())
end, StartCalculate = function()
  o3248["Value"] = o3248.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3248.Value == L0) then
    o3248["Value"] = L0
    CallFunction(o3246, "ProcesseStateChange")
  end
end }
o3252 = { [nil] = {}, Start = function()
  o3252["Value"] = False
  o1831.StartCalculate()
  o1840.StartCalculate()
  o1841.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3252.Value == L0) then
    o3252["Value"] = L0
    o1831.ReCalculate()
    o1840.ReCalculate()
    o1841.ReCalculate()
  end
end }
o3257 = { [nil] = {}, Start = function()
  o3257["Value"] = False
  o3248.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3257.Value == L0) then
    o3257["Value"] = L0
    o3248.ReCalculate()
  end
end }
S_o3294 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o3246.Node)
  CallFunction(o3294, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3299 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o3299, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o3302.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3302 = { [nil] = {}, Start = function()
  o3302["Value"] = False
  o1775.StartCalculate()
  o1842.StartCalculate()
  o2172.StartCalculate()
  o3630.StartCalculate()
  o3644.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3302.Value == L0) then
    o3302["Value"] = L0
    o1775.ReCalculate()
    o1842.ReCalculate()
    o2172.ReCalculate()
    o3630.ReCalculate()
    o3644.ReCalculate()
  end
end }
S_o3304 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o3304, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Activated = function(L0, L1)
  o3305.SetStateValue(L1)
end, SetStateValue_Entered = function(L0, L1)
  o3307.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3305 = { [nil] = {}, Start = function()
  o3305["Value"] = False
  o3648.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3305.Value == L0) then
    o3305["Value"] = L0
    o3648.ReCalculate()
  end
end }
o3307 = { [nil] = {}, Start = function()
  o3307["Value"] = False
  o1843.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3307.Value == L0) then
    o3307["Value"] = L0
    o1843.ReCalculate()
  end
end }
S_o3309 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3309, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3309, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o3309, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "des", "E", "", "", 0, "Code4")
  else
    CallFunction(o3309, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3314.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3311.Value ~= True) then
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
o3311 = { [nil] = {}, GetCalculated = function()
  if not (o1818.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3311.SetStateValue(o3311.GetCalculated())
end, StartCalculate = function()
  o3311["Value"] = o3311.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3311.Value == L0) then
    o3311["Value"] = L0
    CallFunction(o3309, "ProcesseStateChange")
  end
end }
o3314 = { [nil] = {}, Start = function()
  o3314["Value"] = False
  o1845.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3314.Value == L0) then
    o3314["Value"] = L0
    o1845.ReCalculate()
  end
end }
S_o3348 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3348, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3348, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3348, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "des", "E", "", "", 1, "Code4")
  else
    CallFunction(o3348, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3353.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3350.Value ~= True) then
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
o3350 = { [nil] = {}, GetCalculated = function()
  if not (o1832.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3350.SetStateValue(o3350.GetCalculated())
end, StartCalculate = function()
  o3350["Value"] = o3350.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3350.Value == L0) then
    o3350["Value"] = L0
    CallFunction(o3348, "ProcesseStateChange")
  end
end }
o3353 = { [nil] = {}, Start = function()
  o3353["Value"] = False
  o1845.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3353.Value == L0) then
    o3353["Value"] = L0
    o1845.ReCalculate()
  end
end }
S_o3396 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3396, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3396, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3396, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "des", "E", "", "", 1, "Code4")
  else
    CallFunction(o3396, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3401.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3398.Value ~= True) then
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
o3398 = { [nil] = {}, GetCalculated = function()
  if not (o1832.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3398.SetStateValue(o3398.GetCalculated())
end, StartCalculate = function()
  o3398["Value"] = o3398.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3398.Value == L0) then
    o3398["Value"] = L0
    CallFunction(o3396, "ProcesseStateChange")
  end
end }
o3401 = { [nil] = {}, Start = function()
  o3401["Value"] = False
  o1845.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3401.Value == L0) then
    o3401["Value"] = L0
    o1845.ReCalculate()
  end
end }
S_o3444 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3444, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3444, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3444, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "des", "E", "", "", 1, "Code4")
  else
    CallFunction(o3444, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3449.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3446.Value ~= True) then
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
o3446 = { [nil] = {}, GetCalculated = function()
  if not (o1832.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3446.SetStateValue(o3446.GetCalculated())
end, StartCalculate = function()
  o3446["Value"] = o3446.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3446.Value == L0) then
    o3446["Value"] = L0
    CallFunction(o3444, "ProcesseStateChange")
  end
end }
o3449 = { [nil] = {}, Start = function()
  o3449["Value"] = False
  o1845.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3449.Value == L0) then
    o3449["Value"] = L0
    o1845.ReCalculate()
  end
end }
S_o3492 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3492, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3492, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3492, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "des", "E", "", "", 1, "Code4")
  else
    CallFunction(o3492, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3497.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3494.Value ~= True) then
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
o3494 = { [nil] = {}, GetCalculated = function()
  if not (o1832.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3494.SetStateValue(o3494.GetCalculated())
end, StartCalculate = function()
  o3494["Value"] = o3494.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3494.Value == L0) then
    o3494["Value"] = L0
    CallFunction(o3492, "ProcesseStateChange")
  end
end }
o3497 = { [nil] = {}, Start = function()
  o3497["Value"] = False
  o1845.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3497.Value == L0) then
    o3497["Value"] = L0
    o1845.ReCalculate()
  end
end }
S_o3540 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3540, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3540, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3540, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "/Scenario_Dynamic/Navigation/BrainFireArea_1", "des", "E", "", "", 1, "Code4")
  else
    CallFunction(o3540, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3545.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3542.Value ~= True) then
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
o3542 = { [nil] = {}, GetCalculated = function()
  if not (o1832.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3542.SetStateValue(o3542.GetCalculated())
end, StartCalculate = function()
  o3542["Value"] = o3542.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3542.Value == L0) then
    o3542["Value"] = L0
    CallFunction(o3540, "ProcesseStateChange")
  end
end }
o3545 = { [nil] = {}, Start = function()
  o3545["Value"] = False
  o1845.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3545.Value == L0) then
    o3545["Value"] = L0
    o1845.ReCalculate()
  end
end }
S_o3588 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o2316.Node)
  CallFunction(o3588, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3593 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o2268.Node)
  CallFunction(o3593, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3598 = { [nil] = {}, Start = function(L0)

end }
o3599 = FormationLib.CreateFormation("Triangle", "", "", "", 30, 30)
S_o3601 = { [nil] = {}, Start = function(L0)

end }
S_o3602 = { [nil] = {}, Start = function(L0)

end }
S_o3603 = { [nil] = {}, Start = function(L0)

end }
S_o3604 = { [nil] = {}, Start = function(L0)

end }
o3606 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o3607 = { [nil] = {}, Start = function(L0)

end }
S_o3608 = { [nil] = {}, Start = function(L0)

end }
o3610 = FormationLib.CreateFormation("Row", "", "", "", 20, 20)
S_o3611 = { [nil] = {}, Start = function(L0)

end }
S_o3612 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "atmo")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  Camera_MoveInto(L0.Node, "/InGameSequences/Navigation/Position_1")
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/atl_techbomber_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  SendRadioMessageTake(o1819.Node, o1819.Node, 132)
  CallFunction(o3612, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code9")
  else
    CallFunction(o3612, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_2", 8, "MMMN", 0)
  CallFunction(o3612, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 8, "Code11")
  else
    CallFunction(o3612, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  o1824.SetStateValue(True)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_3", 2, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/cra_scout1_1", 1.5, "MMMN", 0)
  SendRadioMessageTake(o1819.Node, o1819.Node, 133)
  CallFunction(o3612, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code16")
  else
    CallFunction(o3612, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  FormationLib.PlaceFormationPath(o3605, o3606, "/InGameSequences/Navigation/PlayerPath_1")
  Camera_Cut(L0.Node, 1.5)
  CallFunction(o3612, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.5, "Code19")
  else
    CallFunction(o3612, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  Game_SetWayPoint(GetGameNode(), o3588.Node)
  Director_EndCutscene(L0.Node)
  CallFunction(o3612, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3618 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  FormationLib.PlaceFormationPath(o3600, o3599, "/InGameSequences/Navigation/TechPath_1")
  CallFunction(o3618, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o3600, o3599, "/InGameSequences/Navigation/TechPath_1", "pos_1", "pos_6", 0.5, 1, "Code2")
  else
    CallFunction(o3618, "Code2")
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
S_o3620 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3620, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  FormationLib.PlaceFormationPath(o3605, o3606, "/InGameSequences/Navigation/PlayerPath_2")
  Camera_Cut(L0.Node, 1.2)
  Camera_MoveInto(L0.Node, "/InGameSequences/Navigation/Position_4")
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/des_schrott3a_low_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  SendRadioMessageTake(o1819.Node, o1819.Node, 134)
  CallFunction(o3620, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6, "Code10")
  else
    CallFunction(o3620, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_5", 3, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/atl_techbomber_1", 3, "MMMN", 0)
  SendRadioMessageTake(o1819.Node, o1819.Node, 135)
  CallFunction(o3620, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6, "Code14")
  else
    CallFunction(o3620, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/des_schrott4a_low_1", 3, "MMMN", 0)
  CallFunction(o3620, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code16")
  else
    CallFunction(o3620, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  o1834.SetStateValue(True)
  Director_EndCutscene(L0.Node)
  CallFunction(o3620, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3621.Value ~= True) then
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
o3621 = { [nil] = {}, GetCalculated = function()
  if not (o2273.Value ~= True) then
    if not (o2321.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3621.SetStateValue(o3621.GetCalculated())
end, StartCalculate = function()
  o3621["Value"] = o3621.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3621.Value == L0) then
    DelayedFunction(5, o3621, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3621.Value == L0) then
    o3621["Value"] = L0
    CallFunction(o3620, "ProcesseStateChange")
  end
end }
S_o3626 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3626, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  FormationLib.PlaceFormationPath(o3600, o3599, "/InGameSequences/Navigation/TechPath_2")
  CallFunction(o3626, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o3600, o3599, "/InGameSequences/Navigation/TechPath_2", "pos_1", "pos_2", 0.5, 1, "Code3")
  else
    CallFunction(o3626, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  CallFunction(o2070, "Code5")
  CallFunction(o2120, "Code5")
  CallFunction(o3626, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3627.Value ~= True) then
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
o3627 = { [nil] = {}, GetCalculated = function()
  if not (o2273.Value ~= True) then
    if not (o2321.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3627.SetStateValue(o3627.GetCalculated())
end, StartCalculate = function()
  o3627["Value"] = o3627.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3627.Value == L0) then
    DelayedFunction(6, o3627, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3627.Value == L0) then
    o3627["Value"] = L0
    CallFunction(o3626, "ProcesseStateChange")
  end
end }
S_o3629 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3629, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  FormationLib.PlaceFormationPath(o3609, o3610, "/InGameSequences/Navigation/PlayerPath_4")
  Camera_Cut(L0.Node, 2)
  Camera_MoveTo(L0.Node, "/Scenario_Dynamic/Object/tz_geb_brainfire_sat_cut", 0, "RFMY", 20)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/tz_geb_brainfire_sat_cut", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o3629, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code9")
  else
    CallFunction(o3629, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  SendRadioMessageTake(o1819.Node, o1819.Node, 142)
  CallFunction(o3629, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code11")
  else
    CallFunction(o3629, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  o1830.SetStateValue(True)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_6", 1, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/tz_fregatte_creole_1", 2, "MMMN", 0)
  CallFunction(o3629, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code15")
  else
    CallFunction(o3629, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Camera_Cut(L0.Node, 1)
  Game_SetWayPoint(GetGameNode(), o3294.Node)
  CallFunction(o3629, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code19")
  else
    CallFunction(o3629, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  FormationLib.PlaceFormationPath(o3609, o3610, "/InGameSequences/Navigation/PlayerPath_3")
  Director_EndCutscene(L0.Node)
  CallFunction(o1874, "Code8")
  Game_SetWayPoint(GetGameNode(), o3294.Node)
  SendRadioMessageTake(o3246.Node, o1819.Node, 143)
  CallFunction(o3629, "Code24")
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3630.Value ~= True) then
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
o3630 = { [nil] = {}, GetCalculated = function()
  if not (o3302.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3630.SetStateValue(o3630.GetCalculated())
end, StartCalculate = function()
  o3630["Value"] = o3630.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3630.Value == L0) then
    DelayedFunction(1, o3630, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3630.Value == L0) then
    o3630["Value"] = L0
    CallFunction(o3629, "ProcesseStateChange")
  end
end }
S_o3636 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3636, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/BojePosition_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/tz_geb_brainfire_sat_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o3636, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code7")
  else
    CallFunction(o3636, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  FormationLib.PlaceFormationPath(o3609, o3610, "/InGameSequences/Navigation/PlayerPath_5")
  Director_EndCutscene(L0.Node)
  CallFunction(o1874, "Code12")
  Game_SetWayPoint(GetGameNode(), o3304.Node)
  CallFunction(o3636, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3637.Value ~= True) then
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
o3637 = { [nil] = {}, GetCalculated = function()
  if not (o1818.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3637.SetStateValue(o3637.GetCalculated())
end, StartCalculate = function()
  o3637["Value"] = o3637.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3637.Value == L0) then
    o3637["Value"] = L0
    CallFunction(o3636, "ProcesseStateChange")
  end
end }
S_o3640 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "atmo")
  CallFunction(o3640, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3640, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  Game_PlayMusic(GetGameNode(), "agressive")
  CallFunction(o3640, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3640, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Game_PlayMusic(GetGameNode(), "atmo")
  CallFunction(o3640, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3640, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Game_PlayMusic(GetGameNode(), "agressive")
  CallFunction(o3640, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3640, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  Game_PlayMusic(GetGameNode(), "atmo")
  CallFunction(o3640, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3640, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Game_PlayMusic(GetGameNode(), "track5")
  CallFunction(o3640, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code12")
  else
    CallFunction(o3640, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Game_PlayMusic(GetGameNode(), "track4")
  CallFunction(o3640, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3640, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Game_PlayMusic(GetGameNode(), "atmo")
  CallFunction(o3640, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3640, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Game_PlayMusic(GetGameNode(), "agressive")
  CallFunction(o3640, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3641.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3642.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o3643.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3644.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o3645.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 13) then
    if not (L0.CodeIndex >= 14) then
      if not (o3647.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 15) then
    if not (L0.CodeIndex >= 16) then
      if not (o3648.Value ~= True) then
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
o3641 = { [nil] = {}, GetCalculated = function()
  if not (o1824.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3641.SetStateValue(o3641.GetCalculated())
end, StartCalculate = function()
  o3641["Value"] = o3641.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3641.Value == L0) then
    o3641["Value"] = L0
    CallFunction(o3640, "ProcesseStateChange")
  end
end }
o3642 = { [nil] = {}, GetCalculated = function()
  if not (o2273.Value ~= True) then
    if not (o2321.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3642.SetStateValue(o3642.GetCalculated())
end, StartCalculate = function()
  o3642["Value"] = o3642.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3642.Value == L0) then
    o3642["Value"] = L0
    CallFunction(o3640, "ProcesseStateChange")
  end
end }
o3643 = { [nil] = {}, GetCalculated = function()
  if not (o1826.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3643.SetStateValue(o3643.GetCalculated())
end, StartCalculate = function()
  o3643["Value"] = o3643.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3643.Value == L0) then
    o3643["Value"] = L0
    CallFunction(o3640, "ProcesseStateChange")
  end
end }
o3644 = { [nil] = {}, GetCalculated = function()
  if not (o3302.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3644.SetStateValue(o3644.GetCalculated())
end, StartCalculate = function()
  o3644["Value"] = o3644.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3644.Value == L0) then
    DelayedFunction(1, o3644, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3644.Value == L0) then
    o3644["Value"] = L0
    CallFunction(o3640, "ProcesseStateChange")
  end
end }
o3645 = { [nil] = {}, GetCalculated = function()
  if not (o1830.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3645.SetStateValue(o3645.GetCalculated())
end, StartCalculate = function()
  o3645["Value"] = o3645.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3645.Value == L0) then
    o3645["Value"] = L0
    CallFunction(o3640, "ProcesseStateChange")
  end
end }
o3647 = { [nil] = {}, GetCalculated = function()
  if not (o1831.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3647.SetStateValue(o3647.GetCalculated())
end, StartCalculate = function()
  o3647["Value"] = o3647.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3647.Value == L0) then
    o3647["Value"] = L0
    CallFunction(o3640, "ProcesseStateChange")
  end
end }
o3648 = { [nil] = {}, GetCalculated = function()
  if not (o3305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3648.SetStateValue(o3648.GetCalculated())
end, StartCalculate = function()
  o3648["Value"] = o3648.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3648.Value == L0) then
    o3648["Value"] = L0
    CallFunction(o3640, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 186)
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
  o780 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_2/Turm1", S_o780)
  o816 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_3/Turm1", S_o816)
  o852 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_4/Turm1", S_o852)
  o888 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_5/Turm1", S_o888)
  o924 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_6/Turm1", S_o924)
  o960 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torptower_1/Turm1", S_o960)
  o996 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torptower_2/Turm1", S_o996)
  o1032 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_geb_addon01_1", S_o1032)
  o1066 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_geb_add_china_big_1", S_o1066)
  o1100 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_7/Turm1", S_o1100)
  o1136 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_8/Turm1", S_o1136)
  o1172 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_9/Turm1", S_o1172)
  o1208 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_10/Turm1", S_o1208)
  o1244 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_11/Turm1", S_o1244)
  o1280 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_12/Turm1", S_o1280)
  o1316 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_13/Turm1", S_o1316)
  o1352 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vent_1", S_o1352)
  o1386 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vent_2", S_o1386)
  o1420 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vent_3", S_o1420)
  o1454 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vent_4", S_o1454)
  o1488 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_14/Turm1", S_o1488)
  o1524 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_15/Turm1", S_o1524)
  o1560 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_16/Turm1", S_o1560)
  o1596 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_medium_17/Turm1", S_o1596)
  o1632 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torptower_3/Turm1", S_o1632)
  o1668 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torptower_4/Turm1", S_o1668)
  o1704 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torptower_5/Turm1", S_o1704)
  o1740 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element06a_1", S_o1740)
  o1774 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_brainfire_1", S_o1774)
  o1779.Start()
  o1812 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "CrawlerRespawnPosition", S_o1812)
  o1813 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "BojeTrigger", S_o1813)
  o1818.Start()
  o1819 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o1819)
  o1824.Start()
  o1830.Start()
  o1834.Start()
  o1874 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_bonham", S_o1874)
  o1926 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_degrange", S_o1926)
  o1974 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_harper", S_o1974)
  o2022 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_pico", S_o2022)
  o2070 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_techbomber_1", S_o2070)
  o2077.Start()
  o2120 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_techbomber_2", S_o2120)
  o2127.Start()
  o2170 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_geb_brainfire_sat_cut", S_o2170)
  o2176.Start()
  o2218 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_geb_brainfire_sat_1", S_o2218)
  o2225.Start()
  o2226.Start()
  o2268 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_1", S_o2268)
  o2273.Start()
  o2316 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_2", S_o2316)
  o2321.Start()
  o2364 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_schrott2a_low_1", S_o2364)
  o2368.Start()
  o2401 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_schrott3a_low_1", S_o2401)
  o2405.Start()
  o2438 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_schrott4a_low_1", S_o2438)
  o2442.Start()
  o2475 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_schrott5_bui_1", S_o2475)
  o2479.Start()
  o2511 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_schrott6_low_1", S_o2511)
  o2515.Start()
  o2548 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_schrott5_low_1", S_o2548)
  o2552.Start()
  o2585 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_schrott4b_low_1", S_o2585)
  o2589.Start()
  o2622 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_schrott3b_low_1", S_o2622)
  o2626.Start()
  o2659 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_schrott3a_low_2", S_o2659)
  o2663.Start()
  o2696 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout_respawn", S_o2696)
  o2745 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_1", S_o2745)
  o2750.Start()
  o2784 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_2", S_o2784)
  o2789.Start()
  o2823 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_3", S_o2823)
  o2828.Start()
  o2862 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_6", S_o2862)
  o2867.Start()
  o2910 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_7", S_o2910)
  o2915.Start()
  o2958 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_8", S_o2958)
  o2963.Start()
  o3006 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_9", S_o3006)
  o3011.Start()
  o3054 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_6_2", S_o3054)
  o3058.Start()
  o3059.Start()
  o3102 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_7_2", S_o3102)
  o3107.Start()
  o3150 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_8_2", S_o3150)
  o3155.Start()
  o3198 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_9_2", S_o3198)
  o3203.Start()
  o3246 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_fregatte_creole_1", S_o3246)
  o3252.Start()
  o3257.Start()
  o3294 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_1", S_o3294)
  o3299 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_01_1", S_o3299)
  o3302.Start()
  o3304 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_02_1", S_o3304)
  o3305.Start()
  o3307.Start()
  o3309 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_end_1", S_o3309)
  o3314.Start()
  o3348 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_end_1", S_o3348)
  o3353.Start()
  o3396 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_end_2", S_o3396)
  o3401.Start()
  o3444 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_end_3", S_o3444)
  o3449.Start()
  o3492 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_end_4", S_o3492)
  o3497.Start()
  o3540 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_end_5", S_o3540)
  o3545.Start()
  o3588 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_2", S_o3588)
  o3593 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_3", S_o3593)
  o3598 = BindEasy(Node_Find("/"), "Camera", S_o3598)
  o3601 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_1", S_o3601)
  o3602 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_2", S_o3602)
  o3603 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_3", S_o3603)
  o3604 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_4", S_o3604)
  o3607 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_5", S_o3607)
  o3608 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_6", S_o3608)
  o3611 = BindEasy(Node_Find("/InGameSequences/Navigation"), "BojePosition_1", S_o3611)
  o3612 = BindEasy(Node_Find("/InGameSequences/Director"), "IntroChapter1V", S_o3612)
  o3618 = BindEasy(Node_Find("/InGameSequences/Director"), "IntroChapter1Addon", S_o3618)
  o3620 = BindEasy(Node_Find("/InGameSequences/Director"), "IntroChapter2V", S_o3620)
  o3626 = BindEasy(Node_Find("/InGameSequences/Director"), "IntroChapter2Addon", S_o3626)
  o3629 = BindEasy(Node_Find("/InGameSequences/Director"), "IntroChapter4V", S_o3629)
  o3636 = BindEasy(Node_Find("/InGameSequences/Director"), "ShowBojeDesOrDipol", S_o3636)
  o3640 = BindEasy(Node_Find("/InGameSequences/Director"), "Music", S_o3640)
  o3600 = { {}, o2070, o2120 }()
  o3605 = { {}, o1819 }()
  o3609 = { {}, o1819, o1874 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end