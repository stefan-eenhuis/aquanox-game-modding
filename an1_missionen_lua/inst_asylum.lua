-- dekompiliert aus map\inst_asylum\script\inst_asylum.sco
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
  Game_LoadMTake(node0, "dat/sty/mtake_Asylum_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track03.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_track01_frag_heroic2.sam", 2)
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
  node20 = Node_CreateNode("nod_generic", "gen_stab2_6")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(1633.54, 2392.969, 351.387966), MAT_Vector3(-41.9275, 0, 0))
  Node_ParseIniFile(node20, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "gen_stab2_7")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(1809.118, 2223.653, 430.244973), MAT_Vector3(-70.9353, 0.07263, 2.489263))
  Node_ParseIniFile(node21, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "gen_stab2_8")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(2133.744, 2257.638, 353.417917), MAT_Vector3(-61.964, 0.075462, 2.183281))
  Node_ParseIniFile(node22, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "gen_stab1_4")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(2993.551472, 1874.82632, 507.515688), MAT_Vector3(-46.605739, 0, 0))
  Node_ParseIniFile(node23, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "gen_stab1_5")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(3027.938949, 2444.168884, 466.092251), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node24, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "gen_tnk_k3_1")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(3114.282, 1401.433, 278.389803), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_tank_sml3.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_elf-kn_1")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(2883.426109, 1361.975062, 247.5695), MAT_Vector3(23.20825, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "gen_elf-kn_2")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(2443.447, 1182.932, 243.4679), MAT_Vector3(23.20825, 0, 0))
  Node_ParseIniFile(node27, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "gen_elf-kn_3")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(1899.772539, 957.625408, 257.087978), MAT_Vector3(20.14182, -5.2719, -10.7131))
  Node_ParseIniFile(node28, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "gen_stern2_1")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(1619.422, 2461.366, 341.264273), MAT_Vector3(-42.6643, 0, 0))
  Node_ParseIniFile(node29, "osd/gen/gen_starfound2.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "Elt_Dock")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(3096.573227, 2289.54239, 484.146808), MAT_Vector3(-89.6382, 0, 0))
  Node_ParseIniFile(node30, "osd/gen/gen_dock.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "gen_turm_1")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(3237.58655, 1923.987411, 457.177131), MAT_Vector3(-29.93103, 0, 0))
  Node_ParseIniFile(node31, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "gen_turm_2")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(3221.303649, 1868.939362, 463.802369), MAT_Vector3(-1.318791, 0, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_parabo_1")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(3026.94, 1441.382, 310.563526), MAT_Vector3(146.0772, 0, 0))
  Node_ParseIniFile(node33, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "gen_parabo_2")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(3030.369462, 1890.742318, 484.671332), MAT_Vector3(65.9028, 0, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "gen_parabo_3")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(2909.969626, 1941.281657, 485.415182), MAT_Vector3(67.195795, 0, 0))
  Node_ParseIniFile(node35, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_parabo_4")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(3323.305733, 1755.044057, 495.175827), MAT_Vector3(145.781397, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "gen_stab2_4")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(3021.271, 1492.073, 309.602433), MAT_Vector3(-30.66857, 0, 0))
  Node_ParseIniFile(node37, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "gen_stab3_5")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(2990.832, 1482.195, 312.159175), MAT_Vector3(-30.5884, 0, 0))
  Node_ParseIniFile(node38, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_kraft1_1")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(1666.638, 2402.006, 354.394455), MAT_Vector3(25.56546, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_rohrb3_1")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(2752.631, 1312.341, 227.804246), MAT_Vector3(-67.07941, 0.585846, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_rohrb3_2")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(2476.488, 1195.564, 224.340434), MAT_Vector3(-67.07941, 0.585846, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_rohrb2_1")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(2018.129, 1010.489, 269.64006), MAT_Vector3(-66.49394, -2.050355, -0.020974))
  Node_ParseIniFile(node42, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_rohrb2_2")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(2122.571, 1055.966, 254.324035), MAT_Vector3(-66.49833, -13.76728, -0.021581))
  Node_ParseIniFile(node43, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_rohrb2_3")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(2227.821, 1098.244, 234.291485), MAT_Vector3(-69.73714, -7.595749, -0.697169))
  Node_ParseIniFile(node44, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_rohrb1_1")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(1942.925, 978.126, 261.932835), MAT_Vector3(-67.66526, 21.09047, 0))
  Node_ParseIniFile(node45, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_rohrb1_2")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(2307.416, 1126.474, 225.888973), MAT_Vector3(-71.4738, -1.750429, -0.213981))
  Node_ParseIniFile(node46, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "atl_dock3_1")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(3344.63571, 1860.14291, 450.955078), MAT_Vector3(-121.945289, 0, 0))
  Node_ParseIniFile(node47, "osd/atl/atl_dock3.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "gen_bunker2_1")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(2971.509403, 1917.724942, 399.22791), MAT_Vector3(43.242338, 0, 0))
  Node_ParseIniFile(node48, "osd/gen/gen_shelter2.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "gen_turret_2")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(2992.017936, 2426.773642, 495.713997), MAT_Vector3(75.487066, 0, 0))
  Node_ParseIniFile(node49, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node49, 1)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "gen_turret_3")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(3191.219764, 1676.63008, 452.610173), MAT_Vector3(129.088666, 0, 0))
  Node_ParseIniFile(node50, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node50, 1)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_turret_4")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(2992.363624, 2328.658059, 495.507469), MAT_Vector3(129.0887, 0, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node51, 1)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "gen_turret_5")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(3490.22921, 1748.714199, 458.86893), MAT_Vector3(160.591351, 0, 0))
  Node_ParseIniFile(node52, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node52, 1)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_turret_6")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(3086.272598, 2062.299624, 486.318665), MAT_Vector3(129.0887, 0, 0))
  Node_ParseIniFile(node53, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node53, 1)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "gen_turret_7")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(2952.850327, 1973.023727, 493.860622), MAT_Vector3(55.861843, 0, 0))
  Node_ParseIniFile(node54, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node54, 1)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "gen_turret_8")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(3119.1302, 1256.150417, 338.63178), MAT_Vector3(108.141966, 0, 0))
  Node_ParseIniFile(node55, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node55, 1)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "gen_turret_9")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(3286.489773, 1647.221965, 456.076502), MAT_Vector3(163.643168, 0, 0))
  Node_ParseIniFile(node56, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node56, 1)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "gen_turret_10")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(3356.483047, 2167.634376, 571.102338), MAT_Vector3(108.142, 0, 0))
  Node_ParseIniFile(node57, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node57, 1)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "gen_turret_11")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(3355.538556, 2285.728667, 571.131192), MAT_Vector3(67.968766, 0, 0))
  Node_ParseIniFile(node58, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node58, 1)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "gen_turret_12")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(3006.765434, 1458.487948, 312.063867), MAT_Vector3(112.552891, 0, 0))
  Node_ParseIniFile(node59, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node59, 1)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "gen_turret_13")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(3698.92699, 2656.395124, 492.728071), MAT_Vector3(29.20375, 0, 0))
  Node_ParseIniFile(node60, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node60, 1)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "gen_turret_14")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(3608.608112, 2603.049353, 492.725274), MAT_Vector3(36.298725, 0, 0))
  Node_ParseIniFile(node61, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node61, 1)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "gen_tnk_g_1")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(3256.311743, 1787.726594, 454.342561), MAT_Vector3(57.100785, 0, 0))
  Node_ParseIniFile(node62, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "gen_mhaus2_1")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(3320.914779, 1825.962649, 431.269217), MAT_Vector3(-33.224712, 0, 0))
  Node_ParseIniFile(node63, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "gen_kai1_1")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(3356.755488, 2227.480265, 554.62332), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node64, "osd/gen/gen_kai1.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "gen_kuppel_1")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(3356.810525, 2249.456456, 572.7), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node65, "osd/gen/gen_scoop.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "gen_kuppel_2")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(3356.826939, 2207.494365, 572.7), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node66, "osd/gen/gen_scoop.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node7, node67)
  Node_ParseIniFile(node67, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node67, "map/1H1/Terrain/coral_01.tga")
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_fx_plant", "fungus_01_1")
  Node_AddSon(node7, node68)
  Node_ParseIniFile(node68, "osd/fx_plant/fungus_01.osd")
  FX_Plant_SetMap(node68, "map/1H1/Terrain/fungus_01.tga")
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node7, node69)
  Node_ParseIniFile(node69, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node69, "map/1H1/Terrain/grass_01.tga")
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node7, node70)
  Node_ParseIniFile(node70, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node70, "map/1H1/Terrain/stone_01.tga")
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node7, node71)
  Node_ParseIniFile(node71, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_fx_sky", "fx_sky_01_1")
  Node_AddSon(node7, node72)
  Node_ParseIniFile(node72, "osd/fx_sky/fx_sky_01.osd")
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_fx_plankton", "fx_plankton_cyan_1")
  Node_AddSon(node7, node73)
  Node_ParseIniFile(node73, "osd/fx_plankton/fx_plankton_cyan.osd")
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node74)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node74, node75)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node74, node76)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("NOD_PatrolArea", "PatrolArea")
  Node_AddSon(node76, node77)
  PatrolArea_SetPosition(node77, MAT_Vector3(3176.270666, 2171.18518, 635))
  PatrolArea_SetRadius(node77, 250)
  PatrolArea_SetMinZ(node77, -10)
  PatrolArea_SetMaxZ(node77, 70)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("NOD_PatrolArea", "TriggerArea")
  Node_AddSon(node76, node78)
  PatrolArea_SetPosition(node78, MAT_Vector3(3176.270666, 2170.00425, 635))
  PatrolArea_SetRadius(node78, 500)
  PatrolArea_SetMinZ(node78, -400)
  PatrolArea_SetMaxZ(node78, 280)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("NOD_PatrolArea", "FollowArea")
  Node_AddSon(node76, node79)
  PatrolArea_SetPosition(node79, MAT_Vector3(3178.849231, 2170.00425, 635))
  PatrolArea_SetRadius(node79, 700)
  PatrolArea_SetMinZ(node79, -450)
  PatrolArea_SetMaxZ(node79, 280)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node74, node80)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node74, node81)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node74, node82)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node82, node83)
  Body_SetCS(node83, MAT_Vector3(3408.78028, 2086.144498, 583.677586), MAT_Vector3(91.680394, 0, 0))
  Node_ParseIniFile(node83, "osd/pla/pla_skipjack.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_vessel", "tz_scout1v1_1")
  Node_AddSon(node82, node84)
  Body_SetCS(node84, MAT_Vector3(3231.549442, 2087.097473, 548.341289), MAT_Vector3(-53.634046, 0, 0))
  Node_ParseIniFile(node84, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node84, 3)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_vessel", "tz_scout1v1_2")
  Node_AddSon(node82, node85)
  Body_SetCS(node85, MAT_Vector3(3095.741963, 2488.613457, 563.246145), MAT_Vector3(-139.364205, 0, 0))
  Node_ParseIniFile(node85, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node85, 3)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_vessel", "tz_scout1v1_3")
  Node_AddSon(node82, node86)
  Body_SetCS(node86, MAT_Vector3(2951.668448, 1878.0718, 563.2461), MAT_Vector3(-94.760299, 0, 0))
  Node_ParseIniFile(node86, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node86, 3)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_vessel", "tz_scout1v1_4")
  Node_AddSon(node82, node87)
  Body_SetCS(node87, MAT_Vector3(2890.259601, 1894.605031, 563.2461), MAT_Vector3(-94.7603, 0, 0))
  Node_ParseIniFile(node87, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node87, 3)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_vessel", "tz_scout1v1_5")
  Node_AddSon(node82, node88)
  Body_SetCS(node88, MAT_Vector3(2772.166924, 2071.744613, 563.2461), MAT_Vector3(-94.7603, 0, 0))
  Node_ParseIniFile(node88, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node88, 3)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_vessel", "tz_scout1v1_6")
  Node_AddSon(node82, node89)
  Body_SetCS(node89, MAT_Vector3(2844.203776, 2188.657145, 563.2461), MAT_Vector3(-77.4708, 0, 0))
  Node_ParseIniFile(node89, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node89, 3)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_vessel", "tz_scout1v1_7")
  Node_AddSon(node82, node90)
  Body_SetCS(node90, MAT_Vector3(2998.315255, 1969.790519, 563.2461), MAT_Vector3(-77.4708, 0, 0))
  Node_ParseIniFile(node90, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node90, 3)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_vessel", "tz_scout1v1_8")
  Node_AddSon(node82, node91)
  Body_SetCS(node91, MAT_Vector3(3310.631054, 2224.201663, 600.518018), MAT_Vector3(131.306024, 0, 0))
  Node_ParseIniFile(node91, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node91, 3)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_vessel", "tz_scout1v1_9")
  Node_AddSon(node82, node92)
  Body_SetCS(node92, MAT_Vector3(3153.195132, 1807.18985, 563.2461), MAT_Vector3(-103.279577, 0, 0))
  Node_ParseIniFile(node92, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node92, 3)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_vessel", "tz_scout1v1_10")
  Node_AddSon(node82, node93)
  Body_SetCS(node93, MAT_Vector3(3253.42657, 2293.347678, 607.420226), MAT_Vector3(-75.730371, 0, 0))
  Node_ParseIniFile(node93, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node93, 3)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_vessel", "tz_scout1v2_1")
  Node_AddSon(node82, node94)
  Body_SetCS(node94, MAT_Vector3(2924.90228, 2232.457704, 663.31738), MAT_Vector3(-31.623594, 0, 0))
  Node_ParseIniFile(node94, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node94, 3)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_vessel", "tz_scout1v2_2")
  Node_AddSon(node82, node95)
  Body_SetCS(node95, MAT_Vector3(3168.173736, 2492.262766, 663.3174), MAT_Vector3(-120.337597, 0, 0))
  Node_ParseIniFile(node95, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node95, 3)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_vessel", "tz_scout1v2_3")
  Node_AddSon(node82, node96)
  Body_SetCS(node96, MAT_Vector3(2962.692049, 1875.817146, 663.3174), MAT_Vector3(-88.110499, 0, 0))
  Node_ParseIniFile(node96, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node96, 3)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_vessel", "tz_scout1v2_4")
  Node_AddSon(node82, node97)
  Body_SetCS(node97, MAT_Vector3(3250.839104, 2421.407009, 663.3174), MAT_Vector3(-147.16255, 0, 0))
  Node_ParseIniFile(node97, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node97, 3)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_vessel", "tz_scout1v2_5")
  Node_AddSon(node82, node98)
  Body_SetCS(node98, MAT_Vector3(3267.426816, 1584.319375, 663.3174), MAT_Vector3(-1.45075, 0, 0))
  Node_ParseIniFile(node98, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node98, 3)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_vessel", "tz_scout2v1_1")
  Node_AddSon(node82, node99)
  Body_SetCS(node99, MAT_Vector3(3138.650747, 1841.569624, 663.31738), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node99, "osd/tz/tz_scout2v1.osd")
  Body_SetFriendOrFoeID(node99, 3)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_vessel", "tz_scout2v1_2")
  Node_AddSon(node82, node100)
  Body_SetCS(node100, MAT_Vector3(3257.925006, 1662.068525, 663.3174), MAT_Vector3(9.274015, 0, 0))
  Node_ParseIniFile(node100, "osd/tz/tz_scout2v1.osd")
  Body_SetFriendOrFoeID(node100, 3)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_vessel", "tz_scout2v1_3")
  Node_AddSon(node82, node101)
  Body_SetCS(node101, MAT_Vector3(3376.257996, 2484.598516, 663.3174), MAT_Vector3(-154.145364, 0, 0))
  Node_ParseIniFile(node101, "osd/tz/tz_scout2v1.osd")
  Body_SetFriendOrFoeID(node101, 3)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_vessel", "tz_scout2v1_4")
  Node_AddSon(node82, node102)
  Body_SetCS(node102, MAT_Vector3(2766.116694, 2001.806492, 663.3174), MAT_Vector3(-84.811115, 0, 0))
  Node_ParseIniFile(node102, "osd/tz/tz_scout2v1.osd")
  Body_SetFriendOrFoeID(node102, 3)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_vessel", "tz_scout2v1_5")
  Node_AddSon(node82, node103)
  Body_SetCS(node103, MAT_Vector3(2802.368927, 2365.973084, 663.3174), MAT_Vector3(-107.201681, 0, 0))
  Node_ParseIniFile(node103, "osd/tz/tz_scout2v1.osd")
  Body_SetFriendOrFoeID(node103, 3)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_vessel", "tz_bomber_1")
  Node_AddSon(node82, node104)
  Body_SetCS(node104, MAT_Vector3(2773.336491, 2204.735162, 616.053832), MAT_Vector3(-94.742591, 0, 0))
  Node_ParseIniFile(node104, "osd/tz/tz_bomber.osd")
  Body_SetFriendOrFoeID(node104, 3)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_vessel", "tz_scout2v2_1")
  Node_AddSon(node82, node105)
  Body_SetCS(node105, MAT_Vector3(2797.355393, 2251.219488, 612.832802), MAT_Vector3(-89.784021, 0, 0))
  Node_ParseIniFile(node105, "osd/tz/tz_scout2v2.osd")
  Body_SetFriendOrFoeID(node105, 3)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_vessel", "tz_scout2v2_2")
  Node_AddSon(node82, node106)
  Body_SetCS(node106, MAT_Vector3(2794.604858, 2154.150939, 616.053832), MAT_Vector3(-113.14888, 0, 0))
  Node_ParseIniFile(node106, "osd/tz/tz_scout2v2.osd")
  Body_SetFriendOrFoeID(node106, 3)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_vessel", "tz_scout1v2_6")
  Node_AddSon(node82, node107)
  Body_SetCS(node107, MAT_Vector3(3540.140191, 1795.239821, 633.407836), MAT_Vector3(47.778916, 0, 0))
  Node_ParseIniFile(node107, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node107, 3)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_vessel", "tz_scout1v2_7")
  Node_AddSon(node82, node108)
  Body_SetCS(node108, MAT_Vector3(3215.384042, 2579.378022, 633.4078), MAT_Vector3(-176.449002, 0, 0))
  Node_ParseIniFile(node108, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node108, 3)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_vessel", "tz_scout1v2_8")
  Node_AddSon(node82, node109)
  Body_SetCS(node109, MAT_Vector3(2741.830767, 2049.140091, 633.4078), MAT_Vector3(-80.392397, 0, 0))
  Node_ParseIniFile(node109, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node109, 3)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_vessel", "tz_scout2v1_6")
  Node_AddSon(node82, node110)
  Body_SetCS(node110, MAT_Vector3(3598.263578, 1822.194096, 657.335487), MAT_Vector3(45.784057, 0, 0))
  Node_ParseIniFile(node110, "osd/tz/tz_scout2v1.osd")
  Body_SetFriendOrFoeID(node110, 3)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_vessel", "tz_scout2v1_7")
  Node_AddSon(node82, node111)
  Body_SetCS(node111, MAT_Vector3(3132.977282, 2566.180376, 657.3355), MAT_Vector3(-173.682252, 0, 0))
  Node_ParseIniFile(node111, "osd/tz/tz_scout2v1.osd")
  Body_SetFriendOrFoeID(node111, 3)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_vessel", "tz_scout2v1_8")
  Node_AddSon(node82, node112)
  Body_SetCS(node112, MAT_Vector3(2743.269851, 2099.712352, 657.3355), MAT_Vector3(-92.814548, 0, 0))
  Node_ParseIniFile(node112, "osd/tz/tz_scout2v1.osd")
  Body_SetFriendOrFoeID(node112, 3)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_vessel", "tz_bomber_2")
  Node_AddSon(node82, node113)
  Body_SetCS(node113, MAT_Vector3(3259.398518, 2516.637489, 616.0538), MAT_Vector3(-179.632921, 0, 0))
  Node_ParseIniFile(node113, "osd/tz/tz_bomber.osd")
  Body_SetFriendOrFoeID(node113, 3)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_vessel", "tz_scout2v2_3")
  Node_AddSon(node82, node114)
  Body_SetCS(node114, MAT_Vector3(3203.753241, 2536.904893, 612.8328), MAT_Vector3(-155.415745, 0, 0))
  Node_ParseIniFile(node114, "osd/tz/tz_scout2v2.osd")
  Body_SetFriendOrFoeID(node114, 3)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_vessel", "tz_scout2v2_4")
  Node_AddSon(node82, node115)
  Body_SetCS(node115, MAT_Vector3(3295.848658, 2542.154979, 616.0538), MAT_Vector3(-175.692523, 0, 0))
  Node_ParseIniFile(node115, "osd/tz/tz_scout2v2.osd")
  Body_SetFriendOrFoeID(node115, 3)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_vessel", "tz_scout1v2_9")
  Node_AddSon(node82, node116)
  Body_SetCS(node116, MAT_Vector3(2899.530319, 2478.567375, 633.4078), MAT_Vector3(-112.164791, 0, 0))
  Node_ParseIniFile(node116, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node116, 3)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_vessel", "tz_scout1v2_10")
  Node_AddSon(node82, node117)
  Body_SetCS(node117, MAT_Vector3(2802.693678, 2371.102301, 633.4078), MAT_Vector3(-112.1648, 0, 0))
  Node_ParseIniFile(node117, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node117, 3)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_vessel", "tz_scout2v1_9")
  Node_AddSon(node82, node118)
  Body_SetCS(node118, MAT_Vector3(2867.003312, 2441.798214, 657.3355), MAT_Vector3(-100.13128, 0, 0))
  Node_ParseIniFile(node118, "osd/tz/tz_scout2v1.osd")
  Body_SetFriendOrFoeID(node118, 3)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_vessel", "tz_scout2v1_10")
  Node_AddSon(node82, node119)
  Body_SetCS(node119, MAT_Vector3(2836.2988, 2381.570531, 657.3355), MAT_Vector3(-100.1313, 0, 0))
  Node_ParseIniFile(node119, "osd/tz/tz_scout2v1.osd")
  Body_SetFriendOrFoeID(node119, 3)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_vessel", "tz_scout2v2_5")
  Node_AddSon(node82, node120)
  Body_SetCS(node120, MAT_Vector3(2940.388843, 2518.536385, 616.0538), MAT_Vector3(-164.878963, 0, 0))
  Node_ParseIniFile(node120, "osd/tz/tz_scout2v2.osd")
  Body_SetFriendOrFoeID(node120, 3)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_vessel", "tz_fregatte_1")
  Node_AddSon(node82, node121)
  Body_SetCS(node121, MAT_Vector3(3240.221887, 2021.22303, 635), MAT_Vector3(-30.43001, 0, 0))
  Node_ParseIniFile(node121, "osd/tz/tz_fregatte.osd")
  Body_SetFriendOrFoeID(node121, 3)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_vessel", "tz_scout2v2_6")
  Node_AddSon(node82, node122)
  Body_SetCS(node122, MAT_Vector3(3171.851428, 2034.35439, 616.0538), MAT_Vector3(-38.57901, 0, 0))
  Node_ParseIniFile(node122, "osd/tz/tz_scout2v2.osd")
  Body_SetFriendOrFoeID(node122, 3)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_vessel", "tz_scout2v2_7")
  Node_AddSon(node82, node123)
  Body_SetCS(node123, MAT_Vector3(3280.496629, 1970.583739, 616.0538), MAT_Vector3(-27.538114, 0, 0))
  Node_ParseIniFile(node123, "osd/tz/tz_scout2v2.osd")
  Body_SetFriendOrFoeID(node123, 3)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_vessel", "tz_scout2v2_8")
  Node_AddSon(node82, node124)
  Body_SetCS(node124, MAT_Vector3(3223.495588, 2014.86797, 671.851322), MAT_Vector3(-27.53811, 0, 0))
  Node_ParseIniFile(node124, "osd/tz/tz_scout2v2.osd")
  Body_SetFriendOrFoeID(node124, 3)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_vessel", "tz_scout2v2_9")
  Node_AddSon(node82, node125)
  Body_SetCS(node125, MAT_Vector3(3190.429939, 2070.371745, 633.490504), MAT_Vector3(-27.53811, 0, 0))
  Node_ParseIniFile(node125, "osd/tz/tz_scout2v2.osd")
  Body_SetFriendOrFoeID(node125, 3)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_vessel", "tz_scout2v2_10")
  Node_AddSon(node82, node126)
  Body_SetCS(node126, MAT_Vector3(3180.982554, 1973.535678, 633.4905), MAT_Vector3(-27.53811, 0, 0))
  Node_ParseIniFile(node126, "osd/tz/tz_scout2v2.osd")
  Body_SetFriendOrFoeID(node126, 3)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, -1, 0)
  Body_SetCargoKey(node126, -1, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node127)
  Camera_SetBackPlane(node127, 512)
  Node_EnterSimulation(node127)
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
    if not (o4213.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "track3")
  Game_MissionEnd(GetGameNode(), 1)
