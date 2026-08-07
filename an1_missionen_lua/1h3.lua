-- dekompiliert aus map\1h3\script\1h3.sco
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
  Terrain_LoadTerrain(node1, "map/1H3/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/1H3/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrain(node0, 0.025, 0.2)
  Game_SetCausticObject(node0, 0.1, 0.2)
  Game_SetCausticBuilding(node0, 0.025, 0.2)
  Game_SetLightCache(node0, "map/Vespucci_new/Lmsh/", "map/Vespucci_new/Ltex/")
  Game_SetTerrainDepth(node0, 3666)
  Game_SetDecompressionHeight(node0, 550)
  Game_SetAmbientLight(node0, 0.019608, 0.086275, 0.141176)
  Game_SetParallelLightT(node0, 0.039216, 0.172549, 0.282353)
  Game_SetParallelLightB(node0, 0.407843, 0.501961, 0.117647)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_1H3_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track02.sam", 1)
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
  node8 = Node_CreateNode("nod_generic", "des_elfnoteNav1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(2003.677, 1585.102, 251.0027), MAT_Vector3(53.18458, 0, 0))
  Node_ParseIniFile(node8, "osd/des/des_elfnote.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "des_elfnoteNav2")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(2757.494, 2548.111, 132.6449), MAT_Vector3(54.77667, -4.8617, 21.52728))
  Node_ParseIniFile(node9, "osd/des/des_elfnote.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "des_ElfStation")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(3472.96, 3344.375, 288), MAT_Vector3(48.83726, 0, 0))
  Node_ParseIniFile(node10, "osd/des/des_industry2.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "pplant2_1")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(3518.624833, 3274.029834, 271.815977), MAT_Vector3(47, 0, 0))
  Node_ParseIniFile(node11, "osd/des/des_pplant2.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "gen_rohrb2_32")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(3185.682, 2244.657, 71.77453), MAT_Vector3(167.4266, 2.109406, -24.64659))
  Node_ParseIniFile(node12, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "gen_rohrb2_33")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(3148.128, 2075.502, 103.3622), MAT_Vector3(168.0949, 18.46298, -23.19896))
  Node_ParseIniFile(node13, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "gen_rohrb2_34")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(3123.486, 1965.688, 127.0664), MAT_Vector3(167.0152, 5.475526, -25.6577))
  Node_ParseIniFile(node14, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "gen_rohrb2_35")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(3084.445, 1798.098, 155.2468), MAT_Vector3(167.0477, 9.488622, -25.17491))
  Node_ParseIniFile(node15, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "gen_rohrb2_36")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(2600.627, 2353.195, 185.4944), MAT_Vector3(140.7124, 19.17642, -25.2795))
  Node_ParseIniFile(node16, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "gen_rohrb2_37")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(2671.645, 2442.094, 159.9785), MAT_Vector3(141.6329, 6.587889, -25.43815))
  Node_ParseIniFile(node17, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "gen_rohrb2_41")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(2229.903, 1883.457, 251.9804), MAT_Vector3(142.9486, -1.31041, -19.54485))
  Node_ParseIniFile(node18, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "gen_rohrb2_42")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(2297.233, 1969.806, 248.4097), MAT_Vector3(142.8759, 4.700004, -19.53731))
  Node_ParseIniFile(node19, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "gen_rohrb2_43")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(3414.462, 1619.03, 121.4928), MAT_Vector3(-90.49594, -13.09138, -31.19953))
  Node_ParseIniFile(node20, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "gen_rohrb2_44")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(3530.082, 1617.807, 99.17778), MAT_Vector3(-90.68643, -8.814804, -31.16188))
  Node_ParseIniFile(node21, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "gen_rohrb2_45")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(3640.016, 1617.064, 83.99861), MAT_Vector3(-90.72851, -6.014681, -31.13654))
  Node_ParseIniFile(node22, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "gen_rohrb2_46")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(2988.209, 1655.265, 177.6787), MAT_Vector3(-122.0097, -29.36823, -20.63841))
  Node_ParseIniFile(node23, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "gen_rohrb2_47")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(2563.969, 1928.332, 256.425), MAT_Vector3(-121.2226, 1.301566, -15.66037))
  Node_ParseIniFile(node24, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "gen_rohrb2_48")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(2426.684, 2019.5, 230.5446), MAT_Vector3(-125.1155, 13.79195, -15.79481))
  Node_ParseIniFile(node25, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_rohrb2_49")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(3828.019, 1198.008, 98.69786), MAT_Vector3(-170.8283, 6.370209, -23.59071))
  Node_ParseIniFile(node26, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "gen_rohrb2_50")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(3846.94, 1089.734, 92.53405), MAT_Vector3(-169.2547, -12.62683, -22.17623))
  Node_ParseIniFile(node27, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "gen_rohrb2_51")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(3280.13, 1034.852, 151.0639), MAT_Vector3(-87.00657, 8.446237, -19.82973))
  Node_ParseIniFile(node28, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "gen_rohrb2_52")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(3489.277, 1039.412, 140.6297), MAT_Vector3(-89.3842, -13.71172, -24.99608))
  Node_ParseIniFile(node29, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "gen_rohrb2_53")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(2312.094, 1392.026, 135.4804), MAT_Vector3(-118.1611, -13.36599, -31.78124))
  Node_ParseIniFile(node30, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "gen_rohrb2_54")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(2044.939, 1558.272, 237.427), MAT_Vector3(-122.0163, -10.99294, -32.59505))
  Node_ParseIniFile(node31, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "gen_rohrb2_55")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(2139.302, 1500.186, 213.3698), MAT_Vector3(-121.4595, -13.45228, -32.44945))
  Node_ParseIniFile(node32, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_rohrb2_56")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(3868.137, 977.6727, 91.18915), MAT_Vector3(-168.1307, 7.65711, -30.18601))
  Node_ParseIniFile(node33, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "gen_rohrb2_57")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(3926.945, 660.5507, 85.03949), MAT_Vector3(-169.9673, 4.008385, -34.71607))
  Node_ParseIniFile(node34, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "gen_rohrb2_58")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(3946.143, 547.5701, 101.6655), MAT_Vector3(-171.3602, 11.63619, -29.60181))
  Node_ParseIniFile(node35, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_rohrb2_59")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(3975.455, 384.9113, 108.9776), MAT_Vector3(-170.2602, -9.832068, -22.25649))
  Node_ParseIniFile(node36, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "gen_rohrb2_60")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(3997.255, 270.3874, 94.62169), MAT_Vector3(-170.0529, -5.427482, -22.41203))
  Node_ParseIniFile(node37, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "gen_rohrb2_61")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(2842.18, 657.2006, 105.6852), MAT_Vector3(168.7764, -9.713175, -22.70582))
  Node_ParseIniFile(node38, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_rohrb2_62")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(1534.869, 998.1156, 200.1454), MAT_Vector3(143.4566, 1.536623, -24.54963))
  Node_ParseIniFile(node39, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_rohrb2_63")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(1458.094, 890.9796, 215.793), MAT_Vector3(145.5905, 25.88961, -37.62617))
  Node_ParseIniFile(node40, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_rohrb2_64")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(1364.622, 759.1725, 240.7698), MAT_Vector3(143.1036, -7.973428, -32.51469))
  Node_ParseIniFile(node41, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_rohrb2_65")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(1537.457, 934.9857, 200.1363), MAT_Vector3(-118.5992, -12.99045, -17.74001))
  Node_ParseIniFile(node42, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_rohrb2_66")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(1875.398, 760.5639, 59.88287), MAT_Vector3(-116.6801, -5.38965, -29.24259))
  Node_ParseIniFile(node43, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_rohrb1_1")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(2965.439, 2816.552, 117.2859), MAT_Vector3(144.2785, 2.078085, -35.03058))
  Node_ParseIniFile(node44, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_rohrb1_2")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(3289.975, 2986.919, 133.6072), MAT_Vector3(-122.21, -0.127337, -16.32781))
  Node_ParseIniFile(node45, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_rohrb1_3")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(3252.23, 3183.774, 167.3642), MAT_Vector3(142.5058, -6.532124, -28.79632))
  Node_ParseIniFile(node46, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "gen_rohrb1_6")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(3365.699, 3115.192, 166.6504), MAT_Vector3(169.6203, -1.17506, -22.2652))
  Node_ParseIniFile(node47, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "gen_rohrb1_7")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(3479.437, 3122.468, 178.6709), MAT_Vector3(-170.7825, -1.107011, -24.8398))
  Node_ParseIniFile(node48, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "gen_rohrb1_8")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(3566.762, 2640.057, 95.32731), MAT_Vector3(-170.8226, -18.78043, -22.55642))
  Node_ParseIniFile(node49, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "gen_rohrb1_9")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(3248.791, 2521.551, 130.971), MAT_Vector3(166.4164, -12.38566, -19.24886))
  Node_ParseIniFile(node50, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_rohrb1_10")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(3210.837, 2361.998, 77.10514), MAT_Vector3(166.4164, -12.38566, -19.24886))
  Node_ParseIniFile(node51, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "gen_rohrb1_11")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(3155.565, 2337.733, 71.43896), MAT_Vector3(-117.2426, -5.886376, -23.81365))
  Node_ParseIniFile(node52, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_rohrb1_12")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(3110.759, 2361.158, 85.88474), MAT_Vector3(-116.8597, -27.60251, -22.13667))
  Node_ParseIniFile(node53, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "gen_rohrb1_13")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(2868.047, 2479.848, 146.1496), MAT_Vector3(-118.6767, 1.661459, -38.79177))
  Node_ParseIniFile(node54, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "gen_rohrb1_40")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(3693.265, 1970.577, 86.99911), MAT_Vector3(-169.9008, 3.023028, -26.4369))
  Node_ParseIniFile(node55, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "gen_rohrb1_41")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(3166.342, 2159.024, 78.94733), MAT_Vector3(167.5685, 10.17405, -19.03147))
  Node_ParseIniFile(node56, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "gen_rohrb1_42")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(3104.842, 1882.096, 139.4724), MAT_Vector3(166.8748, 12.82483, -21.08612))
  Node_ParseIniFile(node57, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "gen_rohrb1_43")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(3065.635, 1712.938, 165.6088), MAT_Vector3(169.0638, 0.622485, -42.05475))
  Node_ParseIniFile(node58, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "gen_rohrb1_44")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(3058.756, 1661.621, 156.884), MAT_Vector3(176.7798, -19.41961, -42.84207))
  Node_ParseIniFile(node59, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "gen_rohrb1_45")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(2724.533, 2509.035, 144.1293), MAT_Vector3(142.4983, 19.54192, -19.79171))
  Node_ParseIniFile(node60, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "gen_rohrb1_48")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(2346.279, 2034.257, 232.6049), MAT_Vector3(143.5077, 22.44989, -8.692739))
  Node_ParseIniFile(node61, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "gen_rohrb1_49")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(3721.952, 1618.136, 79.41664), MAT_Vector3(-87.99467, 2.529037, -29.86867))
  Node_ParseIniFile(node62, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "gen_rohrb1_50")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(2880.467, 1723.27, 219.7369), MAT_Vector3(-122.2171, 2.684457, -23.08131))
  Node_ParseIniFile(node63, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "gen_rohrb1_51")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(2925.234, 1694.366, 213.2864), MAT_Vector3(-122.332, -17.06986, -21.31541))
  Node_ParseIniFile(node64, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "gen_rohrb1_52")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(2493.95, 1972.48, 249.8424), MAT_Vector3(-124.5934, 11.89651, -13.67769))
  Node_ParseIniFile(node65, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "gen_rohrb1_53")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(3755.995, 1570.713, 81.9216), MAT_Vector3(-166.5439, 19.08475, -32.36803))
  Node_ParseIniFile(node66, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "gen_rohrb1_54")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(3359.141, 1038.208, 160.3868), MAT_Vector3(-88.64942, 3.117976, -17.64232))
  Node_ParseIniFile(node67, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "gen_rohrb1_55")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(3409.428, 1038.696, 158.4404), MAT_Vector3(-90.59025, -9.371603, -18.34529))
  Node_ParseIniFile(node68, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "gen_rohrb1_56")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(2636.159, 1202.362, 99.77107), MAT_Vector3(-121.6263, -11.74766, -32.17882))
  Node_ParseIniFile(node69, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "gen_rohrb1_57")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(2242.565, 1433.634, 166.2071), MAT_Vector3(-126.0119, -38.08549, -32.24272))
  Node_ParseIniFile(node70, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "gen_rohrb1_58")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(2204.533, 1459.147, 193.0845), MAT_Vector3(-123.8423, -20.51973, -32.00148))
  Node_ParseIniFile(node71, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "gen_rohrb1_59")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(3885.297, 893.7314, 109.2468), MAT_Vector3(-168.7391, 20.78189, -35.74209))
  Node_ParseIniFile(node72, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "gen_rohrb1_60")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(3894.19, 844.7628, 117.5903), MAT_Vector3(-170.3958, -4.103791, -34.71264))
  Node_ParseIniFile(node73, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "gen_rohrb1_61")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(3901.965, 797.2515, 104.575), MAT_Vector3(-172.012, -25.89303, -33.29503))
  Node_ParseIniFile(node74, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "gen_rohrb1_62")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(3911.062, 748.9818, 87.41717), MAT_Vector3(-170.789, -13.89521, -31.38243))
  Node_ParseIniFile(node75, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "gen_rohrb1_63")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(3960.156, 467.1697, 115.2689), MAT_Vector3(-169.7311, 7.115987, -28.78228))
  Node_ParseIniFile(node76, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "gen_rohrb1_64")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(4013.158, 191.7282, 80.23674), MAT_Vector3(-169.6976, -18.95475, -24.3528))
  Node_ParseIniFile(node77, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "gen_rohrb1_65")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(2858.427, 734.4268, 122.7819), MAT_Vector3(166.0674, -18.29782, -29.82184))
  Node_ParseIniFile(node78, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "gen_rohrb1_66")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(1795.8, 1332.337, 246.7018), MAT_Vector3(144.0258, -1.20593, -31.6491))
  Node_ParseIniFile(node79, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "gen_rohrb1_67")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(1585.366, 1064.974, 198.3263), MAT_Vector3(140.9935, 0.66415, -31.66344))
  Node_ParseIniFile(node80, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_generic", "gen_rohrb1_68")
  Node_AddSon(node7, node81)
  Body_SetCS(node81, MAT_Vector3(1414.042, 827.7158, 244.9026), MAT_Vector3(145.2272, 7.478514, -31.96469))
  Node_ParseIniFile(node81, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_generic", "gen_rohrb1_69")
  Node_AddSon(node7, node82)
  Body_SetCS(node82, MAT_Vector3(2472.36, 447.0562, 75.55351), MAT_Vector3(-116.5689, 9.663746, -17.60395))
  Node_ParseIniFile(node82, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_generic", "gen_rohrb1_70")
  Node_AddSon(node7, node83)
  Body_SetCS(node83, MAT_Vector3(2756.407, 257.2971, 72.0893), MAT_Vector3(171.9161, -0.756896, -24.78396))
  Node_ParseIniFile(node83, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_generic", "gen_rohrb1_71")
  Node_AddSon(node7, node84)
  Body_SetCS(node84, MAT_Vector3(2749.36, 207.8484, 62.47625), MAT_Vector3(170.1204, -19.5941, -21.65238))
  Node_ParseIniFile(node84, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_generic", "gen_rohrb2_1")
  Node_AddSon(node7, node85)
  Body_SetCS(node85, MAT_Vector3(3219.728, 3032.252, 130.6439), MAT_Vector3(-122.7902, 2.89987, -18.70277))
  Node_ParseIniFile(node85, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "gen_rohrb2_2")
  Node_AddSon(node7, node86)
  Body_SetCS(node86, MAT_Vector3(3202.565, 3119.607, 149.7734), MAT_Vector3(142.3612, -14.92453, -37.10867))
  Node_ParseIniFile(node86, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "gen_rohrb2_3")
  Node_AddSon(node7, node87)
  Body_SetCS(node87, MAT_Vector3(3302.067, 3247.939, 172.102), MAT_Vector3(142.1492, -2.160861, -26.42137))
  Node_ParseIniFile(node87, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "gen_rohrb2_5")
  Node_AddSon(node7, node88)
  Body_SetCS(node88, MAT_Vector3(3353.583, 3035.814, 153.2038), MAT_Vector3(172.1026, -13.46366, -21.96833))
  Node_ParseIniFile(node88, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "gen_rohrb2_6")
  Node_AddSon(node7, node89)
  Body_SetCS(node89, MAT_Vector3(3492.324, 3038.557, 168.5408), MAT_Vector3(-171.6475, -8.162088, -26.64918))
  Node_ParseIniFile(node89, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_generic", "gen_rohrb2_7")
  Node_AddSon(node7, node90)
  Body_SetCS(node90, MAT_Vector3(3422.471, 2959.9, 142.9267), MAT_Vector3(-89.60158, 3.770276, -22.25121))
  Node_ParseIniFile(node90, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node90, 0)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_generic", "gen_rohrb2_8")
  Node_AddSon(node7, node91)
  Body_SetCS(node91, MAT_Vector3(3263.797, 2312.239, 71.58052), MAT_Vector3(-92.77269, -0.066525, -23.07005))
  Node_ParseIniFile(node91, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node91, 0)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_generic", "gen_rohrb2_9")
  Node_AddSon(node7, node92)
  Body_SetCS(node92, MAT_Vector3(3264.595, 2602.186, 133.3405), MAT_Vector3(169.4584, 2.96963, -22.03412))
  Node_ParseIniFile(node92, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node92, 0)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "gen_rohrb2_10")
  Node_AddSon(node7, node93)
  Body_SetCS(node93, MAT_Vector3(3229.485, 2440.885, 103.6288), MAT_Vector3(166.6384, -20.80588, -21.20254))
  Node_ParseIniFile(node93, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node93, 0)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_generic", "gen_rohrb2_11")
  Node_AddSon(node7, node94)
  Body_SetCS(node94, MAT_Vector3(3037.865, 2395.937, 117.3356), MAT_Vector3(-114.4108, -17.12818, -16.88812))
  Node_ParseIniFile(node94, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node94, 0)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_generic", "gen_rohrb2_12")
  Node_AddSon(node7, node95)
  Body_SetCS(node95, MAT_Vector3(2939.217, 2443.55, 140.7256), MAT_Vector3(-116.6246, -5.927729, -33.78202))
  Node_ParseIniFile(node95, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node95, 0)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_generic", "gen_rohrb2_13")
  Node_AddSon(node7, node96)
  Body_SetCS(node96, MAT_Vector3(2798.874, 2519.651, 139.4076), MAT_Vector3(-120.6374, 7.630626, -44.27918))
  Node_ParseIniFile(node96, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node96, 0)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_generic", "gen_rohrb3_1")
  Node_AddSon(node7, node97)
  Body_SetCS(node97, MAT_Vector3(3070.987, 2953.831, 120.0464), MAT_Vector3(142.4996, -1.822423, -30.57754))
  Node_ParseIniFile(node97, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node97, 0)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_generic", "gen_rohrb3_3")
  Node_AddSon(node7, node98)
  Body_SetCS(node98, MAT_Vector3(2854.399, 2672.794, 124.0251), MAT_Vector3(141.6939, 2.260882, -29.39006))
  Node_ParseIniFile(node98, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node98, 0)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_generic", "gen_rohrb3_4")
  Node_AddSon(node7, node99)
  Body_SetCS(node99, MAT_Vector3(3304.498, 2797.436, 125.8317), MAT_Vector3(167.8037, 1.900073, -27.02419))
  Node_ParseIniFile(node99, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node99, 0)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_generic", "gen_rohrb3_5")
  Node_AddSon(node7, node100)
  Body_SetCS(node100, MAT_Vector3(3535.853, 2802.387, 127.1799), MAT_Vector3(-169.1299, -9.344867, -30.39173))
  Node_ParseIniFile(node100, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node100, 0)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_generic", "gen_rohrb3_6")
  Node_AddSon(node7, node101)
  Body_SetCS(node101, MAT_Vector3(3598.424, 2465.209, 76.62252), MAT_Vector3(-169.9988, -3.982024, -23.87024))
  Node_ParseIniFile(node101, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node101, 0)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_generic", "gen_rohrb3_7")
  Node_AddSon(node7, node102)
  Body_SetCS(node102, MAT_Vector3(3472.275, 2308.907, 70.6281), MAT_Vector3(-90.57956, -0.834608, -25.25735))
  Node_ParseIniFile(node102, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node102, 0)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_generic", "gen_rohrb3_8")
  Node_AddSon(node7, node103)
  Body_SetCS(node103, MAT_Vector3(3662.639, 2139.292, 73.6082), MAT_Vector3(-169.7737, 4.624408, -32.06691))
  Node_ParseIniFile(node103, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node103, 0)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_generic", "gen_rohrb3_16")
  Node_AddSon(node7, node104)
  Body_SetCS(node104, MAT_Vector3(3721.249, 1792.781, 78.17104), MAT_Vector3(-171.7523, -4.078808, -24.27444))
  Node_ParseIniFile(node104, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node104, 0)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_generic", "gen_rohrb3_17")
  Node_AddSon(node7, node105)
  Body_SetCS(node105, MAT_Vector3(2472.86, 2189.553, 199.3179), MAT_Vector3(141.9999, -1.768845, -20.01325))
  Node_ParseIniFile(node105, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node105, 0)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_generic", "gen_rohrb3_18")
  Node_AddSon(node7, node106)
  Body_SetCS(node106, MAT_Vector3(2101.23, 1714.414, 247.3199), MAT_Vector3(142.3047, -0.931997, -20.00607))
  Node_ParseIniFile(node106, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node106, 0)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_generic", "gen_rohrb3_19")
  Node_AddSon(node7, node107)
  Body_SetCS(node107, MAT_Vector3(3216.585, 1615.389, 137.8583), MAT_Vector3(-88.54997, -1.223163, -26.31451))
  Node_ParseIniFile(node107, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node107, 0)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_generic", "gen_rohrb3_20")
  Node_AddSon(node7, node108)
  Body_SetCS(node108, MAT_Vector3(2739.866, 1815.341, 237.0947), MAT_Vector3(-123.3714, -7.730977, -18.30282))
  Node_ParseIniFile(node108, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node108, 0)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_generic", "gen_rohrb3_21")
  Node_AddSon(node7, node109)
  Body_SetCS(node109, MAT_Vector3(3791.314, 1395.602, 90.91216), MAT_Vector3(-169.336, 0.167547, -23.61712))
  Node_ParseIniFile(node109, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node109, 0)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_generic", "gen_rohrb3_22")
  Node_AddSon(node7, node110)
  Body_SetCS(node110, MAT_Vector3(3083.264, 1030.268, 136.5141), MAT_Vector3(-89.3216, 1.911708, -6.984368))
  Node_ParseIniFile(node110, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node110, 0)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_generic", "gen_rohrb3_23")
  Node_AddSon(node7, node111)
  Body_SetCS(node111, MAT_Vector3(3692.859, 1042.257, 105.0626), MAT_Vector3(-89.06638, -8.286114, -6.83903))
  Node_ParseIniFile(node111, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node111, 0)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_generic", "gen_rohrb3_24")
  Node_AddSon(node7, node112)
  Body_SetCS(node112, MAT_Vector3(2491.901, 1289.946, 113.2002), MAT_Vector3(-120.6022, -3.36277, -20.98763))
  Node_ParseIniFile(node112, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node112, 0)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_generic", "gen_rohrb3_25")
  Node_AddSon(node7, node113)
  Body_SetCS(node113, MAT_Vector3(2789.649, 1109.73, 113.5843), MAT_Vector3(-120.9027, 6.469348, -34.55912))
  Node_ParseIniFile(node113, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node113, 0)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_generic", "gen_rohrb3_26")
  Node_AddSon(node7, node114)
  Body_SetCS(node114, MAT_Vector3(4047.113, 18.96326, 52.07789), MAT_Vector3(-168.9464, -7.506358, -26.38325))
  Node_ParseIniFile(node114, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node114, 0)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_generic", "gen_rohrb3_27")
  Node_AddSon(node7, node115)
  Body_SetCS(node115, MAT_Vector3(2957.949, 1194.213, 124.4869), MAT_Vector3(167.1323, 0.952359, -18.05397))
  Node_ParseIniFile(node115, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node115, 0)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_generic", "gen_rohrb3_28")
  Node_AddSon(node7, node116)
  Body_SetCS(node116, MAT_Vector3(3022.206, 1480.209, 131.1865), MAT_Vector3(167.515, -3.228421, -21.5802))
  Node_ParseIniFile(node116, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node116, 0)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_generic", "gen_rohrb3_29")
  Node_AddSon(node7, node117)
  Body_SetCS(node117, MAT_Vector3(2895.05, 895.3955, 129.4396), MAT_Vector3(167.7308, 0.389424, -25.38352))
  Node_ParseIniFile(node117, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node117, 0)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_generic", "gen_rohrb3_30")
  Node_AddSon(node7, node118)
  Body_SetCS(node118, MAT_Vector3(2796.991, 450.4877, 92.73372), MAT_Vector3(167.0945, -0.951618, -25.38664))
  Node_ParseIniFile(node118, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node118, 0)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_generic", "gen_rohrb3_31")
  Node_AddSon(node7, node119)
  Body_SetCS(node119, MAT_Vector3(1901.423, 1460.712, 247.775), MAT_Vector3(140.3054, -0.667166, -22.88296))
  Node_ParseIniFile(node119, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node119, 0)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_generic", "gen_rohrb3_32")
  Node_AddSon(node7, node120)
  Body_SetCS(node120, MAT_Vector3(1689.676, 1196.02, 221.9775), MAT_Vector3(141.7105, -9.598691, -22.14157))
  Node_ParseIniFile(node120, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node120, 0)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_generic", "gen_rohrb3_33")
  Node_AddSon(node7, node121)
  Body_SetCS(node121, MAT_Vector3(1706.168, 847.0471, 124.4055), MAT_Vector3(-117.2843, -24.66409, -27.86252))
  Node_ParseIniFile(node121, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node121, 0)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_generic", "gen_rohrb3_34")
  Node_AddSon(node7, node122)
  Body_SetCS(node122, MAT_Vector3(2064.481, 661.8792, 51.02648), MAT_Vector3(-118.2932, -1.553702, -21.40841))
  Node_ParseIniFile(node122, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node122, 0)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_generic", "gen_rohrb3_35")
  Node_AddSon(node7, node123)
  Body_SetCS(node123, MAT_Vector3(2322.319, 525.3738, 59.1672), MAT_Vector3(-117.7616, 4.620366, -20.78514))
  Node_ParseIniFile(node123, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node123, 0)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_generic", "gen_rohrb3_36")
  Node_AddSon(node7, node124)
  Body_SetCS(node124, MAT_Vector3(2628.983, 364.4696, 79.63239), MAT_Vector3(-117.9521, -0.069217, -20.71985))
  Node_ParseIniFile(node124, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node124, 0)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_generic", "gen_rohrb3_37")
  Node_AddSon(node7, node125)
  Body_SetCS(node125, MAT_Vector3(2725.814, 28.94994, 24.46731), MAT_Vector3(172.8976, -9.903468, -26.66282))
  Node_ParseIniFile(node125, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node125, 0)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_generic", "gen_kai2_1")
  Node_AddSon(node7, node126)
  Body_SetCS(node126, MAT_Vector3(1413.495, 1743.548, 272.4659), MAT_Vector3(-89.8889, 0, 0))
  Node_ParseIniFile(node126, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node126, 0)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, -1, 0)
  Body_SetCargoKey(node126, -1, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_generic", "gen_trafoA_1")
  Node_AddSon(node7, node127)
  Body_SetCS(node127, MAT_Vector3(447.2568, 1726.345, 144.712), MAT_Vector3(-4.345602, -2.979695, 3.276294))
  Node_ParseIniFile(node127, "osd/gen/gen_trafo.osd")
  Body_SetFriendOrFoeID(node127, 0)
  Body_SetNameKey(node127, -1)
  Body_SetCargoKey(node127, -1, 0)
  Body_SetCargoKey(node127, -1, 1)
  Body_SetCargoKey(node127, -1, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_generic", "gen_trafoA_2")
  Node_AddSon(node7, node128)
  Body_SetCS(node128, MAT_Vector3(447.6578, 1705.09, 144.712), MAT_Vector3(38.1113, -2.979695, 3.276294))
  Node_ParseIniFile(node128, "osd/gen/gen_trafo.osd")
  Body_SetFriendOrFoeID(node128, 0)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, -1, 0)
  Body_SetCargoKey(node128, -1, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_generic", "gen_bunker_1")
  Node_AddSon(node7, node129)
  Body_SetCS(node129, MAT_Vector3(1009.954, 2026.298, 245.7329), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node129, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node129, 0)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_generic", "gen_bunker_2")
  Node_AddSon(node7, node130)
  Body_SetCS(node130, MAT_Vector3(564.6922, 1770.78, 138.9272), MAT_Vector3(-53.1871, 0, 0))
  Node_ParseIniFile(node130, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node130, 0)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_generic", "gen_bunker_5")
  Node_AddSon(node7, node131)
  Body_SetCS(node131, MAT_Vector3(796.3074, 1908.287, 195), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node131, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node131, 0)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_generic", "gen_bunker_6")
  Node_AddSon(node7, node132)
  Body_SetCS(node132, MAT_Vector3(796.2914, 2019.544, 196), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node132, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node132, 0)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_generic", "gen_turm_1")
  Node_AddSon(node7, node133)
  Body_SetCS(node133, MAT_Vector3(1089.959, 2071.848, 246.4094), MAT_Vector3(0, 2, -2))
  Node_ParseIniFile(node133, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node133, 0)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, -1, 0)
  Body_SetCargoKey(node133, -1, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_generic", "gen_turm_2")
  Node_AddSon(node7, node134)
  Body_SetCS(node134, MAT_Vector3(1090.498, 2034.126, 249.6299), MAT_Vector3(0, 1, -5))
  Node_ParseIniFile(node134, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node134, 0)
  Body_SetNameKey(node134, -1)
  Body_SetCargoKey(node134, -1, 0)
  Body_SetCargoKey(node134, -1, 1)
  Body_SetCargoKey(node134, -1, 2)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_generic", "gen_sbunker_5")
  Node_AddSon(node7, node135)
  Body_SetCS(node135, MAT_Vector3(725.7669, 2307.739, 421.9912), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node135, "osd/gen/gen_starfound.osd")
  Body_SetFriendOrFoeID(node135, 0)
  Body_SetNameKey(node135, -1)
  Body_SetCargoKey(node135, -1, 0)
  Body_SetCargoKey(node135, -1, 1)
  Body_SetCargoKey(node135, -1, 2)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_generic", "gen_schorn1_1")
  Node_AddSon(node7, node136)
  Body_SetCS(node136, MAT_Vector3(796.6055, 1890.465, 240), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node136, "osd/gen/gen_chimney1.osd")
  Body_SetFriendOrFoeID(node136, 0)
  Body_SetNameKey(node136, -1)
  Body_SetCargoKey(node136, -1, 0)
  Body_SetCargoKey(node136, -1, 1)
  Body_SetCargoKey(node136, -1, 2)
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_generic", "gen_schorn1_2")
  Node_AddSon(node7, node137)
  Body_SetCS(node137, MAT_Vector3(796.0442, 2037.669, 241), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node137, "osd/gen/gen_chimney1.osd")
  Body_SetFriendOrFoeID(node137, 0)
  Body_SetNameKey(node137, -1)
  Body_SetCargoKey(node137, -1, 0)
  Body_SetCargoKey(node137, -1, 1)
  Body_SetCargoKey(node137, -1, 2)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_generic", "gen_dock")
  Node_AddSon(node7, node138)
  Body_SetCS(node138, MAT_Vector3(774.581, 1670.974, 189.3006), MAT_Vector3(125, 0, 0))
  Node_ParseIniFile(node138, "osd/gen/gen_dock.osd")
  Body_SetFriendOrFoeID(node138, 0)
  Body_SetNameKey(node138, -1)
  Body_SetCargoKey(node138, -1, 0)
  Body_SetCargoKey(node138, -1, 1)
  Body_SetCargoKey(node138, -1, 2)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_generic", "gen_tnk_k2_1")
  Node_AddSon(node7, node139)
  Body_SetCS(node139, MAT_Vector3(710.9675, 2044.155, 181.6757), MAT_Vector3(-22.8574, 0, 0))
  Node_ParseIniFile(node139, "osd/gen/gen_tank_sml2.osd")
  Body_SetFriendOrFoeID(node139, 0)
  Body_SetNameKey(node139, -1)
  Body_SetCargoKey(node139, -1, 0)
  Body_SetCargoKey(node139, -1, 1)
  Body_SetCargoKey(node139, -1, 2)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_generic", "gen_kraftw22_2")
  Node_AddSon(node7, node140)
  Body_SetCS(node140, MAT_Vector3(486.1949, 1808.287, 138.0677), MAT_Vector3(127.5653, 0, 0))
  Node_ParseIniFile(node140, "osd/gen/gen_pplant22.osd")
  Body_SetFriendOrFoeID(node140, 0)
  Body_SetNameKey(node140, -1)
  Body_SetCargoKey(node140, -1, 0)
  Body_SetCargoKey(node140, -1, 1)
  Body_SetCargoKey(node140, -1, 2)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("nod_generic", "gen_tnkg2_1")
  Node_AddSon(node7, node141)
  Body_SetCS(node141, MAT_Vector3(369.9151, 1749.851, 135.9568), MAT_Vector3(-0.4065, 0, 0))
  Node_ParseIniFile(node141, "osd/gen/gen_tank_big2.osd")
  Body_SetFriendOrFoeID(node141, 0)
  Body_SetNameKey(node141, -1)
  Body_SetCargoKey(node141, -1, 0)
  Body_SetCargoKey(node141, -1, 1)
  Body_SetCargoKey(node141, -1, 2)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("nod_generic", "gen_pole_1")
  Node_AddSon(node7, node142)
  Body_SetCS(node142, MAT_Vector3(1022.253, 2053.531, 292.2151), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node142, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node142, 0)
  Body_SetNameKey(node142, -1)
  Body_SetCargoKey(node142, -1, 0)
  Body_SetCargoKey(node142, -1, 1)
  Body_SetCargoKey(node142, -1, 2)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("nod_generic", "gen_pole2_3")
  Node_AddSon(node7, node143)
  Body_SetCS(node143, MAT_Vector3(2252.168, 2154.026, 234.9195), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node143, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node143, 0)
  Body_SetNameKey(node143, -1)
  Body_SetCargoKey(node143, -1, 0)
  Body_SetCargoKey(node143, -1, 1)
  Body_SetCargoKey(node143, -1, 2)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("nod_generic", "gen_pole2_4")
  Node_AddSon(node7, node144)
  Body_SetCS(node144, MAT_Vector3(2195.347, 2064.569, 238.7622), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node144, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node144, 0)
  Body_SetNameKey(node144, -1)
  Body_SetCargoKey(node144, -1, 0)
  Body_SetCargoKey(node144, -1, 1)
  Body_SetCargoKey(node144, -1, 2)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("nod_generic", "gen_pole2_5")
  Node_AddSon(node7, node145)
  Body_SetCS(node145, MAT_Vector3(953.2603, 1964.472, 235.9956), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node145, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node145, 0)
  Body_SetNameKey(node145, -1)
  Body_SetCargoKey(node145, -1, 0)
  Body_SetCargoKey(node145, -1, 1)
  Body_SetCargoKey(node145, -1, 2)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("nod_generic", "gen_pole2_2")
  Node_AddSon(node7, node146)
  Body_SetCS(node146, MAT_Vector3(731.0307, 2006.437, 194.8237), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node146, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node146, 0)
  Body_SetNameKey(node146, -1)
  Body_SetCargoKey(node146, -1, 0)
  Body_SetCargoKey(node146, -1, 1)
  Body_SetCargoKey(node146, -1, 2)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("nod_generic", "gen_pole1_1")
  Node_AddSon(node7, node147)
  Body_SetCS(node147, MAT_Vector3(1065.75, 1429.095, 290.8411), MAT_Vector3(0, 0, 2))
  Node_ParseIniFile(node147, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node147, 0)
  Body_SetNameKey(node147, -1)
  Body_SetCargoKey(node147, -1, 0)
  Body_SetCargoKey(node147, -1, 1)
  Body_SetCargoKey(node147, -1, 2)
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("nod_generic", "gen_pole1_2")
  Node_AddSon(node7, node148)
  Body_SetCS(node148, MAT_Vector3(1157.066, 1180.289, 285.8597), MAT_Vector3(0, 0, -4))
  Node_ParseIniFile(node148, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node148, 0)
  Body_SetNameKey(node148, -1)
  Body_SetCargoKey(node148, -1, 0)
  Body_SetCargoKey(node148, -1, 1)
  Body_SetCargoKey(node148, -1, 2)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("nod_generic", "gen_pole1_3")
  Node_AddSon(node7, node149)
  Body_SetCS(node149, MAT_Vector3(793.951, 957.132, 137.9162), MAT_Vector3(0, 0, -10))
  Node_ParseIniFile(node149, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node149, 0)
  Body_SetNameKey(node149, -1)
  Body_SetCargoKey(node149, -1, 0)
  Body_SetCargoKey(node149, -1, 1)
  Body_SetCargoKey(node149, -1, 2)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("nod_generic", "gen_pole1_4")
  Node_AddSon(node7, node150)
  Body_SetCS(node150, MAT_Vector3(650.0492, 659.8303, 173.9369), MAT_Vector3(0, 0, 1))
  Node_ParseIniFile(node150, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node150, 0)
  Body_SetNameKey(node150, -1)
  Body_SetCargoKey(node150, -1, 0)
  Body_SetCargoKey(node150, -1, 1)
  Body_SetCargoKey(node150, -1, 2)
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("nod_generic", "gen_pole1_5")
  Node_AddSon(node7, node151)
  Body_SetCS(node151, MAT_Vector3(1737.518, 1879.106, 316.394), MAT_Vector3(35.09718, -10, 0))
  Node_ParseIniFile(node151, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node151, 0)
  Body_SetNameKey(node151, -1)
  Body_SetCargoKey(node151, -1, 0)
  Body_SetCargoKey(node151, -1, 1)
  Body_SetCargoKey(node151, -1, 2)
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("nod_generic", "gen_pole1_6")
  Node_AddSon(node7, node152)
  Body_SetCS(node152, MAT_Vector3(1859.984, 2115.538, 280.4351), MAT_Vector3(35.09718, 5, 0))
  Node_ParseIniFile(node152, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node152, 0)
  Body_SetNameKey(node152, -1)
  Body_SetCargoKey(node152, -1, 0)
  Body_SetCargoKey(node152, -1, 1)
  Body_SetCargoKey(node152, -1, 2)
  Node_EnterSimulation(node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("nod_generic", "gen_pole1_7")
  Node_AddSon(node7, node153)
  Body_SetCS(node153, MAT_Vector3(1953.714, 2211.935, 230.0461), MAT_Vector3(-20.6489, 1.5, -0.7154))
  Node_ParseIniFile(node153, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node153, 0)
  Body_SetNameKey(node153, -1)
  Body_SetCargoKey(node153, -1, 0)
  Body_SetCargoKey(node153, -1, 1)
  Body_SetCargoKey(node153, -1, 2)
  Node_EnterSimulation(node153)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("nod_generic", "gen_pole2_7")
  Node_AddSon(node7, node154)
  Body_SetCS(node154, MAT_Vector3(696.2303, 2296.238, 428.4232), MAT_Vector3(0, 3, 2))
  Node_ParseIniFile(node154, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node154, 0)
  Body_SetNameKey(node154, -1)
  Body_SetCargoKey(node154, -1, 0)
  Body_SetCargoKey(node154, -1, 1)
  Body_SetCargoKey(node154, -1, 2)
  Node_EnterSimulation(node154)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("nod_generic", "gen_pole2_8")
  Node_AddSon(node7, node155)
  Body_SetCS(node155, MAT_Vector3(2482, 661.4447, 162.1689), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node155, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node155, 0)
  Body_SetNameKey(node155, -1)
  Body_SetCargoKey(node155, -1, 0)
  Body_SetCargoKey(node155, -1, 1)
  Body_SetCargoKey(node155, -1, 2)
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("nod_generic", "gen_pole2_9")
  Node_AddSon(node7, node156)
  Body_SetCS(node156, MAT_Vector3(2482, 715.5125, 162.1689), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node156, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node156, 0)
  Body_SetNameKey(node156, -1)
  Body_SetCargoKey(node156, -1, 0)
  Body_SetCargoKey(node156, -1, 1)
  Body_SetCargoKey(node156, -1, 2)
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("nod_generic", "gen_pole2_10")
  Node_AddSon(node7, node157)
  Body_SetCS(node157, MAT_Vector3(1163, 3300, 525), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node157, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node157, 0)
  Body_SetNameKey(node157, -1)
  Body_SetCargoKey(node157, -1, 0)
  Body_SetCargoKey(node157, -1, 1)
  Body_SetCargoKey(node157, -1, 2)
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("nod_generic", "gen_pole2_11")
  Node_AddSon(node7, node158)
  Body_SetCS(node158, MAT_Vector3(1224, 3300, 525), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node158, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node158, 0)
  Body_SetNameKey(node158, -1)
  Body_SetCargoKey(node158, -1, 0)
  Body_SetCargoKey(node158, -1, 1)
  Body_SetCargoKey(node158, -1, 2)
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("nod_generic", "gen_stab3_1")
  Node_AddSon(node7, node159)
  Body_SetCS(node159, MAT_Vector3(471.2658, 1716.724, 153.847), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node159, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node159, 0)
  Body_SetNameKey(node159, -1)
  Body_SetCargoKey(node159, -1, 0)
  Body_SetCargoKey(node159, -1, 1)
  Body_SetCargoKey(node159, -1, 2)
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("nod_generic", "gen_stab1_1")
  Node_AddSon(node7, node160)
  Body_SetCS(node160, MAT_Vector3(766.8154, 1964.355, 205.7003), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node160, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node160, 0)
  Body_SetNameKey(node160, -1)
  Body_SetCargoKey(node160, -1, 0)
  Body_SetCargoKey(node160, -1, 1)
  Body_SetCargoKey(node160, -1, 2)
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("nod_generic", "gen_stab1_2")
  Node_AddSon(node7, node161)
  Body_SetCS(node161, MAT_Vector3(825.3952, 1964.741, 204.696), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node161, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node161, 0)
  Body_SetNameKey(node161, -1)
  Body_SetCargoKey(node161, -1, 0)
  Body_SetCargoKey(node161, -1, 1)
  Body_SetCargoKey(node161, -1, 2)
  Node_EnterSimulation(node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("nod_generic", "gen_stab1_3")
  Node_AddSon(node7, node162)
  Body_SetCS(node162, MAT_Vector3(587.2863, 2012.528, 201.7423), MAT_Vector3(-114.3082, -0.493379, -0.373242))
  Node_ParseIniFile(node162, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node162, 0)
  Body_SetNameKey(node162, -1)
  Body_SetCargoKey(node162, -1, 0)
  Body_SetCargoKey(node162, -1, 1)
  Body_SetCargoKey(node162, -1, 2)
  Node_EnterSimulation(node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("nod_generic", "gen_elf_8")
  Node_AddSon(node7, node163)
  Body_SetCS(node163, MAT_Vector3(3630.921, 2309.117, 60.37339), MAT_Vector3(13.02438, 0.638456, 4.852565))
  Node_ParseIniFile(node163, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node163, 0)
  Body_SetNameKey(node163, -1)
  Body_SetCargoKey(node163, -1, 0)
  Body_SetCargoKey(node163, -1, 1)
  Body_SetCargoKey(node163, -1, 2)
  Node_EnterSimulation(node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("nod_generic", "gen_elf_7")
  Node_AddSon(node7, node164)
  Body_SetCS(node164, MAT_Vector3(3199.996, 2318.097, 65.94281), MAT_Vector3(-14.7433, -0.7559, -4.9787))
  Node_ParseIniFile(node164, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node164, 0)
  Body_SetNameKey(node164, -1)
  Body_SetCargoKey(node164, -1, 0)
  Body_SetCargoKey(node164, -1, 1)
  Body_SetCargoKey(node164, -1, 2)
  Node_EnterSimulation(node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("nod_generic", "gen_elf_4")
  Node_AddSon(node7, node165)
  Body_SetCS(node165, MAT_Vector3(3504.035, 2965.404, 146.3175), MAT_Vector3(9.884414, 8.714258, 3.32913))
  Node_ParseIniFile(node165, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node165, 0)
  Body_SetNameKey(node165, -1)
  Body_SetCargoKey(node165, -1, 0)
  Body_SetCargoKey(node165, -1, 1)
  Body_SetCargoKey(node165, -1, 2)
  Node_EnterSimulation(node165)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("nod_generic", "gen_elf_3")
  Node_AddSon(node7, node166)
  Body_SetCS(node166, MAT_Vector3(3341.755, 2960.402, 137.8456), MAT_Vector3(-9.6358, 13.07694, -5.0801))
  Node_ParseIniFile(node166, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node166, 0)
  Body_SetNameKey(node166, -1)
  Body_SetCargoKey(node166, -1, 0)
  Body_SetCargoKey(node166, -1, 1)
  Body_SetCargoKey(node166, -1, 2)
  Node_EnterSimulation(node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("nod_generic", "gen_elf_2")
  Node_AddSon(node7, node167)
  Body_SetCS(node167, MAT_Vector3(3164.623, 3072.094, 129.5013), MAT_Vector3(48.85676, -1.212737, -5.548056))
  Node_ParseIniFile(node167, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node167, 0)
  Body_SetNameKey(node167, -1)
  Body_SetCargoKey(node167, -1, 0)
  Body_SetCargoKey(node167, -1, 1)
  Body_SetCargoKey(node167, -1, 2)
  Node_EnterSimulation(node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("nod_generic", "gen_elf_18")
  Node_AddSon(node7, node168)
  Body_SetCS(node168, MAT_Vector3(2765.128, 297.3674, 82.80296), MAT_Vector3(-13.1133, 1.156205, -1.6272))
  Node_ParseIniFile(node168, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node168, 0)
  Body_SetNameKey(node168, -1)
  Body_SetCargoKey(node168, -1, 0)
  Body_SetCargoKey(node168, -1, 1)
  Body_SetCargoKey(node168, -1, 2)
  Node_EnterSimulation(node168)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("nod_generic", "gen_elf_15")
  Node_AddSon(node7, node169)
  Body_SetCS(node169, MAT_Vector3(2924.074, 1035.379, 125.9823), MAT_Vector3(-10.8103, -5.8624, -0.8436))
  Node_ParseIniFile(node169, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node169, 0)
  Body_SetNameKey(node169, -1)
  Body_SetCargoKey(node169, -1, 0)
  Body_SetCargoKey(node169, -1, 1)
  Body_SetCargoKey(node169, -1, 2)
  Node_EnterSimulation(node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("nod_generic", "gen_elf_11")
  Node_AddSon(node7, node170)
  Body_SetCS(node170, MAT_Vector3(3746.313, 1620.269, 81.02248), MAT_Vector3(10.75038, 0.609259, 3.205532))
  Node_ParseIniFile(node170, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node170, 0)
  Body_SetNameKey(node170, -1)
  Body_SetCargoKey(node170, -1, 0)
  Body_SetCargoKey(node170, -1, 1)
  Body_SetCargoKey(node170, -1, 2)
  Node_EnterSimulation(node170)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("nod_generic", "gen_elf_12")
  Node_AddSon(node7, node171)
  Body_SetCS(node171, MAT_Vector3(3855.109, 1050.344, 92.8527), MAT_Vector3(7.95239, -2.09662, -1.588129))
  Node_ParseIniFile(node171, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node171, 0)
  Body_SetNameKey(node171, -1)
  Body_SetCargoKey(node171, -1, 0)
  Body_SetCargoKey(node171, -1, 1)
  Body_SetCargoKey(node171, -1, 2)
  Node_EnterSimulation(node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("nod_generic", "atl_digmod_1")
  Node_AddSon(node7, node172)
  Body_SetCS(node172, MAT_Vector3(2770.139, 944.2106, 107.3406), MAT_Vector3(-41.132, 0, 0))
  Node_ParseIniFile(node172, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node172, 0)
  Body_SetNameKey(node172, -1)
  Body_SetCargoKey(node172, -1, 0)
  Body_SetCargoKey(node172, -1, 1)
  Body_SetCargoKey(node172, -1, 2)
  Node_EnterSimulation(node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("nod_generic", "atl_digmod_2")
  Node_AddSon(node7, node173)
  Body_SetCS(node173, MAT_Vector3(3675.364, 566.6306, 70.19473), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node173, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node173, 0)
  Body_SetNameKey(node173, -1)
  Body_SetCargoKey(node173, -1, 0)
  Body_SetCargoKey(node173, -1, 1)
  Body_SetCargoKey(node173, -1, 2)
  Node_EnterSimulation(node173)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("nod_generic", "atl_digmod_3")
  Node_AddSon(node7, node174)
  Body_SetCS(node174, MAT_Vector3(3435.218, 1976.569, 70.59624), MAT_Vector3(55.41621, 0, 0))
  Node_ParseIniFile(node174, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node174, 0)
  Body_SetNameKey(node174, -1)
  Body_SetCargoKey(node174, -1, 0)
  Body_SetCargoKey(node174, -1, 1)
  Body_SetCargoKey(node174, -1, 2)
  Node_EnterSimulation(node174)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("nod_generic", "gen_bunker_3")
  Node_AddSon(node7, node175)
  Body_SetCS(node175, MAT_Vector3(2482.597, 688.5853, 111.6877), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node175, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node175, 0)
  Body_SetNameKey(node175, -1)
  Body_SetCargoKey(node175, -1, 0)
  Body_SetCargoKey(node175, -1, 1)
  Body_SetCargoKey(node175, -1, 2)
  Node_EnterSimulation(node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("nod_generic", "gen_bunker_4")
  Node_AddSon(node7, node176)
  Body_SetCS(node176, MAT_Vector3(1192.8, 3297.286, 481.0851), MAT_Vector3(89.88087, 0, 0))
  Node_ParseIniFile(node176, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node176, 0)
  Body_SetNameKey(node176, -1)
  Body_SetCargoKey(node176, -1, 0)
  Body_SetCargoKey(node176, -1, 1)
  Body_SetCargoKey(node176, -1, 2)
  Node_EnterSimulation(node176)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("nod_generic", "gen_trafo_2")
  Node_AddSon(node7, node177)
  Body_SetCS(node177, MAT_Vector3(1301.867, 3266.627, 472.2551), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node177, "osd/gen/gen_trafo.osd")
  Body_SetFriendOrFoeID(node177, 0)
  Body_SetNameKey(node177, -1)
  Body_SetCargoKey(node177, -1, 0)
  Body_SetCargoKey(node177, -1, 1)
  Body_SetCargoKey(node177, -1, 2)
  Node_EnterSimulation(node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("nod_generic", "gen_turm_4")
  Node_AddSon(node7, node178)
  Body_SetCS(node178, MAT_Vector3(1113.313, 3324.749, 485.8806), MAT_Vector3(0, -4, 0))
  Node_ParseIniFile(node178, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node178, 0)
  Body_SetNameKey(node178, -1)
  Body_SetCargoKey(node178, -1, 0)
  Body_SetCargoKey(node178, -1, 1)
  Body_SetCargoKey(node178, -1, 2)
  Node_EnterSimulation(node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("nod_generic", "des_elfnote_unused")
  Node_AddSon(node7, node179)
  Body_SetCS(node179, MAT_Vector3(1501.485, 951.4355, 206.3099), MAT_Vector3(-36.1255, 0, 7))
  Node_ParseIniFile(node179, "osd/des/des_elfnote.osd")
  Body_SetFriendOrFoeID(node179, 0)
  Body_SetNameKey(node179, -1)
  Body_SetCargoKey(node179, -1, 0)
  Body_SetCargoKey(node179, -1, 1)
  Body_SetCargoKey(node179, -1, 2)
  Node_EnterSimulation(node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("nod_generic", "des_elfnote_unused2")
  Node_AddSon(node7, node180)
  Body_SetCS(node180, MAT_Vector3(2370.616, 2062.439, 220.1566), MAT_Vector3(51.06667, -20.6469, 26.11496))
  Node_ParseIniFile(node180, "osd/des/des_elfnote.osd")
  Body_SetFriendOrFoeID(node180, 0)
  Body_SetNameKey(node180, -1)
  Body_SetCargoKey(node180, -1, 0)
  Body_SetCargoKey(node180, -1, 1)
  Body_SetCargoKey(node180, -1, 2)
  Node_EnterSimulation(node180)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("nod_generic", "des_elfnote_unused3")
  Node_AddSon(node7, node181)
  Body_SetCS(node181, MAT_Vector3(3050.649, 1618.887, 143.2127), MAT_Vector3(-9.627, 12.00201, 16.09673))
  Node_ParseIniFile(node181, "osd/des/des_elfnote.osd")
  Body_SetFriendOrFoeID(node181, 0)
  Body_SetNameKey(node181, -1)
  Body_SetCargoKey(node181, -1, 0)
  Body_SetCargoKey(node181, -1, 1)
  Body_SetCargoKey(node181, -1, 2)
  Node_EnterSimulation(node181)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("nod_generic", "gen_turret_1")
  Node_AddSon(node7, node182)
  Body_SetCS(node182, MAT_Vector3(565.262573, 1769.865708, 182.753352), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node182, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node182, 0)
  Node_EnterSimulation(node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("nod_generic", "gen_turret_2")
  Node_AddSon(node7, node183)
  Body_SetCS(node183, MAT_Vector3(1942.574873, 2200.625605, 236.72818), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node183, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node183, 0)
  Node_EnterSimulation(node183)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("nod_generic", "gen_turret_6")
  Node_AddSon(node7, node184)
  Body_SetCS(node184, MAT_Vector3(1963.438805, 2219.523466, 232.888447), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node184, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node184, 0)
  Node_EnterSimulation(node184)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("nod_generic", "gen_turret_3")
  Node_AddSon(node7, node185)
  Body_SetCS(node185, MAT_Vector3(1123.029406, 1539.448058, 235.598985), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node185, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node185, 0)
  Node_EnterSimulation(node185)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("nod_generic", "gen_turret_4")
  Node_AddSon(node7, node186)
  Body_SetCS(node186, MAT_Vector3(1014.247216, 1950.108181, 236.42553), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node186, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node186, 0)
  Node_EnterSimulation(node186)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("nod_generic", "gen_turret_5")
  Node_AddSon(node7, node187)
  Body_SetCS(node187, MAT_Vector3(1346.004058, 1744.120454, 308.485876), MAT_Vector3(-168.750178, 0, 0))
  Node_ParseIniFile(node187, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node187, 0)
  Node_EnterSimulation(node187)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node7, node188)
  Node_ParseIniFile(node188, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node188)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("nod_fx_sky", "fx_sky_11_1")
  Node_AddSon(node7, node189)
  Node_ParseIniFile(node189, "osd/fx_sky/fx_sky_11.osd")
  Node_EnterSimulation(node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("nod_fx_plankton", "fx_plankton_cyan_1")
  Node_AddSon(node7, node190)
  Node_ParseIniFile(node190, "osd/fx_plankton/fx_plankton_cyan.osd")
  Node_EnterSimulation(node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("nod_fungus", "fungus_01_1")
  Node_AddSon(node7, node191)
  Body_SetCS(node191, MAT_Vector3(1466.737491, 1144.037605, 255.401033), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node191, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node191, 0)
  Node_EnterSimulation(node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("nod_fungus", "fungus_01_2")
  Node_AddSon(node7, node192)
  Body_SetCS(node192, MAT_Vector3(2356.255632, 1465.563327, 120.109292), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node192, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node192, 0)
  Node_EnterSimulation(node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("nod_fungus", "fungus_01_3")
  Node_AddSon(node7, node193)
  Body_SetCS(node193, MAT_Vector3(2342.355189, 1837.435727, 237.579308), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node193, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node193, 0)
  Node_EnterSimulation(node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("nod_fungus", "fungus_01_4")
  Node_AddSon(node7, node194)
  Body_SetCS(node194, MAT_Vector3(3073.128938, 2760.393826, 92.686466), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node194, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node194, 0)
  Node_EnterSimulation(node194)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("nod_fungus", "fungus_01_5")
  Node_AddSon(node7, node195)
  Body_SetCS(node195, MAT_Vector3(3018.168582, 3411.995954, 113.884272), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node195, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node195, 0)
  Node_EnterSimulation(node195)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("nod_fungus", "fungus_01_7")
  Node_AddSon(node7, node196)
  Body_SetCS(node196, MAT_Vector3(3776.424639, 2233.898133, 53.03005), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node196, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node196, 0)
  Node_EnterSimulation(node196)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("nod_fungus", "fungus_01_6")
  Node_AddSon(node7, node197)
  Body_SetCS(node197, MAT_Vector3(3630.776059, 2740.124182, 101.252253), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node197, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node197, 0)
  Node_EnterSimulation(node197)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node7, node198)
  Node_ParseIniFile(node198, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node198, "map/1H3/Terrain/coral01.tga")
  Node_EnterSimulation(node198)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("nod_fx_plant", "fungus_01_map")
  Node_AddSon(node7, node199)
  Node_ParseIniFile(node199, "osd/fx_plant/fungus_01.osd")
  FX_Plant_SetMap(node199, "map/1H3/Terrain/fungus01.tga")
  Node_EnterSimulation(node199)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node7, node200)
  Node_ParseIniFile(node200, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node200, "map/1H3/Terrain/grass01.tga")
  Node_EnterSimulation(node200)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node7, node201)
  Node_ParseIniFile(node201, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node201, "map/1H3/Terrain/stone01.tga")
  Node_EnterSimulation(node201)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node202)
  Node_EnterSimulation(node202)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node202, node203)
  Node_EnterSimulation(node203)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node202, node204)
  Node_EnterSimulation(node204)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("NOD_Path", "polpath_1")
  Node_AddSon(node204, node205)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node205, node206)
  Position_SetPosition(node206, MAT_Vector3(892.8442, 1833.119, 300))
  Position_SetRadius(node206, 5)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node205, node207)
  Position_SetPosition(node207, MAT_Vector3(895.717, 2114.306, 297.1465))
  Position_SetRadius(node207, 5)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node205, node208)
  Position_SetPosition(node208, MAT_Vector3(1078.43, 2117.429, 325.7701))
  Position_SetRadius(node208, 5)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node205, node209)
  Position_SetPosition(node209, MAT_Vector3(1083.115, 1855.072, 326.0575))
  Position_SetRadius(node209, 5)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node205, node210)
  Position_SetPosition(node210, MAT_Vector3(1150.145, 1725.243, 309.9674))
  Position_SetRadius(node210, 5)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node205, node211)
  Position_SetPosition(node211, MAT_Vector3(1193.813, 1460.322, 313.1821))
  Position_SetRadius(node211, 8)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node205, node212)
  Position_SetPosition(node212, MAT_Vector3(1018.023, 1541.736, 331.8261))
  Position_SetRadius(node212, 8)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node205, node213)
  Position_SetPosition(node213, MAT_Vector3(1187.241, 1703.054, 316.1313))
  Position_SetRadius(node213, 5)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node205, node214)
  Position_SetPosition(node214, MAT_Vector3(1118.252, 1860.537, 340.5567))
  Position_SetRadius(node214, 5)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node205, node215)
  Position_SetPosition(node215, MAT_Vector3(978.4845, 1838.674, 287.6534))
  Position_SetRadius(node215, 5)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("NOD_PatrolArea", "trafficarea_1")
  Node_AddSon(node204, node216)
  PatrolArea_SetPosition(node216, MAT_Vector3(842.227, 1860.895, 282.9592))
  PatrolArea_SetRadius(node216, 550)
  PatrolArea_SetMinZ(node216, -150)
  PatrolArea_SetMaxZ(node216, 300)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("NOD_PatrolArea", "Nav1_Area")
  Node_AddSon(node204, node217)
  PatrolArea_SetPosition(node217, MAT_Vector3(2005.271607, 1582.128601, 251.058352))
  PatrolArea_SetRadius(node217, 200)
  PatrolArea_SetMinZ(node217, -220)
  PatrolArea_SetMaxZ(node217, 200)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("NOD_Path", "Nav1ScoutToNav2Path")
  Node_AddSon(node204, node218)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node218, node219)
  Position_SetPosition(node219, MAT_Vector3(2018.184511, 1652.659729, 317.091492))
  Position_SetRadius(node219, 5)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node218, node220)
  Position_SetPosition(node220, MAT_Vector3(2144.789428, 1836.124416, 344.501598))
  Position_SetRadius(node220, 5)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node218, node221)
  Position_SetPosition(node221, MAT_Vector3(2210.405641, 1973.52227, 328.612133))
  Position_SetRadius(node221, 5)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node218, node222)
  Position_SetPosition(node222, MAT_Vector3(2333.194225, 2178.246886, 323.808977))
  Position_SetRadius(node222, 5)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node218, node223)
  Position_SetPosition(node223, MAT_Vector3(2553.362682, 2462.718667, 302.893498))
  Position_SetRadius(node223, 5)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("NOD_Path", "Nav1ScoutToNav2Path2")
  Node_AddSon(node204, node224)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node224, node225)
  Position_SetPosition(node225, MAT_Vector3(2086.013401, 1624.493835, 293.7193))
  Position_SetRadius(node225, 5)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node224, node226)
  Position_SetPosition(node226, MAT_Vector3(2214.917265, 1801.060519, 344.5016))
  Position_SetRadius(node226, 5)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node224, node227)
  Position_SetPosition(node227, MAT_Vector3(2260.414563, 1951.10408, 343.439642))
  Position_SetRadius(node227, 5)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node224, node228)
  Position_SetPosition(node228, MAT_Vector3(2361.934864, 2110.544921, 323.809))
  Position_SetRadius(node228, 5)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node224, node229)
  Position_SetPosition(node229, MAT_Vector3(2732.706122, 2390.138486, 302.8935))
  Position_SetRadius(node229, 5)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("NOD_Path", "Nav1ScoutToNav2Path3")
  Node_AddSon(node204, node230)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node230, node231)
  Position_SetPosition(node231, MAT_Vector3(2074.517, 1675.078, 293.7193))
  Position_SetRadius(node231, 5)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node230, node232)
  Position_SetPosition(node232, MAT_Vector3(2161.459, 1809.108, 344.5016))
  Position_SetRadius(node232, 5)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node230, node233)
  Position_SetPosition(node233, MAT_Vector3(2227.075, 1954.553, 328.6121))
  Position_SetRadius(node233, 5)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node230, node234)
  Position_SetPosition(node234, MAT_Vector3(2319.973, 2127.088, 323.809))
  Position_SetRadius(node234, 5)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node230, node235)
  Position_SetPosition(node235, MAT_Vector3(2626.7856, 2445.643441, 302.8935))
  Position_SetRadius(node235, 5)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("NOD_PatrolArea", "Nav2_Area")
  Node_AddSon(node204, node236)
  PatrolArea_SetPosition(node236, MAT_Vector3(2769.529291, 2560.752478, 260.231663))
  PatrolArea_SetRadius(node236, 300)
  PatrolArea_SetMinZ(node236, -220)
  PatrolArea_SetMaxZ(node236, 200)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("NOD_PatrolArea", "freighter1_area")
  Node_AddSon(node204, node237)
  PatrolArea_SetPosition(node237, MAT_Vector3(2867.017443, 3070.385276, 352.716104))
  PatrolArea_SetRadius(node237, 150)
  PatrolArea_SetMinZ(node237, -240)
  PatrolArea_SetMaxZ(node237, 120)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("NOD_PatrolArea", "ELF_Area")
  Node_AddSon(node204, node238)
  PatrolArea_SetPosition(node238, MAT_Vector3(3453.576454, 3357.205547, 334.697113))
  PatrolArea_SetRadius(node238, 450)
  PatrolArea_SetMinZ(node238, -300)
  PatrolArea_SetMaxZ(node238, 200)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("NOD_Path", "BonhamPathToNav2")
  Node_AddSon(node204, node239)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node239, node240)
  Position_SetPosition(node240, MAT_Vector3(2022.775242, 1642.639886, 327.075246))
  Position_SetRadius(node240, 5)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node239, node241)
  Position_SetPosition(node241, MAT_Vector3(2186.963357, 1906.694999, 320.515308))
  Position_SetRadius(node241, 5)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node239, node242)
  Position_SetPosition(node242, MAT_Vector3(2390.06603, 2217.623089, 264.995408))
  Position_SetRadius(node242, 5)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node239, node243)
  Position_SetPosition(node243, MAT_Vector3(2510.261604, 2311.240973, 262.332692))
  Position_SetRadius(node243, 5)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node239, node244)
  Position_SetPosition(node244, MAT_Vector3(2669.371736, 2488.970376, 226.256956))
  Position_SetRadius(node244, 5)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("NOD_Path", "DegrangePathToNav2")
  Node_AddSon(node204, node245)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node245, node246)
  Position_SetPosition(node246, MAT_Vector3(2126.294168, 1612.002087, 340.338746))
  Position_SetRadius(node246, 5)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node245, node247)
  Position_SetPosition(node247, MAT_Vector3(2336.963, 1906.695, 370.5153))
  Position_SetRadius(node247, 5)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node245, node248)
  Position_SetPosition(node248, MAT_Vector3(2540.066, 2217.623, 314.9954))
  Position_SetRadius(node248, 5)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node245, node249)
  Position_SetPosition(node249, MAT_Vector3(2639.529112, 2332.817154, 312.3327))
  Position_SetRadius(node249, 5)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node245, node250)
  Position_SetPosition(node250, MAT_Vector3(2819.372, 2488.97, 276.257))
  Position_SetRadius(node250, 5)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("NOD_Path", "BonhamPathToELF")
  Node_AddSon(node204, node251)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node251, node252)
  Position_SetPosition(node252, MAT_Vector3(2771.300152, 2607.728013, 190.197728))
  Position_SetRadius(node252, 5)
  Game_LoadProgress_Advance(node0)
  node253 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node251, node253)
  Position_SetPosition(node253, MAT_Vector3(2790.845629, 2773.476281, 179.652414))
  Position_SetRadius(node253, 5)
  Game_LoadProgress_Advance(node0)
  node254 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node251, node254)
  Position_SetPosition(node254, MAT_Vector3(2863.904228, 2862.81998, 179.269894))
  Position_SetRadius(node254, 5)
  Game_LoadProgress_Advance(node0)
  node255 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node251, node255)
  Position_SetPosition(node255, MAT_Vector3(2949.351209, 2891.429597, 182.149217))
  Position_SetRadius(node255, 5)
  Game_LoadProgress_Advance(node0)
  node256 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node251, node256)
  Position_SetPosition(node256, MAT_Vector3(3118.465855, 3150.947632, 193.642342))
  Position_SetRadius(node256, 5)
  Game_LoadProgress_Advance(node0)
  node257 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node251, node257)
  Position_SetPosition(node257, MAT_Vector3(3345.26555, 3267.122291, 284.258274))
  Position_SetRadius(node257, 5)
  Game_LoadProgress_Advance(node0)
  node258 = Node_CreateNode("NOD_Path", "DegrangePathToELF")
  Node_AddSon(node204, node258)
  Game_LoadProgress_Advance(node0)
  node259 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node258, node259)
  Position_SetPosition(node259, MAT_Vector3(2871.3, 2607.728, 190.1977))
  Position_SetRadius(node259, 5)
  Game_LoadProgress_Advance(node0)
  node260 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node258, node260)
  Position_SetPosition(node260, MAT_Vector3(2890.846, 2773.476, 193.898932))
  Position_SetRadius(node260, 5)
  Game_LoadProgress_Advance(node0)
  node261 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node258, node261)
  Position_SetPosition(node261, MAT_Vector3(2963.904, 2862.82, 179.2699))
  Position_SetRadius(node261, 5)
  Game_LoadProgress_Advance(node0)
  node262 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node258, node262)
  Position_SetPosition(node262, MAT_Vector3(3049.351, 2891.43, 182.1492))
  Position_SetRadius(node262, 5)
  Game_LoadProgress_Advance(node0)
  node263 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node258, node263)
  Position_SetPosition(node263, MAT_Vector3(3218.466, 3150.948, 264.225923))
  Position_SetRadius(node263, 5)
  Game_LoadProgress_Advance(node0)
  node264 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node258, node264)
  Position_SetPosition(node264, MAT_Vector3(3417.176773, 3268.983434, 313.234735))
  Position_SetRadius(node264, 5)
  Game_LoadProgress_Advance(node0)
  node265 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node202, node265)
  Node_EnterSimulation(node265)
  Game_LoadProgress_Advance(node0)
  node266 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node202, node266)
  Node_EnterSimulation(node266)
  Game_LoadProgress_Advance(node0)
  node267 = Node_CreateNode("NOD_Trigger", "Nav2PlaTrigger")
  Node_AddSon(node266, node267)
  Body_SetFriendOrFoeID(node267, 2)
  Body_SetPosition(node267, MAT_Vector3(2770.414057, 2561.656315, 325.31199))
  Trigger_SetPresenceSphere(node267, 320)
  Node_EnterSimulation(node267)
  Game_LoadProgress_Advance(node0)
  node268 = Node_CreateNode("NOD_Trigger", "Nav1PlaTrigger")
  Node_AddSon(node266, node268)
  Body_SetFriendOrFoeID(node268, 0)
  Body_SetPosition(node268, MAT_Vector3(1799.571928, 1436.794545, 305.190597))
  Trigger_SetPresenceSphere(node268, 10)
  Node_EnterSimulation(node268)
  Game_LoadProgress_Advance(node0)
  node269 = Node_CreateNode("NOD_Trigger", "Nav1WngTrigger")
  Node_AddSon(node266, node269)
  Body_SetFriendOrFoeID(node269, 0)
  Body_SetPosition(node269, MAT_Vector3(2009.053, 1584.287, 250.439))
  Trigger_SetPresenceSphere(node269, 280)
  Node_EnterSimulation(node269)
  Game_LoadProgress_Advance(node0)
  node270 = Node_CreateNode("NOD_Trigger", "ElfPlaTrigger")
  Node_AddSon(node266, node270)
  Body_SetFriendOrFoeID(node270, 2)
  Body_SetPosition(node270, MAT_Vector3(3457.424197, 3353.83004, 335.777512))
  Trigger_SetPresenceSphere(node270, 512)
  Node_EnterSimulation(node270)
  Game_LoadProgress_Advance(node0)
  node271 = Node_CreateNode("NOD_Trigger", "Nav1ToNav2Trigger")
  Node_AddSon(node266, node271)
  Body_SetFriendOrFoeID(node271, 2)
  Body_SetPosition(node271, MAT_Vector3(2230.144073, 1888.396783, 300.717926))
  Trigger_SetPresenceSphere(node271, 250)
  Node_EnterSimulation(node271)
  Game_LoadProgress_Advance(node0)
  node272 = Node_CreateNode("NOD_Trigger", "CityTrigger")
  Node_AddSon(node266, node272)
  Body_SetFriendOrFoeID(node272, 0)
  Body_SetPosition(node272, MAT_Vector3(774.504114, 1771.950259, 253.596377))
  Trigger_SetPresenceSphere(node272, 650)
  Node_EnterSimulation(node272)
  Game_LoadProgress_Advance(node0)
  node273 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node202, node273)
  Node_EnterSimulation(node273)
  Game_LoadProgress_Advance(node0)
  node274 = Node_CreateNode("NOD_Directory", "TRAFFIC")
  Node_AddSon(node273, node274)
  Node_EnterSimulation(node274)
  Game_LoadProgress_Advance(node0)
  node275 = Node_CreateNode("nod_vessel", "atl_scout1_3")
  Node_AddSon(node274, node275)
  Body_SetCS(node275, MAT_Vector3(863.565292, 1820.419097, 237.109174), MAT_Vector3(-39.0881, 3.071786, 4.008778))
  Node_ParseIniFile(node275, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node275, 3)
  Body_SetNameKey(node275, -1)
  Body_SetCargoKey(node275, -1, 0)
  Body_SetCargoKey(node275, -1, 1)
  Body_SetCargoKey(node275, -1, 2)
  Node_EnterSimulation(node275)
  Game_LoadProgress_Advance(node0)
  node276 = Node_CreateNode("nod_vessel", "atl_scout2_1")
  Node_AddSon(node274, node276)
  Body_SetCS(node276, MAT_Vector3(638.271212, 2328.532247, 461.4095), MAT_Vector3(-173.6232, 0, 0))
  Node_ParseIniFile(node276, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node276, 3)
  Body_SetNameKey(node276, -1)
  Body_SetCargoKey(node276, -1, 0)
  Body_SetCargoKey(node276, -1, 1)
  Body_SetCargoKey(node276, -1, 2)
  Node_EnterSimulation(node276)
  Game_LoadProgress_Advance(node0)
  node277 = Node_CreateNode("nod_vessel", "atl_scout1_2")
  Node_AddSon(node274, node277)
  Body_SetCS(node277, MAT_Vector3(665.2218, 1999.717, 376.0939), MAT_Vector3(-67.62441, 0, 0))
  Node_ParseIniFile(node277, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node277, 3)
  Body_SetNameKey(node277, -1)
  Body_SetCargoKey(node277, -1, 0)
  Body_SetCargoKey(node277, -1, 1)
  Body_SetCargoKey(node277, -1, 2)
  Node_EnterSimulation(node277)
  Game_LoadProgress_Advance(node0)
  node278 = Node_CreateNode("nod_vessel", "atl_scout1_1")
  Node_AddSon(node274, node278)
  Body_SetCS(node278, MAT_Vector3(941.330449, 1681.017584, 234.5789), MAT_Vector3(-87.38418, 0, 0))
  Node_ParseIniFile(node278, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node278, 3)
  Body_SetNameKey(node278, -1)
  Body_SetCargoKey(node278, -1, 0)
  Body_SetCargoKey(node278, -1, 1)
  Body_SetCargoKey(node278, -1, 2)
  Node_EnterSimulation(node278)
  Game_LoadProgress_Advance(node0)
  node279 = Node_CreateNode("nod_vessel", "dum_freighter")
  Node_AddSon(node274, node279)
  Body_SetCS(node279, MAT_Vector3(760.1247, 1623.31, 419.3558), MAT_Vector3(34.33081, 0, 0))
  Node_ParseIniFile(node279, "osd/gen/gen_freighter2.osd")
  Body_SetFriendOrFoeID(node279, 3)
  Body_SetNameKey(node279, -1)
  Body_SetCargoKey(node279, -1, 0)
  Body_SetCargoKey(node279, -1, 1)
  Body_SetCargoKey(node279, -1, 2)
  Node_EnterSimulation(node279)
  Game_LoadProgress_Advance(node0)
  node280 = Node_CreateNode("NOD_Directory", "police")
  Node_AddSon(node274, node280)
  Node_EnterSimulation(node280)
  Game_LoadProgress_Advance(node0)
  node281 = Node_CreateNode("nod_vessel", "atl_polpat_5")
  Node_AddSon(node280, node281)
  Body_SetCS(node281, MAT_Vector3(901.297, 1791.362, 300), MAT_Vector3(0.238542, 0, 0))
  Node_ParseIniFile(node281, "osd/atl/atl_pscout.osd")
  Body_SetFriendOrFoeID(node281, 3)
  Body_SetNameKey(node281, -1)
  Body_SetCargoKey(node281, -1, 0)
  Body_SetCargoKey(node281, -1, 1)
  Body_SetCargoKey(node281, -1, 2)
  Node_EnterSimulation(node281)
  Game_LoadProgress_Advance(node0)
  node282 = Node_CreateNode("nod_vessel", "atl_polpat_4")
  Node_AddSon(node280, node282)
  Body_SetCS(node282, MAT_Vector3(911.339, 1778.148, 250.9434), MAT_Vector3(3.911009, 0, 0))
  Node_ParseIniFile(node282, "osd/atl/atl_pscout.osd")
  Body_SetFriendOrFoeID(node282, 3)
  Body_SetNameKey(node282, -1)
  Body_SetCargoKey(node282, -1, 0)
  Body_SetCargoKey(node282, -1, 1)
  Body_SetCargoKey(node282, -1, 2)
  Node_EnterSimulation(node282)
  Game_LoadProgress_Advance(node0)
  node283 = Node_CreateNode("nod_vessel", "atl_polpat_3")
  Node_AddSon(node280, node283)
  Body_SetCS(node283, MAT_Vector3(901.221, 1766.356, 300), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node283, "osd/atl/atl_pscout.osd")
  Body_SetFriendOrFoeID(node283, 3)
  Body_SetNameKey(node283, -1)
  Body_SetCargoKey(node283, -1, 0)
  Body_SetCargoKey(node283, -1, 1)
  Body_SetCargoKey(node283, -1, 2)
  Node_EnterSimulation(node283)
  Game_LoadProgress_Advance(node0)
  node284 = Node_CreateNode("nod_vessel", "atl_polpat_2")
  Node_AddSon(node280, node284)
  Body_SetCS(node284, MAT_Vector3(882.8147, 1766.63, 300), MAT_Vector3(-1.016124, 0, 0))
  Node_ParseIniFile(node284, "osd/atl/atl_pscout.osd")
  Body_SetFriendOrFoeID(node284, 3)
  Body_SetNameKey(node284, -1)
  Body_SetCargoKey(node284, -1, 0)
  Body_SetCargoKey(node284, -1, 1)
  Body_SetCargoKey(node284, -1, 2)
  Node_EnterSimulation(node284)
  Game_LoadProgress_Advance(node0)
  node285 = Node_CreateNode("nod_vessel", "atl_polpat_1")
  Node_AddSon(node280, node285)
  Body_SetCS(node285, MAT_Vector3(892.3745, 1780.128, 300), MAT_Vector3(0.238542, 0, 0))
  Node_ParseIniFile(node285, "osd/atl/atl_pscout.osd")
  Body_SetFriendOrFoeID(node285, 3)
  Body_SetNameKey(node285, -1)
  Body_SetCargoKey(node285, -1, 0)
  Body_SetCargoKey(node285, -1, 1)
  Body_SetCargoKey(node285, -1, 2)
  Node_EnterSimulation(node285)
  Game_LoadProgress_Advance(node0)
  node286 = Node_CreateNode("nod_vessel", "Nav1Pirate1")
  Node_AddSon(node273, node286)
  Body_SetCS(node286, MAT_Vector3(1987.838027, 1636.65454, 307.844916), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node286, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node286, 1)
  Body_SetNameKey(node286, -1)
  Body_SetCargoKey(node286, -1, 0)
  Body_SetCargoKey(node286, -1, 1)
  Body_SetCargoKey(node286, -1, 2)
  Node_EnterSimulation(node286)
  Game_LoadProgress_Advance(node0)
  node287 = Node_CreateNode("nod_vessel", "Nav1Pirate2")
  Node_AddSon(node273, node287)
  Body_SetCS(node287, MAT_Vector3(2094.02527, 1596.241229, 310.516515), MAT_Vector3(-43.02011, -2.82977, 7.172175))
  Node_ParseIniFile(node287, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node287, 7)
  Body_SetNameKey(node287, -1)
  Body_SetCargoKey(node287, -1, 0)
  Body_SetCargoKey(node287, -1, 1)
  Body_SetCargoKey(node287, -1, 2)
  Node_EnterSimulation(node287)
  Game_LoadProgress_Advance(node0)
  node288 = Node_CreateNode("nod_vessel", "Nav1Pirate3")
  Node_AddSon(node273, node288)
  Body_SetCS(node288, MAT_Vector3(2039.686325, 1629.210134, 306.756538), MAT_Vector3(125.70543, 0, 0))
  Node_ParseIniFile(node288, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node288, 1)
  Body_SetNameKey(node288, -1)
  Body_SetCargoKey(node288, -1, 0)
  Body_SetCargoKey(node288, -1, 1)
  Body_SetCargoKey(node288, -1, 2)
  Node_EnterSimulation(node288)
  Game_LoadProgress_Advance(node0)
  node289 = Node_CreateNode("nod_vessel", "Nav2Pirate1")
  Node_AddSon(node273, node289)
  Body_SetCS(node289, MAT_Vector3(2659.474577, 2656.29387, 201.2672), MAT_Vector3(-137.574612, 0, 0))
  Node_ParseIniFile(node289, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node289, 7)
  Body_SetNameKey(node289, -1)
  Body_SetCargoKey(node289, -1, 0)
  Body_SetCargoKey(node289, -1, 1)
  Body_SetCargoKey(node289, -1, 2)
  Node_EnterSimulation(node289)
  Game_LoadProgress_Advance(node0)
  node290 = Node_CreateNode("nod_vessel", "Nav2Pirate2")
  Node_AddSon(node273, node290)
  Body_SetCS(node290, MAT_Vector3(2903.926964, 2611.418553, 201.2672), MAT_Vector3(117.073297, 0, 0))
  Node_ParseIniFile(node290, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node290, 1)
  Body_SetNameKey(node290, -1)
  Body_SetCargoKey(node290, -1, 0)
  Body_SetCargoKey(node290, -1, 1)
  Body_SetCargoKey(node290, -1, 2)
  Node_EnterSimulation(node290)
  Game_LoadProgress_Advance(node0)
  node291 = Node_CreateNode("nod_vessel", "BackPirate1")
  Node_AddSon(node273, node291)
  Body_SetCS(node291, MAT_Vector3(2813.055091, 2435.565142, 259.739171), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node291, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node291, 7)
  Body_SetNameKey(node291, -1)
  Body_SetCargoKey(node291, -1, 0)
  Body_SetCargoKey(node291, -1, 1)
  Body_SetCargoKey(node291, -1, 2)
  Node_EnterSimulation(node291)
  Game_LoadProgress_Advance(node0)
  node292 = Node_CreateNode("nod_vessel", "BackPirate2")
  Node_AddSon(node273, node292)
  Body_SetCS(node292, MAT_Vector3(2694.412967, 2555.855339, 259.7392), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node292, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node292, 1)
  Body_SetNameKey(node292, -1)
  Body_SetCargoKey(node292, -1, 0)
  Body_SetCargoKey(node292, -1, 1)
  Body_SetCargoKey(node292, -1, 2)
  Node_EnterSimulation(node292)
  Game_LoadProgress_Advance(node0)
  node293 = Node_CreateNode("nod_vessel", "BackPirate3")
  Node_AddSon(node273, node293)
  Body_SetCS(node293, MAT_Vector3(2916.867719, 2520.42736, 259.7392), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node293, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node293, 1)
  Body_SetNameKey(node293, -1)
  Body_SetCargoKey(node293, -1, 0)
  Body_SetCargoKey(node293, -1, 1)
  Body_SetCargoKey(node293, -1, 2)
  Node_EnterSimulation(node293)
  Game_LoadProgress_Advance(node0)
  node294 = Node_CreateNode("nod_vessel", "gen_freighter2_1")
  Node_AddSon(node273, node294)
  Body_SetCS(node294, MAT_Vector3(2869.55777, 3071.066593, 306.339667), MAT_Vector3(99.94337, 0, 0))
  Node_ParseIniFile(node294, "osd/gen/gen_freighter2.osd")
  Body_SetFriendOrFoeID(node294, 3)
  Body_SetNameKey(node294, -1)
  Body_SetCargoKey(node294, -1, 0)
  Body_SetCargoKey(node294, -1, 1)
  Body_SetCargoKey(node294, -1, 2)
  Node_EnterSimulation(node294)
  Game_LoadProgress_Advance(node0)
  node295 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node273, node295)
  Body_SetCS(node295, MAT_Vector3(1639.173354, 1236.372831, 274.752154), MAT_Vector3(-51.462158, 0, 0))
  Node_ParseIniFile(node295, "osd/pla/pla_toiler.osd")
  Body_SetFriendOrFoeID(node295, 4)
  Node_EnterSimulation(node295)
  Game_LoadProgress_Advance(node0)
  node296 = Node_CreateNode("nod_vessel", "ElfPirate1")
  Node_AddSon(node273, node296)
  Body_SetCS(node296, MAT_Vector3(3389.937089, 3425.011024, 402.988391), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node296, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node296, 7)
  Body_SetNameKey(node296, -1)
  Body_SetCargoKey(node296, -1, 0)
  Body_SetCargoKey(node296, -1, 1)
  Body_SetCargoKey(node296, -1, 2)
  Node_EnterSimulation(node296)
  Game_LoadProgress_Advance(node0)
  node297 = Node_CreateNode("nod_vessel", "ElfPirate2")
  Node_AddSon(node273, node297)
  Body_SetCS(node297, MAT_Vector3(3606.587813, 3337.347088, 345.612505), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node297, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node297, 7)
  Body_SetNameKey(node297, -1)
  Body_SetCargoKey(node297, -1, 0)
  Body_SetCargoKey(node297, -1, 1)
  Body_SetCargoKey(node297, -1, 2)
  Node_EnterSimulation(node297)
  Game_LoadProgress_Advance(node0)
  node298 = Node_CreateNode("nod_vessel", "ElfPirate3")
  Node_AddSon(node273, node298)
  Body_SetCS(node298, MAT_Vector3(3349.144218, 3309.280306, 431.330839), MAT_Vector3(-60.765113, 0, 0))
  Node_ParseIniFile(node298, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node298, 1)
  Body_SetNameKey(node298, -1)
  Body_SetCargoKey(node298, -1, 0)
  Body_SetCargoKey(node298, -1, 1)
  Body_SetCargoKey(node298, -1, 2)
  Node_EnterSimulation(node298)
  Game_LoadProgress_Advance(node0)
  node299 = Node_CreateNode("nod_vessel", "ElfPirate4")
  Node_AddSon(node273, node299)
  Body_SetCS(node299, MAT_Vector3(3561.808313, 3466.972895, 325.436789), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node299, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node299, 1)
  Body_SetNameKey(node299, -1)
  Body_SetCargoKey(node299, -1, 0)
  Body_SetCargoKey(node299, -1, 1)
  Body_SetCargoKey(node299, -1, 2)
  Node_EnterSimulation(node299)
  Game_LoadProgress_Advance(node0)
  node300 = Node_CreateNode("nod_vessel", "ElfPirate5")
  Node_AddSon(node273, node300)
  Body_SetCS(node300, MAT_Vector3(3460.792958, 3485.156174, 402.9884), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node300, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node300, 1)
  Body_SetNameKey(node300, -1)
  Body_SetCargoKey(node300, -1, 0)
  Body_SetCargoKey(node300, -1, 1)
  Body_SetCargoKey(node300, -1, 2)
  Node_EnterSimulation(node300)
  Game_LoadProgress_Advance(node0)
  node301 = Node_CreateNode("nod_vessel", "FreighterPirate1")
  Node_AddSon(node273, node301)
  Body_SetCS(node301, MAT_Vector3(2846.54002, 2993.844276, 202.817158), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node301, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node301, 7)
  Body_SetNameKey(node301, -1)
  Body_SetCargoKey(node301, -1, 0)
  Body_SetCargoKey(node301, -1, 1)
  Body_SetCargoKey(node301, -1, 2)
  Node_EnterSimulation(node301)
  Game_LoadProgress_Advance(node0)
  node302 = Node_CreateNode("nod_vessel", "FreighterPirate2")
  Node_AddSon(node273, node302)
  Body_SetCS(node302, MAT_Vector3(2864.665963, 3133.084473, 421.652501), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node302, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node302, 7)
  Body_SetNameKey(node302, -1)
  Body_SetCargoKey(node302, -1, 0)
  Body_SetCargoKey(node302, -1, 1)
  Body_SetCargoKey(node302, -1, 2)
  Node_EnterSimulation(node302)
  Game_LoadProgress_Advance(node0)
  node303 = Node_CreateNode("nod_vessel", "FreighterPirate3")
  Node_AddSon(node273, node303)
  Body_SetCS(node303, MAT_Vector3(2935.521921, 3019.385377, 518.584404), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node303, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node303, 7)
  Body_SetNameKey(node303, -1)
  Body_SetCargoKey(node303, -1, 0)
  Body_SetCargoKey(node303, -1, 1)
  Body_SetCargoKey(node303, -1, 2)
  Node_EnterSimulation(node303)
  Game_LoadProgress_Advance(node0)
  node304 = Node_CreateNode("nod_vessel", "wng_bonham_1")
  Node_AddSon(node273, node304)
  Body_SetCS(node304, MAT_Vector3(1635.765343, 1261.741834, 287.370418), MAT_Vector3(-54.652967, 0, 0))
  Node_ParseIniFile(node304, "osd/wng/wng_bonham.osd")
  Body_SetFriendOrFoeID(node304, 5)
  Body_SetNameKey(node304, -1)
  Body_SetCargoKey(node304, -1, 0)
  Body_SetCargoKey(node304, -1, 1)
  Body_SetCargoKey(node304, -1, 2)
  Node_EnterSimulation(node304)
  Game_LoadProgress_Advance(node0)
  node305 = Node_CreateNode("nod_vessel", "wng_degrange_1")
  Node_AddSon(node273, node305)
  Body_SetCS(node305, MAT_Vector3(1662.979053, 1237.050718, 277.507011), MAT_Vector3(-48.063735, 0, 0))
  Node_ParseIniFile(node305, "osd/wng/wng_degrange.osd")
  Body_SetFriendOrFoeID(node305, 5)
  Body_SetNameKey(node305, -1)
  Body_SetCargoKey(node305, -1, 0)
  Body_SetCargoKey(node305, -1, 1)
  Body_SetCargoKey(node305, -1, 2)
  Node_EnterSimulation(node305)
  Game_LoadProgress_Advance(node0)
  node306 = Node_CreateNode("nod_waypoint", "nav_waypoint_follow_1")
  Node_AddSon(node273, node306)
  Body_SetPosition(node306, MAT_Vector3(2010.11378, 1607.350569, 300.121319))
  WayPoint_SetRadius(node306, 5)
  Node_ParseIniFile(node306, "osd/nav/nav_waypoint_follow.osd")
  Node_EnterSimulation(node306)
  Game_LoadProgress_Advance(node0)
  node307 = Node_CreateNode("nod_waypoint", "nav_waypoint_03_1")
  Node_AddSon(node273, node307)
  Body_SetPosition(node307, MAT_Vector3(3475.543851, 3338.71015, 318.028466))
  WayPoint_SetRadius(node307, 150)
  Node_ParseIniFile(node307, "osd/nav/nav_waypoint_03.osd")
  Node_EnterSimulation(node307)
  Game_LoadProgress_Advance(node0)
  node308 = Node_CreateNode("nod_waypoint", "nav_waypoint_04_1")
  Node_AddSon(node273, node308)
  Body_SetPosition(node308, MAT_Vector3(2761.214046, 2557.912998, 208.412211))
  WayPoint_SetRadius(node308, 150)
  Node_ParseIniFile(node308, "osd/nav/nav_waypoint_04.osd")
  Node_EnterSimulation(node308)
  Game_LoadProgress_Advance(node0)
  node309 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node309)
  Camera_SetBackPlane(node309, 512)
  Node_EnterSimulation(node309)
  Game_LoadProgress_Advance(node0)
  node310 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node310)
  Node_EnterSimulation(node310)
  Game_LoadProgress_Advance(node0)
  node311 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node310, node311)
  Node_EnterSimulation(node311)
  Game_LoadProgress_Advance(node0)
  node312 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node310, node312)
  Node_EnterSimulation(node312)
  Game_LoadProgress_Advance(node0)
  node313 = Node_CreateNode("NOD_Path", "PlaWngToNav1")
  Node_AddSon(node312, node313)
  Game_LoadProgress_Advance(node0)
  node314 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node313, node314)
  Position_SetPosition(node314, MAT_Vector3(1599.598314, 1205.127673, 279.2136))
  Position_SetRadius(node314, 5)
  Game_LoadProgress_Advance(node0)
  node315 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node313, node315)
  Position_SetPosition(node315, MAT_Vector3(1640.150144, 1235.262257, 278.701943))
  Position_SetRadius(node315, 5)
  Game_LoadProgress_Advance(node0)
  node316 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node313, node316)
  Position_SetPosition(node316, MAT_Vector3(1729.347996, 1322.159701, 285.883031))
  Position_SetRadius(node316, 5)
  Game_LoadProgress_Advance(node0)
  node317 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node313, node317)
  Position_SetPosition(node317, MAT_Vector3(1810.678063, 1457.7126, 310.037224))
  Position_SetRadius(node317, 5)
  Game_LoadProgress_Advance(node0)
  node318 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node313, node318)
  Position_SetPosition(node318, MAT_Vector3(1905.906814, 1529.164825, 317.345254))
  Position_SetRadius(node318, 5)
  Game_LoadProgress_Advance(node0)
  node319 = Node_CreateNode("NOD_Position", "Chapter1_CamPos1")
  Node_AddSon(node312, node319)
  Position_SetPosition(node319, MAT_Vector3(1647.144104, 1237.008973, 265.069211))
  Position_SetRadius(node319, 5)
  Game_LoadProgress_Advance(node0)
  node320 = Node_CreateNode("NOD_Position", "Chapter1_CamPos2")
  Node_AddSon(node312, node320)
  Position_SetPosition(node320, MAT_Vector3(1596.307245, 1246.930546, 292.678008))
  Position_SetRadius(node320, 5)
  Game_LoadProgress_Advance(node0)
  node321 = Node_CreateNode("NOD_Position", "Chapter1_CamPos3")
  Node_AddSon(node312, node321)
  Position_SetPosition(node321, MAT_Vector3(2039.546439, 1651.636465, 282.547812))
  Position_SetRadius(node321, 5)
  Game_LoadProgress_Advance(node0)
  node322 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node310, node322)
  Node_EnterSimulation(node322)
  Game_LoadProgress_Advance(node0)
  node323 = Node_CreateNode("NOD_Director", "Chapter1_Intro_V")
  Node_AddSon(node322, node323)
  Node_EnterSimulation(node323)
  Game_LoadProgress_Advance(node0)
  node324 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node310, node324)
  Node_EnterSimulation(node324)
  Game_LoadProgress_Advance(node0)
  node325 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node310, node325)
  Node_EnterSimulation(node325)
