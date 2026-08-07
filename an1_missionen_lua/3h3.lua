-- dekompiliert aus map\3h3\script\3h3.sco
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
  Game_SetDecompressionHeight(node0, 700)
  Game_SetAmbientLight(node0, 0.070588, 0.12549, 0.015686)
  Game_SetParallelLightT(node0, 0.141176, 0.25098, 0.031373)
  Game_SetParallelLightB(node0, 0.666667, 0.443137, 0.172549)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_3H3_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_sfx_cataclysm2.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_track04.sam", 1)
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
  Body_SetCS(node8, MAT_Vector3(662.302049, 3321.000882, 168.501953), MAT_Vector3(90, 0, 0))
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
  Body_SetCS(node9, MAT_Vector3(974.494969, 3274.609568, 16.501468), MAT_Vector3(90.115683, 0, 0))
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
  Body_SetCS(node10, MAT_Vector3(906.247599, 3608.87281, 97.894921), MAT_Vector3(179.882362, 0, 0))
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
  Body_SetCS(node11, MAT_Vector3(803.759911, 2919.564642, 166.836864), MAT_Vector3(-54.689983, 0, 0))
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
  Body_SetCS(node12, MAT_Vector3(700.370505, 3445.536347, 92.74578), MAT_Vector3(-180, 0, 0))
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
  Body_SetCS(node13, MAT_Vector3(730.073245, 3520.541071, 85.64412), MAT_Vector3(-89.959146, 0, 0))
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
  Body_SetCS(node14, MAT_Vector3(731.787313, 3184.36041, 82.46058), MAT_Vector3(-0.278261, 0, 0))
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
  Body_SetCS(node15, MAT_Vector3(836.210644, 2807.969827, 164.557983), MAT_Vector3(-13.51275, 0.096226, -0.448375))
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
  Body_SetCS(node16, MAT_Vector3(806.222979, 3574.540677, 88.942972), MAT_Vector3(179.993018, 0, 0))
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
  Body_SetCS(node17, MAT_Vector3(1086.590974, 3568.893481, 42.84075), MAT_Vector3(179.993, 0, 0))
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
  Body_SetCS(node18, MAT_Vector3(2206.017454, 3592.499752, -31.658348), MAT_Vector3(135.499002, 0, 0))
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
  Body_SetCS(node19, MAT_Vector3(707.785284, 3060.480256, 75.798571), MAT_Vector3(-54.399905, 0, 0))
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
  Body_SetCS(node20, MAT_Vector3(2219.368682, 3474.574233, 92.580822), MAT_Vector3(-85.372996, 0, 0))
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
  Body_SetCS(node21, MAT_Vector3(2048.660491, 2567.388649, 92.58082), MAT_Vector3(-113.450085, 0, 0))
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
  Body_SetCS(node22, MAT_Vector3(1983.470644, 3469.496844, 26.640362), MAT_Vector3(105.767868, -5.785886, 1.828459))
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
  Body_SetCS(node23, MAT_Vector3(1943.542547, 2512.130873, 93.517016), MAT_Vector3(74.144338, -13.350114, -14.794273))
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
  Body_SetCS(node24, MAT_Vector3(1570.576074, 3563.146396, 108.457917), MAT_Vector3(20.665359, 0, 0))
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
  Body_SetCS(node25, MAT_Vector3(2192.695048, 3384.334133, 13.584246), MAT_Vector3(-84.83332, 0, 0))
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
  Body_SetCS(node26, MAT_Vector3(1708.109517, 2955.732029, 89.332171), MAT_Vector3(-129.712006, 0, 0))
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
  Body_SetCS(node27, MAT_Vector3(1761.850196, 3269.43479, 7.157054), MAT_Vector3(141.051513, 0, 0))
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
  Body_SetCS(node28, MAT_Vector3(1696.996671, 3351.467913, 91.573395), MAT_Vector3(45.002058, 0, 0))
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
  Body_SetCS(node29, MAT_Vector3(805.74101, 3429.531142, 78.103786), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node29, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "gen_turret_medium_2")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(708.757517, 3372.366606, 79.04509), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node30, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "gen_turret_medium_3")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(747.346844, 3125.193618, 76.141938), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node31, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "gen_turret_medium_4")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(713.31647, 3235.296411, 79.483251), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_turret_medium_5")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(1972.285385, 2599.166558, 132.083894), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node33, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "gen_turret_medium_6")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(2135.843056, 3469.28672, 130.003484), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "gen_torptower_1")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(823.32055, 3486.39374, 81.395499), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node35, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_torptower_2")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(874.384382, 2872.864668, 154.049958), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node38, MAT_Vector3(765.261238, 3184.05256, 305.465471), MAT_Vector3(-0.020447, 0, 0))
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
  Body_SetCS(node39, MAT_Vector3(2301.942275, 3574.421931, 95), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_turret_medium_8")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(1732.240315, 3021.220005, 77.600712), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_turret_medium_9")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(1344.339111, 3009.743244, 55), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_turret_medium_10")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(1744.524832, 3591.797576, 170.606717), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_turret_medium_11")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(2053.047706, 2605.708007, 95.455287), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node43, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_turret_medium_12")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(2273.088052, 3347.833671, 12.34193), MAT_Vector3(6.244772, 0, 0))
  Node_ParseIniFile(node44, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_turret_medium_13")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(1772.969024, 2900.45488, 77.15885), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node45, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_vent_1")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(1301.541113, 3059.28398, 56.3762), MAT_Vector3(-97.746487, 0, 0))
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
  Body_SetCS(node47, MAT_Vector3(1332.724705, 3299.414836, 57.659667), MAT_Vector3(-96.056346, 0, 0))
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
  Body_SetCS(node48, MAT_Vector3(1297.56876, 3360.46977, 57.231878), MAT_Vector3(-92.957754, 0, 0))
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
  Body_SetCS(node49, MAT_Vector3(1251.564741, 3040.108347, 56.355735), MAT_Vector3(-93.802825, 0, 0))
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
  Body_SetCS(node50, MAT_Vector3(1085.874209, 3384.971323, 35.037467), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node50, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_turret_medium_15")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(898.43268, 2884.787976, 152.146051), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "gen_turret_medium_16")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(983.784867, 3093.010364, 36.118014), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node52, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_turret_medium_17")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(966.512883, 3050.221707, 35.577741), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node53, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "gen_torptower_3")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(939.151, 3084.632329, 37.637427), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node54, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "gen_torptower_4")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(1056.346667, 3396.747859, 36.684127), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node55, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "gen_torptower_5")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(1979.016051, 2643.021901, 95.257388), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node56, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "tz_element06a_1")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(1695.975439, 2688.837168, 19.401671), MAT_Vector3(49.295779, 0, 0))
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
  node65 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_1")
  Node_AddSon(node64, node65)
  PatrolArea_SetPosition(node65, MAT_Vector3(2707.674932, 1735.086569, 145.030139))
  PatrolArea_SetRadius(node65, 750)
  PatrolArea_SetMinZ(node65, -80)
  PatrolArea_SetMaxZ(node65, 500)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("NOD_Position", "RespawnPosition_1")
  Node_AddSon(node64, node66)
  Position_SetPosition(node66, MAT_Vector3(2477.18905, 2100.255685, 186.226409))
  Position_SetRadius(node66, 5)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("NOD_Position", "RespawnPosition_2")
  Node_AddSon(node64, node67)
  Position_SetPosition(node67, MAT_Vector3(2428.441687, 1633.107339, 148.364006))
  Position_SetRadius(node67, 5)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("NOD_Position", "RespawnPosition_3")
  Node_AddSon(node64, node68)
  Position_SetPosition(node68, MAT_Vector3(2936.788596, 1418.810996, 146.349487))
  Position_SetRadius(node68, 5)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node62, node69)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node62, node70)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node62, node71)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node71, node72)
  Body_SetCS(node72, MAT_Vector3(2707.989254, 2615.287172, 115.095076), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node72, "osd/pla/pla_avenger.osd")
  Body_SetFriendOrFoeID(node72, 1)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_vessel", "wng_pico")
  Node_AddSon(node71, node73)
  Body_SetCS(node73, MAT_Vector3(2745.892791, 2571.328055, 135.2343), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node73, "osd/wng/wng_pico_c2.osd")
  Body_SetFriendOrFoeID(node73, 1)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_vessel", "wng_harper")
  Node_AddSon(node71, node74)
  Body_SetCS(node74, MAT_Vector3(2708.02143, 2568.13668, 135.2343), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node74, "osd/wng/wng_harper_c2.osd")
  Body_SetFriendOrFoeID(node74, 1)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_vessel", "wng_degrange")
  Node_AddSon(node71, node75)
  Body_SetCS(node75, MAT_Vector3(2682.736924, 2567.517693, 135.2343), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node75, "osd/wng/wng_degrange_c2.osd")
  Body_SetFriendOrFoeID(node75, 1)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_vessel", "cra_scout1_1")
  Node_AddSon(node71, node76)
  Body_SetCS(node76, MAT_Vector3(2718.71509, 1946.575109, 513.790841), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node76, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node76, 6)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_vessel", "cra_scout1_2")
  Node_AddSon(node71, node77)
  Body_SetCS(node77, MAT_Vector3(2612.155236, 1946.031987, 184.980494), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node77, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node77, 6)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_vessel", "cra_scout1_3")
  Node_AddSon(node71, node78)
  Body_SetCS(node78, MAT_Vector3(2507.899835, 1871.501413, 487.666183), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node78, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node78, 6)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_vessel", "cra_scout1_4")
  Node_AddSon(node71, node79)
  Body_SetCS(node79, MAT_Vector3(2865.411149, 1739.521915, 451.181747), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node79, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node79, 2)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_vessel", "cra_scout1_5")
  Node_AddSon(node71, node80)
  Body_SetCS(node80, MAT_Vector3(2859.61963, 1832.954067, 488.855457), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node80, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node80, 6)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_vessel", "cra_scout1_6")
  Node_AddSon(node71, node81)
  Body_SetCS(node81, MAT_Vector3(2541.963633, 1612.444941, 472.802154), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node81, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node81, 2)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_vessel", "cra_scout1_8_2")
  Node_AddSon(node71, node82)
  Body_SetCS(node82, MAT_Vector3(2707.781875, 1457.156653, 513.7908), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node82, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node82, 6)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_vessel", "cra_scout1_9")
  Node_AddSon(node71, node83)
  Body_SetCS(node83, MAT_Vector3(2458.269385, 2087.98192, 184.9805), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node83, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node83, 2)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_vessel", "cra_scout1_9_2")
  Node_AddSon(node71, node84)
  Body_SetCS(node84, MAT_Vector3(2654.229905, 2085.202694, 184.9805), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node84, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node84, 6)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_vessel", "cra_scout1_11")
  Node_AddSon(node71, node85)
  Body_SetCS(node85, MAT_Vector3(2833.119158, 1545.510293, 451.1817), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node85, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node85, 6)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_vessel", "cra_bomber_1")
  Node_AddSon(node71, node86)
  Body_SetCS(node86, MAT_Vector3(2674.967235, 1914.454206, 598.538678), MAT_Vector3(122.889371, 0, 0))
  Node_ParseIniFile(node86, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node86, 6)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_vessel", "gen_freighter1_1")
  Node_AddSon(node71, node87)
  Body_SetCS(node87, MAT_Vector3(2503.904264, 2119.360573, 622.001822), MAT_Vector3(-127.323954, 0, 0))
  Node_ParseIniFile(node87, "osd/gen/gen_freighter1.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_vessel", "atl_scout1_1_c1")
  Node_AddSon(node71, node88)
  Body_SetCS(node88, MAT_Vector3(2603.036728, 1587.418583, 157.96329), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node88, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node88, 3)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_vessel", "atl_scout1_2_c1")
  Node_AddSon(node71, node89)
  Body_SetCS(node89, MAT_Vector3(2782.380577, 1643.176126, 213.246177), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node89, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node89, 3)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_vessel", "atl_scout1_3_c1")
  Node_AddSon(node71, node90)
  Body_SetCS(node90, MAT_Vector3(2792.85701, 1715.535824, 394.171988), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node90, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node90, 3)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_vessel", "atl_scout1_4_c1")
  Node_AddSon(node71, node91)
  Body_SetCS(node91, MAT_Vector3(2483.453518, 1700.038225, 454.480591), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node91, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node91, 3)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_vessel", "atl_scout1_1_c3")
  Node_AddSon(node71, node92)
  Body_SetCS(node92, MAT_Vector3(2650.830644, 1564.843342, 389.139164), MAT_Vector3(178.726153, 0, 0))
  Node_ParseIniFile(node92, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node92, 3)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_vessel", "atl_scout1_2_c3")
  Node_AddSon(node71, node93)
  Body_SetCS(node93, MAT_Vector3(2683.531802, 1564.585857, 396.394404), MAT_Vector3(-166.560577, 0, 0))
  Node_ParseIniFile(node93, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node93, 3)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_vessel", "atl_scout1_3_c3")
  Node_AddSon(node71, node94)
  Body_SetCS(node94, MAT_Vector3(2617.185054, 1570.611069, 394.172), MAT_Vector3(158.828362, 0, 0))
  Node_ParseIniFile(node94, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node94, 3)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_vessel", "tz_scout2v2_1")
  Node_AddSon(node71, node95)
  Body_SetCS(node95, MAT_Vector3(2745.500859, 2065.235413, 282.314806), MAT_Vector3(104.318563, 0, 0))
  Node_ParseIniFile(node95, "osd/tz/tz_scout2v2.osd")
  Body_SetFriendOrFoeID(node95, 5)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_vessel", "tz_scout2v2_2")
  Node_AddSon(node71, node96)
  Body_SetCS(node96, MAT_Vector3(2636.950654, 2142.639041, 305.332803), MAT_Vector3(160.449364, 0, 0))
  Node_ParseIniFile(node96, "osd/tz/tz_scout2v2.osd")
  Body_SetFriendOrFoeID(node96, 5)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_vessel", "tz_scout2v2_3")
  Node_AddSon(node71, node97)
  Body_SetCS(node97, MAT_Vector3(2614.254255, 2140.936977, 306.572687), MAT_Vector3(-168.837556, 0, 0))
  Node_ParseIniFile(node97, "osd/tz/tz_scout2v2.osd")
  Body_SetFriendOrFoeID(node97, 5)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_vessel", "tz_scout2v2_4")
  Node_AddSon(node71, node98)
  Body_SetCS(node98, MAT_Vector3(2737.371108, 2102.774111, 279.489711), MAT_Vector3(133.443035, 0, 0))
  Node_ParseIniFile(node98, "osd/tz/tz_scout2v2.osd")
  Body_SetFriendOrFoeID(node98, 5)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_vessel", "tz_fregatte_creole_1")
  Node_AddSon(node71, node99)
  Body_SetCS(node99, MAT_Vector3(2694.887668, 2138.004389, 302.170338), MAT_Vector3(147.465842, 0, 0))
  Node_ParseIniFile(node99, "osd/tz/tz_fregatte_creole.osd")
  Body_SetFriendOrFoeID(node99, 5)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node71, node100)
  Node_ParseIniFile(node100, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node100, "map/3H3/Terrain/coral01.tga")
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_fx_plant", "fungus_01_1")
  Node_AddSon(node71, node101)
  Node_ParseIniFile(node101, "osd/fx_plant/fungus_01.osd")
  FX_Plant_SetMap(node101, "map/3H3/Terrain/fungus01.tga")
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_fx_plant", "fungus_02_1")
  Node_AddSon(node71, node102)
  Node_ParseIniFile(node102, "osd/fx_plant/fungus_02.osd")
  FX_Plant_SetMap(node102, "map/3H3/Terrain/fungus02.tga")
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node71, node103)
  Node_ParseIniFile(node103, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node103, "map/3H3/Terrain/grass01.tga")
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node71, node104)
  Node_ParseIniFile(node104, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node104, "map/3H3/Terrain/stone01.tga")
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node105)
  Camera_SetBackPlane(node105, 512)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node106)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node106, node107)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node106, node108)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_Path", "IntroChapter1Path_1")
  Node_AddSon(node108, node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node109, node110)
  Position_SetPosition(node110, MAT_Vector3(2722.452602, 2489.97732, 129.874788))
  Position_SetRadius(node110, 5)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node109, node111)
  Position_SetPosition(node111, MAT_Vector3(2735.587577, 2200.513996, 184.58865))
  Position_SetRadius(node111, 5)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node109, node112)
  Position_SetPosition(node112, MAT_Vector3(2873.310346, 2063.03218, 372.537761))
  Position_SetRadius(node112, 5)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node109, node113)
  Position_SetPosition(node113, MAT_Vector3(2993.871601, 1750.622278, 469.317081))
  Position_SetRadius(node113, 5)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node109, node114)
  Position_SetPosition(node114, MAT_Vector3(2908.451497, 1470.065787, 457.436811))
  Position_SetRadius(node114, 5)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node109, node115)
  Position_SetPosition(node115, MAT_Vector3(2660.072325, 1429.597272, 418.926324))
  Position_SetRadius(node115, 5)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node109, node116)
  Position_SetPosition(node116, MAT_Vector3(2502.326814, 1557.275777, 335.348909))
  Position_SetRadius(node116, 5)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node109, node117)
  Position_SetPosition(node117, MAT_Vector3(2481.382325, 1801.322772, 313.352616))
  Position_SetRadius(node117, 5)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node108, node118)
  Position_SetPosition(node118, MAT_Vector3(2478.362204, 1883.939942, 512.785807))
  Position_SetRadius(node118, 5)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_Position", "Position_2")
  Node_AddSon(node108, node119)
  Position_SetPosition(node119, MAT_Vector3(2544.409212, 2190.254738, 288.750768))
  Position_SetRadius(node119, 5)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("NOD_Position", "Position_3")
  Node_AddSon(node108, node120)
  Position_SetPosition(node120, MAT_Vector3(2651.222848, 1505.704086, 385.158214))
  Position_SetRadius(node120, 5)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_Position", "Position_4")
  Node_AddSon(node108, node121)
  Position_SetPosition(node121, MAT_Vector3(2469.018914, 1773.105179, 284.239675))
  Position_SetRadius(node121, 5)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("NOD_Position", "Position_5")
  Node_AddSon(node108, node122)
  Position_SetPosition(node122, MAT_Vector3(2606.942812, 2000.310699, 292.796566))
  Position_SetRadius(node122, 5)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node106, node123)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_Director", "IntroChapter1V")
  Node_AddSon(node123, node124)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_Director", "IntroChapter3V")
  Node_AddSon(node123, node125)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node106, node126)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node106, node127)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_vessel", "dir_cammesh_1")
  Node_AddSon(node127, node128)
  Body_SetCS(node128, MAT_Vector3(2725.199322, 2519.364759, 106.981617), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node128, "osd/dir/dir_cammesh.osd")
  Body_SetFriendOrFoeID(node128, 4)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, -1, 0)
  Body_SetCargoKey(node128, -1, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
end
SetEnemyMatrixElement(0, 0, N)
SetEnemyMatrixElement(1, 0, N)
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
SetEnemyMatrixElement(0, 1, N)
SetEnemyMatrixElement(1, 1, F)
SetEnemyMatrixElement(2, 1, E)
SetEnemyMatrixElement(3, 1, F)
SetEnemyMatrixElement(4, 1, N)
SetEnemyMatrixElement(5, 1, E)
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
SetEnemyMatrixElement(2, 2, N)
SetEnemyMatrixElement(3, 2, E)
SetEnemyMatrixElement(4, 2, N)
SetEnemyMatrixElement(5, 2, E)
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
SetEnemyMatrixElement(0, 3, N)
SetEnemyMatrixElement(1, 3, F)
SetEnemyMatrixElement(2, 3, E)
SetEnemyMatrixElement(3, 3, N)
SetEnemyMatrixElement(4, 3, N)
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
SetEnemyMatrixElement(1, 5, E)
SetEnemyMatrixElement(2, 5, E)
SetEnemyMatrixElement(3, 5, E)
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
SetEnemyMatrixElement(1, 6, E)
SetEnemyMatrixElement(2, 6, F)
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
                                                                                                        if not (o1830.Value ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
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
  Script_Log("RC1 2509 2128")
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
                                                                                                        if not (o1854.Value == True) then
                                                                                                          if not (False == True) then
                                                                                                            if not (False == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
                                                                                                                      if not (False == True) then
                                                                                                                        if not (False == True) then
                                                                                                                          if not (False == True) then
                                                                                                                            if not (False == True) then
                                                                                                                              if not (False == True) then
                                                                                                                                if not (False == True) then
                                                                                                                                  if not (False == True) then
                                                                                                                                    if not (False == True) then
                                                                                                                                      if not (False == True) then
                                                                                                                                        if not (False == True) then
                                                                                                                                          if not (False == True) then
                                                                                                                                            if not (False == True) then
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
end, SetStateValue_Destroyed = function(L0, L1)
  o1777.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1777 = { [nil] = {}, Start = function()
  o1777["Value"] = False
  o1827.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1777.Value == L0) then
    o1777["Value"] = L0
    o1827.ReCalculate()
  end
end }
S_o1809 = { [nil] = {}, Start = function(L0)

end }
S_o1810 = { [nil] = {}, Start = function(L0)

end }
S_o1811 = { [nil] = {}, Start = function(L0)

end }
S_o1812 = { [nil] = {}, Start = function(L0)
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
  Body_AddItem(L0.Node, "DEVICE_REPAIR", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 4)
  Body_AddItem(L0.Node, "device_generator0", 1)
  CallFunction(o1812, "Code10")
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
o1819 = { [nil] = {}, GetCalculated = function()
  if not (o2010.Value ~= True) then
    if not (o2058.Value ~= True) then
      if not (o2106.Value ~= True) then
        if not (o2154.Value ~= True) then
          if not (o2202.Value ~= True) then
            if not (o2250.Value ~= True) then
              if not (o2491.Value ~= True) then
                if not (o2346.Value ~= True) then
                  if not (o2442.Value ~= True) then
                    if not (o2298.Value ~= True) then
                      if not (o2394.Value ~= True) then
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
end, ReCalculate = function()
  o1819.SetStateValue(o1819.GetCalculated())
end, StartCalculate = function()
  o1819["Value"] = o1819.GetCalculated()
  o2778.StartCalculate()
  o2827.StartCalculate()
  o2876.StartCalculate()
  o3023.StartCalculate()
  o3183.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1819.Value == L0) then
    o1819["Value"] = L0
    o2778.ReCalculate()
    o2827.ReCalculate()
    o2876.ReCalculate()
    o3023.ReCalculate()
    o3183.ReCalculate()
  end
end }
o1821 = { [nil] = {}, Start = function()
  o1821["Value"] = False
  o2925.StartCalculate()
  o2974.StartCalculate()
  o3072.StartCalculate()
  o3121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1821.Value == L0) then
    o1821["Value"] = L0
    o2925.ReCalculate()
    o2974.ReCalculate()
    o3072.ReCalculate()
    o3121.ReCalculate()
  end
end }
o1822 = { [nil] = {}, GetCalculated = function()
  if not (o3125.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1822.SetStateValue(o1822.GetCalculated())
end, StartCalculate = function()
  o1822["Value"] = o1822.GetCalculated()
  o1829.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1812.Node, o1812.Node, 1116)
end, SetStateValue = function(L0)
  if not (o1822.Value == L0) then
    DelayedFunction(2, o1822, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1822.Value == L0) then
    o1822["Value"] = L0
    o1829.ReCalculate()
    if not (L0 ~= 1) then
      o1822.ChangeTo1()
    end
  end
end }
o1823 = { [nil] = {}, GetCalculated = function()
  if not (o2010.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2058.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2106.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2154.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2202.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2250.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2491.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2346.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2442.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2298.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2394.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 < 7) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1823.SetStateValue(o1823.GetCalculated())
end, StartCalculate = function()
  o1823["Value"] = o1823.GetCalculated()
  o1825.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1823.Value == L0) then
    o1823["Value"] = L0
    o1825.ReCalculate()
  end
end }
o1824 = { [nil] = {}, GetCalculated = function()
  if not (o2010.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2058.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2106.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2154.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2202.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2250.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2491.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2346.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2442.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2298.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2394.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 < 5) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1824.SetStateValue(o1824.GetCalculated())
end, StartCalculate = function()
  o1824["Value"] = o1824.GetCalculated()
  o1826.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1824.Value == L0) then
    o1824["Value"] = L0
    o1826.ReCalculate()
  end
