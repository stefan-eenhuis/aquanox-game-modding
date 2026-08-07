-- dekompiliert aus map\1h2\script\1h2.sco
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
  Terrain_LoadTerrain(node1, "map/1H2/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/1H2/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrain(node0, 0.025, 0.3)
  Game_SetCausticObject(node0, 0.1, 0.3)
  Game_SetCausticBuilding(node0, 0.025, 0.3)
  Game_SetLightCache(node0, "map/1H2/Lmsh/", "map/1H2/Ltex/")
  Game_SetTerrainDepth(node0, 3000)
  Game_SetDecompressionHeight(node0, 450)
  Game_SetAmbientLight(node0, 0.019608, 0.141176, 0.101961)
  Game_SetParallelLightT(node0, 0.039216, 0.282353, 0.203922)
  Game_SetParallelLightB(node0, 0.376471, 0.298039, 0.133333)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_1H2_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track01_frag_heroic1.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_track03.sam", 1)
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
  node8 = Node_CreateNode("nod_generic", "gen_turret_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(2021.550812, 2006.644681, 519.582816), MAT_Vector3(146.572472, 0, 0))
  Node_ParseIniFile(node8, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node8, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "gen_turret_2")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(2016.458965, 2259.689649, 409.379958), MAT_Vector3(89.790883, 0, 0))
  Node_ParseIniFile(node9, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node9, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "gen_turret_3")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(1753.271024, 2516.079153, 221.598579), MAT_Vector3(117.077396, 0, 0))
  Node_ParseIniFile(node10, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node10, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "gen_turret_4")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(2890.889749, 2715.787084, 261.76387), MAT_Vector3(-41.766319, 0, 0))
  Node_ParseIniFile(node11, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node11, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "gen_turret_5")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(3040.415742, 2483.697768, 306.849446), MAT_Vector3(-0.289053, 0, 0))
  Node_ParseIniFile(node12, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node12, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "gen_turret_6")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(3060.269256, 2323.39032, 490.298688), MAT_Vector3(-26.608749, 0, 0))
  Node_ParseIniFile(node13, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node13, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "gen_turret_7")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(2595.175035, 2366.125557, 332.383902), MAT_Vector3(-26.60875, 0, 0))
  Node_ParseIniFile(node14, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node14, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "gen_turm2_4")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(646.7438, 887.8473, 16.37875), MAT_Vector3(-15.9796, -16.1376, 24.91557))
  Node_ParseIniFile(node15, "osd/gen/gen_tower2.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "gen_turm2_3")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(804.1447, 684.4536, -6.132776), MAT_Vector3(0, 0, -32.7581))
  Node_ParseIniFile(node16, "osd/gen/gen_tower2.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "gen_mhaus3_2")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(890.929463, 621.593941, -12.77464), MAT_Vector3(-78.99017, 13.48653, -10.42174))
  Node_ParseIniFile(node17, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "gen_mhaus2_2")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(988.0926, 828.4691, 21.02213), MAT_Vector3(-9.4196, 6.959066, -11.0939))
  Node_ParseIniFile(node18, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "gen_mhaus1_1")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(839.7868, 792.4787, -12.48106), MAT_Vector3(135.443, 0, 0))
  Node_ParseIniFile(node19, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "gen_mhaus1_2")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(765.89599, 957.697039, 5.015451), MAT_Vector3(-5, 0, 42.33831))
  Node_ParseIniFile(node20, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "gen_trafo_1")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(1046.255, 969.6648, 5.771385), MAT_Vector3(0, 0, -16.9971))
  Node_ParseIniFile(node21, "osd/gen/gen_trafo.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "gen_trafo_2")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(793.037346, 725.156193, 7.343437), MAT_Vector3(28.94402, 6.498985, 14.65151))
  Node_ParseIniFile(node22, "osd/gen/gen_trafo.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "gen_trafo_3")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(731.6038, 812.7792, 22.37445), MAT_Vector3(29.63559, -11.2658, -18.9525))
  Node_ParseIniFile(node23, "osd/gen/gen_trafo.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "gen_stab1_3")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(983.413517, 833.321077, 15.87198), MAT_Vector3(8.555239, -12.1637, 35.52557))
  Node_ParseIniFile(node24, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "gen_stab2_6")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(612.478945, 807.881308, 32.753756), MAT_Vector3(-72.93531, 22.030763, 13.33766))
  Node_ParseIniFile(node25, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_funda4b_1")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(1141.904568, 618.120148, 71.444861), MAT_Vector3(26.751717, -46.55754, -25.48124))
  Node_ParseIniFile(node26, "osd/gen/gen_foundation4b.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "gen_funda4b_2")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(912.123301, 1005, 17), MAT_Vector3(-12, -26, -6))
  Node_ParseIniFile(node27, "osd/gen/gen_foundation4b.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "gen_funda4b_4")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(568.0812, 1063.401, 96.25846), MAT_Vector3(-143.5519, -39.5408, -36.3656))
  Node_ParseIniFile(node28, "osd/gen/gen_foundation4b.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "gen_schrott1_1")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(1123.217, 881.8457, -0.110086), MAT_Vector3(-10.43145, 7.596259, -7.844854))
  Node_ParseIniFile(node29, "osd/gen/gen_schrott1.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "gen_schrott2_1")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(899.7737, 691.8528, 7.961951), MAT_Vector3(67.95521, 78.63345, -69.98425))
  Node_ParseIniFile(node30, "osd/gen/gen_schrott2.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "gen_schrott2_5")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(726.374269, 1062.783036, 60.5695), MAT_Vector3(-180, 90, 90))
  Node_ParseIniFile(node31, "osd/gen/gen_schrott2.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "gen_schrott2_6")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(759.339368, 1056.558352, 28.7174), MAT_Vector3(0, 90, 90))
  Node_ParseIniFile(node32, "osd/gen/gen_schrott2.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_schrot2_2")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(1116.339, 999.3425, 25.06646), MAT_Vector3(39.2593, -17.15437, 31.84378))
  Node_ParseIniFile(node33, "osd/gen/gen_schrott2.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "gen_schrott2_3")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(1002.907, 840.0683, 42.28273), MAT_Vector3(101.0145, -6.46199, -176.4256))
  Node_ParseIniFile(node34, "osd/gen/gen_schrott2.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "gen_schrott2_4")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(633.776426, 729.518923, 49.193955), MAT_Vector3(106.1385, -72.19971, 168.946))
  Node_ParseIniFile(node35, "osd/gen/gen_schrott2.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_schrott3_1")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(844.389737, 690.020475, 14.84756), MAT_Vector3(159.9448, -11.38788, -107.0815))
  Node_ParseIniFile(node36, "osd/gen/gen_schrott3.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "gen_schrott3_3")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(680.410723, 1031.541038, 35.872615), MAT_Vector3(2.095379, 9.579786, -3.619361))
  Node_ParseIniFile(node37, "osd/gen/gen_schrott3.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "gen_schrott3_4")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(728.3932, 1047.408, 68.87417), MAT_Vector3(3.444636, 78.65252, 0))
  Node_ParseIniFile(node38, "osd/gen/gen_schrott3.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_schrott3_5")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(674.363323, 692.112685, 46.45056), MAT_Vector3(-25.71337, -13.99724, -119.5634))
  Node_ParseIniFile(node39, "osd/gen/gen_schrott3.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_schrott3_6")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(1115.375, 753.7732, 44.68972), MAT_Vector3(-6.412298, 13.06666, 169.1372))
  Node_ParseIniFile(node40, "osd/gen/gen_schrott3.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_schrott3_7")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(1101.795, 757.1087, 42.08684), MAT_Vector3(172.9907, -13.17752, -169.2727))
  Node_ParseIniFile(node41, "osd/gen/gen_schrott3.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_schrott3_2")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(715.890572, 917.71792, 38.784336), MAT_Vector3(118.796843, -19.245647, 156.109553))
  Node_ParseIniFile(node42, "osd/gen/gen_schrott3.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_schrott4_1")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(869.2629, 839.3582, 27.68723), MAT_Vector3(42.66481, 34.97531, -93.31782))
  Node_ParseIniFile(node43, "osd/gen/gen_schrott4.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_schrott4_2")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(624.8044, 1051.693, 57.34556), MAT_Vector3(-85.74831, 63.47705, 32.60576))
  Node_ParseIniFile(node44, "osd/gen/gen_schrott4.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_schrott4_3")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(749.7605, 1021.1576, 42.87845), MAT_Vector3(180, 0, -90))
  Node_ParseIniFile(node45, "osd/gen/gen_schrott4.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_schrott4_4")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(754.232295, 1095.943762, 47.01214), MAT_Vector3(0, 0, -90))
  Node_ParseIniFile(node46, "osd/gen/gen_schrott4.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "gen_schrott3_9")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(962.2493, 668.5314, 7.346473), MAT_Vector3(-147.9512, 42.27324, 98.22187))
  Node_ParseIniFile(node47, "osd/gen/gen_schrott3.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "gen_schrott2_0")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(844.7815, 614.5828, 14.88615), MAT_Vector3(149.7809, -86.84135, 176.6987))
  Node_ParseIniFile(node48, "osd/gen/gen_schrott2.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "gen_schrott4_6")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(1128.779, 769.6805, 27.59663), MAT_Vector3(80.63992, -10.78735, -99.40086))
  Node_ParseIniFile(node49, "osd/gen/gen_schrott4.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "gen_schrott4_9")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(1102.023, 777.1624, 27.59663), MAT_Vector3(80.63992, -10.78735, -99.40086))
  Node_ParseIniFile(node50, "osd/gen/gen_schrott4.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_schrott4_7")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(1120.606, 743.0489, 43.44732), MAT_Vector3(-99.32726, 12.24207, 98.26049))
  Node_ParseIniFile(node51, "osd/gen/gen_schrott4.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "gen_schrott4_8")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(1094.336, 748.8491, 43.44732), MAT_Vector3(-99.32726, 12.24207, 98.26049))
  Node_ParseIniFile(node52, "osd/gen/gen_schrott4.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_schrott4_0")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(977.832458, 617.707956, 28.08923), MAT_Vector3(-64.84278, 40.84277, -110.1302))
  Node_ParseIniFile(node53, "osd/gen/gen_schrott4.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "gen_bunker_1")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(3071.392, 2145.742, 501.186971), MAT_Vector3(-25, 0, 0))
  Node_ParseIniFile(node54, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "gen_kai2_1")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(3031.257, 2251.466, 485.589879), MAT_Vector3(65, 0, 0))
  Node_ParseIniFile(node55, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "gen_stab1_1")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(2592.938, 2734.184, 303.6742), MAT_Vector3(-0.0111, 0.652476, 0.978921))
  Node_ParseIniFile(node56, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "gen_stab2_1")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(3098.888, 2162.726, 542.656924), MAT_Vector3(-24.94285, 0, 0))
  Node_ParseIniFile(node57, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "gen_stab3_1")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(2370.061, 2679.345, 408.5963), MAT_Vector3(0, 0.978857, 0.652571))
  Node_ParseIniFile(node58, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "gen_stab3_10")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(2168.136, 2255.186, 427.0412), MAT_Vector3(28.35852, 0, 0))
  Node_ParseIniFile(node59, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "gen_stab3_11")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(2221.586, 2142.733, 427.0412), MAT_Vector3(28.35852, 0, 0))
  Node_ParseIniFile(node60, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "gen_stab3_12")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(2286.895, 2173.605, 452.5014), MAT_Vector3(28.35852, 0, 0))
  Node_ParseIniFile(node61, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "gen_stab1_2")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(2872.288, 2468.36, 325.435), MAT_Vector3(0, -2.9366, 0))
  Node_ParseIniFile(node62, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "gen_stab2_2")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(1721.348, 1654.031, 287.2701), MAT_Vector3(-0.0446, -1.9585, 1.955683))
  Node_ParseIniFile(node63, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "gen_stab2_3")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(1851.438, 2506.056, 244.9558), MAT_Vector3(-0.167, 0.659701, -4.8895))
  Node_ParseIniFile(node64, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "gen_stab3_2")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(1970.014, 1812.554, 308.2351), MAT_Vector3(0.055802, 3.262382, -0.9804))
  Node_ParseIniFile(node65, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "gen_stab3_3")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(2121.701, 1885.823, 426.0012), MAT_Vector3(0, -0.9789, -1.3051))
  Node_ParseIniFile(node66, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "gen_parabo_1")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(3065.585, 2124.723, 549.004533), MAT_Vector3(-5.5469, 0, 0))
  Node_ParseIniFile(node67, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "gen_schorn2_1")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(3013.124, 2199.413, 483.468955), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node68, "osd/gen/gen_chimney2.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "gen_elf-kn_1")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(3836.227, 3453.609, 188.6038), MAT_Vector3(-1.007684, 0, 0))
  Node_ParseIniFile(node69, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "gen_elf-kn_2")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(2734.37, 3461.563, 192.0282), MAT_Vector3(-89.9524, 2.716818, -7.431))
  Node_ParseIniFile(node70, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "gen_elf-kn_3")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(2000.824, 3449.534, 236.1078), MAT_Vector3(88.09784, 3.39652, 12.17038))
  Node_ParseIniFile(node71, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "gen_elf-kn_4")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(1176.847, 3456.431, 217.1144), MAT_Vector3(0.927116, -2.1633, 0))
  Node_ParseIniFile(node72, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "gen_elf-kn_5")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(780.4056, 3449.648, 168.51), MAT_Vector3(-179.8653, 6.187595, -6.7471))
  Node_ParseIniFile(node73, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "gen_tnk_k2_1")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(2964.468, 2088.15, 472.761733), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node74, "osd/gen/gen_tank_sml2.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "gen_mhaus3_1")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(1182.511, 1410.197, 198.2623), MAT_Vector3(-54.3908, 0, 0))
  Node_ParseIniFile(node75, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "gen_mhaus2_1")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(1086.975, 1517.855, 189.1854), MAT_Vector3(0, 0, -4.1696))
  Node_ParseIniFile(node76, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "gen_stab3_4")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(869.9848, 1381.374, 177.7295), MAT_Vector3(-2.123, -0.7332, -4.8355))
  Node_ParseIniFile(node77, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "gen_stab3_9")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(873.1691, 1444.832, 177.7295), MAT_Vector3(-2.7727, -3.4377, 0.394495))
  Node_ParseIniFile(node78, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "gen_stab3_5")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(1117.279, 1165.62, 126.807), MAT_Vector3(-6.5409, 22.37913, 4.384966))
  Node_ParseIniFile(node79, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "gen_stab3_6")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(1141.082, 1211.52, 129.6428), MAT_Vector3(-6.68, -0.5369, 3.486265))
  Node_ParseIniFile(node80, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_generic", "gen_stab3_7")
  Node_AddSon(node7, node81)
  Body_SetCS(node81, MAT_Vector3(723.7516, 1183.753, 56.41888), MAT_Vector3(2.499303, 11.80782, -1.6596))
  Node_ParseIniFile(node81, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_generic", "gen_stab3_8")
  Node_AddSon(node7, node82)
  Body_SetCS(node82, MAT_Vector3(718.4039, 1244.459, 50.14186), MAT_Vector3(0.139101, -2.4535, -16.2087))
  Node_ParseIniFile(node82, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_generic", "gen_schorn2_2")
  Node_AddSon(node7, node83)
  Body_SetCS(node83, MAT_Vector3(1199.804, 1316.775, 184.5957), MAT_Vector3(0.987836, 8.644694, 4.631511))
  Node_ParseIniFile(node83, "osd/gen/gen_chimney2.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_generic", "gen_werk1_1")
  Node_AddSon(node7, node84)
  Body_SetCS(node84, MAT_Vector3(1029.365, 1571.187, 187.3101), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node84, "osd/gen/gen_industry1.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_generic", "atl_digmod_1")
  Node_AddSon(node7, node85)
  Body_SetCS(node85, MAT_Vector3(3415.033, 3745.907, 173.3984), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node85, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "atl_digmod_2")
  Node_AddSon(node7, node86)
  Body_SetCS(node86, MAT_Vector3(1412.347, 2769.428, 115.4289), MAT_Vector3(-135.668, 0, 0))
  Node_ParseIniFile(node86, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "gen_kraft22_1")
  Node_AddSon(node7, node87)
  Body_SetCS(node87, MAT_Vector3(2639.727, 2024.581, 421.981941), MAT_Vector3(-150.1928, 0, 0))
  Node_ParseIniFile(node87, "osd/gen/gen_pplant22.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "gen_stern_1")
  Node_AddSon(node7, node88)
  Body_SetCS(node88, MAT_Vector3(2470.576, 2006.001, 429.082047), MAT_Vector3(83.7229, 0, 0))
  Node_ParseIniFile(node88, "osd/gen/gen_starfound.osd")
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "gen_turm_1")
  Node_AddSon(node7, node89)
  Body_SetCS(node89, MAT_Vector3(2339.201, 2120.01, 328.2104), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node89, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_generic", "gen_turm_2")
  Node_AddSon(node7, node90)
  Body_SetCS(node90, MAT_Vector3(2313.225, 2074.557, 347.9268), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node90, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node90, 0)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_generic", "gen_turm_3")
  Node_AddSon(node7, node91)
  Body_SetCS(node91, MAT_Vector3(2371.864, 2083.031, 348.3934), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node91, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node91, 0)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_generic", "gen_tnk_g_1")
  Node_AddSon(node7, node92)
  Body_SetCS(node92, MAT_Vector3(2527.401, 2000.62, 416.759493), MAT_Vector3(83.97706, 0, 0))
  Node_ParseIniFile(node92, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node92, 0)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "atl_wb3a_5_1")
  Node_AddSon(node7, node93)
  Body_SetCS(node93, MAT_Vector3(2194.86, 2198.266, 280.071096), MAT_Vector3(114.85, 0, 0))
  Node_ParseIniFile(node93, "osd/atl/atl_wblock3a_05.osd")
  Body_SetFriendOrFoeID(node93, 0)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_generic", "gen_dock_1")
  Node_AddSon(node7, node94)
  Body_SetCS(node94, MAT_Vector3(2473.342, 2246.936, 321.2958), MAT_Vector3(-171.8873, 0, 0))
  Node_ParseIniFile(node94, "osd/gen/gen_dock.osd")
  Body_SetFriendOrFoeID(node94, 0)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_generic", "atl_wb3a_r3_1")
  Node_AddSon(node7, node95)
  Body_SetCS(node95, MAT_Vector3(2250.728, 2155.773, 247.2428), MAT_Vector3(25.46479, 0, 0))
  Node_ParseIniFile(node95, "osd/atl/atl_wblock3a_raw_03.osd")
  Body_SetFriendOrFoeID(node95, 0)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_generic", "atl_wb3a_r2_1")
  Node_AddSon(node7, node96)
  Body_SetCS(node96, MAT_Vector3(2286.948, 2172.935, 302.027248), MAT_Vector3(24.88605, 0, 0))
  Node_ParseIniFile(node96, "osd/atl/atl_wblock3a_raw_02.osd")
  Body_SetFriendOrFoeID(node96, 0)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_generic", "atl_wb3a_r2_2")
  Node_AddSon(node7, node97)
  Body_SetCS(node97, MAT_Vector3(2793.471, 2227.375, 336.715448), MAT_Vector3(0.868122, 0, 0))
  Node_ParseIniFile(node97, "osd/atl/atl_wblock3a_raw_02.osd")
  Body_SetFriendOrFoeID(node97, 0)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_generic", "atl_wb3a_r2_3")
  Node_AddSon(node7, node98)
  Body_SetCS(node98, MAT_Vector3(2719.015, 2229.076, 342.384626), MAT_Vector3(1.157495, 0, 0))
  Node_ParseIniFile(node98, "osd/atl/atl_wblock3a_raw_02.osd")
  Body_SetFriendOrFoeID(node98, 0)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_generic", "atl_wb3a_r2_4")
  Node_AddSon(node7, node99)
  Body_SetCS(node99, MAT_Vector3(2643.82, 2227.249, 344.814274), MAT_Vector3(1.986582, 0, 0))
  Node_ParseIniFile(node99, "osd/atl/atl_wblock3a_raw_02.osd")
  Body_SetFriendOrFoeID(node99, 0)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_generic", "atl_wb4a_2_1")
  Node_AddSon(node7, node100)
  Body_SetCS(node100, MAT_Vector3(2677.662, 2229.455, 410.3819), MAT_Vector3(0.971691, 0, 0))
  Node_ParseIniFile(node100, "osd/atl/atl_wblock3a_raw_04.osd")
  Body_SetFriendOrFoeID(node100, 0)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_generic", "gen_gang2_2")
  Node_AddSon(node7, node101)
  Body_SetCS(node101, MAT_Vector3(2339.36, 2189.482, 364.9463), MAT_Vector3(-82.0185, 0, 0))
  Node_ParseIniFile(node101, "osd/gen/gen_gangway02.osd")
  Body_SetFriendOrFoeID(node101, 0)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_generic", "gen_gang3_1")
  Node_AddSon(node7, node102)
  Body_SetCS(node102, MAT_Vector3(2685.609, 2228.826, 412.0071), MAT_Vector3(-89.04866, 0, 0))
  Node_ParseIniFile(node102, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node102, 0)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_generic", "gen_rohrb3_1")
  Node_AddSon(node7, node103)
  Body_SetCS(node103, MAT_Vector3(3662.469, 3450.316, 185.5475), MAT_Vector3(90.80619, 2.343386, 0))
  Node_ParseIniFile(node103, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node103, 0)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_generic", "gen_rohrb1_2")
  Node_AddSon(node7, node104)
  Body_SetCS(node104, MAT_Vector3(2581.239, 3453.022, 196.0419), MAT_Vector3(93.83736, 10.9098, -4.052091))
  Node_ParseIniFile(node104, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node104, 0)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_generic", "gen_rohrb1_3")
  Node_AddSon(node7, node105)
  Body_SetCS(node105, MAT_Vector3(3893.032, 3453.203, 187.649), MAT_Vector3(87.95321, 2.227641, -4.225149))
  Node_ParseIniFile(node105, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node105, 0)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_generic", "gen_rohrb3_2")
  Node_AddSon(node7, node106)
  Body_SetCS(node106, MAT_Vector3(3363.911, 3446.863, 192.8185), MAT_Vector3(90.80619, 0, 0))
  Node_ParseIniFile(node106, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node106, 0)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_generic", "gen_rohrb3_3")
  Node_AddSon(node7, node107)
  Body_SetCS(node107, MAT_Vector3(2896.158, 3453.252, 197.9991), MAT_Vector3(87.29295, -0.880972, 0.071841))
  Node_ParseIniFile(node107, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node107, 0)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_generic", "gen_rohrb3_4")
  Node_AddSon(node7, node108)
  Body_SetCS(node108, MAT_Vector3(4060.919, 3452.938, 167.5834), MAT_Vector3(90.23222, 8.191142, -0.463581))
  Node_ParseIniFile(node108, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node108, 0)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_generic", "gen_rohrb3_5")
  Node_AddSon(node7, node109)
  Body_SetCS(node109, MAT_Vector3(2346.416, 3449.592, 215.9772), MAT_Vector3(90.21996, 2.049667, -0.031437))
  Node_ParseIniFile(node109, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node109, 0)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_generic", "gen_rohrb3_6")
  Node_AddSon(node7, node110)
  Body_SetCS(node110, MAT_Vector3(2051.729, 3448.339, 215.9772), MAT_Vector3(90.21755, -2.34418, -0.031444))
  Node_ParseIniFile(node110, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node110, 0)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_generic", "gen_rohrb3_7")
  Node_AddSon(node7, node111)
  Body_SetCS(node111, MAT_Vector3(1699.898, 3448.715, 202.9472), MAT_Vector3(90.21803, -1.465411, -0.031428))
  Node_ParseIniFile(node111, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node111, 0)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_generic", "gen_rohrb3_8")
  Node_AddSon(node7, node112)
  Body_SetCS(node112, MAT_Vector3(1002.512, 3454.097, 184.3055), MAT_Vector3(90.21496, -7.030951, -0.031655))
  Node_ParseIniFile(node112, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node112, 0)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_generic", "gen_rohrb3_9")
  Node_AddSon(node7, node113)
  Body_SetCS(node113, MAT_Vector3(609.2866, 3449.183, 171.0501), MAT_Vector3(90.4915, 1.166943, 0.255499))
  Node_ParseIniFile(node113, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node113, 0)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_generic", "gen_rohrb3_10")
  Node_AddSon(node7, node114)
  Body_SetCS(node114, MAT_Vector3(89.56646, 3452.008, 154.6023), MAT_Vector3(90.51111, -3.226861, 0.255852))
  Node_ParseIniFile(node114, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node114, 0)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_generic", "gen_rohrb2_1")
  Node_AddSon(node7, node115)
  Body_SetCS(node115, MAT_Vector3(3103.759, 3445.042, 198.3979), MAT_Vector3(89.04884, 2.050439, -0.00899))
  Node_ParseIniFile(node115, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node115, 0)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_generic", "gen_rohrb2_2")
  Node_AddSon(node7, node116)
  Body_SetCS(node116, MAT_Vector3(2660.808, 3456.861, 187.3215), MAT_Vector3(92.56552, 1.753657, -0.11676))
  Node_ParseIniFile(node116, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node116, 0)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_generic", "gen_rohrb2_3")
  Node_AddSon(node7, node117)
  Body_SetCS(node117, MAT_Vector3(1496.846, 3448.399, 201.5647), MAT_Vector3(90.22104, 1.756965, -0.044936))
  Node_ParseIniFile(node117, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node117, 0)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_generic", "gen_rohrb2_4")
  Node_AddSon(node7, node118)
  Body_SetCS(node118, MAT_Vector3(1377.581, 3449.067, 210.3264), MAT_Vector3(89.93006, 7.02972, -0.009135))
  Node_ParseIniFile(node118, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node118, 0)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_generic", "gen_rohrb2_5")
  Node_AddSon(node7, node119)
  Body_SetCS(node119, MAT_Vector3(1261.731, 3448.968, 209.7651), MAT_Vector3(90.21342, -7.909498, -0.045346))
  Node_ParseIniFile(node119, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node119, 0)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_generic", "gen_rohrb2_6")
  Node_AddSon(node7, node120)
  Body_SetCS(node120, MAT_Vector3(408.3875, 3449.056, 184.9372), MAT_Vector3(90.22755, 9.958812, -0.045602))
  Node_ParseIniFile(node120, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node120, 0)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_generic", "gen_rohrb2_7")
  Node_AddSon(node7, node121)
  Body_SetCS(node121, MAT_Vector3(299.3608, 3451.238, 179.8137), MAT_Vector3(87.46705, -15.7991, -0.793235))
  Node_ParseIniFile(node121, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node121, 0)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_generic", "gen_rohrb1_1")
  Node_AddSon(node7, node122)
  Body_SetCS(node122, MAT_Vector3(3191.258, 3444.972, 195.5196), MAT_Vector3(89.86523, 4.114959, -3.207927))
  Node_ParseIniFile(node122, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node122, 0)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_generic", "gen_rohrb1_4")
  Node_AddSon(node7, node123)
  Body_SetCS(node123, MAT_Vector3(2526.979, 3450.616, 206.9238), MAT_Vector3(90.1136, 8.50187, -3.235238))
  Node_ParseIniFile(node123, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node123, 0)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_generic", "gen_rohrb1_5")
  Node_AddSon(node7, node124)
  Body_SetCS(node124, MAT_Vector3(1879.405, 3449.007, 208.4705), MAT_Vector3(89.4395, -3.489154, -3.205597))
  Node_ParseIniFile(node124, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node124, 0)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_generic", "gen_rohrb1_6")
  Node_AddSon(node7, node125)
  Body_SetCS(node125, MAT_Vector3(834.6966, 3451.872, 165.5428), MAT_Vector3(95.00848, -3.783463, -2.852117))
  Node_ParseIniFile(node125, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node125, 0)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node7, node126)
  Node_ParseIniFile(node126, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node126, "map/1H2/Terrain/coral_01.tga")
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_fx_plant", "fungus_01_1")
  Node_AddSon(node7, node127)
  Node_ParseIniFile(node127, "osd/fx_plant/fungus_01.osd")
  FX_Plant_SetMap(node127, "map/1H2/Terrain/fungus_01.tga")
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node7, node128)
  Node_ParseIniFile(node128, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node128, "map/1H2/Terrain/grass_01.tga")
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node7, node129)
  Node_ParseIniFile(node129, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node129, "map/1H2/Terrain/stone_01.tga")
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_generic", "gen_parabolic_1")
  Node_AddSon(node7, node130)
  Body_SetCS(node130, MAT_Vector3(1134.929047, 1470.134441, 255.641031), MAT_Vector3(-48.276056, 0, 0))
  Node_ParseIniFile(node130, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node130, 0)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_generic", "gen_metalblock1_1")
  Node_AddSon(node7, node131)
  Body_SetCS(node131, MAT_Vector3(1066.175272, 1445.658128, 147.547028), MAT_Vector3(90.21168, 0, 0))
  Node_ParseIniFile(node131, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node131, 0)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_generic", "gen_trafo_4")
  Node_AddSon(node7, node132)
  Body_SetCS(node132, MAT_Vector3(1193.186833, 1404.216959, 188.525533), MAT_Vector3(-57.944626, 2.249446, -2.577102))
  Node_ParseIniFile(node132, "osd/gen/gen_trafo.osd")
  Body_SetFriendOrFoeID(node132, 0)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_generic", "gen_pole2_1")
  Node_AddSon(node7, node133)
  Body_SetCS(node133, MAT_Vector3(1131.803487, 1427.367969, 211.854318), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node133, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node133, 0)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, -1, 0)
  Body_SetCargoKey(node133, -1, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node7, node134)
  Node_ParseIniFile(node134, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_fx_sky", "fx_sky_02_1")
  Node_AddSon(node7, node135)
  Node_ParseIniFile(node135, "osd/fx_sky/fx_sky_02.osd")
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_fx_plankton", "fx_plankton_green_1")
  Node_AddSon(node7, node136)
  Node_ParseIniFile(node136, "osd/fx_plankton/fx_plankton_green.osd")
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
  node140 = Node_CreateNode("NOD_Path", "dock_path")
  Node_AddSon(node139, node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node140, node141)
  Position_SetPosition(node141, MAT_Vector3(2534.8, 2411.601, 362.8924))
  Position_SetRadius(node141, 5)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node140, node142)
  Position_SetPosition(node142, MAT_Vector3(2556.592, 2293.18, 366.0405))
  Position_SetRadius(node142, 5)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Path", "dock_appr")
  Node_AddSon(node139, node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node143, node144)
  Position_SetPosition(node144, MAT_Vector3(2521.672, 2498.98, 376.5145))
  Position_SetRadius(node144, 10)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node143, node145)
  Position_SetPosition(node145, MAT_Vector3(2529.943, 2448.572, 359.6045))
  Position_SetRadius(node145, 10)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_PatrolArea", "dock_area")
  Node_AddSon(node139, node146)
  PatrolArea_SetPosition(node146, MAT_Vector3(2421.447, 2443.791, 436.9111))
  PatrolArea_SetRadius(node146, 100)
  PatrolArea_SetMinZ(node146, -50)
  PatrolArea_SetMaxZ(node146, 120)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Path", "Toiler_Path")
  Node_AddSon(node139, node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node147, node148)
  Position_SetPosition(node148, MAT_Vector3(2525.802, 2429.203, 412.6909))
  Position_SetRadius(node148, 10)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node147, node149)
  Position_SetPosition(node149, MAT_Vector3(2829.094, 2414.85, 423.7432))
  Position_SetRadius(node149, 10)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node147, node150)
  Position_SetPosition(node150, MAT_Vector3(2986.935, 2301.903, 569.8469))
  Position_SetRadius(node150, 10)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node147, node151)
  Position_SetPosition(node151, MAT_Vector3(2992.72, 2240.97, 543.7144))
  Position_SetRadius(node151, 10)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node147, node152)
  Position_SetPosition(node152, MAT_Vector3(2956.873, 2210.5, 510.3205))
  Position_SetRadius(node152, 10)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node147, node153)
  Position_SetPosition(node153, MAT_Vector3(2623.469, 2053.054, 549.5112))
  Position_SetRadius(node153, 10)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node147, node154)
  Position_SetPosition(node154, MAT_Vector3(2473.443, 2036.693, 501.6961))
  Position_SetRadius(node154, 10)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node147, node155)
  Position_SetPosition(node155, MAT_Vector3(2357.432, 2140.159, 389.1843))
  Position_SetRadius(node155, 10)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node147, node156)
  Position_SetPosition(node156, MAT_Vector3(2262.091, 2076.12, 443.7186))
  Position_SetRadius(node156, 10)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node147, node157)
  Position_SetPosition(node157, MAT_Vector3(2169.444, 1971.446, 527.5506))
  Position_SetRadius(node157, 10)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node147, node158)
  Position_SetPosition(node158, MAT_Vector3(2157.204, 2105.177, 426.2534))
  Position_SetRadius(node158, 10)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node147, node159)
  Position_SetPosition(node159, MAT_Vector3(2160.899, 2317.683, 451.4578))
  Position_SetRadius(node159, 20)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node147, node160)
  Position_SetPosition(node160, MAT_Vector3(2124.691, 2384.125, 335.6034))
  Position_SetRadius(node160, 25)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node147, node161)
  Position_SetPosition(node161, MAT_Vector3(2231.199, 2353.104, 340.5876))
  Position_SetRadius(node161, 20)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node147, node162)
  Position_SetPosition(node162, MAT_Vector3(2444.663, 2482.598, 381.5315))
  Position_SetRadius(node162, 10)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Path", "Bus1_Path1")
  Node_AddSon(node139, node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node163, node164)
  Position_SetPosition(node164, MAT_Vector3(2560.223, 2193.629, 558.1373))
  Position_SetRadius(node164, 10)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node163, node165)
  Position_SetPosition(node165, MAT_Vector3(2980.523, 2126.687, 616.8998))
  Position_SetRadius(node165, 10)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node163, node166)
  Position_SetPosition(node166, MAT_Vector3(2620.65, 2044.018, 552.7879))
  Position_SetRadius(node166, 10)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node163, node167)
  Position_SetPosition(node167, MAT_Vector3(2164.136, 2134.523, 495.8395))
  Position_SetRadius(node167, 10)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node163, node168)
  Position_SetPosition(node168, MAT_Vector3(2331.897, 2349.982, 499.164))
  Position_SetRadius(node168, 10)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node163, node169)
  Position_SetPosition(node169, MAT_Vector3(2665.035, 2419.635, 396.6494))
  Position_SetRadius(node169, 10)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node163, node170)
  Position_SetPosition(node170, MAT_Vector3(3436.297, 3677.362, 333.9734))
  Position_SetRadius(node170, 10)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node163, node171)
  Position_SetPosition(node171, MAT_Vector3(3469.328, 3472.954, 268.3062))
  Position_SetRadius(node171, 10)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node163, node172)
  Position_SetPosition(node172, MAT_Vector3(2647.273, 2755.25, 539.2883))
  Position_SetRadius(node172, 10)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node163, node173)
  Position_SetPosition(node173, MAT_Vector3(2522.946, 2537.919, 539.9441))
  Position_SetRadius(node173, 10)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node163, node174)
  Position_SetPosition(node174, MAT_Vector3(2532.665, 2291.629, 552.57))
  Position_SetRadius(node174, 10)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_Position", "Bus_Pos_L")
  Node_AddSon(node139, node175)
  Position_SetPosition(node175, MAT_Vector3(2536.903, 2281.05, 482.906704))
  Position_SetRadius(node175, 10)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_Position", "Bus_Pos_H")
  Node_AddSon(node139, node176)
  Position_SetPosition(node176, MAT_Vector3(2536.903, 2281.05, 565.3449))
  Position_SetRadius(node176, 10)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Position", "TranPos_H")
  Node_AddSon(node139, node177)
  Position_SetPosition(node177, MAT_Vector3(905.40246, 1554.739358, 400))
  Position_SetRadius(node177, 10)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_Path", "TranPath_1")
  Node_AddSon(node139, node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node178, node179)
  Position_SetPosition(node179, MAT_Vector3(902.863469, 1729.083413, 400))
  Position_SetRadius(node179, 10)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node178, node180)
  Position_SetPosition(node180, MAT_Vector3(902.194271, 1941.15793, 400))
  Position_SetRadius(node180, 10)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_PatrolArea", "DigAreaA1")
  Node_AddSon(node139, node181)
  PatrolArea_SetPosition(node181, MAT_Vector3(3497.993, 3748.732, 166.2906))
  PatrolArea_SetRadius(node181, 240)
  PatrolArea_SetMinZ(node181, 0)
  PatrolArea_SetMaxZ(node181, 100)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("NOD_PatrolArea", "DigAreaA2")
  Node_AddSon(node139, node182)
  PatrolArea_SetPosition(node182, MAT_Vector3(3207.024, 3590.605, 171.8522))
  PatrolArea_SetRadius(node182, 120)
  PatrolArea_SetMinZ(node182, 0)
  PatrolArea_SetMaxZ(node182, 100)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_PatrolArea", "DigAreaA3")
  Node_AddSon(node139, node183)
  PatrolArea_SetPosition(node183, MAT_Vector3(3247.259, 3916.706, 155.8921))
  PatrolArea_SetRadius(node183, 110)
  PatrolArea_SetMinZ(node183, 0)
  PatrolArea_SetMaxZ(node183, 100)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_PatrolArea", "DigAreaA4")
  Node_AddSon(node139, node184)
  PatrolArea_SetPosition(node184, MAT_Vector3(3052.886, 3783.937, 161.3793))
  PatrolArea_SetRadius(node184, 120)
  PatrolArea_SetMinZ(node184, 0)
  PatrolArea_SetMaxZ(node184, 100)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_PatrolArea", "DigAreaB1")
  Node_AddSon(node139, node185)
  PatrolArea_SetPosition(node185, MAT_Vector3(1155.184, 2394.928, 113.8338))
  PatrolArea_SetRadius(node185, 180)
  PatrolArea_SetMinZ(node185, 0)
  PatrolArea_SetMaxZ(node185, 100)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_PatrolArea", "DigAreaB2")
  Node_AddSon(node139, node186)
  PatrolArea_SetPosition(node186, MAT_Vector3(1312.374, 2903.837, 113.6227))
  PatrolArea_SetRadius(node186, 150)
  PatrolArea_SetMinZ(node186, 0)
  PatrolArea_SetMaxZ(node186, 100)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_PatrolArea", "DigAreaB3")
  Node_AddSon(node139, node187)
  PatrolArea_SetPosition(node187, MAT_Vector3(1296.964, 2722.943, 114.7499))
  PatrolArea_SetRadius(node187, 180)
  PatrolArea_SetMinZ(node187, 0)
  PatrolArea_SetMaxZ(node187, 100)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_PatrolArea", "DigAreaB4")
  Node_AddSon(node139, node188)
  PatrolArea_SetPosition(node188, MAT_Vector3(1020.919, 2643.918, 126.1371))
  PatrolArea_SetRadius(node188, 100)
  PatrolArea_SetMinZ(node188, 0)
  PatrolArea_SetMaxZ(node188, 100)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_PatrolArea", "DigAreaC1")
  Node_AddSon(node139, node189)
  PatrolArea_SetPosition(node189, MAT_Vector3(1206.819, 1985.145, 104.0266))
  PatrolArea_SetRadius(node189, 150)
  PatrolArea_SetMinZ(node189, 0)
  PatrolArea_SetMaxZ(node189, 100)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_PatrolArea", "DigAreaC2")
  Node_AddSon(node139, node190)
  PatrolArea_SetPosition(node190, MAT_Vector3(752.818, 2181.397, 105.2007))
  PatrolArea_SetRadius(node190, 125)
  PatrolArea_SetMinZ(node190, 0)
  PatrolArea_SetMaxZ(node190, 100)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Path", "PathDiggerC1")
  Node_AddSon(node139, node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node191, node192)
  Position_SetPosition(node192, MAT_Vector3(900.674, 1483.202, 264.3448))
  Position_SetRadius(node192, 5)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node191, node193)
  Position_SetPosition(node193, MAT_Vector3(833.747, 1507.278, 235.8585))
  Position_SetRadius(node193, 5)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node191, node194)
  Position_SetPosition(node194, MAT_Vector3(937.4269, 1927.708, 197.7248))
  Position_SetRadius(node194, 5)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_PatrolArea", "BioA_Arena")
  Node_AddSon(node139, node195)
  PatrolArea_SetPosition(node195, MAT_Vector3(888.7037, 875.5224, 155))
  PatrolArea_SetRadius(node195, 650)
  PatrolArea_SetMinZ(node195, -150)
  PatrolArea_SetMaxZ(node195, 500)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_PatrolArea", "BioB_Arena")
  Node_AddSon(node139, node196)
  PatrolArea_SetPosition(node196, MAT_Vector3(1157.832, 2393.966, 239.1188))
  PatrolArea_SetRadius(node196, 600)
  PatrolArea_SetMinZ(node196, -150)
  PatrolArea_SetMaxZ(node196, 600)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_PatrolArea", "BioC_Arena")
  Node_AddSon(node139, node197)
  PatrolArea_SetPosition(node197, MAT_Vector3(881.2281, 921.5059, 155))
  PatrolArea_SetRadius(node197, 750)
  PatrolArea_SetMinZ(node197, -150)
  PatrolArea_SetMaxZ(node197, 500)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("NOD_Position", "SinkPos_S1")
  Node_AddSon(node139, node198)
  Position_SetPosition(node198, MAT_Vector3(916.1835, 852.9204, 66.24045))
  Position_SetRadius(node198, 5)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("NOD_Position", "SinkPos_S2")
  Node_AddSon(node139, node199)
  Position_SetPosition(node199, MAT_Vector3(858.4594, 708.6427, 55.836824))
  Position_SetRadius(node199, 5)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("NOD_Position", "SinkPos_S3")
  Node_AddSon(node139, node200)
  Position_SetPosition(node200, MAT_Vector3(602.200494, 772.838754, 85.716378))
  Position_SetRadius(node200, 5)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("NOD_Position", "SinkPos_S4")
  Node_AddSon(node139, node201)
  Position_SetPosition(node201, MAT_Vector3(843.1736, 975.5015, 69.491161))
  Position_SetRadius(node201, 5)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("NOD_Path", "Digger_Path1")
  Node_AddSon(node139, node202)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node202, node203)
  Position_SetPosition(node203, MAT_Vector3(1006.251, 1001.246, 87.10535))
  Position_SetRadius(node203, 5)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node202, node204)
  Position_SetPosition(node204, MAT_Vector3(970.7958, 919.3262, 93.01977))
  Position_SetRadius(node204, 5)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node202, node205)
  Position_SetPosition(node205, MAT_Vector3(955.6489, 853.2784, 95.90941))
  Position_SetRadius(node205, 5)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("NOD_Path", "Digger_Path2")
  Node_AddSon(node139, node206)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node206, node207)
  Position_SetPosition(node207, MAT_Vector3(953.8031, 821.2644, 95.94249))
  Position_SetRadius(node207, 5)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node206, node208)
  Position_SetPosition(node208, MAT_Vector3(934.5392, 747.8779, 89.10401))
  Position_SetRadius(node208, 5)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node206, node209)
  Position_SetPosition(node209, MAT_Vector3(866.9031, 742.1027, 86.32579))
  Position_SetRadius(node209, 5)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("NOD_Path", "Digger_Path3")
  Node_AddSon(node139, node210)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node210, node211)
  Position_SetPosition(node211, MAT_Vector3(843.47, 739.7447, 95.86755))
  Position_SetRadius(node211, 5)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node210, node212)
  Position_SetPosition(node212, MAT_Vector3(787.4956, 762.1963, 131.0122))
  Position_SetRadius(node212, 5)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node210, node213)
  Position_SetPosition(node213, MAT_Vector3(677.5441, 804.7148, 109.7261))
  Position_SetRadius(node213, 5)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node210, node214)
  Position_SetPosition(node214, MAT_Vector3(609.975418, 847.622042, 119.4027))
  Position_SetRadius(node214, 5)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node210, node215)
  Position_SetPosition(node215, MAT_Vector3(604.1792, 896.9934, 111.5088))
  Position_SetRadius(node215, 5)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("NOD_Path", "Digger_Path4")
  Node_AddSon(node139, node216)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node216, node217)
  Position_SetPosition(node217, MAT_Vector3(606.7034, 937.9812, 108.282))
  Position_SetRadius(node217, 5)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node216, node218)
  Position_SetPosition(node218, MAT_Vector3(671.788, 974.5398, 104.9574))
  Position_SetRadius(node218, 5)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node216, node219)
  Position_SetPosition(node219, MAT_Vector3(714.0071, 966.2564, 104.4982))
  Position_SetRadius(node219, 5)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node216, node220)
  Position_SetPosition(node220, MAT_Vector3(806.9253, 967.0373, 99.95488))
  Position_SetRadius(node220, 5)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("NOD_Path", "DgrPathHome")
  Node_AddSon(node139, node221)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node221, node222)
  Position_SetPosition(node222, MAT_Vector3(824.0443, 1061.754, 92.0749))
  Position_SetRadius(node222, 5)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node221, node223)
  Position_SetPosition(node223, MAT_Vector3(975.2299, 1056.52, 91.93635))
  Position_SetRadius(node223, 5)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node221, node224)
  Position_SetPosition(node224, MAT_Vector3(1012.379, 1078.114, 86.78289))
  Position_SetRadius(node224, 5)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node221, node225)
  Position_SetPosition(node225, MAT_Vector3(837.1346, 1152.667, 134.2416))
  Position_SetRadius(node225, 5)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node221, node226)
  Position_SetPosition(node226, MAT_Vector3(744.4842, 1211.376, 144.4456))
  Position_SetRadius(node226, 5)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node221, node227)
  Position_SetPosition(node227, MAT_Vector3(771.0868, 1231.557, 146.5382))
  Position_SetRadius(node227, 5)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node221, node228)
  Position_SetPosition(node228, MAT_Vector3(892.1745, 1215.962, 175.452))
  Position_SetRadius(node228, 5)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node221, node229)
  Position_SetPosition(node229, MAT_Vector3(1104.078, 1193.029, 214.8831))
  Position_SetRadius(node229, 5)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node221, node230)
  Position_SetPosition(node230, MAT_Vector3(1091.235, 1235.226, 218.4044))
  Position_SetRadius(node230, 5)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node221, node231)
  Position_SetPosition(node231, MAT_Vector3(924.281, 1359.983, 263.1133))
  Position_SetRadius(node231, 5)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node221, node232)
  Position_SetPosition(node232, MAT_Vector3(932.537, 1633.348, 222.8888))
  Position_SetRadius(node232, 5)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node221, node233)
  Position_SetPosition(node233, MAT_Vector3(1005.923, 1690.222, 221.3806))
  Position_SetRadius(node233, 5)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node221, node234)
  Position_SetPosition(node234, MAT_Vector3(1124.259, 1672.793, 218.1402))
  Position_SetRadius(node234, 5)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("NOD_PatrolArea", "DiggerPark")
  Node_AddSon(node139, node235)
  PatrolArea_SetPosition(node235, MAT_Vector3(1153.186, 1665.687, 126.4459))
  PatrolArea_SetRadius(node235, 65)
  PatrolArea_SetMinZ(node235, 0)
  PatrolArea_SetMaxZ(node235, 100)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("NOD_PatrolArea", "WngPatrolA")
  Node_AddSon(node139, node236)
  PatrolArea_SetPosition(node236, MAT_Vector3(871.604547, 1019.456918, 192.135))
  PatrolArea_SetRadius(node236, 300)
  PatrolArea_SetMinZ(node236, 0)
  PatrolArea_SetMaxZ(node236, 150)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("NOD_PatrolArea", "WingA_Arena")
  Node_AddSon(node139, node237)
  PatrolArea_SetPosition(node237, MAT_Vector3(888.7037, 875.5224, 175.784125))
  PatrolArea_SetRadius(node237, 650)
  PatrolArea_SetMinZ(node237, -50)
  PatrolArea_SetMaxZ(node237, 460)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("NOD_Path", "WngHomePath")
  Node_AddSon(node139, node238)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node238, node239)
  Position_SetPosition(node239, MAT_Vector3(1438.339, 2455.714, 222.3846))
  Position_SetRadius(node239, 40)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node238, node240)
  Position_SetPosition(node240, MAT_Vector3(1767.89, 2436.805, 268.6286))
  Position_SetRadius(node240, 5)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node238, node241)
  Position_SetPosition(node241, MAT_Vector3(2000.126, 2431.689, 340.203))
  Position_SetRadius(node241, 5)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node238, node242)
  Position_SetPosition(node242, MAT_Vector3(2103.375, 2392.491, 347.3897))
  Position_SetRadius(node242, 5)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node238, node243)
  Position_SetPosition(node243, MAT_Vector3(2225.655, 2358.305, 337.2279))
  Position_SetRadius(node243, 5)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node238, node244)
  Position_SetPosition(node244, MAT_Vector3(2305.86, 2367.509, 350.1783))
  Position_SetRadius(node244, 5)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("NOD_Path", "BonhamPath_1")
  Node_AddSon(node139, node245)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node245, node246)
  Position_SetPosition(node246, MAT_Vector3(921.165881, 1411.745105, 266.293247))
  Position_SetRadius(node246, 5)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node245, node247)
  Position_SetPosition(node247, MAT_Vector3(917.046349, 1738.012028, 222.124601))
  Position_SetRadius(node247, 5)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node245, node248)
  Position_SetPosition(node248, MAT_Vector3(998.61308, 2032.97051, 191.92046))
  Position_SetRadius(node248, 5)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node245, node249)
  Position_SetPosition(node249, MAT_Vector3(1039.262654, 2147.007614, 243.355591))
  Position_SetRadius(node249, 5)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("NOD_Path", "HarperPath_1")
  Node_AddSon(node139, node250)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node250, node251)
  Position_SetPosition(node251, MAT_Vector3(947.530873, 1412.569438, 266.2932))
  Position_SetRadius(node251, 5)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node250, node252)
  Position_SetPosition(node252, MAT_Vector3(953.298213, 1755.31451, 222.1246))
  Position_SetRadius(node252, 5)
  Game_LoadProgress_Advance(node0)
  node253 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node250, node253)
  Position_SetPosition(node253, MAT_Vector3(1038.160606, 2022.260217, 191.9205))
  Position_SetRadius(node253, 5)
  Game_LoadProgress_Advance(node0)
  node254 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node250, node254)
  Position_SetPosition(node254, MAT_Vector3(1070.344957, 2142.909892, 233.110706))
  Position_SetRadius(node254, 5)
  Game_LoadProgress_Advance(node0)
  node255 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node137, node255)
  Node_EnterSimulation(node255)
  Game_LoadProgress_Advance(node0)
  node256 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node137, node256)
  Node_EnterSimulation(node256)
  Game_LoadProgress_Advance(node0)
  node257 = Node_CreateNode("NOD_Trigger", "Nav1_Trg")
  Node_AddSon(node256, node257)
  Body_SetPosition(node257, MAT_Vector3(1049.287205, 1051.325824, 65))
  Trigger_SetPresenceSphere(node257, 50)
  Node_EnterSimulation(node257)
  Body_SetFriendOrFoeID(node257, 0)
  Game_LoadProgress_Advance(node0)
  node258 = Node_CreateNode("NOD_Trigger", "Bio1A_Trg")
  Node_AddSon(node256, node258)
  Body_SetPosition(node258, MAT_Vector3(922.139077, 852.949091, 31.06998))
  Trigger_SetPresenceSphere(node258, 60)
  Node_EnterSimulation(node258)
  Body_SetFriendOrFoeID(node258, 0)
  Game_LoadProgress_Advance(node0)
  node259 = Node_CreateNode("NOD_Trigger", "Bio2A_Trg")
  Node_AddSon(node256, node259)
  Body_SetPosition(node259, MAT_Vector3(857.184439, 714.417478, 4.340821))
  Trigger_SetPresenceSphere(node259, 60)
  Node_EnterSimulation(node259)
  Body_SetFriendOrFoeID(node259, 0)
  Game_LoadProgress_Advance(node0)
  node260 = Node_CreateNode("NOD_Trigger", "Bio3A_Trg")
  Node_AddSon(node256, node260)
  Body_SetPosition(node260, MAT_Vector3(613.173071, 790.378213, 44.335345))
  Trigger_SetPresenceSphere(node260, 75)
  Node_EnterSimulation(node260)
  Body_SetFriendOrFoeID(node260, 0)
  Game_LoadProgress_Advance(node0)
  node261 = Node_CreateNode("NOD_Trigger", "Bio4A_Trg")
  Node_AddSon(node256, node261)
  Body_SetPosition(node261, MAT_Vector3(610.139535, 790.011171, 40.998146))
  Trigger_SetPresenceSphere(node261, 75)
  Node_EnterSimulation(node261)
  Body_SetFriendOrFoeID(node261, 0)
  Game_LoadProgress_Advance(node0)
  node262 = Node_CreateNode("NOD_Trigger", "BioB_Trg")
  Node_AddSon(node256, node262)
  Body_SetFriendOrFoeID(node262, 4)
  Body_SetPosition(node262, MAT_Vector3(1156.932513, 2390.42213, 225.853244))
  Trigger_SetPresenceSphere(node262, 350)
  Node_EnterSimulation(node262)
  Game_LoadProgress_Advance(node0)
  node263 = Node_CreateNode("NOD_Trigger", "BonusActivater")
  Node_AddSon(node256, node263)
  Body_SetFriendOrFoeID(node263, 0)
  Body_SetPosition(node263, MAT_Vector3(878.623111, 837.761594, 143.008582))
  Trigger_SetPresenceSphere(node263, 768)
  Node_EnterSimulation(node263)
  Game_LoadProgress_Advance(node0)
  node264 = Node_CreateNode("NOD_Trigger", "BioC_Trg")
  Node_AddSon(node256, node264)
  Body_SetFriendOrFoeID(node264, 4)
  Body_SetPosition(node264, MAT_Vector3(1012.62059, 700.290801, 259.894417))
  Trigger_SetPresenceSphere(node264, 512)
  Node_EnterSimulation(node264)
  Game_LoadProgress_Advance(node0)
  node265 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node137, node265)
  Node_EnterSimulation(node265)
  Game_LoadProgress_Advance(node0)
  node266 = Node_CreateNode("NOD_Directory", "TRAFFIC")
  Node_AddSon(node265, node266)
  Node_EnterSimulation(node266)
  Game_LoadProgress_Advance(node0)
  node267 = Node_CreateNode("nod_vessel", "gen_toiler_1")
  Node_AddSon(node266, node267)
  Body_SetCS(node267, MAT_Vector3(2505.604388, 2307.091505, 453.241305), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node267, "osd/gen/gen_toiler.osd")
  Body_SetFriendOrFoeID(node267, 3)
  Body_SetNameKey(node267, -1)
  Body_SetCargoKey(node267, -1, 0)
  Body_SetCargoKey(node267, -1, 1)
  Body_SetCargoKey(node267, -1, 2)
  Node_EnterSimulation(node267)
  Game_LoadProgress_Advance(node0)
  node268 = Node_CreateNode("nod_vessel", "Transport")
  Node_AddSon(node266, node268)
  Body_SetCS(node268, MAT_Vector3(903.854485, 1549.643715, 223.097425), MAT_Vector3(0.370837, 0, 0))
  Node_ParseIniFile(node268, "osd/gen/gen_freighter2.osd")
  Body_SetFriendOrFoeID(node268, 3)
  Body_SetNameKey(node268, -1)
  Body_SetCargoKey(node268, -1, 0)
  Body_SetCargoKey(node268, -1, 1)
  Body_SetCargoKey(node268, -1, 2)
  Node_EnterSimulation(node268)
  Game_LoadProgress_Advance(node0)
  node269 = Node_CreateNode("nod_vessel", "gen_bus_1")
  Node_AddSon(node266, node269)
  Body_SetCS(node269, MAT_Vector3(2539.839, 2285.453, 561.3818), MAT_Vector3(-172.9349, 0, 0))
  Node_ParseIniFile(node269, "osd/gen/gen_freighter1.osd")
  Body_SetFriendOrFoeID(node269, 3)
  Body_SetNameKey(node269, -1)
  Body_SetCargoKey(node269, -1, 0)
  Body_SetCargoKey(node269, -1, 1)
  Body_SetCargoKey(node269, -1, 2)
  Node_EnterSimulation(node269)
  Game_LoadProgress_Advance(node0)
  node270 = Node_CreateNode("nod_vehicle", "gen_diggerA1")
  Node_AddSon(node266, node270)
  Body_SetCS(node270, MAT_Vector3(3528.057, 3632.006, 223.4817), MAT_Vector3(-128.8691, 0, 0))
  Node_ParseIniFile(node270, "osd/gen/gen_raupe.osd")
  Body_SetFriendOrFoeID(node270, 3)
  Body_SetNameKey(node270, -1)
  Body_SetCargoKey(node270, -1, 0)
  Body_SetCargoKey(node270, -1, 1)
  Body_SetCargoKey(node270, -1, 2)
  Node_EnterSimulation(node270)
  Game_LoadProgress_Advance(node0)
  node271 = Node_CreateNode("nod_vehicle", "gen_diggerA2")
  Node_AddSon(node266, node271)
  Body_SetCS(node271, MAT_Vector3(3488.989, 3813.818, 224.6197), MAT_Vector3(-45.4287, 0, 0))
  Node_ParseIniFile(node271, "osd/gen/gen_raupe.osd")
  Body_SetFriendOrFoeID(node271, 3)
  Body_SetNameKey(node271, -1)
  Body_SetCargoKey(node271, -1, 0)
  Body_SetCargoKey(node271, -1, 1)
  Body_SetCargoKey(node271, -1, 2)
  Node_EnterSimulation(node271)
  Game_LoadProgress_Advance(node0)
  node272 = Node_CreateNode("nod_vehicle", "gen_diggerB1")
  Node_AddSon(node266, node272)
  Body_SetCS(node272, MAT_Vector3(1311.004, 2768.438, 166.6406), MAT_Vector3(167.808, 0, 0))
  Node_ParseIniFile(node272, "osd/gen/gen_raupe.osd")
  Body_SetFriendOrFoeID(node272, 3)
  Body_SetNameKey(node272, -1)
  Body_SetCargoKey(node272, -1, 0)
  Body_SetCargoKey(node272, -1, 1)
  Body_SetCargoKey(node272, -1, 2)
  Node_EnterSimulation(node272)
  Game_LoadProgress_Advance(node0)
  node273 = Node_CreateNode("nod_vehicle", "gen_diggerB2")
  Node_AddSon(node266, node273)
  Body_SetCS(node273, MAT_Vector3(1165.028, 2704.816, 179.2868), MAT_Vector3(107.1808, 10.18205, -2.1885))
  Node_ParseIniFile(node273, "osd/gen/gen_raupe.osd")
  Body_SetFriendOrFoeID(node273, 3)
  Body_SetNameKey(node273, -1)
  Body_SetCargoKey(node273, -1, 0)
  Body_SetCargoKey(node273, -1, 1)
  Body_SetCargoKey(node273, -1, 2)
  Node_EnterSimulation(node273)
  Game_LoadProgress_Advance(node0)
  node274 = Node_CreateNode("nod_vehicle", "gen_diggerB3")
  Node_AddSon(node266, node274)
  Body_SetCS(node274, MAT_Vector3(1311.82262, 2594.135506, 170.4418), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node274, "osd/gen/gen_raupe.osd")
  Body_SetFriendOrFoeID(node274, 3)
  Body_SetNameKey(node274, -1)
  Body_SetCargoKey(node274, -1, 0)
  Body_SetCargoKey(node274, -1, 1)
  Body_SetCargoKey(node274, -1, 2)
  Node_EnterSimulation(node274)
  Game_LoadProgress_Advance(node0)
  node275 = Node_CreateNode("nod_vehicle", "gen_diggerC1")
  Node_AddSon(node266, node275)
  Body_SetCS(node275, MAT_Vector3(1074.709942, 1418.024941, 209.198094), MAT_Vector3(82.348131, 0, 0))
  Node_ParseIniFile(node275, "osd/gen/gen_raupe.osd")
  Body_SetFriendOrFoeID(node275, 3)
  Body_SetNameKey(node275, -1)
  Body_SetCargoKey(node275, -1, 0)
  Body_SetCargoKey(node275, -1, 1)
  Body_SetCargoKey(node275, -1, 2)
  Node_EnterSimulation(node275)
  Game_LoadProgress_Advance(node0)
  node276 = Node_CreateNode("nod_vehicle", "gen_diggerC2")
  Node_AddSon(node266, node276)
  Body_SetCS(node276, MAT_Vector3(1087.44929, 1381.368483, 206.982022), MAT_Vector3(84.16957, -3.749551, 4.639916))
  Node_ParseIniFile(node276, "osd/gen/gen_raupe.osd")
  Body_SetFriendOrFoeID(node276, 3)
  Body_SetNameKey(node276, -1)
  Body_SetCargoKey(node276, -1, 0)
  Body_SetCargoKey(node276, -1, 1)
  Body_SetCargoKey(node276, -1, 2)
  Node_EnterSimulation(node276)
  Game_LoadProgress_Advance(node0)
  node277 = Node_CreateNode("nod_vehicle", "gen_diggerC3")
  Node_AddSon(node266, node277)
  Body_SetCS(node277, MAT_Vector3(1046.307475, 1399.036029, 206.471931), MAT_Vector3(67.268475, -3.0645, -4.4873))
  Node_ParseIniFile(node277, "osd/gen/gen_raupe.osd")
  Body_SetFriendOrFoeID(node277, 3)
  Body_SetNameKey(node277, -1)
  Body_SetCargoKey(node277, -1, 0)
  Body_SetCargoKey(node277, -1, 1)
  Body_SetCargoKey(node277, -1, 2)
  Node_EnterSimulation(node277)
  Game_LoadProgress_Advance(node0)
  node278 = Node_CreateNode("nod_vehicle", "gen_diggerC4")
  Node_AddSon(node266, node278)
  Body_SetCS(node278, MAT_Vector3(1001.456248, 1405.373907, 206.438976), MAT_Vector3(50.733425, 0, 0))
  Node_ParseIniFile(node278, "osd/gen/gen_raupe.osd")
  Body_SetFriendOrFoeID(node278, 3)
  Body_SetNameKey(node278, -1)
  Body_SetCargoKey(node278, -1, 0)
  Body_SetCargoKey(node278, -1, 1)
  Body_SetCargoKey(node278, -1, 2)
  Node_EnterSimulation(node278)
  Game_LoadProgress_Advance(node0)
  node279 = Node_CreateNode("nod_vessel", "bio_scout_B1")
  Node_AddSon(node265, node279)
  Body_SetCS(node279, MAT_Vector3(1056.840535, 2375.25736, 198.070421), MAT_Vector3(-71.629549, 9, 0))
  Node_ParseIniFile(node279, "osd/bio/bio_scout_d3.osd")
  Body_SetFriendOrFoeID(node279, 4)
  Body_SetNameKey(node279, -1)
  Body_SetCargoKey(node279, -1, 0)
  Body_SetCargoKey(node279, -1, 1)
  Body_SetCargoKey(node279, -1, 2)
  Node_EnterSimulation(node279)
  Game_LoadProgress_Advance(node0)
  node280 = Node_CreateNode("nod_vessel", "bio_scout_B2")
  Node_AddSon(node265, node280)
  Body_SetCS(node280, MAT_Vector3(1110.171054, 2314.555399, 206.533372), MAT_Vector3(-29.642233, 26, 16))
  Node_ParseIniFile(node280, "osd/bio/bio_scout_d1.osd")
  Body_SetFriendOrFoeID(node280, 4)
  Body_SetNameKey(node280, -1)
  Body_SetCargoKey(node280, -1, 0)
  Body_SetCargoKey(node280, -1, 1)
  Body_SetCargoKey(node280, -1, 2)
  Node_EnterSimulation(node280)
  Game_LoadProgress_Advance(node0)
  node281 = Node_CreateNode("nod_vessel", "bio_scout_C1")
  Node_AddSon(node265, node281)
  Body_SetCS(node281, MAT_Vector3(1024.742504, 694.26117, 94.047912), MAT_Vector3(-51.28831, 0, 0))
  Node_ParseIniFile(node281, "osd/bio/bio_scout_d3.osd")
  Body_SetFriendOrFoeID(node281, 4)
  Body_SetNameKey(node281, -1)
  Body_SetCargoKey(node281, -1, 0)
  Body_SetCargoKey(node281, -1, 1)
  Body_SetCargoKey(node281, -1, 2)
  Node_EnterSimulation(node281)
  Game_LoadProgress_Advance(node0)
  node282 = Node_CreateNode("nod_vessel", "bio_scout_C2")
  Node_AddSon(node265, node282)
  Body_SetCS(node282, MAT_Vector3(1002.256365, 702.64614, 90.004786), MAT_Vector3(116.6132, 0, 0))
  Node_ParseIniFile(node282, "osd/bio/bio_scout_d1.osd")
  Body_SetFriendOrFoeID(node282, 4)
  Body_SetNameKey(node282, -1)
  Body_SetCargoKey(node282, -1, 0)
  Body_SetCargoKey(node282, -1, 1)
  Body_SetCargoKey(node282, -1, 2)
  Node_EnterSimulation(node282)
  Game_LoadProgress_Advance(node0)
  node283 = Node_CreateNode("nod_vehicle", "1H2_Digger_1")
  Node_AddSon(node265, node283)
  Body_SetCS(node283, MAT_Vector3(1031.433458, 1031.258895, 15.056538), MAT_Vector3(137.142887, 0, 0))
  Node_ParseIniFile(node283, "osd/gen/gen_raupe.osd")
  Body_SetFriendOrFoeID(node283, 2)
  Body_SetNameKey(node283, -1)
  Body_SetCargoKey(node283, -1, 0)
  Body_SetCargoKey(node283, -1, 1)
  Body_SetCargoKey(node283, -1, 2)
  Node_EnterSimulation(node283)
  Game_LoadProgress_Advance(node0)
  node284 = Node_CreateNode("nod_vehicle", "1H2_raupe_1")
  Node_AddSon(node265, node284)
  Body_SetCS(node284, MAT_Vector3(1105.81754, 2510.343199, 182.934455), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node284, "osd/gen/gen_raupe.osd")
  Body_SetFriendOrFoeID(node284, 2)
  Body_SetNameKey(node284, -1)
  Body_SetCargoKey(node284, -1, 0)
  Body_SetCargoKey(node284, -1, 1)
  Body_SetCargoKey(node284, -1, 2)
  Node_EnterSimulation(node284)
  Game_LoadProgress_Advance(node0)
  node285 = Node_CreateNode("nod_vehicle", "1H2_raupe_2")
  Node_AddSon(node265, node285)
  Body_SetCS(node285, MAT_Vector3(1192.74179, 2458.864432, 180.998064), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node285, "osd/gen/gen_raupe.osd")
  Body_SetFriendOrFoeID(node285, 2)
  Body_SetNameKey(node285, -1)
  Body_SetCargoKey(node285, -1, 0)
  Body_SetCargoKey(node285, -1, 1)
  Body_SetCargoKey(node285, -1, 2)
  Node_EnterSimulation(node285)
  Game_LoadProgress_Advance(node0)
  node286 = Node_CreateNode("nod_vehicle", "1H2_raupe_3")
  Node_AddSon(node265, node286)
  Body_SetCS(node286, MAT_Vector3(1049.706773, 2440.911155, 183.156509), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node286, "osd/gen/gen_raupe.osd")
  Body_SetFriendOrFoeID(node286, 2)
  Body_SetNameKey(node286, -1)
  Body_SetCargoKey(node286, -1, 0)
  Body_SetCargoKey(node286, -1, 1)
  Body_SetCargoKey(node286, -1, 2)
  Node_EnterSimulation(node286)
  Game_LoadProgress_Advance(node0)
  node287 = Node_CreateNode("nod_vehicle", "1H2_raupe_4")
  Node_AddSon(node265, node287)
  Body_SetCS(node287, MAT_Vector3(1268.199836, 2418.405712, 183.878565), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node287, "osd/gen/gen_raupe.osd")
  Body_SetFriendOrFoeID(node287, 2)
  Body_SetNameKey(node287, -1)
  Body_SetCargoKey(node287, -1, 0)
  Body_SetCargoKey(node287, -1, 1)
  Body_SetCargoKey(node287, -1, 2)
  Node_EnterSimulation(node287)
  Game_LoadProgress_Advance(node0)
  node288 = Node_CreateNode("nod_vessel", "wng_bonham")
  Node_AddSon(node265, node288)
  Body_SetCS(node288, MAT_Vector3(2138.039844, 2384.228243, 328.30867), MAT_Vector3(89.137085, 0, 0))
  Node_ParseIniFile(node288, "osd/wng/wng_bonham.osd")
  Body_SetFriendOrFoeID(node288, 1)
  Body_SetNameKey(node288, -1)
  Body_SetCargoKey(node288, -1, 0)
  Body_SetCargoKey(node288, -1, 1)
  Body_SetCargoKey(node288, -1, 2)
  Node_EnterSimulation(node288)
  Game_LoadProgress_Advance(node0)
  node289 = Node_CreateNode("nod_vessel", "wng_harper")
  Node_AddSon(node265, node289)
  Body_SetCS(node289, MAT_Vector3(2138.189023, 2424.430409, 328.971598), MAT_Vector3(90.005498, 0, 0))
  Node_ParseIniFile(node289, "osd/wng/wng_harper.osd")
  Body_SetFriendOrFoeID(node289, 1)
  Body_SetNameKey(node289, -1)
  Body_SetCargoKey(node289, -1, 0)
  Body_SetCargoKey(node289, -1, 1)
  Body_SetCargoKey(node289, -1, 2)
  Node_EnterSimulation(node289)
  Game_LoadProgress_Advance(node0)
  node290 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node265, node290)
  Body_SetCS(node290, MAT_Vector3(2137.14996, 2403.974265, 327.896418), MAT_Vector3(89.434608, 0, 0))
  Node_ParseIniFile(node290, "osd/pla/pla_toiler.osd")
  Body_SetFriendOrFoeID(node290, 0)
  Node_EnterSimulation(node290)
  Game_LoadProgress_Advance(node0)
  node291 = Node_CreateNode("nod_vessel", "bio_scout_d2_A1")
  Node_AddSon(node265, node291)
  Body_SetCS(node291, MAT_Vector3(916.193918, 851.937478, 18.191537), MAT_Vector3(-83.041535, 0, 0))
  Node_ParseIniFile(node291, "osd/bio/bio_scout_d2_nohalo.osd")
  Body_SetFriendOrFoeID(node291, 7)
  Body_SetNameKey(node291, -1)
  Body_SetCargoKey(node291, -1, 0)
  Body_SetCargoKey(node291, -1, 1)
  Body_SetCargoKey(node291, -1, 2)
  Node_EnterSimulation(node291)
  Game_LoadProgress_Advance(node0)
  node292 = Node_CreateNode("nod_vessel", "bio_scout_d1_A2")
  Node_AddSon(node265, node292)
  Body_SetCS(node292, MAT_Vector3(856.316474, 708.42785, 6.877282), MAT_Vector3(43.350528, 0, 0))
  Node_ParseIniFile(node292, "osd/bio/bio_scout_d1_nohalo.osd")
  Body_SetFriendOrFoeID(node292, 8)
  Body_SetNameKey(node292, -1)
  Body_SetCargoKey(node292, -1, 0)
  Body_SetCargoKey(node292, -1, 1)
  Body_SetCargoKey(node292, -1, 2)
  Node_EnterSimulation(node292)
  Game_LoadProgress_Advance(node0)
  node293 = Node_CreateNode("nod_vessel", "bio_scout_d2_A3")
  Node_AddSon(node265, node293)
  Body_SetCS(node293, MAT_Vector3(603.37411, 772.257926, 70.102566), MAT_Vector3(-51.688338, 0, 0))
  Node_ParseIniFile(node293, "osd/bio/bio_scout_d2_nohalo.osd")
  Body_SetFriendOrFoeID(node293, 9)
  Body_SetNameKey(node293, -1)
  Body_SetCargoKey(node293, -1, 0)
  Body_SetCargoKey(node293, -1, 1)
  Body_SetCargoKey(node293, -1, 2)
  Node_EnterSimulation(node293)
  Game_LoadProgress_Advance(node0)
  node294 = Node_CreateNode("nod_vessel", "bio_scout_d2_A4")
  Node_AddSon(node265, node294)
  Body_SetCS(node294, MAT_Vector3(845.027423, 973.874604, 22.103327), MAT_Vector3(-24.217751, 0, 0))
  Node_ParseIniFile(node294, "osd/bio/bio_scout_d2_nohalo.osd")
  Body_SetFriendOrFoeID(node294, 9)
  Body_SetNameKey(node294, -1)
  Body_SetCargoKey(node294, -1, 0)
  Body_SetCargoKey(node294, -1, 1)
  Body_SetCargoKey(node294, -1, 2)
  Node_EnterSimulation(node294)
  Game_LoadProgress_Advance(node0)
  node295 = Node_CreateNode("nod_waypoint", "nav_waypoint_01")
  Node_AddSon(node265, node295)
  Body_SetPosition(node295, MAT_Vector3(1049.652491, 1051.22856, 64.767403))
  WayPoint_SetRadius(node295, 50)
  Node_ParseIniFile(node295, "osd/nav/nav_waypoint_01.osd")
  Node_EnterSimulation(node295)
  Game_LoadProgress_Advance(node0)
  node296 = Node_CreateNode("nod_waypoint", "nav_waypoint_mark")
  Node_AddSon(node265, node296)
  Body_SetPosition(node296, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node296, 250)
  Node_ParseIniFile(node296, "osd/nav/nav_waypoint_mark.osd")
  Node_EnterSimulation(node296)
  Game_LoadProgress_Advance(node0)
  node297 = Node_CreateNode("nod_waypoint", "nav_waypoint_02")
  Node_AddSon(node265, node297)
  Body_SetPosition(node297, MAT_Vector3(1180.600209, 2392.550311, 197.55623))
  WayPoint_SetRadius(node297, 400)
  Node_ParseIniFile(node297, "osd/nav/nav_waypoint_02.osd")
  Node_EnterSimulation(node297)
  Game_LoadProgress_Advance(node0)
  node298 = Node_CreateNode("nod_waypoint", "nav_waypoint_03")
  Node_AddSon(node265, node298)
  Body_SetPosition(node298, MAT_Vector3(925.848519, 798.079617, 124.321887))
  WayPoint_SetRadius(node298, 150)
  Node_ParseIniFile(node298, "osd/nav/nav_waypoint_03.osd")
  Node_EnterSimulation(node298)
  Game_LoadProgress_Advance(node0)
  node299 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node299)
  Camera_SetBackPlane(node299, 512)
  Node_EnterSimulation(node299)
  Game_LoadProgress_Advance(node0)
  node300 = Node_CreateNode("NOD_Scenario", "IngameSequences")
  Node_AddSon(node0, node300)
  Node_EnterSimulation(node300)
  Game_LoadProgress_Advance(node0)
  node301 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node300, node301)
  Node_EnterSimulation(node301)
  Game_LoadProgress_Advance(node0)
  node302 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node300, node302)
  Node_EnterSimulation(node302)
  Game_LoadProgress_Advance(node0)
  node303 = Node_CreateNode("NOD_Position", "C1_Intro_Pos1")
  Node_AddSon(node302, node303)
  Position_SetPosition(node303, MAT_Vector3(1400.163537, 2052.665107, 227.311915))
  Position_SetRadius(node303, 5)
  Game_LoadProgress_Advance(node0)
  node304 = Node_CreateNode("NOD_Position", "C1_Intro_Pos2")
  Node_AddSon(node302, node304)
  Position_SetPosition(node304, MAT_Vector3(1192.604547, 1601.203314, 155))
  Position_SetRadius(node304, 5)
  Game_LoadProgress_Advance(node0)
  node305 = Node_CreateNode("NOD_Position", "C1_Intro_Pos3")
  Node_AddSon(node302, node305)
  Position_SetPosition(node305, MAT_Vector3(1109.886906, 1436.083681, 350))
  Position_SetRadius(node305, 5)
  Game_LoadProgress_Advance(node0)
  node306 = Node_CreateNode("NOD_Position", "C1_Intro_Pos4")
  Node_AddSon(node302, node306)
  Position_SetPosition(node306, MAT_Vector3(1115.804382, 1349.237889, 214.514156))
  Position_SetRadius(node306, 5)
  Game_LoadProgress_Advance(node0)
  node307 = Node_CreateNode("NOD_Path", "C1_Intro_Path1")
  Node_AddSon(node302, node307)
  Game_LoadProgress_Advance(node0)
  node308 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node307, node308)
  Position_SetPosition(node308, MAT_Vector3(1520.042096, 2102.757019, 172.422557))
  Position_SetRadius(node308, 5)
  Game_LoadProgress_Advance(node0)
  node309 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node307, node309)
  Position_SetPosition(node309, MAT_Vector3(1484.423141, 2035.953113, 170.266445))
  Position_SetRadius(node309, 5)
  Game_LoadProgress_Advance(node0)
  node310 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node307, node310)
  Position_SetPosition(node310, MAT_Vector3(1436.486429, 1947.164565, 169.706847))
  Position_SetRadius(node310, 5)
  Game_LoadProgress_Advance(node0)
  node311 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node307, node311)
  Position_SetPosition(node311, MAT_Vector3(1354.78359, 1806.075187, 169.965378))
  Position_SetRadius(node311, 5)
  Game_LoadProgress_Advance(node0)
  node312 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node307, node312)
  Position_SetPosition(node312, MAT_Vector3(1300.405765, 1682.48922, 169.5932))
  Position_SetRadius(node312, 5)
  Game_LoadProgress_Advance(node0)
  node313 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node307, node313)
  Position_SetPosition(node313, MAT_Vector3(1242.732313, 1570.437942, 214.762964))
  Position_SetRadius(node313, 5)
  Game_LoadProgress_Advance(node0)
  node314 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node307, node314)
  Position_SetPosition(node314, MAT_Vector3(1215.856713, 1504.569056, 214.762953))
  Position_SetRadius(node314, 5)
  Game_LoadProgress_Advance(node0)
  node315 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node307, node315)
  Position_SetPosition(node315, MAT_Vector3(1126.902149, 1356.262986, 214.762953))
  Position_SetRadius(node315, 5)
  Game_LoadProgress_Advance(node0)
  node316 = Node_CreateNode("NOD_Position", "C3_Intro_Pos1")
  Node_AddSon(node302, node316)
  Position_SetPosition(node316, MAT_Vector3(920.198936, 1371.497608, 192.675068))
  Position_SetRadius(node316, 5)
  Game_LoadProgress_Advance(node0)
  node317 = Node_CreateNode("NOD_Position", "C3_Intro_Pos2")
  Node_AddSon(node302, node317)
  Position_SetPosition(node317, MAT_Vector3(912.178134, 1122.854247, 191.136925))
  Position_SetRadius(node317, 5)
  Game_LoadProgress_Advance(node0)
  node318 = Node_CreateNode("NOD_Path", "C2_Intro_Path1")
  Node_AddSon(node302, node318)
  Game_LoadProgress_Advance(node0)
  node319 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node318, node319)
  Position_SetPosition(node319, MAT_Vector3(931.423521, 1173.29943, 106.675389))
  Position_SetRadius(node319, 5)
  Game_LoadProgress_Advance(node0)
  node320 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node318, node320)
  Position_SetPosition(node320, MAT_Vector3(931.376413, 1230.740625, 170.227896))
  Position_SetRadius(node320, 5)
  Game_LoadProgress_Advance(node0)
  node321 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node318, node321)
  Position_SetPosition(node321, MAT_Vector3(930.792635, 1356.607466, 211.843446))
  Position_SetRadius(node321, 5)
  Game_LoadProgress_Advance(node0)
  node322 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node318, node322)
  Position_SetPosition(node322, MAT_Vector3(929.785703, 1609.755852, 223.029507))
  Position_SetRadius(node322, 5)
  Game_LoadProgress_Advance(node0)
  node323 = Node_CreateNode("NOD_Position", "C3_Intro_Pos3")
  Node_AddSon(node302, node323)
  Position_SetPosition(node323, MAT_Vector3(1028.907871, 2241.758485, 168.053669))
  Position_SetRadius(node323, 5)
  Game_LoadProgress_Advance(node0)
  node324 = Node_CreateNode("NOD_Position", "C3_Intro_Pos4")
  Node_AddSon(node302, node324)
  Position_SetPosition(node324, MAT_Vector3(1161.556805, 2451.030717, 175.323773))
  Position_SetRadius(node324, 5)
  Game_LoadProgress_Advance(node0)
  node325 = Node_CreateNode("NOD_Path", "C3_Intro_Path2")
  Node_AddSon(node302, node325)
  Game_LoadProgress_Advance(node0)
  node326 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node325, node326)
  Position_SetPosition(node326, MAT_Vector3(928.98865, 1657.587749, 223.245249))
  Position_SetRadius(node326, 5)
  Game_LoadProgress_Advance(node0)
  node327 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node325, node327)
  Position_SetPosition(node327, MAT_Vector3(935.806302, 1896.634719, 224.121184))
  Position_SetRadius(node327, 5)
  Game_LoadProgress_Advance(node0)
  node328 = Node_CreateNode("NOD_Position", "C3_Intro_Pos5")
  Node_AddSon(node302, node328)
  Position_SetPosition(node328, MAT_Vector3(908.819481, 1745.581681, 229.762182))
  Position_SetRadius(node328, 5)
  Game_LoadProgress_Advance(node0)
  node329 = Node_CreateNode("NOD_Position", "C4_Intro_Pos1")
  Node_AddSon(node302, node329)
  Position_SetPosition(node329, MAT_Vector3(1080.550266, 2325.021281, 219.562586))
  Position_SetRadius(node329, 5)
  Game_LoadProgress_Advance(node0)
  node330 = Node_CreateNode("NOD_Path", "C4_Intro_Path1")
  Node_AddSon(node302, node330)
  Game_LoadProgress_Advance(node0)
  node331 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node330, node331)
  Position_SetPosition(node331, MAT_Vector3(1089.997701, 2349.820797, 228.203867))
  Position_SetRadius(node331, 5)
  Game_LoadProgress_Advance(node0)
  node332 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node330, node332)
  Position_SetPosition(node332, MAT_Vector3(1140.148269, 2305.971661, 228.869986))
  Position_SetRadius(node332, 5)
  Game_LoadProgress_Advance(node0)
  node333 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node330, node333)
  Position_SetPosition(node333, MAT_Vector3(1233.513312, 2225.235921, 228.42283))
  Position_SetRadius(node333, 5)
  Game_LoadProgress_Advance(node0)
  node334 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node300, node334)
  Node_EnterSimulation(node334)
  Game_LoadProgress_Advance(node0)
  node335 = Node_CreateNode("NOD_Director", "Chapter1_Intro_V")
  Node_AddSon(node334, node335)
  Node_EnterSimulation(node335)
  Game_LoadProgress_Advance(node0)
  node336 = Node_CreateNode("NOD_Director", "Chapter1_Intro_A")
  Node_AddSon(node334, node336)
  Node_EnterSimulation(node336)
  Game_LoadProgress_Advance(node0)
  node337 = Node_CreateNode("NOD_Director", "Chapter3_Intro_V")
  Node_AddSon(node334, node337)
  Node_EnterSimulation(node337)
  Game_LoadProgress_Advance(node0)
  node338 = Node_CreateNode("NOD_Director", "Chapter3_IntroAddOn_V")
  Node_AddSon(node334, node338)
  Node_EnterSimulation(node338)
  Game_LoadProgress_Advance(node0)
  node339 = Node_CreateNode("NOD_Director", "Chapter3_Intro_A")
  Node_AddSon(node334, node339)
  Node_EnterSimulation(node339)
  Game_LoadProgress_Advance(node0)
  node340 = Node_CreateNode("NOD_Director", "Chapter4_Intro_V")
  Node_AddSon(node334, node340)
  Node_EnterSimulation(node340)
  Game_LoadProgress_Advance(node0)
  node341 = Node_CreateNode("NOD_Director", "Chapter4_IntroAddOn_V")
  Node_AddSon(node334, node341)
  Node_EnterSimulation(node341)
  Game_LoadProgress_Advance(node0)
  node342 = Node_CreateNode("NOD_Director", "Chapter4_Intro_A")
  Node_AddSon(node334, node342)
  Node_EnterSimulation(node342)
  Game_LoadProgress_Advance(node0)
  node343 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node300, node343)
  Node_EnterSimulation(node343)
  Game_LoadProgress_Advance(node0)
  node344 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_1")
  Node_AddSon(node343, node344)
  Body_SetFriendOrFoeID(node344, 0)
  Body_SetCS(node344, MAT_Vector3(931.5111, 1326.986633, 194.044179), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node344, 20, 20, 20)
  Node_EnterSimulation(node344)
  Game_LoadProgress_Advance(node0)
  node345 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_2")
  Node_AddSon(node343, node345)
  Body_SetFriendOrFoeID(node345, 0)
  Body_SetCS(node345, MAT_Vector3(1160.684902, 2289.054349, 232.37301), MAT_Vector3(-39.194423, 0, 0))
  Trigger_SetBoxMode(node345, 20, 20, 20)
  Node_EnterSimulation(node345)
  Game_LoadProgress_Advance(node0)
  node346 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node300, node346)
  Node_EnterSimulation(node346)
  Game_LoadProgress_Advance(node0)
  node347 = Node_CreateNode("nod_vehicle", "gen_raupe_1")
  Node_AddSon(node346, node347)
  Body_SetCS(node347, MAT_Vector3(1438.877545, 2000.096515, 145.016861), MAT_Vector3(43.626422, 0, 0))
  Node_ParseIniFile(node347, "osd/gen/gen_raupe.osd")
  Body_SetFriendOrFoeID(node347, 0)
  Body_SetNameKey(node347, -1)
  Body_SetCargoKey(node347, -1, 0)
  Body_SetCargoKey(node347, -1, 1)
  Body_SetCargoKey(node347, -1, 2)
  Node_EnterSimulation(node347)
  Game_LoadProgress_Advance(node0)
  node348 = Node_CreateNode("nod_vehicle", "gen_raupe_2")
  Node_AddSon(node346, node348)
  Body_SetCS(node348, MAT_Vector3(1417.609659, 1817.879048, 145.547187), MAT_Vector3(150.872366, 0, 0))
  Node_ParseIniFile(node348, "osd/gen/gen_raupe.osd")
  Body_SetFriendOrFoeID(node348, 0)
  Body_SetNameKey(node348, -1)
  Body_SetCargoKey(node348, -1, 0)
  Body_SetCargoKey(node348, -1, 1)
  Body_SetCargoKey(node348, -1, 2)
  Node_EnterSimulation(node348)
  Game_LoadProgress_Advance(node0)
  node349 = Node_CreateNode("nod_vehicle", "gen_raupe_3")
  Node_AddSon(node346, node349)
  Body_SetCS(node349, MAT_Vector3(1318.740953, 1752.349516, 145.5472), MAT_Vector3(-53.825376, 0, 0))
  Node_ParseIniFile(node349, "osd/gen/gen_raupe.osd")
  Body_SetFriendOrFoeID(node349, 0)
  Body_SetNameKey(node349, -1)
  Body_SetCargoKey(node349, -1, 0)
  Body_SetCargoKey(node349, -1, 1)
  Body_SetCargoKey(node349, -1, 2)
  Node_EnterSimulation(node349)
  Game_LoadProgress_Advance(node0)
  node350 = Node_CreateNode("nod_vehicle", "gen_raupe_4")
  Node_AddSon(node346, node350)
  Body_SetCS(node350, MAT_Vector3(1336.560822, 1627.038671, 145.5472), MAT_Vector3(-124.343262, 0, 0))
  Node_ParseIniFile(node350, "osd/gen/gen_raupe.osd")
  Body_SetFriendOrFoeID(node350, 0)
  Body_SetNameKey(node350, -1)
  Body_SetCargoKey(node350, -1, 0)
  Body_SetCargoKey(node350, -1, 1)
  Body_SetCargoKey(node350, -1, 2)
  Node_EnterSimulation(node350)
  Game_LoadProgress_Advance(node0)
  node351 = Node_CreateNode("nod_vehicle", "gen_raupe_5")
  Node_AddSon(node346, node351)
  Body_SetCS(node351, MAT_Vector3(1420.484726, 1654.055542, 145.5472), MAT_Vector3(-166.947854, 0, 0))
  Node_ParseIniFile(node351, "osd/gen/gen_raupe.osd")
  Body_SetFriendOrFoeID(node351, 0)
  Body_SetNameKey(node351, -1)
  Body_SetCargoKey(node351, -1, 0)
  Body_SetCargoKey(node351, -1, 1)
  Body_SetCargoKey(node351, -1, 2)
  Node_EnterSimulation(node351)
  Game_LoadProgress_Advance(node0)
  node352 = Node_CreateNode("nod_vehicle", "gen_raupe_6")
  Node_AddSon(node346, node352)
  Body_SetCS(node352, MAT_Vector3(1252.637549, 1596.573996, 145.5472), MAT_Vector3(-6.813542, 0, 0))
  Node_ParseIniFile(node352, "osd/gen/gen_raupe.osd")
  Body_SetFriendOrFoeID(node352, 0)
  Body_SetNameKey(node352, -1)
  Body_SetCargoKey(node352, -1, 0)
  Body_SetCargoKey(node352, -1, 1)
  Body_SetCargoKey(node352, -1, 2)
  Node_EnterSimulation(node352)
  Game_LoadProgress_Advance(node0)
  node353 = Node_CreateNode("nod_vehicle", "gen_raupe_7")
  Node_AddSon(node346, node353)
  Body_SetCS(node353, MAT_Vector3(1447.501993, 1901.228621, 145.5472), MAT_Vector3(-109.652121, 0, 0))
  Node_ParseIniFile(node353, "osd/gen/gen_raupe.osd")
  Body_SetFriendOrFoeID(node353, 0)
  Body_SetNameKey(node353, -1)
  Body_SetCargoKey(node353, -1, 0)
  Body_SetCargoKey(node353, -1, 1)
  Body_SetCargoKey(node353, -1, 2)
  Node_EnterSimulation(node353)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, F)
