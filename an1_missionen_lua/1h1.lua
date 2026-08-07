-- dekompiliert aus map\1h1\script\1h1.sco
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
  Terrain_LoadTerrain(node1, "map/1H1/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/1H1/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrain(node0, 0.025, 0.3)
  Game_SetCausticObject(node0, 0.1, 0.3)
  Game_SetCausticBuilding(node0, 0.025, 0.3)
  Game_SetLightCache(node0, "map/1H1/Lmsh/", "map/1H1/Ltex/")
  Game_SetTerrainDepth(node0, 3666)
  Game_SetDecompressionHeight(node0, 900)
  Game_SetAmbientLight(node0, 0.019608, 0.086275, 0.141176)
  Game_SetParallelLightT(node0, 0.039216, 0.172549, 0.282353)
  Game_SetParallelLightB(node0, 0.462745, 0.462745, 0.086275)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_1H1_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music_track01.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music_track04.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_badend.sam", 2)
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
  node8 = Node_CreateNode("nod_generic", "elt_asylum_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(3617.00142, 2176.211592, 533.981452), MAT_Vector3(70.20015, 0, 0))
  Node_ParseIniFile(node8, "osd/elt/elt_asylum.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "gen_stern_1")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(3249.532734, 1695.216684, 454.300305), MAT_Vector3(89.76219, 0, 0))
  Node_ParseIniFile(node9, "osd/gen/gen_starfound.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "gen_stern_2")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(3169.956355, 1766.83011, 457.003811), MAT_Vector3(-0.6115, 0, 0))
  Node_ParseIniFile(node10, "osd/gen/gen_starfound.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "gen_stern_3")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(2993.910096, 1875.056043, 494.317381), MAT_Vector3(-46.591915, 0, 0))
  Node_ParseIniFile(node11, "osd/gen/gen_starfound.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "gen_stab3_2")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(3153.847648, 2102.565322, 483.818454), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node12, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "gen_stab3_4")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(422.501765, 1524.08401, 256.032623), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node13, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "gen_stab2_2")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(2920.571158, 1916.739348, 480.961025), MAT_Vector3(-44.773983, 0, 0))
  Node_ParseIniFile(node14, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "gen_stab1_2")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(2561.215538, 2020.617043, 341.631513), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node15, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "gen_bunker_1")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(3015.672, 1457.603, 267.867369), MAT_Vector3(-162.0425, 0, 0))
  Node_ParseIniFile(node16, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "gen_kraft2_1")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(3145.072283, 2082.022886, 473.66545), MAT_Vector3(89.681958, 0, 0))
  Node_ParseIniFile(node17, "osd/gen/gen_pplant2.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "gen_kai2_1")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(3119.068, 1171.25, 303.353343), MAT_Vector3(178.549, 3.053877, 2.755581))
  Node_ParseIniFile(node18, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "gen_kai2_2")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(3679.502, 2645.287, 456.806062), MAT_Vector3(-60, 0, 0))
  Node_ParseIniFile(node19, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "gen_kai2_3")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(1684.874, 577.7724, 207.5939), MAT_Vector3(-88.71852, 0, 0))
  Node_ParseIniFile(node20, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "gen_stab2_5")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(1004.163349, 3181.411608, 470.256147), MAT_Vector3(-163.342402, -3.7, 0.6))
  Node_ParseIniFile(node21, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "gen_stab2_6")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(1633.54, 2392.969, 351.387966), MAT_Vector3(-41.9275, 0, 0))
  Node_ParseIniFile(node22, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "gen_stab2_7")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(1809.118, 2223.653, 430.244973), MAT_Vector3(-70.9353, 0.07263, 2.489263))
  Node_ParseIniFile(node23, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "gen_stab2_8")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(2133.744, 2257.638, 353.417917), MAT_Vector3(-61.964, 0.075462, 2.183281))
  Node_ParseIniFile(node24, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "gen_stab2_9")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(353.632344, 3364.95647, 415.5874), MAT_Vector3(-44.079521, 0.075462, 2.183281))
  Node_ParseIniFile(node25, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_stab1_4")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(2993.551472, 1874.82632, 507.515688), MAT_Vector3(-46.605739, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "gen_stab1_5")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(3027.938949, 2444.168884, 466.092251), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node27, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "gen_tnk_k3_1")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(3114.282, 1401.433, 278.389803), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node28, "osd/gen/gen_tank_sml3.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "gen_elf-kn_1")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(2883.426109, 1361.975062, 247.5695), MAT_Vector3(23.20825, 0, 0))
  Node_ParseIniFile(node29, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "gen_elf-kn_2")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(2443.447, 1182.932, 243.4679), MAT_Vector3(23.20825, 0, 0))
  Node_ParseIniFile(node30, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "gen_elf-kn_3")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(1899.772539, 957.625408, 257.087978), MAT_Vector3(20.14182, -5.2719, -10.7131))
  Node_ParseIniFile(node31, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "gen_elf-kn_4")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(1087.408, 623.4961, 313.581287), MAT_Vector3(24.81806, -1.6749, 6.20081))
  Node_ParseIniFile(node32, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_stern2_1")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(1619.422, 2461.366, 341.264273), MAT_Vector3(-42.6643, 0, 0))
  Node_ParseIniFile(node33, "osd/gen/gen_starfound2.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "Atl_Dock")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(688.282313, 3278.860143, 432.654284), MAT_Vector3(-53.71848, -0.4397, -1.5663))
  Node_ParseIniFile(node34, "osd/atl/atl_dock1_1.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "atl_digmod_1")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(366.006294, 1390.722767, 246.461021), MAT_Vector3(-41.985254, 0, 0))
  Node_ParseIniFile(node35, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_tnk_k_1")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(301.7893, 1312.008, 240.393347), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "gen_tnk_k_2")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(237.80261, 1392.025147, 233.471137), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node37, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "Elt_Dock")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(3096.573227, 2289.54239, 484.146808), MAT_Vector3(-89.6382, 0, 0))
  Node_ParseIniFile(node38, "osd/gen/gen_dock.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_turm_1")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(3237.58655, 1923.987411, 457.177131), MAT_Vector3(-29.93103, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_turm_2")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(3221.303649, 1868.939362, 463.802369), MAT_Vector3(-1.318791, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "atl_wb3a_1")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(976.1702, 3447.791, 387.936782), MAT_Vector3(34.78522, 0, 0))
  Node_ParseIniFile(node41, "osd/atl/atl_wblock3a_raw.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "atl_wb3b_1")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(833.6489, 3346.338, 418.805327), MAT_Vector3(-53.2897, 0, 0))
  Node_ParseIniFile(node42, "osd/atl/atl_wblock3b_raw.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "atl_wb3a_r4_1")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(709.4717, 3408.654, 451.3678), MAT_Vector3(35.93632, 0, 0))
  Node_ParseIniFile(node43, "osd/atl/atl_wblock3a_raw_04.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "atl_wb3a_r4_2")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(613.844, 3338.428, 450.6557), MAT_Vector3(35.93632, 0, 0))
  Node_ParseIniFile(node44, "osd/atl/atl_wblock3a_raw_04.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "atl_wb3a_r4_3")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(879.8643, 3379.442, 453.788399), MAT_Vector3(35.93632, 0, 0))
  Node_ParseIniFile(node45, "osd/atl/atl_wblock3a_raw_04.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "atl_wb3a_r1_1")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(661.369983, 3377.730887, 389.678088), MAT_Vector3(-144.2648, 0, 0))
  Node_ParseIniFile(node46, "osd/atl/atl_wblock3a_raw_01.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "gen_werk3_1")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(1617.248, 735.5005, 307.90475), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node47, "osd/gen/gen_industry3.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "gen_parabo_1")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(3026.94, 1441.382, 310.563526), MAT_Vector3(146.0772, 0, 0))
  Node_ParseIniFile(node48, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "gen_parabo_2")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(3030.369462, 1890.742318, 484.671332), MAT_Vector3(65.9028, 0, 0))
  Node_ParseIniFile(node49, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "gen_parabo_3")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(2909.969626, 1941.281657, 485.415182), MAT_Vector3(67.195795, 0, 0))
  Node_ParseIniFile(node50, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_parabo_4")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(3323.305733, 1755.044057, 495.175827), MAT_Vector3(145.781397, 0, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "gen_stab2_4")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(3021.271, 1492.073, 309.602433), MAT_Vector3(-30.66857, 0, 0))
  Node_ParseIniFile(node52, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_stab3_5")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(2990.832, 1482.195, 312.159175), MAT_Vector3(-30.5884, 0, 0))
  Node_ParseIniFile(node53, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "gen_stab3_6")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(284.754593, 3293.029429, 419.919037), MAT_Vector3(-19.666226, 0, 0))
  Node_ParseIniFile(node54, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "gen_kraft1_1")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(1666.638, 2402.006, 354.394455), MAT_Vector3(25.56546, 0, 0))
  Node_ParseIniFile(node55, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "gen_kraft22_1")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(312.1271, 3377.488, 383.4694), MAT_Vector3(-43.75403, 0, 0))
  Node_ParseIniFile(node56, "osd/gen/gen_pplant22.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "gen_trafo_1")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(322.527677, 3312.449648, 422.17504), MAT_Vector3(-45.715398, 0, 0))
  Node_ParseIniFile(node57, "osd/gen/gen_trafo.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "gen_turm_3")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(201.577274, 3266.767002, 426.982297), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node58, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "gen_schorn2_1")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(294.798015, 3288.873837, 417.806408), MAT_Vector3(3.308766, 0, 0))
  Node_ParseIniFile(node59, "osd/gen/gen_chimney2.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "gen_schorn2_2")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(275.491358, 3296.838103, 418.196463), MAT_Vector3(0.77868, 0, 0))
  Node_ParseIniFile(node60, "osd/gen/gen_chimney2.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "gen_gang1_1")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(688.265513, 3334.660298, 467.056257), MAT_Vector3(36.09075, 0, 0))
  Node_ParseIniFile(node61, "osd/gen/gen_gangway01.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "gen_gang1_2")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(555.9357, 3255.208, 466.305592), MAT_Vector3(-11.9089, 0, 0))
  Node_ParseIniFile(node62, "osd/gen/gen_gangway01.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "gen_rohrs2_1")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(708.2077, 3407.484, 539.8235), MAT_Vector3(-53.89787, 0, 0))
  Node_ParseIniFile(node63, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "gen_rohrs2_2")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(615.7937, 3340.072, 539.8235), MAT_Vector3(-53.89787, 0, 0))
  Node_ParseIniFile(node64, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "gen_gang2_1")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(1070.829, 3515.572, 426.279785), MAT_Vector3(-55.06956, 0, 0))
  Node_ParseIniFile(node65, "osd/gen/gen_gangway02.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "gen_rohrb3_1")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(2752.631, 1312.341, 227.804246), MAT_Vector3(-67.07941, 0.585846, 0))
  Node_ParseIniFile(node66, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "gen_rohrb3_2")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(2476.488, 1195.564, 224.340434), MAT_Vector3(-67.07941, 0.585846, 0))
  Node_ParseIniFile(node67, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "gen_rohrb3_3")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(1780.194, 911.5634, 236.455244), MAT_Vector3(-67.07941, -6.151387, 0))
  Node_ParseIniFile(node68, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "gen_rohrb3_4")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(1408.894, 757.9187, 245.726888), MAT_Vector3(-67.07941, -2.929232, 0))
  Node_ParseIniFile(node69, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "gen_rohrb3_5")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(1140.224, 644.1201, 282.731345), MAT_Vector3(-67.07941, -12.30277, 0))
  Node_ParseIniFile(node70, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "gen_rohrb3_6")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(876.2771, 532.8867, 326.664673), MAT_Vector3(-67.07941, -5.272613, 0))
  Node_ParseIniFile(node71, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "gen_rohrb2_1")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(2018.129, 1010.489, 269.64006), MAT_Vector3(-66.49394, -2.050355, -0.020974))
  Node_ParseIniFile(node72, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "gen_rohrb2_2")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(2122.571, 1055.966, 254.324035), MAT_Vector3(-66.49833, -13.76728, -0.021581))
  Node_ParseIniFile(node73, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "gen_rohrb2_3")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(2227.821, 1098.244, 234.291485), MAT_Vector3(-69.73714, -7.595749, -0.697169))
  Node_ParseIniFile(node74, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "gen_rohrb1_1")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(1942.925, 978.126, 261.932835), MAT_Vector3(-67.66526, 21.09047, 0))
  Node_ParseIniFile(node75, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "gen_rohrb1_2")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(2307.416, 1126.474, 225.888973), MAT_Vector3(-71.4738, -1.750429, -0.213981))
  Node_ParseIniFile(node76, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "atl_wb4a_1_1")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(563.8476, 3300.951, 422.1553), MAT_Vector3(35.84784, 0, 0))
  Node_ParseIniFile(node77, "osd/atl/atl_wblock3a_raw_02.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "atl_dock3_1")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(3344.63571, 1860.14291, 450.955078), MAT_Vector3(-121.945289, 0, 0))
  Node_ParseIniFile(node78, "osd/atl/atl_dock3.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "gen_bunker2_1")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(2971.509403, 1917.724942, 399.22791), MAT_Vector3(43.242338, 0, 0))
  Node_ParseIniFile(node79, "osd/gen/gen_shelter2.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "delphin_1")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(549.808378, 3189.270294, 398.745295), MAT_Vector3(-50.082664, 0, 0))
  Node_ParseIniFile(node80, "osd/gen/gen_dolphinhab.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_generic", "delphin_big_1")
  Node_AddSon(node7, node81)
  Body_SetCS(node81, MAT_Vector3(1179.829346, 3573.341986, 325.694705), MAT_Vector3(-55.072157, 0, 0))
  Node_ParseIniFile(node81, "osd/gen/gen_dolphinhab_big.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_generic", "gen_turret_1")
  Node_AddSon(node7, node82)
  Body_SetCS(node82, MAT_Vector3(1567.400561, 583.545109, 312.421069), MAT_Vector3(-179.991745, 0, 0))
  Node_ParseIniFile(node82, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node82, 1)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_generic", "gen_turret_2")
  Node_AddSon(node7, node83)
  Body_SetCS(node83, MAT_Vector3(2992.017936, 2426.773642, 495.713997), MAT_Vector3(75.487066, 0, 0))
  Node_ParseIniFile(node83, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node83, 1)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_generic", "gen_turret_3")
  Node_AddSon(node7, node84)
  Body_SetCS(node84, MAT_Vector3(3191.219764, 1676.63008, 452.610173), MAT_Vector3(129.088666, 0, 0))
  Node_ParseIniFile(node84, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node84, 1)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_generic", "gen_turret_4")
  Node_AddSon(node7, node85)
  Body_SetCS(node85, MAT_Vector3(2992.363624, 2328.658059, 495.507469), MAT_Vector3(129.0887, 0, 0))
  Node_ParseIniFile(node85, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node85, 1)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "gen_turret_5")
  Node_AddSon(node7, node86)
  Body_SetCS(node86, MAT_Vector3(3490.22921, 1748.714199, 458.86893), MAT_Vector3(160.591351, 0, 0))
  Node_ParseIniFile(node86, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node86, 1)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "gen_turret_6")
  Node_AddSon(node7, node87)
  Body_SetCS(node87, MAT_Vector3(3086.272598, 2062.299624, 486.318665), MAT_Vector3(129.0887, 0, 0))
  Node_ParseIniFile(node87, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node87, 1)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "gen_turret_7")
  Node_AddSon(node7, node88)
  Body_SetCS(node88, MAT_Vector3(2952.850327, 1973.023727, 493.860622), MAT_Vector3(55.861843, 0, 0))
  Node_ParseIniFile(node88, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node88, 1)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "gen_turret_8")
  Node_AddSon(node7, node89)
  Body_SetCS(node89, MAT_Vector3(3119.1302, 1256.150417, 338.63178), MAT_Vector3(108.141966, 0, 0))
  Node_ParseIniFile(node89, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node89, 1)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_generic", "gen_turret_9")
  Node_AddSon(node7, node90)
  Body_SetCS(node90, MAT_Vector3(3286.489773, 1647.221965, 456.076502), MAT_Vector3(163.643168, 0, 0))
  Node_ParseIniFile(node90, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node90, 1)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_generic", "gen_turret_10")
  Node_AddSon(node7, node91)
  Body_SetCS(node91, MAT_Vector3(3356.483047, 2167.634376, 571.102338), MAT_Vector3(108.142, 0, 0))
  Node_ParseIniFile(node91, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node91, 1)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_generic", "gen_turret_11")
  Node_AddSon(node7, node92)
  Body_SetCS(node92, MAT_Vector3(3355.538556, 2285.728667, 571.131192), MAT_Vector3(67.968766, 0, 0))
  Node_ParseIniFile(node92, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node92, 1)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "gen_turret_12")
  Node_AddSon(node7, node93)
  Body_SetCS(node93, MAT_Vector3(3006.765434, 1458.487948, 312.063867), MAT_Vector3(112.552891, 0, 0))
  Node_ParseIniFile(node93, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node93, 1)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_generic", "gen_turret_13")
  Node_AddSon(node7, node94)
  Body_SetCS(node94, MAT_Vector3(3698.92699, 2656.395124, 492.728071), MAT_Vector3(29.20375, 0, 0))
  Node_ParseIniFile(node94, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node94, 1)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_generic", "gen_turret_14")
  Node_AddSon(node7, node95)
  Body_SetCS(node95, MAT_Vector3(3608.608112, 2603.049353, 492.725274), MAT_Vector3(36.298725, 0, 0))
  Node_ParseIniFile(node95, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node95, 1)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_generic", "gen_tnk_g_1")
  Node_AddSon(node7, node96)
  Body_SetCS(node96, MAT_Vector3(3256.311743, 1787.726594, 454.342561), MAT_Vector3(57.100785, 0, 0))
  Node_ParseIniFile(node96, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node96, 0)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_generic", "gen_mhaus2_1")
  Node_AddSon(node7, node97)
  Body_SetCS(node97, MAT_Vector3(3320.914779, 1825.962649, 431.269217), MAT_Vector3(-33.224712, 0, 0))
  Node_ParseIniFile(node97, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node97, 0)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_generic", "gen_mhaus3_1")
  Node_AddSon(node7, node98)
  Body_SetCS(node98, MAT_Vector3(1511.517632, 625.700068, 245.56666), MAT_Vector3(-90.140672, 0, 0))
  Node_ParseIniFile(node98, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node98, 0)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_generic", "gen_mhaus1_1")
  Node_AddSon(node7, node99)
  Body_SetCS(node99, MAT_Vector3(1515.785863, 627.792998, 221.865702), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node99, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node99, 0)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_generic", "gen_stabK_1")
  Node_AddSon(node7, node100)
  Body_SetCS(node100, MAT_Vector3(1490.318009, 567.615506, 284.586738), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node100, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node100, 0)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_generic", "gen_stabK_2")
  Node_AddSon(node7, node101)
  Body_SetCS(node101, MAT_Vector3(1503.192819, 567.710517, 284.5867), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node101, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node101, 0)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_generic", "gen_stabK_3")
  Node_AddSon(node7, node102)
  Body_SetCS(node102, MAT_Vector3(1589.231718, 710.45864, 350), MAT_Vector3(-47.877537, 0, 0))
  Node_ParseIniFile(node102, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node102, 0)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_generic", "gen_stabK_4")
  Node_AddSon(node7, node103)
  Body_SetCS(node103, MAT_Vector3(1641.898668, 759.855741, 350), MAT_Vector3(-47.87754, 0, 0))
  Node_ParseIniFile(node103, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node103, 0)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_generic", "gen_stabK_5")
  Node_AddSon(node7, node104)
  Body_SetCS(node104, MAT_Vector3(1643.198468, 709.846053, 350), MAT_Vector3(-44.529203, 0, 0))
  Node_ParseIniFile(node104, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node104, 0)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_generic", "gen_stabK_6")
  Node_AddSon(node7, node105)
  Body_SetCS(node105, MAT_Vector3(1590.226747, 760.109256, 350), MAT_Vector3(-41.643814, 0, 0))
  Node_ParseIniFile(node105, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node105, 0)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_generic", "gen_kai1_1")
  Node_AddSon(node7, node106)
  Body_SetCS(node106, MAT_Vector3(3356.755488, 2227.480265, 554.62332), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node106, "osd/gen/gen_kai1.osd")
  Body_SetFriendOrFoeID(node106, 0)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_generic", "gen_kuppel_1")
  Node_AddSon(node7, node107)
  Body_SetCS(node107, MAT_Vector3(3356.810525, 2249.456456, 572.7), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node107, "osd/gen/gen_scoop.osd")
  Body_SetFriendOrFoeID(node107, 0)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_generic", "gen_kuppel_2")
  Node_AddSon(node7, node108)
  Body_SetCS(node108, MAT_Vector3(3356.826939, 2207.494365, 572.7), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node108, "osd/gen/gen_scoop.osd")
  Body_SetFriendOrFoeID(node108, 0)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node7, node109)
  Node_ParseIniFile(node109, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node109, "map/1H1/Terrain/coral_01.tga")
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_fx_plant", "fungus_01_1")
  Node_AddSon(node7, node110)
  Node_ParseIniFile(node110, "osd/fx_plant/fungus_01.osd")
  FX_Plant_SetMap(node110, "map/1H1/Terrain/fungus_01.tga")
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node7, node111)
  Node_ParseIniFile(node111, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node111, "map/1H1/Terrain/grass_01.tga")
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node7, node112)
  Node_ParseIniFile(node112, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node112, "map/1H1/Terrain/stone_01.tga")
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node7, node113)
  Node_ParseIniFile(node113, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_fx_sky", "fx_sky_01_1")
  Node_AddSon(node7, node114)
  Node_ParseIniFile(node114, "osd/fx_sky/fx_sky_01.osd")
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_fx_plankton", "fx_plankton_cyan_1")
  Node_AddSon(node7, node115)
  Node_ParseIniFile(node115, "osd/fx_plankton/fx_plankton_cyan.osd")
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node116)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node116, node117)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node116, node118)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_Path", "Bus_Path1")
  Node_AddSon(node118, node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node119, node120)
  Position_SetPosition(node120, MAT_Vector3(1448.152, 1445.556, 300))
  Position_SetRadius(node120, 5)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node119, node121)
  Position_SetPosition(node121, MAT_Vector3(1341.388, 1536.325, 300))
  Position_SetRadius(node121, 5)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node119, node122)
  Position_SetPosition(node122, MAT_Vector3(1200.688, 1647.805, 300))
  Position_SetRadius(node122, 5)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node119, node123)
  Position_SetPosition(node123, MAT_Vector3(965.801, 1832.583, 300))
  Position_SetRadius(node123, 5)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node119, node124)
  Position_SetPosition(node124, MAT_Vector3(701.158143, 2095.761177, 300))
  Position_SetRadius(node124, 5)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_Path", "Bus_Path2")
  Node_AddSon(node118, node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node125, node126)
  Position_SetPosition(node126, MAT_Vector3(578.0743, 2214.11, 300))
  Position_SetRadius(node126, 5)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node125, node127)
  Position_SetPosition(node127, MAT_Vector3(573.1037, 2932.813, 544.8704))
  Position_SetRadius(node127, 5)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node125, node128)
  Position_SetPosition(node128, MAT_Vector3(170.9467, 3153.85, 541.5674))
  Position_SetRadius(node128, 5)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node125, node129)
  Position_SetPosition(node129, MAT_Vector3(232.311481, 3228.55531, 509.9192))
  Position_SetRadius(node129, 5)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("NOD_Position", "SinkPos1")
  Node_AddSon(node118, node130)
  Position_SetPosition(node130, MAT_Vector3(244.8927, 3242.841, 470.0101))
  Position_SetRadius(node130, 5)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("NOD_PatrolArea", "DigArea1")
  Node_AddSon(node118, node131)
  PatrolArea_SetPosition(node131, MAT_Vector3(553.1158, 1617.041, 320.5679))
  PatrolArea_SetRadius(node131, 200)
  PatrolArea_SetMinZ(node131, -100)
  PatrolArea_SetMaxZ(node131, 20)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_PatrolArea", "DigArea2")
  Node_AddSon(node118, node132)
  PatrolArea_SetPosition(node132, MAT_Vector3(681.758, 1320.825, 320.5679))
  PatrolArea_SetRadius(node132, 200)
  PatrolArea_SetMinZ(node132, -100)
  PatrolArea_SetMaxZ(node132, 20)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("NOD_PatrolArea", "PolA_Area")
  Node_AddSon(node118, node133)
  PatrolArea_SetPosition(node133, MAT_Vector3(3207.172, 2045.24, 458.175))
  PatrolArea_SetRadius(node133, 550)
  PatrolArea_SetMinZ(node133, 0)
  PatrolArea_SetMaxZ(node133, 350)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("NOD_PatrolArea", "OverAll_Area")
  Node_AddSon(node118, node134)
  PatrolArea_SetPosition(node134, MAT_Vector3(2070.729, 2091.543, 409.5043))
  PatrolArea_SetRadius(node134, 2800)
  PatrolArea_SetMinZ(node134, -400)
  PatrolArea_SetMaxZ(node134, 2000)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("NOD_Path", "PolB_Path")
  Node_AddSon(node118, node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node135, node136)
  Position_SetPosition(node136, MAT_Vector3(2502.684, 2724.575, 388.9241))
  Position_SetRadius(node136, 5)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node135, node137)
  Position_SetPosition(node137, MAT_Vector3(2504.377, 2494.373, 440.5592))
  Position_SetRadius(node137, 5)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node135, node138)
  Position_SetPosition(node138, MAT_Vector3(2768.432, 1956.107, 526.75))
  Position_SetRadius(node138, 5)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node135, node139)
  Position_SetPosition(node139, MAT_Vector3(3008.79, 1719.134, 528.6783))
  Position_SetRadius(node139, 5)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node135, node140)
  Position_SetPosition(node140, MAT_Vector3(2958.01, 1495.703, 483.2662))
  Position_SetRadius(node140, 5)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node135, node141)
  Position_SetPosition(node141, MAT_Vector3(2873.544, 1359.64, 434.8769))
  Position_SetRadius(node141, 5)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node135, node142)
  Position_SetPosition(node142, MAT_Vector3(2687.274, 1281.76, 409.1673))
  Position_SetRadius(node142, 5)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node135, node143)
  Position_SetPosition(node143, MAT_Vector3(2448.687, 1185.296, 399.5517))
  Position_SetRadius(node143, 5)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node135, node144)
  Position_SetPosition(node144, MAT_Vector3(2238.289108, 1313.985973, 399.5517))
  Position_SetRadius(node144, 5)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node135, node145)
  Position_SetPosition(node145, MAT_Vector3(2348.594691, 1608.13451, 399.5517))
  Position_SetRadius(node145, 5)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node135, node146)
  Position_SetPosition(node146, MAT_Vector3(2475.242275, 2010.546503, 399.5517))
  Position_SetRadius(node146, 5)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node135, node147)
  Position_SetPosition(node147, MAT_Vector3(2260.758712, 2590.673228, 399.5517))
  Position_SetRadius(node147, 5)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node135, node148)
  Position_SetPosition(node148, MAT_Vector3(2266.649598, 2787.579593, 399.5517))
  Position_SetRadius(node148, 5)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node135, node149)
  Position_SetPosition(node149, MAT_Vector3(2384.936782, 2945.770049, 399.5517))
  Position_SetRadius(node149, 5)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node135, node150)
  Position_SetPosition(node150, MAT_Vector3(2500.37309, 2844.585029, 399.5517))
  Position_SetRadius(node150, 5)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Path", "AvenPath_2")
  Node_AddSon(node118, node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node151, node152)
  Position_SetPosition(node152, MAT_Vector3(2459.943, 2369.978, 416.699))
  Position_SetRadius(node152, 5)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node151, node153)
  Position_SetPosition(node153, MAT_Vector3(1920.299, 2642.359, 409.8863))
  Position_SetRadius(node153, 5)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node151, node154)
  Position_SetPosition(node154, MAT_Vector3(1541.18, 2709.554, 422.7159))
  Position_SetRadius(node154, 5)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node151, node155)
  Position_SetPosition(node155, MAT_Vector3(916.5884, 2663.852, 575))
  Position_SetRadius(node155, 5)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node151, node156)
  Position_SetPosition(node156, MAT_Vector3(796.4095, 2956.682, 633))
  Position_SetRadius(node156, 5)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Path", "AvenPath_1")
  Node_AddSon(node118, node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node157, node158)
  Position_SetPosition(node158, MAT_Vector3(812.0347, 3039.579, 564.1104))
  Position_SetRadius(node158, 5)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node157, node159)
  Position_SetPosition(node159, MAT_Vector3(877.8915, 2772.576, 526.2276))
  Position_SetRadius(node159, 5)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node157, node160)
  Position_SetPosition(node160, MAT_Vector3(1575.033, 2851.737, 425.7356))
  Position_SetRadius(node160, 5)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node157, node161)
  Position_SetPosition(node161, MAT_Vector3(1947.813, 2774.938, 413.1842))
  Position_SetRadius(node161, 5)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node157, node162)
  Position_SetPosition(node162, MAT_Vector3(2377.672, 2758.405, 371.2568))
  Position_SetRadius(node162, 5)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node157, node163)
  Position_SetPosition(node163, MAT_Vector3(2533.905, 2379.11, 399.8808))
  Position_SetRadius(node163, 5)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Path", "TranPath_1")
  Node_AddSon(node118, node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node164, node165)
  Position_SetPosition(node165, MAT_Vector3(3605.763, 2788.767, 730))
  Position_SetRadius(node165, 5)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node164, node166)
  Position_SetPosition(node166, MAT_Vector3(3186.819, 2790.843, 600))
  Position_SetRadius(node166, 5)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node164, node167)
  Position_SetPosition(node167, MAT_Vector3(2603.899, 2870.725, 600))
  Position_SetRadius(node167, 5)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node164, node168)
  Position_SetPosition(node168, MAT_Vector3(2048.26, 2869.13, 600))
  Position_SetRadius(node168, 5)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node164, node169)
  Position_SetPosition(node169, MAT_Vector3(1500.132, 3356.189, 550))
  Position_SetRadius(node169, 5)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node164, node170)
  Position_SetPosition(node170, MAT_Vector3(1237.211, 3772.236, 500))
  Position_SetRadius(node170, 5)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Path", "TranPath_2")
  Node_AddSon(node118, node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node171, node172)
  Position_SetPosition(node172, MAT_Vector3(1091.225, 3762.201, 500))
  Position_SetRadius(node172, 5)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node171, node173)
  Position_SetPosition(node173, MAT_Vector3(622.1145, 3631.627, 590))
  Position_SetRadius(node173, 5)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node171, node174)
  Position_SetPosition(node174, MAT_Vector3(757.8451, 3449.345, 590))
  Position_SetRadius(node174, 5)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node171, node175)
  Position_SetPosition(node175, MAT_Vector3(833.485, 3346.96, 590))
  Position_SetRadius(node175, 5)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node171, node176)
  Position_SetPosition(node176, MAT_Vector3(893.4283, 3264.622, 590))
  Position_SetRadius(node176, 5)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Path", "TranPath_3")
  Node_AddSon(node118, node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node177, node178)
  Position_SetPosition(node178, MAT_Vector3(958.9103, 3180.908, 590))
  Position_SetRadius(node178, 5)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node177, node179)
  Position_SetPosition(node179, MAT_Vector3(653.0388, 2885.919, 590))
  Position_SetRadius(node179, 5)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node177, node180)
  Position_SetPosition(node180, MAT_Vector3(842.742, 2599.859, 590))
  Position_SetRadius(node180, 5)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node177, node181)
  Position_SetPosition(node181, MAT_Vector3(1562.501, 2610.265, 569.1023))
  Position_SetRadius(node181, 5)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node177, node182)
  Position_SetPosition(node182, MAT_Vector3(2309.976, 2628.029, 523.73))
  Position_SetRadius(node182, 5)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node177, node183)
  Position_SetPosition(node183, MAT_Vector3(3258.105, 2985.102, 600))
  Position_SetRadius(node183, 5)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node177, node184)
  Position_SetPosition(node184, MAT_Vector3(3691.166, 2993.565, 700))
  Position_SetRadius(node184, 5)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node177, node185)
  Position_SetPosition(node185, MAT_Vector3(3960.692, 3003.821, 730))
  Position_SetRadius(node185, 5)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node177, node186)
  Position_SetPosition(node186, MAT_Vector3(3960.985, 2793.118, 730))
  Position_SetRadius(node186, 5)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node177, node187)
  Position_SetPosition(node187, MAT_Vector3(3746.876, 2789.768, 730))
  Position_SetRadius(node187, 5)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_Path", "atl_DockPath")
  Node_AddSon(node118, node188)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node188, node189)
  Position_SetPosition(node189, MAT_Vector3(752.047918, 3187.941455, 576))
  Position_SetRadius(node189, 5)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node188, node190)
  Position_SetPosition(node190, MAT_Vector3(690.309411, 3281.589753, 576))
  Position_SetRadius(node190, 5)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Path", "atl_DockAppr")
  Node_AddSon(node118, node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node191, node192)
  Position_SetPosition(node192, MAT_Vector3(828.353939, 3089.437319, 576))
  Position_SetRadius(node192, 5)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node191, node193)
  Position_SetPosition(node193, MAT_Vector3(782.570326, 3153.950591, 576))
  Position_SetRadius(node193, 5)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_PatrolArea", "atl_DockArea")
  Node_AddSon(node118, node194)
  PatrolArea_SetPosition(node194, MAT_Vector3(648.695854, 3019.382428, 625.483124))
  PatrolArea_SetRadius(node194, 150)
  PatrolArea_SetMinZ(node194, -30)
  PatrolArea_SetMaxZ(node194, 30)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Path", "Elt_DockPath")
  Node_AddSon(node118, node195)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node195, node196)
  Position_SetPosition(node196, MAT_Vector3(2919.91155, 2374.553822, 529.881885))
  Position_SetRadius(node196, 5)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node195, node197)
  Position_SetPosition(node197, MAT_Vector3(3036.665905, 2375.233772, 530.110944))
  Position_SetRadius(node197, 5)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("NOD_Path", "Elt_DockAppr")
  Node_AddSon(node118, node198)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node198, node199)
  Position_SetPosition(node199, MAT_Vector3(2783.072497, 2378.677121, 540.213188))
  Position_SetRadius(node199, 5)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node198, node200)
  Position_SetPosition(node200, MAT_Vector3(2874.933797, 2378.247567, 531.728762))
  Position_SetRadius(node200, 5)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("NOD_PatrolArea", "Elt_DockArea")
  Node_AddSon(node118, node201)
  PatrolArea_SetPosition(node201, MAT_Vector3(2891.254955, 2218.213399, 588.291909))
  PatrolArea_SetRadius(node201, 150)
  PatrolArea_SetMinZ(node201, -30)
  PatrolArea_SetMaxZ(node201, 30)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("NOD_PatrolArea", "Bio_Battle_Area")
  Node_AddSon(node118, node202)
  PatrolArea_SetPosition(node202, MAT_Vector3(964.579837, 1830.952914, 248.905958))
  PatrolArea_SetRadius(node202, 400)
  PatrolArea_SetMinZ(node202, -75)
  PatrolArea_SetMaxZ(node202, 512)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node116, node203)
  Node_EnterSimulation(node203)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node116, node204)
  Node_EnterSimulation(node204)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("NOD_Trigger", "BiontWakeUp")
  Node_AddSon(node204, node205)
  Body_SetFriendOrFoeID(node205, 3)
  Body_SetPosition(node205, MAT_Vector3(909.353139, 1815.919012, 260))
  Trigger_SetPresenceSphere(node205, 150)
  Node_EnterSimulation(node205)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("NOD_Trigger", "TransportFinish")
  Node_AddSon(node204, node206)
  Body_SetFriendOrFoeID(node206, 0)
  Body_SetPosition(node206, MAT_Vector3(577.923353, 2213.953376, 299.993235))
  Trigger_SetPresenceSphere(node206, 25)
  Node_EnterSimulation(node206)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node116, node207)
  Node_EnterSimulation(node207)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("NOD_Directory", "TRAFFIC")
  Node_AddSon(node207, node208)
  Node_EnterSimulation(node208)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("nod_vessel", "gen_transp_1")
  Node_AddSon(node208, node209)
  Body_SetCS(node209, MAT_Vector3(3963.963834, 2787.361363, 730), MAT_Vector3(90.82936, 0, 0))
  Node_ParseIniFile(node209, "osd/gen/gen_freighter2.osd")
  Body_SetFriendOrFoeID(node209, 2)
  Body_SetNameKey(node209, -1)
  Body_SetCargoKey(node209, -1, 0)
  Body_SetCargoKey(node209, -1, 1)
  Body_SetCargoKey(node209, -1, 2)
  Node_EnterSimulation(node209)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("nod_vessel", "gen_avenger_1")
  Node_AddSon(node208, node210)
  Body_SetCS(node210, MAT_Vector3(674.927258, 3310.399825, 629.881884), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node210, "osd/gen/gen_avenger.osd")
  Body_SetFriendOrFoeID(node210, 2)
  Body_SetNameKey(node210, -1)
  Body_SetCargoKey(node210, -1, 0)
  Body_SetCargoKey(node210, -1, 1)
  Body_SetCargoKey(node210, -1, 2)
  Node_EnterSimulation(node210)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("NOD_Directory", "PolA_Group")
  Node_AddSon(node208, node211)
  Node_EnterSimulation(node211)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("nod_vessel", "Pol_GroupA_1")
  Node_AddSon(node211, node212)
  Body_SetCS(node212, MAT_Vector3(2850.287, 2125.765, 638.0082), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node212, "osd/atl/atl_pscout.osd")
  Body_SetFriendOrFoeID(node212, 1)
  Body_SetNameKey(node212, -1)
  Body_SetCargoKey(node212, -1, 0)
  Body_SetCargoKey(node212, -1, 1)
  Body_SetCargoKey(node212, -1, 2)
  Node_EnterSimulation(node212)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("nod_vessel", "Pol_GroupA_2")
  Node_AddSon(node211, node213)
  Body_SetCS(node213, MAT_Vector3(2823.016, 2114.536, 563.9011), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node213, "osd/atl/atl_pscout.osd")
  Body_SetFriendOrFoeID(node213, 1)
  Body_SetNameKey(node213, -1)
  Body_SetCargoKey(node213, -1, 0)
  Body_SetCargoKey(node213, -1, 1)
  Body_SetCargoKey(node213, -1, 2)
  Node_EnterSimulation(node213)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("NOD_Directory", "PolB_Group")
  Node_AddSon(node208, node214)
  Node_EnterSimulation(node214)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("nod_vessel", "Pol_GroupB_1")
  Node_AddSon(node214, node215)
  Body_SetCS(node215, MAT_Vector3(2498.659, 2844.758, 336.7712), MAT_Vector3(-179.7954, 0, 0))
  Node_ParseIniFile(node215, "osd/atl/atl_pscout.osd")
  Body_SetFriendOrFoeID(node215, 1)
  Body_SetNameKey(node215, -1)
  Body_SetCargoKey(node215, -1, 0)
  Body_SetCargoKey(node215, -1, 1)
  Body_SetCargoKey(node215, -1, 2)
  Node_EnterSimulation(node215)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("nod_vessel", "Pol_GroupB_2")
  Node_AddSon(node214, node216)
  Body_SetCS(node216, MAT_Vector3(2509.263843, 2860.445571, 336.7712), MAT_Vector3(-179.7954, 0, 0))
  Node_ParseIniFile(node216, "osd/atl/atl_pscout.osd")
  Body_SetFriendOrFoeID(node216, 1)
  Body_SetNameKey(node216, -1)
  Body_SetCargoKey(node216, -1, 0)
  Body_SetCargoKey(node216, -1, 1)
  Body_SetCargoKey(node216, -1, 2)
  Node_EnterSimulation(node216)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("nod_vessel", "Pol_GroupB_3")
  Node_AddSon(node214, node217)
  Body_SetCS(node217, MAT_Vector3(2488.88402, 2859.788581, 336.7712), MAT_Vector3(-179.7954, 0, 0))
  Node_ParseIniFile(node217, "osd/atl/atl_pscout.osd")
  Body_SetFriendOrFoeID(node217, 1)
  Body_SetNameKey(node217, -1)
  Body_SetCargoKey(node217, -1, 0)
  Body_SetCargoKey(node217, -1, 1)
  Body_SetCargoKey(node217, -1, 2)
  Node_EnterSimulation(node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("nod_vessel", "Pol_GroupB_4")
  Node_AddSon(node214, node218)
  Body_SetCS(node218, MAT_Vector3(2489.048355, 2877.210596, 336.7712), MAT_Vector3(-179.7954, 0, 0))
  Node_ParseIniFile(node218, "osd/atl/atl_pscout.osd")
  Body_SetFriendOrFoeID(node218, 1)
  Body_SetNameKey(node218, -1)
  Body_SetCargoKey(node218, -1, 0)
  Body_SetCargoKey(node218, -1, 1)
  Body_SetCargoKey(node218, -1, 2)
  Node_EnterSimulation(node218)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("nod_vessel", "Pol_GroupB_5")
  Node_AddSon(node214, node219)
  Body_SetCS(node219, MAT_Vector3(2508.113142, 2876.717936, 336.7712), MAT_Vector3(-179.7954, 0, 0))
  Node_ParseIniFile(node219, "osd/atl/atl_pscout.osd")
  Body_SetFriendOrFoeID(node219, 1)
  Body_SetNameKey(node219, -1)
  Body_SetCargoKey(node219, -1, 0)
  Body_SetCargoKey(node219, -1, 1)
  Body_SetCargoKey(node219, -1, 2)
  Node_EnterSimulation(node219)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("nod_vehicle", "gen_raupe_1")
  Node_AddSon(node208, node220)
  Body_SetCS(node220, MAT_Vector3(556.888121, 1569.801185, 322.439806), MAT_Vector3(-77.2459, 0, 0))
  Node_ParseIniFile(node220, "osd/gen/gen_raupe.osd")
  Body_SetFriendOrFoeID(node220, 2)
  Body_SetNameKey(node220, -1)
  Body_SetCargoKey(node220, -1, 0)
  Body_SetCargoKey(node220, -1, 1)
  Body_SetCargoKey(node220, -1, 2)
  Node_EnterSimulation(node220)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("nod_vehicle", "gen_raupe_2")
  Node_AddSon(node208, node221)
  Body_SetCS(node221, MAT_Vector3(462.828719, 1693.788365, 322.4398), MAT_Vector3(-146.079124, 0, 0))
  Node_ParseIniFile(node221, "osd/gen/gen_raupe.osd")
  Body_SetFriendOrFoeID(node221, 2)
  Body_SetNameKey(node221, -1)
  Body_SetCargoKey(node221, -1, 0)
  Body_SetCargoKey(node221, -1, 1)
  Body_SetCargoKey(node221, -1, 2)
  Node_EnterSimulation(node221)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("nod_vehicle", "gen_raupe_3")
  Node_AddSon(node208, node222)
  Body_SetCS(node222, MAT_Vector3(703.67772, 1415.885285, 322.4398), MAT_Vector3(140.9201, 0, 0))
  Node_ParseIniFile(node222, "osd/gen/gen_raupe.osd")
  Body_SetFriendOrFoeID(node222, 2)
  Body_SetNameKey(node222, -1)
  Body_SetCargoKey(node222, -1, 0)
  Body_SetCargoKey(node222, -1, 1)
  Body_SetCargoKey(node222, -1, 2)
  Node_EnterSimulation(node222)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("nod_vehicle", "gen_raupe_4")
  Node_AddSon(node208, node223)
  Body_SetCS(node223, MAT_Vector3(593.941756, 1264.819934, 322.4398), MAT_Vector3(-24.685135, 0, 0))
  Node_ParseIniFile(node223, "osd/gen/gen_raupe.osd")
  Body_SetFriendOrFoeID(node223, 2)
  Body_SetNameKey(node223, -1)
  Body_SetCargoKey(node223, -1, 0)
  Body_SetCargoKey(node223, -1, 1)
  Body_SetCargoKey(node223, -1, 2)
  Node_EnterSimulation(node223)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("nod_vessel", "elt_transport")
  Node_AddSon(node207, node224)
  Body_SetCS(node224, MAT_Vector3(1492.222214, 1408.650241, 308.676816), MAT_Vector3(51.534543, 0, 0))
  Node_ParseIniFile(node224, "osd/elt/elt_transport.osd")
  Body_SetFriendOrFoeID(node224, 1)
  Body_SetNameKey(node224, -1)
  Body_SetCargoKey(node224, -1, 0)
  Body_SetCargoKey(node224, -1, 1)
  Body_SetCargoKey(node224, -1, 2)
  Node_EnterSimulation(node224)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node207, node225)
  Body_SetCS(node225, MAT_Vector3(3054.687709, 2369.162806, 531.284815), MAT_Vector3(90.327826, 0, 0))
  Node_ParseIniFile(node225, "osd/pla/pla_toiler.osd")
  Body_SetFriendOrFoeID(node225, 0)
  Node_EnterSimulation(node225)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("NOD_Directory", "TrashField_Nav1")
  Node_AddSon(node207, node226)
  Node_EnterSimulation(node226)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("nod_trash", "bio_clunker02a_low_1")
  Node_AddSon(node226, node227)
  Body_SetCS(node227, MAT_Vector3(3127.440185, 1681.894057, 490.48053), MAT_Vector3(-175.955566, -69.499184, 73.335065))
  Node_ParseIniFile(node227, "osd/bio/bio_clunker02a_low.osd")
  Body_SetFriendOrFoeID(node227, 4)
  Node_EnterSimulation(node227)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("nod_trash", "bio_clunker02b_low_1")
  Node_AddSon(node226, node228)
  Body_SetCS(node228, MAT_Vector3(3217.00622, 1739.141576, 516.72203), MAT_Vector3(125.276235, -67.103914, 78.244222))
  Node_ParseIniFile(node228, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node228, 4)
  Node_EnterSimulation(node228)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("nod_trash", "bio_clunker02b_low_2")
  Node_AddSon(node226, node229)
  Body_SetCS(node229, MAT_Vector3(3556.685208, 1730.719395, 521.259276), MAT_Vector3(-94.116052, -3.067673, 73.383753))
  Node_ParseIniFile(node229, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node229, 4)
  Node_EnterSimulation(node229)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("nod_trash", "bio_clunker03a_low_1")
  Node_AddSon(node226, node230)
  Body_SetCS(node230, MAT_Vector3(3250.69344, 1595.569853, 509.632606), MAT_Vector3(-35.588256, 14.388108, 27.591331))
  Node_ParseIniFile(node230, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node230, 4)
  Node_EnterSimulation(node230)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("nod_trash", "bio_clunker03a_low_2")
  Node_AddSon(node226, node231)
  Body_SetCS(node231, MAT_Vector3(3368.197232, 1687.407778, 509.6326), MAT_Vector3(-16.957744, 72.743311, 51.284474))
  Node_ParseIniFile(node231, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node231, 4)
  Node_EnterSimulation(node231)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("nod_trash", "bio_clunker03b_low_1")
  Node_AddSon(node226, node232)
  Body_SetCS(node232, MAT_Vector3(3168.88162, 1696.230475, 468.797525), MAT_Vector3(-159.130701, -63.119175, 83.436136))
  Node_ParseIniFile(node232, "osd/bio/bio_clunker03b_low.osd")
  Body_SetFriendOrFoeID(node232, 4)
  Node_EnterSimulation(node232)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("nod_trash", "bio_clunker03b_low_2")
  Node_AddSon(node226, node233)
  Body_SetCS(node233, MAT_Vector3(3334.109793, 1632.063867, 468.7975), MAT_Vector3(-47.880157, 14.942885, 37.615699))
  Node_ParseIniFile(node233, "osd/bio/bio_clunker03b_low.osd")
  Body_SetFriendOrFoeID(node233, 4)
  Node_EnterSimulation(node233)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("nod_trash", "bio_clunker03b_low_3")
  Node_AddSon(node226, node234)
  Body_SetCS(node234, MAT_Vector3(3513.775173, 1749.96927, 474.752616), MAT_Vector3(-47.88016, 14.94288, 37.6157))
  Node_ParseIniFile(node234, "osd/bio/bio_clunker03b_low.osd")
  Body_SetFriendOrFoeID(node234, 4)
  Node_EnterSimulation(node234)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("nod_trash", "bio_clunker04a_low_1")
  Node_AddSon(node226, node235)
  Body_SetCS(node235, MAT_Vector3(3301.22427, 1590.356355, 485.528565), MAT_Vector3(178.907993, -88.462918, 145.566871))
  Node_ParseIniFile(node235, "osd/bio/bio_clunker04a_low.osd")
  Body_SetFriendOrFoeID(node235, 4)
  Node_EnterSimulation(node235)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("nod_trash", "bio_clunker04a_low_2")
  Node_AddSon(node226, node236)
  Body_SetCS(node236, MAT_Vector3(3452.014413, 1716.683075, 485.5286), MAT_Vector3(178.908, -88.46292, 145.5669))
  Node_ParseIniFile(node236, "osd/bio/bio_clunker04a_low.osd")
  Body_SetFriendOrFoeID(node236, 4)
  Node_EnterSimulation(node236)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("nod_trash", "bio_clunker04a_low_3")
  Node_AddSon(node226, node237)
  Body_SetCS(node237, MAT_Vector3(3159.256017, 1654.923097, 478.722753), MAT_Vector3(-63.708641, -1.930693, 121.036055))
  Node_ParseIniFile(node237, "osd/bio/bio_clunker04a_low.osd")
  Body_SetFriendOrFoeID(node237, 4)
  Node_EnterSimulation(node237)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("nod_trash", "bio_clunker06_low_1")
  Node_AddSon(node226, node238)
  Body_SetCS(node238, MAT_Vector3(3453.618836, 1737.537423, 469.364679), MAT_Vector3(13.294953, -11.026461, -8.73467))
  Node_ParseIniFile(node238, "osd/bio/bio_clunker06_low.osd")
  Body_SetFriendOrFoeID(node238, 4)
  Node_EnterSimulation(node238)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("nod_trash", "bio_clunker06_low_2")
  Node_AddSon(node226, node239)
  Body_SetCS(node239, MAT_Vector3(3182.116049, 1617.626538, 469.3647), MAT_Vector3(-80.338036, 5.981413, 63.445555))
  Node_ParseIniFile(node239, "osd/bio/bio_clunker06_low.osd")
  Body_SetFriendOrFoeID(node239, 4)
  Node_EnterSimulation(node239)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("nod_trash", "bio_clunker05_low_1")
  Node_AddSon(node226, node240)
  Body_SetCS(node240, MAT_Vector3(3229.03737, 1659.735986, 470.21541), MAT_Vector3(-146.154959, -54.915581, 88.496883))
  Node_ParseIniFile(node240, "osd/bio/bio_clunker05_low.osd")
  Body_SetFriendOrFoeID(node240, 4)
  Node_EnterSimulation(node240)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("nod_trash", "bio_clunker05_low_2")
  Node_AddSon(node226, node241)
  Body_SetCS(node241, MAT_Vector3(3296.812478, 1569.101337, 466.812477), MAT_Vector3(-25.244363, 12.270929, 19.243787))
  Node_ParseIniFile(node241, "osd/bio/bio_clunker05_low.osd")
  Body_SetFriendOrFoeID(node241, 4)
  Node_EnterSimulation(node241)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("nod_trash", "bio_clunker05_low_3")
  Node_AddSon(node226, node242)
  Body_SetCS(node242, MAT_Vector3(3486.415608, 1723.989324, 476.454116), MAT_Vector3(67.045789, 12.27093, 19.24379))
  Node_ParseIniFile(node242, "osd/bio/bio_clunker05_low.osd")
  Body_SetFriendOrFoeID(node242, 4)
  Node_EnterSimulation(node242)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("NOD_Directory", "TrashField_Nav2")
  Node_AddSon(node207, node243)
  Node_EnterSimulation(node243)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("nod_trash", "bio_clunker02a_low_1")
  Node_AddSon(node243, node244)
  Body_SetCS(node244, MAT_Vector3(1075.400451, 1746.214287, 273.324968), MAT_Vector3(49.122414, -48.96448, -19.262087))
  Node_ParseIniFile(node244, "osd/bio/bio_clunker02a_low.osd")
  Body_SetFriendOrFoeID(node244, 4)
  Node_EnterSimulation(node244)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("nod_trash", "bio_clunker03a_low_1")
  Node_AddSon(node243, node245)
  Body_SetCS(node245, MAT_Vector3(1311.071433, 1557.498421, 271.786038), MAT_Vector3(-13.460566, 7.881399, 9.980895))
  Node_ParseIniFile(node245, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node245, 4)
  Node_EnterSimulation(node245)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("nod_trash", "bio_clunker03b_low_1")
  Node_AddSon(node243, node246)
  Body_SetCS(node246, MAT_Vector3(1417.627179, 1473.247602, 299.103392), MAT_Vector3(168.229401, -63.11918, 83.43614))
  Node_ParseIniFile(node246, "osd/bio/bio_clunker03b_low.osd")
  Body_SetFriendOrFoeID(node246, 4)
  Node_EnterSimulation(node246)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("nod_trash", "bio_clunker04a_low_1")
  Node_AddSon(node243, node247)
  Body_SetCS(node247, MAT_Vector3(1436.534038, 1453.640959, 291.019847), MAT_Vector3(-20.087516, -43.950741, 38.514864))
  Node_ParseIniFile(node247, "osd/bio/bio_clunker04a_low.osd")
  Body_SetFriendOrFoeID(node247, 4)
  Node_EnterSimulation(node247)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("nod_trash", "bio_clunker06_low_1")
  Node_AddSon(node243, node248)
  Body_SetCS(node248, MAT_Vector3(1089.267044, 1736.032732, 299.853254), MAT_Vector3(30.951487, -29.76079, -17.115518))
  Node_ParseIniFile(node248, "osd/bio/bio_clunker06_low.osd")
  Body_SetFriendOrFoeID(node248, 4)
  Node_EnterSimulation(node248)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("nod_trash", "bio_clunker05_low_1")
  Node_AddSon(node243, node249)
  Body_SetCS(node249, MAT_Vector3(1235.647698, 1618.33404, 302.814406), MAT_Vector3(165.708805, -54.91558, 88.49688))
  Node_ParseIniFile(node249, "osd/bio/bio_clunker05_low.osd")
  Body_SetFriendOrFoeID(node249, 4)
  Node_EnterSimulation(node249)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("nod_trash", "bio_clunker02a_low_2")
  Node_AddSon(node243, node250)
  Body_SetCS(node250, MAT_Vector3(1189.6959, 1655.579727, 276.49973), MAT_Vector3(-131.470465, -41.368963, 89.84661))
  Node_ParseIniFile(node250, "osd/bio/bio_clunker02a_low.osd")
  Body_SetFriendOrFoeID(node250, 4)
  Node_EnterSimulation(node250)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("nod_trash", "bio_clunker02b_low_2")
  Node_AddSon(node243, node251)
  Body_SetCS(node251, MAT_Vector3(1266.141462, 1586.504123, 306.870404), MAT_Vector3(-174.268061, -70.110823, 121.603235))
  Node_ParseIniFile(node251, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node251, 4)
  Node_EnterSimulation(node251)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("nod_trash", "bio_clunker03a_low_2")
  Node_AddSon(node243, node252)
  Body_SetCS(node252, MAT_Vector3(1145.843402, 1701.07049, 271.786), MAT_Vector3(164.128796, -0.570648, 71.09152))
  Node_ParseIniFile(node252, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node252, 4)
  Node_EnterSimulation(node252)
  Game_LoadProgress_Advance(node0)
  node253 = Node_CreateNode("nod_trash", "bio_clunker03b_low_2")
  Node_AddSon(node243, node253)
  Body_SetCS(node253, MAT_Vector3(1294.107113, 1574.30974, 300.897812), MAT_Vector3(-115.969853, -24.183282, 85.786749))
  Node_ParseIniFile(node253, "osd/bio/bio_clunker03b_low.osd")
  Body_SetFriendOrFoeID(node253, 4)
  Node_EnterSimulation(node253)
  Game_LoadProgress_Advance(node0)
  node254 = Node_CreateNode("nod_trash", "bio_clunker04a_low_2")
  Node_AddSon(node243, node254)
  Body_SetCS(node254, MAT_Vector3(1222.379408, 1632.10318, 291.0198), MAT_Vector3(-131.454637, -61.948132, -84.926583))
  Node_ParseIniFile(node254, "osd/bio/bio_clunker04a_low.osd")
  Body_SetFriendOrFoeID(node254, 4)
  Node_EnterSimulation(node254)
  Game_LoadProgress_Advance(node0)
  node255 = Node_CreateNode("nod_trash", "bio_clunker06_low_2")
  Node_AddSon(node243, node255)
  Body_SetCS(node255, MAT_Vector3(1166.925238, 1677.265078, 306.478823), MAT_Vector3(-150.402228, -5.642822, 75.497128))
  Node_ParseIniFile(node255, "osd/bio/bio_clunker06_low.osd")
  Body_SetFriendOrFoeID(node255, 4)
  Node_EnterSimulation(node255)
  Game_LoadProgress_Advance(node0)
  node256 = Node_CreateNode("nod_trash", "bio_clunker05_low_2")
  Node_AddSon(node243, node256)
  Body_SetCS(node256, MAT_Vector3(1100.16224, 1727.81793, 298.81148), MAT_Vector3(70.026021, -63.564426, -12.453398))
  Node_ParseIniFile(node256, "osd/bio/bio_clunker05_low.osd")
  Body_SetFriendOrFoeID(node256, 4)
  Node_EnterSimulation(node256)
  Game_LoadProgress_Advance(node0)
  node257 = Node_CreateNode("nod_trash", "bio_clunker03a_low_3")
  Node_AddSon(node243, node257)
  Body_SetCS(node257, MAT_Vector3(1047.798, 1744.737, 302.153), MAT_Vector3(61.69187, -0.570648, 71.09152))
  Node_ParseIniFile(node257, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node257, 4)
  Node_EnterSimulation(node257)
  Game_LoadProgress_Advance(node0)
  node258 = Node_CreateNode("nod_trash", "bio_clunker02a_low_4")
  Node_AddSon(node243, node258)
  Body_SetCS(node258, MAT_Vector3(781.26539, 2013.159696, 290.99306), MAT_Vector3(-109.182376, -16.879605, 82.571441))
  Node_ParseIniFile(node258, "osd/bio/bio_clunker02a_low.osd")
  Body_SetFriendOrFoeID(node258, 4)
  Node_EnterSimulation(node258)
  Game_LoadProgress_Advance(node0)
  node259 = Node_CreateNode("nod_trash", "bio_clunker02b_low_4")
  Node_AddSon(node243, node259)
  Body_SetCS(node259, MAT_Vector3(845.547449, 1944.205559, 292.9292), MAT_Vector3(124.649407, -17.399764, 38.377188))
  Node_ParseIniFile(node259, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node259, 4)
  Node_EnterSimulation(node259)
  Game_LoadProgress_Advance(node0)
  node260 = Node_CreateNode("nod_trash", "bio_clunker03a_low_4")
  Node_AddSon(node243, node260)
  Body_SetCS(node260, MAT_Vector3(745.23019, 2057.828292, 295.527456), MAT_Vector3(65.732079, 46.227887, -86.960805))
  Node_ParseIniFile(node260, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node260, 4)
  Node_EnterSimulation(node260)
  Game_LoadProgress_Advance(node0)
  node261 = Node_CreateNode("nod_trash", "bio_clunker03b_low_4")
  Node_AddSon(node243, node261)
  Body_SetCS(node261, MAT_Vector3(881.263888, 1915.685774, 302.416161), MAT_Vector3(-82.096781, -67.732433, 118.721666))
  Node_ParseIniFile(node261, "osd/bio/bio_clunker03b_low.osd")
  Body_SetFriendOrFoeID(node261, 4)
  Node_EnterSimulation(node261)
  Game_LoadProgress_Advance(node0)
  node262 = Node_CreateNode("nod_trash", "bio_clunker04a_low_4")
  Node_AddSon(node243, node262)
  Body_SetCS(node262, MAT_Vector3(803.773831, 1988.356299, 291.0198), MAT_Vector3(-20.08752, -43.95074, 38.51486))
  Node_ParseIniFile(node262, "osd/bio/bio_clunker04a_low.osd")
  Body_SetFriendOrFoeID(node262, 4)
  Node_EnterSimulation(node262)
  Game_LoadProgress_Advance(node0)
  node263 = Node_CreateNode("nod_trash", "bio_clunker06_low_4")
  Node_AddSon(node243, node263)
  Body_SetCS(node263, MAT_Vector3(722.628621, 2073.010746, 299.8533), MAT_Vector3(30.95149, -29.76079, -17.11552))
  Node_ParseIniFile(node263, "osd/bio/bio_clunker06_low.osd")
  Body_SetFriendOrFoeID(node263, 4)
  Node_EnterSimulation(node263)
  Game_LoadProgress_Advance(node0)
  node264 = Node_CreateNode("nod_trash", "bio_clunker05_low_4")
  Node_AddSon(node243, node264)
  Body_SetCS(node264, MAT_Vector3(772.612564, 2025.343796, 302.8144), MAT_Vector3(165.7088, -54.91558, 88.49688))
  Node_ParseIniFile(node264, "osd/bio/bio_clunker05_low.osd")
  Body_SetFriendOrFoeID(node264, 4)
  Node_EnterSimulation(node264)
  Game_LoadProgress_Advance(node0)
  node265 = Node_CreateNode("nod_trash", "bio_clunker02a_low_5")
  Node_AddSon(node243, node265)
  Body_SetCS(node265, MAT_Vector3(946.595491, 1977.732123, 239.211755), MAT_Vector3(69.81079, -83.740455, -39.956249))
  Node_ParseIniFile(node265, "osd/bio/bio_clunker02a_low.osd")
  Body_SetFriendOrFoeID(node265, 4)
  Node_EnterSimulation(node265)
  Game_LoadProgress_Advance(node0)
  node266 = Node_CreateNode("nod_trash", "bio_clunker02b_low_5")
  Node_AddSon(node243, node266)
  Body_SetCS(node266, MAT_Vector3(1019.143996, 1887.521397, 267.209685), MAT_Vector3(142.754472, -41.423995, -2.142843))
  Node_ParseIniFile(node266, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node266, 4)
  Node_EnterSimulation(node266)
  Game_LoadProgress_Advance(node0)
  node267 = Node_CreateNode("nod_trash", "bio_clunker03a_low_5")
  Node_AddSon(node243, node267)
  Body_SetCS(node267, MAT_Vector3(927.0933, 1742.519898, 333.639145), MAT_Vector3(-169.333373, 15.542571, 50.746337))
  Node_ParseIniFile(node267, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node267, 4)
  Node_EnterSimulation(node267)
  Game_LoadProgress_Advance(node0)
  node268 = Node_CreateNode("nod_trash", "bio_clunker03b_low_5")
  Node_AddSon(node243, node268)
  Body_SetCS(node268, MAT_Vector3(960.386158, 1933.399938, 290.491698), MAT_Vector3(-79.550486, -63.330378, 33.618599))
  Node_ParseIniFile(node268, "osd/bio/bio_clunker03b_low.osd")
  Body_SetFriendOrFoeID(node268, 4)
  Node_EnterSimulation(node268)
  Game_LoadProgress_Advance(node0)
  node269 = Node_CreateNode("nod_trash", "bio_clunker04a_low_5")
  Node_AddSon(node243, node269)
  Body_SetCS(node269, MAT_Vector3(1115.539114, 1811.216617, 285.642083), MAT_Vector3(-52.861322, -12.464359, 166.59334))
  Node_ParseIniFile(node269, "osd/bio/bio_clunker04a_low.osd")
  Body_SetFriendOrFoeID(node269, 4)
  Node_EnterSimulation(node269)
  Game_LoadProgress_Advance(node0)
  node270 = Node_CreateNode("nod_trash", "bio_clunker06_low_5")
  Node_AddSon(node243, node270)
  Body_SetCS(node270, MAT_Vector3(863.159177, 1802.578208, 299.8533), MAT_Vector3(137.784506, -83.339685, 50.59904))
  Node_ParseIniFile(node270, "osd/bio/bio_clunker06_low.osd")
  Body_SetFriendOrFoeID(node270, 4)
  Node_EnterSimulation(node270)
  Game_LoadProgress_Advance(node0)
  node271 = Node_CreateNode("nod_trash", "bio_clunker05_low_5")
  Node_AddSon(node243, node271)
  Body_SetCS(node271, MAT_Vector3(1038.321675, 1672.246163, 302.8144), MAT_Vector3(38.021819, 6.727813, 7.116141))
  Node_ParseIniFile(node271, "osd/bio/bio_clunker05_low.osd")
  Body_SetFriendOrFoeID(node271, 4)
  Node_EnterSimulation(node271)
  Game_LoadProgress_Advance(node0)
  node272 = Node_CreateNode("nod_trash", "bio_clunker02a_low_6")
  Node_AddSon(node243, node272)
  Body_SetCS(node272, MAT_Vector3(1185.143203, 1765.16474, 239.2118), MAT_Vector3(69.81079, -83.74046, -39.95625))
  Node_ParseIniFile(node272, "osd/bio/bio_clunker02a_low.osd")
  Body_SetFriendOrFoeID(node272, 4)
  Node_EnterSimulation(node272)
  Game_LoadProgress_Advance(node0)
  node273 = Node_CreateNode("nod_trash", "bio_clunker03a_low_6")
  Node_AddSon(node243, node273)
  Body_SetCS(node273, MAT_Vector3(1112.499188, 1586.637343, 333.6391), MAT_Vector3(-169.3334, 15.54257, 50.74634))
  Node_ParseIniFile(node273, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node273, 4)
  Node_EnterSimulation(node273)
  Game_LoadProgress_Advance(node0)
  node274 = Node_CreateNode("nod_trash", "bio_clunker03b_low_6")
  Node_AddSon(node243, node274)
  Body_SetCS(node274, MAT_Vector3(779.704029, 1946.390221, 290.4917), MAT_Vector3(-79.55049, -63.33038, 33.6186))
  Node_ParseIniFile(node274, "osd/bio/bio_clunker03b_low.osd")
  Body_SetFriendOrFoeID(node274, 4)
  Node_EnterSimulation(node274)
  Game_LoadProgress_Advance(node0)
  node275 = Node_CreateNode("nod_trash", "bio_clunker04a_low_6")
  Node_AddSon(node243, node275)
  Body_SetCS(node275, MAT_Vector3(1168.680815, 1598.64974, 285.6421), MAT_Vector3(-52.86132, -12.46436, 166.5933))
  Node_ParseIniFile(node275, "osd/bio/bio_clunker04a_low.osd")
  Body_SetFriendOrFoeID(node275, 4)
  Node_EnterSimulation(node275)
  Game_LoadProgress_Advance(node0)
  node276 = Node_CreateNode("nod_trash", "bio_clunker06_low_6")
  Node_AddSon(node243, node276)
  Body_SetCS(node276, MAT_Vector3(908.03451, 2011.602472, 299.8533), MAT_Vector3(137.7845, -83.33968, 50.59904))
  Node_ParseIniFile(node276, "osd/bio/bio_clunker06_low.osd")
  Body_SetFriendOrFoeID(node276, 4)
  Node_EnterSimulation(node276)
  Game_LoadProgress_Advance(node0)
  node277 = Node_CreateNode("nod_trash", "bio_clunker05_low_6")
  Node_AddSon(node243, node277)
  Body_SetCS(node277, MAT_Vector3(1025.331779, 1622.646973, 302.8144), MAT_Vector3(38.02182, 6.727813, 7.116141))
  Node_ParseIniFile(node277, "osd/bio/bio_clunker05_low.osd")
  Body_SetFriendOrFoeID(node277, 4)
  Node_EnterSimulation(node277)
  Game_LoadProgress_Advance(node0)
  node278 = Node_CreateNode("nod_trash", "bio_clunker02a_low_7")
  Node_AddSon(node243, node278)
  Body_SetCS(node278, MAT_Vector3(1130.820459, 1636.443455, 239.2118), MAT_Vector3(69.81079, -83.74046, -69.072368))
  Node_ParseIniFile(node278, "osd/bio/bio_clunker02a_low.osd")
  Body_SetFriendOrFoeID(node278, 4)
  Node_EnterSimulation(node278)
  Game_LoadProgress_Advance(node0)
  node279 = Node_CreateNode("nod_trash", "bio_clunker02b_low_7")
  Node_AddSon(node243, node279)
  Body_SetCS(node279, MAT_Vector3(1231.71126, 1735.18113, 259.026218), MAT_Vector3(142.7545, -41.424, -94.711502))
  Node_ParseIniFile(node279, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node279, 4)
  Node_EnterSimulation(node279)
  Game_LoadProgress_Advance(node0)
  node280 = Node_CreateNode("nod_trash", "bio_clunker03a_low_7")
  Node_AddSon(node243, node280)
  Body_SetCS(node280, MAT_Vector3(855.056618, 2050.742527, 265.833106), MAT_Vector3(-169.3334, 15.54257, 41.537939))
  Node_ParseIniFile(node280, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node280, 4)
  Node_EnterSimulation(node280)
  Game_LoadProgress_Advance(node0)
  node281 = Node_CreateNode("nod_trash", "bio_clunker03b_low_7")
  Node_AddSon(node243, node281)
  Body_SetCS(node281, MAT_Vector3(1343.007268, 1596.835172, 290.4917), MAT_Vector3(-79.55049, -63.33038, -29.386247))
  Node_ParseIniFile(node281, "osd/bio/bio_clunker03b_low.osd")
  Body_SetFriendOrFoeID(node281, 4)
  Node_EnterSimulation(node281)
  Game_LoadProgress_Advance(node0)
  node282 = Node_CreateNode("nod_trash", "bio_clunker04a_low_7")
  Node_AddSon(node243, node282)
  Body_SetCS(node282, MAT_Vector3(1334.010906, 1440.405225, 273.717598), MAT_Vector3(-52.86132, -12.46436, 52.699924))
  Node_ParseIniFile(node282, "osd/bio/bio_clunker04a_low.osd")
  Body_SetFriendOrFoeID(node282, 4)
  Node_EnterSimulation(node282)
  Game_LoadProgress_Advance(node0)
  node283 = Node_CreateNode("nod_trash", "bio_clunker06_low_7")
  Node_AddSon(node243, node283)
  Body_SetCS(node283, MAT_Vector3(1414.653146, 1545.13543, 334.925366), MAT_Vector3(137.7845, -83.33968, 50.59904))
  Node_ParseIniFile(node283, "osd/bio/bio_clunker06_low.osd")
  Body_SetFriendOrFoeID(node283, 4)
  Node_EnterSimulation(node283)
  Game_LoadProgress_Advance(node0)
  node284 = Node_CreateNode("nod_trash", "bio_clunker05_low_7")
  Node_AddSon(node243, node284)
  Body_SetCS(node284, MAT_Vector3(1263.879481, 1504.554051, 287.616505), MAT_Vector3(38.02182, 6.727813, -162.512292))
  Node_ParseIniFile(node284, "osd/bio/bio_clunker05_low.osd")
  Body_SetFriendOrFoeID(node284, 4)
  Node_EnterSimulation(node284)
  Game_LoadProgress_Advance(node0)
  node285 = Node_CreateNode("nod_trash", "bio_clunker02a_low_8")
  Node_AddSon(node243, node285)
  Body_SetCS(node285, MAT_Vector3(1384.720038, 1567.94982, 259.787412), MAT_Vector3(69.81079, -83.74046, 170.701181))
  Node_ParseIniFile(node285, "osd/bio/bio_clunker02a_low.osd")
  Body_SetFriendOrFoeID(node285, 4)
  Node_EnterSimulation(node285)
  Game_LoadProgress_Advance(node0)
  node286 = Node_CreateNode("nod_trash", "bio_clunker03a_low_8")
  Node_AddSon(node243, node286)
  Body_SetCS(node286, MAT_Vector3(1363.493393, 1421.369487, 333.6391), MAT_Vector3(-169.3334, 15.54257, -16.135728))
  Node_ParseIniFile(node286, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node286, 4)
  Node_EnterSimulation(node286)
  Game_LoadProgress_Advance(node0)
  node287 = Node_CreateNode("nod_trash", "bio_clunker03b_low_8")
  Node_AddSon(node243, node287)
  Body_SetCS(node287, MAT_Vector3(850.559753, 2031.416904, 278.09957), MAT_Vector3(-79.55049, -63.33038, 33.6186))
  Node_ParseIniFile(node287, "osd/bio/bio_clunker03b_low.osd")
  Body_SetFriendOrFoeID(node287, 4)
  Node_EnterSimulation(node287)
  Game_LoadProgress_Advance(node0)
  node288 = Node_CreateNode("nod_trash", "bio_clunker04a_low_8")
  Node_AddSon(node243, node288)
  Body_SetCS(node288, MAT_Vector3(1318.659011, 1638.801594, 230.929677), MAT_Vector3(-52.86132, -12.46436, 93.8954))
  Node_ParseIniFile(node288, "osd/bio/bio_clunker04a_low.osd")
  Body_SetFriendOrFoeID(node288, 4)
  Node_EnterSimulation(node288)
  Game_LoadProgress_Advance(node0)
  node289 = Node_CreateNode("nod_trash", "bio_clunker06_low_8")
  Node_AddSon(node243, node289)
  Body_SetCS(node289, MAT_Vector3(841.902464, 1849.814697, 319.961285), MAT_Vector3(137.7845, -83.33968, -124.187374))
  Node_ParseIniFile(node289, "osd/bio/bio_clunker06_low.osd")
  Body_SetFriendOrFoeID(node289, 4)
  Node_EnterSimulation(node289)
  Game_LoadProgress_Advance(node0)
  node290 = Node_CreateNode("nod_trash", "bio_clunker05_low_8")
  Node_AddSon(node243, node290)
  Body_SetCS(node290, MAT_Vector3(991.084806, 1689.959568, 302.8144), MAT_Vector3(34.297597, -45.799838, 150.428164))
  Node_ParseIniFile(node290, "osd/bio/bio_clunker05_low.osd")
  Body_SetFriendOrFoeID(node290, 4)
  Node_EnterSimulation(node290)
  Game_LoadProgress_Advance(node0)
  node291 = Node_CreateNode("nod_trash", "bio_clunker03a_low_9")
  Node_AddSon(node243, node291)
  Body_SetCS(node291, MAT_Vector3(915.1321, 1878.553, 291.4201), MAT_Vector3(142.8021, 7.825192, -70.2444))
  Node_ParseIniFile(node291, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node291, 4)
  Node_EnterSimulation(node291)
  Game_LoadProgress_Advance(node0)
  node292 = Node_CreateNode("nod_trash", "bio_clunker06_low_9")
  Node_AddSon(node243, node292)
  Body_SetCS(node292, MAT_Vector3(981.864892, 1818.935045, 300.736559), MAT_Vector3(38.9563, -24.187599, 159.280165))
  Node_ParseIniFile(node292, "osd/bio/bio_clunker06_low.osd")
  Body_SetFriendOrFoeID(node292, 4)
  Node_EnterSimulation(node292)
  Game_LoadProgress_Advance(node0)
  node293 = Node_CreateNode("nod_trash", "bio_clunker04a_low_9")
  Node_AddSon(node243, node293)
  Body_SetCS(node293, MAT_Vector3(1031.114487, 1781.170622, 301.04346), MAT_Vector3(-52.86132, -12.46436, 93.8954))
  Node_ParseIniFile(node293, "osd/bio/bio_clunker04a_low.osd")
  Body_SetFriendOrFoeID(node293, 4)
  Node_EnterSimulation(node293)
  Game_LoadProgress_Advance(node0)
  node294 = Node_CreateNode("nod_trash", "bio_clunker02b_low_9")
  Node_AddSon(node243, node294)
  Body_SetCS(node294, MAT_Vector3(993.494207, 1786.513912, 287.674833), MAT_Vector3(-139.254039, 11.515181, -29.604169))
  Node_ParseIniFile(node294, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node294, 4)
  Node_EnterSimulation(node294)
  Game_LoadProgress_Advance(node0)
  node295 = Node_CreateNode("nod_trash", "bio_clunker02b_low_10")
  Node_AddSon(node243, node295)
  Body_SetCS(node295, MAT_Vector3(701.538265, 2090.902125, 299.938725), MAT_Vector3(-72.420264, 49.287242, -53.260299))
  Node_ParseIniFile(node295, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node295, 4)
  Node_EnterSimulation(node295)
  Game_LoadProgress_Advance(node0)
  node296 = Node_CreateNode("nod_vessel", "bio_scout_d1_nohalo_1")
  Node_AddSon(node207, node296)
  Body_SetCS(node296, MAT_Vector3(908.664705, 1815.690084, 207.076391), MAT_Vector3(21.892337, -19.736963, -13.411667))
  Node_ParseIniFile(node296, "osd/bio/bio_scout_d1_nohalo.osd")
  Body_SetFriendOrFoeID(node296, 3)
  Body_SetNameKey(node296, -1)
  Body_SetCargoKey(node296, -1, 0)
  Body_SetCargoKey(node296, -1, 1)
  Body_SetCargoKey(node296, -1, 2)
  Node_EnterSimulation(node296)
  Game_LoadProgress_Advance(node0)
  node297 = Node_CreateNode("nod_waypoint", "nav_waypoint_01")
  Node_AddSon(node207, node297)
  Body_SetPosition(node297, MAT_Vector3(3265.785268, 1650.365479, 494.93657))
  WayPoint_SetRadius(node297, 350)
  Node_ParseIniFile(node297, "osd/nav/nav_waypoint_01.osd")
  Node_EnterSimulation(node297)
  Game_LoadProgress_Advance(node0)
  node298 = Node_CreateNode("nod_waypoint", "nav_waypoint_02")
  Node_AddSon(node207, node298)
  Body_SetPosition(node298, MAT_Vector3(1441.626285, 1528.765934, 274.678314))
  WayPoint_SetRadius(node298, 150)
  Node_ParseIniFile(node298, "osd/nav/nav_waypoint_02.osd")
  Node_EnterSimulation(node298)
  Game_LoadProgress_Advance(node0)
  node299 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack")
  Node_AddSon(node207, node299)
  Body_SetPosition(node299, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node299, 5)
  Node_ParseIniFile(node299, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node299)
  Game_LoadProgress_Advance(node0)
  node300 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node300)
  Camera_SetBackPlane(node300, 512)
  Node_EnterSimulation(node300)
  Game_LoadProgress_Advance(node0)
  node301 = Node_CreateNode("NOD_Scenario", "IngameSequences")
  Node_AddSon(node0, node301)
  Node_EnterSimulation(node301)
  Game_LoadProgress_Advance(node0)
  node302 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node301, node302)
  Node_EnterSimulation(node302)
  Game_LoadProgress_Advance(node0)
  node303 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node301, node303)
  Node_EnterSimulation(node303)
  Game_LoadProgress_Advance(node0)
  node304 = Node_CreateNode("NOD_Position", "D_LookFrom_1")
  Node_AddSon(node303, node304)
  Position_SetPosition(node304, MAT_Vector3(2962.147, 2453.668, 560.964))
  Position_SetRadius(node304, 5)
  Game_LoadProgress_Advance(node0)
  node305 = Node_CreateNode("NOD_Position", "D_LookFrom_2")
  Node_AddSon(node303, node305)
  Position_SetPosition(node305, MAT_Vector3(3022.567, 1881.051, 512.5595))
  Position_SetRadius(node305, 5)
  Game_LoadProgress_Advance(node0)
  node306 = Node_CreateNode("NOD_Position", "D_LookTo_1")
  Node_AddSon(node303, node306)
  Position_SetPosition(node306, MAT_Vector3(2557.088, 2021.448, 560.964))
  Position_SetRadius(node306, 5)
  Game_LoadProgress_Advance(node0)
  node307 = Node_CreateNode("NOD_Position", "D_LookTo_2")
  Node_AddSon(node303, node307)
  Position_SetPosition(node307, MAT_Vector3(3011.456, 1922.406, 462.1964))
  Position_SetRadius(node307, 5)
  Game_LoadProgress_Advance(node0)
  node308 = Node_CreateNode("NOD_Path", "C1_Intro_Path_1")
  Node_AddSon(node303, node308)
  Game_LoadProgress_Advance(node0)
  node309 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node308, node309)
  Position_SetPosition(node309, MAT_Vector3(3046.632, 2369.164, 529.2566))
  Position_SetRadius(node309, 5)
  Game_LoadProgress_Advance(node0)
  node310 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node308, node310)
  Position_SetPosition(node310, MAT_Vector3(2952.412, 2369.639, 529.994))
  Position_SetRadius(node310, 5)
  Game_LoadProgress_Advance(node0)
  node311 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node308, node311)
  Position_SetPosition(node311, MAT_Vector3(2952.612, 2294.126, 530.3134))
  Position_SetRadius(node311, 5)
  Game_LoadProgress_Advance(node0)
  node312 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node308, node312)
  Position_SetPosition(node312, MAT_Vector3(3050.364, 2030.628, 513.6913))
  Position_SetRadius(node312, 5)
  Game_LoadProgress_Advance(node0)
  node313 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node308, node313)
  Position_SetPosition(node313, MAT_Vector3(3058.439, 1893.281, 509.1611))
  Position_SetRadius(node313, 5)
  Game_LoadProgress_Advance(node0)
  node314 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node308, node314)
  Position_SetPosition(node314, MAT_Vector3(3141.013, 1733.465, 509.1611))
  Position_SetRadius(node314, 5)
  Game_LoadProgress_Advance(node0)
  node315 = Node_CreateNode("NOD_Path", "CamScout_Path")
  Node_AddSon(node303, node315)
  Game_LoadProgress_Advance(node0)
  node316 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node315, node316)
  Position_SetPosition(node316, MAT_Vector3(2948.886, 2462.881, 570))
  Position_SetRadius(node316, 5)
  Game_LoadProgress_Advance(node0)
  node317 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node315, node317)
  Position_SetPosition(node317, MAT_Vector3(2948.886, 2281.294, 540.2092))
  Position_SetRadius(node317, 5)
  Game_LoadProgress_Advance(node0)
  node318 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node315, node318)
  Position_SetPosition(node318, MAT_Vector3(2785.062, 2231.285, 439.3358))
  Position_SetRadius(node318, 5)
  Game_LoadProgress_Advance(node0)
  node319 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node315, node319)
  Position_SetPosition(node319, MAT_Vector3(2606.868, 2231.285, 439.3358))
  Position_SetRadius(node319, 5)
  Game_LoadProgress_Advance(node0)
  node320 = Node_CreateNode("NOD_Path", "CamPhob_Path")
  Node_AddSon(node303, node320)
  Game_LoadProgress_Advance(node0)
  node321 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node320, node321)
  Position_SetPosition(node321, MAT_Vector3(2849.459, 2372.548, 545.243))
  Position_SetRadius(node321, 5)
  Game_LoadProgress_Advance(node0)
  node322 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node320, node322)
  Position_SetPosition(node322, MAT_Vector3(2918.792, 2402.272, 555.7753))
  Position_SetRadius(node322, 5)
  Game_LoadProgress_Advance(node0)
  node323 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node320, node323)
  Position_SetPosition(node323, MAT_Vector3(2941.25, 2545.844, 570.9773))
  Position_SetRadius(node323, 5)
  Game_LoadProgress_Advance(node0)
  node324 = Node_CreateNode("NOD_Path", "C2_Intro_Path_1")
  Node_AddSon(node303, node324)
  Game_LoadProgress_Advance(node0)
  node325 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node324, node325)
  Position_SetPosition(node325, MAT_Vector3(3243.827, 1645.907, 474.1522))
  Position_SetRadius(node325, 5)
  Game_LoadProgress_Advance(node0)
  node326 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node324, node326)
  Position_SetPosition(node326, MAT_Vector3(3264.883, 1638.623, 475.746814))
  Position_SetRadius(node326, 5)
  Game_LoadProgress_Advance(node0)
  node327 = Node_CreateNode("NOD_Path", "C2_Intro_Path_2")
  Node_AddSon(node303, node327)
  Game_LoadProgress_Advance(node0)
  node328 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node327, node328)
  Position_SetPosition(node328, MAT_Vector3(3133.28, 1639.351, 505.3109))
  Position_SetRadius(node328, 5)
  Game_LoadProgress_Advance(node0)
  node329 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node327, node329)
  Position_SetPosition(node329, MAT_Vector3(3012.164, 1715.383, 487.136176))
  Position_SetRadius(node329, 5)
  Game_LoadProgress_Advance(node0)
  node330 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node327, node330)
  Position_SetPosition(node330, MAT_Vector3(2888.572324, 1715.383, 445.00328))
  Position_SetRadius(node330, 5)
  Game_LoadProgress_Advance(node0)
  node331 = Node_CreateNode("NOD_Position", "D_LookFrom_3")
  Node_AddSon(node303, node331)
  Position_SetPosition(node331, MAT_Vector3(3294.340787, 1613.590721, 486.182776))
  Position_SetRadius(node331, 5)
  Game_LoadProgress_Advance(node0)
  node332 = Node_CreateNode("NOD_Position", "D_LookTo_3")
  Node_AddSon(node303, node332)
  Position_SetPosition(node332, MAT_Vector3(2825.665591, 1714.857211, 476.14891))
  Position_SetRadius(node332, 5)
  Game_LoadProgress_Advance(node0)
  node333 = Node_CreateNode("NOD_Position", "D_LookFrom_4")
  Node_AddSon(node303, node333)
  Position_SetPosition(node333, MAT_Vector3(1033.48263, 1713.748378, 222.203551))
  Position_SetRadius(node333, 5)
  Game_LoadProgress_Advance(node0)
  node334 = Node_CreateNode("NOD_Position", "D_LookFrom_5")
  Node_AddSon(node303, node334)
  Position_SetPosition(node334, MAT_Vector3(1430.49139, 1406.535443, 335.003876))
  Position_SetRadius(node334, 5)
  Game_LoadProgress_Advance(node0)
  node335 = Node_CreateNode("NOD_Path", "C2_Intro_Path_3")
  Node_AddSon(node303, node335)
  Game_LoadProgress_Advance(node0)
  node336 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node335, node336)
  Position_SetPosition(node336, MAT_Vector3(2298.871435, 1598.90765, 450))
  Position_SetRadius(node336, 5)
  Game_LoadProgress_Advance(node0)
  node337 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node335, node337)
  Position_SetPosition(node337, MAT_Vector3(1932.892894, 1598.440766, 400))
  Position_SetRadius(node337, 5)
  Game_LoadProgress_Advance(node0)
  node338 = Node_CreateNode("NOD_Position", "D_LookFrom_6")
  Node_AddSon(node303, node338)
  Position_SetPosition(node338, MAT_Vector3(2060.67583, 1602.899179, 418.443979))
  Position_SetRadius(node338, 5)
  Game_LoadProgress_Advance(node0)
  node339 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node301, node339)
  Node_EnterSimulation(node339)
  Game_LoadProgress_Advance(node0)
  node340 = Node_CreateNode("NOD_Director", "Chapter1_Intro_V")
  Node_AddSon(node339, node340)
  Node_EnterSimulation(node340)
  Game_LoadProgress_Advance(node0)
  node341 = Node_CreateNode("NOD_Director", "Chapter1_IntroAddOn_V")
  Node_AddSon(node339, node341)
  Node_EnterSimulation(node341)
  Game_LoadProgress_Advance(node0)
  node342 = Node_CreateNode("NOD_Director", "Chapter1_Intro_A")
  Node_AddSon(node339, node342)
  Node_EnterSimulation(node342)
  Game_LoadProgress_Advance(node0)
  node343 = Node_CreateNode("NOD_Director", "Chapter2_Intro_V")
  Node_AddSon(node339, node343)
  Node_EnterSimulation(node343)
  Game_LoadProgress_Advance(node0)
  node344 = Node_CreateNode("NOD_Director", "Chapter2_Intro_A")
  Node_AddSon(node339, node344)
  Node_EnterSimulation(node344)
  Game_LoadProgress_Advance(node0)
  node345 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node301, node345)
  Node_EnterSimulation(node345)
  Game_LoadProgress_Advance(node0)
  node346 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_1")
  Node_AddSon(node345, node346)
  Body_SetFriendOrFoeID(node346, 0)
  Body_SetCS(node346, MAT_Vector3(2963.079, 2453.801, 561.7119), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node346, 10, 10, 10)
  Node_EnterSimulation(node346)
  Game_LoadProgress_Advance(node0)
  node347 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node301, node347)
  Node_EnterSimulation(node347)
  Game_LoadProgress_Advance(node0)
  node348 = Node_CreateNode("nod_vessel", "atl_scout1_cam")
  Node_AddSon(node347, node348)
  Body_SetCS(node348, MAT_Vector3(2948.475, 2498.123, 569.0736), MAT_Vector3(-179.7697, 0, 0))
  Node_ParseIniFile(node348, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node348, 0)
  Body_SetNameKey(node348, -1)
  Body_SetCargoKey(node348, -1, 0)
  Body_SetCargoKey(node348, -1, 1)
  Body_SetCargoKey(node348, -1, 2)
  Node_EnterSimulation(node348)
  Game_LoadProgress_Advance(node0)
  node349 = Node_CreateNode("nod_vessel", "Phobocaster_cam")
  Node_AddSon(node347, node349)
  Body_SetCS(node349, MAT_Vector3(2806.959, 2356.226, 544.4546), MAT_Vector3(-66.07618, 0, 0))
  Node_ParseIniFile(node349, "osd/gen/gen_phobocaster.osd")
  Body_SetFriendOrFoeID(node349, 0)
  Body_SetNameKey(node349, -1)
  Body_SetCargoKey(node349, -1, 0)
  Body_SetCargoKey(node349, -1, 1)
  Body_SetCargoKey(node349, -1, 2)
  Node_EnterSimulation(node349)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, F)
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
SetEnemyMatrixElement(0, 1, F)
SetEnemyMatrixElement(1, 1, F)
SetEnemyMatrixElement(2, 1, N)
SetEnemyMatrixElement(3, 1, E)
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
SetEnemyMatrixElement(2, 2, N)
SetEnemyMatrixElement(3, 2, E)
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
SetEnemyMatrixElement(0, 4, E)
SetEnemyMatrixElement(1, 4, N)
SetEnemyMatrixElement(2, 4, N)
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
    if not (o6820.Value ~= True) then
      if not (True ~= True) then
        if not (True ~= True) then
          return 1
        else
          return 0
        end
      end
    end
  end
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
  o3552.StartCalculate()
  o3558.StartCalculate()
  o4166.StartCalculate()
  o6758.StartCalculate()
  o6870.StartCalculate()
  o6878.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("RC1OK_092501_1216")
