-- dekompiliert aus sta_magellan.sco
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
  node26 = Node_CreateNode("nod_generic", "gen_bunker_1")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(3071.392, 2145.742, 501.186971), MAT_Vector3(-25, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "gen_kai2_1")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(3031.257, 2251.466, 485.589879), MAT_Vector3(65, 0, 0))
  Node_ParseIniFile(node27, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "gen_stab1_1")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(2592.938, 2734.184, 303.6742), MAT_Vector3(-0.0111, 0.652476, 0.978921))
  Node_ParseIniFile(node28, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "gen_stab2_1")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(3098.888, 2162.726, 542.656924), MAT_Vector3(-24.94285, 0, 0))
  Node_ParseIniFile(node29, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "gen_stab3_1")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(2370.061, 2679.345, 408.5963), MAT_Vector3(0, 0.978857, 0.652571))
  Node_ParseIniFile(node30, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "gen_stab3_10")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(2168.136, 2255.186, 427.0412), MAT_Vector3(28.35852, 0, 0))
  Node_ParseIniFile(node31, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "gen_stab3_11")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(2221.586, 2142.733, 427.0412), MAT_Vector3(28.35852, 0, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_stab3_12")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(2286.895, 2173.605, 452.5014), MAT_Vector3(28.35852, 0, 0))
  Node_ParseIniFile(node33, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "gen_stab1_2")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(2872.288, 2468.36, 325.435), MAT_Vector3(0, -2.9366, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "gen_stab2_2")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(1721.348, 1654.031, 287.2701), MAT_Vector3(-0.0446, -1.9585, 1.955683))
  Node_ParseIniFile(node35, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_stab2_3")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(1851.438, 2506.056, 244.9558), MAT_Vector3(-0.167, 0.659701, -4.8895))
  Node_ParseIniFile(node36, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "gen_stab3_2")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(1970.014, 1812.554, 308.2351), MAT_Vector3(0.055802, 3.262382, -0.9804))
  Node_ParseIniFile(node37, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "gen_stab3_3")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(2121.701, 1885.823, 426.0012), MAT_Vector3(0, -0.9789, -1.3051))
  Node_ParseIniFile(node38, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_parabo_1")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(3065.585, 2124.723, 549.004533), MAT_Vector3(-5.5469, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_schorn2_1")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(3013.124, 2199.413, 483.468955), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_chimney2.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_tnk_k2_1")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(2964.468, 2088.15, 472.761733), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_tank_sml2.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_mhaus3_1")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(1182.511, 1410.197, 198.2623), MAT_Vector3(-54.3908, 0, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_mhaus2_1")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(1086.975, 1517.855, 189.1854), MAT_Vector3(0, 0, -4.1696))
  Node_ParseIniFile(node43, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_stab3_4")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(869.9848, 1381.374, 177.7295), MAT_Vector3(-2.123, -0.7332, -4.8355))
  Node_ParseIniFile(node44, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_stab3_9")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(873.1691, 1444.832, 177.7295), MAT_Vector3(-2.7727, -3.4377, 0.394495))
  Node_ParseIniFile(node45, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_stab3_5")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(1117.279, 1165.62, 126.807), MAT_Vector3(-6.5409, 22.37913, 4.384966))
  Node_ParseIniFile(node46, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "gen_stab3_6")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(1141.082, 1211.52, 129.6428), MAT_Vector3(-6.68, -0.5369, 3.486265))
  Node_ParseIniFile(node47, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "gen_stab3_7")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(723.7516, 1183.753, 56.41888), MAT_Vector3(2.499303, 11.80782, -1.6596))
  Node_ParseIniFile(node48, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "gen_stab3_8")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(718.4039, 1244.459, 50.14186), MAT_Vector3(0.139101, -2.4535, -16.2087))
  Node_ParseIniFile(node49, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "gen_schorn2_2")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(1199.804, 1316.775, 184.5957), MAT_Vector3(0.987836, 8.644694, 4.631511))
  Node_ParseIniFile(node50, "osd/gen/gen_chimney2.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_werk1_1")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(1029.365, 1571.187, 187.3101), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_industry1.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "atl_digmod_1")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(3415.033, 3745.907, 173.3984), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node52, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "atl_digmod_2")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(1412.347, 2769.428, 115.4289), MAT_Vector3(-135.668, 0, 0))
  Node_ParseIniFile(node53, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "gen_kraft22_1")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(2639.727, 2024.581, 421.981941), MAT_Vector3(-150.1928, 0, 0))
  Node_ParseIniFile(node54, "osd/gen/gen_pplant22.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "gen_stern_1")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(2470.576, 2006.001, 429.082047), MAT_Vector3(83.7229, 0, 0))
  Node_ParseIniFile(node55, "osd/gen/gen_starfound.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "gen_turm_1")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(2339.201, 2120.01, 328.2104), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node56, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "gen_turm_2")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(2313.225, 2074.557, 347.9268), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node57, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "gen_turm_3")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(2371.864, 2083.031, 348.3934), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node58, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "gen_tnk_g_1")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(2527.401, 2000.62, 416.759493), MAT_Vector3(83.97706, 0, 0))
  Node_ParseIniFile(node59, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "atl_wb3a_5_1")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(2194.86, 2198.266, 280.071096), MAT_Vector3(114.85, 0, 0))
  Node_ParseIniFile(node60, "osd/atl/atl_wblock3a_05.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "gen_dock_1")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(2473.342, 2246.936, 321.2958), MAT_Vector3(-171.8873, 0, 0))
  Node_ParseIniFile(node61, "osd/gen/gen_dock.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "atl_wb3a_r3_1")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(2250.728, 2155.773, 247.2428), MAT_Vector3(25.46479, 0, 0))
  Node_ParseIniFile(node62, "osd/atl/atl_wblock3a_raw_03.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "atl_wb3a_r2_1")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(2286.948, 2172.935, 302.027248), MAT_Vector3(24.88605, 0, 0))
  Node_ParseIniFile(node63, "osd/atl/atl_wblock3a_raw_02.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "atl_wb3a_r2_2")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(2793.471, 2227.375, 336.715448), MAT_Vector3(0.868122, 0, 0))
  Node_ParseIniFile(node64, "osd/atl/atl_wblock3a_raw_02.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "atl_wb3a_r2_3")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(2719.015, 2229.076, 342.384626), MAT_Vector3(1.157495, 0, 0))
  Node_ParseIniFile(node65, "osd/atl/atl_wblock3a_raw_02.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "atl_wb3a_r2_4")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(2643.82, 2227.249, 344.814274), MAT_Vector3(1.986582, 0, 0))
  Node_ParseIniFile(node66, "osd/atl/atl_wblock3a_raw_02.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "atl_wb4a_2_1")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(2677.662, 2229.455, 410.3819), MAT_Vector3(0.971691, 0, 0))
  Node_ParseIniFile(node67, "osd/atl/atl_wblock3a_raw_04.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "gen_gang2_2")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(2339.36, 2189.482, 364.9463), MAT_Vector3(-82.0185, 0, 0))
  Node_ParseIniFile(node68, "osd/gen/gen_gangway02.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "gen_gang3_1")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(2685.609, 2228.826, 412.0071), MAT_Vector3(-89.04866, 0, 0))
  Node_ParseIniFile(node69, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node7, node70)
  Node_ParseIniFile(node70, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node70, "map/1H2/Terrain/coral_01.tga")
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_fx_plant", "fungus_01_1")
  Node_AddSon(node7, node71)
  Node_ParseIniFile(node71, "osd/fx_plant/fungus_01.osd")
  FX_Plant_SetMap(node71, "map/1H2/Terrain/fungus_01.tga")
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node7, node72)
  Node_ParseIniFile(node72, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node72, "map/1H2/Terrain/grass_01.tga")
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node7, node73)
  Node_ParseIniFile(node73, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node73, "map/1H2/Terrain/stone_01.tga")
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "gen_parabolic_1")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(1134.929047, 1470.134441, 255.641031), MAT_Vector3(-48.276056, 0, 0))
  Node_ParseIniFile(node74, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "gen_metalblock1_1")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(1066.175272, 1445.658128, 147.547028), MAT_Vector3(90.21168, 0, 0))
  Node_ParseIniFile(node75, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "gen_trafo_4")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(1193.186833, 1404.216959, 188.525533), MAT_Vector3(-57.944626, 2.249446, -2.577102))
  Node_ParseIniFile(node76, "osd/gen/gen_trafo.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "gen_pole2_1")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(1131.803487, 1427.367969, 211.854318), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node77, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node7, node78)
  Node_ParseIniFile(node78, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_fx_sky", "fx_sky_02_1")
  Node_AddSon(node7, node79)
  Node_ParseIniFile(node79, "osd/fx_sky/fx_sky_02.osd")
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_fx_plankton", "fx_plankton_green_1")
  Node_AddSon(node7, node80)
  Node_ParseIniFile(node80, "osd/fx_plankton/fx_plankton_green.osd")
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node81)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node81, node82)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node81, node83)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("NOD_Path", "dock_path")
  Node_AddSon(node83, node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node84, node85)
  Position_SetPosition(node85, MAT_Vector3(2534.8, 2411.601, 362.8924))
  Position_SetRadius(node85, 5)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node84, node86)
  Position_SetPosition(node86, MAT_Vector3(2556.592, 2293.18, 366.0405))
  Position_SetRadius(node86, 5)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_Path", "dock_appr")
  Node_AddSon(node83, node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node87, node88)
  Position_SetPosition(node88, MAT_Vector3(2521.672, 2498.98, 376.5145))
  Position_SetRadius(node88, 10)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node87, node89)
  Position_SetPosition(node89, MAT_Vector3(2529.943, 2448.572, 359.6045))
  Position_SetRadius(node89, 10)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_PatrolArea", "dock_area")
  Node_AddSon(node83, node90)
  PatrolArea_SetPosition(node90, MAT_Vector3(2421.447, 2443.791, 436.9111))
  PatrolArea_SetRadius(node90, 100)
  PatrolArea_SetMinZ(node90, -50)
  PatrolArea_SetMaxZ(node90, 120)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Path", "Toiler_Path")
  Node_AddSon(node83, node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node91, node92)
  Position_SetPosition(node92, MAT_Vector3(2525.802, 2429.203, 412.6909))
  Position_SetRadius(node92, 10)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node91, node93)
  Position_SetPosition(node93, MAT_Vector3(2829.094, 2414.85, 423.7432))
  Position_SetRadius(node93, 10)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node91, node94)
  Position_SetPosition(node94, MAT_Vector3(2898.918881, 2300.273072, 569.8469))
  Position_SetRadius(node94, 10)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node91, node95)
  Position_SetPosition(node95, MAT_Vector3(2892.47942, 2230.375467, 543.7144))
  Position_SetRadius(node95, 10)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node91, node96)
  Position_SetPosition(node96, MAT_Vector3(2707.403903, 2223.894314, 510.3205))
  Position_SetRadius(node96, 10)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node91, node97)
  Position_SetPosition(node97, MAT_Vector3(2641.886182, 2409.677608, 530))
  Position_SetRadius(node97, 10)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node91, node98)
  Position_SetPosition(node98, MAT_Vector3(2498.557339, 2487.076805, 550))
  Position_SetRadius(node98, 10)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node91, node99)
  Position_SetPosition(node99, MAT_Vector3(2377.523471, 2384.605229, 389.1843))
  Position_SetRadius(node99, 10)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node91, node100)
  Position_SetPosition(node100, MAT_Vector3(2305.62252, 2235.177478, 500))
  Position_SetRadius(node100, 10)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node91, node101)
  Position_SetPosition(node101, MAT_Vector3(2241.438437, 2115.434875, 527.5506))
  Position_SetRadius(node101, 10)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node91, node102)
  Position_SetPosition(node102, MAT_Vector3(2453.553228, 2403.200502, 426.2534))
  Position_SetRadius(node102, 10)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("NOD_Path", "Bus1_Path1")
  Node_AddSon(node83, node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node103, node104)
  Position_SetPosition(node104, MAT_Vector3(2560.223, 2193.629, 558.1373))
  Position_SetRadius(node104, 10)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node103, node105)
  Position_SetPosition(node105, MAT_Vector3(2980.523, 2126.687, 616.8998))
  Position_SetRadius(node105, 10)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node103, node106)
  Position_SetPosition(node106, MAT_Vector3(2791.427498, 2283.441355, 552.7879))
  Position_SetRadius(node106, 10)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node103, node107)
  Position_SetPosition(node107, MAT_Vector3(2395.450594, 2493.823083, 495.8395))
  Position_SetRadius(node107, 10)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node103, node108)
  Position_SetPosition(node108, MAT_Vector3(2262.774885, 2386.519928, 336.855974))
  Position_SetRadius(node108, 10)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node103, node109)
  Position_SetPosition(node109, MAT_Vector3(2676.349745, 2443.401584, 380))
  Position_SetRadius(node109, 10)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node103, node110)
  Position_SetPosition(node110, MAT_Vector3(3027.770437, 2741.434328, 333.9734))
  Position_SetRadius(node110, 10)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node103, node111)
  Position_SetPosition(node111, MAT_Vector3(3190.711058, 2974.195277, 268.3062))
  Position_SetRadius(node111, 10)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node103, node112)
  Position_SetPosition(node112, MAT_Vector3(2647.273, 2755.25, 539.2883))
  Position_SetRadius(node112, 10)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node103, node113)
  Position_SetPosition(node113, MAT_Vector3(2522.946, 2537.919, 539.9441))
  Position_SetRadius(node113, 10)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node103, node114)
  Position_SetPosition(node114, MAT_Vector3(2532.665, 2291.629, 552.57))
  Position_SetRadius(node114, 10)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Position", "Bus_Pos_L")
  Node_AddSon(node83, node115)
  Position_SetPosition(node115, MAT_Vector3(2536.903, 2281.05, 482.906704))
  Position_SetRadius(node115, 10)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Position", "Bus_Pos_H")
  Node_AddSon(node83, node116)
  Position_SetPosition(node116, MAT_Vector3(2536.903, 2281.05, 565.3449))
  Position_SetRadius(node116, 10)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Position", "TranPos_H")
  Node_AddSon(node83, node117)
  Position_SetPosition(node117, MAT_Vector3(905.40246, 1554.739358, 400))
  Position_SetRadius(node117, 10)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Path", "TranPath_1")
  Node_AddSon(node83, node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node118, node119)
  Position_SetPosition(node119, MAT_Vector3(902.863469, 1729.083413, 400))
  Position_SetRadius(node119, 10)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node118, node120)
  Position_SetPosition(node120, MAT_Vector3(902.194271, 1941.15793, 400))
  Position_SetRadius(node120, 10)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_PatrolArea", "DigAreaA1")
  Node_AddSon(node83, node121)
  PatrolArea_SetPosition(node121, MAT_Vector3(3497.993, 3748.732, 166.2906))
  PatrolArea_SetRadius(node121, 240)
  PatrolArea_SetMinZ(node121, 0)
  PatrolArea_SetMaxZ(node121, 100)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("NOD_PatrolArea", "DigAreaA2")
  Node_AddSon(node83, node122)
  PatrolArea_SetPosition(node122, MAT_Vector3(3207.024, 3590.605, 171.8522))
  PatrolArea_SetRadius(node122, 120)
  PatrolArea_SetMinZ(node122, 0)
  PatrolArea_SetMaxZ(node122, 100)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("NOD_PatrolArea", "DigAreaA3")
  Node_AddSon(node83, node123)
  PatrolArea_SetPosition(node123, MAT_Vector3(3247.259, 3916.706, 155.8921))
  PatrolArea_SetRadius(node123, 110)
  PatrolArea_SetMinZ(node123, 0)
  PatrolArea_SetMaxZ(node123, 100)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_PatrolArea", "DigAreaA4")
  Node_AddSon(node83, node124)
  PatrolArea_SetPosition(node124, MAT_Vector3(3052.886, 3783.937, 161.3793))
  PatrolArea_SetRadius(node124, 120)
  PatrolArea_SetMinZ(node124, 0)
  PatrolArea_SetMaxZ(node124, 100)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_PatrolArea", "DigAreaB1")
  Node_AddSon(node83, node125)
  PatrolArea_SetPosition(node125, MAT_Vector3(1155.184, 2394.928, 113.8338))
  PatrolArea_SetRadius(node125, 180)
  PatrolArea_SetMinZ(node125, 0)
  PatrolArea_SetMaxZ(node125, 100)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_PatrolArea", "DigAreaB2")
  Node_AddSon(node83, node126)
  PatrolArea_SetPosition(node126, MAT_Vector3(1312.374, 2903.837, 113.6227))
  PatrolArea_SetRadius(node126, 150)
  PatrolArea_SetMinZ(node126, 0)
  PatrolArea_SetMaxZ(node126, 100)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_PatrolArea", "DigAreaB3")
  Node_AddSon(node83, node127)
  PatrolArea_SetPosition(node127, MAT_Vector3(1296.964, 2722.943, 114.7499))
  PatrolArea_SetRadius(node127, 180)
  PatrolArea_SetMinZ(node127, 0)
  PatrolArea_SetMaxZ(node127, 100)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("NOD_PatrolArea", "DigAreaB4")
  Node_AddSon(node83, node128)
  PatrolArea_SetPosition(node128, MAT_Vector3(1020.919, 2643.918, 126.1371))
  PatrolArea_SetRadius(node128, 100)
  PatrolArea_SetMinZ(node128, 0)
  PatrolArea_SetMaxZ(node128, 100)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("NOD_PatrolArea", "DigAreaC1")
  Node_AddSon(node83, node129)
  PatrolArea_SetPosition(node129, MAT_Vector3(1206.819, 1985.145, 104.0266))
  PatrolArea_SetRadius(node129, 150)
  PatrolArea_SetMinZ(node129, 0)
  PatrolArea_SetMaxZ(node129, 100)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("NOD_PatrolArea", "DigAreaC2")
  Node_AddSon(node83, node130)
  PatrolArea_SetPosition(node130, MAT_Vector3(752.818, 2181.397, 105.2007))
  PatrolArea_SetRadius(node130, 125)
  PatrolArea_SetMinZ(node130, 0)
  PatrolArea_SetMaxZ(node130, 100)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("NOD_Path", "PathDiggerC1")
  Node_AddSon(node83, node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node131, node132)
  Position_SetPosition(node132, MAT_Vector3(900.674, 1483.202, 264.3448))
  Position_SetRadius(node132, 5)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node131, node133)
  Position_SetPosition(node133, MAT_Vector3(833.747, 1507.278, 235.8585))
  Position_SetRadius(node133, 5)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node131, node134)
  Position_SetPosition(node134, MAT_Vector3(937.4269, 1927.708, 197.7248))
  Position_SetRadius(node134, 5)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("NOD_Position", "SinkPos_S1")
  Node_AddSon(node83, node135)
  Position_SetPosition(node135, MAT_Vector3(916.1835, 852.9204, 66.24045))
  Position_SetRadius(node135, 5)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("NOD_Position", "SinkPos_S2")
  Node_AddSon(node83, node136)
  Position_SetPosition(node136, MAT_Vector3(858.4594, 708.6427, 55.836824))
  Position_SetRadius(node136, 5)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("NOD_Position", "SinkPos_S3")
  Node_AddSon(node83, node137)
  Position_SetPosition(node137, MAT_Vector3(602.200494, 772.838754, 85.716378))
  Position_SetRadius(node137, 5)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("NOD_Position", "SinkPos_S4")
  Node_AddSon(node83, node138)
  Position_SetPosition(node138, MAT_Vector3(843.1736, 975.5015, 69.491161))
  Position_SetRadius(node138, 5)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("NOD_Path", "Digger_Path1")
  Node_AddSon(node83, node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node139, node140)
  Position_SetPosition(node140, MAT_Vector3(1006.251, 1001.246, 87.10535))
  Position_SetRadius(node140, 5)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node139, node141)
  Position_SetPosition(node141, MAT_Vector3(970.7958, 919.3262, 93.01977))
  Position_SetRadius(node141, 5)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node139, node142)
  Position_SetPosition(node142, MAT_Vector3(955.6489, 853.2784, 95.90941))
  Position_SetRadius(node142, 5)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Path", "Digger_Path2")
  Node_AddSon(node83, node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node143, node144)
  Position_SetPosition(node144, MAT_Vector3(953.8031, 821.2644, 95.94249))
  Position_SetRadius(node144, 5)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node143, node145)
  Position_SetPosition(node145, MAT_Vector3(934.5392, 747.8779, 89.10401))
  Position_SetRadius(node145, 5)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node143, node146)
  Position_SetPosition(node146, MAT_Vector3(866.9031, 742.1027, 86.32579))
  Position_SetRadius(node146, 5)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Path", "Digger_Path3")
  Node_AddSon(node83, node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node147, node148)
  Position_SetPosition(node148, MAT_Vector3(843.47, 739.7447, 95.86755))
  Position_SetRadius(node148, 5)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node147, node149)
  Position_SetPosition(node149, MAT_Vector3(787.4956, 762.1963, 131.0122))
  Position_SetRadius(node149, 5)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node147, node150)
  Position_SetPosition(node150, MAT_Vector3(677.5441, 804.7148, 109.7261))
  Position_SetRadius(node150, 5)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node147, node151)
  Position_SetPosition(node151, MAT_Vector3(609.975418, 847.622042, 119.4027))
  Position_SetRadius(node151, 5)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node147, node152)
  Position_SetPosition(node152, MAT_Vector3(604.1792, 896.9934, 111.5088))
  Position_SetRadius(node152, 5)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Path", "Digger_Path4")
  Node_AddSon(node83, node153)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node153, node154)
  Position_SetPosition(node154, MAT_Vector3(606.7034, 937.9812, 108.282))
  Position_SetRadius(node154, 5)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node153, node155)
  Position_SetPosition(node155, MAT_Vector3(671.788, 974.5398, 104.9574))
  Position_SetRadius(node155, 5)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node153, node156)
  Position_SetPosition(node156, MAT_Vector3(714.0071, 966.2564, 104.4982))
  Position_SetRadius(node156, 5)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node153, node157)
  Position_SetPosition(node157, MAT_Vector3(806.9253, 967.0373, 99.95488))
  Position_SetRadius(node157, 5)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Path", "DgrPathHome")
  Node_AddSon(node83, node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node158, node159)
  Position_SetPosition(node159, MAT_Vector3(824.0443, 1061.754, 92.0749))
  Position_SetRadius(node159, 5)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node158, node160)
  Position_SetPosition(node160, MAT_Vector3(975.2299, 1056.52, 91.93635))
  Position_SetRadius(node160, 5)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node158, node161)
  Position_SetPosition(node161, MAT_Vector3(1012.379, 1078.114, 86.78289))
  Position_SetRadius(node161, 5)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node158, node162)
  Position_SetPosition(node162, MAT_Vector3(837.1346, 1152.667, 134.2416))
  Position_SetRadius(node162, 5)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node158, node163)
  Position_SetPosition(node163, MAT_Vector3(744.4842, 1211.376, 144.4456))
  Position_SetRadius(node163, 5)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node158, node164)
  Position_SetPosition(node164, MAT_Vector3(771.0868, 1231.557, 146.5382))
  Position_SetRadius(node164, 5)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node158, node165)
  Position_SetPosition(node165, MAT_Vector3(892.1745, 1215.962, 175.452))
  Position_SetRadius(node165, 5)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node158, node166)
  Position_SetPosition(node166, MAT_Vector3(1104.078, 1193.029, 214.8831))
  Position_SetRadius(node166, 5)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node158, node167)
  Position_SetPosition(node167, MAT_Vector3(1091.235, 1235.226, 218.4044))
  Position_SetRadius(node167, 5)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node158, node168)
  Position_SetPosition(node168, MAT_Vector3(924.281, 1359.983, 263.1133))
  Position_SetRadius(node168, 5)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node158, node169)
  Position_SetPosition(node169, MAT_Vector3(932.537, 1633.348, 222.8888))
  Position_SetRadius(node169, 5)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node158, node170)
  Position_SetPosition(node170, MAT_Vector3(1005.923, 1690.222, 221.3806))
  Position_SetRadius(node170, 5)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node158, node171)
  Position_SetPosition(node171, MAT_Vector3(1124.259, 1672.793, 218.1402))
  Position_SetRadius(node171, 5)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_PatrolArea", "DiggerPark")
  Node_AddSon(node83, node172)
  PatrolArea_SetPosition(node172, MAT_Vector3(1153.186, 1665.687, 126.4459))
  PatrolArea_SetRadius(node172, 65)
  PatrolArea_SetMinZ(node172, 0)
  PatrolArea_SetMaxZ(node172, 100)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_PatrolArea", "WngPatrolA")
  Node_AddSon(node83, node173)
  PatrolArea_SetPosition(node173, MAT_Vector3(871.604547, 1019.456918, 192.135))
  PatrolArea_SetRadius(node173, 300)
  PatrolArea_SetMinZ(node173, 0)
  PatrolArea_SetMaxZ(node173, 150)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_PatrolArea", "WingA_Arena")
  Node_AddSon(node83, node174)
  PatrolArea_SetPosition(node174, MAT_Vector3(888.7037, 875.5224, 175.784125))
  PatrolArea_SetRadius(node174, 650)
  PatrolArea_SetMinZ(node174, -50)
  PatrolArea_SetMaxZ(node174, 460)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_Path", "WngHomePath")
  Node_AddSon(node83, node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node175, node176)
  Position_SetPosition(node176, MAT_Vector3(1438.339, 2455.714, 222.3846))
  Position_SetRadius(node176, 40)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node175, node177)
  Position_SetPosition(node177, MAT_Vector3(1767.89, 2436.805, 268.6286))
  Position_SetRadius(node177, 5)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node175, node178)
  Position_SetPosition(node178, MAT_Vector3(2000.126, 2431.689, 340.203))
  Position_SetRadius(node178, 5)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node175, node179)
  Position_SetPosition(node179, MAT_Vector3(2103.375, 2392.491, 347.3897))
  Position_SetRadius(node179, 5)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node175, node180)
  Position_SetPosition(node180, MAT_Vector3(2225.655, 2358.305, 337.2279))
  Position_SetRadius(node180, 5)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node175, node181)
  Position_SetPosition(node181, MAT_Vector3(2305.86, 2367.509, 350.1783))
  Position_SetRadius(node181, 5)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("NOD_Path", "BonhamPath_1")
  Node_AddSon(node83, node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node182, node183)
  Position_SetPosition(node183, MAT_Vector3(921.165881, 1411.745105, 266.293247))
  Position_SetRadius(node183, 5)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node182, node184)
  Position_SetPosition(node184, MAT_Vector3(917.046349, 1738.012028, 222.124601))
  Position_SetRadius(node184, 5)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node182, node185)
  Position_SetPosition(node185, MAT_Vector3(998.61308, 2032.97051, 191.92046))
  Position_SetRadius(node185, 5)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node182, node186)
  Position_SetPosition(node186, MAT_Vector3(1039.262654, 2147.007614, 243.355591))
  Position_SetRadius(node186, 5)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_Path", "HarperPath_1")
  Node_AddSon(node83, node187)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node187, node188)
  Position_SetPosition(node188, MAT_Vector3(947.530873, 1412.569438, 266.2932))
  Position_SetRadius(node188, 5)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node187, node189)
  Position_SetPosition(node189, MAT_Vector3(953.298213, 1755.31451, 222.1246))
  Position_SetRadius(node189, 5)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node187, node190)
  Position_SetPosition(node190, MAT_Vector3(1038.160606, 2022.260217, 191.9205))
  Position_SetRadius(node190, 5)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node187, node191)
  Position_SetPosition(node191, MAT_Vector3(1070.344957, 2142.909892, 233.110706))
  Position_SetRadius(node191, 5)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Path", "pathvortex")
  Node_AddSon(node83, node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node192, node193)
  Position_SetPosition(node193, MAT_Vector3(2350.119751, 2397.613527, 355.332255))
  Position_SetRadius(node193, 5)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node192, node194)
  Position_SetPosition(node194, MAT_Vector3(2629.85082, 2364.760254, 370.95189))
  Position_SetRadius(node194, 5)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node192, node195)
  Position_SetPosition(node195, MAT_Vector3(2812.692141, 2276.129869, 418.090689))
  Position_SetRadius(node195, 15)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node192, node196)
  Position_SetPosition(node196, MAT_Vector3(2890.020833, 2195.102042, 457.85365))
  Position_SetRadius(node196, 5)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node192, node197)
  Position_SetPosition(node197, MAT_Vector3(2720.917601, 1972.421548, 561.717925))
  Position_SetRadius(node197, 5)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node192, node198)
  Position_SetPosition(node198, MAT_Vector3(2272.36682, 2040.064908, 465.972567))
  Position_SetRadius(node198, 5)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node192, node199)
  Position_SetPosition(node199, MAT_Vector3(2138.217903, 2325.561319, 365.644594))
  Position_SetRadius(node199, 5)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("NOD_Path", "pathtibron")
  Node_AddSon(node83, node200)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node200, node201)
  Position_SetPosition(node201, MAT_Vector3(2682.069128, 2136.768431, 496.913372))
  Position_SetRadius(node201, 5)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node200, node202)
  Position_SetPosition(node202, MAT_Vector3(2851.17236, 2212.111456, 420))
  Position_SetRadius(node202, 5)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node200, node203)
  Position_SetPosition(node203, MAT_Vector3(2812.663703, 2310.894532, 450))
  Position_SetRadius(node203, 5)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node200, node204)
  Position_SetPosition(node204, MAT_Vector3(2553.148842, 2351.077478, 405))
  Position_SetRadius(node204, 5)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node200, node205)
  Position_SetPosition(node205, MAT_Vector3(2296.98256, 2300.848795, 391.532654))
  Position_SetRadius(node205, 5)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node200, node206)
  Position_SetPosition(node206, MAT_Vector3(2417.531398, 2115.002669, 412.329358))
  Position_SetRadius(node206, 5)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node81, node207)
  Node_EnterSimulation(node207)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node81, node208)
  Node_EnterSimulation(node208)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("NOD_Trigger", "Nav1_Trg")
  Node_AddSon(node208, node209)
  Body_SetPosition(node209, MAT_Vector3(1049.287205, 1051.325824, 65))
  Trigger_SetPresenceSphere(node209, 50)
  Node_EnterSimulation(node209)
  Body_SetFriendOrFoeID(node209, 0)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("NOD_Trigger", "Bio1A_Trg")
  Node_AddSon(node208, node210)
  Body_SetPosition(node210, MAT_Vector3(922.139077, 852.949091, 31.06998))
  Trigger_SetPresenceSphere(node210, 60)
  Node_EnterSimulation(node210)
  Body_SetFriendOrFoeID(node210, 0)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("NOD_Trigger", "Bio2A_Trg")
  Node_AddSon(node208, node211)
  Body_SetPosition(node211, MAT_Vector3(857.184439, 714.417478, 4.340821))
  Trigger_SetPresenceSphere(node211, 60)
  Node_EnterSimulation(node211)
  Body_SetFriendOrFoeID(node211, 0)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("NOD_Trigger", "Bio3A_Trg")
  Node_AddSon(node208, node212)
  Body_SetPosition(node212, MAT_Vector3(613.173071, 790.378213, 44.335345))
  Trigger_SetPresenceSphere(node212, 75)
  Node_EnterSimulation(node212)
  Body_SetFriendOrFoeID(node212, 0)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("NOD_Trigger", "Bio4A_Trg")
  Node_AddSon(node208, node213)
  Body_SetPosition(node213, MAT_Vector3(610.139535, 790.011171, 40.998146))
  Trigger_SetPresenceSphere(node213, 75)
  Node_EnterSimulation(node213)
  Body_SetFriendOrFoeID(node213, 0)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("NOD_Trigger", "BioB_Trg")
  Node_AddSon(node208, node214)
  Body_SetFriendOrFoeID(node214, 4)
  Body_SetPosition(node214, MAT_Vector3(1156.932513, 2390.42213, 225.853244))
  Trigger_SetPresenceSphere(node214, 350)
  Node_EnterSimulation(node214)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("NOD_Trigger", "BonusActivater")
  Node_AddSon(node208, node215)
  Body_SetFriendOrFoeID(node215, 0)
  Body_SetPosition(node215, MAT_Vector3(878.623111, 837.761594, 143.008582))
  Trigger_SetPresenceSphere(node215, 768)
  Node_EnterSimulation(node215)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("NOD_Trigger", "BioC_Trg")
  Node_AddSon(node208, node216)
  Body_SetFriendOrFoeID(node216, 4)
  Body_SetPosition(node216, MAT_Vector3(1012.62059, 700.290801, 259.894417))
  Trigger_SetPresenceSphere(node216, 512)
  Node_EnterSimulation(node216)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node81, node217)
  Node_EnterSimulation(node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("NOD_Directory", "TRAFFIC")
  Node_AddSon(node217, node218)
  Node_EnterSimulation(node218)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("nod_vessel", "gen_toiler_1")
  Node_AddSon(node218, node219)
  Body_SetCS(node219, MAT_Vector3(2505.604388, 2307.091505, 453.241305), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node219, "osd/gen/gen_toiler.osd")
  Body_SetFriendOrFoeID(node219, 3)
  Body_SetNameKey(node219, -1)
  Body_SetCargoKey(node219, -1, 0)
  Body_SetCargoKey(node219, -1, 1)
  Body_SetCargoKey(node219, -1, 2)
  Node_EnterSimulation(node219)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("nod_vessel", "Transport")
  Node_AddSon(node218, node220)
  Body_SetCS(node220, MAT_Vector3(903.854485, 1549.643715, 223.097425), MAT_Vector3(0.370837, 0, 0))
  Node_ParseIniFile(node220, "osd/gen/gen_freighter2.osd")
  Body_SetFriendOrFoeID(node220, 3)
  Body_SetNameKey(node220, -1)
  Body_SetCargoKey(node220, -1, 0)
  Body_SetCargoKey(node220, -1, 1)
  Body_SetCargoKey(node220, -1, 2)
  Node_EnterSimulation(node220)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("nod_vessel", "gen_bus_1")
  Node_AddSon(node218, node221)
  Body_SetCS(node221, MAT_Vector3(2539.839, 2285.453, 561.3818), MAT_Vector3(-172.9349, 0, 0))
  Node_ParseIniFile(node221, "osd/gen/gen_freighter1.osd")
  Body_SetFriendOrFoeID(node221, 3)
  Body_SetNameKey(node221, -1)
  Body_SetCargoKey(node221, -1, 0)
  Body_SetCargoKey(node221, -1, 1)
  Body_SetCargoKey(node221, -1, 2)
  Node_EnterSimulation(node221)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("nod_vessel", "gen_vortex_1")
  Node_AddSon(node218, node222)
  Body_SetCS(node222, MAT_Vector3(2275.806535, 2384.036488, 273.255535), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node222, "osd/gen/gen_vortex.osd")
  Body_SetFriendOrFoeID(node222, 0)
  Body_SetNameKey(node222, -1)
  Body_SetCargoKey(node222, -1, 0)
  Body_SetCargoKey(node222, -1, 1)
  Body_SetCargoKey(node222, -1, 2)
  Node_EnterSimulation(node222)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("nod_vessel", "gen_tiburon_1")
  Node_AddSon(node218, node223)
  Body_SetCS(node223, MAT_Vector3(2261.944422, 2059.882906, 373.049211), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node223, "osd/gen/gen_tiburon.osd")
  Body_SetFriendOrFoeID(node223, 0)
  Body_SetNameKey(node223, -1)
  Body_SetCargoKey(node223, -1, 0)
  Body_SetCargoKey(node223, -1, 1)
  Body_SetCargoKey(node223, -1, 2)
  Node_EnterSimulation(node223)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("nod_waypoint", "nav_waypoint_01")
  Node_AddSon(node217, node224)
  Body_SetPosition(node224, MAT_Vector3(1049.652491, 1051.22856, 64.767403))
  WayPoint_SetRadius(node224, 50)
  Node_ParseIniFile(node224, "osd/nav/nav_waypoint_01.osd")
  Node_EnterSimulation(node224)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("nod_waypoint", "nav_waypoint_mark")
  Node_AddSon(node217, node225)
  Body_SetPosition(node225, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node225, 250)
  Node_ParseIniFile(node225, "osd/nav/nav_waypoint_mark.osd")
  Node_EnterSimulation(node225)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("nod_waypoint", "nav_waypoint_02")
  Node_AddSon(node217, node226)
  Body_SetPosition(node226, MAT_Vector3(1180.600209, 2392.550311, 197.55623))
  WayPoint_SetRadius(node226, 400)
  Node_ParseIniFile(node226, "osd/nav/nav_waypoint_02.osd")
  Node_EnterSimulation(node226)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("nod_waypoint", "nav_waypoint_03")
  Node_AddSon(node217, node227)
  Body_SetPosition(node227, MAT_Vector3(925.848519, 798.079617, 124.321887))
  WayPoint_SetRadius(node227, 150)
  Node_ParseIniFile(node227, "osd/nav/nav_waypoint_03.osd")
  Node_EnterSimulation(node227)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node228)
  Camera_SetBackPlane(node228, 512)
  Node_EnterSimulation(node228)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("NOD_Scenario", "stationcamera")
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
  node232 = Node_CreateNode("NOD_Position", "MoveFrom")
  Node_AddSon(node231, node232)
  Position_SetPosition(node232, MAT_Vector3(2534.521705, 2620.883143, 335))
  Position_SetRadius(node232, 5)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("NOD_Position", "LookFrom")
  Node_AddSon(node231, node233)
  Position_SetPosition(node233, MAT_Vector3(2584.779536, 2437.151992, 335))
  Position_SetRadius(node233, 5)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("NOD_Position", "LookAt")
  Node_AddSon(node231, node234)
  Position_SetPosition(node234, MAT_Vector3(2703.369358, 2182.829905, 448.16638))
  Position_SetRadius(node234, 5)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node229, node235)
  Node_EnterSimulation(node235)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("NOD_Director", "camera")
  Node_AddSon(node235, node236)
  Node_EnterSimulation(node236)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node229, node237)
  Node_EnterSimulation(node237)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node229, node238)
  Node_EnterSimulation(node238)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, F)