end }
o1825 = { [nil] = {}, GetCalculated = function()
  if not (o1823.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1825.SetStateValue(o1825.GetCalculated())
end, StartCalculate = function()
  o1825["Value"] = o1825.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1812.Node, o1812.Node, 127)
end, SetStateValue = function(L0)
  if not (o1825.Value == L0) then
    o1825["Value"] = L0
    if not (L0 ~= 1) then
      o1825.ChangeTo1()
    end
  end
end }
o1826 = { [nil] = {}, GetCalculated = function()
  if not (o1824.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1826.SetStateValue(o1826.GetCalculated())
end, StartCalculate = function()
  o1826["Value"] = o1826.GetCalculated()
  o2584.StartCalculate()
  o2632.StartCalculate()
  o2680.StartCalculate()
  o2728.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1812.Node, o1812.Node, 126)
end, SetStateValue = function(L0)
  if not (o1826.Value == L0) then
    o1826["Value"] = L0
    o2584.ReCalculate()
    o2632.ReCalculate()
    o2680.ReCalculate()
    o2728.ReCalculate()
    if not (L0 ~= 1) then
      o1826.ChangeTo1()
    end
  end
end }
o1827 = { [nil] = {}, GetCalculated = function()
  if not (o1777.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1827.SetStateValue(o1827.GetCalculated())
end, StartCalculate = function()
  o1827["Value"] = o1827.GetCalculated()
  o1854.StartCalculate()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "track3")
  SendRadioMessageTake(o1812.Node, o1812.Node, 1257)
end, SetStateValue = function(L0)
  if not (o1827.Value == L0) then
    DelayedFunction(2, o1827, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1827.Value == L0) then
    o1827["Value"] = L0
    o1854.ReCalculate()
    if not (L0 ~= 1) then
      o1827.ChangeTo1()
    end
  end
end }
o1828 = { [nil] = {}, GetCalculated = function()
  if not (o2010.Value ~= True) then
    if not (o2058.Value ~= True) then
      if not (o2106.Value ~= True) then
        if not (o2154.Value ~= True) then
          if not (o2202.Value ~= True) then
            if not (o2250.Value ~= True) then
              if not (o2491.Value ~= True) then
                if not (o2346.Value ~= True) then
                  if not (o2442.Value ~= True) then
                    if not (o2298.Value ~= True) then
                      if not (o2394.Value ~= True) then
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
end, ReCalculate = function()
  o1828.SetStateValue(o1828.GetCalculated())
end, StartCalculate = function()
  o1828["Value"] = o1828.GetCalculated()
  o1829.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1828.Value == L0) then
    o1828["Value"] = L0
    o1829.ReCalculate()
  end