end, SetStateValue = function(L0)
  if not (o2.Value == L0) then
    o2["Value"] = L0
    o3552.ReCalculate()
    o3558.ReCalculate()
    o4166.ReCalculate()
    o6758.ReCalculate()
    o6870.ReCalculate()
    o6878.ReCalculate()
    if not (L0 ~= 1) then
      o2.ChangeTo1()
    end
  end
end }
o3 = { [nil] = {}, GetCalculated = function()
  if not (True ~= True) then
    if not (o6821.Value ~= True) then
      if not (True ~= True) then
        if not (True ~= True) then
          return 1
        else
          return 0
        end
      end
    end
  end
end, ReCalculate = function()
  o3.SetStateValue(o3.GetCalculated())
end, StartCalculate = function()
  o3["Value"] = o3.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4215.Node, o4215.Node, 8)
  SED_SetTaskTextKey(0, -1, -1)
  Game_MissionEnd(GetGameNode(), 2)
end, SetStateValue = function(L0)
  if not (o3.Value == L0) then
    o3["Value"] = L0
    if not (L0 ~= 1) then
      o3.ChangeTo1()
    end
  end
end }
o26 = { [nil] = {}, GetCalculated = function()
  if not (False == True) then
    if not (o6844.Value == True) then
      if not (False == True) then
        if not (False ~= True) then
          return 1
        else
          return 0
        end
      end
    end
  end
end, ReCalculate = function()
  o26.SetStateValue(o26.GetCalculated())
end, StartCalculate = function()
  o26["Value"] = o26.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("LoseCon1 is TRUE")
  SendRadioMessageTake(o4215.Node, o4215.Node, 1170)
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
S_o778 = { [nil] = {}, Start = function(L0)

end }
S_o812 = { [nil] = {}, Start = function(L0)

end }
S_o846 = { [nil] = {}, Start = function(L0)

end }
S_o880 = { [nil] = {}, Start = function(L0)

end }
S_o914 = { [nil] = {}, Start = function(L0)

end }
S_o948 = { [nil] = {}, Start = function(L0)

end }
S_o982 = { [nil] = {}, Start = function(L0)

end }
S_o1016 = { [nil] = {}, Start = function(L0)

end }
S_o1050 = { [nil] = {}, Start = function(L0)

end }
S_o1084 = { [nil] = {}, Start = function(L0)

end }
S_o1118 = { [nil] = {}, Start = function(L0)

end }
S_o1152 = { [nil] = {}, Start = function(L0)

end }
S_o1186 = { [nil] = {}, Start = function(L0)

end }
S_o1220 = { [nil] = {}, Start = function(L0)

end }
S_o1254 = { [nil] = {}, Start = function(L0)

end }
S_o1288 = { [nil] = {}, Start = function(L0)

end }
S_o1322 = { [nil] = {}, Start = function(L0)

end }
S_o1356 = { [nil] = {}, Start = function(L0)

end }
S_o1390 = { [nil] = {}, Start = function(L0)

end }
S_o1424 = { [nil] = {}, Start = function(L0)

end }
S_o1458 = { [nil] = {}, Start = function(L0)

end }
S_o1492 = { [nil] = {}, Start = function(L0)

end }
S_o1526 = { [nil] = {}, Start = function(L0)

end }
S_o1560 = { [nil] = {}, Start = function(L0)

end }
S_o1594 = { [nil] = {}, Start = function(L0)

end }
S_o1628 = { [nil] = {}, Start = function(L0)

end }
S_o1662 = { [nil] = {}, Start = function(L0)

end }
S_o1696 = { [nil] = {}, Start = function(L0)

end }
S_o1730 = { [nil] = {}, Start = function(L0)

end }
S_o1764 = { [nil] = {}, Start = function(L0)

end }
S_o1798 = { [nil] = {}, Start = function(L0)

end }
S_o1832 = { [nil] = {}, Start = function(L0)

end }
S_o1866 = { [nil] = {}, Start = function(L0)

end }
S_o1900 = { [nil] = {}, Start = function(L0)

end }
S_o1934 = { [nil] = {}, Start = function(L0)

end }
S_o1968 = { [nil] = {}, Start = function(L0)

end }
S_o2002 = { [nil] = {}, Start = function(L0)

end }
S_o2036 = { [nil] = {}, Start = function(L0)

end }
S_o2070 = { [nil] = {}, Start = function(L0)

end }
S_o2104 = { [nil] = {}, Start = function(L0)

end }
S_o2138 = { [nil] = {}, Start = function(L0)

end }
S_o2172 = { [nil] = {}, Start = function(L0)

end }
S_o2206 = { [nil] = {}, Start = function(L0)

end }
S_o2240 = { [nil] = {}, Start = function(L0)

end }
S_o2274 = { [nil] = {}, Start = function(L0)

end }
S_o2308 = { [nil] = {}, Start = function(L0)

end }
S_o2342 = { [nil] = {}, Start = function(L0)

end }
S_o2376 = { [nil] = {}, Start = function(L0)

end }
S_o2410 = { [nil] = {}, Start = function(L0)

end }
S_o2444 = { [nil] = {}, Start = function(L0)

end }
S_o2478 = { [nil] = {}, Start = function(L0)

end }
S_o2512 = { [nil] = {}, Start = function(L0)

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
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o2546, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o2546, "Code5")
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
S_o2584 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2584, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2584, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2584, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o2584, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o2584, "Code5")
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
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o2622, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o2622, "Code5")
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
S_o2660 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2660, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2660, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2660, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o2660, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o2660, "Code5")
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
S_o2698 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2698, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2698, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2698, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o2698, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o2698, "Code5")
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
S_o2736 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2736, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2736, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2736, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o2736, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o2736, "Code5")
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
S_o2774 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2774, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2774, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2774, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o2774, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o2774, "Code5")
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
S_o2812 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2812, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2812, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2812, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o2812, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o2812, "Code5")
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
S_o2850 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2850, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2850, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2850, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o2850, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o2850, "Code5")
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
S_o2888 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2888, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2888, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2888, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o2888, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o2888, "Code5")
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
S_o2926 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2926, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2926, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2926, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o2926, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o2926, "Code5")
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
S_o2964 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2964, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2964, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2964, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o2964, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o2964, "Code5")
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
S_o3002 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3002, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3002, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3002, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 180)
  CallFunction(o3002, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o3002, "Code5")
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
S_o3040 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3040, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3040, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3040, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o3040, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o3040, "Code5")
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
S_o3078 = { [nil] = {}, Start = function(L0)

end }
S_o3112 = { [nil] = {}, Start = function(L0)

end }
S_o3146 = { [nil] = {}, Start = function(L0)

end }
S_o3180 = { [nil] = {}, Start = function(L0)

end }
S_o3214 = { [nil] = {}, Start = function(L0)

end }
S_o3248 = { [nil] = {}, Start = function(L0)

end }
S_o3282 = { [nil] = {}, Start = function(L0)

end }
S_o3316 = { [nil] = {}, Start = function(L0)

end }
S_o3350 = { [nil] = {}, Start = function(L0)

end }
S_o3384 = { [nil] = {}, Start = function(L0)

end }
S_o3418 = { [nil] = {}, Start = function(L0)

end }
S_o3452 = { [nil] = {}, Start = function(L0)

end }
S_o3486 = { [nil] = {}, Start = function(L0)

end }
S_o3548 = { [nil] = {}, Start = function(L0)

end }
o3549 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/atl_DockAppr", "/Scenario_Dynamic/Navigation/atl_DockPath", "/Scenario_Dynamic/Navigation/atl_DockArea")
o3550 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/Elt_DockAppr", "/Scenario_Dynamic/Navigation/Elt_DockPath", "/Scenario_Dynamic/Navigation/Elt_DockArea")
S_o3551 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3551, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3551, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3551, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "elt", "", "", False, False, True)
  CallFunction(o3551, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3551, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3551, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o3556.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3552.Value ~= True) then
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
o3552 = { [nil] = {}, GetCalculated = function()
  if not (o2.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3552.SetStateValue(o3552.GetCalculated())
end, StartCalculate = function()
  o3552["Value"] = o3552.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3552.Value == L0) then
    o3552["Value"] = L0
    CallFunction(o3551, "ProcesseStateChange")
  end
end }
o3556 = { [nil] = {}, Start = function()
  o3556["Value"] = False
  o6759.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3556.Value == L0) then
    o3556["Value"] = L0
    o6759.ReCalculate()
  end