SetEnemyMatrixElement(2, 0, F)
SetEnemyMatrixElement(3, 0, N)
SetEnemyMatrixElement(4, 0, E)
SetEnemyMatrixElement(5, 0, U)
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
SetEnemyMatrixElement(3, 1, N)
SetEnemyMatrixElement(4, 1, E)
SetEnemyMatrixElement(5, 1, U)
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
SetEnemyMatrixElement(0, 2, F)
SetEnemyMatrixElement(1, 2, F)
SetEnemyMatrixElement(2, 2, F)
SetEnemyMatrixElement(3, 2, F)
SetEnemyMatrixElement(4, 2, E)
SetEnemyMatrixElement(5, 2, U)
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
SetEnemyMatrixElement(4, 3, E)
SetEnemyMatrixElement(5, 3, U)
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
SetEnemyMatrixElement(5, 4, U)
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
SetEnemyMatrixElement(5, 5, U)
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
o2302 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/dock_appr", "/Scenario_Dynamic/Navigation/dock_path", "/Scenario_Dynamic/Navigation/dock_area")
S_o2303 = { [nil] = {}, Start = function(L0)

end }
S_o2304 = { [nil] = {}, Start = function(L0)

end }
S_o2305 = { [nil] = {}, Start = function(L0)

end }
S_o2306 = { [nil] = {}, Start = function(L0)

end }
S_o2307 = { [nil] = {}, Start = function(L0)

end }
S_o2308 = { [nil] = {}, Start = function(L0)

end }
S_o2309 = { [nil] = {}, Start = function(L0)

end }
S_o2310 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2310, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2310, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2310, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o2310, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2310, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2310, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o2315.SetStateValue(L1)
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
o2315 = { [nil] = {}, Start = function()
  o2315["Value"] = False
  o2317.StartCalculate()
  o2323.StartCalculate()
  o2329.StartCalculate()
  o2335.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2315.Value == L0) then
    o2315["Value"] = L0
    o2317.ReCalculate()
    o2323.ReCalculate()
    o2329.ReCalculate()
    o2335.ReCalculate()
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
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2316, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "1H2_Digger_1", "pla", "", "", False, False, True)
  CallFunction(o2316, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2316, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2316, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2317.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2317 = { [nil] = {}, GetCalculated = function()
  if not (o2315.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2317.SetStateValue(o2317.GetCalculated())
end, StartCalculate = function()
  o2317["Value"] = o2317.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2317.Value == L0) then
    o2317["Value"] = L0
    CallFunction(o2316, "ProcesseStateChange")
  end
end }
S_o2322 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2322, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2322, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2322, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "1H2_Digger_1", "pla", "", "", False, False, True)
  CallFunction(o2322, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2322, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2322, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2323.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2323 = { [nil] = {}, GetCalculated = function()
  if not (o2315.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2323.SetStateValue(o2323.GetCalculated())
end, StartCalculate = function()
  o2323["Value"] = o2323.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2323.Value == L0) then
    o2323["Value"] = L0
    CallFunction(o2322, "ProcesseStateChange")
  end
end }
S_o2328 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2328, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2328, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2328, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "1H2_Digger_1", "pla", "", "", False, False, True)
  CallFunction(o2328, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2328, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2328, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2329.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2329 = { [nil] = {}, GetCalculated = function()
  if not (o2315.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2329.SetStateValue(o2329.GetCalculated())
end, StartCalculate = function()
  o2329["Value"] = o2329.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2329.Value == L0) then
    o2329["Value"] = L0
    CallFunction(o2328, "ProcesseStateChange")
  end
end }
S_o2334 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2334, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2334, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2334, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "1H2_Digger_1", "pla", "", "", False, False, True)
  CallFunction(o2334, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2334, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2334, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2335.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2335 = { [nil] = {}, GetCalculated = function()
  if not (o2315.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2335.SetStateValue(o2335.GetCalculated())
end, StartCalculate = function()
  o2335["Value"] = o2335.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2335.Value == L0) then
    o2335["Value"] = L0
    CallFunction(o2334, "ProcesseStateChange")
  end
end }
S_o2340 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2340, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2340, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2340, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "wng", "", "", False, False, True)
  CallFunction(o2340, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2340, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2340, "Code6")
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
S_o2346 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2346, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2346, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2346, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o2346, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2346, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2346, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o2351.SetStateValue(L1)
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
o2351 = { [nil] = {}, Start = function()
  o2351["Value"] = False
  o2353.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2351.Value == L0) then
    o2351["Value"] = L0
    o2353.ReCalculate()
  end