end }
o1829 = { [nil] = {}, GetCalculated = function()
  if not (o1822.Value ~= True) then
    if not (o1828.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1829.SetStateValue(o1829.GetCalculated())
end, StartCalculate = function()
  o1829["Value"] = o1829.GetCalculated()
  o1830.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1829.Value == L0) then
    DelayedFunction(10, o1829, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1829.Value == L0) then
    o1829["Value"] = L0
    o1830.ReCalculate()
  end
end }
o1830 = { [nil] = {}, GetCalculated = function()
  if not (o1829.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1830.SetStateValue(o1830.GetCalculated())
end, StartCalculate = function()
  o1830["Value"] = o1830.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1830.Value == L0) then
    o1830["Value"] = L0
    o2.ReCalculate()
  end
end }
o1854 = { [nil] = {}, GetCalculated = function()
  if not (o1827.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1854.SetStateValue(o1854.GetCalculated())
end, StartCalculate = function()
  o1854["Value"] = o1854.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1854.Value == L0) then
    o1854["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o1858 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1858, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1858, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1858, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o1858, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1858, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1858, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  CallFunction(o1858, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code8")
  else
    CallFunction(o1858, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1907 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1907, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1907, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1907, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o1907, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1907, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1907, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  CallFunction(o1907, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code8")
  else
    CallFunction(o1907, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1956 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1956, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1956, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1956, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o1956, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1956, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1956, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  CallFunction(o1956, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code8")
  else
    CallFunction(o1956, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2005 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2005, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2005, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2005, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2005, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2010.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2010 = { [nil] = {}, Start = function()
  o2010["Value"] = False
  o1819.StartCalculate()
  o1823.StartCalculate()
  o1824.StartCalculate()
  o1828.StartCalculate()
  o2295.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2010.Value == L0) then
    o2010["Value"] = L0
    o1819.ReCalculate()
    o1823.ReCalculate()
    o1824.ReCalculate()
    o1828.ReCalculate()
    o2295.ReCalculate()
  end
end }
S_o2053 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2053, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2053, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2053, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2053, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2058.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2058 = { [nil] = {}, Start = function()
  o2058["Value"] = False
  o1819.StartCalculate()
  o1823.StartCalculate()
  o1824.StartCalculate()
  o1828.StartCalculate()
  o2343.StartCalculate()
  o2391.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2058.Value == L0) then
    o2058["Value"] = L0
    o1819.ReCalculate()
    o1823.ReCalculate()
    o1824.ReCalculate()
    o1828.ReCalculate()
    o2343.ReCalculate()
    o2391.ReCalculate()
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
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2101, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2106.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2106 = { [nil] = {}, Start = function()
  o2106["Value"] = False
  o1819.StartCalculate()
  o1823.StartCalculate()
  o1824.StartCalculate()
  o1828.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2106.Value == L0) then
    o2106["Value"] = L0
    o1819.ReCalculate()
    o1823.ReCalculate()
    o1824.ReCalculate()
    o1828.ReCalculate()
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
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2149, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2154.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2154 = { [nil] = {}, Start = function()
  o2154["Value"] = False
  o1819.StartCalculate()
  o1823.StartCalculate()
  o1824.StartCalculate()
  o1828.StartCalculate()
  o2439.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2154.Value == L0) then
    o2154["Value"] = L0
    o1819.ReCalculate()
    o1823.ReCalculate()
    o1824.ReCalculate()
    o1828.ReCalculate()
    o2439.ReCalculate()
  end
end }
S_o2197 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2197, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2197, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2197, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2197, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2202.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2202 = { [nil] = {}, Start = function()
  o2202["Value"] = False
  o1819.StartCalculate()
  o1823.StartCalculate()
  o1824.StartCalculate()
  o1828.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2202.Value == L0) then
    o2202["Value"] = L0
    o1819.ReCalculate()
    o1823.ReCalculate()
    o1824.ReCalculate()
    o1828.ReCalculate()
  end
end }
S_o2245 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2245, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2245, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2245, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2245, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2250.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2250 = { [nil] = {}, Start = function()
  o2250["Value"] = False
  o1819.StartCalculate()
  o1823.StartCalculate()
  o1824.StartCalculate()
  o1828.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2250.Value == L0) then
    o2250["Value"] = L0
    o1819.ReCalculate()
    o1823.ReCalculate()
    o1824.ReCalculate()
    o1828.ReCalculate()
  end
end }
S_o2293 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2293, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2293, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2293, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2293, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2298.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2295.Value ~= True) then
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
o2295 = { [nil] = {}, GetCalculated = function()
  if not (o2010.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2295.SetStateValue(o2295.GetCalculated())
end, StartCalculate = function()
  o2295["Value"] = o2295.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2295.Value == L0) then
    DelayedFunction(1, o2295, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2295.Value == L0) then
    o2295["Value"] = L0
    CallFunction(o2293, "ProcesseStateChange")
  end
end }
o2298 = { [nil] = {}, Start = function()
  o2298["Value"] = False
  o1819.StartCalculate()
  o1823.StartCalculate()
  o1824.StartCalculate()
  o1828.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2298.Value == L0) then
    o2298["Value"] = L0
    o1819.ReCalculate()
    o1823.ReCalculate()
    o1824.ReCalculate()
    o1828.ReCalculate()
  end
end }
S_o2341 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2341, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2341, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2341, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2341, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2346.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2343.Value ~= True) then
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
o2343 = { [nil] = {}, GetCalculated = function()
  if not (o2058.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2343.SetStateValue(o2343.GetCalculated())
end, StartCalculate = function()
  o2343["Value"] = o2343.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2343.Value == L0) then
    DelayedFunction(1, o2343, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2343.Value == L0) then
    o2343["Value"] = L0
    CallFunction(o2341, "ProcesseStateChange")
  end
end }
o2346 = { [nil] = {}, Start = function()
  o2346["Value"] = False
  o1819.StartCalculate()
  o1823.StartCalculate()
  o1824.StartCalculate()
  o1828.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2346.Value == L0) then
    o2346["Value"] = L0
    o1819.ReCalculate()
    o1823.ReCalculate()
    o1824.ReCalculate()
    o1828.ReCalculate()
  end