end }
S_o3557 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3557, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3557, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3557, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "elt", "", "", "", False, False, True)
  CallFunction(o3557, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3557, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3557, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o3562.SetStateValue(L1)
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
  if not (o2.Value ~= True) then
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
    CallFunction(o3557, "ProcesseStateChange")
  end
end }
o3562 = { [nil] = {}, Start = function()
  o3562["Value"] = False
  o4188.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3562.Value == L0) then
    o3562["Value"] = L0
    o4188.ReCalculate()
  end
end }
S_o3563 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3563, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3563, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3563, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TranPath_1", 1, 1 } }("Code4")
  else
    CallFunction(o3563, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TranPath_2", 0.5, 1 } }("Code5")
  else
    CallFunction(o3563, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 25 } }("Code6")
  else
    CallFunction(o3563, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TranPath_3", 1, 1 } }("Code7")
  else
    CallFunction(o3563, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o3563, "Code3")
  else
    CallFunction(o3563, "Code8")
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
S_o3614 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o3549)
  CallFunction(o3614, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3614, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o3549, "Code3")
  else
    CallFunction(o3614, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AvenPath_1", 0.5, 1 } }("Code4")
  else
    CallFunction(o3614, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o3550, nil, 35, "Code5")
  else
    CallFunction(o3614, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AvenPath_2", 0.5, 1 } }("Code6")
  else
    CallFunction(o3614, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o3549, nil, 35, "Code7")
  else
    CallFunction(o3614, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o3614, "Code3")
  else
    CallFunction(o3614, "Code8")
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
o3665 = FormationLib.CreateFormation("Triangle", "", "", "", 25, 25)
S_o3667 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3667, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3667, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3667, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3667, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunPatrol(L0, 0, { {}, "/Scenario_Dynamic/Navigation/PolA_Area", "/Scenario_Dynamic/Navigation/PolA_Area" }, 600, o3665, "/Scenario_Dynamic/Navigation/OverAll_Area", 350, "E", "", "", "", 1, 0.5, "Code5")
  else
    CallFunction(o3667, "Code5")
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
S_o3715 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3715, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3715, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3715, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3715, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunPatrol(L0, 0, { {}, "/Scenario_Dynamic/Navigation/PolA_Area", "/Scenario_Dynamic/Navigation/PolA_Area" }, 600, o3665, "/Scenario_Dynamic/Navigation/OverAll_Area", 350, "E", "", "", "", 1, 0.5, "Code5")
  else
    CallFunction(o3715, "Code5")
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
o3763 = FormationLib.CreateFormation("XForm", "", "", "", 20, 20)
S_o3765 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3765, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3765, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3765, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3765, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o3764, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolB_Path", 0.75, 1 } }, o3763, "/Scenario_Dynamic/Navigation/OverAll_Area", 350, "E", "", "", "", 1, 0.5, True, "Code5")
  else
    CallFunction(o3765, "Code5")
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
S_o3813 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3813, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3813, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3813, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3813, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o3764, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolB_Path", 0.75, 1 } }, o3763, "/Scenario_Dynamic/Navigation/OverAll_Area", 350, "E", "", "", "", 1, 0.5, True, "Code5")
  else
    CallFunction(o3813, "Code5")
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
S_o3861 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3861, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3861, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3861, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3861, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o3764, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolB_Path", 0.75, 1 } }, o3763, "/Scenario_Dynamic/Navigation/OverAll_Area", 350, "E", "", "", "", 1, 0.5, True, "Code5")
  else
    CallFunction(o3861, "Code5")
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
S_o3909 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3909, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3909, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3909, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3909, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o3764, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolB_Path", 0.75, 1 } }, o3763, "/Scenario_Dynamic/Navigation/OverAll_Area", 350, "E", "", "", "", 1, 0.5, True, "Code5")
  else
    CallFunction(o3909, "Code5")
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
S_o3957 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3957, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3957, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3957, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3957, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o3764, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolB_Path", 0.75, 1 } }, o3763, "/Scenario_Dynamic/Navigation/OverAll_Area", 350, "E", "", "", "", 1, 0.5, True, "Code5")
  else
    CallFunction(o3957, "Code5")
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
S_o4005 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4005, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4005, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4005, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigArea1", "/Scenario_Dynamic/Navigation/DigArea2" }, 35, "Code4")
  else
    CallFunction(o4005, "Code4")
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
S_o4044 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4044, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4044, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4044, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigArea1", "/Scenario_Dynamic/Navigation/DigArea2" }, 35, "Code4")
  else
    CallFunction(o4044, "Code4")
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
S_o4083 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4083, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4083, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4083, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigArea2", "/Scenario_Dynamic/Navigation/DigArea1" }, 35, "Code4")
  else
    CallFunction(o4083, "Code4")
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
S_o4122 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4122, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4122, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4122, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigArea2", "/Scenario_Dynamic/Navigation/DigArea1" }, 35, "Code4")
  else
    CallFunction(o4122, "Code4")
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
S_o4161 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4161, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4161, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4161, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o4161, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4161, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Bus_Path1", 0.5, 1 } }("Code6")
  else
    CallFunction(o4161, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Bus_Path2", 1, 1 } }("Code7")
  else
    CallFunction(o4161, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 60 } }("Code8")
  else
    CallFunction(o4161, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Sink", "/Scenario_Dynamic/Navigation/SinkPos1", 0.25, 1 } }("Code9")
  else
    CallFunction(o4161, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code10")
  else
    CallFunction(o4161, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4161, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_Destroyed = function(L0, L1)
  o4171.SetStateValue(L1)
end, SetStateValue_KineticShield75 = function(L0, L1)
  o4176.SetStateValue(L1)
end, SetStateValue_KineticShield50 = function(L0, L1)
  o4177.SetStateValue(L1)
end, SetStateValue_KineticShield25 = function(L0, L1)
  o4178.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4166.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4167.Value ~= True) then
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
o4166 = { [nil] = {}, GetCalculated = function()
  if not (o2.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4166.SetStateValue(o4166.GetCalculated())
end, StartCalculate = function()
  o4166["Value"] = o4166.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4166.Value == L0) then
    DelayedFunction(2, o4166, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4166.Value == L0) then
    o4166["Value"] = L0
    CallFunction(o4161, "ProcesseStateChange")
  end
end }
o4167 = { [nil] = {}, GetCalculated = function()
  if not (o4226.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4167.SetStateValue(o4167.GetCalculated())
end, StartCalculate = function()
  o4167["Value"] = o4167.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4167.Value == L0) then
    DelayedFunction(2, o4167, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4167.Value == L0) then
    o4167["Value"] = L0
    CallFunction(o4161, "ProcesseStateChange")
  end
end }
o4171 = { [nil] = {}, Start = function()
  o4171["Value"] = False
  o4211.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4171.Value == L0) then
    o4171["Value"] = L0
    o4211.ReCalculate()
  end
end }
o4176 = { [nil] = {}, Start = function()
  o4176["Value"] = False
  o4223.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4176.Value == L0) then
    o4176["Value"] = L0
    o4223.ReCalculate()
  end
end }
o4177 = { [nil] = {}, Start = function()
  o4177["Value"] = False
  o4224.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4177.Value == L0) then
    o4177["Value"] = L0
    o4224.ReCalculate()
  end
end }
o4178 = { [nil] = {}, Start = function()
  o4178["Value"] = False
  o4225.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4178.Value == L0) then
    o4178["Value"] = L0
    o4225.ReCalculate()
  end
end }
o4188 = { [nil] = {}, GetCalculated = function()
  if not (o3562.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4188.SetStateValue(o4188.GetCalculated())
end, StartCalculate = function()
  o4188["Value"] = o4188.GetCalculated()
  o6821.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4188.Value == L0) then
    o4188["Value"] = L0
    o6821.ReCalculate()
  end
end }
o4211 = { [nil] = {}, GetCalculated = function()
  if not (o4171.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4211.SetStateValue(o4211.GetCalculated())
end, StartCalculate = function()
  o4211["Value"] = o4211.GetCalculated()
  o6844.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4211.Value == L0) then
    o4211["Value"] = L0
    o6844.ReCalculate()
  end
end }
S_o4215 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_vendetta1", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_shell", 2000)
  Body_AddItem(L0.Node, "torpedo_stanley", 4)
  CallFunction(o4215, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_FriendlyFire1 = function(L0, L1)
  o4216.SetStateValue(L1)
end, SetStateValue_FriendlyFire2 = function(L0, L1)
  o4217.SetStateValue(L1)
end, SetStateValue_FriendlyFire3 = function(L0, L1)
  o4218.SetStateValue(L1)
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
o4216 = { [nil] = {}, Start = function()
  o4216["Value"] = False
  o4220.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4216.Value == L0) then
    o4216["Value"] = L0
    o4220.ReCalculate()
  end
end }
o4217 = { [nil] = {}, Start = function()
  o4217["Value"] = False
  o4221.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4217.Value == L0) then
    o4217["Value"] = L0
    o4221.ReCalculate()
  end