end
SetEnemyMatrixElement(0, 0, N)
SetEnemyMatrixElement(1, 0, E)
SetEnemyMatrixElement(2, 0, N)
SetEnemyMatrixElement(3, 0, N)
SetEnemyMatrixElement(4, 0, F)
SetEnemyMatrixElement(5, 0, F)
SetEnemyMatrixElement(6, 0, N)
SetEnemyMatrixElement(7, 0, E)
SetEnemyMatrixElement(8, 0, N)
SetEnemyMatrixElement(9, 0, N)
SetEnemyMatrixElement(10, 0, N)
SetEnemyMatrixElement(11, 0, N)
SetEnemyMatrixElement(12, 0, N)
SetEnemyMatrixElement(13, 0, N)
SetEnemyMatrixElement(14, 0, N)
SetEnemyMatrixElement(15, 0, N)
SetEnemyMatrixElement(0, 1, E)
SetEnemyMatrixElement(1, 1, N)
SetEnemyMatrixElement(2, 1, F)
SetEnemyMatrixElement(3, 1, E)
SetEnemyMatrixElement(4, 1, E)
SetEnemyMatrixElement(5, 1, E)
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
SetEnemyMatrixElement(2, 2, N)
SetEnemyMatrixElement(3, 2, N)
SetEnemyMatrixElement(4, 2, E)
SetEnemyMatrixElement(5, 2, F)
SetEnemyMatrixElement(6, 2, N)
SetEnemyMatrixElement(7, 2, F)
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
SetEnemyMatrixElement(2, 3, N)
SetEnemyMatrixElement(3, 3, N)
SetEnemyMatrixElement(4, 3, F)
SetEnemyMatrixElement(5, 3, F)
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
SetEnemyMatrixElement(0, 4, F)
SetEnemyMatrixElement(1, 4, E)
SetEnemyMatrixElement(2, 4, E)
SetEnemyMatrixElement(3, 4, F)
SetEnemyMatrixElement(4, 4, N)
SetEnemyMatrixElement(5, 4, F)
SetEnemyMatrixElement(6, 4, N)
SetEnemyMatrixElement(7, 4, E)
SetEnemyMatrixElement(8, 4, N)
SetEnemyMatrixElement(9, 4, N)
SetEnemyMatrixElement(10, 4, N)
SetEnemyMatrixElement(11, 4, N)
SetEnemyMatrixElement(12, 4, N)
SetEnemyMatrixElement(13, 4, N)
SetEnemyMatrixElement(14, 4, N)
SetEnemyMatrixElement(15, 4, N)
SetEnemyMatrixElement(0, 5, F)
SetEnemyMatrixElement(1, 5, E)
SetEnemyMatrixElement(2, 5, F)
SetEnemyMatrixElement(3, 5, F)
SetEnemyMatrixElement(4, 5, F)
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
SetEnemyMatrixElement(0, 7, E)
SetEnemyMatrixElement(1, 7, N)
SetEnemyMatrixElement(2, 7, F)
SetEnemyMatrixElement(3, 7, E)
SetEnemyMatrixElement(4, 7, E)
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
                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                if not (o7169.Value ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
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
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o7152.Node, o7152.Node, 21)
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
                                                                                                        if not (False == True) then
                                                                                                          if not (False == True) then
                                                                                                            if not (False == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
                                                                                                                      if not (False == True) then
                                                                                                                        if not (False == True) then
                                                                                                                          if not (False == True) then
                                                                                                                            if not (False == True) then
                                                                                                                              if not (False == True) then
                                                                                                                                if not (False == True) then
                                                                                                                                  if not (False == True) then
                                                                                                                                    if not (False == True) then
                                                                                                                                      if not (False == True) then
                                                                                                                                        if not (False == True) then
                                                                                                                                          if not (False == True) then
                                                                                                                                            if not (False == True) then
                                                                                                                                              if not (False == True) then
                                                                                                                                                if not (False == True) then
                                                                                                                                                  if not (False == True) then
                                                                                                                                                    if not (False == True) then
                                                                                                                                                      if not (False == True) then
                                                                                                                                                        if not (False == True) then
                                                                                                                                                          if not (False == True) then
                                                                                                                                                            if not (False == True) then
                                                                                                                                                              if not (False == True) then
                                                                                                                                                                if not (False == True) then
                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                if not (o7193.Value == True) then
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
end, ReCalculate = function()
  o26.SetStateValue(o26.GetCalculated())
end, StartCalculate = function()
  o26["Value"] = o26.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "track3")
  SendRadioMessageTake(o7152.Node, o7152.Node, 1175)
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
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o30, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o33.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o33 = { [nil] = {}, Start = function()
  o33["Value"] = False
  o7168.StartCalculate()
end, SetStateValue = function(L0)
  if not (o33.Value == L0) then
    o33["Value"] = L0
    o7168.ReCalculate()
  end
end }
S_o65 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o65, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o65, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o65, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o65, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o65, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o65, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o65, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o70.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o66.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o67.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o66 = { [nil] = {}, GetCalculated = function()
  if not (o7159.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o66.SetStateValue(o66.GetCalculated())
end, StartCalculate = function()
  o66["Value"] = o66.GetCalculated()
end, SetStateValue = function(L0)
  if not (o66.Value == L0) then
    o66["Value"] = L0
    CallFunction(o65, "ProcesseStateChange")
  end
end }
o67 = { [nil] = {}, GetCalculated = function()
  if not (o7158.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o67.SetStateValue(o67.GetCalculated())
end, StartCalculate = function()
  o67["Value"] = o67.GetCalculated()
end, SetStateValue = function(L0)
  if not (o67.Value == L0) then
    o67["Value"] = L0
    CallFunction(o65, "ProcesseStateChange")
  end
end }
o70 = { [nil] = {}, Start = function()
  o70["Value"] = False
  o7168.StartCalculate()
end, SetStateValue = function(L0)
  if not (o70.Value == L0) then
    o70["Value"] = L0
    o7168.ReCalculate()
  end
end }
S_o102 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o102, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o102, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o102, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o102, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o102, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetKineticShield(L0.Node, 0, 0.55)
  CallFunction(o102, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o106.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o103.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o103 = { [nil] = {}, GetCalculated = function()
  if not (o6207.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o103.SetStateValue(o103.GetCalculated())
end, StartCalculate = function()
  o103["Value"] = o103.GetCalculated()
end, SetStateValue = function(L0)
  if not (o103.Value == L0) then
    o103["Value"] = L0
    CallFunction(o102, "ProcesseStateChange")
  end
end }
o106 = { [nil] = {}, Start = function()
  o106["Value"] = False
  o7168.StartCalculate()
end, SetStateValue = function(L0)
  if not (o106.Value == L0) then
    o106["Value"] = L0
    o7168.ReCalculate()
  end
end }
S_o138 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o138, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o138, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o138, "Code3")
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
S_o173 = { [nil] = {}, Start = function(L0)

end }
S_o207 = { [nil] = {}, Start = function(L0)

end }
S_o241 = { [nil] = {}, Start = function(L0)

end }
S_o275 = { [nil] = {}, Start = function(L0)

end }
S_o309 = { [nil] = {}, Start = function(L0)

end }
S_o343 = { [nil] = {}, Start = function(L0)

end }
S_o377 = { [nil] = {}, Start = function(L0)

end }
S_o411 = { [nil] = {}, Start = function(L0)

end }
S_o445 = { [nil] = {}, Start = function(L0)

end }
S_o479 = { [nil] = {}, Start = function(L0)

end }
S_o513 = { [nil] = {}, Start = function(L0)

end }
S_o547 = { [nil] = {}, Start = function(L0)

end }
S_o581 = { [nil] = {}, Start = function(L0)

end }
S_o615 = { [nil] = {}, Start = function(L0)

end }
S_o649 = { [nil] = {}, Start = function(L0)

end }
S_o683 = { [nil] = {}, Start = function(L0)

end }
S_o717 = { [nil] = {}, Start = function(L0)

end }
S_o751 = { [nil] = {}, Start = function(L0)

end }
S_o785 = { [nil] = {}, Start = function(L0)

end }
S_o819 = { [nil] = {}, Start = function(L0)

end }
S_o853 = { [nil] = {}, Start = function(L0)

end }
S_o887 = { [nil] = {}, Start = function(L0)

end }
S_o921 = { [nil] = {}, Start = function(L0)

end }
S_o955 = { [nil] = {}, Start = function(L0)

end }
S_o989 = { [nil] = {}, Start = function(L0)

end }
S_o1023 = { [nil] = {}, Start = function(L0)

end }
S_o1057 = { [nil] = {}, Start = function(L0)

end }
S_o1091 = { [nil] = {}, Start = function(L0)

end }
S_o1125 = { [nil] = {}, Start = function(L0)

end }
S_o1159 = { [nil] = {}, Start = function(L0)

end }
S_o1193 = { [nil] = {}, Start = function(L0)

end }
S_o1227 = { [nil] = {}, Start = function(L0)

end }
S_o1261 = { [nil] = {}, Start = function(L0)

end }
S_o1295 = { [nil] = {}, Start = function(L0)

end }
S_o1329 = { [nil] = {}, Start = function(L0)

end }
S_o1363 = { [nil] = {}, Start = function(L0)

end }
S_o1397 = { [nil] = {}, Start = function(L0)

end }
S_o1431 = { [nil] = {}, Start = function(L0)

end }
S_o1465 = { [nil] = {}, Start = function(L0)

end }
S_o1499 = { [nil] = {}, Start = function(L0)

end }
S_o1533 = { [nil] = {}, Start = function(L0)

end }
S_o1567 = { [nil] = {}, Start = function(L0)

end }
S_o1601 = { [nil] = {}, Start = function(L0)

end }
S_o1635 = { [nil] = {}, Start = function(L0)

end }
S_o1669 = { [nil] = {}, Start = function(L0)

end }
S_o1703 = { [nil] = {}, Start = function(L0)

end }
S_o1737 = { [nil] = {}, Start = function(L0)

end }
S_o1771 = { [nil] = {}, Start = function(L0)

end }
S_o1805 = { [nil] = {}, Start = function(L0)

end }
S_o1839 = { [nil] = {}, Start = function(L0)

end }
S_o1873 = { [nil] = {}, Start = function(L0)

end }
S_o1907 = { [nil] = {}, Start = function(L0)

end }
S_o1941 = { [nil] = {}, Start = function(L0)

end }
S_o1975 = { [nil] = {}, Start = function(L0)

end }
S_o2009 = { [nil] = {}, Start = function(L0)

end }
S_o2043 = { [nil] = {}, Start = function(L0)

end }
S_o2077 = { [nil] = {}, Start = function(L0)

end }
S_o2111 = { [nil] = {}, Start = function(L0)

end }
S_o2145 = { [nil] = {}, Start = function(L0)

end }
S_o2179 = { [nil] = {}, Start = function(L0)

end }
S_o2213 = { [nil] = {}, Start = function(L0)

end }
S_o2247 = { [nil] = {}, Start = function(L0)

end }
S_o2281 = { [nil] = {}, Start = function(L0)

end }
S_o2315 = { [nil] = {}, Start = function(L0)

end }
S_o2349 = { [nil] = {}, Start = function(L0)

end }
S_o2383 = { [nil] = {}, Start = function(L0)

end }
S_o2417 = { [nil] = {}, Start = function(L0)

end }
S_o2451 = { [nil] = {}, Start = function(L0)

end }
S_o2485 = { [nil] = {}, Start = function(L0)

end }
S_o2519 = { [nil] = {}, Start = function(L0)

end }
S_o2553 = { [nil] = {}, Start = function(L0)

end }
S_o2587 = { [nil] = {}, Start = function(L0)

end }
S_o2621 = { [nil] = {}, Start = function(L0)

end }
S_o2655 = { [nil] = {}, Start = function(L0)

end }
S_o2689 = { [nil] = {}, Start = function(L0)

end }
S_o2723 = { [nil] = {}, Start = function(L0)

end }
S_o2757 = { [nil] = {}, Start = function(L0)

end }
S_o2791 = { [nil] = {}, Start = function(L0)

end }
S_o2825 = { [nil] = {}, Start = function(L0)

end }
S_o2859 = { [nil] = {}, Start = function(L0)

end }
S_o2893 = { [nil] = {}, Start = function(L0)

end }
S_o2927 = { [nil] = {}, Start = function(L0)

end }
S_o2961 = { [nil] = {}, Start = function(L0)

end }
S_o2995 = { [nil] = {}, Start = function(L0)

end }
S_o3029 = { [nil] = {}, Start = function(L0)

end }
S_o3063 = { [nil] = {}, Start = function(L0)

end }
S_o3097 = { [nil] = {}, Start = function(L0)

end }
S_o3131 = { [nil] = {}, Start = function(L0)

end }
S_o3165 = { [nil] = {}, Start = function(L0)

end }
S_o3199 = { [nil] = {}, Start = function(L0)

end }
S_o3233 = { [nil] = {}, Start = function(L0)

end }
S_o3267 = { [nil] = {}, Start = function(L0)

end }
S_o3301 = { [nil] = {}, Start = function(L0)

end }
S_o3335 = { [nil] = {}, Start = function(L0)

end }
S_o3369 = { [nil] = {}, Start = function(L0)

end }
S_o3403 = { [nil] = {}, Start = function(L0)

end }
S_o3437 = { [nil] = {}, Start = function(L0)

end }
S_o3471 = { [nil] = {}, Start = function(L0)

end }
S_o3505 = { [nil] = {}, Start = function(L0)

end }
S_o3539 = { [nil] = {}, Start = function(L0)

end }
S_o3573 = { [nil] = {}, Start = function(L0)

end }
S_o3607 = { [nil] = {}, Start = function(L0)

end }
S_o3641 = { [nil] = {}, Start = function(L0)

end }
S_o3675 = { [nil] = {}, Start = function(L0)

end }
S_o3709 = { [nil] = {}, Start = function(L0)

end }
S_o3743 = { [nil] = {}, Start = function(L0)

end }
S_o3777 = { [nil] = {}, Start = function(L0)

end }
S_o3811 = { [nil] = {}, Start = function(L0)

end }
S_o3845 = { [nil] = {}, Start = function(L0)

end }
S_o3879 = { [nil] = {}, Start = function(L0)

end }
S_o3913 = { [nil] = {}, Start = function(L0)

end }
S_o3947 = { [nil] = {}, Start = function(L0)

end }
S_o3981 = { [nil] = {}, Start = function(L0)

end }
S_o4015 = { [nil] = {}, Start = function(L0)

end }
S_o4049 = { [nil] = {}, Start = function(L0)

end }
S_o4083 = { [nil] = {}, Start = function(L0)

end }
S_o4117 = { [nil] = {}, Start = function(L0)

end }
S_o4151 = { [nil] = {}, Start = function(L0)

end }
S_o4185 = { [nil] = {}, Start = function(L0)

end }
S_o4219 = { [nil] = {}, Start = function(L0)

end }
S_o4253 = { [nil] = {}, Start = function(L0)

end }
S_o4287 = { [nil] = {}, Start = function(L0)

end }
S_o4321 = { [nil] = {}, Start = function(L0)

end }
S_o4355 = { [nil] = {}, Start = function(L0)

end }
S_o4389 = { [nil] = {}, Start = function(L0)

end }
S_o4423 = { [nil] = {}, Start = function(L0)

end }
S_o4457 = { [nil] = {}, Start = function(L0)

end }
S_o4491 = { [nil] = {}, Start = function(L0)

end }
S_o4525 = { [nil] = {}, Start = function(L0)

end }
S_o4559 = { [nil] = {}, Start = function(L0)

end }
S_o4593 = { [nil] = {}, Start = function(L0)

end }
S_o4627 = { [nil] = {}, Start = function(L0)

end }
S_o4661 = { [nil] = {}, Start = function(L0)

end }
S_o4695 = { [nil] = {}, Start = function(L0)

end }
S_o4729 = { [nil] = {}, Start = function(L0)

end }
S_o4763 = { [nil] = {}, Start = function(L0)

end }
S_o4797 = { [nil] = {}, Start = function(L0)

end }
S_o4831 = { [nil] = {}, Start = function(L0)

end }
S_o4865 = { [nil] = {}, Start = function(L0)

end }
S_o4899 = { [nil] = {}, Start = function(L0)

end }
S_o4933 = { [nil] = {}, Start = function(L0)

end }
S_o4967 = { [nil] = {}, Start = function(L0)

end }
S_o5001 = { [nil] = {}, Start = function(L0)

end }
S_o5035 = { [nil] = {}, Start = function(L0)

end }
S_o5069 = { [nil] = {}, Start = function(L0)

end }
S_o5103 = { [nil] = {}, Start = function(L0)

end }
S_o5137 = { [nil] = {}, Start = function(L0)

end }
S_o5171 = { [nil] = {}, Start = function(L0)

end }
S_o5205 = { [nil] = {}, Start = function(L0)

end }
S_o5239 = { [nil] = {}, Start = function(L0)

end }
S_o5273 = { [nil] = {}, Start = function(L0)

end }
S_o5307 = { [nil] = {}, Start = function(L0)

end }
S_o5341 = { [nil] = {}, Start = function(L0)

end }
S_o5375 = { [nil] = {}, Start = function(L0)

end }
S_o5409 = { [nil] = {}, Start = function(L0)

end }
S_o5443 = { [nil] = {}, Start = function(L0)

end }
S_o5477 = { [nil] = {}, Start = function(L0)

end }
S_o5511 = { [nil] = {}, Start = function(L0)

end }
S_o5545 = { [nil] = {}, Start = function(L0)

end }
S_o5579 = { [nil] = {}, Start = function(L0)

end }
S_o5613 = { [nil] = {}, Start = function(L0)

end }
S_o5647 = { [nil] = {}, Start = function(L0)

end }
S_o5681 = { [nil] = {}, Start = function(L0)

end }
S_o5715 = { [nil] = {}, Start = function(L0)

end }
S_o5749 = { [nil] = {}, Start = function(L0)

end }
S_o5783 = { [nil] = {}, Start = function(L0)

end }
S_o5817 = { [nil] = {}, Start = function(L0)

end }
S_o5851 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5851, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5851, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5851, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o5851, "Code4")
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
S_o5886 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5886, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5886, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5886, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o5886, "Code4")
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
S_o5921 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5921, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5921, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5921, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o5921, "Code4")
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
S_o5956 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5956, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5956, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5956, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o5956, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5956, "Code5")
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
S_o5994 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5994, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5994, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5994, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o5994, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5994, "Code5")
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
S_o6032 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6032, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6032, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6032, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o6032, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o6032, "Code5")
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
S_o6070 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6070, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6070, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6070, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o6070, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o6070, "Code5")
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
S_o6108 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6108, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6108, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6108, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o6108, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o6108, "Code5")
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
S_o6146 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6146, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6146, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6146, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o6146, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o6146, "Code5")
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
S_o6184 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6184, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6184, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6184, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o6184, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6184, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6184, "Code6")
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
S_o6190 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6190, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6190, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6190, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o6190, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6190, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6190, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o6195.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6195 = { [nil] = {}, Start = function()
  o6195["Value"] = False
  o6702.StartCalculate()
  o6754.StartCalculate()
  o6806.StartCalculate()
  o7157.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6195.Value == L0) then
    o6195["Value"] = L0
    o6702.ReCalculate()
    o6754.ReCalculate()
    o6806.ReCalculate()
    o7157.ReCalculate()
  end