end, SetStateValue = function(L0)
  if not (o2.Value == L0) then
    o2["Value"] = L0
    if not (L0 ~= 1) then
      o2.ChangeTo1()
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
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1424, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1424, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1424, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1424, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1424, "Code5")
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
S_o1462 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1462, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1462, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1462, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1462, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1462, "Code5")
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
S_o1500 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1500, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1500, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1500, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1500, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1500, "Code5")
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
S_o1538 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1538, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1538, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1538, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1538, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1538, "Code5")
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
S_o1576 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1576, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1576, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1576, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1576, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1576, "Code5")
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
S_o1614 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1614, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1614, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1614, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1614, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1614, "Code5")
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
S_o1652 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1652, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1652, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1652, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1652, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1652, "Code5")
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
S_o1690 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1690, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1690, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1690, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1690, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1690, "Code5")
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
S_o1728 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1728, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1728, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1728, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1728, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1728, "Code5")
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
S_o1766 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1766, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1766, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1766, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1766, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1766, "Code5")
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
S_o1804 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1804, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1804, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1804, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1804, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1804, "Code5")
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
S_o1842 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1842, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1842, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1842, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 180)
  CallFunction(o1842, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1842, "Code5")
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
S_o1880 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1880, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1880, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1880, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1880, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1880, "Code5")
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
S_o1918 = { [nil] = {}, Start = function(L0)

end }
S_o1952 = { [nil] = {}, Start = function(L0)

end }
S_o1986 = { [nil] = {}, Start = function(L0)

end }
S_o2020 = { [nil] = {}, Start = function(L0)

end }
S_o2054 = { [nil] = {}, Start = function(L0)

end }
S_o2116 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_plasmagatlin", 1)
  Body_AddItem(L0.Node, "ammo_energy", 1000)
  Body_AddItem(L0.Node, "device_generator2", 1000)
  Body_AddItem(L0.Node, "gun_doommortar", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "torpedo_maneater", 4)
  Body_AddItem(L0.Node, "torpedo_bullshark", 4)
  Body_AddItem(L0.Node, "device_repair2", 1)
  Body_AddItem(L0.Node, "device_booster", 2000)
  Body_AddItem(L0.Node, "buzzer_normal", 6)
  CallFunction(o2116, "Code10")
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
o2121 = { [nil] = {}, GetCalculated = function()
  if not (o2155.Value ~= True) then
    if not (o2203.Value ~= True) then
      if not (o2251.Value ~= True) then
        if not (o2299.Value ~= True) then
          if not (o2347.Value ~= True) then
            if not (o2395.Value ~= True) then
              if not (o2443.Value ~= True) then
                if not (o2491.Value ~= True) then
                  if not (o2539.Value ~= True) then
                    if not (o2587.Value ~= True) then
                      if not (o2635.Value ~= True) then
                        if not (o2683.Value ~= True) then
                          if not (o2731.Value ~= True) then
                            if not (o2779.Value ~= True) then
                              if not (o2827.Value ~= True) then
                                if not (o2875.Value ~= True) then
                                  if not (o2923.Value ~= True) then
                                    if not (o2731.Value ~= True) then
                                      if not (o2779.Value ~= True) then
                                        if not (o2827.Value ~= True) then
                                          if not (o2875.Value ~= True) then
                                            if not (o2923.Value ~= True) then
                                              if not (o2971.Value ~= True) then
                                                if not (o3019.Value ~= True) then
                                                  if not (o3067.Value ~= True) then
                                                    if not (o3115.Value ~= True) then
                                                      if not (o3163.Value ~= True) then
                                                        if not (o3211.Value ~= True) then
                                                          if not (o3259.Value ~= True) then
                                                            if not (o3307.Value ~= True) then
                                                              if not (o3355.Value ~= True) then
                                                                if not (o3403.Value ~= True) then
                                                                  if not (o3451.Value ~= True) then
                                                                    if not (o3499.Value ~= True) then
                                                                      if not (o3547.Value ~= True) then
                                                                        if not (o3595.Value ~= True) then
                                                                          if not (o3643.Value ~= True) then
                                                                            if not (o3691.Value ~= True) then
                                                                              if not (o3739.Value ~= True) then
                                                                                if not (o3787.Value ~= True) then
                                                                                  if not (o3835.Value ~= True) then
                                                                                    if not (o3883.Value ~= True) then
                                                                                      if not (o3930.Value ~= True) then
                                                                                        if not (o3978.Value ~= True) then
                                                                                          if not (o4026.Value ~= True) then
                                                                                            if not (o4074.Value ~= True) then
                                                                                              if not (o4122.Value ~= True) then
                                                                                                if not (o4170.Value ~= True) then
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
end, ReCalculate = function()
  o2121.SetStateValue(o2121.GetCalculated())
end, StartCalculate = function()
  o2121["Value"] = o2121.GetCalculated()
  o2122.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2121.Value == L0) then
    DelayedFunction(2.5, o2121, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2121.Value == L0) then
    o2121["Value"] = L0
    o2122.ReCalculate()
  end