SetEnemyMatrixElement(2, 0, F)
SetEnemyMatrixElement(3, 0, N)
SetEnemyMatrixElement(4, 0, E)
SetEnemyMatrixElement(5, 0, U)
SetEnemyMatrixElement(6, 0, N)
SetEnemyMatrixElement(7, 0, U)
SetEnemyMatrixElement(8, 0, U)
SetEnemyMatrixElement(9, 0, U)
SetEnemyMatrixElement(10, 0, N)
SetEnemyMatrixElement(11, 0, N)
SetEnemyMatrixElement(12, 0, N)
SetEnemyMatrixElement(13, 0, N)
SetEnemyMatrixElement(14, 0, N)
SetEnemyMatrixElement(15, 0, N)
SetEnemyMatrixElement(0, 1, F)
SetEnemyMatrixElement(1, 1, F)
SetEnemyMatrixElement(2, 1, F)
SetEnemyMatrixElement(3, 1, N)
SetEnemyMatrixElement(4, 1, E)
SetEnemyMatrixElement(5, 1, U)
SetEnemyMatrixElement(6, 1, N)
SetEnemyMatrixElement(7, 1, U)
SetEnemyMatrixElement(8, 1, U)
SetEnemyMatrixElement(9, 1, U)
SetEnemyMatrixElement(10, 1, N)
SetEnemyMatrixElement(11, 1, N)
SetEnemyMatrixElement(12, 1, N)
SetEnemyMatrixElement(13, 1, N)
SetEnemyMatrixElement(14, 1, N)
SetEnemyMatrixElement(15, 1, N)
SetEnemyMatrixElement(0, 2, F)
SetEnemyMatrixElement(1, 2, F)
SetEnemyMatrixElement(2, 2, F)
SetEnemyMatrixElement(3, 2, F)
SetEnemyMatrixElement(4, 2, E)
SetEnemyMatrixElement(5, 2, U)
SetEnemyMatrixElement(6, 2, N)
SetEnemyMatrixElement(7, 2, U)
SetEnemyMatrixElement(8, 2, U)
SetEnemyMatrixElement(9, 2, U)
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
SetEnemyMatrixElement(5, 3, U)
SetEnemyMatrixElement(6, 3, N)
SetEnemyMatrixElement(7, 3, U)
SetEnemyMatrixElement(8, 3, U)
SetEnemyMatrixElement(9, 3, U)
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
SetEnemyMatrixElement(5, 4, U)
SetEnemyMatrixElement(6, 4, N)
SetEnemyMatrixElement(7, 4, U)
SetEnemyMatrixElement(8, 4, U)
SetEnemyMatrixElement(9, 4, U)
SetEnemyMatrixElement(10, 4, N)
SetEnemyMatrixElement(11, 4, N)
SetEnemyMatrixElement(12, 4, N)
SetEnemyMatrixElement(13, 4, N)
SetEnemyMatrixElement(14, 4, N)
SetEnemyMatrixElement(15, 4, N)
SetEnemyMatrixElement(0, 5, U)
SetEnemyMatrixElement(1, 5, U)
SetEnemyMatrixElement(2, 5, N)
SetEnemyMatrixElement(3, 5, N)
SetEnemyMatrixElement(4, 5, F)
SetEnemyMatrixElement(5, 5, U)
SetEnemyMatrixElement(6, 5, N)
SetEnemyMatrixElement(7, 5, U)
SetEnemyMatrixElement(8, 5, U)
SetEnemyMatrixElement(9, 5, U)
SetEnemyMatrixElement(10, 5, N)
SetEnemyMatrixElement(11, 5, N)
SetEnemyMatrixElement(12, 5, N)
SetEnemyMatrixElement(13, 5, N)
SetEnemyMatrixElement(14, 5, N)
SetEnemyMatrixElement(15, 5, N)
SetEnemyMatrixElement(0, 6, U)
SetEnemyMatrixElement(1, 6, U)
SetEnemyMatrixElement(2, 6, N)
SetEnemyMatrixElement(3, 6, N)
SetEnemyMatrixElement(4, 6, N)
SetEnemyMatrixElement(5, 6, N)
SetEnemyMatrixElement(6, 6, N)
SetEnemyMatrixElement(7, 6, U)
SetEnemyMatrixElement(8, 6, U)
SetEnemyMatrixElement(9, 6, U)
SetEnemyMatrixElement(10, 6, N)
SetEnemyMatrixElement(11, 6, N)
SetEnemyMatrixElement(12, 6, N)
SetEnemyMatrixElement(13, 6, N)
SetEnemyMatrixElement(14, 6, N)
SetEnemyMatrixElement(15, 6, N)
SetEnemyMatrixElement(0, 7, U)
SetEnemyMatrixElement(1, 7, E)
SetEnemyMatrixElement(2, 7, N)
SetEnemyMatrixElement(3, 7, N)
SetEnemyMatrixElement(4, 7, N)
SetEnemyMatrixElement(5, 7, N)
SetEnemyMatrixElement(6, 7, N)
SetEnemyMatrixElement(7, 7, U)
SetEnemyMatrixElement(8, 7, U)
SetEnemyMatrixElement(9, 7, U)
SetEnemyMatrixElement(10, 7, N)
SetEnemyMatrixElement(11, 7, N)
SetEnemyMatrixElement(12, 7, N)
SetEnemyMatrixElement(13, 7, N)
SetEnemyMatrixElement(14, 7, N)
SetEnemyMatrixElement(15, 7, N)
SetEnemyMatrixElement(0, 8, U)
SetEnemyMatrixElement(1, 8, E)
SetEnemyMatrixElement(2, 8, N)
SetEnemyMatrixElement(3, 8, N)
SetEnemyMatrixElement(4, 8, N)
SetEnemyMatrixElement(5, 8, N)
SetEnemyMatrixElement(6, 8, N)
SetEnemyMatrixElement(7, 8, U)
SetEnemyMatrixElement(8, 8, U)
SetEnemyMatrixElement(9, 8, U)
SetEnemyMatrixElement(10, 8, N)
SetEnemyMatrixElement(11, 8, N)
SetEnemyMatrixElement(12, 8, N)
SetEnemyMatrixElement(13, 8, N)
SetEnemyMatrixElement(14, 8, N)
SetEnemyMatrixElement(15, 8, N)
SetEnemyMatrixElement(0, 9, U)
SetEnemyMatrixElement(1, 9, E)
SetEnemyMatrixElement(2, 9, N)
SetEnemyMatrixElement(3, 9, N)
SetEnemyMatrixElement(4, 9, N)
SetEnemyMatrixElement(5, 9, N)
SetEnemyMatrixElement(6, 9, N)
SetEnemyMatrixElement(7, 9, U)
SetEnemyMatrixElement(8, 9, U)
SetEnemyMatrixElement(9, 9, U)
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
                                                                                                                                                                                                                                                                                                      if not (o5345.Value ~= True) then
                                                                                                                                                                                                                                                                                                        if not (o5395.Value ~= True) then
                                                                                                                                                                                                                                                                                                          if not (o5445.Value ~= True) then
                                                                                                                                                                                                                                                                                                            if not (o5495.Value ~= True) then
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
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
  o4245.StartCalculate()
  o4316.StartCalculate()
  o4777.StartCalculate()
  o4826.StartCalculate()
  o5182.StartCalculate()
  o5234.StartCalculate()
  o5565.StartCalculate()
  o5574.StartCalculate()
  o5591.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("RC1OK_092501_1219")