end }
S_o6196 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6196, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6196, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6196, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "wng_bonham_1", "wng_degrange_1", "", "", False, False, True)
  CallFunction(o6196, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6196, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6196, "Code6")
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
S_o6202 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6202, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6202, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6202, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o6202, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6202, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6202, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o6207.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6207 = { [nil] = {}, Start = function()
  o6207["Value"] = False
  o103.StartCalculate()
  o7200.StartCalculate()
  o7249.StartCalculate()
  o7298.StartCalculate()
  o7347.StartCalculate()
  o7396.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6207.Value == L0) then
    o6207["Value"] = L0
    o103.ReCalculate()
    o7200.ReCalculate()
    o7249.ReCalculate()
    o7298.ReCalculate()
    o7347.ReCalculate()
    o7396.ReCalculate()
  end
end }
S_o6208 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6208, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6208, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6208, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplexLeave(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o6208, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6208, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6208, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o6213.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6213 = { [nil] = {}, Start = function()
  o6213["Value"] = False
  o6861.StartCalculate()
  o6911.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6213.Value == L0) then
    o6213["Value"] = L0
    o6861.ReCalculate()
    o6911.ReCalculate()
  end
end }
S_o6214 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6214, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6214, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6214, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o6214, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6214, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6214, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o6219.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6219 = { [nil] = {}, Start = function()
  o6219["Value"] = False
  o6222.StartCalculate()
  o6270.StartCalculate()
  o6318.StartCalculate()
  o6366.StartCalculate()
  o6463.StartCalculate()
  o6511.StartCalculate()
  o6559.StartCalculate()
  o6607.StartCalculate()
  o6655.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6219.Value == L0) then
    o6219["Value"] = L0
    o6222.ReCalculate()
    o6270.ReCalculate()
    o6318.ReCalculate()
    o6366.ReCalculate()
    o6463.ReCalculate()
    o6511.ReCalculate()
    o6559.ReCalculate()
    o6607.ReCalculate()
    o6655.ReCalculate()
  end