end }
S_o2352 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2352, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2352, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2352, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o2352, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2352, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2352, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2353.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2353 = { [nil] = {}, GetCalculated = function()
  if not (o2351.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2353.SetStateValue(o2353.GetCalculated())
end, StartCalculate = function()
  o2353["Value"] = o2353.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2353.Value == L0) then
    o2353["Value"] = L0
    CallFunction(o2352, "ProcesseStateChange")
  end
end }
S_o2358 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code1")
  else
    CallFunction(o2358, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o2358, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Toiler_Path", 0.8, 1 } }("Code4")
  else
    CallFunction(o2358, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o2358, "Code3")
  else
    CallFunction(o2358, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2405 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2405, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2405, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2405, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o2405, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2405, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Sink", "/Scenario_Dynamic/Navigation/TranPos_H", 1, 1 } }("Code6")
  else
    CallFunction(o2405, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5 } }("Code7")
  else
    CallFunction(o2405, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TranPath_1", 1, 1 } }("Code8")
  else
    CallFunction(o2405, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o2405, "Code9")
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
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2456 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2456, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2456, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2456, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Bus1_Path1", 0.5, 1 } }("Code4")
  else
    CallFunction(o2456, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 10 } }("Code5")
  else
    CallFunction(o2456, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Sink", "/Scenario_Dynamic/Navigation/Bus_Pos_L", 0.5, 1 } }("Code6")
  else
    CallFunction(o2456, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 30 } }("Code7")
  else
    CallFunction(o2456, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Sink", "/Scenario_Dynamic/Navigation/Bus_Pos_H", 0.5, 1 } }("Code8")
  else
    CallFunction(o2456, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 10 } }("Code9")
  else
    CallFunction(o2456, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o2456, "Code3")
  else
    CallFunction(o2456, "Code10")
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
S_o2509 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code1")
  else
    CallFunction(o2509, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o2509, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/pathvortex", 0.5, 1 } }("Code4")
  else
    CallFunction(o2509, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o2509, "Code3")
  else
    CallFunction(o2509, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2556 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code1")
  else
    CallFunction(o2556, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o2556, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/pathtibron", 0.3, 1 } }("Code4")
  else
    CallFunction(o2556, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o2556, "Code3")
  else
    CallFunction(o2556, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2603 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o2603, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2608 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o2608, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2613 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o2613, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2618 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o2618, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2623 = { [nil] = {}, Start = function(L0)

end }
S_o2624 = { [nil] = {}, Start = function(L0)

end }
S_o2625 = { [nil] = {}, Start = function(L0)

end }
S_o2626 = { [nil] = {}, Start = function(L0)

end }
S_o2627 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Camera_MoveTo(L0.Node, "/stationcamera/Navigation/MoveFrom", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/stationcamera/Navigation/LookAt", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  CallFunction(o2627, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.15, "Code4")
  else
    CallFunction(o2627, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/stationcamera/Navigation/LookFrom", 3, "MMMN", 0)
  CallFunction(o2627, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 238)
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
  o670 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker_1", S_o670)
  o704 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_1", S_o704)
  o738 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_1", S_o738)
  o772 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_1", S_o772)
  o806 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_1", S_o806)
  o840 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_10", S_o840)
  o874 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_11", S_o874)
  o908 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_12", S_o908)
  o942 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_2", S_o942)
  o976 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_2", S_o976)
  o1010 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_3", S_o1010)
  o1044 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_2", S_o1044)
  o1078 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_3", S_o1078)
  o1112 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabo_1", S_o1112)
  o1146 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schorn2_1", S_o1146)
  o1180 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k2_1", S_o1180)
  o1214 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus3_1", S_o1214)
  o1248 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_mhaus2_1", S_o1248)
  o1282 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_4", S_o1282)
  o1316 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_9", S_o1316)
  o1350 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_5", S_o1350)
  o1384 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_6", S_o1384)
  o1418 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_7", S_o1418)
  o1452 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_8", S_o1452)
  o1486 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schorn2_2", S_o1486)
  o1520 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk1_1", S_o1520)
  o1554 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_1", S_o1554)
  o1588 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_2", S_o1588)
  o1622 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraft22_1", S_o1622)
  o1656 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern_1", S_o1656)
  o1690 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_1", S_o1690)
  o1724 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_2", S_o1724)
  o1758 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_3", S_o1758)
  o1792 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_g_1", S_o1792)
  o1826 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_5_1", S_o1826)
  o1860 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dock_1", S_o1860)
  o1894 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r3_1", S_o1894)
  o1928 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r2_1", S_o1928)
  o1962 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r2_2", S_o1962)
  o1996 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r2_3", S_o1996)
  o2030 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_r2_4", S_o2030)
  o2064 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb4a_2_1", S_o2064)
  o2098 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gang2_2", S_o2098)
  o2132 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gang3_1", S_o2132)
  o2166 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabolic_1", S_o2166)
  o2200 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock1_1", S_o2200)
  o2234 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_4", S_o2234)
  o2268 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_1", S_o2268)
  o2303 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Bus_Pos_L", S_o2303)
  o2304 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Bus_Pos_H", S_o2304)
  o2305 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "TranPos_H", S_o2305)
  o2306 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "SinkPos_S1", S_o2306)
  o2307 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "SinkPos_S2", S_o2307)
  o2308 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "SinkPos_S3", S_o2308)
  o2309 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "SinkPos_S4", S_o2309)
  o2310 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Nav1_Trg", S_o2310)
  o2315.Start()
  o2316 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Bio1A_Trg", S_o2316)
  o2322 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Bio2A_Trg", S_o2322)
  o2328 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Bio3A_Trg", S_o2328)
  o2334 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Bio4A_Trg", S_o2334)
  o2340 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "BioB_Trg", S_o2340)
  o2346 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "BonusActivater", S_o2346)
  o2351.Start()
  o2352 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "BioC_Trg", S_o2352)
  o2358 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_toiler_1", S_o2358)
  o2405 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "Transport", S_o2405)
  o2456 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_bus_1", S_o2456)
  o2509 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_vortex_1", S_o2509)
  o2556 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_tiburon_1", S_o2556)
  o2603 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_01", S_o2603)
  o2608 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_mark", S_o2608)
  o2613 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_02", S_o2613)
  o2618 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_03", S_o2618)
  o2623 = BindEasy(Node_Find("/"), "Camera", S_o2623)
  o2624 = BindEasy(Node_Find("/stationcamera/Navigation"), "MoveFrom", S_o2624)
  o2625 = BindEasy(Node_Find("/stationcamera/Navigation"), "LookFrom", S_o2625)
  o2626 = BindEasy(Node_Find("/stationcamera/Navigation"), "LookAt", S_o2626)
  o2627 = BindEasy(Node_Find("/stationcamera/Director"), "camera", S_o2627)
  Game_LoadProgress_Leave(Node_Find("/"))
end