end }
S_o2389 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2389, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2389, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2389, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2389, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2394.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2391.Value ~= True) then
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
o2391 = { [nil] = {}, GetCalculated = function()
  if not (o2058.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2391.SetStateValue(o2391.GetCalculated())
end, StartCalculate = function()
  o2391["Value"] = o2391.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2391.Value == L0) then
    DelayedFunction(1, o2391, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2391.Value == L0) then
    o2391["Value"] = L0
    CallFunction(o2389, "ProcesseStateChange")
  end
end }
o2394 = { [nil] = {}, Start = function()
  o2394["Value"] = False
  o1819.StartCalculate()
  o1823.StartCalculate()
  o1824.StartCalculate()
  o1828.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2394.Value == L0) then
    o2394["Value"] = L0
    o1819.ReCalculate()
    o1823.ReCalculate()
    o1824.ReCalculate()
    o1828.ReCalculate()
  end
end }
S_o2437 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2437, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2437, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2437, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2437, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2442.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
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
  if not (o2154.Value ~= True) then
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
    DelayedFunction(1, o2439, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2439.Value == L0) then
    o2439["Value"] = L0
    CallFunction(o2437, "ProcesseStateChange")
  end
end }
o2442 = { [nil] = {}, Start = function()
  o2442["Value"] = False
  o1819.StartCalculate()
  o1823.StartCalculate()
  o1824.StartCalculate()
  o1828.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2442.Value == L0) then
    o2442["Value"] = L0
    o1819.ReCalculate()
    o1823.ReCalculate()
    o1824.ReCalculate()
    o1828.ReCalculate()
  end