end }
S_o6220 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6220, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6220, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6220, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/trafficarea_1", "/Scenario_Dynamic/Navigation/trafficarea_1" }, 20, 1, "Code4")
  else
    CallFunction(o6220, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6222.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6222 = { [nil] = {}, GetCalculated = function()
  if not (o6219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6222.SetStateValue(o6222.GetCalculated())
end, StartCalculate = function()
  o6222["Value"] = o6222.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6222.Value == L0) then
    o6222["Value"] = L0
    CallFunction(o6220, "ProcesseStateChange")
  end
end }
S_o6268 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6268, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6268, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6268, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/trafficarea_1", "/Scenario_Dynamic/Navigation/trafficarea_1" }, 20, 1, "Code4")
  else
    CallFunction(o6268, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6270.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6270 = { [nil] = {}, GetCalculated = function()
  if not (o6219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6270.SetStateValue(o6270.GetCalculated())
end, StartCalculate = function()
  o6270["Value"] = o6270.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6270.Value == L0) then
    o6270["Value"] = L0
    CallFunction(o6268, "ProcesseStateChange")
  end
end }
S_o6316 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6316, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6316, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6316, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/trafficarea_1", "/Scenario_Dynamic/Navigation/trafficarea_1" }, 20, 1, "Code4")
  else
    CallFunction(o6316, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6318.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6318 = { [nil] = {}, GetCalculated = function()
  if not (o6219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6318.SetStateValue(o6318.GetCalculated())
end, StartCalculate = function()
  o6318["Value"] = o6318.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6318.Value == L0) then
    o6318["Value"] = L0
    CallFunction(o6316, "ProcesseStateChange")
  end
end }
S_o6364 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6364, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6364, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6364, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/trafficarea_1", "/Scenario_Dynamic/Navigation/trafficarea_1" }, 20, 1, "Code4")
  else
    CallFunction(o6364, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6366.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6366 = { [nil] = {}, GetCalculated = function()
  if not (o6219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6366.SetStateValue(o6366.GetCalculated())
end, StartCalculate = function()
  o6366["Value"] = o6366.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6366.Value == L0) then
    o6366["Value"] = L0
    CallFunction(o6364, "ProcesseStateChange")
  end
end }
S_o6412 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6412, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6412, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6412, "Code3")
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
o6459 = FormationLib.CreateFormation("Claw", "", "", "", 50, 50)
S_o6461 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6461, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6461, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6461, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o6460, { {}, "Goto", "/Scenario_Dynamic/Navigation/polpath_1", 1, 1 } }, o6459, "/Scenario_Dynamic/Navigation/trafficarea_1", 350, "E", "", "", "", 25, 0.25, True, "Code4")
  else
    CallFunction(o6461, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6463.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6463 = { [nil] = {}, GetCalculated = function()
  if not (o6219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6463.SetStateValue(o6463.GetCalculated())
end, StartCalculate = function()
  o6463["Value"] = o6463.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6463.Value == L0) then
    o6463["Value"] = L0
    CallFunction(o6461, "ProcesseStateChange")
  end
end }
S_o6509 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6509, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6509, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6509, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o6460, { {}, "Goto", "/Scenario_Dynamic/Navigation/polpath_1", 1, 1 } }, o6459, "/Scenario_Dynamic/Navigation/trafficarea_1", 350, "E", "", "", "", 25, 0.25, True, "Code4")
  else
    CallFunction(o6509, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6511.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6511 = { [nil] = {}, GetCalculated = function()
  if not (o6219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6511.SetStateValue(o6511.GetCalculated())
end, StartCalculate = function()
  o6511["Value"] = o6511.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6511.Value == L0) then
    o6511["Value"] = L0
    CallFunction(o6509, "ProcesseStateChange")
  end
end }
S_o6557 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6557, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6557, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6557, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o6460, { {}, "Goto", "/Scenario_Dynamic/Navigation/polpath_1", 1, 1 } }, o6459, "/Scenario_Dynamic/Navigation/trafficarea_1", 350, "E", "", "", "", 25, 0.25, True, "Code4")
  else
    CallFunction(o6557, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6559.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6559 = { [nil] = {}, GetCalculated = function()
  if not (o6219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6559.SetStateValue(o6559.GetCalculated())
end, StartCalculate = function()
  o6559["Value"] = o6559.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6559.Value == L0) then
    o6559["Value"] = L0
    CallFunction(o6557, "ProcesseStateChange")
  end
end }
S_o6605 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6605, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6605, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6605, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o6460, { {}, "Goto", "/Scenario_Dynamic/Navigation/polpath_1", 1, 1 } }, o6459, "/Scenario_Dynamic/Navigation/trafficarea_1", 351, "E", "", "", "", 25, 0.25, True, "Code4")
  else
    CallFunction(o6605, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6607.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6607 = { [nil] = {}, GetCalculated = function()
  if not (o6219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6607.SetStateValue(o6607.GetCalculated())
end, StartCalculate = function()
  o6607["Value"] = o6607.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6607.Value == L0) then
    o6607["Value"] = L0
    CallFunction(o6605, "ProcesseStateChange")
  end
end }
S_o6653 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6653, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6653, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6653, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o6460, { {}, "Goto", "/Scenario_Dynamic/Navigation/polpath_1", 1, 1 } }, o6459, "/Scenario_Dynamic/Navigation/trafficarea_1", 351, "E", "", "", "", 25, 0.25, True, "Code4")
  else
    CallFunction(o6653, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6655.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6655 = { [nil] = {}, GetCalculated = function()
  if not (o6219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6655.SetStateValue(o6655.GetCalculated())
end, StartCalculate = function()
  o6655["Value"] = o6655.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6655.Value == L0) then
    o6655["Value"] = L0
    CallFunction(o6653, "ProcesseStateChange")
  end
end }
S_o6701 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6701, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6701, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6701, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  Vessel_CollisionObjects(L0.Node, 1)
  CallFunction(o6701, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearAreaFrom(L0, 0, "/Scenario_Dynamic/Navigation/Nav1_Area", o30.Node, 1, 1, "Code6")
  else
    CallFunction(o6701, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Nav1ScoutToNav2Path", 1, 1 } }("Code7")
  else
    CallFunction(o6701, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "E", "", "", "", 1, "Code8")
  else
    CallFunction(o6701, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "player1", "", "", "", 1, "Code9")
  else
    CallFunction(o6701, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2_Area", "player1", "wng", "des", "", 1, 1, "Code10")
  else
    CallFunction(o6701, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, SetStateValue_Attacked = function(L0, L1)
  o6708.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o6710.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o6702.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o6704.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6702 = { [nil] = {}, GetCalculated = function()
  if not (o6195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6702.SetStateValue(o6702.GetCalculated())
end, StartCalculate = function()
  o6702["Value"] = o6702.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6702.Value == L0) then
    o6702["Value"] = L0
    CallFunction(o6701, "ProcesseStateChange")
  end
end }
o6704 = { [nil] = {}, GetCalculated = function()
  if not (o7160.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6704.SetStateValue(o6704.GetCalculated())
end, StartCalculate = function()
  o6704["Value"] = o6704.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6704.Value == L0) then
    o6704["Value"] = L0
    CallFunction(o6701, "ProcesseStateChange")
  end
end }
o6708 = { [nil] = {}, Start = function()
  o6708["Value"] = False
  o7160.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6708.Value == L0) then
    o6708["Value"] = L0
    o7160.ReCalculate()
  end
end }
o6710 = { [nil] = {}, Start = function()
  o6710["Value"] = False
  o7159.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6710.Value == L0) then
    o6710["Value"] = L0
    o7159.ReCalculate()
  end
end }
S_o6753 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6753, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6753, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6753, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  Vessel_CollisionObjects(L0.Node, 1)
  CallFunction(o6753, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearAreaFrom(L0, 0, "/Scenario_Dynamic/Navigation/Nav1_Area", o30.Node, 1, 1, "Code6")
  else
    CallFunction(o6753, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Nav1ScoutToNav2Path2", 1, 1 } }("Code7")
  else
    CallFunction(o6753, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "E", "", "", "", 1, "Code8")
  else
    CallFunction(o6753, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "player1", "", "", "", 1, "Code9")
  else
    CallFunction(o6753, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2_Area", "player1", "wng", "des", "", 1, 1, "Code10")
  else
    CallFunction(o6753, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, SetStateValue_Attacked = function(L0, L1)
  o6760.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o6762.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o6754.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o6756.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6754 = { [nil] = {}, GetCalculated = function()
  if not (o6195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6754.SetStateValue(o6754.GetCalculated())
end, StartCalculate = function()
  o6754["Value"] = o6754.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6754.Value == L0) then
    o6754["Value"] = L0
    CallFunction(o6753, "ProcesseStateChange")
  end
end }
o6756 = { [nil] = {}, GetCalculated = function()
  if not (o7160.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6756.SetStateValue(o6756.GetCalculated())
end, StartCalculate = function()
  o6756["Value"] = o6756.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6756.Value == L0) then
    o6756["Value"] = L0
    CallFunction(o6753, "ProcesseStateChange")
  end
end }
o6760 = { [nil] = {}, Start = function()
  o6760["Value"] = False
  o7160.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6760.Value == L0) then
    o6760["Value"] = L0
    o7160.ReCalculate()
  end
end }
o6762 = { [nil] = {}, Start = function()
  o6762["Value"] = False
  o7159.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6762.Value == L0) then
    o6762["Value"] = L0
    o7159.ReCalculate()
  end
end }
S_o6805 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6805, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6805, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6805, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  Vessel_CollisionObjects(L0.Node, 1)
  CallFunction(o6805, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearAreaFrom(L0, 0, "/Scenario_Dynamic/Navigation/Nav1_Area", o30.Node, 1, 1, "Code6")
  else
    CallFunction(o6805, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Nav1ScoutToNav2Path3", 1, 1 } }("Code7")
  else
    CallFunction(o6805, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "E", "", "", "", 1, "Code8")
  else
    CallFunction(o6805, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "player1", "", "", "", 1, "Code9")
  else
    CallFunction(o6805, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2_Area", "player1", "wng", "des", "", 1, 1, "Code10")
  else
    CallFunction(o6805, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, SetStateValue_Attacked = function(L0, L1)
  o6812.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o6814.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o6806.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o6808.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6806 = { [nil] = {}, GetCalculated = function()
  if not (o6195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6806.SetStateValue(o6806.GetCalculated())
end, StartCalculate = function()
  o6806["Value"] = o6806.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6806.Value == L0) then
    o6806["Value"] = L0
    CallFunction(o6805, "ProcesseStateChange")
  end
end }
o6808 = { [nil] = {}, GetCalculated = function()
  if not (o7160.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6808.SetStateValue(o6808.GetCalculated())
end, StartCalculate = function()
  o6808["Value"] = o6808.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6808.Value == L0) then
    o6808["Value"] = L0
    CallFunction(o6805, "ProcesseStateChange")
  end
end }
o6812 = { [nil] = {}, Start = function()
  o6812["Value"] = False
  o7160.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6812.Value == L0) then
    o6812["Value"] = L0
    o7160.ReCalculate()
  end
end }
o6814 = { [nil] = {}, Start = function()
  o6814["Value"] = False
  o7159.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6814.Value == L0) then
    o6814["Value"] = L0
    o7159.ReCalculate()
  end
end }
S_o6857 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6857, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6857, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6857, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o6857, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o6857, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "player1", "", "", "", 1, "Code6")
  else
    CallFunction(o6857, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2_Area", "player1", "wng", "des", "", 1, 1, "Code7")
  else
    CallFunction(o6857, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Attacked = function(L0, L1)
  o6862.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o6864.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6861.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6858.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6858 = { [nil] = {}, GetCalculated = function()
  if not (o7160.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6858.SetStateValue(o6858.GetCalculated())
end, StartCalculate = function()
  o6858["Value"] = o6858.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6858.Value == L0) then
    o6858["Value"] = L0
    CallFunction(o6857, "ProcesseStateChange")
  end
end }
o6861 = { [nil] = {}, GetCalculated = function()
  if not (o6213.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6861.SetStateValue(o6861.GetCalculated())
end, StartCalculate = function()
  o6861["Value"] = o6861.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6861.Value == L0) then
    o6861["Value"] = L0
    CallFunction(o6857, "ProcesseStateChange")
  end
end }
o6862 = { [nil] = {}, Start = function()
  o6862["Value"] = False
  o7160.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6862.Value == L0) then
    o6862["Value"] = L0
    o7160.ReCalculate()
  end
end }
o6864 = { [nil] = {}, Start = function()
  o6864["Value"] = False
  o7159.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6864.Value == L0) then
    o6864["Value"] = L0
    o7159.ReCalculate()
  end
end }
S_o6907 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Vessel_CollisionTerrain(L0.Node, 1)
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6907, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6907, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code4")
  else
    CallFunction(o6907, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o6907, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "player1", "", "", "", 1, "Code6")
  else
    CallFunction(o6907, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2_Area", "player1", "wng", "des", "", 1, 1, "Code7")
  else
    CallFunction(o6907, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Attacked = function(L0, L1)
  o6912.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o6914.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 2) then
    if not (L0.CodeIndex >= 3) then
      if not (o6911.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6908.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6908 = { [nil] = {}, GetCalculated = function()
  if not (o7160.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6908.SetStateValue(o6908.GetCalculated())
end, StartCalculate = function()
  o6908["Value"] = o6908.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6908.Value == L0) then
    o6908["Value"] = L0
    CallFunction(o6907, "ProcesseStateChange")
  end
end }
o6911 = { [nil] = {}, GetCalculated = function()
  if not (o6213.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6911.SetStateValue(o6911.GetCalculated())
end, StartCalculate = function()
  o6911["Value"] = o6911.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6911.Value == L0) then
    o6911["Value"] = L0
    CallFunction(o6907, "ProcesseStateChange")
  end
end }
o6912 = { [nil] = {}, Start = function()
  o6912["Value"] = False
  o7160.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6912.Value == L0) then
    o6912["Value"] = L0
    o7160.ReCalculate()
  end
end }
o6914 = { [nil] = {}, Start = function()
  o6914["Value"] = False
  o7159.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6914.Value == L0) then
    o6914["Value"] = L0
    o7159.ReCalculate()
  end
end }
S_o6957 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6957, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6957, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6957, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "des_elfnoteNav2", "", "", "", 1, "Code4")
  else
    CallFunction(o6957, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "player1", "wng", "", "", 1, "Code5")
  else
    CallFunction(o6957, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o6963.SetStateValue(L1)
end, SetStateValue_KineticShield50 = function(L0, L1)
  o6969.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6960.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o6958.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6958 = { [nil] = {}, GetCalculated = function()
  if not (o6969.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6958.SetStateValue(o6958.GetCalculated())
end, StartCalculate = function()
  o6958["Value"] = o6958.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6958.Value == L0) then
    o6958["Value"] = L0
    CallFunction(o6957, "ProcesseStateChange")
  end
end }
o6960 = { [nil] = {}, GetCalculated = function()
  if not (o7158.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6960.SetStateValue(o6960.GetCalculated())
end, StartCalculate = function()
  o6960["Value"] = o6960.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6960.Value == L0) then
    o6960["Value"] = L0
    CallFunction(o6957, "ProcesseStateChange")
  end
end }
o6963 = { [nil] = {}, Start = function()
  o6963["Value"] = False
  o7163.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6963.Value == L0) then
    o6963["Value"] = L0
    o7163.ReCalculate()
  end
end }
o6969 = { [nil] = {}, Start = function()
  o6969["Value"] = False
  o6958.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6969.Value == L0) then
    o6969["Value"] = L0
    o6958.ReCalculate()
  end
end }
S_o7006 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7006, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7006, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7006, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "des_elfnoteNav2", "", "", "", 1, "Code4")
  else
    CallFunction(o7006, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "player1", "wng", "", "", 1, "Code5")
  else
    CallFunction(o7006, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o7012.SetStateValue(L1)
end, SetStateValue_KineticShield75 = function(L0, L1)
  o7017.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7009.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o7007.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7007 = { [nil] = {}, GetCalculated = function()
  if not (o7017.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7007.SetStateValue(o7007.GetCalculated())
end, StartCalculate = function()
  o7007["Value"] = o7007.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7007.Value == L0) then
    o7007["Value"] = L0
    CallFunction(o7006, "ProcesseStateChange")
  end
end }
o7009 = { [nil] = {}, GetCalculated = function()
  if not (o7158.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7009.SetStateValue(o7009.GetCalculated())
end, StartCalculate = function()
  o7009["Value"] = o7009.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7009.Value == L0) then
    o7009["Value"] = L0
    CallFunction(o7006, "ProcesseStateChange")
  end
end }
o7012 = { [nil] = {}, Start = function()
  o7012["Value"] = False
  o7163.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7012.Value == L0) then
    o7012["Value"] = L0
    o7163.ReCalculate()
  end
end }
o7017 = { [nil] = {}, Start = function()
  o7017["Value"] = False
  o7007.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7017.Value == L0) then
    o7017["Value"] = L0
    o7007.ReCalculate()
  end
end }
S_o7055 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7055, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7055, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7055, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "player1", "wng", "", "", 1, "Code4")
  else
    CallFunction(o7055, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o7060.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7057.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7057 = { [nil] = {}, GetCalculated = function()
  if not (o7158.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7057.SetStateValue(o7057.GetCalculated())
end, StartCalculate = function()
  o7057["Value"] = o7057.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7057.Value == L0) then
    o7057["Value"] = L0
    CallFunction(o7055, "ProcesseStateChange")
  end
end }
o7060 = { [nil] = {}, Start = function()
  o7060["Value"] = False
  o7163.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7060.Value == L0) then
    o7060["Value"] = L0
    o7163.ReCalculate()
  end
end }
S_o7103 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7103, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7103, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7103, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o7103, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o7103, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7103, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetKineticShield(L0.Node, 0, 0.25)
  CallFunction(o7103, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 2 } }("Code9")
  else
    CallFunction(o7103, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  SendRadioMessageTake(o7152.Node, o7152.Node, 1174)
  CallFunction(o7103, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, SetStateValue_Destroyed = function(L0, L1)
  o7109.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o7106.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7106 = { [nil] = {}, GetCalculated = function()
  if not (o7159.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7106.SetStateValue(o7106.GetCalculated())
end, StartCalculate = function()
  o7106["Value"] = o7106.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7106.Value == L0) then
    o7106["Value"] = L0
    CallFunction(o7103, "ProcesseStateChange")
  end
end }
o7109 = { [nil] = {}, Start = function()
  o7109["Value"] = False
  o7165.StartCalculate()
  o7443.StartCalculate()
  o7492.StartCalculate()
  o7541.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7109.Value == L0) then
    o7109["Value"] = L0
    o7165.ReCalculate()
    o7443.ReCalculate()
    o7492.ReCalculate()
    o7541.ReCalculate()
  end
end }
S_o7152 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "GUN_VENDETTA1", 1)
  Body_AddItem(L0.Node, "GUN_VENDETTA2", 1)
  Body_AddItem(L0.Node, "AMMO_SHELL", 2000)
  Body_AddItem(L0.Node, "GUN_torpedolauncher", 1)
  Body_AddItem(L0.Node, "torpedo_threshershark", 6)
  CallFunction(o7152, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
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
o7157 = { [nil] = {}, GetCalculated = function()
  if not (o6195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7157.SetStateValue(o7157.GetCalculated())
end, StartCalculate = function()
  o7157["Value"] = o7157.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o7697.Node)
end, SetStateValue = function(L0)
  if not (o7157.Value == L0) then
    o7157["Value"] = L0
    if not (L0 ~= 1) then
      o7157.ChangeTo1()
    end
  end
end }
o7158 = { [nil] = {}, GetCalculated = function()
  if not (o7203.Value ~= True) then
    if not (o7252.Value ~= True) then
      if not (o7301.Value ~= True) then
        if not (o7350.Value ~= True) then
          if not (o7399.Value ~= True) then
            if not (o7448.Value ~= True) then
              if not (o7497.Value ~= True) then
                if not (o7546.Value ~= True) then
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
  o7158.SetStateValue(o7158.GetCalculated())
end, StartCalculate = function()
  o7158["Value"] = o7158.GetCalculated()
  o67.StartCalculate()
  o6960.StartCalculate()
  o7009.StartCalculate()
  o7057.StartCalculate()
  o7164.StartCalculate()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o7707.Node)
  SED_SetTaskTextKey(1273, -1, -1)
end, SetStateValue = function(L0)
  if not (o7158.Value == L0) then
    DelayedFunction(2.4, o7158, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7158.Value == L0) then
    o7158["Value"] = L0
    o67.ReCalculate()
    o6960.ReCalculate()
    o7009.ReCalculate()
    o7057.ReCalculate()
    o7164.ReCalculate()
    if not (L0 ~= 1) then
      o7158.ChangeTo1()
    end
  end
end }
o7159 = { [nil] = {}, GetCalculated = function()
  if not (o6710.Value ~= True) then
    if not (o6762.Value ~= True) then
      if not (o6814.Value ~= True) then
        if not (o6864.Value ~= True) then
          if not (o6914.Value ~= True) then
            return 1
          else
            return 0
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o7159.SetStateValue(o7159.GetCalculated())
end, StartCalculate = function()
  o7159["Value"] = o7159.GetCalculated()
  o66.StartCalculate()
  o7106.StartCalculate()
  o7164.StartCalculate()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o7702.Node)
  SED_SetTaskTextKey(1272, -1, -1)