end, SetStateValue = function(L0)
  if not (o2.Value == L0) then
    o2["Value"] = L0
    o4245.ReCalculate()
    o4316.ReCalculate()
    o4777.ReCalculate()
    o4826.ReCalculate()
    o5182.ReCalculate()
    o5234.ReCalculate()
    o5565.ReCalculate()
    o5574.ReCalculate()
    o5591.ReCalculate()
    if not (L0 ~= 1) then
      o2.ChangeTo1()
    end
  end
end }
o3 = { [nil] = {}, GetCalculated = function()
  if not (True ~= True) then
    if not (True ~= True) then
      if not (True ~= True) then
        if not (True ~= True) then
          if not (True ~= True) then
            if not (True ~= True) then
              if not (True ~= True) then
                if not (True ~= True) then
                  if not (True ~= True) then
                    if not (True ~= True) then
                      if not (True ~= True) then
                        if not (True ~= True) then
                          if not (True ~= True) then
                            if not (True ~= True) then
                              if not (True ~= True) then
                                if not (True ~= True) then
                                  if not (True ~= True) then
                                    if not (True ~= True) then
                                      if not (True ~= True) then
                                        if not (True ~= True) then
                                          if not (True ~= True) then
                                            if not (True ~= True) then
                                              if not (True ~= True) then
                                                if not (True ~= True) then
                                                  if not (True ~= True) then
                                                    if not (True ~= True) then
                                                      if not (True ~= True) then
                                                        if not (True ~= True) then
                                                          if not (True ~= True) then
                                                            if not (True ~= True) then
                                                              if not (True ~= True) then
                                                                if not (True ~= True) then
                                                                  if not (True ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
                                                                        if not (True ~= True) then
                                                                          if not (True ~= True) then
                                                                            if not (True ~= True) then
                                                                              if not (True ~= True) then
                                                                                if not (True ~= True) then
                                                                                  if not (True ~= True) then
                                                                                    if not (True ~= True) then
                                                                                      if not (True ~= True) then
                                                                                        if not (True ~= True) then
                                                                                          if not (True ~= True) then
                                                                                            if not (True ~= True) then
                                                                                              if not (True ~= True) then
                                                                                                if not (True ~= True) then
                                                                                                  if not (True ~= True) then
                                                                                                    if not (True ~= True) then
                                                                                                      if not (True ~= True) then
                                                                                                        if not (True ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
                                                                                                                                                if not (True ~= True) then
                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                              if not (o4796.Value ~= True) then
                                                                                                                                                                                                                                                                                if not (o4845.Value ~= True) then
                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                    if not (o5296.Value ~= True) then
                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
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
end, ReCalculate = function()
  o3.SetStateValue(o3.GetCalculated())
end, StartCalculate = function()
  o3["Value"] = o3.GetCalculated()
  o4251.StartCalculate()
  o4874.StartCalculate()
  o4923.StartCalculate()
  o5578.StartCalculate()
  o5587.StartCalculate()
  o5597.StartCalculate()
end, ChangeTo1 = function()
  Game_MissionEnd(GetGameNode(), 2)
  SED_SetTaskTextKey(0, -1, -1)
end, SetStateValue = function(L0)
  if not (o3.Value == L0) then
    o3["Value"] = L0
    o4251.ReCalculate()
    o4874.ReCalculate()
    o4923.ReCalculate()
    o5578.ReCalculate()
    o5587.ReCalculate()
    o5597.ReCalculate()
    if not (L0 ~= 1) then
      o3.ChangeTo1()
    end
  end
end }
o10 = { [nil] = {}, GetCalculated = function()
  if not (True ~= True) then
    if not (True ~= True) then
      if not (True ~= True) then
        if not (True ~= True) then
          if not (True ~= True) then
            if not (True ~= True) then
              if not (True ~= True) then
                if not (True ~= True) then
                  if not (True ~= True) then
                    if not (True ~= True) then
                      if not (True ~= True) then
                        if not (True ~= True) then
                          if not (True ~= True) then
                            if not (True ~= True) then
                              if not (True ~= True) then
                                if not (True ~= True) then
                                  if not (True ~= True) then
                                    if not (True ~= True) then
                                      if not (True ~= True) then
                                        if not (True ~= True) then
                                          if not (True ~= True) then
                                            if not (True ~= True) then
                                              if not (True ~= True) then
                                                if not (True ~= True) then
                                                  if not (True ~= True) then
                                                    if not (True ~= True) then
                                                      if not (True ~= True) then
                                                        if not (True ~= True) then
                                                          if not (True ~= True) then
                                                            if not (True ~= True) then
                                                              if not (True ~= True) then
                                                                if not (True ~= True) then
                                                                  if not (True ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
                                                                        if not (True ~= True) then
                                                                          if not (True ~= True) then
                                                                            if not (True ~= True) then
                                                                              if not (True ~= True) then
                                                                                if not (True ~= True) then
                                                                                  if not (True ~= True) then
                                                                                    if not (True ~= True) then
                                                                                      if not (True ~= True) then
                                                                                        if not (True ~= True) then
                                                                                          if not (True ~= True) then
                                                                                            if not (True ~= True) then
                                                                                              if not (True ~= True) then
                                                                                                if not (True ~= True) then
                                                                                                  if not (True ~= True) then
                                                                                                    if not (True ~= True) then
                                                                                                      if not (True ~= True) then
                                                                                                        if not (True ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
                                                                                                                                                if not (True ~= True) then
                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                  if not (o4901.Value ~= True) then
                                                                                                                                                                                                                                                                                    if not (o4950.Value ~= True) then
                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
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
end, ReCalculate = function()
  o10.SetStateValue(o10.GetCalculated())
end, StartCalculate = function()
  o10["Value"] = o10.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("bonus target completed")
end, SetStateValue = function(L0)
  if not (o10.Value == L0) then
    o10["Value"] = L0
    if not (L0 ~= 1) then
      o10.ChangeTo1()
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
                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                        if not (o5059.Value == True) then
                                                                                                                                                                                                                                                                                          if not (o5098.Value == True) then
                                                                                                                                                                                                                                                                                            if not (o5137.Value == True) then
                                                                                                                                                                                                                                                                                              if not (o5176.Value == True) then
                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                      if not (False == True) then
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
end, ReCalculate = function()
  o27.SetStateValue(o27.GetCalculated())
end, StartCalculate = function()
  o27["Value"] = o27.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "track3")
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
                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                    if not (o5321.Value == True) then
                                                                                                                                                                                                                                                                                                      if not (False == True) then
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
end, ReCalculate = function()
  o28.SetStateValue(o28.GetCalculated())
end, StartCalculate = function()
  o28["Value"] = o28.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "track3")
end, SetStateValue = function(L0)
  if not (o28.Value == L0) then
    o28["Value"] = L0
    if not (L0 ~= 1) then
      o28.ChangeTo1()
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
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o30, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o30, "Code5")
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
S_o68 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o68, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o68, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o68, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o68, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o68, "Code5")
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
S_o106 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o106, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o106, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o106, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o106, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o106, "Code5")
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
S_o144 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o144, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o144, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o144, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o144, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o144, "Code5")
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
S_o182 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o182, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o182, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o182, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o182, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o182, "Code5")
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
S_o220 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o220, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o220, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o220, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o220, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o220, "Code5")
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
S_o258 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o258, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o258, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o258, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o258, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o258, "Code5")
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
S_o296 = { [nil] = {}, Start = function(L0)

end }
S_o330 = { [nil] = {}, Start = function(L0)

end }
S_o364 = { [nil] = {}, Start = function(L0)

end }
S_o398 = { [nil] = {}, Start = function(L0)

end }
S_o432 = { [nil] = {}, Start = function(L0)

end }
S_o466 = { [nil] = {}, Start = function(L0)

end }
S_o500 = { [nil] = {}, Start = function(L0)

end }
S_o534 = { [nil] = {}, Start = function(L0)

end }
S_o568 = { [nil] = {}, Start = function(L0)

end }
S_o602 = { [nil] = {}, Start = function(L0)

end }
S_o636 = { [nil] = {}, Start = function(L0)

end }
S_o670 = { [nil] = {}, Start = function(L0)

end }
S_o704 = { [nil] = {}, Start = function(L0)

end }
S_o738 = { [nil] = {}, Start = function(L0)

end }
S_o772 = { [nil] = {}, Start = function(L0)

end }
S_o806 = { [nil] = {}, Start = function(L0)

end }
S_o840 = { [nil] = {}, Start = function(L0)

end }
S_o874 = { [nil] = {}, Start = function(L0)

end }
S_o908 = { [nil] = {}, Start = function(L0)

end }
S_o942 = { [nil] = {}, Start = function(L0)

end }
S_o976 = { [nil] = {}, Start = function(L0)

end }
S_o1010 = { [nil] = {}, Start = function(L0)

end }
S_o1044 = { [nil] = {}, Start = function(L0)

end }
S_o1078 = { [nil] = {}, Start = function(L0)

end }
S_o1112 = { [nil] = {}, Start = function(L0)

end }
S_o1146 = { [nil] = {}, Start = function(L0)

end }
S_o1180 = { [nil] = {}, Start = function(L0)

end }
S_o1214 = { [nil] = {}, Start = function(L0)

end }
S_o1248 = { [nil] = {}, Start = function(L0)

end }
S_o1282 = { [nil] = {}, Start = function(L0)

end }
S_o1316 = { [nil] = {}, Start = function(L0)

end }
S_o1350 = { [nil] = {}, Start = function(L0)

end }
S_o1384 = { [nil] = {}, Start = function(L0)

end }
S_o1418 = { [nil] = {}, Start = function(L0)

end }
S_o1452 = { [nil] = {}, Start = function(L0)

end }
S_o1486 = { [nil] = {}, Start = function(L0)

end }
S_o1520 = { [nil] = {}, Start = function(L0)

end }
S_o1554 = { [nil] = {}, Start = function(L0)

end }
S_o1588 = { [nil] = {}, Start = function(L0)

end }
S_o1622 = { [nil] = {}, Start = function(L0)

end }
S_o1656 = { [nil] = {}, Start = function(L0)

end }
S_o1690 = { [nil] = {}, Start = function(L0)

end }
S_o1724 = { [nil] = {}, Start = function(L0)

end }
S_o1758 = { [nil] = {}, Start = function(L0)

end }
S_o1792 = { [nil] = {}, Start = function(L0)

end }
S_o1826 = { [nil] = {}, Start = function(L0)

end }
S_o1860 = { [nil] = {}, Start = function(L0)

end }
S_o1894 = { [nil] = {}, Start = function(L0)

end }
S_o1928 = { [nil] = {}, Start = function(L0)

end }
S_o1962 = { [nil] = {}, Start = function(L0)

end }
S_o1996 = { [nil] = {}, Start = function(L0)

end }
S_o2030 = { [nil] = {}, Start = function(L0)

end }
S_o2064 = { [nil] = {}, Start = function(L0)

end }
S_o2098 = { [nil] = {}, Start = function(L0)

end }
S_o2132 = { [nil] = {}, Start = function(L0)

end }
S_o2166 = { [nil] = {}, Start = function(L0)

end }
S_o2200 = { [nil] = {}, Start = function(L0)

end }
S_o2234 = { [nil] = {}, Start = function(L0)

end }
S_o2268 = { [nil] = {}, Start = function(L0)

end }
S_o2302 = { [nil] = {}, Start = function(L0)

end }
S_o2336 = { [nil] = {}, Start = function(L0)

end }
S_o2370 = { [nil] = {}, Start = function(L0)

end }
S_o2404 = { [nil] = {}, Start = function(L0)

end }
S_o2438 = { [nil] = {}, Start = function(L0)

end }
S_o2472 = { [nil] = {}, Start = function(L0)

end }
S_o2506 = { [nil] = {}, Start = function(L0)

end }
S_o2540 = { [nil] = {}, Start = function(L0)

end }
S_o2574 = { [nil] = {}, Start = function(L0)

end }
S_o2608 = { [nil] = {}, Start = function(L0)

end }
S_o2642 = { [nil] = {}, Start = function(L0)

end }
S_o2676 = { [nil] = {}, Start = function(L0)

end }
S_o2710 = { [nil] = {}, Start = function(L0)

end }
S_o2744 = { [nil] = {}, Start = function(L0)

end }
S_o2778 = { [nil] = {}, Start = function(L0)

end }
S_o2812 = { [nil] = {}, Start = function(L0)

end }
S_o2846 = { [nil] = {}, Start = function(L0)

end }
S_o2880 = { [nil] = {}, Start = function(L0)

end }
S_o2914 = { [nil] = {}, Start = function(L0)

end }
S_o2948 = { [nil] = {}, Start = function(L0)

end }
S_o2982 = { [nil] = {}, Start = function(L0)

end }
S_o3016 = { [nil] = {}, Start = function(L0)

end }
S_o3050 = { [nil] = {}, Start = function(L0)

end }
S_o3084 = { [nil] = {}, Start = function(L0)

end }
S_o3118 = { [nil] = {}, Start = function(L0)

end }
S_o3152 = { [nil] = {}, Start = function(L0)

end }
S_o3186 = { [nil] = {}, Start = function(L0)

end }
S_o3220 = { [nil] = {}, Start = function(L0)

end }
S_o3254 = { [nil] = {}, Start = function(L0)

end }
S_o3288 = { [nil] = {}, Start = function(L0)

end }
S_o3322 = { [nil] = {}, Start = function(L0)

end }
S_o3356 = { [nil] = {}, Start = function(L0)

end }
S_o3390 = { [nil] = {}, Start = function(L0)

end }
S_o3424 = { [nil] = {}, Start = function(L0)

end }
S_o3458 = { [nil] = {}, Start = function(L0)

end }
S_o3492 = { [nil] = {}, Start = function(L0)

end }
S_o3526 = { [nil] = {}, Start = function(L0)

end }
S_o3560 = { [nil] = {}, Start = function(L0)

end }
S_o3594 = { [nil] = {}, Start = function(L0)

end }
S_o3628 = { [nil] = {}, Start = function(L0)

end }
S_o3662 = { [nil] = {}, Start = function(L0)

end }
S_o3696 = { [nil] = {}, Start = function(L0)

end }
S_o3730 = { [nil] = {}, Start = function(L0)

end }
S_o3764 = { [nil] = {}, Start = function(L0)

end }
S_o3798 = { [nil] = {}, Start = function(L0)

end }
S_o3832 = { [nil] = {}, Start = function(L0)

end }
S_o3866 = { [nil] = {}, Start = function(L0)

end }
S_o3900 = { [nil] = {}, Start = function(L0)

end }
S_o3934 = { [nil] = {}, Start = function(L0)

end }
S_o3968 = { [nil] = {}, Start = function(L0)

end }
S_o4002 = { [nil] = {}, Start = function(L0)

end }
S_o4036 = { [nil] = {}, Start = function(L0)

end }
S_o4070 = { [nil] = {}, Start = function(L0)

end }
S_o4104 = { [nil] = {}, Start = function(L0)

end }
S_o4138 = { [nil] = {}, Start = function(L0)

end }
S_o4172 = { [nil] = {}, Start = function(L0)

end }
o4206 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/dock_appr", "/Scenario_Dynamic/Navigation/dock_path", "/Scenario_Dynamic/Navigation/dock_area")
S_o4207 = { [nil] = {}, Start = function(L0)

end }
S_o4208 = { [nil] = {}, Start = function(L0)

end }
S_o4209 = { [nil] = {}, Start = function(L0)

end }
S_o4210 = { [nil] = {}, Start = function(L0)

end }
S_o4211 = { [nil] = {}, Start = function(L0)

end }
S_o4212 = { [nil] = {}, Start = function(L0)

end }
S_o4213 = { [nil] = {}, Start = function(L0)

end }
S_o4214 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4214, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4214, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4214, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o4214, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4214, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4214, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4219.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4219 = { [nil] = {}, Start = function()
  o4219["Value"] = False
  o4221.StartCalculate()
  o4227.StartCalculate()
  o4233.StartCalculate()
  o4239.StartCalculate()
  o4982.StartCalculate()
  o5288.StartCalculate()
  o5326.StartCalculate()
  o5376.StartCalculate()
  o5426.StartCalculate()
  o5476.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4219.Value == L0) then
    o4219["Value"] = L0
    o4221.ReCalculate()
    o4227.ReCalculate()
    o4233.ReCalculate()
    o4239.ReCalculate()
    o4982.ReCalculate()
    o5288.ReCalculate()
    o5326.ReCalculate()
    o5376.ReCalculate()
    o5426.ReCalculate()
    o5476.ReCalculate()
  end