end }
o4218 = { [nil] = {}, Start = function()
  o4218["Value"] = False
  o4222.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4218.Value == L0) then
    o4218["Value"] = L0
    o4222.ReCalculate()
  end
end }
o4220 = { [nil] = {}, GetCalculated = function()
  if not (o4216.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4220.SetStateValue(o4220.GetCalculated())
end, StartCalculate = function()
  o4220["Value"] = o4220.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4215.Node, o4215.Node, 11)
end, SetStateValue = function(L0)
  if not (o4220.Value == L0) then
    o4220["Value"] = L0
    if not (L0 ~= 1) then
      o4220.ChangeTo1()
    end
  end
end }
o4221 = { [nil] = {}, GetCalculated = function()
  if not (o4217.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4221.SetStateValue(o4221.GetCalculated())
end, StartCalculate = function()
  o4221["Value"] = o4221.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4215.Node, o4215.Node, 12)
end, SetStateValue = function(L0)
  if not (o4221.Value == L0) then
    o4221["Value"] = L0
    if not (L0 ~= 1) then
      o4221.ChangeTo1()
    end
  end
end }
o4222 = { [nil] = {}, GetCalculated = function()
  if not (o4218.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4222.SetStateValue(o4222.GetCalculated())
end, StartCalculate = function()
  o4222["Value"] = o4222.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4215.Node, o4215.Node, 13)
  SetEnemyMatrixElement(1, 0, E)
  SetEnemyMatrixElement(2, 0, E)
end, SetStateValue = function(L0)
  if not (o4222.Value == L0) then
    o4222["Value"] = L0
    if not (L0 ~= 1) then
      o4222.ChangeTo1()
    end
  end
end }
o4223 = { [nil] = {}, GetCalculated = function()
  if not (o4176.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4223.SetStateValue(o4223.GetCalculated())
end, StartCalculate = function()
  o4223["Value"] = o4223.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4161.Node, o4215.Node, 4)
end, SetStateValue = function(L0)
  if not (o4223.Value == L0) then
    o4223["Value"] = L0
    if not (L0 ~= 1) then
      o4223.ChangeTo1()
    end
  end
end }
o4224 = { [nil] = {}, GetCalculated = function()
  if not (o4177.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4224.SetStateValue(o4224.GetCalculated())
end, StartCalculate = function()
  o4224["Value"] = o4224.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4161.Node, o4215.Node, 6)
end, SetStateValue = function(L0)
  if not (o4224.Value == L0) then
    o4224["Value"] = L0
    if not (L0 ~= 1) then
      o4224.ChangeTo1()
    end
  end
end }
o4225 = { [nil] = {}, GetCalculated = function()
  if not (o4178.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4225.SetStateValue(o4225.GetCalculated())
end, StartCalculate = function()
  o4225["Value"] = o4225.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4161.Node, o4215.Node, 7)
end, SetStateValue = function(L0)
  if not (o4225.Value == L0) then
    o4225["Value"] = L0
    if not (L0 ~= 1) then
      o4225.ChangeTo1()
    end
  end
end }
o4226 = { [nil] = {}, Start = function()
  o4226["Value"] = False
  o4167.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4226.Value == L0) then
    o4226["Value"] = L0
    o4167.ReCalculate()
  end