end, SetStateValue = function(L0)
  if not (o7159.Value == L0) then
    o7159["Value"] = L0
    o66.ReCalculate()
    o7106.ReCalculate()
    o7164.ReCalculate()
    if not (L0 ~= 1) then
      o7159.ChangeTo1()
    end
  end
end }
o7160 = { [nil] = {}, GetCalculated = function()
  if not (o6708.Value == True) then
    if not (o6760.Value == True) then
      if not (o6812.Value == True) then
        if not (o6862.Value == True) then
          if not (o6912.Value ~= True) then
            return 1
          else
            return 0
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o7160.SetStateValue(o7160.GetCalculated())
end, StartCalculate = function()
  o7160["Value"] = o7160.GetCalculated()
  o6704.StartCalculate()
  o6756.StartCalculate()
  o6808.StartCalculate()
  o6858.StartCalculate()
  o6908.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7160.Value == L0) then
    o7160["Value"] = L0
    o6704.ReCalculate()
    o6756.ReCalculate()
    o6808.ReCalculate()
    o6858.ReCalculate()
    o6908.ReCalculate()
  end
end }
o7161 = { [nil] = {}, GetCalculated = function()
  if not (o7201.Value == True) then
    if not (o7250.Value == True) then
      if not (o7299.Value == True) then
        if not (o7348.Value == True) then
          if not (o7397.Value ~= True) then
            return 1
          else
            return 0
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o7161.SetStateValue(o7161.GetCalculated())
end, StartCalculate = function()
  o7161["Value"] = o7161.GetCalculated()
  o7198.StartCalculate()
  o7247.StartCalculate()
  o7296.StartCalculate()
  o7345.StartCalculate()
  o7394.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7161.Value == L0) then
    o7161["Value"] = L0
    o7198.ReCalculate()
    o7247.ReCalculate()
    o7296.ReCalculate()
    o7345.ReCalculate()
    o7394.ReCalculate()
  end