end }
S_o4220 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4220, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4220, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4220, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "1H2_Digger_1", "pla", "", "", False, False, True)
  CallFunction(o4220, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4220, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4220, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4225.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4221.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4221 = { [nil] = {}, GetCalculated = function()
  if not (o4219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4221.SetStateValue(o4221.GetCalculated())
end, StartCalculate = function()
  o4221["Value"] = o4221.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4221.Value == L0) then
    o4221["Value"] = L0
    CallFunction(o4220, "ProcesseStateChange")
  end
end }
o4225 = { [nil] = {}, Start = function()
  o4225["Value"] = False
  o5289.StartCalculate()
  o5327.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4225.Value == L0) then
    o4225["Value"] = L0
    o5289.ReCalculate()
    o5327.ReCalculate()
  end
end }
S_o4226 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4226, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4226, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4226, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "1H2_Digger_1", "pla", "", "", False, False, True)
  CallFunction(o4226, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4226, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4226, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4231.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4227.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4227 = { [nil] = {}, GetCalculated = function()
  if not (o4219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4227.SetStateValue(o4227.GetCalculated())
end, StartCalculate = function()
  o4227["Value"] = o4227.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4227.Value == L0) then
    o4227["Value"] = L0
    CallFunction(o4226, "ProcesseStateChange")
  end
end }
o4231 = { [nil] = {}, Start = function()
  o4231["Value"] = False
  o5290.StartCalculate()
  o5377.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4231.Value == L0) then
    o4231["Value"] = L0
    o5290.ReCalculate()
    o5377.ReCalculate()
  end
end }
S_o4232 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4232, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4232, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4232, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "1H2_Digger_1", "pla", "", "", False, False, True)
  CallFunction(o4232, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4232, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4232, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4237.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4233.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4233 = { [nil] = {}, GetCalculated = function()
  if not (o4219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4233.SetStateValue(o4233.GetCalculated())
end, StartCalculate = function()
  o4233["Value"] = o4233.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4233.Value == L0) then
    o4233["Value"] = L0
    CallFunction(o4232, "ProcesseStateChange")
  end
end }
o4237 = { [nil] = {}, Start = function()
  o4237["Value"] = False
  o5291.StartCalculate()
  o5427.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4237.Value == L0) then
    o4237["Value"] = L0
    o5291.ReCalculate()
    o5427.ReCalculate()
  end
end }
S_o4238 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4238, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4238, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4238, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "1H2_Digger_1", "pla", "", "", False, False, True)
  CallFunction(o4238, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4238, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4238, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4243.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4239.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4239 = { [nil] = {}, GetCalculated = function()
  if not (o4219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4239.SetStateValue(o4239.GetCalculated())
end, StartCalculate = function()
  o4239["Value"] = o4239.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4239.Value == L0) then
    o4239["Value"] = L0
    CallFunction(o4238, "ProcesseStateChange")
  end
end }
o4243 = { [nil] = {}, Start = function()
  o4243["Value"] = False
  o5477.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4243.Value == L0) then
    o4243["Value"] = L0
    o5477.ReCalculate()
  end
end }
S_o4244 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4244, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4244, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4244, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "wng", "", "", False, False, True)
  CallFunction(o4244, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4244, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4244, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4249.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4245.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4245 = { [nil] = {}, GetCalculated = function()
  if not (o2.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4245.SetStateValue(o4245.GetCalculated())
end, StartCalculate = function()
  o4245["Value"] = o4245.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4245.Value == L0) then
    o4245["Value"] = L0
    CallFunction(o4244, "ProcesseStateChange")
  end
end }
o4249 = { [nil] = {}, Start = function()
  o4249["Value"] = False
  o4775.StartCalculate()
  o4824.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4249.Value == L0) then
    o4249["Value"] = L0
    o4775.ReCalculate()
    o4824.ReCalculate()
  end
end }
S_o4250 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4250, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4250, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4250, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o4250, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4250, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4250, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4255.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4251.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4251 = { [nil] = {}, GetCalculated = function()
  if not (o3.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4251.SetStateValue(o4251.GetCalculated())
end, StartCalculate = function()
  o4251["Value"] = o4251.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4251.Value == L0) then
    o4251["Value"] = L0
    CallFunction(o4250, "ProcesseStateChange")
  end
end }
o4255 = { [nil] = {}, Start = function()
  o4255["Value"] = False
  o4257.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4255.Value == L0) then
    o4255["Value"] = L0
    o4257.ReCalculate()
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
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o4256, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4256, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4256, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4261.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4257.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4257 = { [nil] = {}, GetCalculated = function()
  if not (o4255.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4257.SetStateValue(o4257.GetCalculated())
end, StartCalculate = function()
  o4257["Value"] = o4257.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4257.Value == L0) then
    o4257["Value"] = L0
    CallFunction(o4256, "ProcesseStateChange")
  end
end }
o4261 = { [nil] = {}, Start = function()
  o4261["Value"] = False
  o4875.StartCalculate()
  o4924.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4261.Value == L0) then
    o4261["Value"] = L0
    o4875.ReCalculate()
    o4924.ReCalculate()
  end