end }
o2122 = { [nil] = {}, GetCalculated = function()
  if not (o2121.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2122.SetStateValue(o2122.GetCalculated())
end, StartCalculate = function()
  o2122["Value"] = o2122.GetCalculated()
  o4213.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2122.Value == L0) then
    o2122["Value"] = L0
    o4213.ReCalculate()
  end
end }
S_o2150 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "agressive")
  SED_SetTaskTextKey(9100, -1, -1)
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2150, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2150, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code5")
  else
    CallFunction(o2150, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o2150, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Born = function(L0, L1)
  o2154.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o2155.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
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
  o3927.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2154.Value == L0) then
    o2154["Value"] = L0
    o3927.ReCalculate()
  end
end }
o2155 = { [nil] = {}, Start = function()
  o2155["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2155.Value == L0) then
    o2155["Value"] = L0
    o2121.ReCalculate()
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
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2198, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2203.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2203 = { [nil] = {}, Start = function()
  o2203["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2203.Value == L0) then
    o2203["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o2246 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2246, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2246, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2246, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2246, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2251.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2251 = { [nil] = {}, Start = function()
  o2251["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2251.Value == L0) then
    o2251["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o2294 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2294, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2294, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2294, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2294, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2299.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2299 = { [nil] = {}, Start = function()
  o2299["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2299.Value == L0) then
    o2299["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o2342 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2342, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2342, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2342, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2342, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2347.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2347 = { [nil] = {}, Start = function()
  o2347["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2347.Value == L0) then
    o2347["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o2390 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2390, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2390, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2390, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2390, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2395.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2395 = { [nil] = {}, Start = function()
  o2395["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2395.Value == L0) then
    o2395["Value"] = L0
    o2121.ReCalculate()
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
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2438, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2438, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2443.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2440.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2440 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2440.SetStateValue(o2440.GetCalculated())
end, StartCalculate = function()
  o2440["Value"] = o2440.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2440.Value == L0) then
    DelayedFunction(30.457465, o2440, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2440.Value == L0) then
    o2440["Value"] = L0
    CallFunction(o2438, "ProcesseStateChange")
  end
end }
o2443 = { [nil] = {}, Start = function()
  o2443["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2443.Value == L0) then
    o2443["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o2486 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2486, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2486, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2486, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2486, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2491.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
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
  if not (o2634.Value ~= True) then
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
    DelayedFunction(30.45746, o2488, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2488.Value == L0) then
    o2488["Value"] = L0
    CallFunction(o2486, "ProcesseStateChange")
  end
end }
o2491 = { [nil] = {}, Start = function()
  o2491["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2491.Value == L0) then
    o2491["Value"] = L0
    o2121.ReCalculate()
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
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2534, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2534, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2539.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2536.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2536 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2536.SetStateValue(o2536.GetCalculated())
end, StartCalculate = function()
  o2536["Value"] = o2536.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2536.Value == L0) then
    DelayedFunction(30.45746, o2536, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2536.Value == L0) then
    o2536["Value"] = L0
    CallFunction(o2534, "ProcesseStateChange")
  end
end }
o2539 = { [nil] = {}, Start = function()
  o2539["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2539.Value == L0) then
    o2539["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o2582 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2582, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2582, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2582, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2582, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2587.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
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
  if not (o2634.Value ~= True) then
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
    DelayedFunction(30.45746, o2584, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2584.Value == L0) then
    o2584["Value"] = L0
    CallFunction(o2582, "ProcesseStateChange")
  end
end }
o2587 = { [nil] = {}, Start = function()
  o2587["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2587.Value == L0) then
    o2587["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o2630 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2630, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2630, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2630, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2630, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Born = function(L0, L1)
  o2634.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o2635.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2634 = { [nil] = {}, Start = function()
  o2634["Value"] = False
  o2440.StartCalculate()
  o2488.StartCalculate()
  o2536.StartCalculate()
  o2584.StartCalculate()
  o2968.StartCalculate()
  o3016.StartCalculate()
  o3064.StartCalculate()
  o3112.StartCalculate()
  o3160.StartCalculate()
  o3208.StartCalculate()
  o3256.StartCalculate()
  o3304.StartCalculate()
  o3352.StartCalculate()
  o3400.StartCalculate()
  o3448.StartCalculate()
  o3496.StartCalculate()
  o3544.StartCalculate()
  o3592.StartCalculate()
  o3640.StartCalculate()
  o3688.StartCalculate()
  o3736.StartCalculate()
  o3784.StartCalculate()
  o3832.StartCalculate()
  o3880.StartCalculate()
  o3975.StartCalculate()
  o4023.StartCalculate()
  o4071.StartCalculate()
  o4119.StartCalculate()
  o4167.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2634.Value == L0) then
    o2634["Value"] = L0
    o2440.ReCalculate()
    o2488.ReCalculate()
    o2536.ReCalculate()
    o2584.ReCalculate()
    o2968.ReCalculate()
    o3016.ReCalculate()
    o3064.ReCalculate()
    o3112.ReCalculate()
    o3160.ReCalculate()
    o3208.ReCalculate()
    o3256.ReCalculate()
    o3304.ReCalculate()
    o3352.ReCalculate()
    o3400.ReCalculate()
    o3448.ReCalculate()
    o3496.ReCalculate()
    o3544.ReCalculate()
    o3592.ReCalculate()
    o3640.ReCalculate()
    o3688.ReCalculate()
    o3736.ReCalculate()
    o3784.ReCalculate()
    o3832.ReCalculate()
    o3880.ReCalculate()
    o3975.ReCalculate()
    o4023.ReCalculate()
    o4071.ReCalculate()
    o4119.ReCalculate()
    o4167.ReCalculate()
  end
end }
o2635 = { [nil] = {}, Start = function()
  o2635["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2635.Value == L0) then
    o2635["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o2678 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2678, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2678, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2678, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2678, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2683.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2683 = { [nil] = {}, Start = function()
  o2683["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2683.Value == L0) then
    o2683["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o2726 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2726, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2726, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2726, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2726, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2731.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2731 = { [nil] = {}, Start = function()
  o2731["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2731.Value == L0) then
    o2731["Value"] = L0
    o2121.ReCalculate()
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
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2774, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2774, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2779.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2779 = { [nil] = {}, Start = function()
  o2779["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2779.Value == L0) then
    o2779["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o2822 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2822, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2822, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2822, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2822, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2827.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2827 = { [nil] = {}, Start = function()
  o2827["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2827.Value == L0) then
    o2827["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o2870 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2870, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2870, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2870, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2870, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2875.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2875 = { [nil] = {}, Start = function()
  o2875["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2875.Value == L0) then
    o2875["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o2918 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2918, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2918, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2918, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2918, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2923.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2923 = { [nil] = {}, Start = function()
  o2923["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2923.Value == L0) then
    o2923["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o2966 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2966, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2966, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2966, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2966, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o2971.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2968.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2968 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2968.SetStateValue(o2968.GetCalculated())
end, StartCalculate = function()
  o2968["Value"] = o2968.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2968.Value == L0) then
    DelayedFunction(35.8974, o2968, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2968.Value == L0) then
    o2968["Value"] = L0
    CallFunction(o2966, "ProcesseStateChange")
  end
end }
o2971 = { [nil] = {}, Start = function()
  o2971["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2971.Value == L0) then
    o2971["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o3014 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3014, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3014, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3014, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3014, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3019.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3016.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3016 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3016.SetStateValue(o3016.GetCalculated())
end, StartCalculate = function()
  o3016["Value"] = o3016.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3016.Value == L0) then
    DelayedFunction(35.8974, o3016, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3016.Value == L0) then
    o3016["Value"] = L0
    CallFunction(o3014, "ProcesseStateChange")
  end
end }
o3019 = { [nil] = {}, Start = function()
  o3019["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3019.Value == L0) then
    o3019["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o3062 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3062, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3062, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3062, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3062, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3067.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3064.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3064 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3064.SetStateValue(o3064.GetCalculated())
end, StartCalculate = function()
  o3064["Value"] = o3064.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3064.Value == L0) then
    DelayedFunction(35.8974, o3064, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3064.Value == L0) then
    o3064["Value"] = L0
    CallFunction(o3062, "ProcesseStateChange")
  end
end }
o3067 = { [nil] = {}, Start = function()
  o3067["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3067.Value == L0) then
    o3067["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o3110 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3110, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3110, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3110, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3110, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3115.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3112.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3112 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3112.SetStateValue(o3112.GetCalculated())
end, StartCalculate = function()
  o3112["Value"] = o3112.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3112.Value == L0) then
    DelayedFunction(80, o3112, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3112.Value == L0) then
    o3112["Value"] = L0
    CallFunction(o3110, "ProcesseStateChange")
  end
end }
o3115 = { [nil] = {}, Start = function()
  o3115["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3115.Value == L0) then
    o3115["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o3158 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3158, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3158, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3158, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3158, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3163.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3160.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3160 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3160.SetStateValue(o3160.GetCalculated())
end, StartCalculate = function()
  o3160["Value"] = o3160.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3160.Value == L0) then
    DelayedFunction(80, o3160, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3160.Value == L0) then
    o3160["Value"] = L0
    CallFunction(o3158, "ProcesseStateChange")
  end
end }
o3163 = { [nil] = {}, Start = function()
  o3163["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3163.Value == L0) then
    o3163["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o3206 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3206, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3206, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3206, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3206, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3211.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3208.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3208 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3208.SetStateValue(o3208.GetCalculated())
end, StartCalculate = function()
  o3208["Value"] = o3208.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3208.Value == L0) then
    DelayedFunction(80, o3208, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3208.Value == L0) then
    o3208["Value"] = L0
    CallFunction(o3206, "ProcesseStateChange")
  end
end }
o3211 = { [nil] = {}, Start = function()
  o3211["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3211.Value == L0) then
    o3211["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o3254 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3254, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3254, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3254, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3254, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3259.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3256.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3256 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3256.SetStateValue(o3256.GetCalculated())
end, StartCalculate = function()
  o3256["Value"] = o3256.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3256.Value == L0) then
    DelayedFunction(100, o3256, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3256.Value == L0) then
    o3256["Value"] = L0
    CallFunction(o3254, "ProcesseStateChange")
  end
end }
o3259 = { [nil] = {}, Start = function()
  o3259["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3259.Value == L0) then
    o3259["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o3302 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3302, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3302, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3302, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3302, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3307.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
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
  if not (o2634.Value ~= True) then
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
    DelayedFunction(110, o3304, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3304.Value == L0) then
    o3304["Value"] = L0
    CallFunction(o3302, "ProcesseStateChange")
  end
end }
o3307 = { [nil] = {}, Start = function()
  o3307["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3307.Value == L0) then
    o3307["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o3350 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3350, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3350, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3350, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3350, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3355.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3352.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3352 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3352.SetStateValue(o3352.GetCalculated())
end, StartCalculate = function()
  o3352["Value"] = o3352.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3352.Value == L0) then
    DelayedFunction(120, o3352, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3352.Value == L0) then
    o3352["Value"] = L0
    CallFunction(o3350, "ProcesseStateChange")
  end
end }
o3355 = { [nil] = {}, Start = function()
  o3355["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3355.Value == L0) then
    o3355["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o3398 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3398, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3398, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3398, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3398, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3403.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3400.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3400 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3400.SetStateValue(o3400.GetCalculated())
end, StartCalculate = function()
  o3400["Value"] = o3400.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3400.Value == L0) then
    DelayedFunction(100, o3400, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3400.Value == L0) then
    o3400["Value"] = L0
    CallFunction(o3398, "ProcesseStateChange")
  end
end }
o3403 = { [nil] = {}, Start = function()
  o3403["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3403.Value == L0) then
    o3403["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o3446 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3446, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3446, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3446, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3446, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3451.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3448.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3448 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3448.SetStateValue(o3448.GetCalculated())
end, StartCalculate = function()
  o3448["Value"] = o3448.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3448.Value == L0) then
    DelayedFunction(110, o3448, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3448.Value == L0) then
    o3448["Value"] = L0
    CallFunction(o3446, "ProcesseStateChange")
  end
end }
o3451 = { [nil] = {}, Start = function()
  o3451["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3451.Value == L0) then
    o3451["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o3494 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3494, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3494, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3494, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3494, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3499.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3496.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3496 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3496.SetStateValue(o3496.GetCalculated())
end, StartCalculate = function()
  o3496["Value"] = o3496.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3496.Value == L0) then
    DelayedFunction(120, o3496, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3496.Value == L0) then
    o3496["Value"] = L0
    CallFunction(o3494, "ProcesseStateChange")
  end
end }
o3499 = { [nil] = {}, Start = function()
  o3499["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3499.Value == L0) then
    o3499["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o3542 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3542, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3542, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3542, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3542, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3547.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3544.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3544 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3544.SetStateValue(o3544.GetCalculated())
end, StartCalculate = function()
  o3544["Value"] = o3544.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3544.Value == L0) then
    DelayedFunction(160, o3544, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3544.Value == L0) then
    o3544["Value"] = L0
    CallFunction(o3542, "ProcesseStateChange")
  end
end }
o3547 = { [nil] = {}, Start = function()
  o3547["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3547.Value == L0) then
    o3547["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o3590 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3590, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3590, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3590, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3590, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3595.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3592.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3592 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3592.SetStateValue(o3592.GetCalculated())
end, StartCalculate = function()
  o3592["Value"] = o3592.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3592.Value == L0) then
    DelayedFunction(160, o3592, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3592.Value == L0) then
    o3592["Value"] = L0
    CallFunction(o3590, "ProcesseStateChange")
  end
end }
o3595 = { [nil] = {}, Start = function()
  o3595["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3595.Value == L0) then
    o3595["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o3638 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3638, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3638, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3638, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3638, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3643.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3640.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3640 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3640.SetStateValue(o3640.GetCalculated())
end, StartCalculate = function()
  o3640["Value"] = o3640.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3640.Value == L0) then
    DelayedFunction(160, o3640, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3640.Value == L0) then
    o3640["Value"] = L0
    CallFunction(o3638, "ProcesseStateChange")
  end
end }
o3643 = { [nil] = {}, Start = function()
  o3643["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3643.Value == L0) then
    o3643["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o3686 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3686, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3686, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3686, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3686, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3691.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3688.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3688 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3688.SetStateValue(o3688.GetCalculated())
end, StartCalculate = function()
  o3688["Value"] = o3688.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3688.Value == L0) then
    DelayedFunction(180, o3688, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3688.Value == L0) then
    o3688["Value"] = L0
    CallFunction(o3686, "ProcesseStateChange")
  end
end }
o3691 = { [nil] = {}, Start = function()
  o3691["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3691.Value == L0) then
    o3691["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o3734 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3734, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3734, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3734, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3734, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3739.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3736.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3736 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3736.SetStateValue(o3736.GetCalculated())
end, StartCalculate = function()
  o3736["Value"] = o3736.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3736.Value == L0) then
    DelayedFunction(180, o3736, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3736.Value == L0) then
    o3736["Value"] = L0
    CallFunction(o3734, "ProcesseStateChange")
  end
end }
o3739 = { [nil] = {}, Start = function()
  o3739["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3739.Value == L0) then
    o3739["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o3782 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3782, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3782, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3782, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3782, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3787.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3784.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3784 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3784.SetStateValue(o3784.GetCalculated())
end, StartCalculate = function()
  o3784["Value"] = o3784.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3784.Value == L0) then
    DelayedFunction(180, o3784, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3784.Value == L0) then
    o3784["Value"] = L0
    CallFunction(o3782, "ProcesseStateChange")
  end
end }
o3787 = { [nil] = {}, Start = function()
  o3787["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3787.Value == L0) then
    o3787["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o3830 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3830, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3830, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3830, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3830, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3835.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3832.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3832 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3832.SetStateValue(o3832.GetCalculated())
end, StartCalculate = function()
  o3832["Value"] = o3832.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3832.Value == L0) then
    DelayedFunction(180, o3832, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3832.Value == L0) then
    o3832["Value"] = L0
    CallFunction(o3830, "ProcesseStateChange")
  end
end }
o3835 = { [nil] = {}, Start = function()
  o3835["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3835.Value == L0) then
    o3835["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o3878 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3878, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3878, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3878, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3878, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3883.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3880.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3880 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3880.SetStateValue(o3880.GetCalculated())
end, StartCalculate = function()
  o3880["Value"] = o3880.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3880.Value == L0) then
    DelayedFunction(185, o3880, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3880.Value == L0) then
    o3880["Value"] = L0
    CallFunction(o3878, "ProcesseStateChange")
  end
end }
o3883 = { [nil] = {}, Start = function()
  o3883["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3883.Value == L0) then
    o3883["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o3926 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3926, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3926, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3926, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o3926, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3930.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3927.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3927 = { [nil] = {}, GetCalculated = function()
  if not (o2154.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3927.SetStateValue(o3927.GetCalculated())
end, StartCalculate = function()
  o3927["Value"] = o3927.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3927.Value == L0) then
    DelayedFunction(210, o3927, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3927.Value == L0) then
    o3927["Value"] = L0
    CallFunction(o3926, "ProcesseStateChange")
  end
end }
o3930 = { [nil] = {}, Start = function()
  o3930["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3930.Value == L0) then
    o3930["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o3973 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3973, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3973, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3973, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3973, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3978.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3975.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3975 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3975.SetStateValue(o3975.GetCalculated())
end, StartCalculate = function()
  o3975["Value"] = o3975.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3975.Value == L0) then
    DelayedFunction(210, o3975, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3975.Value == L0) then
    o3975["Value"] = L0
    CallFunction(o3973, "ProcesseStateChange")
  end
end }
o3978 = { [nil] = {}, Start = function()
  o3978["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3978.Value == L0) then
    o3978["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o4021 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4021, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4021, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4021, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4021, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o4026.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4023.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4023 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4023.SetStateValue(o4023.GetCalculated())
end, StartCalculate = function()
  o4023["Value"] = o4023.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4023.Value == L0) then
    DelayedFunction(212.86556, o4023, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4023.Value == L0) then
    o4023["Value"] = L0
    CallFunction(o4021, "ProcesseStateChange")
  end
end }
o4026 = { [nil] = {}, Start = function()
  o4026["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4026.Value == L0) then
    o4026["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o4069 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4069, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4069, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4069, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4069, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o4074.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4071.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4071 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4071.SetStateValue(o4071.GetCalculated())
end, StartCalculate = function()
  o4071["Value"] = o4071.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4071.Value == L0) then
    DelayedFunction(210.748657, o4071, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4071.Value == L0) then
    o4071["Value"] = L0
    CallFunction(o4069, "ProcesseStateChange")
  end
end }
o4074 = { [nil] = {}, Start = function()
  o4074["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4074.Value == L0) then
    o4074["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o4117 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4117, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4117, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4117, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4117, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o4122.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4119.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4119 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4119.SetStateValue(o4119.GetCalculated())
end, StartCalculate = function()
  o4119["Value"] = o4119.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4119.Value == L0) then
    DelayedFunction(213.157457, o4119, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4119.Value == L0) then
    o4119["Value"] = L0
    CallFunction(o4117, "ProcesseStateChange")
  end
end }
o4122 = { [nil] = {}, Start = function()
  o4122["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4122.Value == L0) then
    o4122["Value"] = L0
    o2121.ReCalculate()
  end
end }
S_o4165 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4165, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4165, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4165, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4165, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o4170.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
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
o4167 = { [nil] = {}, GetCalculated = function()
  if not (o2634.Value ~= True) then
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
    DelayedFunction(212.1575, o4167, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4167.Value == L0) then
    o4167["Value"] = L0
    CallFunction(o4165, "ProcesseStateChange")
  end
end }
o4170 = { [nil] = {}, Start = function()
  o4170["Value"] = False
  o2121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4170.Value == L0) then
    o4170["Value"] = L0
    o2121.ReCalculate()
  end
end }
o4213 = { [nil] = {}, GetCalculated = function()
  if not (o2122.Value ~= True) then
    if not (True ~= True) then
      if not (True ~= True) then
        if not (True ~= True) then
          if not (True ~= True) then
            if not (True ~= True) then
              if not (True ~= True) then
                if not (True ~= True) then
                  if not (True ~= True) then
                    if not (True ~= True) then
                      if not (True ~= True) then
                        if not (True ~= True) then
                          if not (True ~= True) then
                            if not (True ~= True) then
                              if not (True ~= True) then
                                if not (True ~= True) then
                                  if not (True ~= True) then
                                    if not (True ~= True) then
                                      if not (True ~= True) then
                                        if not (True ~= True) then
                                          if not (True ~= True) then
                                            if not (True ~= True) then
                                              if not (True ~= True) then
                                                if not (True ~= True) then
                                                  if not (True ~= True) then
                                                    if not (True ~= True) then
                                                      if not (True ~= True) then
                                                        if not (True ~= True) then
                                                          if not (True ~= True) then
                                                            if not (True ~= True) then
                                                              if not (True ~= True) then
                                                                if not (True ~= True) then
                                                                  if not (True ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
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
end, ReCalculate = function()
  o4213.SetStateValue(o4213.GetCalculated())
end, StartCalculate = function()
  o4213["Value"] = o4213.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4213.Value == L0) then
    o4213["Value"] = L0
    o2.ReCalculate()
  end
end }
S_o4241 = { [nil] = {}, Start = function(L0)

end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 127)
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
  o438 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_6", S_o438)
  o472 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_7", S_o472)
  o506 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_8", S_o506)
  o540 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_4", S_o540)
  o574 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_5", S_o574)
  o608 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k3_1", S_o608)
  o642 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf-kn_1", S_o642)
  o676 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf-kn_2", S_o676)
  o710 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf-kn_3", S_o710)
  o744 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern2_1", S_o744)
  o778 = BindEasy(Node_Find("/Scenario_Static/Object"), "Elt_Dock", S_o778)
  o812 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_1", S_o812)
  o846 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_2", S_o846)
  o880 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_1", S_o880)
  o914 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_2", S_o914)
  o948 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_3", S_o948)
  o982 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_4", S_o982)
  o1016 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_4", S_o1016)
  o1050 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_5", S_o1050)
  o1084 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraft1_1", S_o1084)
  o1118 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_1", S_o1118)
  o1152 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_2", S_o1152)
  o1186 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_1", S_o1186)
  o1220 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_2", S_o1220)
  o1254 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_3", S_o1254)
  o1288 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_1", S_o1288)
  o1322 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_2", S_o1322)
  o1356 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock3_1", S_o1356)
  o1390 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker2_1", S_o1390)
  o1424 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_2/Turm1", S_o1424)
  o1462 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_3/Turm1", S_o1462)
  o1500 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_4/Turm1", S_o1500)
  o1538 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_5/Turm1", S_o1538)
  o1576 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_6/Turm1", S_o1576)
  o1614 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_7/Turm1", S_o1614)
  o1652 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_8/Turm1", S_o1652)
  o1690 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_9/Turm1", S_o1690)
  o1728 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_10/Turm1", S_o1728)
  o1766 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_11/Turm1", S_o1766)
  o1804 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_12/Turm1", S_o1804)
  o1842 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_13/Turm1", S_o1842)
  o1880 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_14/Turm1", S_o1880)
  o1918 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_g_1", S_o1918)
  o1952 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus2_1", S_o1952)
  o1986 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai1_1", S_o1986)
  o2020 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kuppel_1", S_o2020)
  o2054 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kuppel_2", S_o2054)
  o2116 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o2116)
  o2150 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v1_1", S_o2150)
  o2154.Start()
  o2155.Start()
  o2198 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v1_2", S_o2198)
  o2203.Start()
  o2246 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v1_3", S_o2246)
  o2251.Start()
  o2294 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v1_4", S_o2294)
  o2299.Start()
  o2342 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v1_5", S_o2342)
  o2347.Start()
  o2390 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v1_6", S_o2390)
  o2395.Start()
  o2438 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v1_7", S_o2438)
  o2443.Start()
  o2486 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v1_8", S_o2486)
  o2491.Start()
  o2534 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v1_9", S_o2534)
  o2539.Start()
  o2582 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v1_10", S_o2582)
  o2587.Start()
  o2630 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_1", S_o2630)
  o2634.Start()
  o2635.Start()
  o2678 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_2", S_o2678)
  o2683.Start()
  o2726 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_3", S_o2726)
  o2731.Start()
  o2774 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_4", S_o2774)
  o2779.Start()
  o2822 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_5", S_o2822)
  o2827.Start()
  o2870 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v1_1", S_o2870)
  o2875.Start()
  o2918 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v1_2", S_o2918)
  o2923.Start()
  o2966 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v1_3", S_o2966)
  o2971.Start()
  o3014 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v1_4", S_o3014)
  o3019.Start()
  o3062 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v1_5", S_o3062)
  o3067.Start()
  o3110 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_bomber_1", S_o3110)
  o3115.Start()
  o3158 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v2_1", S_o3158)
  o3163.Start()
  o3206 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v2_2", S_o3206)
  o3211.Start()
  o3254 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_6", S_o3254)
  o3259.Start()
  o3302 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_7", S_o3302)
  o3307.Start()
  o3350 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_8", S_o3350)
  o3355.Start()
  o3398 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v1_6", S_o3398)
  o3403.Start()
  o3446 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v1_7", S_o3446)
  o3451.Start()
  o3494 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v1_8", S_o3494)
  o3499.Start()
  o3542 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_bomber_2", S_o3542)
  o3547.Start()
  o3590 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v2_3", S_o3590)
  o3595.Start()
  o3638 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v2_4", S_o3638)
  o3643.Start()
  o3686 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_9", S_o3686)
  o3691.Start()
  o3734 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_10", S_o3734)
  o3739.Start()
  o3782 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v1_9", S_o3782)
  o3787.Start()
  o3830 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v1_10", S_o3830)
  o3835.Start()
  o3878 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v2_5", S_o3878)
  o3883.Start()
  o3926 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_fregatte_1", S_o3926)
  o3930.Start()
  o3973 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v2_6", S_o3973)
  o3978.Start()
  o4021 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v2_7", S_o4021)
  o4026.Start()
  o4069 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v2_8", S_o4069)
  o4074.Start()
  o4117 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v2_9", S_o4117)
  o4122.Start()
  o4165 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v2_10", S_o4165)
  o4170.Start()
  o4241 = BindEasy(Node_Find("/"), "Camera", S_o4241)
  Game_LoadProgress_Leave(Node_Find("/"))
end