end }
o7162 = { [nil] = {}, Start = function()
  o7162["Value"] = False
  o7591.StartCalculate()
  o7645.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7162.Value == L0) then
    o7162["Value"] = L0
    o7591.ReCalculate()
    o7645.ReCalculate()
  end
end }
o7163 = { [nil] = {}, GetCalculated = function()
  if not (o6963.Value ~= True) then
    if not (o7012.Value ~= True) then
      if not (o7060.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o7163.SetStateValue(o7163.GetCalculated())
end, StartCalculate = function()
  o7163["Value"] = o7163.GetCalculated()
  o7164.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7163.Value == L0) then
    o7163["Value"] = L0
    o7164.ReCalculate()
  end
end }
o7164 = { [nil] = {}, GetCalculated = function()
  if not (o7163.Value ~= True) then
    if not (o7159.Value ~= True) then
      if not (o7158.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o7164.SetStateValue(o7164.GetCalculated())
end, StartCalculate = function()
  o7164["Value"] = o7164.GetCalculated()
  o7169.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7164.Value == L0) then
    DelayedFunction(2, o7164, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7164.Value == L0) then
    o7164["Value"] = L0
    o7169.ReCalculate()
  end
end }
o7165 = { [nil] = {}, GetCalculated = function()
  if not (o7109.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 == 1) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7165.SetStateValue(o7165.GetCalculated())
end, StartCalculate = function()
  o7165["Value"] = o7165.GetCalculated()
  o7166.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7165.Value == L0) then
    o7165["Value"] = L0
    o7166.ReCalculate()
  end