end }
S_o4256 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4256, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4256, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4256, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o4259.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4259 = { [nil] = {}, Start = function()
  o4259["Value"] = False
  o4264.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4259.Value == L0) then
    o4259["Value"] = L0
    o4264.ReCalculate()
  end
end }
o4264 = { [nil] = {}, GetCalculated = function()
  if not (o4259.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4264.SetStateValue(o4264.GetCalculated())
end, StartCalculate = function()
  o4264["Value"] = o4264.GetCalculated()
  o6820.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4264.Value == L0) then
    o4264["Value"] = L0
    o6820.ReCalculate()
  end
end }
S_o4292 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4292, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4292, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4292, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o4295.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4295 = { [nil] = {}, Start = function()
  o4295["Value"] = False
  o4300.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4295.Value == L0) then
    o4295["Value"] = L0
    o4300.ReCalculate()
  end
end }
o4300 = { [nil] = {}, GetCalculated = function()
  if not (o4295.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4300.SetStateValue(o4300.GetCalculated())
end, StartCalculate = function()
  o4300["Value"] = o4300.GetCalculated()
  o6820.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4300.Value == L0) then
    o4300["Value"] = L0
    o6820.ReCalculate()
  end
end }
S_o4328 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4328, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4328, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4328, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o4331.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4331 = { [nil] = {}, Start = function()
  o4331["Value"] = False
  o4336.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4331.Value == L0) then
    o4331["Value"] = L0
    o4336.ReCalculate()
  end