end }
S_o2485 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2485, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2485, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2485, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "gen_freighter1_1", "", "", "")
  CallFunction(o2485, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2485, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2485, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code7")
  else
    CallFunction(o2485, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2491.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2488.Value ~= True) then
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
o2488 = { [nil] = {}, GetCalculated = function()
  if not (o2540.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2488.SetStateValue(o2488.GetCalculated())
end, StartCalculate = function()
  o2488["Value"] = o2488.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2488.Value == L0) then
    o2488["Value"] = L0
    CallFunction(o2485, "ProcesseStateChange")
  end
end }
o2491 = { [nil] = {}, Start = function()
  o2491["Value"] = False
  o1819.StartCalculate()
  o1823.StartCalculate()
  o1824.StartCalculate()
  o1828.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2491.Value == L0) then
    o2491["Value"] = L0
    o1819.ReCalculate()
    o1823.ReCalculate()
    o1824.ReCalculate()
    o1828.ReCalculate()
  end
end }
S_o2534 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2534, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2534, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2534, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o1774.Node, "DP_hor_1", "DP_hor_1", 0.2, 0.2, 1, "Code4")
  else
    CallFunction(o2534, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2534, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2534, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o2534, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2540.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2535.Value ~= True) then
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
o2535 = { [nil] = {}, GetCalculated = function()
  if not (o2540.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2535.SetStateValue(o2535.GetCalculated())
end, StartCalculate = function()
  o2535["Value"] = o2535.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2535.Value == L0) then
    o2535["Value"] = L0
    CallFunction(o2534, "ProcesseStateChange")
  end
end }
o2540 = { [nil] = {}, Start = function()
  o2540["Value"] = False
  o2488.StartCalculate()
  o2535.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2540.Value == L0) then
    o2540["Value"] = L0
    o2488.ReCalculate()
    o2535.ReCalculate()
  end