end }
o7166 = { [nil] = {}, GetCalculated = function()
  if not (o7167.Value ~= True) then
    if not (o7165.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o7166.SetStateValue(o7166.GetCalculated())
end, StartCalculate = function()
  o7166["Value"] = o7166.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o7152.Node, o7152.Node, 1226)
end, SetStateValue = function(L0)
  if not (o7166.Value == L0) then
    DelayedFunction(1.246, o7166, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7166.Value == L0) then
    o7166["Value"] = L0
    if not (L0 ~= 1) then
      o7166.ChangeTo1()
    end
  end
end }
o7167 = { [nil] = {}, GetCalculated = function()
  if not (o7448.Value ~= True) then
    if not (o7497.Value ~= True) then
      if not (o7546.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o7167.SetStateValue(o7167.GetCalculated())
end, StartCalculate = function()
  o7167["Value"] = o7167.GetCalculated()
  o7166.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7167.Value == L0) then
    o7167["Value"] = L0
    o7166.ReCalculate()
  end
end }
o7168 = { [nil] = {}, GetCalculated = function()
  if not (o106.Value == True) then
    if not (o33.Value == True) then
      if not (o70.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o7168.SetStateValue(o7168.GetCalculated())
end, StartCalculate = function()
  o7168["Value"] = o7168.GetCalculated()
  o7193.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7168.Value == L0) then
    DelayedFunction(3, o7168, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7168.Value == L0) then
    o7168["Value"] = L0
    o7193.ReCalculate()
  end
end }
o7169 = { [nil] = {}, GetCalculated = function()
  if not (o7164.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7169.SetStateValue(o7169.GetCalculated())
end, StartCalculate = function()
  o7169["Value"] = o7169.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7169.Value == L0) then
    o7169["Value"] = L0
    o2.ReCalculate()
  end
end }
o7193 = { [nil] = {}, GetCalculated = function()
  if not (o7168.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7193.SetStateValue(o7193.GetCalculated())
end, StartCalculate = function()
  o7193["Value"] = o7193.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7193.Value == L0) then
    o7193["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o7197 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7197, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7197, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7197, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o7197, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/ELF_Area", "des", "pla", "", "", 20, 1, "Code5")
  else
    CallFunction(o7197, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ELF_Area", "/Scenario_Dynamic/Navigation/ELF_Area", "/Scenario_Dynamic/Navigation/ELF_Area", "player1", "wng", "pla", "", 1, "Code6")
  else
    CallFunction(o7197, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o7201.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o7203.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7200.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o7198.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7198 = { [nil] = {}, GetCalculated = function()
  if not (o7161.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7198.SetStateValue(o7198.GetCalculated())
end, StartCalculate = function()
  o7198["Value"] = o7198.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7198.Value == L0) then
    o7198["Value"] = L0
    CallFunction(o7197, "ProcesseStateChange")
  end
end }
o7200 = { [nil] = {}, GetCalculated = function()
  if not (o6207.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7200.SetStateValue(o7200.GetCalculated())
end, StartCalculate = function()
  o7200["Value"] = o7200.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7200.Value == L0) then
    o7200["Value"] = L0
    CallFunction(o7197, "ProcesseStateChange")
  end
end }
o7201 = { [nil] = {}, Start = function()
  o7201["Value"] = False
  o7161.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7201.Value == L0) then
    o7201["Value"] = L0
    o7161.ReCalculate()
  end
end }
o7203 = { [nil] = {}, Start = function()
  o7203["Value"] = False
  o7158.StartCalculate()
  o7595.StartCalculate()
  o7649.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7203.Value == L0) then
    o7203["Value"] = L0
    o7158.ReCalculate()
    o7595.ReCalculate()
    o7649.ReCalculate()
  end
end }
S_o7246 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7246, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7246, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7246, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o7246, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/ELF_Area", "des", "pla", "", "", 20, 1, "Code5")
  else
    CallFunction(o7246, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ELF_Area", "/Scenario_Dynamic/Navigation/ELF_Area", "/Scenario_Dynamic/Navigation/ELF_Area", "player1", "wng", "pla", "", 1, "Code6")
  else
    CallFunction(o7246, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o7250.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o7252.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7249.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o7247.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7247 = { [nil] = {}, GetCalculated = function()
  if not (o7161.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7247.SetStateValue(o7247.GetCalculated())
end, StartCalculate = function()
  o7247["Value"] = o7247.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7247.Value == L0) then
    o7247["Value"] = L0
    CallFunction(o7246, "ProcesseStateChange")
  end
end }
o7249 = { [nil] = {}, GetCalculated = function()
  if not (o6207.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7249.SetStateValue(o7249.GetCalculated())
end, StartCalculate = function()
  o7249["Value"] = o7249.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7249.Value == L0) then
    o7249["Value"] = L0
    CallFunction(o7246, "ProcesseStateChange")
  end
end }
o7250 = { [nil] = {}, Start = function()
  o7250["Value"] = False
  o7161.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7250.Value == L0) then
    o7250["Value"] = L0
    o7161.ReCalculate()
  end
end }
o7252 = { [nil] = {}, Start = function()
  o7252["Value"] = False
  o7158.StartCalculate()
  o7595.StartCalculate()
  o7649.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7252.Value == L0) then
    o7252["Value"] = L0
    o7158.ReCalculate()
    o7595.ReCalculate()
    o7649.ReCalculate()
  end
end }
S_o7295 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7295, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7295, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7295, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o7295, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/ELF_Area", "des", "pla", "", "", 20, 1, "Code5")
  else
    CallFunction(o7295, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ELF_Area", "/Scenario_Dynamic/Navigation/ELF_Area", "/Scenario_Dynamic/Navigation/ELF_Area", "player1", "wng", "pla", "", 1, "Code6")
  else
    CallFunction(o7295, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o7299.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o7301.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7298.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o7296.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7296 = { [nil] = {}, GetCalculated = function()
  if not (o7161.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7296.SetStateValue(o7296.GetCalculated())
end, StartCalculate = function()
  o7296["Value"] = o7296.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7296.Value == L0) then
    o7296["Value"] = L0
    CallFunction(o7295, "ProcesseStateChange")
  end
end }
o7298 = { [nil] = {}, GetCalculated = function()
  if not (o6207.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7298.SetStateValue(o7298.GetCalculated())
end, StartCalculate = function()
  o7298["Value"] = o7298.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7298.Value == L0) then
    o7298["Value"] = L0
    CallFunction(o7295, "ProcesseStateChange")
  end
end }
o7299 = { [nil] = {}, Start = function()
  o7299["Value"] = False
  o7161.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7299.Value == L0) then
    o7299["Value"] = L0
    o7161.ReCalculate()
  end
end }
o7301 = { [nil] = {}, Start = function()
  o7301["Value"] = False
  o7158.StartCalculate()
  o7595.StartCalculate()
  o7649.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7301.Value == L0) then
    o7301["Value"] = L0
    o7158.ReCalculate()
    o7595.ReCalculate()
    o7649.ReCalculate()
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
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o7344, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/ELF_Area", "des", "pla", "", "", 20, 1, "Code5")
  else
    CallFunction(o7344, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ELF_Area", "/Scenario_Dynamic/Navigation/ELF_Area", "/Scenario_Dynamic/Navigation/ELF_Area", "player1", "wng", "pla", "", 1, "Code6")
  else
    CallFunction(o7344, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o7348.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o7350.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7347.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o7345.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7345 = { [nil] = {}, GetCalculated = function()
  if not (o7161.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7345.SetStateValue(o7345.GetCalculated())
end, StartCalculate = function()
  o7345["Value"] = o7345.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7345.Value == L0) then
    o7345["Value"] = L0
    CallFunction(o7344, "ProcesseStateChange")
  end
end }
o7347 = { [nil] = {}, GetCalculated = function()
  if not (o6207.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7347.SetStateValue(o7347.GetCalculated())
end, StartCalculate = function()
  o7347["Value"] = o7347.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7347.Value == L0) then
    o7347["Value"] = L0
    CallFunction(o7344, "ProcesseStateChange")
  end
end }
o7348 = { [nil] = {}, Start = function()
  o7348["Value"] = False
  o7161.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7348.Value == L0) then
    o7348["Value"] = L0
    o7161.ReCalculate()
  end
end }
o7350 = { [nil] = {}, Start = function()
  o7350["Value"] = False
  o7158.StartCalculate()
  o7595.StartCalculate()
  o7649.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7350.Value == L0) then
    o7350["Value"] = L0
    o7158.ReCalculate()
    o7595.ReCalculate()
    o7649.ReCalculate()
  end
end }
S_o7393 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7393, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7393, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7393, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o7393, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/ELF_Area", "des", "pla", "", "", 20, 1, "Code5")
  else
    CallFunction(o7393, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ELF_Area", "/Scenario_Dynamic/Navigation/ELF_Area", "/Scenario_Dynamic/Navigation/ELF_Area", "player1", "wng", "pla", "", 1, "Code6")
  else
    CallFunction(o7393, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o7397.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o7399.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7396.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o7394.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7394 = { [nil] = {}, GetCalculated = function()
  if not (o7161.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7394.SetStateValue(o7394.GetCalculated())
end, StartCalculate = function()
  o7394["Value"] = o7394.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7394.Value == L0) then
    o7394["Value"] = L0
    CallFunction(o7393, "ProcesseStateChange")
  end
end }
o7396 = { [nil] = {}, GetCalculated = function()
  if not (o6207.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7396.SetStateValue(o7396.GetCalculated())
end, StartCalculate = function()
  o7396["Value"] = o7396.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7396.Value == L0) then
    o7396["Value"] = L0
    CallFunction(o7393, "ProcesseStateChange")
  end
end }
o7397 = { [nil] = {}, Start = function()
  o7397["Value"] = False
  o7161.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7397.Value == L0) then
    o7397["Value"] = L0
    o7161.ReCalculate()
  end
end }
o7399 = { [nil] = {}, Start = function()
  o7399["Value"] = False
  o7158.StartCalculate()
  o7595.StartCalculate()
  o7649.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7399.Value == L0) then
    o7399["Value"] = L0
    o7158.ReCalculate()
    o7595.ReCalculate()
    o7649.ReCalculate()
  end
end }
S_o7442 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7442, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7442, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7442, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/freighter1_area", "/Scenario_Dynamic/Navigation/freighter1_area", "/Scenario_Dynamic/Navigation/freighter1_area", "gen_freighter2_1", "player1", "", "", 1, "Code4")
  else
    CallFunction(o7442, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ELF_Area", "/Scenario_Dynamic/Navigation/ELF_Area", "/Scenario_Dynamic/Navigation/ELF_Area", "des", "pla", "", "", 1, "Code5")
  else
    CallFunction(o7442, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o7448.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o7443.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7443 = { [nil] = {}, GetCalculated = function()
  if not (o7109.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7443.SetStateValue(o7443.GetCalculated())
end, StartCalculate = function()
  o7443["Value"] = o7443.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7443.Value == L0) then
    o7443["Value"] = L0
    CallFunction(o7442, "ProcesseStateChange")
  end
end }
o7448 = { [nil] = {}, Start = function()
  o7448["Value"] = False
  o7158.StartCalculate()
  o7167.StartCalculate()
  o7595.StartCalculate()
  o7649.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7448.Value == L0) then
    o7448["Value"] = L0
    o7158.ReCalculate()
    o7167.ReCalculate()
    o7595.ReCalculate()
    o7649.ReCalculate()
  end
end }
S_o7491 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7491, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7491, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7491, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/freighter1_area", "/Scenario_Dynamic/Navigation/freighter1_area", "/Scenario_Dynamic/Navigation/freighter1_area", "gen_freighter2_1", "player1", "", "", 1, "Code4")
  else
    CallFunction(o7491, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ELF_Area", "/Scenario_Dynamic/Navigation/ELF_Area", "/Scenario_Dynamic/Navigation/ELF_Area", "des", "pla", "", "", 1, "Code5")
  else
    CallFunction(o7491, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o7497.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o7492.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7492 = { [nil] = {}, GetCalculated = function()
  if not (o7109.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7492.SetStateValue(o7492.GetCalculated())
end, StartCalculate = function()
  o7492["Value"] = o7492.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7492.Value == L0) then
    o7492["Value"] = L0
    CallFunction(o7491, "ProcesseStateChange")
  end
end }
o7497 = { [nil] = {}, Start = function()
  o7497["Value"] = False
  o7158.StartCalculate()
  o7167.StartCalculate()
  o7595.StartCalculate()
  o7649.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7497.Value == L0) then
    o7497["Value"] = L0
    o7158.ReCalculate()
    o7167.ReCalculate()
    o7595.ReCalculate()
    o7649.ReCalculate()
  end
end }
S_o7540 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7540, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7540, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7540, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/freighter1_area", "/Scenario_Dynamic/Navigation/freighter1_area", "/Scenario_Dynamic/Navigation/freighter1_area", "gen_freighter2_1", "player1", "", "", 1, "Code4")
  else
    CallFunction(o7540, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ELF_Area", "/Scenario_Dynamic/Navigation/ELF_Area", "/Scenario_Dynamic/Navigation/ELF_Area", "des", "pla", "", "", 1, "Code5")
  else
    CallFunction(o7540, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o7546.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o7541.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7541 = { [nil] = {}, GetCalculated = function()
  if not (o7109.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7541.SetStateValue(o7541.GetCalculated())
end, StartCalculate = function()
  o7541["Value"] = o7541.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7541.Value == L0) then
    o7541["Value"] = L0
    CallFunction(o7540, "ProcesseStateChange")
  end
end }
o7546 = { [nil] = {}, Start = function()
  o7546["Value"] = False
  o7158.StartCalculate()
  o7167.StartCalculate()
  o7595.StartCalculate()
  o7649.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7546.Value == L0) then
    o7546["Value"] = L0
    o7158.ReCalculate()
    o7167.ReCalculate()
    o7595.ReCalculate()
    o7649.ReCalculate()
  end
end }
S_o7589 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7589, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7589, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7589, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 1)
  ShieldedBody_MakeInvulnerable(L0.Node)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o7589, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o7589, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7589, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/BonhamPathToNav2", 1, 1 } }("Code9")
  else
    CallFunction(o7589, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2_Area", "E", "", "", "", 1, 1, "Code10")
  else
    CallFunction(o7589, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/BonhamPathToELF", 1, 1 } }("Code11")
  else
    CallFunction(o7589, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ELF_Area", "/Scenario_Dynamic/Navigation/ELF_Area", "/Scenario_Dynamic/Navigation/ELF_Area", "E", "", "", "", 1, "Code12")
  else
    CallFunction(o7589, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/BonhamPathToELF", "pos_6", "pos_1", 1, 1 } }("Code13")
  else
    CallFunction(o7589, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "E", "", "", "", 1, "Code14")
  else
    CallFunction(o7589, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o7591.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 11) then
    if not (L0.CodeIndex >= 12) then
      if not (o7595.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7591 = { [nil] = {}, GetCalculated = function()
  if not (o7162.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7591.SetStateValue(o7591.GetCalculated())
end, StartCalculate = function()
  o7591["Value"] = o7591.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7591.Value == L0) then
    o7591["Value"] = L0
    CallFunction(o7589, "ProcesseStateChange")
  end
end }
o7595 = { [nil] = {}, GetCalculated = function()
  if not (o7203.Value ~= True) then
    if not (o7252.Value ~= True) then
      if not (o7301.Value ~= True) then
        if not (o7350.Value ~= True) then
          if not (o7399.Value ~= True) then
            if not (o7448.Value ~= True) then
              if not (o7497.Value ~= True) then
                if not (o7546.Value ~= True) then
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
  o7595.SetStateValue(o7595.GetCalculated())
end, StartCalculate = function()
  o7595["Value"] = o7595.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7595.Value == L0) then
    o7595["Value"] = L0
    CallFunction(o7589, "ProcesseStateChange")
  end
end }
S_o7643 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7643, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7643, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7643, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  ShieldedBody_MakeInvulnerable(L0.Node)
  Vessel_CollisionObjects(L0.Node, 1)
  CallFunction(o7643, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o7643, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7643, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/DegrangePathToNav2", 1, 1 } }("Code9")
  else
    CallFunction(o7643, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2_Area", "E", "", "", "", 1, 1, "Code10")
  else
    CallFunction(o7643, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/DegrangePathToELF", 1, 1 } }("Code11")
  else
    CallFunction(o7643, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ELF_Area", "/Scenario_Dynamic/Navigation/ELF_Area", "/Scenario_Dynamic/Navigation/ELF_Area", "E", "", "", "", 1, "Code12")
  else
    CallFunction(o7643, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/DegrangePathToELF", "pos_6", "pos_1", 1, 1 } }("Code13")
  else
    CallFunction(o7643, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "/Scenario_Dynamic/Navigation/Nav2_Area", "E", "", "", "", 1, "Code14")
  else
    CallFunction(o7643, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o7645.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 11) then
    if not (L0.CodeIndex >= 12) then
      if not (o7649.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7645 = { [nil] = {}, GetCalculated = function()
  if not (o7162.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7645.SetStateValue(o7645.GetCalculated())
end, StartCalculate = function()
  o7645["Value"] = o7645.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7645.Value == L0) then
    o7645["Value"] = L0
    CallFunction(o7643, "ProcesseStateChange")
  end
end }
o7649 = { [nil] = {}, GetCalculated = function()
  if not (o7203.Value ~= True) then
    if not (o7252.Value ~= True) then
      if not (o7301.Value ~= True) then
        if not (o7350.Value ~= True) then
          if not (o7399.Value ~= True) then
            if not (o7448.Value ~= True) then
              if not (o7497.Value ~= True) then
                if not (o7546.Value ~= True) then
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
  o7649.SetStateValue(o7649.GetCalculated())
end, StartCalculate = function()
  o7649["Value"] = o7649.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7649.Value == L0) then
    DelayedFunction(3, o7649, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7649.Value == L0) then
    o7649["Value"] = L0
    CallFunction(o7643, "ProcesseStateChange")
  end
end }
S_o7697 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, o7152.Node, 1173)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o6701.Node)
  CallFunction(o7697, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o7702 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, o7152.Node, 1115)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, 0, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, 0, 8)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), 0)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o7702, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o7707 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, o7152.Node, 20)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o7707, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o7712 = { [nil] = {}, Start = function(L0)

end }
o7714 = FormationLib.CreateFormation("Triangle", "", "", "", 15, 30)
S_o7715 = { [nil] = {}, Start = function(L0)

end }
S_o7716 = { [nil] = {}, Start = function(L0)

end }
S_o7717 = { [nil] = {}, Start = function(L0)

end }
S_o7718 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Director_BeginCutscene(L0.Node)
  Game_PlayMusic(GetGameNode(), "agressive")
  FormationLib.PlaceFormationPath(o7713, o7714, "/InGameSequences/Navigation/PlaWngToNav1")
  Camera_MoveInto(L0.Node, "/InGameSequences/Navigation/Chapter1_CamPos1")
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 5)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_Cut(L0.Node, 1)
  Camera_RollTo(L0.Node, 0, 0, False)
  CallFunction(o7718, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o7713, o7714, "/InGameSequences/Navigation/PlaWngToNav1", "pos_1", "pos_2", 0.5, 1, "Code9")
  else
    CallFunction(o7718, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  SendRadioMessageTake(o7152.Node, o7152.Node, 19)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Chapter1_CamPos2", 3, "MMMN", 0)
  CallFunction(o7718, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o7713, o7714, "/InGameSequences/Navigation/PlaWngToNav1", "pos_2", "pos_3", 0.5, 1, "Code12")
  else
    CallFunction(o7718, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Chapter1_CamPos3", 3, "MMMN", 0)
  CallFunction(o7718, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o7713, o7714, "/InGameSequences/Navigation/PlaWngToNav1", "pos_3", "pos_4", 0.5, 1, "Code14")
  else
    CallFunction(o7718, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Director_EndCutscene(L0.Node)
  o7162.SetStateValue(True)
  SED_SetTaskTextKey(1271, -1, -1)
  CallFunction(o7643, "Code8")
  CallFunction(o7589, "Code8")
  CallFunction(o7718, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 325)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_elfnoteNav1", S_o30)
  o33.Start()
  o65 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_elfnoteNav2", S_o65)
  o70.Start()
  o102 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_ElfStation", S_o102)
  o106.Start()
  o138 = BindEasy(Node_Find("/Scenario_Static/Object"), "pplant2_1", S_o138)
  o173 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_32", S_o173)
  o207 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_33", S_o207)
  o241 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_34", S_o241)
  o275 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_35", S_o275)
  o309 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_36", S_o309)
  o343 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_37", S_o343)
  o377 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_41", S_o377)
  o411 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_42", S_o411)
  o445 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_43", S_o445)
  o479 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_44", S_o479)
  o513 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_45", S_o513)
  o547 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_46", S_o547)
  o581 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_47", S_o581)
  o615 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_48", S_o615)
  o649 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_49", S_o649)
  o683 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_50", S_o683)
  o717 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_51", S_o717)
  o751 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_52", S_o751)
  o785 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_53", S_o785)
  o819 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_54", S_o819)
  o853 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_55", S_o853)
  o887 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_56", S_o887)
  o921 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_57", S_o921)
  o955 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_58", S_o955)
  o989 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_59", S_o989)
  o1023 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_60", S_o1023)
  o1057 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_61", S_o1057)
  o1091 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_62", S_o1091)
  o1125 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_63", S_o1125)
  o1159 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_64", S_o1159)
  o1193 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_65", S_o1193)
  o1227 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_66", S_o1227)
  o1261 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_1", S_o1261)
  o1295 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_2", S_o1295)
  o1329 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_3", S_o1329)
  o1363 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_6", S_o1363)
  o1397 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_7", S_o1397)
  o1431 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_8", S_o1431)
  o1465 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_9", S_o1465)
  o1499 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_10", S_o1499)
  o1533 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_11", S_o1533)
  o1567 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_12", S_o1567)
  o1601 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_13", S_o1601)
  o1635 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_40", S_o1635)
  o1669 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_41", S_o1669)
  o1703 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_42", S_o1703)
  o1737 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_43", S_o1737)
  o1771 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_44", S_o1771)
  o1805 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_45", S_o1805)
  o1839 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_48", S_o1839)
  o1873 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_49", S_o1873)
  o1907 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_50", S_o1907)
  o1941 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_51", S_o1941)
  o1975 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_52", S_o1975)
  o2009 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_53", S_o2009)
  o2043 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_54", S_o2043)
  o2077 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_55", S_o2077)
  o2111 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_56", S_o2111)
  o2145 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_57", S_o2145)
  o2179 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_58", S_o2179)
  o2213 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_59", S_o2213)
  o2247 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_60", S_o2247)
  o2281 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_61", S_o2281)
  o2315 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_62", S_o2315)
  o2349 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_63", S_o2349)
  o2383 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_64", S_o2383)
  o2417 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_65", S_o2417)
  o2451 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_66", S_o2451)
  o2485 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_67", S_o2485)
  o2519 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_68", S_o2519)
  o2553 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_69", S_o2553)
  o2587 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_70", S_o2587)
  o2621 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_71", S_o2621)
  o2655 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_1", S_o2655)
  o2689 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_2", S_o2689)
  o2723 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_3", S_o2723)
  o2757 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_5", S_o2757)
  o2791 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_6", S_o2791)
  o2825 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_7", S_o2825)
  o2859 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_8", S_o2859)
  o2893 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_9", S_o2893)
  o2927 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_10", S_o2927)
  o2961 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_11", S_o2961)
  o2995 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_12", S_o2995)
  o3029 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_13", S_o3029)
  o3063 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_1", S_o3063)
  o3097 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_3", S_o3097)
  o3131 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_4", S_o3131)
  o3165 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_5", S_o3165)
  o3199 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_6", S_o3199)
  o3233 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_7", S_o3233)
  o3267 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_8", S_o3267)
  o3301 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_16", S_o3301)
  o3335 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_17", S_o3335)
  o3369 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_18", S_o3369)
  o3403 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_19", S_o3403)
  o3437 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_20", S_o3437)
  o3471 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_21", S_o3471)
  o3505 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_22", S_o3505)
  o3539 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_23", S_o3539)
  o3573 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_24", S_o3573)
  o3607 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_25", S_o3607)
  o3641 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_26", S_o3641)
  o3675 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_27", S_o3675)
  o3709 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_28", S_o3709)
  o3743 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_29", S_o3743)
  o3777 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_30", S_o3777)
  o3811 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_31", S_o3811)
  o3845 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_32", S_o3845)
  o3879 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_33", S_o3879)
  o3913 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_34", S_o3913)
  o3947 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_35", S_o3947)
  o3981 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_36", S_o3981)
  o4015 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_37", S_o4015)
  o4049 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_1", S_o4049)
  o4083 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafoA_1", S_o4083)
  o4117 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafoA_2", S_o4117)
  o4151 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker_1", S_o4151)
  o4185 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker_2", S_o4185)
  o4219 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker_5", S_o4219)
  o4253 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker_6", S_o4253)
  o4287 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_1", S_o4287)
  o4321 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_2", S_o4321)
  o4355 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_sbunker_5", S_o4355)
  o4389 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schorn1_1", S_o4389)
  o4423 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schorn1_2", S_o4423)
  o4457 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dock", S_o4457)
  o4491 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k2_1", S_o4491)
  o4525 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraftw22_2", S_o4525)
  o4559 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnkg2_1", S_o4559)
  o4593 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole_1", S_o4593)
  o4627 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_3", S_o4627)
  o4661 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_4", S_o4661)
  o4695 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_5", S_o4695)
  o4729 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_2", S_o4729)
  o4763 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_1", S_o4763)
  o4797 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_2", S_o4797)
  o4831 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_3", S_o4831)
  o4865 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_4", S_o4865)
  o4899 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_5", S_o4899)
  o4933 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_6", S_o4933)
  o4967 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_7", S_o4967)
  o5001 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_7", S_o5001)
  o5035 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_8", S_o5035)
  o5069 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_9", S_o5069)
  o5103 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_10", S_o5103)
  o5137 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_11", S_o5137)
  o5171 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_1", S_o5171)
  o5205 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_1", S_o5205)
  o5239 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_2", S_o5239)
  o5273 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_3", S_o5273)
  o5307 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf_8", S_o5307)
  o5341 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf_7", S_o5341)
  o5375 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf_4", S_o5375)
  o5409 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf_3", S_o5409)
  o5443 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf_2", S_o5443)
  o5477 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf_18", S_o5477)
  o5511 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf_15", S_o5511)
  o5545 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf_11", S_o5545)
  o5579 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf_12", S_o5579)
  o5613 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_1", S_o5613)
  o5647 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_2", S_o5647)
  o5681 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_3", S_o5681)
  o5715 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker_3", S_o5715)
  o5749 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker_4", S_o5749)
  o5783 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_2", S_o5783)
  o5817 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_4", S_o5817)
  o5851 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_elfnote_unused", S_o5851)
  o5886 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_elfnote_unused2", S_o5886)
  o5921 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_elfnote_unused3", S_o5921)
  o5956 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_1/Turm1", S_o5956)
  o5994 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_2/Turm1", S_o5994)
  o6032 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_6/Turm1", S_o6032)
  o6070 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_3/Turm1", S_o6070)
  o6108 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_4/Turm1", S_o6108)
  o6146 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_5/Turm1", S_o6146)
  o6184 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Nav2PlaTrigger", S_o6184)
  o6190 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Nav1PlaTrigger", S_o6190)
  o6195.Start()
  o6196 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Nav1WngTrigger", S_o6196)
  o6202 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "ElfPlaTrigger", S_o6202)
  o6207.Start()
  o6208 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Nav1ToNav2Trigger", S_o6208)
  o6213.Start()
  o6214 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "CityTrigger", S_o6214)
  o6219.Start()
  o6220 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "atl_scout1_3", S_o6220)
  o6268 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "atl_scout2_1", S_o6268)
  o6316 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "atl_scout1_2", S_o6316)
  o6364 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "atl_scout1_1", S_o6364)
  o6412 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "dum_freighter", S_o6412)
  o6461 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC/police"), "atl_polpat_5", S_o6461)
  o6509 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC/police"), "atl_polpat_4", S_o6509)
  o6557 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC/police"), "atl_polpat_3", S_o6557)
  o6605 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC/police"), "atl_polpat_2", S_o6605)
  o6653 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC/police"), "atl_polpat_1", S_o6653)
  o6701 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Nav1Pirate1", S_o6701)
  o6708.Start()
  o6710.Start()
  o6753 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Nav1Pirate2", S_o6753)
  o6760.Start()
  o6762.Start()
  o6805 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Nav1Pirate3", S_o6805)
  o6812.Start()
  o6814.Start()
  o6857 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Nav2Pirate1", S_o6857)
  o6862.Start()
  o6864.Start()
  o6907 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Nav2Pirate2", S_o6907)
  o6912.Start()
  o6914.Start()
  o6957 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "BackPirate1", S_o6957)
  o6963.Start()
  o6969.Start()
  o7006 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "BackPirate2", S_o7006)
  o7012.Start()
  o7017.Start()
  o7055 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "BackPirate3", S_o7055)
  o7060.Start()
  o7103 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_freighter2_1", S_o7103)
  o7109.Start()
  o7152 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o7152)
  o7162.Start()
  o7197 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ElfPirate1", S_o7197)
  o7201.Start()
  o7203.Start()
  o7246 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ElfPirate2", S_o7246)
  o7250.Start()
  o7252.Start()
  o7295 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ElfPirate3", S_o7295)
  o7299.Start()
  o7301.Start()
  o7344 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ElfPirate4", S_o7344)
  o7348.Start()
  o7350.Start()
  o7393 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ElfPirate5", S_o7393)
  o7397.Start()
  o7399.Start()
  o7442 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "FreighterPirate1", S_o7442)
  o7448.Start()
  o7491 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "FreighterPirate2", S_o7491)
  o7497.Start()
  o7540 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "FreighterPirate3", S_o7540)
  o7546.Start()
  o7589 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_bonham_1", S_o7589)
  o7643 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_degrange_1", S_o7643)
  o7697 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_follow_1", S_o7697)
  o7702 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_03_1", S_o7702)
  o7707 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_04_1", S_o7707)
  o7712 = BindEasy(Node_Find("/"), "Camera", S_o7712)
  o7715 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Chapter1_CamPos1", S_o7715)
  o7716 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Chapter1_CamPos2", S_o7716)
  o7717 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Chapter1_CamPos3", S_o7717)
  o7718 = BindEasy(Node_Find("/InGameSequences/Director"), "Chapter1_Intro_V", S_o7718)
  o6460 = { {}, o6461, o6509, o6557, o6605, o6653 }()
  o7713 = { {}, o7152, o7643, o7589 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end