end }
S_o4262 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o4206)
  CallFunction(o4262, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4262, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o4206, "Code3")
  else
    CallFunction(o4262, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Toiler_Path", 0.5, 1 } }("Code4")
  else
    CallFunction(o4262, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o4206, nil, 33.456, "Code5")
  else
    CallFunction(o4262, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o4262, "Code3")
  else
    CallFunction(o4262, "Code6")
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
S_o4311 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4311, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4311, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4311, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o4311, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4311, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Sink", "/Scenario_Dynamic/Navigation/TranPos_H", 1, 1 } }("Code6")
  else
    CallFunction(o4311, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5 } }("Code7")
  else
    CallFunction(o4311, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TranPath_1", 1, 1 } }("Code8")
  else
    CallFunction(o4311, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o4311, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4316.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4316 = { [nil] = {}, GetCalculated = function()
  if not (o2.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4316.SetStateValue(o4316.GetCalculated())
end, StartCalculate = function()
  o4316["Value"] = o4316.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4316.Value == L0) then
    o4316["Value"] = L0
    CallFunction(o4311, "ProcesseStateChange")
  end
end }
S_o4362 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4362, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4362, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4362, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Bus1_Path1", 0.5, 1 } }("Code4")
  else
    CallFunction(o4362, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 10 } }("Code5")
  else
    CallFunction(o4362, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Sink", "/Scenario_Dynamic/Navigation/Bus_Pos_L", 0.5, 1 } }("Code6")
  else
    CallFunction(o4362, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 30 } }("Code7")
  else
    CallFunction(o4362, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Sink", "/Scenario_Dynamic/Navigation/Bus_Pos_H", 0.5, 1 } }("Code8")
  else
    CallFunction(o4362, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 10 } }("Code9")
  else
    CallFunction(o4362, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o4362, "Code3")
  else
    CallFunction(o4362, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4415 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4415, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4415, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4415, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigAreaA1", "/Scenario_Dynamic/Navigation/DigAreaA2", "/Scenario_Dynamic/Navigation/DigAreaA3", "/Scenario_Dynamic/Navigation/DigAreaA4" }, 35, "Code4")
  else
    CallFunction(o4415, "Code4")
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
S_o4454 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4454, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4454, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4454, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigAreaA1", "/Scenario_Dynamic/Navigation/DigAreaA2", "/Scenario_Dynamic/Navigation/DigAreaA3", "/Scenario_Dynamic/Navigation/DigAreaA4" }, 35, "Code4")
  else
    CallFunction(o4454, "Code4")
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
S_o4493 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4493, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4493, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4493, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigAreaB1", "/Scenario_Dynamic/Navigation/DigAreaB2", "/Scenario_Dynamic/Navigation/DigAreaB3", "/Scenario_Dynamic/Navigation/DigAreaB4" }, 33.666667, "Code4")
  else
    CallFunction(o4493, "Code4")
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
S_o4532 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4532, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4532, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4532, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigAreaB1", "/Scenario_Dynamic/Navigation/DigAreaB2", "/Scenario_Dynamic/Navigation/DigAreaB3", "/Scenario_Dynamic/Navigation/DigAreaB4" }, 33.66667, "Code4")
  else
    CallFunction(o4532, "Code4")
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
S_o4571 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4571, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4571, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4571, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigAreaB1", "/Scenario_Dynamic/Navigation/DigAreaB2", "/Scenario_Dynamic/Navigation/DigAreaB3", "/Scenario_Dynamic/Navigation/DigAreaB4" }, 33.66667, "Code4")
  else
    CallFunction(o4571, "Code4")
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
S_o4610 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4610, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4610, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4610, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 33.333333 } }("Code4")
  else
    CallFunction(o4610, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/PathDiggerC1", 1, 1 } }("Code5")
  else
    CallFunction(o4610, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigAreaC1", "/Scenario_Dynamic/Navigation/DigAreaC2" }, 25.48, "Code6")
  else
    CallFunction(o4610, "Code6")
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
S_o4651 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4651, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4651, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4651, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 44.444444 } }("Code4")
  else
    CallFunction(o4651, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/PathDiggerC1", 1, 1 } }("Code5")
  else
    CallFunction(o4651, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigAreaC1", "/Scenario_Dynamic/Navigation/DigAreaC2" }, 25.48, "Code6")
  else
    CallFunction(o4651, "Code6")
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
S_o4692 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4692, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4692, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4692, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 15.555556 } }("Code4")
  else
    CallFunction(o4692, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/PathDiggerC1", 1, 1 } }("Code5")
  else
    CallFunction(o4692, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigAreaC2", "/Scenario_Dynamic/Navigation/DigAreaC1" }, 25.48, "Code6")
  else
    CallFunction(o4692, "Code6")
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
S_o4733 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4733, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4733, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4733, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 15.55556 } }("Code4")
  else
    CallFunction(o4733, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/PathDiggerC1", 1, 1 } }("Code5")
  else
    CallFunction(o4733, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigAreaC2", "/Scenario_Dynamic/Navigation/DigAreaC1" }, 25.48, "Code6")
  else
    CallFunction(o4733, "Code6")
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
S_o4774 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4774, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4774, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4774, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BioB_Arena", "/Scenario_Dynamic/Navigation/BioB_Arena", "/Scenario_Dynamic/Navigation/BioB_Arena", "1H2_raupe", "", "", "", 1, "Code4")
  else
    CallFunction(o4774, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BioB_Arena", "/Scenario_Dynamic/Navigation/BioB_Arena", "/Scenario_Dynamic/Navigation/BioB_Arena", "pla", "", "", "", 1, "Code5")
  else
    CallFunction(o4774, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o4780.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o4792.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4777.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4775.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4775 = { [nil] = {}, GetCalculated = function()
  if not (o4249.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4775.SetStateValue(o4775.GetCalculated())
end, StartCalculate = function()
  o4775["Value"] = o4775.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4775.Value == L0) then
    o4775["Value"] = L0
    CallFunction(o4774, "ProcesseStateChange")
  end
end }
o4777 = { [nil] = {}, GetCalculated = function()
  if not (o2.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4777.SetStateValue(o4777.GetCalculated())
end, StartCalculate = function()
  o4777["Value"] = o4777.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4777.Value == L0) then
    DelayedFunction(2, o4777, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4777.Value == L0) then
    o4777["Value"] = L0
    CallFunction(o4774, "ProcesseStateChange")
  end
end }
o4780 = { [nil] = {}, Start = function()
  o4780["Value"] = False
  o4796.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4780.Value == L0) then
    o4780["Value"] = L0
    o4796.ReCalculate()
  end
end }
o4792 = { [nil] = {}, Start = function()
  o4792["Value"] = False
  o5294.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4792.Value == L0) then
    o4792["Value"] = L0
    o5294.ReCalculate()
  end
end }
o4796 = { [nil] = {}, GetCalculated = function()
  if not (o4780.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4796.SetStateValue(o4796.GetCalculated())
end, StartCalculate = function()
  o4796["Value"] = o4796.GetCalculated()
  o3.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4796.Value == L0) then
    o4796["Value"] = L0
    o3.ReCalculate()
  end
end }
S_o4823 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4823, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4823, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4823, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BioB_Arena", "/Scenario_Dynamic/Navigation/BioB_Arena", "/Scenario_Dynamic/Navigation/BioB_Arena", "1H2_raupe", "", "", "", 1, "Code4")
  else
    CallFunction(o4823, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BioB_Arena", "/Scenario_Dynamic/Navigation/BioB_Arena", "/Scenario_Dynamic/Navigation/BioB_Arena", "pla", "", "", "", 1, "Code5")
  else
    CallFunction(o4823, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o4829.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o4841.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4826.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4824.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4824 = { [nil] = {}, GetCalculated = function()
  if not (o4249.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4824.SetStateValue(o4824.GetCalculated())
end, StartCalculate = function()
  o4824["Value"] = o4824.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4824.Value == L0) then
    o4824["Value"] = L0
    CallFunction(o4823, "ProcesseStateChange")
  end
end }
o4826 = { [nil] = {}, GetCalculated = function()
  if not (o2.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4826.SetStateValue(o4826.GetCalculated())
end, StartCalculate = function()
  o4826["Value"] = o4826.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4826.Value == L0) then
    o4826["Value"] = L0
    CallFunction(o4823, "ProcesseStateChange")
  end
end }
o4829 = { [nil] = {}, Start = function()
  o4829["Value"] = False
  o4845.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4829.Value == L0) then
    o4829["Value"] = L0
    o4845.ReCalculate()
  end
end }
o4841 = { [nil] = {}, Start = function()
  o4841["Value"] = False
  o5294.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4841.Value == L0) then
    o4841["Value"] = L0
    o5294.ReCalculate()
  end
end }
o4845 = { [nil] = {}, GetCalculated = function()
  if not (o4829.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4845.SetStateValue(o4845.GetCalculated())
end, StartCalculate = function()
  o4845["Value"] = o4845.GetCalculated()
  o3.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4845.Value == L0) then
    o4845["Value"] = L0
    o3.ReCalculate()
  end
end }
S_o4872 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4872, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4872, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4872, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o4872, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4872, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BioC_Arena", "/Scenario_Dynamic/Navigation/BioC_Arena", "/Scenario_Dynamic/Navigation/BioC_Arena", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o4872, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmpJump = function(L0, L1)
  o4890.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4874.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4875.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4874 = { [nil] = {}, GetCalculated = function()
  if not (o3.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4874.SetStateValue(o4874.GetCalculated())
end, StartCalculate = function()
  o4874["Value"] = o4874.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4874.Value == L0) then
    o4874["Value"] = L0
    CallFunction(o4872, "ProcesseStateChange")
  end
end }
o4875 = { [nil] = {}, GetCalculated = function()
  if not (o4261.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4875.SetStateValue(o4875.GetCalculated())
end, StartCalculate = function()
  o4875["Value"] = o4875.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4875.Value == L0) then
    o4875["Value"] = L0
    CallFunction(o4872, "ProcesseStateChange")
  end
end }
o4890 = { [nil] = {}, Start = function()
  o4890["Value"] = False
  o4901.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4890.Value == L0) then
    o4890["Value"] = L0
    o4901.ReCalculate()
  end
end }
o4901 = { [nil] = {}, GetCalculated = function()
  if not (o4890.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4901.SetStateValue(o4901.GetCalculated())
end, StartCalculate = function()
  o4901["Value"] = o4901.GetCalculated()
  o10.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4901.Value == L0) then
    o4901["Value"] = L0
    o10.ReCalculate()
  end
end }
S_o4921 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4921, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4921, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4921, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o4921, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4921, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BioC_Arena", "/Scenario_Dynamic/Navigation/BioC_Arena", "/Scenario_Dynamic/Navigation/BioC_Arena", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o4921, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmpJump = function(L0, L1)
  o4939.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4923.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4924.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4923 = { [nil] = {}, GetCalculated = function()
  if not (o3.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4923.SetStateValue(o4923.GetCalculated())
end, StartCalculate = function()
  o4923["Value"] = o4923.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4923.Value == L0) then
    o4923["Value"] = L0
    CallFunction(o4921, "ProcesseStateChange")
  end
end }
o4924 = { [nil] = {}, GetCalculated = function()
  if not (o4261.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4924.SetStateValue(o4924.GetCalculated())
end, StartCalculate = function()
  o4924["Value"] = o4924.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4924.Value == L0) then
    o4924["Value"] = L0
    CallFunction(o4921, "ProcesseStateChange")
  end
end }
o4939 = { [nil] = {}, Start = function()
  o4939["Value"] = False
  o4950.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4939.Value == L0) then
    o4939["Value"] = L0
    o4950.ReCalculate()
  end
end }
o4950 = { [nil] = {}, GetCalculated = function()
  if not (o4939.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4950.SetStateValue(o4950.GetCalculated())
end, StartCalculate = function()
  o4950["Value"] = o4950.GetCalculated()
  o10.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4950.Value == L0) then
    o4950["Value"] = L0
    o10.ReCalculate()
  end
end }
S_o4970 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4970, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4970, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4970, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o4970, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4970, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Game_SetWayPoint(GetGameNode(), o5528.Node)
  CallFunction(o4970, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Digger_Path1", 1, 1 } }("Code7")
  else
    CallFunction(o4970, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5e-06 } }("Code8")
  else
    CallFunction(o4970, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code9")
  else
    CallFunction(o4970, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4970, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Digger_Path2", 1, 1 } }("Code11")
  else
    CallFunction(o4970, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5e-06 } }("Code12")
  else
    CallFunction(o4970, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code13")
  else
    CallFunction(o4970, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4970, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Digger_Path3", 1, 1 } }("Code15")
  else
    CallFunction(o4970, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5e-06 } }("Code16")
  else
    CallFunction(o4970, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code17")
  else
    CallFunction(o4970, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4970, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Digger_Path4", 1, 1 } }("Code19")
  else
    CallFunction(o4970, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5e-06 } }("Code20")
  else
    CallFunction(o4970, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code21")
  else
    CallFunction(o4970, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4970, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/DgrPathHome", 1, 1 } }("Code23")
  else
    CallFunction(o4970, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    Vehicle_ParkPatrol(L0.Node, "/Scenario_Dynamic/Navigation/DiggerPark", "Code24")
  else
    CallFunction(o4970, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
end, SetStateValue_Destroyed = function(L0, L1)
  o4989.SetStateValue(L1)
end, SetStateValue_KineticShield75 = function(L0, L1)
  o4990.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4982.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o4983.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 13) then
    if not (L0.CodeIndex >= 14) then
      if not (o4984.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 17) then
    if not (L0.CodeIndex >= 18) then
      if not (o4985.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 21) then
    if not (L0.CodeIndex >= 22) then
      if not (o4986.Value ~= True) then
        L1 = 0
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
  if not (o4219.Value ~= True) then
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
    CallFunction(o4970, "ProcesseStateChange")
  end
end }
o4983 = { [nil] = {}, GetCalculated = function()
  if not (o5330.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4983.SetStateValue(o4983.GetCalculated())
end, StartCalculate = function()
  o4983["Value"] = o4983.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4983.Value == L0) then
    o4983["Value"] = L0
    CallFunction(o4970, "ProcesseStateChange")
  end
end }
o4984 = { [nil] = {}, GetCalculated = function()
  if not (o5380.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4984.SetStateValue(o4984.GetCalculated())
end, StartCalculate = function()
  o4984["Value"] = o4984.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4984.Value == L0) then
    o4984["Value"] = L0
    CallFunction(o4970, "ProcesseStateChange")
  end
end }
o4985 = { [nil] = {}, GetCalculated = function()
  if not (o5430.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4985.SetStateValue(o4985.GetCalculated())
end, StartCalculate = function()
  o4985["Value"] = o4985.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4985.Value == L0) then
    o4985["Value"] = L0
    CallFunction(o4970, "ProcesseStateChange")
  end
end }
o4986 = { [nil] = {}, GetCalculated = function()
  if not (o5480.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4986.SetStateValue(o4986.GetCalculated())
end, StartCalculate = function()
  o4986["Value"] = o4986.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4986.Value == L0) then
    o4986["Value"] = L0
    CallFunction(o4970, "ProcesseStateChange")
  end
end }
o4989 = { [nil] = {}, Start = function()
  o4989["Value"] = False
  o5293.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4989.Value == L0) then
    o4989["Value"] = L0
    o5293.ReCalculate()
  end
end }
o4990 = { [nil] = {}, Start = function()
  o4990["Value"] = False
  o5292.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4990.Value == L0) then
    o4990["Value"] = L0
    o5292.ReCalculate()
  end
end }
S_o5023 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5023, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5023, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5023, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigAreaB1", "/Scenario_Dynamic/Navigation/DigAreaB1" }, 36, "Code4")
  else
    CallFunction(o5023, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o5028.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5028 = { [nil] = {}, Start = function()
  o5028["Value"] = False
  o5059.StartCalculate()
  o5293.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5028.Value == L0) then
    o5028["Value"] = L0
    o5059.ReCalculate()
    o5293.ReCalculate()
  end
end }
o5059 = { [nil] = {}, GetCalculated = function()
  if not (o5028.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5059.SetStateValue(o5059.GetCalculated())
end, StartCalculate = function()
  o5059["Value"] = o5059.GetCalculated()
  o27.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5059.Value == L0) then
    o5059["Value"] = L0
    o27.ReCalculate()
  end
end }
S_o5062 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5062, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5062, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5062, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigAreaB1", "/Scenario_Dynamic/Navigation/DigAreaB1" }, 36, "Code4")
  else
    CallFunction(o5062, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o5067.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5067 = { [nil] = {}, Start = function()
  o5067["Value"] = False
  o5098.StartCalculate()
  o5293.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5067.Value == L0) then
    o5067["Value"] = L0
    o5098.ReCalculate()
    o5293.ReCalculate()
  end
end }
o5098 = { [nil] = {}, GetCalculated = function()
  if not (o5067.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5098.SetStateValue(o5098.GetCalculated())
end, StartCalculate = function()
  o5098["Value"] = o5098.GetCalculated()
  o27.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5098.Value == L0) then
    o5098["Value"] = L0
    o27.ReCalculate()
  end
end }
S_o5101 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5101, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5101, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5101, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigAreaB1", "/Scenario_Dynamic/Navigation/DigAreaB1" }, 36, "Code4")
  else
    CallFunction(o5101, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o5106.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5106 = { [nil] = {}, Start = function()
  o5106["Value"] = False
  o5137.StartCalculate()
  o5293.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5106.Value == L0) then
    o5106["Value"] = L0
    o5137.ReCalculate()
    o5293.ReCalculate()
  end
end }
o5137 = { [nil] = {}, GetCalculated = function()
  if not (o5106.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5137.SetStateValue(o5137.GetCalculated())
end, StartCalculate = function()
  o5137["Value"] = o5137.GetCalculated()
  o27.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5137.Value == L0) then
    o5137["Value"] = L0
    o27.ReCalculate()
  end
end }
S_o5140 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5140, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5140, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5140, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigAreaB1", "/Scenario_Dynamic/Navigation/DigAreaB1" }, 36, "Code4")
  else
    CallFunction(o5140, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o5145.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5145 = { [nil] = {}, Start = function()
  o5145["Value"] = False
  o5176.StartCalculate()
  o5293.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5145.Value == L0) then
    o5145["Value"] = L0
    o5176.ReCalculate()
    o5293.ReCalculate()
  end
end }
o5176 = { [nil] = {}, GetCalculated = function()
  if not (o5145.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5176.SetStateValue(o5176.GetCalculated())
end, StartCalculate = function()
  o5176["Value"] = o5176.GetCalculated()
  o27.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5176.Value == L0) then
    o5176["Value"] = L0
    o27.ReCalculate()
  end
end }
S_o5179 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5179, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5179, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5179, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o5179, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o5179, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o5179, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5179, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/WngPatrolA", "/Scenario_Dynamic/Navigation/WingA_Arena", "/Scenario_Dynamic/Navigation/WingA_Arena", "E", "", "", "", 1, "Code8")
  else
    CallFunction(o5179, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/HarperPath_1", 1, 1 } }("Code9")
  else
    CallFunction(o5179, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/BioB_Arena", "E", "", "", "", 7, 0.5, "Code10")
  else
    CallFunction(o5179, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/WngHomePath", 0.75, 1 } }("Code11")
  else
    CallFunction(o5179, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_Destroyed = function(L0, L1)
  o5188.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o5182.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5182 = { [nil] = {}, GetCalculated = function()
  if not (o2.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5182.SetStateValue(o5182.GetCalculated())
end, StartCalculate = function()
  o5182["Value"] = o5182.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5182.Value == L0) then
    o5182["Value"] = L0
    CallFunction(o5179, "ProcesseStateChange")
  end
end }
o5188 = { [nil] = {}, Start = function()
  o5188["Value"] = False
  o5321.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5188.Value == L0) then
    o5188["Value"] = L0
    o5321.ReCalculate()
  end
end }
S_o5231 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5231, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5231, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5231, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o5231, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o5231, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o5231, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5231, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/WngPatrolA", "/Scenario_Dynamic/Navigation/WingA_Arena", "/Scenario_Dynamic/Navigation/WingA_Arena", "E", "", "", "", 1, "Code8")
  else
    CallFunction(o5231, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/HarperPath_1", 1, 1 } }("Code9")
  else
    CallFunction(o5231, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/BioB_Arena", "E", "", "", "", 7, 0.5, "Code10")
  else
    CallFunction(o5231, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/WngHomePath", 0.7, 1 } }("Code11")
  else
    CallFunction(o5231, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_Destroyed = function(L0, L1)
  o5240.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o5234.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5234 = { [nil] = {}, GetCalculated = function()
  if not (o2.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5234.SetStateValue(o5234.GetCalculated())
end, StartCalculate = function()
  o5234["Value"] = o5234.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5234.Value == L0) then
    o5234["Value"] = L0
    CallFunction(o5231, "ProcesseStateChange")
  end
end }
o5240 = { [nil] = {}, Start = function()
  o5240["Value"] = False
  o5321.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5240.Value == L0) then
    o5240["Value"] = L0
    o5321.ReCalculate()
  end
end }
S_o5283 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "GUN_VENDETTA1", 1)
  Body_AddItem(L0.Node, "GUN_VENDETTA2", 1)
  Body_AddItem(L0.Node, "AMMO_SHELL", 2000)
  Body_AddItem(L0.Node, "GUN_torpedolauncher", 1)
  Body_AddItem(L0.Node, "torpedo_threshershark", 6)
  CallFunction(o5283, "Code5")
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
o5288 = { [nil] = {}, GetCalculated = function()
  if not (o4219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5288.SetStateValue(o5288.GetCalculated())
end, StartCalculate = function()
  o5288["Value"] = o5288.GetCalculated()
end, ChangeTo1 = function()
  SED_SetTaskTextKey(1268, -1, -1)
end, SetStateValue = function(L0)
  if not (o5288.Value == L0) then
    o5288["Value"] = L0
    if not (L0 ~= 1) then
      o5288.ChangeTo1()
    end
  end
end }
o5289 = { [nil] = {}, GetCalculated = function()
  if not (o4225.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5289.SetStateValue(o5289.GetCalculated())
end, StartCalculate = function()
  o5289["Value"] = o5289.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5179.Node, o5283.Node, 11)
  SetEnemyMatrixElement(0, 7, E)
  SetEnemyMatrixElement(7, 0, E)
end, SetStateValue = function(L0)
  if not (o5289.Value == L0) then
    o5289["Value"] = L0
    if not (L0 ~= 1) then
      o5289.ChangeTo1()
    end
  end
end }
o5290 = { [nil] = {}, GetCalculated = function()
  if not (o4231.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5290.SetStateValue(o5290.GetCalculated())
end, StartCalculate = function()
  o5290["Value"] = o5290.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5179.Node, o5283.Node, 1223)
  SetEnemyMatrixElement(0, 7, U)
  SetEnemyMatrixElement(8, 0, E)
end, SetStateValue = function(L0)
  if not (o5290.Value == L0) then
    o5290["Value"] = L0
    if not (L0 ~= 1) then
      o5290.ChangeTo1()
    end
  end
end }
o5291 = { [nil] = {}, GetCalculated = function()
  if not (o4237.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5291.SetStateValue(o5291.GetCalculated())
end, StartCalculate = function()
  o5291["Value"] = o5291.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5179.Node, o5283.Node, 1224)
  SetEnemyMatrixElement(0, 9, E)
  SetEnemyMatrixElement(9, 0, E)
end, SetStateValue = function(L0)
  if not (o5291.Value == L0) then
    o5291["Value"] = L0
    if not (L0 ~= 1) then
      o5291.ChangeTo1()
    end
  end
end }
o5292 = { [nil] = {}, GetCalculated = function()
  if not (o4990.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5292.SetStateValue(o5292.GetCalculated())
end, StartCalculate = function()
  o5292["Value"] = o5292.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5283.Node, o5283.Node, 12)
end, SetStateValue = function(L0)
  if not (o5292.Value == L0) then
    o5292["Value"] = L0
    if not (L0 ~= 1) then
      o5292.ChangeTo1()
    end
  end
end }
o5293 = { [nil] = {}, GetCalculated = function()
  if not (o4989.Value == True) then
    if not (o5028.Value == True) then
      if not (o5067.Value == True) then
        if not (o5106.Value == True) then
          if not (o5145.Value ~= True) then
            return 1
          else
            return 0
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o5293.SetStateValue(o5293.GetCalculated())
end, StartCalculate = function()
  o5293["Value"] = o5293.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "track3")
  SendRadioMessageTake(o5283.Node, o5283.Node, 1172)
  Game_MissionEnd(GetGameNode(), 0)
end, SetStateValue = function(L0)
  if not (o5293.Value == L0) then
    o5293["Value"] = L0
    if not (L0 ~= 1) then
      o5293.ChangeTo1()
    end
  end
end }
o5294 = { [nil] = {}, GetCalculated = function()
  if not (o4792.Value ~= True) then
    if not (o4841.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5294.SetStateValue(o5294.GetCalculated())
end, StartCalculate = function()
  o5294["Value"] = o5294.GetCalculated()
  o5296.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5294.Value == L0) then
    o5294["Value"] = L0
    o5296.ReCalculate()
  end
end }
o5296 = { [nil] = {}, GetCalculated = function()
  if not (o5294.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5296.SetStateValue(o5296.GetCalculated())
end, StartCalculate = function()
  o5296["Value"] = o5296.GetCalculated()
  o3.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5296.Value == L0) then
    o5296["Value"] = L0
    o3.ReCalculate()
  end
end }
o5321 = { [nil] = {}, GetCalculated = function()
  if not (o5188.Value == True) then
    if not (o5240.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o5321.SetStateValue(o5321.GetCalculated())
end, StartCalculate = function()
  o5321["Value"] = o5321.GetCalculated()
  o28.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5321.Value == L0) then
    o5321["Value"] = L0
    o28.ReCalculate()
  end
end }
S_o5323 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5323, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5323, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5323, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o5323, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o5323, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5323, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Sink", "/Scenario_Dynamic/Navigation/SinkPos_S1", 1, 1 } }("Code7")
  else
    CallFunction(o5323, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BioA_Arena", "/Scenario_Dynamic/Navigation/BioA_Arena", "/Scenario_Dynamic/Navigation/BioA_Arena", "1H2_Digger_1", "E", "", "", 1, "Code8")
  else
    CallFunction(o5323, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Destroyed = function(L0, L1)
  o5330.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5326.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o5327.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5326 = { [nil] = {}, GetCalculated = function()
  if not (o4219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5326.SetStateValue(o5326.GetCalculated())
end, StartCalculate = function()
  o5326["Value"] = o5326.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5326.Value == L0) then
    o5326["Value"] = L0
    CallFunction(o5323, "ProcesseStateChange")
  end
end }
o5327 = { [nil] = {}, GetCalculated = function()
  if not (o4225.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5327.SetStateValue(o5327.GetCalculated())
end, StartCalculate = function()
  o5327["Value"] = o5327.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5327.Value == L0) then
    o5327["Value"] = L0
    CallFunction(o5323, "ProcesseStateChange")
  end
end }
o5330 = { [nil] = {}, Start = function()
  o5330["Value"] = False
  o4983.StartCalculate()
  o5345.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5330.Value == L0) then
    o5330["Value"] = L0
    o4983.ReCalculate()
    o5345.ReCalculate()
  end
end }
o5345 = { [nil] = {}, GetCalculated = function()
  if not (o5330.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5345.SetStateValue(o5345.GetCalculated())
end, StartCalculate = function()
  o5345["Value"] = o5345.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5345.Value == L0) then
    o5345["Value"] = L0
    o2.ReCalculate()
  end
end }
S_o5373 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5373, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5373, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5373, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o5373, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o5373, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5373, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Sink", "/Scenario_Dynamic/Navigation/SinkPos_S1", 1, 1 } }("Code7")
  else
    CallFunction(o5373, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BioA_Arena", "/Scenario_Dynamic/Navigation/BioA_Arena", "/Scenario_Dynamic/Navigation/BioA_Arena", "1H2_Digger_1", "E", "", "", 1, "Code8")
  else
    CallFunction(o5373, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Destroyed = function(L0, L1)
  o5380.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5376.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o5377.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5376 = { [nil] = {}, GetCalculated = function()
  if not (o4219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5376.SetStateValue(o5376.GetCalculated())
end, StartCalculate = function()
  o5376["Value"] = o5376.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5376.Value == L0) then
    o5376["Value"] = L0
    CallFunction(o5373, "ProcesseStateChange")
  end
end }
o5377 = { [nil] = {}, GetCalculated = function()
  if not (o4231.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5377.SetStateValue(o5377.GetCalculated())
end, StartCalculate = function()
  o5377["Value"] = o5377.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5377.Value == L0) then
    o5377["Value"] = L0
    CallFunction(o5373, "ProcesseStateChange")
  end
end }
o5380 = { [nil] = {}, Start = function()
  o5380["Value"] = False
  o4984.StartCalculate()
  o5395.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5380.Value == L0) then
    o5380["Value"] = L0
    o4984.ReCalculate()
    o5395.ReCalculate()
  end
end }
o5395 = { [nil] = {}, GetCalculated = function()
  if not (o5380.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5395.SetStateValue(o5395.GetCalculated())
end, StartCalculate = function()
  o5395["Value"] = o5395.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5395.Value == L0) then
    o5395["Value"] = L0
    o2.ReCalculate()
  end
end }
S_o5423 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5423, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5423, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5423, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o5423, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o5423, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5423, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Sink", "/Scenario_Dynamic/Navigation/SinkPos_S1", 1, 1 } }("Code7")
  else
    CallFunction(o5423, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BioA_Arena", "/Scenario_Dynamic/Navigation/BioA_Arena", "/Scenario_Dynamic/Navigation/BioA_Arena", "1H2_Digger_1", "E", "", "", 1, "Code8")
  else
    CallFunction(o5423, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Destroyed = function(L0, L1)
  o5430.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5426.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o5427.Value ~= True) then
        L1 = 0
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
  if not (o4219.Value ~= True) then
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
    CallFunction(o5423, "ProcesseStateChange")
  end
end }
o5427 = { [nil] = {}, GetCalculated = function()
  if not (o4237.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5427.SetStateValue(o5427.GetCalculated())
end, StartCalculate = function()
  o5427["Value"] = o5427.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5427.Value == L0) then
    o5427["Value"] = L0
    CallFunction(o5423, "ProcesseStateChange")
  end
end }
o5430 = { [nil] = {}, Start = function()
  o5430["Value"] = False
  o4985.StartCalculate()
  o5445.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5430.Value == L0) then
    o5430["Value"] = L0
    o4985.ReCalculate()
    o5445.ReCalculate()
  end
end }
o5445 = { [nil] = {}, GetCalculated = function()
  if not (o5430.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5445.SetStateValue(o5445.GetCalculated())
end, StartCalculate = function()
  o5445["Value"] = o5445.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5445.Value == L0) then
    o5445["Value"] = L0
    o2.ReCalculate()
  end
end }
S_o5473 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5473, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5473, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5473, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o5473, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o5473, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5473, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  SendRadioMessageTake(o5179.Node, o5283.Node, 1225)
  CallFunction(o5473, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Sink", "/Scenario_Dynamic/Navigation/SinkPos_S1", 1, 1 } }("Code8")
  else
    CallFunction(o5473, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BioA_Arena", "/Scenario_Dynamic/Navigation/BioA_Arena", "/Scenario_Dynamic/Navigation/BioA_Arena", "1H2_Digger_1", "E", "", "", 1, "Code9")
  else
    CallFunction(o5473, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_Destroyed = function(L0, L1)
  o5480.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5476.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o5477.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5476 = { [nil] = {}, GetCalculated = function()
  if not (o4219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5476.SetStateValue(o5476.GetCalculated())
end, StartCalculate = function()
  o5476["Value"] = o5476.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5476.Value == L0) then
    o5476["Value"] = L0
    CallFunction(o5473, "ProcesseStateChange")
  end
end }
o5477 = { [nil] = {}, GetCalculated = function()
  if not (o4243.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5477.SetStateValue(o5477.GetCalculated())
end, StartCalculate = function()
  o5477["Value"] = o5477.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5477.Value == L0) then
    DelayedFunction(4, o5477, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5477.Value == L0) then
    o5477["Value"] = L0
    CallFunction(o5473, "ProcesseStateChange")
  end
end }
o5480 = { [nil] = {}, Start = function()
  o5480["Value"] = False
  o4986.StartCalculate()
  o5495.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5480.Value == L0) then
    o5480["Value"] = L0
    o4986.ReCalculate()
    o5495.ReCalculate()
  end
end }
o5495 = { [nil] = {}, GetCalculated = function()
  if not (o5480.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5495.SetStateValue(o5495.GetCalculated())
end, StartCalculate = function()
  o5495["Value"] = o5495.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5495.Value == L0) then
    o5495["Value"] = L0
    o2.ReCalculate()
  end
end }
S_o5523 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o5523, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5528 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o4970.Node)
  CallFunction(o5528, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5533 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o5533, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5538 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), 0)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o5538, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5543 = { [nil] = {}, Start = function(L0)

end }
o5545 = FormationLib.CreateFormation("Line", "", "", "", 15, 30)
o5547 = FormationLib.CreateFormation("Triangle", "", "", "", 3, 30)
S_o5548 = { [nil] = {}, Start = function(L0)

end }
S_o5549 = { [nil] = {}, Start = function(L0)

end }
S_o5550 = { [nil] = {}, Start = function(L0)

end }
S_o5551 = { [nil] = {}, Start = function(L0)

end }
S_o5552 = { [nil] = {}, Start = function(L0)

end }
S_o5553 = { [nil] = {}, Start = function(L0)

end }
S_o5554 = { [nil] = {}, Start = function(L0)

end }
S_o5555 = { [nil] = {}, Start = function(L0)

end }
S_o5556 = { [nil] = {}, Start = function(L0)

end }
S_o5557 = { [nil] = {}, Start = function(L0)

end }
S_o5558 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "atmo")
  Director_BeginCutscene(L0.Node)
  FormationLib.PlaceFormationPath(o5544, o5545, "/IngameSequences/Navigation/C1_Intro_Path1")
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/C1_Intro_Pos1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MFMN", 0)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o5558, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.1, "Code9")
  else
    CallFunction(o5558, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/C1_Intro_Pos2", 15, "MMMN", 0)
  CallFunction(o5558, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o5544, o5545, "/IngameSequences/Navigation/C1_Intro_Path1", "pos_1", "pos_6", 0.7, 1, "Code11")
  else
    CallFunction(o5558, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/C1_Intro_Pos3", 10, "MMMN", 0)
  CallFunction(o5558, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o5544, o5545, "/IngameSequences/Navigation/C1_Intro_Path1", "pos_6", "pos_8", 0.5, 1, "Code13")
  else
    CallFunction(o5558, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Game_PlayMusic(GetGameNode(), "agressive")
  Director_EndCutscene(L0.Node)
  CallFunction(o5179, "Code7")
  CallFunction(o5231, "Code7")
  Game_SetWayPoint(GetGameNode(), o5523.Node)
  SendRadioMessageTake(o5231.Node, o5283.Node, 10)
  SendRadioMessageTake(o5179.Node, o5283.Node, 1171)
  CallFunction(o5558, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5561 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 8, "Code1")
  else
    CallFunction(o5561, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o5283.Node, o5283.Node, 9)
  CallFunction(o5561, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5564 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5564, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  FormationLib.PlaceFormationPath(o5546, o5547, "/IngameSequences/Navigation/C2_Intro_Path1")
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/C3_Intro_Pos1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/C3_Intro_Pos2", 0, "MFMN", 0)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o5564, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.1, "Code9")
  else
    CallFunction(o5564, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o5546, o5547, "/IngameSequences/Navigation/C2_Intro_Path1", "pos_1", "pos_4", 1, 1, "Code10")
  else
    CallFunction(o5564, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/C3_Intro_Pos3", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/C3_Intro_Pos4", 0, "MFMN", 0)
  CallFunction(o5564, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3, "Code15")
  else
    CallFunction(o5564, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/bio_scout_B2", 1, "MFMN", 0)
  FormationLib.PlaceFormationPath(o5546, o5547, "/IngameSequences/Navigation/C3_Intro_Path2")
  CallFunction(o5564, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code18")
  else
    CallFunction(o5564, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/C3_Intro_Pos5", 2, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 1, "MFMN", 0)
  CallFunction(o5564, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o5546, o5547, "/IngameSequences/Navigation/C3_Intro_Path2", "pos_1", "pos_2", 1, 1, "Code21")
  else
    CallFunction(o5564, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  Director_EndCutscene(L0.Node)
  Game_SetWayPoint(GetGameNode(), o5533.Node)
  SED_SetTaskTextKey(1269, -1, -1)
  CallFunction(o5564, "Code24")
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5565.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5565 = { [nil] = {}, GetCalculated = function()
  if not (o2.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5565.SetStateValue(o5565.GetCalculated())
end, StartCalculate = function()
  o5565["Value"] = o5565.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5565.Value == L0) then
    DelayedFunction(6, o5565, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5565.Value == L0) then
    o5565["Value"] = L0
    CallFunction(o5564, "ProcesseStateChange")
  end
end }
S_o5570 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5570, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 2, "MFMN", 0)
  CallFunction(o5570, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5571.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5571 = { [nil] = {}, GetCalculated = function()
  if not (o5595.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5571.SetStateValue(o5571.GetCalculated())
end, StartCalculate = function()
  o5571["Value"] = o5571.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5571.Value == L0) then
    o5571["Value"] = L0
    CallFunction(o5570, "ProcesseStateChange")
  end
end }
S_o5573 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5573, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code2")
  else
    CallFunction(o5573, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o5283.Node, o5283.Node, 13)
  CallFunction(o5573, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
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
  if not (o2.Value ~= True) then
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
    DelayedFunction(6, o5574, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5574.Value == L0) then
    o5574["Value"] = L0
    CallFunction(o5573, "ProcesseStateChange")
  end
end }
S_o5577 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5577, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  FormationLib.PlaceFormationPath(o5546, o5547, "/IngameSequences/Navigation/C4_Intro_Path1")
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/C4_Intro_Pos1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MFMN", 0)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o5577, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.25, "Code9")
  else
    CallFunction(o5577, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o5546, o5547, "/IngameSequences/Navigation/C4_Intro_Path1", "pos_1", "pos_3", 0.25, 1, "Code10")
  else
    CallFunction(o5577, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5578.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5578 = { [nil] = {}, GetCalculated = function()
  if not (o3.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5578.SetStateValue(o5578.GetCalculated())
end, StartCalculate = function()
  o5578["Value"] = o5578.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5578.Value == L0) then
    DelayedFunction(5, o5578, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5578.Value == L0) then
    o5578["Value"] = L0
    CallFunction(o5577, "ProcesseStateChange")
  end
end }
S_o5581 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5581, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/wng_harper", 2, "MFMN", 0)
  CallFunction(o5581, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code3")
  else
    CallFunction(o5581, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SendRadioMessageTake(o5231.Node, o5283.Node, 17)
  CallFunction(o5581, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code5")
  else
    CallFunction(o5581, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Director_EndCutscene(L0.Node)
  Game_SetWayPoint(GetGameNode(), o5538.Node)
  SED_SetTaskTextKey(1270, 10, 99999)
  CallFunction(o5581, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5582.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5582 = { [nil] = {}, GetCalculated = function()
  if not (o5601.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5582.SetStateValue(o5582.GetCalculated())
end, StartCalculate = function()
  o5582["Value"] = o5582.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5582.Value == L0) then
    o5582["Value"] = L0
    CallFunction(o5581, "ProcesseStateChange")
  end
end }
S_o5586 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5586, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.25, "Code2")
  else
    CallFunction(o5586, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o5283.Node, o5283.Node, 14)
  CallFunction(o5586, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5587.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5587 = { [nil] = {}, GetCalculated = function()
  if not (o3.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5587.SetStateValue(o5587.GetCalculated())
end, StartCalculate = function()
  o5587["Value"] = o5587.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5587.Value == L0) then
    DelayedFunction(5, o5587, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5587.Value == L0) then
    o5587["Value"] = L0
    CallFunction(o5586, "ProcesseStateChange")
  end
end }
S_o5590 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5590, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5590, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5590, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o5590, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5590, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5590, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5595.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5591.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5591 = { [nil] = {}, GetCalculated = function()
  if not (o2.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5591.SetStateValue(o5591.GetCalculated())
end, StartCalculate = function()
  o5591["Value"] = o5591.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5591.Value == L0) then
    o5591["Value"] = L0
    CallFunction(o5590, "ProcesseStateChange")
  end
end }
o5595 = { [nil] = {}, Start = function()
  o5595["Value"] = False
  o5571.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5595.Value == L0) then
    o5595["Value"] = L0
    o5571.ReCalculate()
  end
end }
S_o5596 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5596, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5596, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5596, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o5596, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5596, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5596, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5601.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5597.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5597 = { [nil] = {}, GetCalculated = function()
  if not (o3.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5597.SetStateValue(o5597.GetCalculated())
end, StartCalculate = function()
  o5597["Value"] = o5597.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5597.Value == L0) then
    o5597["Value"] = L0
    CallFunction(o5596, "ProcesseStateChange")
  end
end }
o5601 = { [nil] = {}, Start = function()
  o5601["Value"] = False
  o5582.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5601.Value == L0) then
    o5601["Value"] = L0
    o5582.ReCalculate()
  end
end }
S_o5602 = { [nil] = {}, Start = function(L0)

end }
S_o5639 = { [nil] = {}, Start = function(L0)

end }
S_o5676 = { [nil] = {}, Start = function(L0)

end }
S_o5713 = { [nil] = {}, Start = function(L0)

end }
S_o5750 = { [nil] = {}, Start = function(L0)

end }
S_o5787 = { [nil] = {}, Start = function(L0)

end }
S_o5824 = { [nil] = {}, Start = function(L0)

end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 353)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_1/Turm1", S_o30)
  o68 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_2/Turm1", S_o68)
  o106 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_3/Turm1", S_o106)
  o144 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_4/Turm1", S_o144)
  o182 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_5/Turm1", S_o182)
  o220 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_6/Turm1", S_o220)
  o258 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_7/Turm1", S_o258)
  o296 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm2_4", S_o296)
  o330 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm2_3", S_o330)
  o364 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus3_2", S_o364)
  o398 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus2_2", S_o398)
  o432 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus1_1", S_o432)
  o466 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus1_2", S_o466)
  o500 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_1", S_o500)
  o534 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_2", S_o534)
  o568 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_3", S_o568)
  o602 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_3", S_o602)
  o636 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_6", S_o636)
  o670 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_funda4b_1", S_o670)
  o704 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_funda4b_2", S_o704)
  o738 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_funda4b_4", S_o738)
  o772 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott1_1", S_o772)
  o806 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott2_1", S_o806)
  o840 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott2_5", S_o840)
  o874 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott2_6", S_o874)
  o908 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrot2_2", S_o908)
  o942 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott2_3", S_o942)
  o976 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott2_4", S_o976)
  o1010 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott3_1", S_o1010)
  o1044 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott3_3", S_o1044)
  o1078 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott3_4", S_o1078)
  o1112 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott3_5", S_o1112)
  o1146 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott3_6", S_o1146)
  o1180 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott3_7", S_o1180)
  o1214 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott3_2", S_o1214)
  o1248 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott4_1", S_o1248)
  o1282 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott4_2", S_o1282)
  o1316 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott4_3", S_o1316)
  o1350 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott4_4", S_o1350)
  o1384 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott3_9", S_o1384)
  o1418 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott2_0", S_o1418)
  o1452 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott4_6", S_o1452)
  o1486 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott4_9", S_o1486)
  o1520 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott4_7", S_o1520)
  o1554 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott4_8", S_o1554)
  o1588 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott4_0", S_o1588)
  o1622 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker_1", S_o1622)
  o1656 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_1", S_o1656)
  o1690 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_1", S_o1690)
  o1724 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_1", S_o1724)
  o1758 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_1", S_o1758)
  o1792 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_10", S_o1792)
  o1826 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_11", S_o1826)
  o1860 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_12", S_o1860)
  o1894 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_2", S_o1894)
  o1928 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_2", S_o1928)
  o1962 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_3", S_o1962)
  o1996 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_2", S_o1996)
  o2030 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_3", S_o2030)
  o2064 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_1", S_o2064)
  o2098 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schorn2_1", S_o2098)
  o2132 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf-kn_1", S_o2132)
  o2166 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf-kn_2", S_o2166)
  o2200 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf-kn_3", S_o2200)
  o2234 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf-kn_4", S_o2234)
  o2268 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf-kn_5", S_o2268)
  o2302 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k2_1", S_o2302)
  o2336 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus3_1", S_o2336)
  o2370 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus2_1", S_o2370)
  o2404 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_4", S_o2404)
  o2438 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_9", S_o2438)
  o2472 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_5", S_o2472)
  o2506 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_6", S_o2506)
  o2540 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_7", S_o2540)
  o2574 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_8", S_o2574)
  o2608 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schorn2_2", S_o2608)
  o2642 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk1_1", S_o2642)
  o2676 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_1", S_o2676)
  o2710 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_2", S_o2710)
  o2744 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraft22_1", S_o2744)
  o2778 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern_1", S_o2778)
  o2812 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_1", S_o2812)
  o2846 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_2", S_o2846)
  o2880 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_3", S_o2880)
  o2914 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_g_1", S_o2914)
  o2948 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_5_1", S_o2948)
  o2982 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dock_1", S_o2982)
  o3016 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r3_1", S_o3016)
  o3050 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r2_1", S_o3050)
  o3084 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r2_2", S_o3084)
  o3118 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r2_3", S_o3118)
  o3152 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r2_4", S_o3152)
  o3186 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb4a_2_1", S_o3186)
  o3220 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gang2_2", S_o3220)
  o3254 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gang3_1", S_o3254)
  o3288 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_1", S_o3288)
  o3322 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_2", S_o3322)
  o3356 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_3", S_o3356)
  o3390 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_2", S_o3390)
  o3424 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_3", S_o3424)
  o3458 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_4", S_o3458)
  o3492 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_5", S_o3492)
  o3526 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_6", S_o3526)
  o3560 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_7", S_o3560)
  o3594 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_8", S_o3594)
  o3628 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_9", S_o3628)
  o3662 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb3_10", S_o3662)
  o3696 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_1", S_o3696)
  o3730 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_2", S_o3730)
  o3764 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_3", S_o3764)
  o3798 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_4", S_o3798)
  o3832 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_5", S_o3832)
  o3866 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_6", S_o3866)
  o3900 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb2_7", S_o3900)
  o3934 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_1", S_o3934)
  o3968 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_4", S_o3968)
  o4002 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_5", S_o4002)
  o4036 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrb1_6", S_o4036)
  o4070 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabolic_1", S_o4070)
  o4104 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock1_1", S_o4104)
  o4138 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_4", S_o4138)
  o4172 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_1", S_o4172)
  o4207 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Bus_Pos_L", S_o4207)
  o4208 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Bus_Pos_H", S_o4208)
  o4209 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "TranPos_H", S_o4209)
  o4210 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "SinkPos_S1", S_o4210)
  o4211 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "SinkPos_S2", S_o4211)
  o4212 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "SinkPos_S3", S_o4212)
  o4213 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "SinkPos_S4", S_o4213)
  o4214 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Nav1_Trg", S_o4214)
  o4219.Start()
  o4220 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Bio1A_Trg", S_o4220)
  o4225.Start()
  o4226 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Bio2A_Trg", S_o4226)
  o4231.Start()
  o4232 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Bio3A_Trg", S_o4232)
  o4237.Start()
  o4238 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Bio4A_Trg", S_o4238)
  o4243.Start()
  o4244 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "BioB_Trg", S_o4244)
  o4249.Start()
  o4250 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "BonusActivater", S_o4250)
  o4255.Start()
  o4256 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "BioC_Trg", S_o4256)
  o4261.Start()
  o4262 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_toiler_1", S_o4262)
  o4311 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "Transport", S_o4311)
  o4362 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_bus_1", S_o4362)
  o4415 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_diggerA1", S_o4415)
  o4454 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_diggerA2", S_o4454)
  o4493 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_diggerB1", S_o4493)
  o4532 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_diggerB2", S_o4532)
  o4571 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_diggerB3", S_o4571)
  o4610 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_diggerC1", S_o4610)
  o4651 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_diggerC2", S_o4651)
  o4692 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_diggerC3", S_o4692)
  o4733 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_diggerC4", S_o4733)
  o4774 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_B1", S_o4774)
  o4780.Start()
  o4792.Start()
  o4823 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_B2", S_o4823)
  o4829.Start()
  o4841.Start()
  o4872 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_C1", S_o4872)
  o4890.Start()
  o4921 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_C2", S_o4921)
  o4939.Start()
  o4970 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "1H2_Digger_1", S_o4970)
  o4989.Start()
  o4990.Start()
  o5023 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "1H2_raupe_1", S_o5023)
  o5028.Start()
  o5062 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "1H2_raupe_2", S_o5062)
  o5067.Start()
  o5101 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "1H2_raupe_3", S_o5101)
  o5106.Start()
  o5140 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "1H2_raupe_4", S_o5140)
  o5145.Start()
  o5179 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_bonham", S_o5179)
  o5188.Start()
  o5231 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_harper", S_o5231)
  o5240.Start()
  o5283 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o5283)
  o5323 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_d2_A1", S_o5323)
  o5330.Start()
  o5373 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_d1_A2", S_o5373)
  o5380.Start()
  o5423 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_d2_A3", S_o5423)
  o5430.Start()
  o5473 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_d2_A4", S_o5473)
  o5480.Start()
  o5523 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_01", S_o5523)
  o5528 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_mark", S_o5528)
  o5533 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_02", S_o5533)
  o5538 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_03", S_o5538)
  o5543 = BindEasy(Node_Find("/"), "Camera", S_o5543)
  o5548 = BindEasy(Node_Find("/IngameSequences/Navigation"), "C1_Intro_Pos1", S_o5548)
  o5549 = BindEasy(Node_Find("/IngameSequences/Navigation"), "C1_Intro_Pos2", S_o5549)
  o5550 = BindEasy(Node_Find("/IngameSequences/Navigation"), "C1_Intro_Pos3", S_o5550)
  o5551 = BindEasy(Node_Find("/IngameSequences/Navigation"), "C1_Intro_Pos4", S_o5551)
  o5552 = BindEasy(Node_Find("/IngameSequences/Navigation"), "C3_Intro_Pos1", S_o5552)
  o5553 = BindEasy(Node_Find("/IngameSequences/Navigation"), "C3_Intro_Pos2", S_o5553)
  o5554 = BindEasy(Node_Find("/IngameSequences/Navigation"), "C3_Intro_Pos3", S_o5554)
  o5555 = BindEasy(Node_Find("/IngameSequences/Navigation"), "C3_Intro_Pos4", S_o5555)
  o5556 = BindEasy(Node_Find("/IngameSequences/Navigation"), "C3_Intro_Pos5", S_o5556)
  o5557 = BindEasy(Node_Find("/IngameSequences/Navigation"), "C4_Intro_Pos1", S_o5557)
  o5590 = BindEasy(Node_Find("/IngameSequences/Trigger"), "TriggerPresenceBox_1", S_o5590)
  o5595.Start()
  o5596 = BindEasy(Node_Find("/IngameSequences/Trigger"), "TriggerPresenceBox_2", S_o5596)
  o5601.Start()
  o5602 = BindEasy(Node_Find("/IngameSequences/Object"), "gen_raupe_1", S_o5602)
  o5639 = BindEasy(Node_Find("/IngameSequences/Object"), "gen_raupe_2", S_o5639)
  o5676 = BindEasy(Node_Find("/IngameSequences/Object"), "gen_raupe_3", S_o5676)
  o5713 = BindEasy(Node_Find("/IngameSequences/Object"), "gen_raupe_4", S_o5713)
  o5750 = BindEasy(Node_Find("/IngameSequences/Object"), "gen_raupe_5", S_o5750)
  o5787 = BindEasy(Node_Find("/IngameSequences/Object"), "gen_raupe_6", S_o5787)
  o5824 = BindEasy(Node_Find("/IngameSequences/Object"), "gen_raupe_7", S_o5824)
  o5558 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_V", S_o5558)
  o5561 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_A", S_o5561)
  o5564 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter3_Intro_V", S_o5564)
  o5570 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter3_IntroAddOn_V", S_o5570)
  o5573 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter3_Intro_A", S_o5573)
  o5577 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter4_Intro_V", S_o5577)
  o5581 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter4_IntroAddOn_V", S_o5581)
  o5586 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter4_Intro_A", S_o5586)
  o5544 = { {}, o5283, o5179, o5231 }()
  o5546 = { {}, o5283 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end