end }
S_o2583 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2583, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2583, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2583, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "cra_sc", "", "", "", 1, "Code4")
  else
    CallFunction(o2583, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o2583, "Code5")
  end
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
      if not (o2584.Value ~= True) then
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
o2584 = { [nil] = {}, GetCalculated = function()
  if not (o1826.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2584.SetStateValue(o2584.GetCalculated())
end, StartCalculate = function()
  o2584["Value"] = o2584.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2584.Value == L0) then
    o2584["Value"] = L0
    CallFunction(o2583, "ProcesseStateChange")
  end
end }
S_o2631 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2631, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2631, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2631, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "cra_sc", "", "", "", 1, "Code4")
  else
    CallFunction(o2631, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o2631, "Code5")
  end
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
      if not (o2632.Value ~= True) then
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
o2632 = { [nil] = {}, GetCalculated = function()
  if not (o1826.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2632.SetStateValue(o2632.GetCalculated())
end, StartCalculate = function()
  o2632["Value"] = o2632.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2632.Value == L0) then
    DelayedFunction(2, o2632, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2632.Value == L0) then
    o2632["Value"] = L0
    CallFunction(o2631, "ProcesseStateChange")
  end
end }
S_o2679 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2679, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2679, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2679, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "cra_sc", "", "", "", 1, "Code4")
  else
    CallFunction(o2679, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o2679, "Code5")
  end
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
      if not (o2680.Value ~= True) then
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
o2680 = { [nil] = {}, GetCalculated = function()
  if not (o1826.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2680.SetStateValue(o2680.GetCalculated())
end, StartCalculate = function()
  o2680["Value"] = o2680.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2680.Value == L0) then
    DelayedFunction(5, o2680, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2680.Value == L0) then
    o2680["Value"] = L0
    CallFunction(o2679, "ProcesseStateChange")
  end
end }
S_o2727 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2727, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2727, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2727, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "cra_sc", "", "", "", 1, "Code4")
  else
    CallFunction(o2727, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o2727, "Code5")
  end
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
      if not (o2728.Value ~= True) then
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
o2728 = { [nil] = {}, GetCalculated = function()
  if not (o1826.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2728.SetStateValue(o2728.GetCalculated())
end, StartCalculate = function()
  o2728["Value"] = o2728.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2728.Value == L0) then
    DelayedFunction(7, o2728, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2728.Value == L0) then
    o2728["Value"] = L0
    CallFunction(o2727, "ProcesseStateChange")
  end
end }
S_o2775 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2775, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2775, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2775, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "", "", "", "", 1, "Code4")
  else
    CallFunction(o2775, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "tz_sc", "", "", "", 1, "Code5")
  else
    CallFunction(o2775, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2778.Value ~= True) then
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
o2778 = { [nil] = {}, GetCalculated = function()
  if not (o1819.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2778.SetStateValue(o2778.GetCalculated())
end, StartCalculate = function()
  o2778["Value"] = o2778.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2778.Value == L0) then
    DelayedFunction(4, o2778, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2778.Value == L0) then
    o2778["Value"] = L0
    CallFunction(o2775, "ProcesseStateChange")
  end
end }
S_o2824 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2824, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2824, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2824, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "", "", "", "", 1, "Code4")
  else
    CallFunction(o2824, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "tz_sc", "", "", "", 1, "Code5")
  else
    CallFunction(o2824, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2827.Value ~= True) then
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
o2827 = { [nil] = {}, GetCalculated = function()
  if not (o1819.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2827.SetStateValue(o2827.GetCalculated())
end, StartCalculate = function()
  o2827["Value"] = o2827.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2827.Value == L0) then
    DelayedFunction(4, o2827, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2827.Value == L0) then
    o2827["Value"] = L0
    CallFunction(o2824, "ProcesseStateChange")
  end
end }
S_o2873 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2873, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2873, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2873, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "", "", "", "", 1, "Code4")
  else
    CallFunction(o2873, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "tz_sc", "", "", "", 1, "Code5")
  else
    CallFunction(o2873, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2876.Value ~= True) then
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
o2876 = { [nil] = {}, GetCalculated = function()
  if not (o1819.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2876.SetStateValue(o2876.GetCalculated())
end, StartCalculate = function()
  o2876["Value"] = o2876.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2876.Value == L0) then
    DelayedFunction(4, o2876, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2876.Value == L0) then
    o2876["Value"] = L0
    CallFunction(o2873, "ProcesseStateChange")
  end
end }
S_o2922 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2922, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2922, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2922, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5 } }("Code4")
  else
    CallFunction(o2922, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "des", "E", "", "", 1, "Code5")
  else
    CallFunction(o2922, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o2922, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2925.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2924.Value ~= True) then
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
o2924 = { [nil] = {}, GetCalculated = function()
  if not (o3125.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2924.SetStateValue(o2924.GetCalculated())
end, StartCalculate = function()
  o2924["Value"] = o2924.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2924.Value == L0) then
    DelayedFunction(3, o2924, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2924.Value == L0) then
    o2924["Value"] = L0
    CallFunction(o2922, "ProcesseStateChange")
  end
end }
o2925 = { [nil] = {}, GetCalculated = function()
  if not (o1821.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2925.SetStateValue(o2925.GetCalculated())
end, StartCalculate = function()
  o2925["Value"] = o2925.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2925.Value == L0) then
    o2925["Value"] = L0
    CallFunction(o2922, "ProcesseStateChange")
  end
end }
S_o2971 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2971, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2971, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2971, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5 } }("Code4")
  else
    CallFunction(o2971, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "des", "E", "", "", 1, "Code5")
  else
    CallFunction(o2971, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o2971, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2974.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2973.Value ~= True) then
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
o2973 = { [nil] = {}, GetCalculated = function()
  if not (o3125.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2973.SetStateValue(o2973.GetCalculated())
end, StartCalculate = function()
  o2973["Value"] = o2973.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2973.Value == L0) then
    DelayedFunction(3, o2973, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2973.Value == L0) then
    o2973["Value"] = L0
    CallFunction(o2971, "ProcesseStateChange")
  end
end }
o2974 = { [nil] = {}, GetCalculated = function()
  if not (o1821.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2974.SetStateValue(o2974.GetCalculated())
end, StartCalculate = function()
  o2974["Value"] = o2974.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2974.Value == L0) then
    DelayedFunction(1, o2974, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2974.Value == L0) then
    o2974["Value"] = L0
    CallFunction(o2971, "ProcesseStateChange")
  end
end }
S_o3020 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3020, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3020, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3020, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5 } }("Code4")
  else
    CallFunction(o3020, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "des", "E", "", "", 1, "Code5")
  else
    CallFunction(o3020, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o3020, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3023.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3022.Value ~= True) then
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
o3022 = { [nil] = {}, GetCalculated = function()
  if not (o3125.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3022.SetStateValue(o3022.GetCalculated())
end, StartCalculate = function()
  o3022["Value"] = o3022.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3022.Value == L0) then
    DelayedFunction(3, o3022, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3022.Value == L0) then
    o3022["Value"] = L0
    CallFunction(o3020, "ProcesseStateChange")
  end
end }
o3023 = { [nil] = {}, GetCalculated = function()
  if not (o1819.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3023.SetStateValue(o3023.GetCalculated())
end, StartCalculate = function()
  o3023["Value"] = o3023.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3023.Value == L0) then
    DelayedFunction(18, o3023, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3023.Value == L0) then
    o3023["Value"] = L0
    CallFunction(o3020, "ProcesseStateChange")
  end
end }
S_o3069 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3069, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3069, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3069, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5 } }("Code4")
  else
    CallFunction(o3069, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "des", "E", "", "", 1, "Code5")
  else
    CallFunction(o3069, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o3069, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3072.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3071.Value ~= True) then
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
o3071 = { [nil] = {}, GetCalculated = function()
  if not (o3125.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3071.SetStateValue(o3071.GetCalculated())
end, StartCalculate = function()
  o3071["Value"] = o3071.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3071.Value == L0) then
    DelayedFunction(3, o3071, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3071.Value == L0) then
    o3071["Value"] = L0
    CallFunction(o3069, "ProcesseStateChange")
  end
end }
o3072 = { [nil] = {}, GetCalculated = function()
  if not (o1821.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3072.SetStateValue(o3072.GetCalculated())
end, StartCalculate = function()
  o3072["Value"] = o3072.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3072.Value == L0) then
    DelayedFunction(2, o3072, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3072.Value == L0) then
    o3072["Value"] = L0
    CallFunction(o3069, "ProcesseStateChange")
  end
end }
S_o3118 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3118, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3118, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3118, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5 } }("Code4")
  else
    CallFunction(o3118, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "des", "E", "", "", 1, "Code5")
  else
    CallFunction(o3118, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o3118, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DipoledOut = function(L0, L1)
  o3125.SetStateValue(L1)
end, SetStateValue_KineticShield50 = function(L0, L1)
  o3130.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3121.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3120.Value ~= True) then
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
o3120 = { [nil] = {}, GetCalculated = function()
  if not (o3130.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3120.SetStateValue(o3120.GetCalculated())
end, StartCalculate = function()
  o3120["Value"] = o3120.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3120.Value == L0) then
    o3120["Value"] = L0
    CallFunction(o3118, "ProcesseStateChange")
  end
end }
o3121 = { [nil] = {}, GetCalculated = function()
  if not (o1821.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3121.SetStateValue(o3121.GetCalculated())
end, StartCalculate = function()
  o3121["Value"] = o3121.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3121.Value == L0) then
    DelayedFunction(3, o3121, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3121.Value == L0) then
    o3121["Value"] = L0
    CallFunction(o3118, "ProcesseStateChange")
  end
end }
o3125 = { [nil] = {}, Start = function()
  o3125["Value"] = False
  o1822.StartCalculate()
  o2924.StartCalculate()
  o2973.StartCalculate()
  o3022.StartCalculate()
  o3071.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3125.Value == L0) then
    o3125["Value"] = L0
    o1822.ReCalculate()
    o2924.ReCalculate()
    o2973.ReCalculate()
    o3022.ReCalculate()
    o3071.ReCalculate()
  end