end }
o4336 = { [nil] = {}, GetCalculated = function()
  if not (o4331.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4336.SetStateValue(o4336.GetCalculated())
end, StartCalculate = function()
  o4336["Value"] = o4336.GetCalculated()
  o6820.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4336.Value == L0) then
    o4336["Value"] = L0
    o6820.ReCalculate()
  end
end }
S_o4364 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4364, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4364, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4364, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o4367.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4367 = { [nil] = {}, Start = function()
  o4367["Value"] = False
  o4372.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4367.Value == L0) then
    o4367["Value"] = L0
    o4372.ReCalculate()
  end
end }
o4372 = { [nil] = {}, GetCalculated = function()
  if not (o4367.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4372.SetStateValue(o4372.GetCalculated())
end, StartCalculate = function()
  o4372["Value"] = o4372.GetCalculated()
  o6820.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4372.Value == L0) then
    o4372["Value"] = L0
    o6820.ReCalculate()
  end
end }
S_o4400 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4400, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4400, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4400, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o4403.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4403 = { [nil] = {}, Start = function()
  o4403["Value"] = False
  o4408.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4403.Value == L0) then
    o4403["Value"] = L0
    o4408.ReCalculate()
  end
end }
o4408 = { [nil] = {}, GetCalculated = function()
  if not (o4403.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4408.SetStateValue(o4408.GetCalculated())
end, StartCalculate = function()
  o4408["Value"] = o4408.GetCalculated()
  o6820.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4408.Value == L0) then
    o4408["Value"] = L0
    o6820.ReCalculate()
  end
end }
S_o4436 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4436, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4436, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4436, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o4439.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4439 = { [nil] = {}, Start = function()
  o4439["Value"] = False
  o4444.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4439.Value == L0) then
    o4439["Value"] = L0
    o4444.ReCalculate()
  end
end }
o4444 = { [nil] = {}, GetCalculated = function()
  if not (o4439.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4444.SetStateValue(o4444.GetCalculated())
end, StartCalculate = function()
  o4444["Value"] = o4444.GetCalculated()
  o6820.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4444.Value == L0) then
    o4444["Value"] = L0
    o6820.ReCalculate()
  end
end }
S_o4472 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4472, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4472, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4472, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o4475.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4475 = { [nil] = {}, Start = function()
  o4475["Value"] = False
  o4480.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4475.Value == L0) then
    o4475["Value"] = L0
    o4480.ReCalculate()
  end
end }
o4480 = { [nil] = {}, GetCalculated = function()
  if not (o4475.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4480.SetStateValue(o4480.GetCalculated())
end, StartCalculate = function()
  o4480["Value"] = o4480.GetCalculated()
  o6820.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4480.Value == L0) then
    o4480["Value"] = L0
    o6820.ReCalculate()
  end
end }
S_o4508 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4508, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4508, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4508, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o4511.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4511 = { [nil] = {}, Start = function()
  o4511["Value"] = False
  o4516.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4511.Value == L0) then
    o4511["Value"] = L0
    o4516.ReCalculate()
  end
end }
o4516 = { [nil] = {}, GetCalculated = function()
  if not (o4511.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4516.SetStateValue(o4516.GetCalculated())
end, StartCalculate = function()
  o4516["Value"] = o4516.GetCalculated()
  o6820.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4516.Value == L0) then
    o4516["Value"] = L0
    o6820.ReCalculate()
  end
end }
S_o4544 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4544, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4544, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4544, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o4547.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4547 = { [nil] = {}, Start = function()
  o4547["Value"] = False
  o4552.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4547.Value == L0) then
    o4547["Value"] = L0
    o4552.ReCalculate()
  end
end }
o4552 = { [nil] = {}, GetCalculated = function()
  if not (o4547.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4552.SetStateValue(o4552.GetCalculated())
end, StartCalculate = function()
  o4552["Value"] = o4552.GetCalculated()
  o6820.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4552.Value == L0) then
    o4552["Value"] = L0
    o6820.ReCalculate()
  end
end }
S_o4580 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4580, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4580, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4580, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o4583.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4583 = { [nil] = {}, Start = function()
  o4583["Value"] = False
  o4588.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4583.Value == L0) then
    o4583["Value"] = L0
    o4588.ReCalculate()
  end
end }
o4588 = { [nil] = {}, GetCalculated = function()
  if not (o4583.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4588.SetStateValue(o4588.GetCalculated())
end, StartCalculate = function()
  o4588["Value"] = o4588.GetCalculated()
  o6820.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4588.Value == L0) then
    o4588["Value"] = L0
    o6820.ReCalculate()
  end
end }
S_o4616 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4616, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4616, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4616, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o4619.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4619 = { [nil] = {}, Start = function()
  o4619["Value"] = False
  o4624.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4619.Value == L0) then
    o4619["Value"] = L0
    o4624.ReCalculate()
  end
end }
o4624 = { [nil] = {}, GetCalculated = function()
  if not (o4619.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4624.SetStateValue(o4624.GetCalculated())
end, StartCalculate = function()
  o4624["Value"] = o4624.GetCalculated()
  o6820.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4624.Value == L0) then
    o4624["Value"] = L0
    o6820.ReCalculate()
  end
end }
S_o4652 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4652, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4652, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4652, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o4655.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4655 = { [nil] = {}, Start = function()
  o4655["Value"] = False
  o4660.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4655.Value == L0) then
    o4655["Value"] = L0
    o4660.ReCalculate()
  end
end }
o4660 = { [nil] = {}, GetCalculated = function()
  if not (o4655.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4660.SetStateValue(o4660.GetCalculated())
end, StartCalculate = function()
  o4660["Value"] = o4660.GetCalculated()
  o6820.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4660.Value == L0) then
    o4660["Value"] = L0
    o6820.ReCalculate()
  end
end }
S_o4688 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4688, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4688, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4688, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o4691.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4691 = { [nil] = {}, Start = function()
  o4691["Value"] = False
  o4696.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4691.Value == L0) then
    o4691["Value"] = L0
    o4696.ReCalculate()
  end
end }
o4696 = { [nil] = {}, GetCalculated = function()
  if not (o4691.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4696.SetStateValue(o4696.GetCalculated())
end, StartCalculate = function()
  o4696["Value"] = o4696.GetCalculated()
  o6820.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4696.Value == L0) then
    o4696["Value"] = L0
    o6820.ReCalculate()
  end
end }
S_o4724 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4724, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4724, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4724, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o4727.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4727 = { [nil] = {}, Start = function()
  o4727["Value"] = False
  o4732.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4727.Value == L0) then
    o4727["Value"] = L0
    o4732.ReCalculate()
  end
end }
o4732 = { [nil] = {}, GetCalculated = function()
  if not (o4727.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4732.SetStateValue(o4732.GetCalculated())
end, StartCalculate = function()
  o4732["Value"] = o4732.GetCalculated()
  o6820.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4732.Value == L0) then
    o4732["Value"] = L0
    o6820.ReCalculate()
  end
end }
S_o4760 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4760, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4760, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4760, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o4763.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4763 = { [nil] = {}, Start = function()
  o4763["Value"] = False
  o4768.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4763.Value == L0) then
    o4763["Value"] = L0
    o4768.ReCalculate()
  end
end }
o4768 = { [nil] = {}, GetCalculated = function()
  if not (o4763.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4768.SetStateValue(o4768.GetCalculated())
end, StartCalculate = function()
  o4768["Value"] = o4768.GetCalculated()
  o6820.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4768.Value == L0) then
    o4768["Value"] = L0
    o6820.ReCalculate()
  end
end }
S_o4796 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4796, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4796, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4796, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o4799.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4799 = { [nil] = {}, Start = function()
  o4799["Value"] = False
  o4804.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4799.Value == L0) then
    o4799["Value"] = L0
    o4804.ReCalculate()
  end
end }
o4804 = { [nil] = {}, GetCalculated = function()
  if not (o4799.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4804.SetStateValue(o4804.GetCalculated())
end, StartCalculate = function()
  o4804["Value"] = o4804.GetCalculated()
  o6820.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4804.Value == L0) then
    o4804["Value"] = L0
    o6820.ReCalculate()
  end
end }
S_o4832 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4832, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4832, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4832, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4832, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4834.Value ~= True) then
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
o4834 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4834.SetStateValue(o4834.GetCalculated())
end, StartCalculate = function()
  o4834["Value"] = o4834.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4834.Value == L0) then
    o4834["Value"] = L0
    CallFunction(o4832, "ProcesseStateChange")
  end
end }
S_o4869 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4869, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4869, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4869, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4869, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4871.Value ~= True) then
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
o4871 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4871.SetStateValue(o4871.GetCalculated())
end, StartCalculate = function()
  o4871["Value"] = o4871.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4871.Value == L0) then
    o4871["Value"] = L0
    CallFunction(o4869, "ProcesseStateChange")
  end
end }
S_o4906 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4906, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4906, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4906, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4906, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4908.Value ~= True) then
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
o4908 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4908.SetStateValue(o4908.GetCalculated())
end, StartCalculate = function()
  o4908["Value"] = o4908.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4908.Value == L0) then
    o4908["Value"] = L0
    CallFunction(o4906, "ProcesseStateChange")
  end
end }
S_o4943 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4943, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4943, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4943, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4943, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4945.Value ~= True) then
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
o4945 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4945.SetStateValue(o4945.GetCalculated())
end, StartCalculate = function()
  o4945["Value"] = o4945.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4945.Value == L0) then
    o4945["Value"] = L0
    CallFunction(o4943, "ProcesseStateChange")
  end
end }
S_o4980 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4980, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4980, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4980, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4980, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4982.Value ~= True) then
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
o4982 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4982.SetStateValue(o4982.GetCalculated())
end, StartCalculate = function()
  o4982["Value"] = o4982.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4982.Value == L0) then
    o4982["Value"] = L0
    CallFunction(o4980, "ProcesseStateChange")
  end
end }
S_o5017 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5017, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5017, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5017, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5017, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5019.Value ~= True) then
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
o5019 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5019.SetStateValue(o5019.GetCalculated())
end, StartCalculate = function()
  o5019["Value"] = o5019.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5019.Value == L0) then
    o5019["Value"] = L0
    CallFunction(o5017, "ProcesseStateChange")
  end
end }
S_o5054 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5054, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5054, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5054, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5054, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5056.Value ~= True) then
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
o5056 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5056.SetStateValue(o5056.GetCalculated())
end, StartCalculate = function()
  o5056["Value"] = o5056.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5056.Value == L0) then
    o5056["Value"] = L0
    CallFunction(o5054, "ProcesseStateChange")
  end
end }
S_o5091 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5091, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5091, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5091, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5091, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5093.Value ~= True) then
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
o5093 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5093.SetStateValue(o5093.GetCalculated())
end, StartCalculate = function()
  o5093["Value"] = o5093.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5093.Value == L0) then
    o5093["Value"] = L0
    CallFunction(o5091, "ProcesseStateChange")
  end
end }
S_o5128 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5128, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5128, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5128, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5128, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5130.Value ~= True) then
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
o5130 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5130.SetStateValue(o5130.GetCalculated())
end, StartCalculate = function()
  o5130["Value"] = o5130.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5130.Value == L0) then
    o5130["Value"] = L0
    CallFunction(o5128, "ProcesseStateChange")
  end
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
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5165, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5167.Value ~= True) then
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
o5167 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5167.SetStateValue(o5167.GetCalculated())
end, StartCalculate = function()
  o5167["Value"] = o5167.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5167.Value == L0) then
    o5167["Value"] = L0
    CallFunction(o5165, "ProcesseStateChange")
  end
end }
S_o5202 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5202, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5202, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5202, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5202, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5204.Value ~= True) then
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
o5204 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5204.SetStateValue(o5204.GetCalculated())
end, StartCalculate = function()
  o5204["Value"] = o5204.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5204.Value == L0) then
    o5204["Value"] = L0
    CallFunction(o5202, "ProcesseStateChange")
  end
end }
S_o5239 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5239, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5239, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5239, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5239, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5241.Value ~= True) then
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
o5241 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5241.SetStateValue(o5241.GetCalculated())
end, StartCalculate = function()
  o5241["Value"] = o5241.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5241.Value == L0) then
    o5241["Value"] = L0
    CallFunction(o5239, "ProcesseStateChange")
  end
end }
S_o5276 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5276, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5276, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5276, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5276, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5278.Value ~= True) then
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
o5278 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5278.SetStateValue(o5278.GetCalculated())
end, StartCalculate = function()
  o5278["Value"] = o5278.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5278.Value == L0) then
    o5278["Value"] = L0
    CallFunction(o5276, "ProcesseStateChange")
  end
end }
S_o5313 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5313, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5313, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5313, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5313, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5315.Value ~= True) then
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
o5315 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5315.SetStateValue(o5315.GetCalculated())
end, StartCalculate = function()
  o5315["Value"] = o5315.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5315.Value == L0) then
    o5315["Value"] = L0
    CallFunction(o5313, "ProcesseStateChange")
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
  else
    CallFunction(o5350, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5352.Value ~= True) then
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
o5352 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5352.SetStateValue(o5352.GetCalculated())
end, StartCalculate = function()
  o5352["Value"] = o5352.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5352.Value == L0) then
    o5352["Value"] = L0
    CallFunction(o5350, "ProcesseStateChange")
  end
end }
S_o5387 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5387, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5387, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5387, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5387, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5389.Value ~= True) then
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
o5389 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5389.SetStateValue(o5389.GetCalculated())
end, StartCalculate = function()
  o5389["Value"] = o5389.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5389.Value == L0) then
    o5389["Value"] = L0
    CallFunction(o5387, "ProcesseStateChange")
  end
end }
S_o5424 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5424, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5424, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5424, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5424, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5426.Value ~= True) then
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
o5426 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5426.SetStateValue(o5426.GetCalculated())
end, StartCalculate = function()
  o5426["Value"] = o5426.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5426.Value == L0) then
    o5426["Value"] = L0
    CallFunction(o5424, "ProcesseStateChange")
  end
end }
S_o5461 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5461, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5461, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5461, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5461, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5463.Value ~= True) then
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
o5463 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5463.SetStateValue(o5463.GetCalculated())
end, StartCalculate = function()
  o5463["Value"] = o5463.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5463.Value == L0) then
    o5463["Value"] = L0
    CallFunction(o5461, "ProcesseStateChange")
  end
end }
S_o5498 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5498, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5498, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5498, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5498, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5500.Value ~= True) then
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
o5500 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5500.SetStateValue(o5500.GetCalculated())
end, StartCalculate = function()
  o5500["Value"] = o5500.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5500.Value == L0) then
    o5500["Value"] = L0
    CallFunction(o5498, "ProcesseStateChange")
  end
end }
S_o5535 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5535, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5535, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5535, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5535, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5537.Value ~= True) then
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
o5537 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5537.SetStateValue(o5537.GetCalculated())
end, StartCalculate = function()
  o5537["Value"] = o5537.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5537.Value == L0) then
    o5537["Value"] = L0
    CallFunction(o5535, "ProcesseStateChange")
  end
end }
S_o5572 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5572, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5572, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5572, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5572, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5574.Value ~= True) then
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
o5574 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5574.SetStateValue(o5574.GetCalculated())
end, StartCalculate = function()
  o5574["Value"] = o5574.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5574.Value == L0) then
    o5574["Value"] = L0
    CallFunction(o5572, "ProcesseStateChange")
  end
end }
S_o5609 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5609, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5609, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5609, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5609, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5611.Value ~= True) then
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
o5611 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5611.SetStateValue(o5611.GetCalculated())
end, StartCalculate = function()
  o5611["Value"] = o5611.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5611.Value == L0) then
    o5611["Value"] = L0
    CallFunction(o5609, "ProcesseStateChange")
  end
end }
S_o5646 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5646, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5646, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5646, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5646, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5648.Value ~= True) then
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
o5648 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5648.SetStateValue(o5648.GetCalculated())
end, StartCalculate = function()
  o5648["Value"] = o5648.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5648.Value == L0) then
    o5648["Value"] = L0
    CallFunction(o5646, "ProcesseStateChange")
  end
end }
S_o5683 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5683, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5683, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5683, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5683, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5685.Value ~= True) then
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
o5685 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5685.SetStateValue(o5685.GetCalculated())
end, StartCalculate = function()
  o5685["Value"] = o5685.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5685.Value == L0) then
    o5685["Value"] = L0
    CallFunction(o5683, "ProcesseStateChange")
  end
end }
S_o5720 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5720, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5720, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5720, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5720, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5722.Value ~= True) then
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
o5722 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5722.SetStateValue(o5722.GetCalculated())
end, StartCalculate = function()
  o5722["Value"] = o5722.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5722.Value == L0) then
    o5722["Value"] = L0
    CallFunction(o5720, "ProcesseStateChange")
  end
end }
S_o5757 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5757, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5757, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5757, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5757, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5759.Value ~= True) then
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
o5759 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5759.SetStateValue(o5759.GetCalculated())
end, StartCalculate = function()
  o5759["Value"] = o5759.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5759.Value == L0) then
    o5759["Value"] = L0
    CallFunction(o5757, "ProcesseStateChange")
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
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5796.Value ~= True) then
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
o5796 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5796.SetStateValue(o5796.GetCalculated())
end, StartCalculate = function()
  o5796["Value"] = o5796.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5796.Value == L0) then
    o5796["Value"] = L0
    CallFunction(o5794, "ProcesseStateChange")
  end
end }
S_o5831 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5831, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5831, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5831, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5831, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5833.Value ~= True) then
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
o5833 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5833.SetStateValue(o5833.GetCalculated())
end, StartCalculate = function()
  o5833["Value"] = o5833.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5833.Value == L0) then
    o5833["Value"] = L0
    CallFunction(o5831, "ProcesseStateChange")
  end
end }
S_o5868 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5868, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5868, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5868, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5868, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5870.Value ~= True) then
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
o5870 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5870.SetStateValue(o5870.GetCalculated())
end, StartCalculate = function()
  o5870["Value"] = o5870.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5870.Value == L0) then
    o5870["Value"] = L0
    CallFunction(o5868, "ProcesseStateChange")
  end
end }
S_o5905 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5905, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5905, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5905, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5905, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5907.Value ~= True) then
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
o5907 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5907.SetStateValue(o5907.GetCalculated())
end, StartCalculate = function()
  o5907["Value"] = o5907.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5907.Value == L0) then
    o5907["Value"] = L0
    CallFunction(o5905, "ProcesseStateChange")
  end
end }
S_o5942 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5942, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5942, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5942, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5942, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5944.Value ~= True) then
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
o5944 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5944.SetStateValue(o5944.GetCalculated())
end, StartCalculate = function()
  o5944["Value"] = o5944.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5944.Value == L0) then
    o5944["Value"] = L0
    CallFunction(o5942, "ProcesseStateChange")
  end
end }
S_o5979 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5979, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5979, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5979, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5979, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5981.Value ~= True) then
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
o5981 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5981.SetStateValue(o5981.GetCalculated())
end, StartCalculate = function()
  o5981["Value"] = o5981.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5981.Value == L0) then
    o5981["Value"] = L0
    CallFunction(o5979, "ProcesseStateChange")
  end
end }
S_o6016 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6016, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6016, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6016, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6016, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6018.Value ~= True) then
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
o6018 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6018.SetStateValue(o6018.GetCalculated())
end, StartCalculate = function()
  o6018["Value"] = o6018.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6018.Value == L0) then
    o6018["Value"] = L0
    CallFunction(o6016, "ProcesseStateChange")
  end
end }
S_o6053 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6053, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6053, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6053, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6053, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6055.Value ~= True) then
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
o6055 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6055.SetStateValue(o6055.GetCalculated())
end, StartCalculate = function()
  o6055["Value"] = o6055.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6055.Value == L0) then
    o6055["Value"] = L0
    CallFunction(o6053, "ProcesseStateChange")
  end
end }
S_o6090 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6090, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6090, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6090, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6090, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6092.Value ~= True) then
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
o6092 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6092.SetStateValue(o6092.GetCalculated())
end, StartCalculate = function()
  o6092["Value"] = o6092.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6092.Value == L0) then
    o6092["Value"] = L0
    CallFunction(o6090, "ProcesseStateChange")
  end
end }
S_o6127 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6127, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6127, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6127, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6127, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6129.Value ~= True) then
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
o6129 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6129.SetStateValue(o6129.GetCalculated())
end, StartCalculate = function()
  o6129["Value"] = o6129.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6129.Value == L0) then
    o6129["Value"] = L0
    CallFunction(o6127, "ProcesseStateChange")
  end
end }
S_o6164 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6164, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6164, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6164, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6164, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6166.Value ~= True) then
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
o6166 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6166.SetStateValue(o6166.GetCalculated())
end, StartCalculate = function()
  o6166["Value"] = o6166.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6166.Value == L0) then
    o6166["Value"] = L0
    CallFunction(o6164, "ProcesseStateChange")
  end
end }
S_o6201 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6201, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6201, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6201, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6201, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6203.Value ~= True) then
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
o6203 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6203.SetStateValue(o6203.GetCalculated())
end, StartCalculate = function()
  o6203["Value"] = o6203.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6203.Value == L0) then
    o6203["Value"] = L0
    CallFunction(o6201, "ProcesseStateChange")
  end
end }
S_o6238 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6238, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6238, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6238, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6238, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
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
  if not (o6876.Value ~= True) then
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
    o6240["Value"] = L0
    CallFunction(o6238, "ProcesseStateChange")
  end
end }
S_o6275 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6275, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6275, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6275, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6275, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6277.Value ~= True) then
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
o6277 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6277.SetStateValue(o6277.GetCalculated())
end, StartCalculate = function()
  o6277["Value"] = o6277.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6277.Value == L0) then
    o6277["Value"] = L0
    CallFunction(o6275, "ProcesseStateChange")
  end
end }
S_o6312 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6312, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6312, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6312, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6312, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6314.Value ~= True) then
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
o6314 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6314.SetStateValue(o6314.GetCalculated())
end, StartCalculate = function()
  o6314["Value"] = o6314.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6314.Value == L0) then
    o6314["Value"] = L0
    CallFunction(o6312, "ProcesseStateChange")
  end
end }
S_o6349 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6349, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6349, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6349, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6349, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6351.Value ~= True) then
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
o6351 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6351.SetStateValue(o6351.GetCalculated())
end, StartCalculate = function()
  o6351["Value"] = o6351.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6351.Value == L0) then
    o6351["Value"] = L0
    CallFunction(o6349, "ProcesseStateChange")
  end
end }
S_o6386 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6386, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6386, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6386, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6386, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6388.Value ~= True) then
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
o6388 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6388.SetStateValue(o6388.GetCalculated())
end, StartCalculate = function()
  o6388["Value"] = o6388.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6388.Value == L0) then
    o6388["Value"] = L0
    CallFunction(o6386, "ProcesseStateChange")
  end
end }
S_o6423 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6423, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6423, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6423, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6423, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6425.Value ~= True) then
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
o6425 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6425.SetStateValue(o6425.GetCalculated())
end, StartCalculate = function()
  o6425["Value"] = o6425.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6425.Value == L0) then
    o6425["Value"] = L0
    CallFunction(o6423, "ProcesseStateChange")
  end
end }
S_o6460 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6460, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6460, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6460, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6460, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6462.Value ~= True) then
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
o6462 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6462.SetStateValue(o6462.GetCalculated())
end, StartCalculate = function()
  o6462["Value"] = o6462.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6462.Value == L0) then
    o6462["Value"] = L0
    CallFunction(o6460, "ProcesseStateChange")
  end
end }
S_o6497 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6497, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6497, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6497, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6497, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6499.Value ~= True) then
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
o6499 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6499.SetStateValue(o6499.GetCalculated())
end, StartCalculate = function()
  o6499["Value"] = o6499.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6499.Value == L0) then
    o6499["Value"] = L0
    CallFunction(o6497, "ProcesseStateChange")
  end
end }
S_o6534 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6534, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6534, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6534, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6534, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6536.Value ~= True) then
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
o6536 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6536.SetStateValue(o6536.GetCalculated())
end, StartCalculate = function()
  o6536["Value"] = o6536.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6536.Value == L0) then
    o6536["Value"] = L0
    CallFunction(o6534, "ProcesseStateChange")
  end
end }
S_o6571 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6571, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6571, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6571, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6571, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6573.Value ~= True) then
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
o6573 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6573.SetStateValue(o6573.GetCalculated())
end, StartCalculate = function()
  o6573["Value"] = o6573.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6573.Value == L0) then
    o6573["Value"] = L0
    CallFunction(o6571, "ProcesseStateChange")
  end
end }
S_o6608 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6608, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6608, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6608, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6608, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6610.Value ~= True) then
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
o6610 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6610.SetStateValue(o6610.GetCalculated())
end, StartCalculate = function()
  o6610["Value"] = o6610.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6610.Value == L0) then
    o6610["Value"] = L0
    CallFunction(o6608, "ProcesseStateChange")
  end
end }
S_o6645 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6645, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6645, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6645, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6645, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6647.Value ~= True) then
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
o6647 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6647.SetStateValue(o6647.GetCalculated())
end, StartCalculate = function()
  o6647["Value"] = o6647.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6647.Value == L0) then
    o6647["Value"] = L0
    CallFunction(o6645, "ProcesseStateChange")
  end
end }
S_o6682 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6682, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6682, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6682, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6682, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6684.Value ~= True) then
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
o6684 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6684.SetStateValue(o6684.GetCalculated())
end, StartCalculate = function()
  o6684["Value"] = o6684.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6684.Value == L0) then
    o6684["Value"] = L0
    CallFunction(o6682, "ProcesseStateChange")
  end