end }
o3130 = { [nil] = {}, Start = function()
  o3130["Value"] = False
  o3120.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3130.Value == L0) then
    o3130["Value"] = L0
    o3120.ReCalculate()
  end
end }
S_o3167 = { [nil] = {}, Start = function(L0)

end }
o3168 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o3170 = { [nil] = {}, Start = function(L0)

end }
o3171 = FormationLib.CreateFormation("XForm", "", "", "", 20, 20)
S_o3173 = { [nil] = {}, Start = function(L0)

end }
S_o3174 = { [nil] = {}, Start = function(L0)

end }
S_o3175 = { [nil] = {}, Start = function(L0)

end }
S_o3176 = { [nil] = {}, Start = function(L0)

end }
S_o3177 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Director_BeginCutscene(L0.Node)
  Game_PlayMusic(GetGameNode(), "agressive")
  Camera_MoveTo(L0.Node, "/InGameSequences/Object/dir_cammesh_1", 0, "MFMN", 10)
  Camera_LookAt(L0.Node, "/Scenario_Static/Object/des_brainfire_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  FormationLib.PlaceFormationPath(o3169, o3168, "/InGameSequences/Navigation/IntroChapter1Path_1")
  CallFunction(o3177, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o3169, o3168, "/InGameSequences/Navigation/IntroChapter1Path_1", "pos_1", "pos_8", 0.3, 1, "Code8")
  else
    CallFunction(o3177, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  SendRadioMessageTake(o1812.Node, o1812.Node, 121)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_1", 4, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/gen_freighter1_1", 6, "MMMN", 0)
  CallFunction(o3177, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code12")
  else
    CallFunction(o3177, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_ZoomAt(L0.Node, "/Scenario_Dynamic/Object/gen_freighter1_1", 3, 0.4)
  CallFunction(o3177, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code14")
  else
    CallFunction(o3177, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  SendRadioMessageTake(o1812.Node, o1812.Node, 122)
  CallFunction(o2534, "Code6")
  Camera_ShakeHit(L0.Node, 3, 3, 3, 3)
  CallFunction(o3177, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 9, "Code18")
  else
    CallFunction(o3177, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  FormationLib.PlaceFormationPath(o3172, o3171, "/InGameSequences/Navigation/IntroChapter1Path_1")
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_2", 4, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 3, "MMMN", 0)
  CallFunction(o3177, "Code22")
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o3172, o3171, "/InGameSequences/Navigation/IntroChapter1Path_1", "pos_1", "pos_2", 1, 1, "Code23")
  else
    CallFunction(o3177, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o3172, o3171, "/InGameSequences/Navigation/IntroChapter1Path_1", "pos_2", "pos_3", 1, 1, "Code24")
  else
    CallFunction(o3177, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  Director_EndCutscene(L0.Node)
  CallFunction(o1858, "Code6")
  CallFunction(o1907, "Code6")
  CallFunction(o1956, "Code6")
  CallFunction(o3177, "Code29")
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3182 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3182, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Game_PlayMusic(GetGameNode(), "atmo")
  Camera_Cut(L0.Node, 1)
  Director_BeginCutscene(L0.Node)
  Camera_MoveInto(L0.Node, "/InGameSequences/Navigation/Position_3")
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/atl_scout1_2_c3", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_ShakeHit(L0.Node, 5, 5, 5, 5)
  SendRadioMessageTake(o1812.Node, o1812.Node, 129)
  CallFunction(o3182, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code11")
  else
    CallFunction(o3182, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_4", 2, "MMMN", 0)
  CallFunction(o3182, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code13")
  else
    CallFunction(o3182, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_5", 1.5, "MMMN", 0)
  o1821.SetStateValue(True)
  CallFunction(o3182, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.5, "Code16")
  else
    CallFunction(o3182, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Game_PlayMusic(GetGameNode(), "track4")
  Camera_ShakeHit(L0.Node, 9, 9, 9, 9)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/tz_scout2v2_1", 1.5, "MMMN", 0)
  CallFunction(o3182, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.5, "Code20")
  else
    CallFunction(o3182, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/tz_scout2v2_3", 1.5, "MMMN", 0)
  CallFunction(o3182, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.5, "Code22")
  else
    CallFunction(o3182, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/tz_fregatte_creole_1", 2, "MMMN", 0)
  CallFunction(o3182, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code24")
  else
    CallFunction(o3182, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  Game_PlayMusic(GetGameNode(), "agressive")
  SendRadioMessageTake(o3118.Node, o1812.Node, 130)
  CallFunction(o3182, "Code26")
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3, "Code27")
  else
    CallFunction(o3182, "Code27")
  end
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  Director_EndCutscene(L0.Node)
  SendRadioMessageTake(o1812.Node, o1812.Node, 131)
  CallFunction(o3182, "Code29")
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3183.Value ~= True) then
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
o3183 = { [nil] = {}, GetCalculated = function()
  if not (o1819.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3183.SetStateValue(o3183.GetCalculated())
end, StartCalculate = function()
  o3183["Value"] = o3183.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3183.Value == L0) then
    DelayedFunction(3, o3183, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3183.Value == L0) then
    o3183["Value"] = L0
    CallFunction(o3182, "ProcesseStateChange")
  end
end }
S_o3192 = { [nil] = {}, Start = function(L0)

end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 128)
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
  o1777.Start()
  o1809 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "RespawnPosition_1", S_o1809)
  o1810 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "RespawnPosition_2", S_o1810)
  o1811 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "RespawnPosition_3", S_o1811)
  o1812 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o1812)
  o1821.Start()
  o1858 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_pico", S_o1858)
  o1907 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_harper", S_o1907)
  o1956 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_degrange", S_o1956)
  o2005 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_1", S_o2005)
  o2010.Start()
  o2053 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_2", S_o2053)
  o2058.Start()
  o2101 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_3", S_o2101)
  o2106.Start()
  o2149 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_4", S_o2149)
  o2154.Start()
  o2197 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_5", S_o2197)
  o2202.Start()
  o2245 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_6", S_o2245)
  o2250.Start()
  o2293 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_8_2", S_o2293)
  o2298.Start()
  o2341 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_9", S_o2341)
  o2346.Start()
  o2389 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_9_2", S_o2389)
  o2394.Start()
  o2437 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_11", S_o2437)
  o2442.Start()
  o2485 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_bomber_1", S_o2485)
  o2491.Start()
  o2534 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_freighter1_1", S_o2534)
  o2540.Start()
  o2583 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_1_c1", S_o2583)
  o2631 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_2_c1", S_o2631)
  o2679 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_3_c1", S_o2679)
  o2727 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_4_c1", S_o2727)
  o2775 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_1_c3", S_o2775)
  o2824 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_2_c3", S_o2824)
  o2873 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_3_c3", S_o2873)
  o2922 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v2_1", S_o2922)
  o2971 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v2_2", S_o2971)
  o3020 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v2_3", S_o3020)
  o3069 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v2_4", S_o3069)
  o3118 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_fregatte_creole_1", S_o3118)
  o3125.Start()
  o3130.Start()
  o3167 = BindEasy(Node_Find("/"), "Camera", S_o3167)
  o3170 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_1", S_o3170)
  o3173 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_2", S_o3173)
  o3174 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_3", S_o3174)
  o3175 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_4", S_o3175)
  o3176 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_5", S_o3176)
  o3192 = BindEasy(Node_Find("/InGameSequences/Object"), "dir_cammesh_1", S_o3192)
  o3177 = BindEasy(Node_Find("/InGameSequences/Director"), "IntroChapter1V", S_o3177)
  o3182 = BindEasy(Node_Find("/InGameSequences/Director"), "IntroChapter3V", S_o3182)
  o3169 = { {}, o3192 }()
  o3172 = { {}, o1812, o1858, o1907, o1956 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end