end }
S_o6719 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6719, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6719, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6719, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6719, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6721.Value ~= True) then
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
o6721 = { [nil] = {}, GetCalculated = function()
  if not (o6876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6721.SetStateValue(o6721.GetCalculated())
end, StartCalculate = function()
  o6721["Value"] = o6721.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6721.Value == L0) then
    o6721["Value"] = L0
    CallFunction(o6719, "ProcesseStateChange")
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
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o6756, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6756, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  SendRadioMessageTake(o4215.Node, o4215.Node, 2)
  Game_SetWayPoint(GetGameNode(), o6815.Node)
  CallFunction(o6756, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Bio_Battle_Area", "/Scenario_Dynamic/Navigation/Bio_Battle_Area", "/Scenario_Dynamic/Navigation/Bio_Battle_Area", "player1", "E", "", "", 1, "Code8")
  else
    CallFunction(o6756, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Destroyed = function(L0, L1)
  o6762.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6758.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6759.Value ~= True) then
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
o6758 = { [nil] = {}, GetCalculated = function()
  if not (o2.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6758.SetStateValue(o6758.GetCalculated())
end, StartCalculate = function()
  o6758["Value"] = o6758.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6758.Value == L0) then
    o6758["Value"] = L0
    CallFunction(o6756, "ProcesseStateChange")
  end
end }
o6759 = { [nil] = {}, GetCalculated = function()
  if not (o3556.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6759.SetStateValue(o6759.GetCalculated())
end, StartCalculate = function()
  o6759["Value"] = o6759.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6759.Value == L0) then
    o6759["Value"] = L0
    CallFunction(o6756, "ProcesseStateChange")
  end
end }
o6762 = { [nil] = {}, Start = function()
  o6762["Value"] = False
  o6778.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6762.Value == L0) then
    o6762["Value"] = L0
    o6778.ReCalculate()
  end
end }
o6778 = { [nil] = {}, GetCalculated = function()
  if not (o6762.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6778.SetStateValue(o6778.GetCalculated())
end, StartCalculate = function()
  o6778["Value"] = o6778.GetCalculated()
  o6821.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6778.Value == L0) then
    o6778["Value"] = L0
    o6821.ReCalculate()
  end
end }
S_o6805 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 25)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o6805, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6810 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o6810, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6815 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o6756.Node)
  CallFunction(o6815, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6820 = { [nil] = {}, GetCalculated = function()
  if not (True ~= True) then
    if not (True ~= True) then
      if not (True ~= True) then
        if not (True ~= True) then
          if not (True ~= True) then
            if not (True ~= True) then
              if not (True ~= True) then
                if not (True ~= True) then
                  if not (True ~= True) then
                    if not (True ~= True) then
                      if not (True ~= True) then
                        if not (True ~= True) then
                          if not (True ~= True) then
                            if not (True ~= True) then
                              if not (True ~= True) then
                                if not (o4264.Value ~= True) then
                                  if not (o4300.Value ~= True) then
                                    if not (o4336.Value ~= True) then
                                      if not (o4372.Value ~= True) then
                                        if not (o4408.Value ~= True) then
                                          if not (o4444.Value ~= True) then
                                            if not (o4480.Value ~= True) then
                                              if not (o4516.Value ~= True) then
                                                if not (o4552.Value ~= True) then
                                                  if not (o4588.Value ~= True) then
                                                    if not (o4624.Value ~= True) then
                                                      if not (o4660.Value ~= True) then
                                                        if not (o4696.Value ~= True) then
                                                          if not (o4732.Value ~= True) then
                                                            if not (o4768.Value ~= True) then
                                                              if not (o4804.Value ~= True) then
                                                                if not (True ~= True) then
                                                                  if not (True ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
                                                                        if not (True ~= True) then
                                                                          if not (True ~= True) then
                                                                            if not (True ~= True) then
                                                                              if not (True ~= True) then
                                                                                if not (True ~= True) then
                                                                                  if not (True ~= True) then
                                                                                    if not (True ~= True) then
                                                                                      if not (True ~= True) then
                                                                                        if not (True ~= True) then
                                                                                          if not (True ~= True) then
                                                                                            if not (True ~= True) then
                                                                                              if not (True ~= True) then
                                                                                                if not (True ~= True) then
                                                                                                  if not (True ~= True) then
                                                                                                    if not (True ~= True) then
                                                                                                      if not (True ~= True) then
                                                                                                        if not (True ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
                                                                                                                                                if not (True ~= True) then
                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                      if not (True ~= True) then
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
end, ReCalculate = function()
  o6820.SetStateValue(o6820.GetCalculated())
end, StartCalculate = function()
  o6820["Value"] = o6820.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6820.Value == L0) then
    o6820["Value"] = L0
    o2.ReCalculate()
  end
end }
o6821 = { [nil] = {}, GetCalculated = function()
  if not (True ~= True) then
    if not (True ~= True) then
      if not (True ~= True) then
        if not (True ~= True) then
          if not (True ~= True) then
            if not (True ~= True) then
              if not (True ~= True) then
                if not (True ~= True) then
                  if not (True ~= True) then
                    if not (True ~= True) then
                      if not (True ~= True) then
                        if not (True ~= True) then
                          if not (True ~= True) then
                            if not (o4188.Value ~= True) then
                              if not (True ~= True) then
                                if not (True ~= True) then
                                  if not (True ~= True) then
                                    if not (True ~= True) then
                                      if not (True ~= True) then
                                        if not (True ~= True) then
                                          if not (True ~= True) then
                                            if not (True ~= True) then
                                              if not (True ~= True) then
                                                if not (True ~= True) then
                                                  if not (True ~= True) then
                                                    if not (True ~= True) then
                                                      if not (True ~= True) then
                                                        if not (True ~= True) then
                                                          if not (True ~= True) then
                                                            if not (True ~= True) then
                                                              if not (True ~= True) then
                                                                if not (True ~= True) then
                                                                  if not (True ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
                                                                        if not (True ~= True) then
                                                                          if not (True ~= True) then
                                                                            if not (True ~= True) then
                                                                              if not (True ~= True) then
                                                                                if not (True ~= True) then
                                                                                  if not (True ~= True) then
                                                                                    if not (True ~= True) then
                                                                                      if not (True ~= True) then
                                                                                        if not (True ~= True) then
                                                                                          if not (True ~= True) then
                                                                                            if not (True ~= True) then
                                                                                              if not (True ~= True) then
                                                                                                if not (True ~= True) then
                                                                                                  if not (True ~= True) then
                                                                                                    if not (True ~= True) then
                                                                                                      if not (True ~= True) then
                                                                                                        if not (True ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
                                                                                                                                                if not (True ~= True) then
                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                        if not (o6778.Value ~= True) then
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
end, ReCalculate = function()
  o6821.SetStateValue(o6821.GetCalculated())
end, StartCalculate = function()
  o6821["Value"] = o6821.GetCalculated()
  o3.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6821.Value == L0) then
    o6821["Value"] = L0
    o3.ReCalculate()
  end
end }
o6844 = { [nil] = {}, GetCalculated = function()
  if not (False == True) then
    if not (False == True) then
      if not (False == True) then
        if not (False == True) then
          if not (False == True) then
            if not (False == True) then
              if not (False == True) then
                if not (False == True) then
                  if not (False == True) then
                    if not (False == True) then
                      if not (False == True) then
                        if not (False == True) then
                          if not (False == True) then
                            if not (o4211.Value == True) then
                              if not (False == True) then
                                if not (False == True) then
                                  if not (False == True) then
                                    if not (False == True) then
                                      if not (False == True) then
                                        if not (False == True) then
                                          if not (False == True) then
                                            if not (False == True) then
                                              if not (False == True) then
                                                if not (False == True) then
                                                  if not (False == True) then
                                                    if not (False == True) then
                                                      if not (False == True) then
                                                        if not (False == True) then
                                                          if not (False == True) then
                                                            if not (False == True) then
                                                              if not (False == True) then
                                                                if not (False == True) then
                                                                  if not (False == True) then
                                                                    if not (False == True) then
                                                                      if not (False == True) then
                                                                        if not (False == True) then
                                                                          if not (False == True) then
                                                                            if not (False == True) then
                                                                              if not (False == True) then
                                                                                if not (False == True) then
                                                                                  if not (False == True) then
                                                                                    if not (False == True) then
                                                                                      if not (False == True) then
                                                                                        if not (False == True) then
                                                                                          if not (False == True) then
                                                                                            if not (False == True) then
                                                                                              if not (False == True) then
                                                                                                if not (False == True) then
                                                                                                  if not (False == True) then
                                                                                                    if not (False == True) then
                                                                                                      if not (False == True) then
                                                                                                        if not (False == True) then
                                                                                                          if not (False == True) then
                                                                                                            if not (False == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
                                                                                                                      if not (False == True) then
                                                                                                                        if not (False == True) then
                                                                                                                          if not (False == True) then
                                                                                                                            if not (False == True) then
                                                                                                                              if not (False == True) then
                                                                                                                                if not (False == True) then
                                                                                                                                  if not (False == True) then
                                                                                                                                    if not (False == True) then
                                                                                                                                      if not (False == True) then
                                                                                                                                        if not (False == True) then
                                                                                                                                          if not (False == True) then
                                                                                                                                            if not (False == True) then
                                                                                                                                              if not (False == True) then
                                                                                                                                                if not (False == True) then
                                                                                                                                                  if not (False == True) then
                                                                                                                                                    if not (False == True) then
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
end, ReCalculate = function()
  o6844.SetStateValue(o6844.GetCalculated())
end, StartCalculate = function()
  o6844["Value"] = o6844.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6844.Value == L0) then
    o6844["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o6848 = { [nil] = {}, Start = function(L0)

end }
S_o6849 = { [nil] = {}, Start = function(L0)

end }
S_o6850 = { [nil] = {}, Start = function(L0)

end }
S_o6851 = { [nil] = {}, Start = function(L0)

end }
S_o6852 = { [nil] = {}, Start = function(L0)

end }
o6854 = FormationLib.CreateFormation("Triangle", "", "", "", 11, 11)
S_o6855 = { [nil] = {}, Start = function(L0)

end }
S_o6856 = { [nil] = {}, Start = function(L0)

end }
S_o6857 = { [nil] = {}, Start = function(L0)

end }
S_o6858 = { [nil] = {}, Start = function(L0)

end }
S_o6859 = { [nil] = {}, Start = function(L0)

end }
S_o6860 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "atmo")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/D_LookFrom_1", 0, "MMMN", 0)
  FormationLib.PlaceFormationPath(o6853, o6854, "/IngameSequences/Navigation/C1_Intro_Path_1")
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/D_LookTo_1", 0, "MMMN", 0)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o6860, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code9")
  else
    CallFunction(o6860, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Camera_ShakeHit(L0.Node, 1.5, 1, 1, 1)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/D_LookFrom_2", 3, "MMMN", 0)
  CallFunction(o6860, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o6853, o6854, "/IngameSequences/Navigation/C1_Intro_Path_1", "pos_1", "pos_2", 0.25, 1, "Code12")
  else
    CallFunction(o6860, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0.5, "MMMN", 0)
  CallFunction(o6860, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o6853, o6854, "/IngameSequences/Navigation/C1_Intro_Path_1", "pos_2", "pos_3", 0.6, 1, "Code14")
  else
    CallFunction(o6860, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Camera_ZoomAt(L0.Node, "/Scenario_Dynamic/Object/player1", 2, 0.4)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/D_LookFrom_2", 9, "MMMN", 0)
  CallFunction(o6860, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o6853, o6854, "/IngameSequences/Navigation/C1_Intro_Path_1", "pos_3", "pos_6", 0.75, 1, "Code17")
  else
    CallFunction(o6860, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  Director_EndCutscene(L0.Node)
  Game_SetWayPoint(GetGameNode(), o6805.Node)
  SED_SetTaskTextKey(1266, -1, -1)
  CallFunction(o6860, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6863 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6863, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Camera_ShakeHit(L0.Node, 1.5, 1, 1, 1)
  CallFunction(o6863, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o6864.Value ~= True) then
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
o6864 = { [nil] = {}, GetCalculated = function()
  if not (o6887.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6864.SetStateValue(o6864.GetCalculated())
end, StartCalculate = function()
  o6864["Value"] = o6864.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6864.Value == L0) then
    DelayedFunction(0.5, o6864, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6864.Value == L0) then
    o6864["Value"] = L0
    CallFunction(o6863, "ProcesseStateChange")
  end
end }
S_o6866 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6, "Code1")
  else
    CallFunction(o6866, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o4215.Node, o4215.Node, 1207)
  SendRadioMessageTake(o4215.Node, o4215.Node, 1)
  CallFunction(o6866, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6869 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6869, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  o6876.SetStateValue(True)
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o6869, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code5")
  else
    CallFunction(o6869, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/D_LookFrom_3", 0, "MMMN", 0)
  FormationLib.PlaceFormationPath(o6853, o6854, "/IngameSequences/Navigation/C2_Intro_Path_1")
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 30)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o6869, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3, "Code11")
  else
    CallFunction(o6869, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/D_LookTo_3", 6, "MMMN", 0)
  CallFunction(o6869, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o6853, o6854, "/IngameSequences/Navigation/C2_Intro_Path_2", "pos_1", "pos_3", 1, 1, "Code13")
  else
    CallFunction(o6869, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  o4226.SetStateValue(True)
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/D_LookFrom_4", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/D_LookFrom_5", 0, "MMMN", 30)
  CallFunction(o6869, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.8, "Code18")
  else
    CallFunction(o6869, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/D_LookFrom_5", 3, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/elt_transport", 2, "MMMN", 0)
  CallFunction(o6869, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 11, "Code21")
  else
    CallFunction(o6869, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  FormationLib.PlaceFormationPath(o6853, o6854, "/IngameSequences/Navigation/C2_Intro_Path_3")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/D_LookFrom_6", 3, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0.5, "MMMN", 0)
  CallFunction(o6869, "Code24")
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o6853, o6854, "/IngameSequences/Navigation/C2_Intro_Path_3", "pos_1", "pos_2", 1, 1, "Code25")
  else
    CallFunction(o6869, "Code25")
  end
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  Director_EndCutscene(L0.Node)
  SendRadioMessageTake(o4215.Node, o4215.Node, 5)
  Game_SetWayPoint(GetGameNode(), o6810.Node)
  SED_SetTaskTextKey(1267, -1, -1)
  CallFunction(o6869, "Code29")
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o6870.Value ~= True) then
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
o6870 = { [nil] = {}, GetCalculated = function()
  if not (o2.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6870.SetStateValue(o6870.GetCalculated())
end, StartCalculate = function()
  o6870["Value"] = o6870.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6870.Value == L0) then
    DelayedFunction(2, o6870, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6870.Value == L0) then
    o6870["Value"] = L0
    CallFunction(o6869, "ProcesseStateChange")
  end
end }
o6876 = { [nil] = {}, Start = function()
  o6876["Value"] = False
  o4834.StartCalculate()
  o4871.StartCalculate()
  o4908.StartCalculate()
  o4945.StartCalculate()
  o4982.StartCalculate()
  o5019.StartCalculate()
  o5056.StartCalculate()
  o5093.StartCalculate()
  o5130.StartCalculate()
  o5167.StartCalculate()
  o5204.StartCalculate()
  o5241.StartCalculate()
  o5278.StartCalculate()
  o5315.StartCalculate()
  o5352.StartCalculate()
  o5389.StartCalculate()
  o5426.StartCalculate()
  o5463.StartCalculate()
  o5500.StartCalculate()
  o5537.StartCalculate()
  o5574.StartCalculate()
  o5611.StartCalculate()
  o5648.StartCalculate()
  o5685.StartCalculate()
  o5722.StartCalculate()
  o5759.StartCalculate()
  o5796.StartCalculate()
  o5833.StartCalculate()
  o5870.StartCalculate()
  o5907.StartCalculate()
  o5944.StartCalculate()
  o5981.StartCalculate()
  o6018.StartCalculate()
  o6055.StartCalculate()
  o6092.StartCalculate()
  o6129.StartCalculate()
  o6166.StartCalculate()
  o6203.StartCalculate()
  o6240.StartCalculate()
  o6277.StartCalculate()
  o6314.StartCalculate()
  o6351.StartCalculate()
  o6388.StartCalculate()
  o6425.StartCalculate()
  o6462.StartCalculate()
  o6499.StartCalculate()
  o6536.StartCalculate()
  o6573.StartCalculate()
  o6610.StartCalculate()
  o6647.StartCalculate()
  o6684.StartCalculate()
  o6721.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6876.Value == L0) then
    o6876["Value"] = L0
    o4834.ReCalculate()
    o4871.ReCalculate()
    o4908.ReCalculate()
    o4945.ReCalculate()
    o4982.ReCalculate()
    o5019.ReCalculate()
    o5056.ReCalculate()
    o5093.ReCalculate()
    o5130.ReCalculate()
    o5167.ReCalculate()
    o5204.ReCalculate()
    o5241.ReCalculate()
    o5278.ReCalculate()
    o5315.ReCalculate()
    o5352.ReCalculate()
    o5389.ReCalculate()
    o5426.ReCalculate()
    o5463.ReCalculate()
    o5500.ReCalculate()
    o5537.ReCalculate()
    o5574.ReCalculate()
    o5611.ReCalculate()
    o5648.ReCalculate()
    o5685.ReCalculate()
    o5722.ReCalculate()
    o5759.ReCalculate()
    o5796.ReCalculate()
    o5833.ReCalculate()
    o5870.ReCalculate()
    o5907.ReCalculate()
    o5944.ReCalculate()
    o5981.ReCalculate()
    o6018.ReCalculate()
    o6055.ReCalculate()
    o6092.ReCalculate()
    o6129.ReCalculate()
    o6166.ReCalculate()
    o6203.ReCalculate()
    o6240.ReCalculate()
    o6277.ReCalculate()
    o6314.ReCalculate()
    o6351.ReCalculate()
    o6388.ReCalculate()
    o6425.ReCalculate()
    o6462.ReCalculate()
    o6499.ReCalculate()
    o6536.ReCalculate()
    o6573.ReCalculate()
    o6610.ReCalculate()
    o6647.ReCalculate()
    o6684.ReCalculate()
    o6721.ReCalculate()
  end
end }
S_o6877 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6877, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.5, "Code2")
  else
    CallFunction(o6877, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  Game_PlayMusic(GetGameNode(), "agressive")
  SendRadioMessageTake(o4215.Node, o4215.Node, 3)
  CallFunction(o6877, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 15, "Code5")
  else
    CallFunction(o6877, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  SendRadioMessageTake(o4215.Node, o4215.Node, 1169)
  CallFunction(o6877, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o6878.Value ~= True) then
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
o6878 = { [nil] = {}, GetCalculated = function()
  if not (o2.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6878.SetStateValue(o6878.GetCalculated())
end, StartCalculate = function()
  o6878["Value"] = o6878.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6878.Value == L0) then
    DelayedFunction(2, o6878, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6878.Value == L0) then
    o6878["Value"] = L0
    CallFunction(o6877, "ProcesseStateChange")
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
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "Phobo", "", "", "", False, False, True)
  CallFunction(o6882, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6882, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6882, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o6887.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6887 = { [nil] = {}, Start = function()
  o6887["Value"] = False
  o6864.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6887.Value == L0) then
    o6887["Value"] = L0
    o6864.ReCalculate()
  end
end }
S_o6888 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code1")
  else
    CallFunction(o6888, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/CamScout_Path", 1, 1 } }("Code2")
  else
    CallFunction(o6888, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code3")
  else
    CallFunction(o6888, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6935 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code1")
  else
    CallFunction(o6935, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/CamPhob_Path", 1, 1 } }("Code2")
  else
    CallFunction(o6935, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code3")
  else
    CallFunction(o6935, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 349)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "elt_asylum_1", S_o30)
  o64 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern_1", S_o64)
  o98 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern_2", S_o98)
  o132 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern_3", S_o132)
  o166 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_2", S_o166)
  o200 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_4", S_o200)
  o234 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_2", S_o234)
  o268 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_2", S_o268)
  o302 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker_1", S_o302)
  o336 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraft2_1", S_o336)
  o370 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_1", S_o370)
  o404 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_2", S_o404)
  o438 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_3", S_o438)
  o472 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_5", S_o472)
  o506 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_6", S_o506)
  o540 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_7", S_o540)
  o574 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_8", S_o574)
  o608 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_9", S_o608)
  o642 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_4", S_o642)
  o676 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_5", S_o676)
  o710 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k3_1", S_o710)
  o744 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf-kn_1", S_o744)
  o778 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf-kn_2", S_o778)
  o812 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf-kn_3", S_o812)
  o846 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf-kn_4", S_o846)
  o880 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern2_1", S_o880)
  o914 = BindEasy(Node_Find("/Scenario_Static/Object"), "Atl_Dock", S_o914)
  o948 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_1", S_o948)
  o982 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_1", S_o982)
  o1016 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_2", S_o1016)
  o1050 = BindEasy(Node_Find("/Scenario_Static/Object"), "Elt_Dock", S_o1050)
  o1084 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_1", S_o1084)
  o1118 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_2", S_o1118)
  o1152 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_1", S_o1152)
  o1186 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3b_1", S_o1186)
  o1220 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r4_1", S_o1220)
  o1254 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r4_2", S_o1254)
  o1288 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r4_3", S_o1288)
  o1322 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r1_1", S_o1322)
  o1356 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk3_1", S_o1356)
  o1390 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_1", S_o1390)
  o1424 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_2", S_o1424)
  o1458 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_3", S_o1458)
  o1492 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_4", S_o1492)
  o1526 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_4", S_o1526)
  o1560 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_5", S_o1560)
  o1594 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_6", S_o1594)
  o1628 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraft1_1", S_o1628)
  o1662 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraft22_1", S_o1662)
  o1696 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_1", S_o1696)
  o1730 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_3", S_o1730)
  o1764 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schorn2_1", S_o1764)
  o1798 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schorn2_2", S_o1798)
  o1832 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gang1_1", S_o1832)
  o1866 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gang1_2", S_o1866)
  o1900 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrs2_1", S_o1900)
  o1934 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrs2_2", S_o1934)
  o1968 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gang2_1", S_o1968)
  o2002 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_1", S_o2002)
  o2036 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_2", S_o2036)
  o2070 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_3", S_o2070)
  o2104 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_4", S_o2104)
  o2138 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_5", S_o2138)
  o2172 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_6", S_o2172)
  o2206 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_1", S_o2206)
  o2240 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_2", S_o2240)
  o2274 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_3", S_o2274)
  o2308 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_1", S_o2308)
  o2342 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_2", S_o2342)
  o2376 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb4a_1_1", S_o2376)
  o2410 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock3_1", S_o2410)
  o2444 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker2_1", S_o2444)
  o2478 = BindEasy(Node_Find("/Scenario_Static/Object"), "delphin_1", S_o2478)
  o2512 = BindEasy(Node_Find("/Scenario_Static/Object"), "delphin_big_1", S_o2512)
  o2546 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_1/Turm1", S_o2546)
  o2584 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_2/Turm1", S_o2584)
  o2622 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_3/Turm1", S_o2622)
  o2660 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_4/Turm1", S_o2660)
  o2698 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_5/Turm1", S_o2698)
  o2736 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_6/Turm1", S_o2736)
  o2774 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_7/Turm1", S_o2774)
  o2812 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_8/Turm1", S_o2812)
  o2850 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_9/Turm1", S_o2850)
  o2888 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_10/Turm1", S_o2888)
  o2926 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_11/Turm1", S_o2926)
  o2964 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_12/Turm1", S_o2964)
  o3002 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_13/Turm1", S_o3002)
  o3040 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_14/Turm1", S_o3040)
  o3078 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_g_1", S_o3078)
  o3112 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus2_1", S_o3112)
  o3146 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus3_1", S_o3146)
  o3180 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus1_1", S_o3180)
  o3214 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_1", S_o3214)
  o3248 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_2", S_o3248)
  o3282 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_3", S_o3282)
  o3316 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_4", S_o3316)
  o3350 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_5", S_o3350)
  o3384 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_6", S_o3384)
  o3418 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai1_1", S_o3418)
  o3452 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kuppel_1", S_o3452)
  o3486 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kuppel_2", S_o3486)
  o3548 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "SinkPos1", S_o3548)
  o3551 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "BiontWakeUp", S_o3551)
  o3556.Start()
  o3557 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TransportFinish", S_o3557)
  o3562.Start()
  o3563 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_transp_1", S_o3563)
  o3614 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_avenger_1", S_o3614)
  o3667 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC/PolA_Group"), "Pol_GroupA_1", S_o3667)
  o3715 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC/PolA_Group"), "Pol_GroupA_2", S_o3715)
  o3765 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC/PolB_Group"), "Pol_GroupB_1", S_o3765)
  o3813 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC/PolB_Group"), "Pol_GroupB_2", S_o3813)
  o3861 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC/PolB_Group"), "Pol_GroupB_3", S_o3861)
  o3909 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC/PolB_Group"), "Pol_GroupB_4", S_o3909)
  o3957 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC/PolB_Group"), "Pol_GroupB_5", S_o3957)
  o4005 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_raupe_1", S_o4005)
  o4044 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_raupe_2", S_o4044)
  o4083 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_raupe_3", S_o4083)
  o4122 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_raupe_4", S_o4122)
  o4161 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "elt_transport", S_o4161)
  o4171.Start()
  o4176.Start()
  o4177.Start()
  o4178.Start()
  o4215 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o4215)
  o4216.Start()
  o4217.Start()
  o4218.Start()
  o4226.Start()
  o4256 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav1"), "bio_clunker02a_low_1", S_o4256)
  o4259.Start()
  o4292 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav1"), "bio_clunker02b_low_1", S_o4292)
  o4295.Start()
  o4328 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav1"), "bio_clunker02b_low_2", S_o4328)
  o4331.Start()
  o4364 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav1"), "bio_clunker03a_low_1", S_o4364)
  o4367.Start()
  o4400 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav1"), "bio_clunker03a_low_2", S_o4400)
  o4403.Start()
  o4436 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav1"), "bio_clunker03b_low_1", S_o4436)
  o4439.Start()
  o4472 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav1"), "bio_clunker03b_low_2", S_o4472)
  o4475.Start()
  o4508 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav1"), "bio_clunker03b_low_3", S_o4508)
  o4511.Start()
  o4544 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav1"), "bio_clunker04a_low_1", S_o4544)
  o4547.Start()
  o4580 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav1"), "bio_clunker04a_low_2", S_o4580)
  o4583.Start()
  o4616 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav1"), "bio_clunker04a_low_3", S_o4616)
  o4619.Start()
  o4652 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav1"), "bio_clunker06_low_1", S_o4652)
  o4655.Start()
  o4688 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav1"), "bio_clunker06_low_2", S_o4688)
  o4691.Start()
  o4724 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav1"), "bio_clunker05_low_1", S_o4724)
  o4727.Start()
  o4760 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav1"), "bio_clunker05_low_2", S_o4760)
  o4763.Start()
  o4796 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav1"), "bio_clunker05_low_3", S_o4796)
  o4799.Start()
  o4832 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker02a_low_1", S_o4832)
  o4869 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker03a_low_1", S_o4869)
  o4906 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker03b_low_1", S_o4906)
  o4943 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker04a_low_1", S_o4943)
  o4980 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker06_low_1", S_o4980)
  o5017 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker05_low_1", S_o5017)
  o5054 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker02a_low_2", S_o5054)
  o5091 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker02b_low_2", S_o5091)
  o5128 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker03a_low_2", S_o5128)
  o5165 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker03b_low_2", S_o5165)
  o5202 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker04a_low_2", S_o5202)
  o5239 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker06_low_2", S_o5239)
  o5276 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker05_low_2", S_o5276)
  o5313 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker03a_low_3", S_o5313)
  o5350 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker02a_low_4", S_o5350)
  o5387 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker02b_low_4", S_o5387)
  o5424 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker03a_low_4", S_o5424)
  o5461 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker03b_low_4", S_o5461)
  o5498 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker04a_low_4", S_o5498)
  o5535 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker06_low_4", S_o5535)
  o5572 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker05_low_4", S_o5572)
  o5609 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker02a_low_5", S_o5609)
  o5646 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker02b_low_5", S_o5646)
  o5683 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker03a_low_5", S_o5683)
  o5720 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker03b_low_5", S_o5720)
  o5757 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker04a_low_5", S_o5757)
  o5794 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker06_low_5", S_o5794)
  o5831 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker05_low_5", S_o5831)
  o5868 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker02a_low_6", S_o5868)
  o5905 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker03a_low_6", S_o5905)
  o5942 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker03b_low_6", S_o5942)
  o5979 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker04a_low_6", S_o5979)
  o6016 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker06_low_6", S_o6016)
  o6053 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker05_low_6", S_o6053)
  o6090 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker02a_low_7", S_o6090)
  o6127 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker02b_low_7", S_o6127)
  o6164 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker03a_low_7", S_o6164)
  o6201 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker03b_low_7", S_o6201)
  o6238 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker04a_low_7", S_o6238)
  o6275 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker06_low_7", S_o6275)
  o6312 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker05_low_7", S_o6312)
  o6349 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker02a_low_8", S_o6349)
  o6386 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker03a_low_8", S_o6386)
  o6423 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker03b_low_8", S_o6423)
  o6460 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker04a_low_8", S_o6460)
  o6497 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker06_low_8", S_o6497)
  o6534 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker05_low_8", S_o6534)
  o6571 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker03a_low_9", S_o6571)
  o6608 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker06_low_9", S_o6608)
  o6645 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker04a_low_9", S_o6645)
  o6682 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker02b_low_9", S_o6682)
  o6719 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TrashField_Nav2"), "bio_clunker02b_low_10", S_o6719)
  o6756 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_d1_nohalo_1", S_o6756)
  o6762.Start()
  o6805 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_01", S_o6805)
  o6810 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_02", S_o6810)
  o6815 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack", S_o6815)
  o6848 = BindEasy(Node_Find("/"), "Camera", S_o6848)
  o6849 = BindEasy(Node_Find("/IngameSequences/Navigation"), "D_LookFrom_1", S_o6849)
  o6850 = BindEasy(Node_Find("/IngameSequences/Navigation"), "D_LookFrom_2", S_o6850)
  o6851 = BindEasy(Node_Find("/IngameSequences/Navigation"), "D_LookTo_1", S_o6851)
  o6852 = BindEasy(Node_Find("/IngameSequences/Navigation"), "D_LookTo_2", S_o6852)
  o6855 = BindEasy(Node_Find("/IngameSequences/Navigation"), "D_LookFrom_3", S_o6855)
  o6856 = BindEasy(Node_Find("/IngameSequences/Navigation"), "D_LookTo_3", S_o6856)
  o6857 = BindEasy(Node_Find("/IngameSequences/Navigation"), "D_LookFrom_4", S_o6857)
  o6858 = BindEasy(Node_Find("/IngameSequences/Navigation"), "D_LookFrom_5", S_o6858)
  o6859 = BindEasy(Node_Find("/IngameSequences/Navigation"), "D_LookFrom_6", S_o6859)
  o6876.Start()
  o6882 = BindEasy(Node_Find("/IngameSequences/Trigger"), "TriggerPresenceBox_1", S_o6882)
  o6887.Start()
  o6888 = BindEasy(Node_Find("/IngameSequences/Object"), "atl_scout1_cam", S_o6888)
  o6935 = BindEasy(Node_Find("/IngameSequences/Object"), "Phobocaster_cam", S_o6935)
  o6860 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_V", S_o6860)
  o6863 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_IntroAddOn_V", S_o6863)
  o6866 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_A", S_o6866)
  o6869 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_Intro_V", S_o6869)
  o6877 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_Intro_A", S_o6877)
  o3666 = { {}, o3667, o3715 }()
  o3764 = { {}, o3765, o3813, o3861, o3909, o3957 }()
  o6853 = { {}, o4215 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end