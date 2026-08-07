-- dekompiliert aus map\6h3\script\6h3.sco
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
  Terrain_LoadTerrain(node1, "map/6H3/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/6H3/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrain(node0, 0.025, 0.3)
  Game_SetCausticObject(node0, 0.1, 0.3)
  Game_SetCausticBuilding(node0, 0.025, 0.3)
  Game_SetLightCache(node0, "map/6H3/Lmsh/", "map/6H3/Ltex/")
  Game_SetTerrainDepth(node0, 3666)
  Game_SetDecompressionHeight(node0, 400)
  Game_SetAmbientLight(node0, 0.043137, 0.109804, 0.043137)
  Game_SetParallelLightT(node0, 0.113725, 0.290196, 0.113725)
  Game_SetParallelLightB(node0, 0.666667, 0.443137, 0.172549)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_6H3_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track06.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_track04.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_badend.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_track08_sad.sam", 3)
  Game_LoadMusic(node0, "sfx/sample/music/music_sfx_timesend.sam", 4)
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
  node5 = Node_CreateNode("NOD_Position", "512'er")
  Node_AddSon(node4, node5)
  Position_SetPosition(node5, MAT_Vector3(2610.266175, 3013.977424, 214.174746))
  Position_SetRadius(node5, 512)
  Game_LoadProgress_Advance(node0)
  node6 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node2, node6)
  Node_EnterSimulation(node6)
  Game_LoadProgress_Advance(node0)
  node7 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node2, node7)
  Node_EnterSimulation(node7)
  Game_LoadProgress_Advance(node0)
  node8 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node2, node8)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "atl_fpowerstation_1")
  Node_AddSon(node8, node9)
  Body_SetCS(node9, MAT_Vector3(1040, 2766, 245), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node9, "osd/atl/atl_fpowerstation.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "gen_industry3_1")
  Node_AddSon(node8, node10)
  Body_SetCS(node10, MAT_Vector3(1663.2132, 2850.373499, 152.24436), MAT_Vector3(110.771272, 0, 0))
  Node_ParseIniFile(node10, "osd/gen/gen_industry3.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "gen_industry1_1")
  Node_AddSon(node8, node11)
  Body_SetCS(node11, MAT_Vector3(781.000064, 2775.444403, 252.441373), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node11, "osd/gen/gen_industry1.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "gen_rohr_small02_1")
  Node_AddSon(node8, node12)
  Body_SetCS(node12, MAT_Vector3(899.406592, 2732.53287, 245.655907), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node12, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "gen_rohr_small02_2")
  Node_AddSon(node8, node13)
  Body_SetCS(node13, MAT_Vector3(897.802439, 2757.798285, 244.379609), MAT_Vector3(90.014551, 0, 0))
  Node_ParseIniFile(node13, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "gen_rohr_small02_3")
  Node_AddSon(node8, node14)
  Body_SetCS(node14, MAT_Vector3(896.198293, 2801.511593, 245.6559), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node14, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "gen_rohr_small02_4")
  Node_AddSon(node8, node15)
  Body_SetCS(node15, MAT_Vector3(897.401362, 2744.964773, 244.3796), MAT_Vector3(90.01455, 0, 0))
  Node_ParseIniFile(node15, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "gen_rohr_big02_1")
  Node_AddSon(node8, node16)
  Body_SetCS(node16, MAT_Vector3(907.246244, 2778.417995, 242.801596), MAT_Vector3(-90.041653, 0, 0))
  Node_ParseIniFile(node16, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "atl_wblock3a_02_1")
  Node_AddSon(node8, node17)
  Body_SetCS(node17, MAT_Vector3(811.199706, 3274.322704, 191.280091), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node17, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "atl_wblock3a_04_1")
  Node_AddSon(node8, node18)
  Body_SetCS(node18, MAT_Vector3(703.372904, 3247.027447, 188.510262), MAT_Vector3(-90.230995, 0, 0))
  Node_ParseIniFile(node18, "osd/atl/atl_wblock3a_04.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "atl_fpowerstation_d_1")
  Node_AddSon(node8, node19)
  Body_SetCS(node19, MAT_Vector3(1040, 2766, 245), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node19, "osd/atl/atl_fpowerstation_d.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "gen_turret_med_1")
  Node_AddSon(node8, node20)
  Body_SetCS(node20, MAT_Vector3(1169.477985, 2592.064796, 247.751159), MAT_Vector3(-100.771069, 0, 0))
  Node_ParseIniFile(node20, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "gen_turret_med_2")
  Node_AddSon(node8, node21)
  Body_SetCS(node21, MAT_Vector3(1166.928405, 2847.557127, 245.261821), MAT_Vector3(-64.260356, 0, 0))
  Node_ParseIniFile(node21, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "gen_turret_med_3")
  Node_AddSon(node8, node22)
  Body_SetCS(node22, MAT_Vector3(949.80724, 2646.104748, 245.2618), MAT_Vector3(-131.742342, -0.718171, 1.942365))
  Node_ParseIniFile(node22, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "Grav_ctrl_1")
  Node_AddSon(node8, node23)
  Body_SetCS(node23, MAT_Vector3(1043.060062, 2839.590907, 252), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node23, "osd/gen/gen_trafo.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "Grav_ctrl_2")
  Node_AddSon(node8, node24)
  Body_SetCS(node24, MAT_Vector3(1039.246659, 2697.952632, 252), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node24, "osd/gen/gen_trafo.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "Grav_ctrl_3")
  Node_AddSon(node8, node25)
  Body_SetCS(node25, MAT_Vector3(972.241157, 2763.869317, 252), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_trafo.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "Grav_ctrl_4")
  Node_AddSon(node8, node26)
  Body_SetCS(node26, MAT_Vector3(1114.424331, 2764.958526, 252), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_trafo.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_fx_sky", "fx_sky_10_1")
  Node_AddSon(node8, node27)
  Node_ParseIniFile(node27, "osd/fx_sky/fx_sky_10.osd")
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "atl_dock3_1")
  Node_AddSon(node8, node28)
  Body_SetCS(node28, MAT_Vector3(1120.508326, 3430.442672, 205.444798), MAT_Vector3(-89.6974, 0, 0))
  Node_ParseIniFile(node28, "osd/atl/atl_dock3.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "atl_wblock3b_03_1")
  Node_AddSon(node8, node29)
  Body_SetCS(node29, MAT_Vector3(894.831054, 3470.903506, 191.268208), MAT_Vector3(-179.769438, 0, 0))
  Node_ParseIniFile(node29, "osd/atl/atl_wblock3b_03.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "gen_industry2_1")
  Node_AddSon(node8, node30)
  Body_SetCS(node30, MAT_Vector3(1512.130035, 3331.271806, 193.603574), MAT_Vector3(-89.873969, 0, 0))
  Node_ParseIniFile(node30, "osd/gen/gen_industry2.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "atl_wblock3a_04_2")
  Node_AddSon(node8, node31)
  Body_SetCS(node31, MAT_Vector3(1325.74464, 3292.635266, 185.245202), MAT_Vector3(179.998611, 0, 0))
  Node_ParseIniFile(node31, "osd/atl/atl_wblock3a_04.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "gen_rohr_big01_1")
  Node_AddSon(node8, node32)
  Body_SetCS(node32, MAT_Vector3(1431.917366, 3301.646181, 191.809965), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_shelter_1")
  Node_AddSon(node8, node33)
  Body_SetCS(node33, MAT_Vector3(1961.429328, 3096.833222, 116.131265), MAT_Vector3(-90.26279, 0, 0))
  Node_ParseIniFile(node33, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "gen_pole2_1")
  Node_AddSon(node8, node34)
  Body_SetCS(node34, MAT_Vector3(1996.693289, 3116.765893, 155), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "gen_pole2_2")
  Node_AddSon(node8, node35)
  Body_SetCS(node35, MAT_Vector3(1996.832898, 3076.195711, 155), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node35, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_pole2_3")
  Node_AddSon(node8, node36)
  Body_SetCS(node36, MAT_Vector3(1924.36607, 3076.615693, 155), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "gen_pole2_4")
  Node_AddSon(node8, node37)
  Body_SetCS(node37, MAT_Vector3(1924.645795, 3117.326187, 155), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node37, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "gen_tower_1")
  Node_AddSon(node8, node38)
  Body_SetCS(node38, MAT_Vector3(1977.869699, 3097.140386, 164.001585), MAT_Vector3(-23.539982, 0, 0))
  Node_ParseIniFile(node38, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_tank_sml_1")
  Node_AddSon(node8, node39)
  Body_SetCS(node39, MAT_Vector3(1944.113664, 3096.402385, 153.484496), MAT_Vector3(-68.910131, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_metalblock3_1")
  Node_AddSon(node8, node40)
  Body_SetCS(node40, MAT_Vector3(2232.019647, 3053.080985, 145.523144), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_rohr_big03_1")
  Node_AddSon(node8, node41)
  Body_SetCS(node41, MAT_Vector3(2063.061733, 3108.558914, 130.150397), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_chimney1_1")
  Node_AddSon(node8, node42)
  Body_SetCS(node42, MAT_Vector3(2242.562302, 3106.464421, 215.812803), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_chimney1.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_chimney1_2")
  Node_AddSon(node8, node43)
  Body_SetCS(node43, MAT_Vector3(2265.739605, 3106.324523, 220.547204), MAT_Vector3(90.085815, 0, 0))
  Node_ParseIniFile(node43, "osd/gen/gen_chimney1.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_parabolic_1")
  Node_AddSon(node8, node44)
  Body_SetCS(node44, MAT_Vector3(2280.182925, 3066.636574, 208.822544), MAT_Vector3(-150.444627, 0, 0))
  Node_ParseIniFile(node44, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_kai2_1")
  Node_AddSon(node8, node45)
  Body_SetCS(node45, MAT_Vector3(1547.467492, 3191.982206, 133.314174), MAT_Vector3(-179.431829, 0, 0))
  Node_ParseIniFile(node45, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_dolphinhab_big_1")
  Node_AddSon(node8, node46)
  Body_SetCS(node46, MAT_Vector3(888.122596, 3160.044458, 194.787489), MAT_Vector3(-34.297883, 0, 0))
  Node_ParseIniFile(node46, "osd/gen/gen_dolphinhab_big.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "gen_pole1_1")
  Node_AddSon(node8, node47)
  Body_SetCS(node47, MAT_Vector3(1651.555866, 2818.957717, 195), MAT_Vector3(73.207754, 0, 0))
  Node_ParseIniFile(node47, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "gen_pole1_2")
  Node_AddSon(node8, node48)
  Body_SetCS(node48, MAT_Vector3(1634.182629, 2863.562666, 195), MAT_Vector3(62.310259, 0, 0))
  Node_ParseIniFile(node48, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "gen_pole1_3")
  Node_AddSon(node8, node49)
  Body_SetCS(node49, MAT_Vector3(1676.737999, 2881.131577, 195), MAT_Vector3(62.31026, 0, 0))
  Node_ParseIniFile(node49, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "gen_pole1_4")
  Node_AddSon(node8, node50)
  Body_SetCS(node50, MAT_Vector3(1694.013768, 2834.57527, 195), MAT_Vector3(63.588336, 0, 0))
  Node_ParseIniFile(node50, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_tank_big_1")
  Node_AddSon(node8, node51)
  Body_SetCS(node51, MAT_Vector3(1664.379622, 2849.429378, 196.069484), MAT_Vector3(21.108848, 0, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_fx_plankton", "fx_plankton_green_1")
  Node_AddSon(node8, node52)
  Node_ParseIniFile(node52, "osd/fx_plankton/fx_plankton_green.osd")
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node8, node53)
  Node_ParseIniFile(node53, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node53, "map/6H3/Terrain/coral_01.tga")
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_fx_plant", "fungus_01_1")
  Node_AddSon(node8, node54)
  Node_ParseIniFile(node54, "osd/fx_plant/fungus_01.osd")
  FX_Plant_SetMap(node54, "map/6H3/Terrain/fungus_01.tga")
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node8, node55)
  Node_ParseIniFile(node55, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node55, "map/6H3/Terrain/grass_01.tga")
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node8, node56)
  Node_ParseIniFile(node56, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node56, "map/6H3/Terrain/stone_01.tga")
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_fungus", "fungus_01_2")
  Node_AddSon(node8, node57)
  Body_SetCS(node57, MAT_Vector3(1384.916625, 2183.714544, 202.375947), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node57, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_fungus", "fungus_01_3")
  Node_AddSon(node8, node58)
  Body_SetCS(node58, MAT_Vector3(2359.49445, 2924.040738, 123.717865), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node58, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_fungus", "fungus_01_4")
  Node_AddSon(node8, node59)
  Body_SetCS(node59, MAT_Vector3(1385.380434, 1975.607844, 205.252993), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node59, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node8, node60)
  Node_ParseIniFile(node60, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node61)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node61, node62)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node61, node63)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("NOD_PatrolArea", "FusionPP_PArea")
  Node_AddSon(node63, node64)
  PatrolArea_SetPosition(node64, MAT_Vector3(1038.231, 2764.88, 347.385776))
  PatrolArea_SetRadius(node64, 200)
  PatrolArea_SetMinZ(node64, -30)
  PatrolArea_SetMaxZ(node64, 50)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("NOD_PatrolArea", "FusionPP_TArea")
  Node_AddSon(node63, node65)
  PatrolArea_SetPosition(node65, MAT_Vector3(1036.67, 2764.88, 236.867875))
  PatrolArea_SetRadius(node65, 450)
  PatrolArea_SetMinZ(node65, -105)
  PatrolArea_SetMaxZ(node65, 160)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("NOD_PatrolArea", "FusionPP_FArea")
  Node_AddSon(node63, node66)
  PatrolArea_SetPosition(node66, MAT_Vector3(1036.67, 2765.661, 217.425249))
  PatrolArea_SetRadius(node66, 750)
  PatrolArea_SetMinZ(node66, -110)
  PatrolArea_SetMaxZ(node66, 180)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("NOD_Path", "Crocell_Path1")
  Node_AddSon(node63, node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node67, node68)
  Position_SetPosition(node68, MAT_Vector3(988.7413, 3061.083, 380))
  Position_SetRadius(node68, 5)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node67, node69)
  Position_SetPosition(node69, MAT_Vector3(980.7696, 2848.462, 380))
  Position_SetRadius(node69, 5)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node67, node70)
  Position_SetPosition(node70, MAT_Vector3(1097.567, 2629.231, 380))
  Position_SetRadius(node70, 5)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node67, node71)
  Position_SetPosition(node71, MAT_Vector3(1264.265, 2665.185, 380))
  Position_SetRadius(node71, 5)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node67, node72)
  Position_SetPosition(node72, MAT_Vector3(1313.294, 2850.404, 380))
  Position_SetRadius(node72, 5)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node67, node73)
  Position_SetPosition(node73, MAT_Vector3(1244.581, 3041.706, 380))
  Position_SetRadius(node73, 5)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node67, node74)
  Position_SetPosition(node74, MAT_Vector3(1107.156, 3145.556, 380))
  Position_SetRadius(node74, 5)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("NOD_Path", "Bonham_Path1")
  Node_AddSon(node63, node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node75, node76)
  Position_SetPosition(node76, MAT_Vector3(1213.204, 2959.179, 282.0131))
  Position_SetRadius(node76, 5)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node75, node77)
  Position_SetPosition(node77, MAT_Vector3(968.2973, 2955.525, 345.4796))
  Position_SetRadius(node77, 5)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("NOD_PatrolArea", "Crocell_FArea")
  Node_AddSon(node63, node78)
  PatrolArea_SetPosition(node78, MAT_Vector3(1419.985, 1028.319, 213.810718))
  PatrolArea_SetRadius(node78, 750)
  PatrolArea_SetMinZ(node78, -110)
  PatrolArea_SetMaxZ(node78, 180)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("NOD_PatrolArea", "Crocell_FArea2")
  Node_AddSon(node63, node79)
  PatrolArea_SetPosition(node79, MAT_Vector3(2035.158, 1947.062, 211.485445))
  PatrolArea_SetRadius(node79, 300)
  PatrolArea_SetMinZ(node79, -110)
  PatrolArea_SetMaxZ(node79, 180)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("NOD_PatrolArea", "GhostBattle_Area")
  Node_AddSon(node63, node80)
  PatrolArea_SetPosition(node80, MAT_Vector3(2044.863, 2450.486, 215.914434))
  PatrolArea_SetRadius(node80, 400)
  PatrolArea_SetMinZ(node80, -110)
  PatrolArea_SetMaxZ(node80, 180)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("NOD_Path", "Crocell_Path2")
  Node_AddSon(node63, node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node81, node82)
  Position_SetPosition(node82, MAT_Vector3(1422.557, 1043.324, 280.6528))
  Position_SetRadius(node82, 5)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node81, node83)
  Position_SetPosition(node83, MAT_Vector3(1451.299, 903.9083, 273.3108))
  Position_SetRadius(node83, 5)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node81, node84)
  Position_SetPosition(node84, MAT_Vector3(1595.176, 729.5642, 268.0227))
  Position_SetRadius(node84, 5)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node81, node85)
  Position_SetPosition(node85, MAT_Vector3(1765.087, 770.3434, 271.8773))
  Position_SetRadius(node85, 5)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node81, node86)
  Position_SetPosition(node86, MAT_Vector3(1905.924, 925.0904, 297.1051))
  Position_SetRadius(node86, 5)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node81, node87)
  Position_SetPosition(node87, MAT_Vector3(1759.87, 1045.063, 274.2193))
  Position_SetRadius(node87, 5)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node81, node88)
  Position_SetPosition(node88, MAT_Vector3(1528.619, 1038.108, 272.2462))
  Position_SetRadius(node88, 5)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Path", "Tursas6h3_Path_1")
  Node_AddSon(node63, node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node89, node90)
  Position_SetPosition(node90, MAT_Vector3(1363.274, 2769.43, 272.4661))
  Position_SetRadius(node90, 5)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node89, node91)
  Position_SetPosition(node91, MAT_Vector3(1157.051, 2887.098, 318.0185))
  Position_SetRadius(node91, 5)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node89, node92)
  Position_SetPosition(node92, MAT_Vector3(780.9994, 2938.047, 386.0835))
  Position_SetRadius(node92, 5)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Path", "GhostVSBonhamPath_1")
  Node_AddSon(node63, node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node93, node94)
  Position_SetPosition(node94, MAT_Vector3(1569.337, 2906.817, 306.6071))
  Position_SetRadius(node94, 20)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_Path", "GhostVSPlayerPath_1")
  Node_AddSon(node63, node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node95, node96)
  Position_SetPosition(node96, MAT_Vector3(1565.204, 2778.096, 306.6071))
  Position_SetRadius(node96, 15)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node95, node97)
  Position_SetPosition(node97, MAT_Vector3(1699.296, 2670.796, 306.6071))
  Position_SetRadius(node97, 15)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("NOD_Path", "GhostVSPlayerPath_2")
  Node_AddSon(node63, node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node98, node99)
  Position_SetPosition(node99, MAT_Vector3(1920.634, 2620.397, 306.6071))
  Position_SetRadius(node99, 15)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node98, node100)
  Position_SetPosition(node100, MAT_Vector3(1984.367, 2431.821, 306.6071))
  Position_SetRadius(node100, 15)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node98, node101)
  Position_SetPosition(node101, MAT_Vector3(1927.353, 2265.63, 306.6071))
  Position_SetRadius(node101, 15)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node98, node102)
  Position_SetPosition(node102, MAT_Vector3(2051.791647, 2229.181844, 306.6071))
  Position_SetRadius(node102, 15)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node98, node103)
  Position_SetPosition(node103, MAT_Vector3(2173.606, 2264.417, 306.6071))
  Position_SetRadius(node103, 15)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node98, node104)
  Position_SetPosition(node104, MAT_Vector3(2108.1, 2430.608, 306.6071))
  Position_SetRadius(node104, 15)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node98, node105)
  Position_SetPosition(node105, MAT_Vector3(2172.393, 2618.633, 306.6071))
  Position_SetRadius(node105, 15)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node98, node106)
  Position_SetPosition(node106, MAT_Vector3(2046.233, 2709.613, 306.6071))
  Position_SetRadius(node106, 15)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("NOD_Path", "Crocell_Path3")
  Node_AddSon(node63, node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node107, node108)
  Position_SetPosition(node108, MAT_Vector3(1671.237, 1174.336, 273.6186))
  Position_SetRadius(node108, 5)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node107, node109)
  Position_SetPosition(node109, MAT_Vector3(1722.186, 1407.245, 277.4328))
  Position_SetRadius(node109, 5)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node107, node110)
  Position_SetPosition(node110, MAT_Vector3(1870.18, 1765.101, 284.8998))
  Position_SetRadius(node110, 5)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node107, node111)
  Position_SetPosition(node111, MAT_Vector3(1964.8, 1928.866, 284.9659))
  Position_SetRadius(node111, 5)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("NOD_Path", "Crocell_Path4")
  Node_AddSon(node63, node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node112, node113)
  Position_SetPosition(node113, MAT_Vector3(1921.241313, 1802.621019, 292.8699))
  Position_SetRadius(node113, 5)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node112, node114)
  Position_SetPosition(node114, MAT_Vector3(2218.331, 2012.568, 276.6432))
  Position_SetRadius(node114, 5)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node112, node115)
  Position_SetPosition(node115, MAT_Vector3(1887.585826, 1997.333818, 278.1039))
  Position_SetRadius(node115, 5)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node112, node116)
  Position_SetPosition(node116, MAT_Vector3(2162.388996, 1802.198194, 291.3926))
  Position_SetRadius(node116, 5)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node61, node117)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node61, node118)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node61, node119)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node119, node120)
  Body_SetCS(node120, MAT_Vector3(2182.348, 2976.959, 135), MAT_Vector3(90.06327, 0, 0))
  Node_ParseIniFile(node120, "osd/pla/pla_phobocaster.osd")
  Body_SetFriendOrFoeID(node120, 1)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_vessel", "cra_scout2v2_1")
  Node_AddSon(node119, node121)
  Body_SetCS(node121, MAT_Vector3(1164.613, 2741.722, 372.0382), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node121, "osd/cra/cra_scout2v2.osd")
  Body_SetFriendOrFoeID(node121, 3)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_vessel", "cra_scout2v2_2")
  Node_AddSon(node119, node122)
  Body_SetCS(node122, MAT_Vector3(1069.968, 2910.158, 372.0382), MAT_Vector3(-157.919, 0, 0))
  Node_ParseIniFile(node122, "osd/cra/cra_scout2v2.osd")
  Body_SetFriendOrFoeID(node122, 3)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_vessel", "cra_scout2v2_3")
  Node_AddSon(node119, node123)
  Body_SetCS(node123, MAT_Vector3(1018.434, 2950.761, 372.0382), MAT_Vector3(-157.919, 0, 0))
  Node_ParseIniFile(node123, "osd/cra/cra_scout2v2.osd")
  Body_SetFriendOrFoeID(node123, 3)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_vessel", "cra_scout2v1_1")
  Node_AddSon(node119, node124)
  Body_SetCS(node124, MAT_Vector3(1140.916, 2645.24, 372.0382), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node124, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node124, 3)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_vessel", "cra_scout2v1_2")
  Node_AddSon(node119, node125)
  Body_SetCS(node125, MAT_Vector3(1060.85, 2624.691, 242.7271), MAT_Vector3(-6.994674, 0, 0))
  Node_ParseIniFile(node125, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node125, 3)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_vessel", "cra_scout2v1_3")
  Node_AddSon(node119, node126)
  Body_SetCS(node126, MAT_Vector3(913.6954, 2664.76, 372.0382), MAT_Vector3(-21.59836, 0, 0))
  Node_ParseIniFile(node126, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node126, 3)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, -1, 0)
  Body_SetCargoKey(node126, -1, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_vessel", "cra_scout2v1_4")
  Node_AddSon(node119, node127)
  Body_SetCS(node127, MAT_Vector3(878.5583, 2699.897, 372.0382), MAT_Vector3(-21.59836, 0, 0))
  Node_ParseIniFile(node127, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node127, 3)
  Body_SetNameKey(node127, -1)
  Body_SetCargoKey(node127, -1, 0)
  Body_SetCargoKey(node127, -1, 1)
  Body_SetCargoKey(node127, -1, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_vessel", "cra_bomber_1")
  Node_AddSon(node119, node128)
  Body_SetCS(node128, MAT_Vector3(1051.241, 2725.573, 372.0382), MAT_Vector3(-23.59239, 0, 0))
  Node_ParseIniFile(node128, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node128, 3)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, -1, 0)
  Body_SetCargoKey(node128, -1, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_vessel", "cra_bomber_2")
  Node_AddSon(node119, node129)
  Body_SetCS(node129, MAT_Vector3(932.4827, 2879.196, 372.0382), MAT_Vector3(-83.15284, 0, 0))
  Node_ParseIniFile(node129, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node129, 3)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_vessel", "cra_fregatte_1")
  Node_AddSon(node119, node130)
  Body_SetCS(node130, MAT_Vector3(981.3999, 2697.502, 383.4059), MAT_Vector3(-149.1748, 0, 0))
  Node_ParseIniFile(node130, "osd/cra/cra_fregatte.osd")
  Body_SetFriendOrFoeID(node130, 3)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_vessel", "cra_tursas_1")
  Node_AddSon(node119, node131)
  Body_SetCS(node131, MAT_Vector3(1244.978, 2620.061, 297.8461), MAT_Vector3(-45.45181, 0, 0))
  Node_ParseIniFile(node131, "osd/cra/cra_tursas.osd")
  Body_SetFriendOrFoeID(node131, 3)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_vessel", "wng_harper_c6_1")
  Node_AddSon(node119, node132)
  Body_SetCS(node132, MAT_Vector3(2177.145, 3016.584, 343.6874), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node132, "osd/wng/wng_harper_c6.osd")
  Body_SetFriendOrFoeID(node132, 2)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_vessel", "wng_bonham_6h3_1")
  Node_AddSon(node119, node133)
  Body_SetCS(node133, MAT_Vector3(2009.36, 2938.516, 443.6782), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node133, "osd/wng/wng_bonham_6h3.osd")
  Body_SetFriendOrFoeID(node133, 2)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, -1, 0)
  Body_SetCargoKey(node133, -1, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_vessel", "wng_chaka_c6_1")
  Node_AddSon(node119, node134)
  Body_SetCS(node134, MAT_Vector3(1114.321, 2765.124, 358.8065), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node134, "osd/wng/wng_chaka_c6.osd")
  Body_SetFriendOrFoeID(node134, 2)
  Body_SetNameKey(node134, -1)
  Body_SetCargoKey(node134, -1, 0)
  Body_SetCargoKey(node134, -1, 1)
  Body_SetCargoKey(node134, -1, 2)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_vessel", "SG1_schax_head")
  Node_AddSon(node119, node135)
  Body_SetCS(node135, MAT_Vector3(1036.981, 3299.955, 343.5228), MAT_Vector3(-41.56629, 0, 0))
  Node_ParseIniFile(node135, "osd/old/old_schax_head.osd")
  Body_SetFriendOrFoeID(node135, 5)
  Body_SetNameKey(node135, -1)
  Body_SetCargoKey(node135, -1, 0)
  Body_SetCargoKey(node135, -1, 1)
  Body_SetCargoKey(node135, -1, 2)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("NOD_Directory", "SchaxGroup_1")
  Node_AddSon(node119, node136)
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_vessel", "SG1_schax_booster_1")
  Node_AddSon(node136, node137)
  Body_SetCS(node137, MAT_Vector3(1060.457, 3273.57, 343.5228), MAT_Vector3(179.498, 0, 0))
  Node_ParseIniFile(node137, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node137, 5)
  Body_SetNameKey(node137, -1)
  Body_SetCargoKey(node137, -1, 0)
  Body_SetCargoKey(node137, -1, 1)
  Body_SetCargoKey(node137, -1, 2)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_vessel", "SG1_schax_seed_1")
  Node_AddSon(node136, node138)
  Body_SetCS(node138, MAT_Vector3(1020.033, 3265.364, 421.5125), MAT_Vector3(179.3276, 0, 0))
  Node_ParseIniFile(node138, "osd/old/old_schax_seed.osd")
  Body_SetFriendOrFoeID(node138, 5)
  Body_SetNameKey(node138, -1)
  Body_SetCargoKey(node138, -1, 0)
  Body_SetCargoKey(node138, -1, 1)
  Body_SetCargoKey(node138, -1, 2)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_vessel", "SG1_schax_seed_2")
  Node_AddSon(node136, node139)
  Body_SetCS(node139, MAT_Vector3(1050.512, 3242.906, 421.5125), MAT_Vector3(179.3276, 0, 0))
  Node_ParseIniFile(node139, "osd/old/old_schax_seed.osd")
  Body_SetFriendOrFoeID(node139, 5)
  Body_SetNameKey(node139, -1)
  Body_SetCargoKey(node139, -1, 0)
  Body_SetCargoKey(node139, -1, 1)
  Body_SetCargoKey(node139, -1, 2)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_vessel", "SG1_schax_seed_3")
  Node_AddSon(node136, node140)
  Body_SetCS(node140, MAT_Vector3(981.5334, 3246.114, 421.5125), MAT_Vector3(179.3276, 0, 0))
  Node_ParseIniFile(node140, "osd/old/old_schax_seed.osd")
  Body_SetFriendOrFoeID(node140, 5)
  Body_SetNameKey(node140, -1)
  Body_SetCargoKey(node140, -1, 0)
  Body_SetCargoKey(node140, -1, 1)
  Body_SetCargoKey(node140, -1, 2)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("nod_vessel", "SG1_schax_lighteater_1")
  Node_AddSon(node136, node141)
  Body_SetCS(node141, MAT_Vector3(1385.919, 3081.082, 421.5125), MAT_Vector3(151.9753, 0, 0))
  Node_ParseIniFile(node141, "osd/old/old_schax_lighteater.osd")
  Body_SetFriendOrFoeID(node141, 0)
  Body_SetNameKey(node141, -1)
  Body_SetCargoKey(node141, -1, 0)
  Body_SetCargoKey(node141, -1, 1)
  Body_SetCargoKey(node141, -1, 2)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("nod_vessel", "SG1_schax_raider_1")
  Node_AddSon(node136, node142)
  Body_SetCS(node142, MAT_Vector3(1075.589, 3138.256, 421.5125), MAT_Vector3(-175.4606, 0, 0))
  Node_ParseIniFile(node142, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node142, 5)
  Body_SetNameKey(node142, -1)
  Body_SetCargoKey(node142, -1, 0)
  Body_SetCargoKey(node142, -1, 1)
  Body_SetCargoKey(node142, -1, 2)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("nod_vessel", "SG2_schax_head")
  Node_AddSon(node119, node143)
  Body_SetCS(node143, MAT_Vector3(1337.599, 3198.448, 343.5228), MAT_Vector3(-123.5138, 0, 0))
  Node_ParseIniFile(node143, "osd/old/old_schax_head.osd")
  Body_SetFriendOrFoeID(node143, 5)
  Body_SetNameKey(node143, -1)
  Body_SetCargoKey(node143, -1, 0)
  Body_SetCargoKey(node143, -1, 1)
  Body_SetCargoKey(node143, -1, 2)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Directory", "SchaxGroup_2")
  Node_AddSon(node119, node144)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("nod_vessel", "SG2_schax_bang_1")
  Node_AddSon(node144, node145)
  Body_SetCS(node145, MAT_Vector3(1296.97, 3159.284, 343.5228), MAT_Vector3(150.931, 0, 0))
  Node_ParseIniFile(node145, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node145, 5)
  Body_SetNameKey(node145, -1)
  Body_SetCargoKey(node145, -1, 0)
  Body_SetCargoKey(node145, -1, 1)
  Body_SetCargoKey(node145, -1, 2)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("nod_vessel", "SG2_schax_bang_2")
  Node_AddSon(node144, node146)
  Body_SetCS(node146, MAT_Vector3(1303.387, 3200.992, 343.5228), MAT_Vector3(150.931, 0, 0))
  Node_ParseIniFile(node146, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node146, 5)
  Body_SetNameKey(node146, -1)
  Body_SetCargoKey(node146, -1, 0)
  Body_SetCargoKey(node146, -1, 1)
  Body_SetCargoKey(node146, -1, 2)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("nod_vessel", "SG2_schax_bang_3")
  Node_AddSon(node144, node147)
  Body_SetCS(node147, MAT_Vector3(1357.928, 3165.701, 343.5228), MAT_Vector3(150.931, 0, 0))
  Node_ParseIniFile(node147, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node147, 5)
  Body_SetNameKey(node147, -1)
  Body_SetCargoKey(node147, -1, 0)
  Body_SetCargoKey(node147, -1, 1)
  Body_SetCargoKey(node147, -1, 2)
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("nod_vessel", "SG2_schax_raider_1")
  Node_AddSon(node144, node148)
  Body_SetCS(node148, MAT_Vector3(1316.083, 3129.667, 421.5125), MAT_Vector3(139.4636, 0, 0))
  Node_ParseIniFile(node148, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node148, 5)
  Body_SetNameKey(node148, -1)
  Body_SetCargoKey(node148, -1, 0)
  Body_SetCargoKey(node148, -1, 1)
  Body_SetCargoKey(node148, -1, 2)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("nod_vessel", "SG2_schax_raider_2")
  Node_AddSon(node144, node149)
  Body_SetCS(node149, MAT_Vector3(1360.999, 3078.334, 421.5125), MAT_Vector3(139.4636, 0, 0))
  Node_ParseIniFile(node149, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node149, 5)
  Body_SetNameKey(node149, -1)
  Body_SetCargoKey(node149, -1, 0)
  Body_SetCargoKey(node149, -1, 1)
  Body_SetCargoKey(node149, -1, 2)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("nod_vessel", "SG2_schax_raider_3")
  Node_AddSon(node144, node150)
  Body_SetCS(node150, MAT_Vector3(1311.271, 3076.73, 421.5125), MAT_Vector3(139.4636, 0, 0))
  Node_ParseIniFile(node150, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node150, 5)
  Body_SetNameKey(node150, -1)
  Body_SetCargoKey(node150, -1, 0)
  Body_SetCargoKey(node150, -1, 1)
  Body_SetCargoKey(node150, -1, 2)
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("nod_vessel", "SG2_schax_seed_2")
  Node_AddSon(node144, node151)
  Body_SetCS(node151, MAT_Vector3(1258.211, 3125.782, 421.5125), MAT_Vector3(125.725, 0, 0))
  Node_ParseIniFile(node151, "osd/old/old_schax_seed.osd")
  Body_SetFriendOrFoeID(node151, 5)
  Body_SetNameKey(node151, -1)
  Body_SetCargoKey(node151, -1, 0)
  Body_SetCargoKey(node151, -1, 1)
  Body_SetCargoKey(node151, -1, 2)
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("nod_vessel", "SG3_schax_head")
  Node_AddSon(node119, node152)
  Body_SetCS(node152, MAT_Vector3(1166.598, 3246.078, 343.5228), MAT_Vector3(-148.2033, 0, 0))
  Node_ParseIniFile(node152, "osd/old/old_schax_head.osd")
  Body_SetFriendOrFoeID(node152, 5)
  Body_SetNameKey(node152, -1)
  Body_SetCargoKey(node152, -1, 0)
  Body_SetCargoKey(node152, -1, 1)
  Body_SetCargoKey(node152, -1, 2)
  Node_EnterSimulation(node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Directory", "SchaxGroup_3")
  Node_AddSon(node119, node153)
  Node_EnterSimulation(node153)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("nod_vessel", "SG3_schax_bang_1")
  Node_AddSon(node153, node154)
  Body_SetCS(node154, MAT_Vector3(1094.847, 3172.117, 343.5228), MAT_Vector3(-176.7475, 0, 0))
  Node_ParseIniFile(node154, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node154, 5)
  Body_SetNameKey(node154, -1)
  Body_SetCargoKey(node154, -1, 0)
  Body_SetCargoKey(node154, -1, 1)
  Body_SetCargoKey(node154, -1, 2)
  Node_EnterSimulation(node154)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("nod_vessel", "SG3_schax_bang_2")
  Node_AddSon(node153, node155)
  Body_SetCS(node155, MAT_Vector3(1119.098, 3143.701, 343.5228), MAT_Vector3(173.2007, 0, 0))
  Node_ParseIniFile(node155, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node155, 5)
  Body_SetNameKey(node155, -1)
  Body_SetCargoKey(node155, -1, 0)
  Body_SetCargoKey(node155, -1, 1)
  Body_SetCargoKey(node155, -1, 2)
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("nod_vessel", "SG3_schax_booster_1")
  Node_AddSon(node153, node156)
  Body_SetCS(node156, MAT_Vector3(1133.854, 3165.816, 343.5228), MAT_Vector3(179.0718, 0, 0))
  Node_ParseIniFile(node156, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node156, 5)
  Body_SetNameKey(node156, -1)
  Body_SetCargoKey(node156, -1, 0)
  Body_SetCargoKey(node156, -1, 1)
  Body_SetCargoKey(node156, -1, 2)
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("nod_vessel", "SG3_schax_booster_2")
  Node_AddSon(node153, node157)
  Body_SetCS(node157, MAT_Vector3(1172.115, 3163.474, 343.5228), MAT_Vector3(-169.399, 0, 0))
  Node_ParseIniFile(node157, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node157, 5)
  Body_SetNameKey(node157, -1)
  Body_SetCargoKey(node157, -1, 0)
  Body_SetCargoKey(node157, -1, 1)
  Body_SetCargoKey(node157, -1, 2)
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("nod_vessel", "SG3_schax_raider_1")
  Node_AddSon(node153, node158)
  Body_SetCS(node158, MAT_Vector3(1075.589, 3138.256, 421.5125), MAT_Vector3(-175.4606, 0, 0))
  Node_ParseIniFile(node158, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node158, 5)
  Body_SetNameKey(node158, -1)
  Body_SetCargoKey(node158, -1, 0)
  Body_SetCargoKey(node158, -1, 1)
  Body_SetCargoKey(node158, -1, 2)
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("nod_vessel", "SG3_schax_raider_2")
  Node_AddSon(node153, node159)
  Body_SetCS(node159, MAT_Vector3(1124.781, 3195.256, 421.5125), MAT_Vector3(-178.0559, 0, 0))
  Node_ParseIniFile(node159, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node159, 5)
  Body_SetNameKey(node159, -1)
  Body_SetCargoKey(node159, -1, 0)
  Body_SetCargoKey(node159, -1, 1)
  Body_SetCargoKey(node159, -1, 2)
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("nod_vessel", "SG3_schax_seed_1")
  Node_AddSon(node153, node160)
  Body_SetCS(node160, MAT_Vector3(1148.87, 3214.611, 421.5125), MAT_Vector3(179.0975, 0, 0))
  Node_ParseIniFile(node160, "osd/old/old_schax_seed.osd")
  Body_SetFriendOrFoeID(node160, 5)
  Body_SetNameKey(node160, -1)
  Body_SetCargoKey(node160, -1, 0)
  Body_SetCargoKey(node160, -1, 1)
  Body_SetCargoKey(node160, -1, 2)
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("nod_vessel", "SG3_schax_seed_2")
  Node_AddSon(node153, node161)
  Body_SetCS(node161, MAT_Vector3(1065.321, 3186.501, 421.5125), MAT_Vector3(-166.8143, 0, 0))
  Node_ParseIniFile(node161, "osd/old/old_schax_seed.osd")
  Body_SetFriendOrFoeID(node161, 5)
  Body_SetNameKey(node161, -1)
  Body_SetCargoKey(node161, -1, 0)
  Body_SetCargoKey(node161, -1, 1)
  Body_SetCargoKey(node161, -1, 2)
  Node_EnterSimulation(node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("nod_vessel", "SG3_schax_seed_3")
  Node_AddSon(node153, node162)
  Body_SetCS(node162, MAT_Vector3(1091.869, 3213.83, 421.5125), MAT_Vector3(-162.6152, 0, 0))
  Node_ParseIniFile(node162, "osd/old/old_schax_seed.osd")
  Body_SetFriendOrFoeID(node162, 5)
  Body_SetNameKey(node162, -1)
  Body_SetCargoKey(node162, -1, 0)
  Body_SetCargoKey(node162, -1, 1)
  Body_SetCargoKey(node162, -1, 2)
  Node_EnterSimulation(node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("nod_vessel", "SG4_schax_head")
  Node_AddSon(node119, node163)
  Body_SetCS(node163, MAT_Vector3(1395.38, 3120.365, 343.5228), MAT_Vector3(-148.2033, 0, 0))
  Node_ParseIniFile(node163, "osd/old/old_schax_head.osd")
  Body_SetFriendOrFoeID(node163, 5)
  Body_SetNameKey(node163, -1)
  Body_SetCargoKey(node163, -1, 0)
  Body_SetCargoKey(node163, -1, 1)
  Body_SetCargoKey(node163, -1, 2)
  Node_EnterSimulation(node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Directory", "SchaxGroup_4")
  Node_AddSon(node119, node164)
  Node_EnterSimulation(node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("nod_vessel", "SG4_schax_bang_1")
  Node_AddSon(node164, node165)
  Body_SetCS(node165, MAT_Vector3(1357.204, 3083.884, 343.5228), MAT_Vector3(136.6758, 0, 0))
  Node_ParseIniFile(node165, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node165, 5)
  Body_SetNameKey(node165, -1)
  Body_SetCargoKey(node165, -1, 0)
  Body_SetCargoKey(node165, -1, 1)
  Body_SetCargoKey(node165, -1, 2)
  Node_EnterSimulation(node165)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("nod_vessel", "SG4_schax_booster_1")
  Node_AddSon(node164, node166)
  Body_SetCS(node166, MAT_Vector3(1413.389, 3061.966, 343.5228), MAT_Vector3(143.6204, 0, 0))
  Node_ParseIniFile(node166, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node166, 5)
  Body_SetNameKey(node166, -1)
  Body_SetCargoKey(node166, -1, 0)
  Body_SetCargoKey(node166, -1, 1)
  Body_SetCargoKey(node166, -1, 2)
  Node_EnterSimulation(node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("nod_vessel", "SG4_schax_booster_2")
  Node_AddSon(node164, node167)
  Body_SetCS(node167, MAT_Vector3(1370.444, 3134.583, 343.5228), MAT_Vector3(114.4156, 0, 0))
  Node_ParseIniFile(node167, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node167, 5)
  Body_SetNameKey(node167, -1)
  Body_SetCargoKey(node167, -1, 0)
  Body_SetCargoKey(node167, -1, 1)
  Body_SetCargoKey(node167, -1, 2)
  Node_EnterSimulation(node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("nod_vessel", "SG4_schax_raider_1")
  Node_AddSon(node164, node168)
  Body_SetCS(node168, MAT_Vector3(1473.81, 3042.995, 421.5125), MAT_Vector3(135.9572, 0, 0))
  Node_ParseIniFile(node168, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node168, 5)
  Body_SetNameKey(node168, -1)
  Body_SetCargoKey(node168, -1, 0)
  Body_SetCargoKey(node168, -1, 1)
  Body_SetCargoKey(node168, -1, 2)
  Node_EnterSimulation(node168)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("nod_vessel", "SG4_schax_seed_1")
  Node_AddSon(node164, node169)
  Body_SetCS(node169, MAT_Vector3(1434.652, 3093.583, 421.5125), MAT_Vector3(145.6885, 0, 0))
  Node_ParseIniFile(node169, "osd/old/old_schax_seed.osd")
  Body_SetFriendOrFoeID(node169, 5)
  Body_SetNameKey(node169, -1)
  Body_SetCargoKey(node169, -1, 0)
  Body_SetCargoKey(node169, -1, 1)
  Body_SetCargoKey(node169, -1, 2)
  Node_EnterSimulation(node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("nod_vessel", "SG4_schax_seed_2")
  Node_AddSon(node164, node170)
  Body_SetCS(node170, MAT_Vector3(1334.706, 3142.775, 421.5125), MAT_Vector3(138.7373, 0, 0))
  Node_ParseIniFile(node170, "osd/old/old_schax_seed.osd")
  Body_SetFriendOrFoeID(node170, 5)
  Body_SetNameKey(node170, -1)
  Body_SetCargoKey(node170, -1, 0)
  Body_SetCargoKey(node170, -1, 1)
  Body_SetCargoKey(node170, -1, 2)
  Node_EnterSimulation(node170)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("nod_vessel", "SG4_schax_lighteater_1")
  Node_AddSon(node164, node171)
  Body_SetCS(node171, MAT_Vector3(1385.919, 3081.082, 421.5125), MAT_Vector3(151.9753, 0, 0))
  Node_ParseIniFile(node171, "osd/old/old_schax_lighteater.osd")
  Body_SetFriendOrFoeID(node171, 0)
  Body_SetNameKey(node171, -1)
  Body_SetCargoKey(node171, -1, 0)
  Body_SetCargoKey(node171, -1, 1)
  Body_SetCargoKey(node171, -1, 2)
  Node_EnterSimulation(node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("nod_vessel", "SG4_schax_lighteater_2")
  Node_AddSon(node164, node172)
  Body_SetCS(node172, MAT_Vector3(1451.594, 3033.776, 421.5125), MAT_Vector3(149.725, 0, 0))
  Node_ParseIniFile(node172, "osd/old/old_schax_lighteater.osd")
  Body_SetFriendOrFoeID(node172, 0)
  Body_SetNameKey(node172, -1)
  Body_SetCargoKey(node172, -1, 0)
  Body_SetCargoKey(node172, -1, 1)
  Body_SetCargoKey(node172, -1, 2)
  Node_EnterSimulation(node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("nod_vessel", "SG4_schax_lighteater_3")
  Node_AddSon(node164, node173)
  Body_SetCS(node173, MAT_Vector3(1351.256, 3124.232, 421.5125), MAT_Vector3(136.1236, 0, 0))
  Node_ParseIniFile(node173, "osd/old/old_schax_lighteater.osd")
  Body_SetFriendOrFoeID(node173, 0)
  Body_SetNameKey(node173, -1)
  Body_SetCargoKey(node173, -1, 0)
  Body_SetCargoKey(node173, -1, 1)
  Body_SetCargoKey(node173, -1, 2)
  Node_EnterSimulation(node173)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("nod_vessel", "atl_scout1_1")
  Node_AddSon(node119, node174)
  Body_SetCS(node174, MAT_Vector3(808.4844, 2926.238, 421.5125), MAT_Vector3(-80.39225, 0, 0))
  Node_ParseIniFile(node174, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node174, 0)
  Body_SetNameKey(node174, -1)
  Body_SetCargoKey(node174, -1, 0)
  Body_SetCargoKey(node174, -1, 1)
  Body_SetCargoKey(node174, -1, 2)
  Node_EnterSimulation(node174)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("nod_vessel", "atl_scout1_2")
  Node_AddSon(node119, node175)
  Body_SetCS(node175, MAT_Vector3(1256.043, 2744.969, 421.5125), MAT_Vector3(86.81464, 0, 0))
  Node_ParseIniFile(node175, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node175, 0)
  Body_SetNameKey(node175, -1)
  Body_SetCargoKey(node175, -1, 0)
  Body_SetCargoKey(node175, -1, 1)
  Body_SetCargoKey(node175, -1, 2)
  Node_EnterSimulation(node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("nod_vessel", "atl_scout2_1")
  Node_AddSon(node119, node176)
  Body_SetCS(node176, MAT_Vector3(1102.044, 2958.321, 421.5125), MAT_Vector3(-153.493, 0, 0))
  Node_ParseIniFile(node176, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node176, 0)
  Body_SetNameKey(node176, -1)
  Body_SetCargoKey(node176, -1, 0)
  Body_SetCargoKey(node176, -1, 1)
  Body_SetCargoKey(node176, -1, 2)
  Node_EnterSimulation(node176)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("nod_vessel", "atl_scout2_2")
  Node_AddSon(node119, node177)
  Body_SetCS(node177, MAT_Vector3(1105.948, 2634.279, 421.5125), MAT_Vector3(-5.845474, 0, 0))
  Node_ParseIniFile(node177, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node177, 0)
  Body_SetNameKey(node177, -1)
  Body_SetCargoKey(node177, -1, 0)
  Body_SetCargoKey(node177, -1, 1)
  Body_SetCargoKey(node177, -1, 2)
  Node_EnterSimulation(node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("nod_vessel", "atl_scout2_3")
  Node_AddSon(node119, node178)
  Body_SetCS(node178, MAT_Vector3(916.658, 2682.404, 421.5125), MAT_Vector3(-5.845474, 0, 0))
  Node_ParseIniFile(node178, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node178, 0)
  Body_SetNameKey(node178, -1)
  Body_SetCargoKey(node178, -1, 0)
  Body_SetCargoKey(node178, -1, 1)
  Body_SetCargoKey(node178, -1, 2)
  Node_EnterSimulation(node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("nod_physicalcharacter", "old_crocell_1")
  Node_AddSon(node119, node179)
  Body_SetCS(node179, MAT_Vector3(986.435559, 3318.643802, 359.5727), MAT_Vector3(179.8113, 0, 0))
  Node_ParseIniFile(node179, "osd/old/old_crocell.osd")
  Body_SetFriendOrFoeID(node179, 5)
  Node_EnterSimulation(node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("nod_physicalcharacter", "old_marax_1")
  Node_AddSon(node119, node180)
  Body_SetCS(node180, MAT_Vector3(1230.8, 3195.005, 475.5707), MAT_Vector3(161.8811, 0, 0))
  Node_ParseIniFile(node180, "osd/old/old_marax.osd")
  Body_SetFriendOrFoeID(node180, 5)
  Node_EnterSimulation(node180)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_1")
  Node_AddSon(node119, node181)
  Body_SetPosition(node181, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node181, 150)
  Node_ParseIniFile(node181, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node181)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_2")
  Node_AddSon(node119, node182)
  Body_SetPosition(node182, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node182, 150)
  Node_ParseIniFile(node182, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("nod_vessel", "cra_tursas_6h3_1")
  Node_AddSon(node119, node183)
  Body_SetCS(node183, MAT_Vector3(1446.806, 2750.321, 270.0416), MAT_Vector3(-74.07903, 0, 0))
  Node_ParseIniFile(node183, "osd/cra/cra_tursas_6h3.osd")
  Body_SetFriendOrFoeID(node183, 6)
  Body_SetNameKey(node183, -1)
  Body_SetCargoKey(node183, -1, 0)
  Body_SetCargoKey(node183, -1, 1)
  Body_SetCargoKey(node183, -1, 2)
  Node_EnterSimulation(node183)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("nod_vessel", "atl_ghost_1")
  Node_AddSon(node119, node184)
  Body_SetCS(node184, MAT_Vector3(1608.314, 3095.746, 300.4484), MAT_Vector3(163.9874, 0, 0))
  Node_ParseIniFile(node184, "osd/atl/atl_ghost.osd")
  Body_SetFriendOrFoeID(node184, 4)
  Body_SetNameKey(node184, -1)
  Body_SetCargoKey(node184, -1, 0)
  Body_SetCargoKey(node184, -1, 1)
  Body_SetCargoKey(node184, -1, 2)
  Node_EnterSimulation(node184)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("nod_vessel", "sool_scout2_1")
  Node_AddSon(node119, node185)
  Body_SetCS(node185, MAT_Vector3(1853.199484, 2459.251908, 273.9253), MAT_Vector3(-167.6209, 0, 0))
  Node_ParseIniFile(node185, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node185, 4)
  Body_SetNameKey(node185, -1)
  Body_SetCargoKey(node185, -1, 0)
  Body_SetCargoKey(node185, -1, 1)
  Body_SetCargoKey(node185, -1, 2)
  Node_EnterSimulation(node185)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("nod_vessel", "sool_scout2_2")
  Node_AddSon(node119, node186)
  Body_SetCS(node186, MAT_Vector3(2037.559383, 2358.314228, 273.9253), MAT_Vector3(21.790044, 0, 0))
  Node_ParseIniFile(node186, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node186, 4)
  Body_SetNameKey(node186, -1)
  Body_SetCargoKey(node186, -1, 0)
  Body_SetCargoKey(node186, -1, 1)
  Body_SetCargoKey(node186, -1, 2)
  Node_EnterSimulation(node186)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("nod_vessel", "sool_scout2_3")
  Node_AddSon(node119, node187)
  Body_SetCS(node187, MAT_Vector3(2255.195155, 2488.380209, 273.9253), MAT_Vector3(-162.3491, 0, 0))
  Node_ParseIniFile(node187, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node187, 4)
  Body_SetNameKey(node187, -1)
  Body_SetCargoKey(node187, -1, 0)
  Body_SetCargoKey(node187, -1, 1)
  Body_SetCargoKey(node187, -1, 2)
  Node_EnterSimulation(node187)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("nod_waypoint", "nav_waypoint_follow_1")
  Node_AddSon(node119, node188)
  Body_SetPosition(node188, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node188, 250)
  Node_ParseIniFile(node188, "osd/nav/nav_waypoint_follow.osd")
  Node_EnterSimulation(node188)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node189)
  Camera_SetBackPlane(node189, 512)
  Node_EnterSimulation(node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Scenario", "IngameSequences")
  Node_AddSon(node0, node190)
  Node_EnterSimulation(node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node190, node191)
  Node_EnterSimulation(node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node190, node192)
  Node_EnterSimulation(node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Path", "PlayerPath_1")
  Node_AddSon(node192, node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node193, node194)
  Position_SetPosition(node194, MAT_Vector3(2153.244248, 2977.270367, 140))
  Position_SetRadius(node194, 5)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node193, node195)
  Position_SetPosition(node195, MAT_Vector3(2037.161751, 2977.650435, 140))
  Position_SetRadius(node195, 5)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node193, node196)
  Position_SetPosition(node196, MAT_Vector3(1953.516875, 2977.306818, 140))
  Position_SetRadius(node196, 5)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node193, node197)
  Position_SetPosition(node197, MAT_Vector3(1881.722794, 2976.546681, 140))
  Position_SetRadius(node197, 5)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node193, node198)
  Position_SetPosition(node198, MAT_Vector3(1790.03579, 2901.314176, 140))
  Position_SetRadius(node198, 5)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node193, node199)
  Position_SetPosition(node199, MAT_Vector3(1789.777049, 2838.11288, 140))
  Position_SetRadius(node199, 5)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("NOD_Path", "PlayerPath_2")
  Node_AddSon(node192, node200)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node200, node201)
  Position_SetPosition(node201, MAT_Vector3(1774.646339, 3053.615342, 245))
  Position_SetRadius(node201, 5)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node200, node202)
  Position_SetPosition(node202, MAT_Vector3(1561.01232, 2973.152704, 245))
  Position_SetRadius(node202, 5)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node192, node203)
  Position_SetPosition(node203, MAT_Vector3(1980.849773, 2972.145314, 124.392679))
  Position_SetRadius(node203, 5)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("NOD_Position", "LookFrom_2")
  Node_AddSon(node192, node204)
  Position_SetPosition(node204, MAT_Vector3(1280.327473, 2575.64951, 295.829864))
  Position_SetRadius(node204, 5)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("NOD_Position", "LookFrom_3")
  Node_AddSon(node192, node205)
  Position_SetPosition(node205, MAT_Vector3(1183.504723, 2946.541788, 295.8299))
  Position_SetRadius(node205, 5)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("NOD_Position", "LookFrom_4")
  Node_AddSon(node192, node206)
  Position_SetPosition(node206, MAT_Vector3(1821.209262, 3071.346025, 250))
  Position_SetRadius(node206, 5)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("NOD_Position", "LookFrom_5")
  Node_AddSon(node192, node207)
  Position_SetPosition(node207, MAT_Vector3(1604.920526, 2990.921044, 250))
  Position_SetRadius(node207, 5)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("NOD_Position", "LookFrom_6")
  Node_AddSon(node192, node208)
  Position_SetPosition(node208, MAT_Vector3(1248.864339, 2673.906105, 321.065904))
  Position_SetRadius(node208, 5)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("NOD_Path", "CrocellPath_C2_1")
  Node_AddSon(node192, node209)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node209, node210)
  Position_SetPosition(node210, MAT_Vector3(1181.713391, 2664.536206, 323.625626))
  Position_SetRadius(node210, 5)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node209, node211)
  Position_SetPosition(node211, MAT_Vector3(1491.700905, 2342.055492, 279.960448))
  Position_SetRadius(node211, 5)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node209, node212)
  Position_SetPosition(node212, MAT_Vector3(1533.217679, 1912.600786, 275.196294))
  Position_SetRadius(node212, 5)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("NOD_Path", "PlayerPath_3")
  Node_AddSon(node192, node213)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node213, node214)
  Position_SetPosition(node214, MAT_Vector3(1037.54471, 3000.151601, 344.21618))
  Position_SetRadius(node214, 5)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node213, node215)
  Position_SetPosition(node215, MAT_Vector3(1122.564806, 2884.652602, 323.242203))
  Position_SetRadius(node215, 5)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node213, node216)
  Position_SetPosition(node216, MAT_Vector3(1181.918458, 2809.257423, 321.755419))
  Position_SetRadius(node216, 5)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node213, node217)
  Position_SetPosition(node217, MAT_Vector3(1223.62643, 2677.716897, 322.973763))
  Position_SetRadius(node217, 5)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node213, node218)
  Position_SetPosition(node218, MAT_Vector3(1518.790536, 2364.90711, 260.740016))
  Position_SetRadius(node218, 5)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node213, node219)
  Position_SetPosition(node219, MAT_Vector3(1562.938873, 1952.380352, 265.096784))
  Position_SetRadius(node219, 5)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("NOD_Path", "PlayerPath_4")
  Node_AddSon(node192, node220)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node220, node221)
  Position_SetPosition(node221, MAT_Vector3(1569.620612, 1826.361492, 310.874537))
  Position_SetRadius(node221, 5)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node220, node222)
  Position_SetPosition(node222, MAT_Vector3(1564.768328, 1729.315806, 290.922002))
  Position_SetRadius(node222, 5)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("NOD_Path", "BonhamPath_C2_1")
  Node_AddSon(node192, node223)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node223, node224)
  Position_SetPosition(node224, MAT_Vector3(1167.088502, 2910.332587, 344.2162))
  Position_SetRadius(node224, 5)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node223, node225)
  Position_SetPosition(node225, MAT_Vector3(1183.678222, 2860.74948, 323.2422))
  Position_SetRadius(node225, 5)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node223, node226)
  Position_SetPosition(node226, MAT_Vector3(1213.083602, 2820.278981, 321.7554))
  Position_SetRadius(node226, 5)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node223, node227)
  Position_SetPosition(node227, MAT_Vector3(1252.511192, 2689.499118, 322.9738))
  Position_SetRadius(node227, 5)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node223, node228)
  Position_SetPosition(node228, MAT_Vector3(1546.155919, 2377.829323, 278.0382))
  Position_SetRadius(node228, 5)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node223, node229)
  Position_SetPosition(node229, MAT_Vector3(1410.072382, 2534.852629, 282.231284))
  Position_SetRadius(node229, 5)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("NOD_Position", "LookFrom_7")
  Node_AddSon(node192, node230)
  Position_SetPosition(node230, MAT_Vector3(1561.258937, 2340.983099, 282.10458))
  Position_SetRadius(node230, 5)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("NOD_Path", "CrocellPath_C2_2")
  Node_AddSon(node192, node231)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node231, node232)
  Position_SetPosition(node232, MAT_Vector3(1324.973798, 1168.193938, 252.868941))
  Position_SetRadius(node232, 5)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node231, node233)
  Position_SetPosition(node233, MAT_Vector3(1416.377543, 1348.462435, 268.419444))
  Position_SetRadius(node233, 5)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("NOD_Position", "LookFrom_8")
  Node_AddSon(node192, node234)
  Position_SetPosition(node234, MAT_Vector3(1601.937568, 2776.399856, 233.537541))
  Position_SetRadius(node234, 5)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("NOD_Position", "LookFrom_9")
  Node_AddSon(node192, node235)
  Position_SetPosition(node235, MAT_Vector3(1524.33727, 2765.190492, 283.009013))
  Position_SetRadius(node235, 5)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("NOD_Path", "BonhamPath_C3_1")
  Node_AddSon(node192, node236)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node236, node237)
  Position_SetPosition(node237, MAT_Vector3(1538.308849, 2798.048791, 280.613741))
  Position_SetRadius(node237, 5)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node236, node238)
  Position_SetPosition(node238, MAT_Vector3(1497.064435, 2823.523282, 275.046101))
  Position_SetRadius(node238, 5)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("NOD_Path", "PlayerPath_5")
  Node_AddSon(node192, node239)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node239, node240)
  Position_SetPosition(node240, MAT_Vector3(1711.059056, 1014.840034, 225))
  Position_SetRadius(node240, 5)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node239, node241)
  Position_SetPosition(node241, MAT_Vector3(1718.704221, 1483.198537, 225))
  Position_SetRadius(node241, 5)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node239, node242)
  Position_SetPosition(node242, MAT_Vector3(1750.244063, 1861.676647, 225))
  Position_SetRadius(node242, 5)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("NOD_Position", "LookFrom_10")
  Node_AddSon(node192, node243)
  Position_SetPosition(node243, MAT_Vector3(1692.016662, 1127.768773, 230))
  Position_SetRadius(node243, 5)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("NOD_Position", "LookFrom_11")
  Node_AddSon(node192, node244)
  Position_SetPosition(node244, MAT_Vector3(1700.508496, 1485.624905, 230))
  Position_SetRadius(node244, 5)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("NOD_Position", "LookFrom_12")
  Node_AddSon(node192, node245)
  Position_SetPosition(node245, MAT_Vector3(1716.277921, 1708.830039, 230))
  Position_SetRadius(node245, 5)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("NOD_Path", "PlayerPath_6")
  Node_AddSon(node192, node246)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node246, node247)
  Position_SetPosition(node247, MAT_Vector3(1891.532577, 2462.495796, 220))
  Position_SetRadius(node247, 5)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node246, node248)
  Position_SetPosition(node248, MAT_Vector3(1724.452872, 2473.615588, 220))
  Position_SetRadius(node248, 5)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node246, node249)
  Position_SetPosition(node249, MAT_Vector3(1604.03578, 2509.684067, 220))
  Position_SetRadius(node249, 5)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("NOD_Position", "LookFrom_13")
  Node_AddSon(node192, node250)
  Position_SetPosition(node250, MAT_Vector3(1724.129796, 2481.783437, 230))
  Position_SetRadius(node250, 5)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("NOD_Position", "LookFrom_14")
  Node_AddSon(node192, node251)
  Position_SetPosition(node251, MAT_Vector3(1028.303115, 2607.916424, 330))
  Position_SetRadius(node251, 5)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("NOD_Position", "LookAt_1")
  Node_AddSon(node192, node252)
  Position_SetPosition(node252, MAT_Vector3(923.200352, 2882.482632, 320))
  Position_SetRadius(node252, 5)
  Game_LoadProgress_Advance(node0)
  node253 = Node_CreateNode("NOD_Position", "LookFrom_15")
  Node_AddSon(node192, node253)
  Position_SetPosition(node253, MAT_Vector3(858.190504, 2767.026195, 319.0075))
  Position_SetRadius(node253, 5)
  Game_LoadProgress_Advance(node0)
  node254 = Node_CreateNode("NOD_Position", "LookFrom_16")
  Node_AddSon(node192, node254)
  Position_SetPosition(node254, MAT_Vector3(858.1905, 2767.026, 256.931067))
  Position_SetRadius(node254, 5)
  Game_LoadProgress_Advance(node0)
  node255 = Node_CreateNode("NOD_Path", "cra_scout2v2_2_Path")
  Node_AddSon(node192, node255)
  Game_LoadProgress_Advance(node0)
  node256 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node255, node256)
  Position_SetPosition(node256, MAT_Vector3(873.168697, 2845.105298, 341.575283))
  Position_SetRadius(node256, 5)
  Game_LoadProgress_Advance(node0)
  node257 = Node_CreateNode("NOD_Path", "cra_scout2v2_1_Path")
  Node_AddSon(node192, node257)
  Game_LoadProgress_Advance(node0)
  node258 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node257, node258)
  Position_SetPosition(node258, MAT_Vector3(966.002185, 2827.57298, 341.5753))
  Position_SetRadius(node258, 5)
  Game_LoadProgress_Advance(node0)
  node259 = Node_CreateNode("NOD_Path", "cra_bomber_1_Path")
  Node_AddSon(node192, node259)
  Game_LoadProgress_Advance(node0)
  node260 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node259, node260)
  Position_SetPosition(node260, MAT_Vector3(899.610451, 2827.573, 341.5753))
  Position_SetRadius(node260, 5)
  Game_LoadProgress_Advance(node0)
  node261 = Node_CreateNode("NOD_Path", "cra_tursas_1_Path")
  Node_AddSon(node192, node261)
  Game_LoadProgress_Advance(node0)
  node262 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node261, node262)
  Position_SetPosition(node262, MAT_Vector3(930.938209, 2838.975539, 341.5753))
  Position_SetRadius(node262, 5)
  Game_LoadProgress_Advance(node0)
  node263 = Node_CreateNode("NOD_Path", "PlayerPath_7")
  Node_AddSon(node192, node263)
  Game_LoadProgress_Advance(node0)
  node264 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node263, node264)
  Position_SetPosition(node264, MAT_Vector3(903.484282, 2639.643645, 320))
  Position_SetRadius(node264, 5)
  Game_LoadProgress_Advance(node0)
  node265 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node263, node265)
  Position_SetPosition(node265, MAT_Vector3(904.330613, 2834.469166, 320))
  Position_SetRadius(node265, 5)
  Game_LoadProgress_Advance(node0)
  node266 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node263, node266)
  Position_SetPosition(node266, MAT_Vector3(970.654511, 2930.273309, 320))
  Position_SetRadius(node266, 5)
  Game_LoadProgress_Advance(node0)
  node267 = Node_CreateNode("NOD_Position", "LookAt_2")
  Node_AddSon(node192, node267)
  Position_SetPosition(node267, MAT_Vector3(904.581121, 2768.228335, 318.793575))
  Position_SetRadius(node267, 5)
  Game_LoadProgress_Advance(node0)
  node268 = Node_CreateNode("NOD_Path", "TechBomberPath")
  Node_AddSon(node192, node268)
  Game_LoadProgress_Advance(node0)
  node269 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node268, node269)
  Position_SetPosition(node269, MAT_Vector3(1212.044695, 2765.850357, 400))
  Position_SetRadius(node269, 5)
  Game_LoadProgress_Advance(node0)
  node270 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node268, node270)
  Position_SetPosition(node270, MAT_Vector3(885.781262, 2767.498171, 400))
  Position_SetRadius(node270, 5)
  Game_LoadProgress_Advance(node0)
  node271 = Node_CreateNode("NOD_Path", "TechBomberEscort_Path")
  Node_AddSon(node192, node271)
  Game_LoadProgress_Advance(node0)
  node272 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node271, node272)
  Position_SetPosition(node272, MAT_Vector3(1253.289411, 2833.781971, 400))
  Position_SetRadius(node272, 5)
  Game_LoadProgress_Advance(node0)
  node273 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node271, node273)
  Position_SetPosition(node273, MAT_Vector3(925.928261, 2830.142758, 400))
  Position_SetRadius(node273, 5)
  Game_LoadProgress_Advance(node0)
  node274 = Node_CreateNode("NOD_Position", "LookFrom_17")
  Node_AddSon(node192, node274)
  Position_SetPosition(node274, MAT_Vector3(1094.641662, 3094.58921, 315))
  Position_SetRadius(node274, 5)
  Game_LoadProgress_Advance(node0)
  node275 = Node_CreateNode("NOD_Position", "LookAt_3")
  Node_AddSon(node192, node275)
  Position_SetPosition(node275, MAT_Vector3(992.88916, 2959.468478, 315))
  Position_SetRadius(node275, 5)
  Game_LoadProgress_Advance(node0)
  node276 = Node_CreateNode("NOD_Path", "PlayerPath_8")
  Node_AddSon(node192, node276)
  Game_LoadProgress_Advance(node0)
  node277 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node276, node277)
  Position_SetPosition(node277, MAT_Vector3(978.470789, 2939.282759, 320))
  Position_SetRadius(node277, 5)
  Game_LoadProgress_Advance(node0)
  node278 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node276, node278)
  Position_SetPosition(node278, MAT_Vector3(1048.91484, 3035.268154, 320))
  Position_SetRadius(node278, 5)
  Game_LoadProgress_Advance(node0)
  node279 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node276, node279)
  Position_SetPosition(node279, MAT_Vector3(1141.192573, 3158.854035, 320))
  Position_SetRadius(node279, 5)
  Game_LoadProgress_Advance(node0)
  node280 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node190, node280)
  Node_EnterSimulation(node280)
  Game_LoadProgress_Advance(node0)
  node281 = Node_CreateNode("NOD_Director", "Chapter1_Intro_V")
  Node_AddSon(node280, node281)
  Node_EnterSimulation(node281)
  Game_LoadProgress_Advance(node0)
  node282 = Node_CreateNode("NOD_Director", "Chapter1_AddOn_V")
  Node_AddSon(node280, node282)
  Node_EnterSimulation(node282)
  Game_LoadProgress_Advance(node0)
  node283 = Node_CreateNode("NOD_Director", "Chapter1_Intro_A")
  Node_AddSon(node280, node283)
  Node_EnterSimulation(node283)
  Game_LoadProgress_Advance(node0)
  node284 = Node_CreateNode("NOD_Director", "Chapter2_Intro_V")
  Node_AddSon(node280, node284)
  Node_EnterSimulation(node284)
  Game_LoadProgress_Advance(node0)
  node285 = Node_CreateNode("NOD_Director", "Chapter2_AddOn_V")
  Node_AddSon(node280, node285)
  Node_EnterSimulation(node285)
  Game_LoadProgress_Advance(node0)
  node286 = Node_CreateNode("NOD_Director", "Chapter2_Intro_A")
  Node_AddSon(node280, node286)
  Node_EnterSimulation(node286)
  Game_LoadProgress_Advance(node0)
  node287 = Node_CreateNode("NOD_Director", "Chapter3_Intro_V")
  Node_AddSon(node280, node287)
  Node_EnterSimulation(node287)
  Game_LoadProgress_Advance(node0)
  node288 = Node_CreateNode("NOD_Director", "Chapter3_Intro_A")
  Node_AddSon(node280, node288)
  Node_EnterSimulation(node288)
  Game_LoadProgress_Advance(node0)
  node289 = Node_CreateNode("NOD_Director", "Chapter3_Extro_V")
  Node_AddSon(node280, node289)
  Node_EnterSimulation(node289)
  Game_LoadProgress_Advance(node0)
  node290 = Node_CreateNode("NOD_Director", "Chapter3_Extro_A")
  Node_AddSon(node280, node290)
  Node_EnterSimulation(node290)
  Game_LoadProgress_Advance(node0)
  node291 = Node_CreateNode("NOD_Director", "Chapter3_ExtroAddOn_V")
  Node_AddSon(node280, node291)
  Node_EnterSimulation(node291)
  Game_LoadProgress_Advance(node0)
  node292 = Node_CreateNode("NOD_Director", "Music")
  Node_AddSon(node280, node292)
  Node_EnterSimulation(node292)
  Game_LoadProgress_Advance(node0)
  node293 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node190, node293)
  Node_EnterSimulation(node293)
  Game_LoadProgress_Advance(node0)
  node294 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_1")
  Node_AddSon(node293, node294)
  Body_SetFriendOrFoeID(node294, 0)
  Body_SetCS(node294, MAT_Vector3(1980.360117, 2977.133581, 135.869455), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node294, 20, 20, 20)
  Node_EnterSimulation(node294)
  Game_LoadProgress_Advance(node0)
  node295 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_2")
  Node_AddSon(node293, node295)
  Body_SetFriendOrFoeID(node295, 0)
  Body_SetCS(node295, MAT_Vector3(1547.706031, 2379.921177, 277.805063), MAT_Vector3(42.090077, 0, 0))
  Trigger_SetBoxMode(node295, 20, 20, 20)
  Node_EnterSimulation(node295)
  Game_LoadProgress_Advance(node0)
  node296 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node190, node296)
  Node_EnterSimulation(node296)
  Game_LoadProgress_Advance(node0)
  node297 = Node_CreateNode("nod_vessel", "cra_bomber_1")
  Node_AddSon(node296, node297)
  Body_SetCS(node297, MAT_Vector3(901.463406, 2691.974424, 341.781263), MAT_Vector3(-0.17808, 0, 0))
  Node_ParseIniFile(node297, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node297, 0)
  Body_SetNameKey(node297, -1)
  Body_SetCargoKey(node297, -1, 0)
  Body_SetCargoKey(node297, -1, 1)
  Body_SetCargoKey(node297, -1, 2)
  Node_EnterSimulation(node297)
  Game_LoadProgress_Advance(node0)
  node298 = Node_CreateNode("nod_vessel", "cra_scout2v2_1")
  Node_AddSon(node296, node298)
  Body_SetCS(node298, MAT_Vector3(968.323541, 2708.054709, 341.781263), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node298, "osd/cra/cra_scout2v2.osd")
  Body_SetFriendOrFoeID(node298, 0)
  Body_SetNameKey(node298, -1)
  Body_SetCargoKey(node298, -1, 0)
  Body_SetCargoKey(node298, -1, 1)
  Body_SetCargoKey(node298, -1, 2)
  Node_EnterSimulation(node298)
  Game_LoadProgress_Advance(node0)
  node299 = Node_CreateNode("nod_vessel", "cra_scout2v2_2")
  Node_AddSon(node296, node299)
  Body_SetCS(node299, MAT_Vector3(871.841827, 2735.137296, 341.781263), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node299, "osd/cra/cra_scout2v2.osd")
  Body_SetFriendOrFoeID(node299, 0)
  Body_SetNameKey(node299, -1)
  Body_SetCargoKey(node299, -1, 0)
  Body_SetCargoKey(node299, -1, 1)
  Body_SetCargoKey(node299, -1, 2)
  Node_EnterSimulation(node299)
  Game_LoadProgress_Advance(node0)
  node300 = Node_CreateNode("nod_vessel", "cra_tursas_1")
  Node_AddSon(node296, node300)
  Body_SetCS(node300, MAT_Vector3(932.617434, 2675.047807, 341.781263), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node300, "osd/cra/cra_tursas.osd")
  Body_SetFriendOrFoeID(node300, 0)
  Body_SetNameKey(node300, -1)
  Body_SetCargoKey(node300, -1, 0)
  Body_SetCargoKey(node300, -1, 1)
  Body_SetCargoKey(node300, -1, 2)
  Node_EnterSimulation(node300)
  Game_LoadProgress_Advance(node0)
  node301 = Node_CreateNode("nod_trash", "cra_bomb_1")
  Node_AddSon(node296, node301)
  Body_SetCS(node301, MAT_Vector3(868.133696, 2766.066629, 250.935829), MAT_Vector3(25.643222, 22.605595, -1.102731))
  Node_ParseIniFile(node301, "osd/cra/cra_bomb.osd")
  Body_SetFriendOrFoeID(node301, 0)
  Node_EnterSimulation(node301)
  Game_LoadProgress_Advance(node0)
  node302 = Node_CreateNode("nod_vessel", "atl_techbomber_1")
  Node_AddSon(node296, node302)
  Body_SetCS(node302, MAT_Vector3(1353.381947, 2892.799984, 500), MAT_Vector3(90.467023, 0, 0))
  Node_ParseIniFile(node302, "osd/atl/atl_techbomber.osd")
  Body_SetFriendOrFoeID(node302, 0)
  Body_SetNameKey(node302, -1)
  Body_SetCargoKey(node302, -1, 0)
  Body_SetCargoKey(node302, -1, 1)
  Body_SetCargoKey(node302, -1, 2)
  Node_EnterSimulation(node302)
  Game_LoadProgress_Advance(node0)
  node303 = Node_CreateNode("nod_vessel", "atl_fregatte_1")
  Node_AddSon(node296, node303)
  Body_SetCS(node303, MAT_Vector3(947.392401, 2660.159286, 416.5489), MAT_Vector3(-23.84401, 0, 0))
  Node_ParseIniFile(node303, "osd/atl/atl_fregatte.osd")
  Body_SetFriendOrFoeID(node303, 0)
  Body_SetNameKey(node303, -1)
  Body_SetCargoKey(node303, -1, 0)
  Body_SetCargoKey(node303, -1, 1)
  Body_SetCargoKey(node303, -1, 2)
  Node_EnterSimulation(node303)
  Game_LoadProgress_Advance(node0)
  node304 = Node_CreateNode("nod_vessel", "atl_fregatte_2")
  Node_AddSon(node296, node304)
  Body_SetCS(node304, MAT_Vector3(936.390099, 2917.443578, 344.317198), MAT_Vector3(-98.07965, 0, 0))
  Node_ParseIniFile(node304, "osd/atl/atl_fregatte.osd")
  Body_SetFriendOrFoeID(node304, 0)
  Body_SetNameKey(node304, -1)
  Body_SetCargoKey(node304, -1, 0)
  Body_SetCargoKey(node304, -1, 1)
  Body_SetCargoKey(node304, -1, 2)
  Node_EnterSimulation(node304)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, F)
SetEnemyMatrixElement(2, 0, F)
SetEnemyMatrixElement(3, 0, E)
SetEnemyMatrixElement(4, 0, E)
SetEnemyMatrixElement(5, 0, E)
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
SetEnemyMatrixElement(0, 2, F)
SetEnemyMatrixElement(1, 2, F)
SetEnemyMatrixElement(2, 2, F)
SetEnemyMatrixElement(3, 2, E)
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
SetEnemyMatrixElement(0, 3, E)
SetEnemyMatrixElement(1, 3, E)
SetEnemyMatrixElement(2, 3, E)
SetEnemyMatrixElement(3, 3, F)
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
SetEnemyMatrixElement(0, 4, E)
SetEnemyMatrixElement(1, 4, E)
SetEnemyMatrixElement(2, 4, E)
SetEnemyMatrixElement(3, 4, N)
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
SetEnemyMatrixElement(0, 5, E)
SetEnemyMatrixElement(1, 5, E)
SetEnemyMatrixElement(2, 5, E)
SetEnemyMatrixElement(3, 5, E)
SetEnemyMatrixElement(4, 5, N)
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
                                                                                      if not (o1496.Value ~= True) then
                                                                                        if not (True ~= True) then
                                                                                          if not (True ~= True) then
                                                                                            if not (True ~= True) then
                                                                                              if not (True ~= True) then
                                                                                                if not (True ~= True) then
                                                                                                  if not (True ~= True) then
                                                                                                    if not (True ~= True) then
                                                                                                      if not (True ~= True) then
                                                                                                        if not (True ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
                                                                                                                                                if not (True ~= True) then
                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                              if not (True ~= True) then
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
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
end, ChangeTo1 = function()
  Game_MissionEnd(GetGameNode(), 1)
  Script_Log("RC1OK_092501_2142")
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
                                                                                                                if not (o2155.Value == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
                                                                                                                      if not (False == True) then
                                                                                                                        if not (False == True) then
                                                                                                                          if not (False == True) then
                                                                                                                            if not (False == True) then
                                                                                                                              if not (False == True) then
                                                                                                                                if not (False == True) then
                                                                                                                                  if not (False == True) then
                                                                                                                                    if not (False == True) then
                                                                                                                                      if not (False == True) then
                                                                                                                                        if not (False == True) then
                                                                                                                                          if not (False == True) then
                                                                                                                                            if not (False == True) then
                                                                                                                                              if not (False == True) then
                                                                                                                                                if not (False == True) then
                                                                                                                                                  if not (False == True) then
                                                                                                                                                    if not (False == True) then
                                                                                                                                                      if not (False == True) then
                                                                                                                                                        if not (False == True) then
                                                                                                                                                          if not (False == True) then
                                                                                                                                                            if not (False == True) then
                                                                                                                                                              if not (False == True) then
                                                                                                                                                                if not (False == True) then
                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                            if not (False == True) then
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
S_o31 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o31, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o31, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o31, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o31, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o31, "Code5")
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
      if not (o32.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o32 = { [nil] = {}, GetCalculated = function()
  if not (o1482.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o32.SetStateValue(o32.GetCalculated())
end, StartCalculate = function()
  o32["Value"] = o32.GetCalculated()
end, SetStateValue = function(L0)
  if not (o32.Value == L0) then
    o32["Value"] = L0
    CallFunction(o31, "ProcesseStateChange")
  end
end }
S_o67 = { [nil] = {}, Start = function(L0)

end }
S_o101 = { [nil] = {}, Start = function(L0)

end }
S_o135 = { [nil] = {}, Start = function(L0)

end }
S_o169 = { [nil] = {}, Start = function(L0)

end }
S_o203 = { [nil] = {}, Start = function(L0)

end }
S_o237 = { [nil] = {}, Start = function(L0)

end }
S_o271 = { [nil] = {}, Start = function(L0)

end }
S_o305 = { [nil] = {}, Start = function(L0)

end }
S_o339 = { [nil] = {}, Start = function(L0)

end }
S_o373 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o373, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o373, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o373, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o374.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o374 = { [nil] = {}, GetCalculated = function()
  if not (o1482.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o374.SetStateValue(o374.GetCalculated())
end, StartCalculate = function()
  o374["Value"] = o374.GetCalculated()
end, SetStateValue = function(L0)
  if not (o374.Value == L0) then
    DelayedFunction(1e-06, o374, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o374.Value == L0) then
    o374["Value"] = L0
    CallFunction(o373, "ProcesseStateChange")
  end
end }
S_o408 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o408, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o408, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o408, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -25, 70)
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o408, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code6")
  else
    CallFunction(o408, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o408, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code8")
  else
    CallFunction(o408, "Code8")
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
      if not (o409.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o409 = { [nil] = {}, GetCalculated = function()
  if not (o1482.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o409.SetStateValue(o409.GetCalculated())
end, StartCalculate = function()
  o409["Value"] = o409.GetCalculated()
end, SetStateValue = function(L0)
  if not (o409.Value == L0) then
    o409["Value"] = L0
    CallFunction(o408, "ProcesseStateChange")
  end
end }
S_o447 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o447, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o447, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o447, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -25, 70)
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o447, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code6")
  else
    CallFunction(o447, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o447, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code8")
  else
    CallFunction(o447, "Code8")
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
      if not (o448.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o448 = { [nil] = {}, GetCalculated = function()
  if not (o1482.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o448.SetStateValue(o448.GetCalculated())
end, StartCalculate = function()
  o448["Value"] = o448.GetCalculated()
end, SetStateValue = function(L0)
  if not (o448.Value == L0) then
    o448["Value"] = L0
    CallFunction(o447, "ProcesseStateChange")
  end
end }
S_o486 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o486, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o486, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o486, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -25, 70)
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o486, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code6")
  else
    CallFunction(o486, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o486, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 250, 400, "E", "", "", "", "Code8")
  else
    CallFunction(o486, "Code8")
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
      if not (o487.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o487 = { [nil] = {}, GetCalculated = function()
  if not (o1482.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o487.SetStateValue(o487.GetCalculated())
end, StartCalculate = function()
  o487["Value"] = o487.GetCalculated()
end, SetStateValue = function(L0)
  if not (o487.Value == L0) then
    o487["Value"] = L0
    CallFunction(o486, "ProcesseStateChange")
  end
end }
S_o525 = { [nil] = {}, Start = function(L0)

end }
S_o559 = { [nil] = {}, Start = function(L0)

end }
S_o593 = { [nil] = {}, Start = function(L0)

end }
S_o627 = { [nil] = {}, Start = function(L0)

end }
S_o661 = { [nil] = {}, Start = function(L0)

end }
S_o695 = { [nil] = {}, Start = function(L0)

end }
S_o729 = { [nil] = {}, Start = function(L0)

end }
S_o763 = { [nil] = {}, Start = function(L0)

end }
S_o797 = { [nil] = {}, Start = function(L0)

end }
S_o831 = { [nil] = {}, Start = function(L0)

end }
S_o865 = { [nil] = {}, Start = function(L0)

end }
S_o899 = { [nil] = {}, Start = function(L0)

end }
S_o933 = { [nil] = {}, Start = function(L0)

end }
S_o967 = { [nil] = {}, Start = function(L0)

end }
S_o1001 = { [nil] = {}, Start = function(L0)

end }
S_o1035 = { [nil] = {}, Start = function(L0)

end }
S_o1069 = { [nil] = {}, Start = function(L0)

end }
S_o1103 = { [nil] = {}, Start = function(L0)

end }
S_o1137 = { [nil] = {}, Start = function(L0)

end }
S_o1171 = { [nil] = {}, Start = function(L0)

end }
S_o1205 = { [nil] = {}, Start = function(L0)

end }
S_o1239 = { [nil] = {}, Start = function(L0)

end }
S_o1273 = { [nil] = {}, Start = function(L0)

end }
S_o1307 = { [nil] = {}, Start = function(L0)

end }
S_o1341 = { [nil] = {}, Start = function(L0)

end }
S_o1375 = { [nil] = {}, Start = function(L0)

end }
S_o1409 = { [nil] = {}, Start = function(L0)

end }
S_o1443 = { [nil] = {}, Start = function(L0)

end }
S_o1477 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_lasergatlin", 1)
  Body_AddItem(L0.Node, "gun_scalarhowitzer", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "torpedo_hammerhead", 9)
  Body_AddItem(L0.Node, "torpedo_leech", 0)
  Body_AddItem(L0.Node, "torpedo_bigbang2", 3)
  Body_AddItem(L0.Node, "ammo_energy", 6000)
  Body_AddItem(L0.Node, "ammo_shell", 6000)
  Body_AddItem(L0.Node, "device_repair3", 1)
  Body_AddItem(L0.Node, "device_generator3", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 8)
  Body_AddItem(L0.Node, "device_booster", 15000)
  CallFunction(o1477, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
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
o1482 = { [nil] = {}, Start = function()
  o1482["Value"] = False
  o32.StartCalculate()
  o374.StartCalculate()
  o409.StartCalculate()
  o448.StartCalculate()
  o487.StartCalculate()
  o2007.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1482.Value == L0) then
    o1482["Value"] = L0
    o32.ReCalculate()
    o374.ReCalculate()
    o409.ReCalculate()
    o448.ReCalculate()
    o487.ReCalculate()
    o2007.ReCalculate()
  end
end }
o1483 = { [nil] = {}, GetCalculated = function()
  if not (o1529.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1577.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1673.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1721.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1769.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1865.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1913.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1961.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1625.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1817.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 < 4) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1483.SetStateValue(o1483.GetCalculated())
end, StartCalculate = function()
  o1483["Value"] = o1483.GetCalculated()
  o1484.StartCalculate()
  o1486.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1483.Value == L0) then
    o1483["Value"] = L0
    o1484.ReCalculate()
    o1486.ReCalculate()
  end
end }
o1484 = { [nil] = {}, GetCalculated = function()
  if not (o1483.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1484.SetStateValue(o1484.GetCalculated())
end, StartCalculate = function()
  o1484["Value"] = o1484.GetCalculated()
  o2213.StartCalculate()
  o2263.StartCalculate()
  o2312.StartCalculate()
  o2361.StartCalculate()
  o2410.StartCalculate()
  o2459.StartCalculate()
  o2508.StartCalculate()
  o2556.StartCalculate()
  o2606.StartCalculate()
  o2655.StartCalculate()
  o2704.StartCalculate()
  o2753.StartCalculate()
  o2802.StartCalculate()
  o2851.StartCalculate()
  o2900.StartCalculate()
  o2948.StartCalculate()
  o2998.StartCalculate()
  o3047.StartCalculate()
  o3096.StartCalculate()
  o3145.StartCalculate()
  o3194.StartCalculate()
  o3243.StartCalculate()
  o3292.StartCalculate()
  o3341.StartCalculate()
  o3390.StartCalculate()
  o3438.StartCalculate()
  o3488.StartCalculate()
  o3537.StartCalculate()
  o3586.StartCalculate()
  o3635.StartCalculate()
  o3684.StartCalculate()
  o3733.StartCalculate()
  o3782.StartCalculate()
  o3831.StartCalculate()
  o3880.StartCalculate()
  o4213.StartCalculate()
  o4612.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Squids are coming")
end, SetStateValue = function(L0)
  if not (o1484.Value == L0) then
    o1484["Value"] = L0
    o2213.ReCalculate()
    o2263.ReCalculate()
    o2312.ReCalculate()
    o2361.ReCalculate()
    o2410.ReCalculate()
    o2459.ReCalculate()
    o2508.ReCalculate()
    o2556.ReCalculate()
    o2606.ReCalculate()
    o2655.ReCalculate()
    o2704.ReCalculate()
    o2753.ReCalculate()
    o2802.ReCalculate()
    o2851.ReCalculate()
    o2900.ReCalculate()
    o2948.ReCalculate()
    o2998.ReCalculate()
    o3047.ReCalculate()
    o3096.ReCalculate()
    o3145.ReCalculate()
    o3194.ReCalculate()
    o3243.ReCalculate()
    o3292.ReCalculate()
    o3341.ReCalculate()
    o3390.ReCalculate()
    o3438.ReCalculate()
    o3488.ReCalculate()
    o3537.ReCalculate()
    o3586.ReCalculate()
    o3635.ReCalculate()
    o3684.ReCalculate()
    o3733.ReCalculate()
    o3782.ReCalculate()
    o3831.ReCalculate()
    o3880.ReCalculate()
    o4213.ReCalculate()
    o4612.ReCalculate()
    if not (L0 ~= 1) then
      o1484.ChangeTo1()
    end
  end
end }
o1485 = { [nil] = {}, Start = function()
  o1485["Value"] = False
  o1525.StartCalculate()
  o1573.StartCalculate()
  o1621.StartCalculate()
  o1669.StartCalculate()
  o1717.StartCalculate()
  o1765.StartCalculate()
  o1813.StartCalculate()
  o1861.StartCalculate()
  o1909.StartCalculate()
  o1958.StartCalculate()
  o2005.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1485.Value == L0) then
    o1485["Value"] = L0
    o1525.ReCalculate()
    o1573.ReCalculate()
    o1621.ReCalculate()
    o1669.ReCalculate()
    o1717.ReCalculate()
    o1765.ReCalculate()
    o1813.ReCalculate()
    o1861.ReCalculate()
    o1909.ReCalculate()
    o1958.ReCalculate()
    o2005.ReCalculate()
  end
end }
o1486 = { [nil] = {}, GetCalculated = function()
  if not (o1483.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1486.SetStateValue(o1486.GetCalculated())
end, StartCalculate = function()
  o1486["Value"] = o1486.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1477.Node, o1477.Node, 1075)
  SendRadioMessageTake(o1477.Node, o1477.Node, 1076)
  SED_SetTaskTextKey(1334, -1, -1)
end, SetStateValue = function(L0)
  if not (o1486.Value == L0) then
    o1486["Value"] = L0
    if not (L0 ~= 1) then
      o1486.ChangeTo1()
    end
  end
end }
o1487 = { [nil] = {}, GetCalculated = function()
  if not (o3441.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1487.SetStateValue(o1487.GetCalculated())
end, StartCalculate = function()
  o1487["Value"] = o1487.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1477.Node, o1477.Node, 1078)
end, SetStateValue = function(L0)
  if not (o1487.Value == L0) then
    DelayedFunction(4, o1487, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1487.Value == L0) then
    o1487["Value"] = L0
    if not (L0 ~= 1) then
      o1487.ChangeTo1()
    end
  end
end }
o1488 = { [nil] = {}, GetCalculated = function()
  if not (o4175.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1488.SetStateValue(o1488.GetCalculated())
end, StartCalculate = function()
  o1488["Value"] = o1488.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1477.Node, o1477.Node, 1079)
  SendRadioMessageTake(o1477.Node, o1477.Node, 1080)
  Game_SetWayPoint(GetGameNode(), o4250.Node)
  SED_SetTaskTextKey(1335, -1, -1)
end, SetStateValue = function(L0)
  if not (o1488.Value == L0) then
    DelayedFunction(3, o1488, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1488.Value == L0) then
    o1488["Value"] = L0
    if not (L0 ~= 1) then
      o1488.ChangeTo1()
    end
  end
end }
o1489 = { [nil] = {}, Start = function()
  o1489["Value"] = False
  o2155.StartCalculate()
  o4561.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1489.Value == L0) then
    o1489["Value"] = L0
    o2155.ReCalculate()
    o4561.ReCalculate()
  end
end }
o1490 = { [nil] = {}, GetCalculated = function()
  if not (o2124.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1490.SetStateValue(o1490.GetCalculated())
end, StartCalculate = function()
  o1490["Value"] = o1490.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("bonham is emp out")
end, SetStateValue = function(L0)
  if not (o1490.Value == L0) then
    o1490["Value"] = L0
    if not (L0 ~= 1) then
      o1490.ChangeTo1()
    end
  end
end }
o1491 = { [nil] = {}, GetCalculated = function()
  if not (o2116.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1491.SetStateValue(o1491.GetCalculated())
end, StartCalculate = function()
  o1491["Value"] = o1491.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("bonham is destroyed")
end, SetStateValue = function(L0)
  if not (o1491.Value == L0) then
    o1491["Value"] = L0
    if not (L0 ~= 1) then
      o1491.ChangeTo1()
    end
  end
end }
o1492 = { [nil] = {}, GetCalculated = function()
  if not (o4317.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1492.SetStateValue(o1492.GetCalculated())
end, StartCalculate = function()
  o1492["Value"] = o1492.GetCalculated()
  o1494.StartCalculate()
  o1495.StartCalculate()
  o4594.StartCalculate()
  o4603.StartCalculate()
  o4615.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o4309.Node, o1477.Node, 1088)
  SendRadioMessageTake(o1477.Node, o1477.Node, 1186)
  Game_SetWayPoint(GetGameNode(), o4250.Node)
end, SetStateValue = function(L0)
  if not (o1492.Value == L0) then
    o1492["Value"] = L0
    o1494.ReCalculate()
    o1495.ReCalculate()
    o4594.ReCalculate()
    o4603.ReCalculate()
    o4615.ReCalculate()
    if not (L0 ~= 1) then
      o1492.ChangeTo1()
    end
  end
end }
o1493 = { [nil] = {}, GetCalculated = function()
  if not (o4176.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1493.SetStateValue(o1493.GetCalculated())
end, StartCalculate = function()
  o1493["Value"] = o1493.GetCalculated()
  o1494.StartCalculate()
  o1495.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("fish dead")
end, SetStateValue = function(L0)
  if not (o1493.Value == L0) then
    o1493["Value"] = L0
    o1494.ReCalculate()
    o1495.ReCalculate()
    if not (L0 ~= 1) then
      o1493.ChangeTo1()
    end
  end
end }
o1494 = { [nil] = {}, GetCalculated = function()
  if not (o1492.Value ~= True) then
    if not (o1493.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1494.SetStateValue(o1494.GetCalculated())
end, StartCalculate = function()
  o1494["Value"] = o1494.GetCalculated()
  o2214.StartCalculate()
  o2261.StartCalculate()
  o2262.StartCalculate()
  o2310.StartCalculate()
  o2311.StartCalculate()
  o2359.StartCalculate()
  o2360.StartCalculate()
  o2408.StartCalculate()
  o2409.StartCalculate()
  o2457.StartCalculate()
  o2458.StartCalculate()
  o2506.StartCalculate()
  o2507.StartCalculate()
  o2557.StartCalculate()
  o2604.StartCalculate()
  o2605.StartCalculate()
  o2653.StartCalculate()
  o2654.StartCalculate()
  o2702.StartCalculate()
  o2703.StartCalculate()
  o2751.StartCalculate()
  o2752.StartCalculate()
  o2800.StartCalculate()
  o2801.StartCalculate()
  o2849.StartCalculate()
  o2850.StartCalculate()
  o2898.StartCalculate()
  o2899.StartCalculate()
  o2949.StartCalculate()
  o2996.StartCalculate()
  o2997.StartCalculate()
  o3045.StartCalculate()
  o3046.StartCalculate()
  o3094.StartCalculate()
  o3095.StartCalculate()
  o3143.StartCalculate()
  o3144.StartCalculate()
  o3192.StartCalculate()
  o3193.StartCalculate()
  o3241.StartCalculate()
  o3242.StartCalculate()
  o3290.StartCalculate()
  o3291.StartCalculate()
  o3339.StartCalculate()
  o3340.StartCalculate()
  o3388.StartCalculate()
  o3389.StartCalculate()
  o3439.StartCalculate()
  o3486.StartCalculate()
  o3487.StartCalculate()
  o3535.StartCalculate()
  o3536.StartCalculate()
  o3584.StartCalculate()
  o3585.StartCalculate()
  o3633.StartCalculate()
  o3634.StartCalculate()
  o3682.StartCalculate()
  o3683.StartCalculate()
  o3731.StartCalculate()
  o3732.StartCalculate()
  o3780.StartCalculate()
  o3781.StartCalculate()
  o3829.StartCalculate()
  o3830.StartCalculate()
  o3878.StartCalculate()
  o3879.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("fish and chips")
end, SetStateValue = function(L0)
  if not (o1494.Value == L0) then
    o1494["Value"] = L0
    o2214.ReCalculate()
    o2261.ReCalculate()
    o2262.ReCalculate()
    o2310.ReCalculate()
    o2311.ReCalculate()
    o2359.ReCalculate()
    o2360.ReCalculate()
    o2408.ReCalculate()
    o2409.ReCalculate()
    o2457.ReCalculate()
    o2458.ReCalculate()
    o2506.ReCalculate()
    o2507.ReCalculate()
    o2557.ReCalculate()
    o2604.ReCalculate()
    o2605.ReCalculate()
    o2653.ReCalculate()
    o2654.ReCalculate()
    o2702.ReCalculate()
    o2703.ReCalculate()
    o2751.ReCalculate()
    o2752.ReCalculate()
    o2800.ReCalculate()
    o2801.ReCalculate()
    o2849.ReCalculate()
    o2850.ReCalculate()
    o2898.ReCalculate()
    o2899.ReCalculate()
    o2949.ReCalculate()
    o2996.ReCalculate()
    o2997.ReCalculate()
    o3045.ReCalculate()
    o3046.ReCalculate()
    o3094.ReCalculate()
    o3095.ReCalculate()
    o3143.ReCalculate()
    o3144.ReCalculate()
    o3192.ReCalculate()
    o3193.ReCalculate()
    o3241.ReCalculate()
    o3242.ReCalculate()
    o3290.ReCalculate()
    o3291.ReCalculate()
    o3339.ReCalculate()
    o3340.ReCalculate()
    o3388.ReCalculate()
    o3389.ReCalculate()
    o3439.ReCalculate()
    o3486.ReCalculate()
    o3487.ReCalculate()
    o3535.ReCalculate()
    o3536.ReCalculate()
    o3584.ReCalculate()
    o3585.ReCalculate()
    o3633.ReCalculate()
    o3634.ReCalculate()
    o3682.ReCalculate()
    o3683.ReCalculate()
    o3731.ReCalculate()
    o3732.ReCalculate()
    o3780.ReCalculate()
    o3781.ReCalculate()
    o3829.ReCalculate()
    o3830.ReCalculate()
    o3878.ReCalculate()
    o3879.ReCalculate()
    if not (L0 ~= 1) then
      o1494.ChangeTo1()
    end
  end
end }
o1495 = { [nil] = {}, GetCalculated = function()
  if not (o1492.Value ~= True) then
    if not (o1493.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1495.SetStateValue(o1495.GetCalculated())
end, StartCalculate = function()
  o1495["Value"] = o1495.GetCalculated()
end, ChangeTo1 = function()
  SED_SetTaskTextKey(1337, -1, -1)
end, SetStateValue = function(L0)
  if not (o1495.Value == L0) then
    o1495["Value"] = L0
    if not (L0 ~= 1) then
      o1495.ChangeTo1()
    end
  end
end }
o1496 = { [nil] = {}, GetCalculated = function()
  if not (o4597.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1496.SetStateValue(o1496.GetCalculated())
end, StartCalculate = function()
  o1496["Value"] = o1496.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1496.Value == L0) then
    o1496["Value"] = L0
    o2.ReCalculate()
  end
end }
S_o1524 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1524, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1524, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1524, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o1524, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o1524, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o1524, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o1529.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1525.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1525 = { [nil] = {}, GetCalculated = function()
  if not (o1485.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1525.SetStateValue(o1525.GetCalculated())
end, StartCalculate = function()
  o1525["Value"] = o1525.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1525.Value == L0) then
    DelayedFunction(3.564895, o1525, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1525.Value == L0) then
    o1525["Value"] = L0
    CallFunction(o1524, "ProcesseStateChange")
  end
end }
o1529 = { [nil] = {}, Start = function()
  o1529["Value"] = False
  o1483.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1529.Value == L0) then
    o1529["Value"] = L0
    o1483.ReCalculate()
  end
end }
S_o1572 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1572, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1572, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1572, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o1572, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o1572, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o1572, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o1577.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1573.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1573 = { [nil] = {}, GetCalculated = function()
  if not (o1485.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1573.SetStateValue(o1573.GetCalculated())
end, StartCalculate = function()
  o1573["Value"] = o1573.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1573.Value == L0) then
    DelayedFunction(3.564895, o1573, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1573.Value == L0) then
    o1573["Value"] = L0
    CallFunction(o1572, "ProcesseStateChange")
  end
end }
o1577 = { [nil] = {}, Start = function()
  o1577["Value"] = False
  o1483.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1577.Value == L0) then
    o1577["Value"] = L0
    o1483.ReCalculate()
  end
end }
S_o1620 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1620, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1620, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1620, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o1620, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o1620, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o1620, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o1625.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1621.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1621 = { [nil] = {}, GetCalculated = function()
  if not (o1485.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1621.SetStateValue(o1621.GetCalculated())
end, StartCalculate = function()
  o1621["Value"] = o1621.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1621.Value == L0) then
    DelayedFunction(3.564895, o1621, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1621.Value == L0) then
    o1621["Value"] = L0
    CallFunction(o1620, "ProcesseStateChange")
  end
end }
o1625 = { [nil] = {}, Start = function()
  o1625["Value"] = False
  o1483.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1625.Value == L0) then
    o1625["Value"] = L0
    o1483.ReCalculate()
  end
end }
S_o1668 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1668, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1668, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1668, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o1668, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o1668, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o1668, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o1673.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1669.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1669 = { [nil] = {}, GetCalculated = function()
  if not (o1485.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1669.SetStateValue(o1669.GetCalculated())
end, StartCalculate = function()
  o1669["Value"] = o1669.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1669.Value == L0) then
    DelayedFunction(3.564895, o1669, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1669.Value == L0) then
    o1669["Value"] = L0
    CallFunction(o1668, "ProcesseStateChange")
  end
end }
o1673 = { [nil] = {}, Start = function()
  o1673["Value"] = False
  o1483.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1673.Value == L0) then
    o1673["Value"] = L0
    o1483.ReCalculate()
  end
end }
S_o1716 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1716, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1716, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1716, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o1716, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o1716, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o1716, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o1721.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1717.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1717 = { [nil] = {}, GetCalculated = function()
  if not (o1485.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1717.SetStateValue(o1717.GetCalculated())
end, StartCalculate = function()
  o1717["Value"] = o1717.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1717.Value == L0) then
    DelayedFunction(3.564895, o1717, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1717.Value == L0) then
    o1717["Value"] = L0
    CallFunction(o1716, "ProcesseStateChange")
  end
end }
o1721 = { [nil] = {}, Start = function()
  o1721["Value"] = False
  o1483.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1721.Value == L0) then
    o1721["Value"] = L0
    o1483.ReCalculate()
  end
end }
S_o1764 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1764, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1764, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1764, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o1764, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o1764, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o1764, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o1769.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1765.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1765 = { [nil] = {}, GetCalculated = function()
  if not (o1485.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1765.SetStateValue(o1765.GetCalculated())
end, StartCalculate = function()
  o1765["Value"] = o1765.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1765.Value == L0) then
    DelayedFunction(3.564895, o1765, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1765.Value == L0) then
    o1765["Value"] = L0
    CallFunction(o1764, "ProcesseStateChange")
  end
end }
o1769 = { [nil] = {}, Start = function()
  o1769["Value"] = False
  o1483.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1769.Value == L0) then
    o1769["Value"] = L0
    o1483.ReCalculate()
  end
end }
S_o1812 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1812, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1812, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1812, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o1812, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o1812, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o1812, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o1817.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1813.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1813 = { [nil] = {}, GetCalculated = function()
  if not (o1485.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1813.SetStateValue(o1813.GetCalculated())
end, StartCalculate = function()
  o1813["Value"] = o1813.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1813.Value == L0) then
    DelayedFunction(3.564895, o1813, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1813.Value == L0) then
    o1813["Value"] = L0
    CallFunction(o1812, "ProcesseStateChange")
  end
end }
o1817 = { [nil] = {}, Start = function()
  o1817["Value"] = False
  o1483.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1817.Value == L0) then
    o1817["Value"] = L0
    o1483.ReCalculate()
  end
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
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o1860, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o1860, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o1860, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o1865.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1861.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1861 = { [nil] = {}, GetCalculated = function()
  if not (o1485.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1861.SetStateValue(o1861.GetCalculated())
end, StartCalculate = function()
  o1861["Value"] = o1861.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1861.Value == L0) then
    DelayedFunction(3.564895, o1861, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1861.Value == L0) then
    o1861["Value"] = L0
    CallFunction(o1860, "ProcesseStateChange")
  end
end }
o1865 = { [nil] = {}, Start = function()
  o1865["Value"] = False
  o1483.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1865.Value == L0) then
    o1865["Value"] = L0
    o1483.ReCalculate()
  end
end }
S_o1908 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1908, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1908, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1908, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o1908, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o1908, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o1908, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o1913.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1909.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1909 = { [nil] = {}, GetCalculated = function()
  if not (o1485.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1909.SetStateValue(o1909.GetCalculated())
end, StartCalculate = function()
  o1909["Value"] = o1909.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1909.Value == L0) then
    DelayedFunction(3.564895, o1909, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1909.Value == L0) then
    o1909["Value"] = L0
    CallFunction(o1908, "ProcesseStateChange")
  end
end }
o1913 = { [nil] = {}, Start = function()
  o1913["Value"] = False
  o1483.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1913.Value == L0) then
    o1913["Value"] = L0
    o1483.ReCalculate()
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
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o1956, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o1956, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o1956, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1956, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code8")
  else
    CallFunction(o1956, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Destroyed = function(L0, L1)
  o1961.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o1958.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1958 = { [nil] = {}, GetCalculated = function()
  if not (o1485.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1958.SetStateValue(o1958.GetCalculated())
end, StartCalculate = function()
  o1958["Value"] = o1958.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1958.Value == L0) then
    DelayedFunction(3, o1958, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1958.Value == L0) then
    o1958["Value"] = L0
    CallFunction(o1956, "ProcesseStateChange")
  end
end }
o1961 = { [nil] = {}, Start = function()
  o1961["Value"] = False
  o1483.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1961.Value == L0) then
    o1961["Value"] = L0
    o1483.ReCalculate()
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
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o2004, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2004, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2004, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code7")
  else
    CallFunction(o2004, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code8")
  else
    CallFunction(o2004, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_DipoledOut = function(L0, L1)
  o2011.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2007.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o2005.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2005 = { [nil] = {}, GetCalculated = function()
  if not (o1485.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2005.SetStateValue(o2005.GetCalculated())
end, StartCalculate = function()
  o2005["Value"] = o2005.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2005.Value == L0) then
    DelayedFunction(3.564895, o2005, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2005.Value == L0) then
    o2005["Value"] = L0
    CallFunction(o2004, "ProcesseStateChange")
  end
end }
o2007 = { [nil] = {}, GetCalculated = function()
  if not (o1482.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2007.SetStateValue(o2007.GetCalculated())
end, StartCalculate = function()
  o2007["Value"] = o2007.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2007.Value == L0) then
    o2007["Value"] = L0
    CallFunction(o2004, "ProcesseStateChange")
  end
end }
o2011 = { [nil] = {}, Start = function()
  o2011["Value"] = False
  o2055.StartCalculate()
  o2108.StartCalculate()
  o2162.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2011.Value == L0) then
    o2011["Value"] = L0
    o2055.ReCalculate()
    o2108.ReCalculate()
    o2162.ReCalculate()
  end
end }
S_o2053 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Vessel_CollisionTerrain(L0.Node, 1)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o2053, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code3")
  else
    CallFunction(o2053, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2053, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.75, "Code5")
  else
    CallFunction(o2053, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  StopAllActiveBehaviours(L0)
  CallFunction(o2053, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.75, "Code7")
  else
    CallFunction(o2053, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  StopAllActiveBehaviours(L0)
  CallFunction(o2053, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Crocell_FArea", "/Scenario_Dynamic/Navigation/Crocell_FArea", "/Scenario_Dynamic/Navigation/Crocell_FArea", "old_crocell_1", "", "", "", 0.75, "Code9")
  else
    CallFunction(o2053, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  StopAllActiveBehaviours(L0)
  CallFunction(o2053, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Crocell_FArea2", "/Scenario_Dynamic/Navigation/Crocell_FArea2", "/Scenario_Dynamic/Navigation/Crocell_FArea2", "old_crocell_1", "", "", "", 0.75, "Code11")
  else
    CallFunction(o2053, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2055.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2055 = { [nil] = {}, GetCalculated = function()
  if not (o2011.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2055.SetStateValue(o2055.GetCalculated())
end, StartCalculate = function()
  o2055["Value"] = o2055.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2055.Value == L0) then
    o2055["Value"] = L0
    CallFunction(o2053, "ProcesseStateChange")
  end
end }
S_o2104 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2104, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2104, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2104, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o2104, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2104, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2104, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Bonham_Path1", 1, 1 } }("Code7")
  else
    CallFunction(o2104, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o373.Node, "DP_ver_1", "DP_ver_1", 1, 1, 1e+32, "Code8")
  else
    CallFunction(o2104, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.UnInfiltrate(L0, "Code9")
  else
    CallFunction(o2104, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Body_SetKineticShield(L0.Node, 0, 1)
  CallFunction(o2104, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.75, "Code11")
  else
    CallFunction(o2104, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  StopAllActiveBehaviours(L0)
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o2104, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/BonhamPath_C2_1", 1, 1 } }("Code14")
  else
    CallFunction(o2104, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  o1489.SetStateValue(True)
  CallFunction(o2104, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.75, "Code16")
  else
    CallFunction(o2104, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  StopAllActiveBehaviours(L0)
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetKineticShield(L0.Node, 0, 0.55)
  Body_SetEmpShield(L0.Node, 0.3)
  CallFunction(o2104, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code21")
  else
    CallFunction(o2104, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code22")
  else
    CallFunction(o2104, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2104, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
end, SetStateValue_Destroyed = function(L0, L1)
  o2116.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o2124.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o2108.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2108 = { [nil] = {}, GetCalculated = function()
  if not (o2011.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2108.SetStateValue(o2108.GetCalculated())
end, StartCalculate = function()
  o2108["Value"] = o2108.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2108.Value == L0) then
    DelayedFunction(6, o2108, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2108.Value == L0) then
    o2108["Value"] = L0
    CallFunction(o2104, "ProcesseStateChange")
  end
end }
o2116 = { [nil] = {}, Start = function()
  o2116["Value"] = False
  o1491.StartCalculate()
  o2155.StartCalculate()
  o4313.StartCalculate()
  o4573.StartCalculate()
  o4581.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2116.Value == L0) then
    o2116["Value"] = L0
    o1491.ReCalculate()
    o2155.ReCalculate()
    o4313.ReCalculate()
    o4573.ReCalculate()
    o4581.ReCalculate()
  end
end }
o2124 = { [nil] = {}, Start = function()
  o2124["Value"] = False
  o1490.StartCalculate()
  o4312.StartCalculate()
  o4572.StartCalculate()
  o4613.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2124.Value == L0) then
    o2124["Value"] = L0
    o1490.ReCalculate()
    o4312.ReCalculate()
    o4572.ReCalculate()
    o4613.ReCalculate()
  end
end }
o2155 = { [nil] = {}, GetCalculated = function()
  if not (o2116.Value ~= True) then
    if not (o1489.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2155.SetStateValue(o2155.GetCalculated())
end, StartCalculate = function()
  o2155["Value"] = o2155.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2155.Value == L0) then
    o2155["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o2159 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2159, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2159, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2159, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o2159, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o2159, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2159, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o2159, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.75, "Code9")
  else
    CallFunction(o2159, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  StopAllActiveBehaviours(L0)
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o2159, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.75, "Code12")
  else
    CallFunction(o2159, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  StopAllActiveBehaviours(L0)
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o2159, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Crocell_FArea", "/Scenario_Dynamic/Navigation/Crocell_FArea", "/Scenario_Dynamic/Navigation/Crocell_FArea", "old_crocell_1", "", "", "", 0.75, "Code15")
  else
    CallFunction(o2159, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  StopAllActiveBehaviours(L0)
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o2159, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Crocell_FArea2", "/Scenario_Dynamic/Navigation/Crocell_FArea2", "/Scenario_Dynamic/Navigation/Crocell_FArea2", "old_crocell_1", "", "", "", 0.75, "Code18")
  else
    CallFunction(o2159, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o2162.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2162 = { [nil] = {}, GetCalculated = function()
  if not (o2011.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2162.SetStateValue(o2162.GetCalculated())
end, StartCalculate = function()
  o2162["Value"] = o2162.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2162.Value == L0) then
    o2162["Value"] = L0
    CallFunction(o2159, "ProcesseStateChange")
  end
end }
S_o2211 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2211, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2211, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2211, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o2211, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code5")
  else
    CallFunction(o2211, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o2211, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2211, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2211, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Destroyed = function(L0, L1)
  o2217.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2213.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o2214.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2213 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2213.SetStateValue(o2213.GetCalculated())
end, StartCalculate = function()
  o2213["Value"] = o2213.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2213.Value == L0) then
    DelayedFunction(4.4567, o2213, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2213.Value == L0) then
    o2213["Value"] = L0
    CallFunction(o2211, "ProcesseStateChange")
  end
end }
o2214 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2214.SetStateValue(o2214.GetCalculated())
end, StartCalculate = function()
  o2214["Value"] = o2214.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2214.Value == L0) then
    o2214["Value"] = L0
    CallFunction(o2211, "ProcesseStateChange")
  end
end }
o2217 = { [nil] = {}, Start = function()
  o2217["Value"] = False
  o2261.StartCalculate()
  o2310.StartCalculate()
  o2359.StartCalculate()
  o2408.StartCalculate()
  o2457.StartCalculate()
  o2506.StartCalculate()
  o2604.StartCalculate()
  o2653.StartCalculate()
  o2702.StartCalculate()
  o2751.StartCalculate()
  o2800.StartCalculate()
  o2849.StartCalculate()
  o2898.StartCalculate()
  o2996.StartCalculate()
  o3045.StartCalculate()
  o3094.StartCalculate()
  o3143.StartCalculate()
  o3192.StartCalculate()
  o3241.StartCalculate()
  o3290.StartCalculate()
  o3339.StartCalculate()
  o3388.StartCalculate()
  o3486.StartCalculate()
  o3535.StartCalculate()
  o3584.StartCalculate()
  o3633.StartCalculate()
  o3682.StartCalculate()
  o3731.StartCalculate()
  o3780.StartCalculate()
  o3829.StartCalculate()
  o3878.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2217.Value == L0) then
    o2217["Value"] = L0
    o2261.ReCalculate()
    o2310.ReCalculate()
    o2359.ReCalculate()
    o2408.ReCalculate()
    o2457.ReCalculate()
    o2506.ReCalculate()
    o2604.ReCalculate()
    o2653.ReCalculate()
    o2702.ReCalculate()
    o2751.ReCalculate()
    o2800.ReCalculate()
    o2849.ReCalculate()
    o2898.ReCalculate()
    o2996.ReCalculate()
    o3045.ReCalculate()
    o3094.ReCalculate()
    o3143.ReCalculate()
    o3192.ReCalculate()
    o3241.ReCalculate()
    o3290.ReCalculate()
    o3339.ReCalculate()
    o3388.ReCalculate()
    o3486.ReCalculate()
    o3535.ReCalculate()
    o3584.ReCalculate()
    o3633.ReCalculate()
    o3682.ReCalculate()
    o3731.ReCalculate()
    o3780.ReCalculate()
    o3829.ReCalculate()
    o3878.ReCalculate()
  end
end }
S_o2260 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2260, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2260, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2260, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2260, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o2260, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2260, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2263.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2261.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2262.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2261 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2261.SetStateValue(o2261.GetCalculated())
end, StartCalculate = function()
  o2261["Value"] = o2261.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2261.Value == L0) then
    o2261["Value"] = L0
    CallFunction(o2260, "ProcesseStateChange")
  end
end }
o2262 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2262.SetStateValue(o2262.GetCalculated())
end, StartCalculate = function()
  o2262["Value"] = o2262.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2262.Value == L0) then
    o2262["Value"] = L0
    CallFunction(o2260, "ProcesseStateChange")
  end
end }
o2263 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2263.SetStateValue(o2263.GetCalculated())
end, StartCalculate = function()
  o2263["Value"] = o2263.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2263.Value == L0) then
    DelayedFunction(4.4567, o2263, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2263.Value == L0) then
    o2263["Value"] = L0
    CallFunction(o2260, "ProcesseStateChange")
  end
end }
S_o2309 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2309, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2309, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2309, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2309, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o2309, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2309, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2312.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2310.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2311.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2310 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2310.SetStateValue(o2310.GetCalculated())
end, StartCalculate = function()
  o2310["Value"] = o2310.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2310.Value == L0) then
    o2310["Value"] = L0
    CallFunction(o2309, "ProcesseStateChange")
  end
end }
o2311 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2311.SetStateValue(o2311.GetCalculated())
end, StartCalculate = function()
  o2311["Value"] = o2311.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2311.Value == L0) then
    o2311["Value"] = L0
    CallFunction(o2309, "ProcesseStateChange")
  end
end }
o2312 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2312.SetStateValue(o2312.GetCalculated())
end, StartCalculate = function()
  o2312["Value"] = o2312.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2312.Value == L0) then
    DelayedFunction(4.4567, o2312, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2312.Value == L0) then
    o2312["Value"] = L0
    CallFunction(o2309, "ProcesseStateChange")
  end
end }
S_o2358 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2358, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2358, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2358, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2358, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o2358, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2358, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2361.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2359.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2360.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2359 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2359.SetStateValue(o2359.GetCalculated())
end, StartCalculate = function()
  o2359["Value"] = o2359.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2359.Value == L0) then
    o2359["Value"] = L0
    CallFunction(o2358, "ProcesseStateChange")
  end
end }
o2360 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2360.SetStateValue(o2360.GetCalculated())
end, StartCalculate = function()
  o2360["Value"] = o2360.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2360.Value == L0) then
    o2360["Value"] = L0
    CallFunction(o2358, "ProcesseStateChange")
  end
end }
o2361 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2361.SetStateValue(o2361.GetCalculated())
end, StartCalculate = function()
  o2361["Value"] = o2361.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2361.Value == L0) then
    DelayedFunction(4.4567, o2361, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2361.Value == L0) then
    o2361["Value"] = L0
    CallFunction(o2358, "ProcesseStateChange")
  end
end }
S_o2407 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2407, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2407, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2407, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2407, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o2407, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2407, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2410.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2408.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2409.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2408 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2408.SetStateValue(o2408.GetCalculated())
end, StartCalculate = function()
  o2408["Value"] = o2408.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2408.Value == L0) then
    o2408["Value"] = L0
    CallFunction(o2407, "ProcesseStateChange")
  end
end }
o2409 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2409.SetStateValue(o2409.GetCalculated())
end, StartCalculate = function()
  o2409["Value"] = o2409.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2409.Value == L0) then
    o2409["Value"] = L0
    CallFunction(o2407, "ProcesseStateChange")
  end
end }
o2410 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2410.SetStateValue(o2410.GetCalculated())
end, StartCalculate = function()
  o2410["Value"] = o2410.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2410.Value == L0) then
    DelayedFunction(4.4567, o2410, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2410.Value == L0) then
    o2410["Value"] = L0
    CallFunction(o2407, "ProcesseStateChange")
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
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2456, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2456, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o2456, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2456, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2459.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2457.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2458.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2457 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2457.SetStateValue(o2457.GetCalculated())
end, StartCalculate = function()
  o2457["Value"] = o2457.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2457.Value == L0) then
    o2457["Value"] = L0
    CallFunction(o2456, "ProcesseStateChange")
  end
end }
o2458 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2458.SetStateValue(o2458.GetCalculated())
end, StartCalculate = function()
  o2458["Value"] = o2458.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2458.Value == L0) then
    o2458["Value"] = L0
    CallFunction(o2456, "ProcesseStateChange")
  end
end }
o2459 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2459.SetStateValue(o2459.GetCalculated())
end, StartCalculate = function()
  o2459["Value"] = o2459.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2459.Value == L0) then
    DelayedFunction(4.4567, o2459, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2459.Value == L0) then
    o2459["Value"] = L0
    CallFunction(o2456, "ProcesseStateChange")
  end
end }
S_o2505 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2505, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2505, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2505, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2505, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o2505, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2505, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2508.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2506.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2507.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2506 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2506.SetStateValue(o2506.GetCalculated())
end, StartCalculate = function()
  o2506["Value"] = o2506.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2506.Value == L0) then
    o2506["Value"] = L0
    CallFunction(o2505, "ProcesseStateChange")
  end
end }
o2507 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2507.SetStateValue(o2507.GetCalculated())
end, StartCalculate = function()
  o2507["Value"] = o2507.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2507.Value == L0) then
    o2507["Value"] = L0
    CallFunction(o2505, "ProcesseStateChange")
  end
end }
o2508 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2508.SetStateValue(o2508.GetCalculated())
end, StartCalculate = function()
  o2508["Value"] = o2508.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2508.Value == L0) then
    DelayedFunction(4.4567, o2508, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2508.Value == L0) then
    o2508["Value"] = L0
    CallFunction(o2505, "ProcesseStateChange")
  end
end }
S_o2554 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2554, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2554, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2554, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o2554, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 6 } }("Code5")
  else
    CallFunction(o2554, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  o1485.SetStateValue(True)
  CallFunction(o2554, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o2554, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2554, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2554, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2556.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o2557.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2556 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2556.SetStateValue(o2556.GetCalculated())
end, StartCalculate = function()
  o2556["Value"] = o2556.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2556.Value == L0) then
    DelayedFunction(11.97544, o2556, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2556.Value == L0) then
    o2556["Value"] = L0
    CallFunction(o2554, "ProcesseStateChange")
  end
end }
o2557 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2557.SetStateValue(o2557.GetCalculated())
end, StartCalculate = function()
  o2557["Value"] = o2557.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2557.Value == L0) then
    o2557["Value"] = L0
    CallFunction(o2554, "ProcesseStateChange")
  end
end }
S_o2603 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2603, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2603, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2603, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2603, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o2603, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2603, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2606.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2604.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2605.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2604 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2604.SetStateValue(o2604.GetCalculated())
end, StartCalculate = function()
  o2604["Value"] = o2604.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2604.Value == L0) then
    o2604["Value"] = L0
    CallFunction(o2603, "ProcesseStateChange")
  end
end }
o2605 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2605.SetStateValue(o2605.GetCalculated())
end, StartCalculate = function()
  o2605["Value"] = o2605.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2605.Value == L0) then
    o2605["Value"] = L0
    CallFunction(o2603, "ProcesseStateChange")
  end
end }
o2606 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2606.SetStateValue(o2606.GetCalculated())
end, StartCalculate = function()
  o2606["Value"] = o2606.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2606.Value == L0) then
    DelayedFunction(11.97544, o2606, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2606.Value == L0) then
    o2606["Value"] = L0
    CallFunction(o2603, "ProcesseStateChange")
  end
end }
S_o2652 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2652, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2652, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2652, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2652, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o2652, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2652, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2655.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2653.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2654.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2653 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2653.SetStateValue(o2653.GetCalculated())
end, StartCalculate = function()
  o2653["Value"] = o2653.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2653.Value == L0) then
    o2653["Value"] = L0
    CallFunction(o2652, "ProcesseStateChange")
  end
end }
o2654 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2654.SetStateValue(o2654.GetCalculated())
end, StartCalculate = function()
  o2654["Value"] = o2654.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2654.Value == L0) then
    o2654["Value"] = L0
    CallFunction(o2652, "ProcesseStateChange")
  end
end }
o2655 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2655.SetStateValue(o2655.GetCalculated())
end, StartCalculate = function()
  o2655["Value"] = o2655.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2655.Value == L0) then
    DelayedFunction(11.97544, o2655, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2655.Value == L0) then
    o2655["Value"] = L0
    CallFunction(o2652, "ProcesseStateChange")
  end
end }
S_o2701 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2701, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2701, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2701, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2701, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o2701, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2701, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2704.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2702.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2703.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2702 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2702.SetStateValue(o2702.GetCalculated())
end, StartCalculate = function()
  o2702["Value"] = o2702.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2702.Value == L0) then
    o2702["Value"] = L0
    CallFunction(o2701, "ProcesseStateChange")
  end
end }
o2703 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2703.SetStateValue(o2703.GetCalculated())
end, StartCalculate = function()
  o2703["Value"] = o2703.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2703.Value == L0) then
    o2703["Value"] = L0
    CallFunction(o2701, "ProcesseStateChange")
  end
end }
o2704 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2704.SetStateValue(o2704.GetCalculated())
end, StartCalculate = function()
  o2704["Value"] = o2704.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2704.Value == L0) then
    DelayedFunction(11.97544, o2704, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2704.Value == L0) then
    o2704["Value"] = L0
    CallFunction(o2701, "ProcesseStateChange")
  end
end }
S_o2750 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2750, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2750, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2750, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2750, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o2750, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2750, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2753.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2751.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2752.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2751 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2751.SetStateValue(o2751.GetCalculated())
end, StartCalculate = function()
  o2751["Value"] = o2751.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2751.Value == L0) then
    o2751["Value"] = L0
    CallFunction(o2750, "ProcesseStateChange")
  end
end }
o2752 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2752.SetStateValue(o2752.GetCalculated())
end, StartCalculate = function()
  o2752["Value"] = o2752.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2752.Value == L0) then
    o2752["Value"] = L0
    CallFunction(o2750, "ProcesseStateChange")
  end
end }
o2753 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2753.SetStateValue(o2753.GetCalculated())
end, StartCalculate = function()
  o2753["Value"] = o2753.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2753.Value == L0) then
    DelayedFunction(11.97544, o2753, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2753.Value == L0) then
    o2753["Value"] = L0
    CallFunction(o2750, "ProcesseStateChange")
  end
end }
S_o2799 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2799, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2799, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2799, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2799, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o2799, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2799, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2802.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2800.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2801.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2800 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2800.SetStateValue(o2800.GetCalculated())
end, StartCalculate = function()
  o2800["Value"] = o2800.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2800.Value == L0) then
    o2800["Value"] = L0
    CallFunction(o2799, "ProcesseStateChange")
  end
end }
o2801 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2801.SetStateValue(o2801.GetCalculated())
end, StartCalculate = function()
  o2801["Value"] = o2801.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2801.Value == L0) then
    o2801["Value"] = L0
    CallFunction(o2799, "ProcesseStateChange")
  end
end }
o2802 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2802.SetStateValue(o2802.GetCalculated())
end, StartCalculate = function()
  o2802["Value"] = o2802.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2802.Value == L0) then
    DelayedFunction(11.97544, o2802, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2802.Value == L0) then
    o2802["Value"] = L0
    CallFunction(o2799, "ProcesseStateChange")
  end
end }
S_o2848 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2848, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2848, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2848, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2848, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o2848, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2848, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2851.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2849.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2850.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2849 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2849.SetStateValue(o2849.GetCalculated())
end, StartCalculate = function()
  o2849["Value"] = o2849.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2849.Value == L0) then
    o2849["Value"] = L0
    CallFunction(o2848, "ProcesseStateChange")
  end
end }
o2850 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2850.SetStateValue(o2850.GetCalculated())
end, StartCalculate = function()
  o2850["Value"] = o2850.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2850.Value == L0) then
    o2850["Value"] = L0
    CallFunction(o2848, "ProcesseStateChange")
  end
end }
o2851 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2851.SetStateValue(o2851.GetCalculated())
end, StartCalculate = function()
  o2851["Value"] = o2851.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2851.Value == L0) then
    DelayedFunction(11.97544, o2851, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2851.Value == L0) then
    o2851["Value"] = L0
    CallFunction(o2848, "ProcesseStateChange")
  end
end }
S_o2897 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2897, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2897, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2897, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2897, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o2897, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2897, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2900.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2898.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2899.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2898 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2898.SetStateValue(o2898.GetCalculated())
end, StartCalculate = function()
  o2898["Value"] = o2898.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2898.Value == L0) then
    o2898["Value"] = L0
    CallFunction(o2897, "ProcesseStateChange")
  end
end }
o2899 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2899.SetStateValue(o2899.GetCalculated())
end, StartCalculate = function()
  o2899["Value"] = o2899.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2899.Value == L0) then
    o2899["Value"] = L0
    CallFunction(o2897, "ProcesseStateChange")
  end
end }
o2900 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2900.SetStateValue(o2900.GetCalculated())
end, StartCalculate = function()
  o2900["Value"] = o2900.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2900.Value == L0) then
    DelayedFunction(11.97544, o2900, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2900.Value == L0) then
    o2900["Value"] = L0
    CallFunction(o2897, "ProcesseStateChange")
  end
end }
S_o2946 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2946, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2946, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2946, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o2946, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code5")
  else
    CallFunction(o2946, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o2946, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2946, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2946, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2948.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o2949.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2948 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2948.SetStateValue(o2948.GetCalculated())
end, StartCalculate = function()
  o2948["Value"] = o2948.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2948.Value == L0) then
    DelayedFunction(69.87847, o2948, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2948.Value == L0) then
    o2948["Value"] = L0
    CallFunction(o2946, "ProcesseStateChange")
  end
end }
o2949 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2949.SetStateValue(o2949.GetCalculated())
end, StartCalculate = function()
  o2949["Value"] = o2949.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2949.Value == L0) then
    o2949["Value"] = L0
    CallFunction(o2946, "ProcesseStateChange")
  end
end }
S_o2995 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2995, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2995, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2995, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2995, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o2995, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2995, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2998.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2996.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2997.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2996 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2996.SetStateValue(o2996.GetCalculated())
end, StartCalculate = function()
  o2996["Value"] = o2996.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2996.Value == L0) then
    o2996["Value"] = L0
    CallFunction(o2995, "ProcesseStateChange")
  end
end }
o2997 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2997.SetStateValue(o2997.GetCalculated())
end, StartCalculate = function()
  o2997["Value"] = o2997.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2997.Value == L0) then
    o2997["Value"] = L0
    CallFunction(o2995, "ProcesseStateChange")
  end
end }
o2998 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2998.SetStateValue(o2998.GetCalculated())
end, StartCalculate = function()
  o2998["Value"] = o2998.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2998.Value == L0) then
    DelayedFunction(69.87847, o2998, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2998.Value == L0) then
    o2998["Value"] = L0
    CallFunction(o2995, "ProcesseStateChange")
  end
end }
S_o3044 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3044, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3044, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3044, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3044, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o3044, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3044, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3047.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3045.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3046.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3045 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3045.SetStateValue(o3045.GetCalculated())
end, StartCalculate = function()
  o3045["Value"] = o3045.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3045.Value == L0) then
    o3045["Value"] = L0
    CallFunction(o3044, "ProcesseStateChange")
  end
end }
o3046 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3046.SetStateValue(o3046.GetCalculated())
end, StartCalculate = function()
  o3046["Value"] = o3046.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3046.Value == L0) then
    o3046["Value"] = L0
    CallFunction(o3044, "ProcesseStateChange")
  end
end }
o3047 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3047.SetStateValue(o3047.GetCalculated())
end, StartCalculate = function()
  o3047["Value"] = o3047.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3047.Value == L0) then
    DelayedFunction(69.87847, o3047, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3047.Value == L0) then
    o3047["Value"] = L0
    CallFunction(o3044, "ProcesseStateChange")
  end
end }
S_o3093 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3093, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3093, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3093, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3093, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o3093, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3093, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3096.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3094.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3095.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3094 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3094.SetStateValue(o3094.GetCalculated())
end, StartCalculate = function()
  o3094["Value"] = o3094.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3094.Value == L0) then
    o3094["Value"] = L0
    CallFunction(o3093, "ProcesseStateChange")
  end
end }
o3095 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3095.SetStateValue(o3095.GetCalculated())
end, StartCalculate = function()
  o3095["Value"] = o3095.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3095.Value == L0) then
    o3095["Value"] = L0
    CallFunction(o3093, "ProcesseStateChange")
  end
end }
o3096 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
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
    DelayedFunction(69.87847, o3096, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3096.Value == L0) then
    o3096["Value"] = L0
    CallFunction(o3093, "ProcesseStateChange")
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
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3142, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3142, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o3142, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3142, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3145.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3143.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
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
o3143 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3143.SetStateValue(o3143.GetCalculated())
end, StartCalculate = function()
  o3143["Value"] = o3143.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3143.Value == L0) then
    o3143["Value"] = L0
    CallFunction(o3142, "ProcesseStateChange")
  end
end }
o3144 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
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
o3145 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3145.SetStateValue(o3145.GetCalculated())
end, StartCalculate = function()
  o3145["Value"] = o3145.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3145.Value == L0) then
    DelayedFunction(69.87847, o3145, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3145.Value == L0) then
    o3145["Value"] = L0
    CallFunction(o3142, "ProcesseStateChange")
  end
end }
S_o3191 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3191, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3191, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3191, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3191, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o3191, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3191, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3194.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3192.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3193.Value ~= True) then
        L1 = 0
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
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3192.SetStateValue(o3192.GetCalculated())
end, StartCalculate = function()
  o3192["Value"] = o3192.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3192.Value == L0) then
    o3192["Value"] = L0
    CallFunction(o3191, "ProcesseStateChange")
  end
end }
o3193 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3193.SetStateValue(o3193.GetCalculated())
end, StartCalculate = function()
  o3193["Value"] = o3193.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3193.Value == L0) then
    o3193["Value"] = L0
    CallFunction(o3191, "ProcesseStateChange")
  end
end }
o3194 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3194.SetStateValue(o3194.GetCalculated())
end, StartCalculate = function()
  o3194["Value"] = o3194.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3194.Value == L0) then
    DelayedFunction(69.87847, o3194, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3194.Value == L0) then
    o3194["Value"] = L0
    CallFunction(o3191, "ProcesseStateChange")
  end
end }
S_o3240 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3240, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3240, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3240, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3240, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o3240, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3240, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3243.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3241.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3242.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3241 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3241.SetStateValue(o3241.GetCalculated())
end, StartCalculate = function()
  o3241["Value"] = o3241.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3241.Value == L0) then
    o3241["Value"] = L0
    CallFunction(o3240, "ProcesseStateChange")
  end
end }
o3242 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3242.SetStateValue(o3242.GetCalculated())
end, StartCalculate = function()
  o3242["Value"] = o3242.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3242.Value == L0) then
    o3242["Value"] = L0
    CallFunction(o3240, "ProcesseStateChange")
  end
end }
o3243 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3243.SetStateValue(o3243.GetCalculated())
end, StartCalculate = function()
  o3243["Value"] = o3243.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3243.Value == L0) then
    DelayedFunction(69.87847, o3243, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3243.Value == L0) then
    o3243["Value"] = L0
    CallFunction(o3240, "ProcesseStateChange")
  end
end }
S_o3289 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3289, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3289, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3289, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3289, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o3289, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3289, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3292.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3290.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3291.Value ~= True) then
        L1 = 0
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
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3290.SetStateValue(o3290.GetCalculated())
end, StartCalculate = function()
  o3290["Value"] = o3290.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3290.Value == L0) then
    o3290["Value"] = L0
    CallFunction(o3289, "ProcesseStateChange")
  end
end }
o3291 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3291.SetStateValue(o3291.GetCalculated())
end, StartCalculate = function()
  o3291["Value"] = o3291.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3291.Value == L0) then
    o3291["Value"] = L0
    CallFunction(o3289, "ProcesseStateChange")
  end
end }
o3292 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3292.SetStateValue(o3292.GetCalculated())
end, StartCalculate = function()
  o3292["Value"] = o3292.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3292.Value == L0) then
    DelayedFunction(69.87847, o3292, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3292.Value == L0) then
    o3292["Value"] = L0
    CallFunction(o3289, "ProcesseStateChange")
  end
end }
S_o3338 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3338, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3338, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3338, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3338, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o3338, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3338, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3341.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3339.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3340.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3339 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3339.SetStateValue(o3339.GetCalculated())
end, StartCalculate = function()
  o3339["Value"] = o3339.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3339.Value == L0) then
    o3339["Value"] = L0
    CallFunction(o3338, "ProcesseStateChange")
  end
end }
o3340 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3340.SetStateValue(o3340.GetCalculated())
end, StartCalculate = function()
  o3340["Value"] = o3340.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3340.Value == L0) then
    o3340["Value"] = L0
    CallFunction(o3338, "ProcesseStateChange")
  end
end }
o3341 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3341.SetStateValue(o3341.GetCalculated())
end, StartCalculate = function()
  o3341["Value"] = o3341.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3341.Value == L0) then
    DelayedFunction(69.87847, o3341, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3341.Value == L0) then
    o3341["Value"] = L0
    CallFunction(o3338, "ProcesseStateChange")
  end
end }
S_o3387 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3387, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3387, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3387, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3387, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o3387, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3387, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3390.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3388.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3389.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3388 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3388.SetStateValue(o3388.GetCalculated())
end, StartCalculate = function()
  o3388["Value"] = o3388.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3388.Value == L0) then
    o3388["Value"] = L0
    CallFunction(o3387, "ProcesseStateChange")
  end
end }
o3389 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3389.SetStateValue(o3389.GetCalculated())
end, StartCalculate = function()
  o3389["Value"] = o3389.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3389.Value == L0) then
    o3389["Value"] = L0
    CallFunction(o3387, "ProcesseStateChange")
  end
end }
o3390 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3390.SetStateValue(o3390.GetCalculated())
end, StartCalculate = function()
  o3390["Value"] = o3390.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3390.Value == L0) then
    DelayedFunction(69.87847, o3390, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3390.Value == L0) then
    o3390["Value"] = L0
    CallFunction(o3387, "ProcesseStateChange")
  end
end }
S_o3436 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3436, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3436, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3436, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3436, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code5")
  else
    CallFunction(o3436, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o3436, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3436, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3436, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Born = function(L0, L1)
  o3441.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3438.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o3439.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3438 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3438.SetStateValue(o3438.GetCalculated())
end, StartCalculate = function()
  o3438["Value"] = o3438.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3438.Value == L0) then
    DelayedFunction(73.1271, o3438, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3438.Value == L0) then
    o3438["Value"] = L0
    CallFunction(o3436, "ProcesseStateChange")
  end
end }
o3439 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3439.SetStateValue(o3439.GetCalculated())
end, StartCalculate = function()
  o3439["Value"] = o3439.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3439.Value == L0) then
    o3439["Value"] = L0
    CallFunction(o3436, "ProcesseStateChange")
  end
end }
o3441 = { [nil] = {}, Start = function()
  o3441["Value"] = False
  o1487.StartCalculate()
  o4168.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3441.Value == L0) then
    o3441["Value"] = L0
    o1487.ReCalculate()
    o4168.ReCalculate()
  end
end }
S_o3485 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3485, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3485, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3485, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3485, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o3485, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3485, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3488.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3486.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3487.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3486 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3486.SetStateValue(o3486.GetCalculated())
end, StartCalculate = function()
  o3486["Value"] = o3486.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3486.Value == L0) then
    o3486["Value"] = L0
    CallFunction(o3485, "ProcesseStateChange")
  end
end }
o3487 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3487.SetStateValue(o3487.GetCalculated())
end, StartCalculate = function()
  o3487["Value"] = o3487.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3487.Value == L0) then
    o3487["Value"] = L0
    CallFunction(o3485, "ProcesseStateChange")
  end
end }
o3488 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3488.SetStateValue(o3488.GetCalculated())
end, StartCalculate = function()
  o3488["Value"] = o3488.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3488.Value == L0) then
    DelayedFunction(73.1271, o3488, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3488.Value == L0) then
    o3488["Value"] = L0
    CallFunction(o3485, "ProcesseStateChange")
  end
end }
S_o3534 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3534, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3534, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3534, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3534, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o3534, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3534, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3537.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3535.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3536.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3535 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3535.SetStateValue(o3535.GetCalculated())
end, StartCalculate = function()
  o3535["Value"] = o3535.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3535.Value == L0) then
    o3535["Value"] = L0
    CallFunction(o3534, "ProcesseStateChange")
  end
end }
o3536 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3536.SetStateValue(o3536.GetCalculated())
end, StartCalculate = function()
  o3536["Value"] = o3536.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3536.Value == L0) then
    o3536["Value"] = L0
    CallFunction(o3534, "ProcesseStateChange")
  end
end }
o3537 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3537.SetStateValue(o3537.GetCalculated())
end, StartCalculate = function()
  o3537["Value"] = o3537.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3537.Value == L0) then
    DelayedFunction(73.1271, o3537, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3537.Value == L0) then
    o3537["Value"] = L0
    CallFunction(o3534, "ProcesseStateChange")
  end
end }
S_o3583 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3583, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3583, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3583, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3583, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o3583, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3583, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3586.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3584.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3585.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3584 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3584.SetStateValue(o3584.GetCalculated())
end, StartCalculate = function()
  o3584["Value"] = o3584.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3584.Value == L0) then
    o3584["Value"] = L0
    CallFunction(o3583, "ProcesseStateChange")
  end
end }
o3585 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3585.SetStateValue(o3585.GetCalculated())
end, StartCalculate = function()
  o3585["Value"] = o3585.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3585.Value == L0) then
    o3585["Value"] = L0
    CallFunction(o3583, "ProcesseStateChange")
  end
end }
o3586 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3586.SetStateValue(o3586.GetCalculated())
end, StartCalculate = function()
  o3586["Value"] = o3586.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3586.Value == L0) then
    DelayedFunction(73.1271, o3586, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3586.Value == L0) then
    o3586["Value"] = L0
    CallFunction(o3583, "ProcesseStateChange")
  end
end }
S_o3632 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3632, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3632, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3632, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3632, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o3632, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3632, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3635.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3633.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3634.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3633 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3633.SetStateValue(o3633.GetCalculated())
end, StartCalculate = function()
  o3633["Value"] = o3633.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3633.Value == L0) then
    o3633["Value"] = L0
    CallFunction(o3632, "ProcesseStateChange")
  end
end }
o3634 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3634.SetStateValue(o3634.GetCalculated())
end, StartCalculate = function()
  o3634["Value"] = o3634.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3634.Value == L0) then
    o3634["Value"] = L0
    CallFunction(o3632, "ProcesseStateChange")
  end
end }
o3635 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3635.SetStateValue(o3635.GetCalculated())
end, StartCalculate = function()
  o3635["Value"] = o3635.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3635.Value == L0) then
    DelayedFunction(73.1271, o3635, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3635.Value == L0) then
    o3635["Value"] = L0
    CallFunction(o3632, "ProcesseStateChange")
  end
end }
S_o3681 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3681, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3681, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3681, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3681, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o3681, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3681, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3684.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3682.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3683.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3682 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3682.SetStateValue(o3682.GetCalculated())
end, StartCalculate = function()
  o3682["Value"] = o3682.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3682.Value == L0) then
    o3682["Value"] = L0
    CallFunction(o3681, "ProcesseStateChange")
  end
end }
o3683 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3683.SetStateValue(o3683.GetCalculated())
end, StartCalculate = function()
  o3683["Value"] = o3683.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3683.Value == L0) then
    o3683["Value"] = L0
    CallFunction(o3681, "ProcesseStateChange")
  end
end }
o3684 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3684.SetStateValue(o3684.GetCalculated())
end, StartCalculate = function()
  o3684["Value"] = o3684.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3684.Value == L0) then
    DelayedFunction(73.1271, o3684, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3684.Value == L0) then
    o3684["Value"] = L0
    CallFunction(o3681, "ProcesseStateChange")
  end
end }
S_o3730 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3730, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3730, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3730, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3730, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o3730, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3730, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3733.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3731.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3732.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3731 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3731.SetStateValue(o3731.GetCalculated())
end, StartCalculate = function()
  o3731["Value"] = o3731.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3731.Value == L0) then
    o3731["Value"] = L0
    CallFunction(o3730, "ProcesseStateChange")
  end
end }
o3732 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3732.SetStateValue(o3732.GetCalculated())
end, StartCalculate = function()
  o3732["Value"] = o3732.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3732.Value == L0) then
    o3732["Value"] = L0
    CallFunction(o3730, "ProcesseStateChange")
  end
end }
o3733 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3733.SetStateValue(o3733.GetCalculated())
end, StartCalculate = function()
  o3733["Value"] = o3733.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3733.Value == L0) then
    DelayedFunction(73.1271, o3733, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3733.Value == L0) then
    o3733["Value"] = L0
    CallFunction(o3730, "ProcesseStateChange")
  end
end }
S_o3779 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3779, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3779, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3779, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3779, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o3779, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3779, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3782.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3780.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3781.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3780 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3780.SetStateValue(o3780.GetCalculated())
end, StartCalculate = function()
  o3780["Value"] = o3780.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3780.Value == L0) then
    o3780["Value"] = L0
    CallFunction(o3779, "ProcesseStateChange")
  end
end }
o3781 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3781.SetStateValue(o3781.GetCalculated())
end, StartCalculate = function()
  o3781["Value"] = o3781.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3781.Value == L0) then
    o3781["Value"] = L0
    CallFunction(o3779, "ProcesseStateChange")
  end
end }
o3782 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3782.SetStateValue(o3782.GetCalculated())
end, StartCalculate = function()
  o3782["Value"] = o3782.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3782.Value == L0) then
    DelayedFunction(73.1271, o3782, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3782.Value == L0) then
    o3782["Value"] = L0
    CallFunction(o3779, "ProcesseStateChange")
  end
end }
S_o3828 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3828, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3828, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3828, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3828, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o3828, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3828, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3831.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3829.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3830.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3829 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3829.SetStateValue(o3829.GetCalculated())
end, StartCalculate = function()
  o3829["Value"] = o3829.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3829.Value == L0) then
    o3829["Value"] = L0
    CallFunction(o3828, "ProcesseStateChange")
  end
end }
o3830 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3830.SetStateValue(o3830.GetCalculated())
end, StartCalculate = function()
  o3830["Value"] = o3830.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3830.Value == L0) then
    o3830["Value"] = L0
    CallFunction(o3828, "ProcesseStateChange")
  end
end }
o3831 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3831.SetStateValue(o3831.GetCalculated())
end, StartCalculate = function()
  o3831["Value"] = o3831.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3831.Value == L0) then
    DelayedFunction(73.1271, o3831, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3831.Value == L0) then
    o3831["Value"] = L0
    CallFunction(o3828, "ProcesseStateChange")
  end
end }
S_o3877 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3877, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3877, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3877, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3877, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 666, 0.2, "Code5")
  else
    CallFunction(o3877, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3877, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3880.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3878.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3879.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3878 = { [nil] = {}, GetCalculated = function()
  if not (o2217.Value == True) then
    if not (o1494.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3878.SetStateValue(o3878.GetCalculated())
end, StartCalculate = function()
  o3878["Value"] = o3878.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3878.Value == L0) then
    o3878["Value"] = L0
    CallFunction(o3877, "ProcesseStateChange")
  end
end }
o3879 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3879.SetStateValue(o3879.GetCalculated())
end, StartCalculate = function()
  o3879["Value"] = o3879.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3879.Value == L0) then
    o3879["Value"] = L0
    CallFunction(o3877, "ProcesseStateChange")
  end
end }
o3880 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
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
    DelayedFunction(73.1271, o3880, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3880.Value == L0) then
    o3880["Value"] = L0
    CallFunction(o3877, "ProcesseStateChange")
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
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3926, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3926, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3926, "Code5")
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
  if not (o4219.Value == True) then
    if not (False ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3927.SetStateValue(o3927.GetCalculated())
end, StartCalculate = function()
  o3927["Value"] = o3927.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3927.Value == L0) then
    o3927["Value"] = L0
    CallFunction(o3926, "ProcesseStateChange")
  end
end }
S_o3974 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3974, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3974, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3974, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3974, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3974, "Code5")
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
  if not (o4219.Value == True) then
    if not (False ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3975.SetStateValue(o3975.GetCalculated())
end, StartCalculate = function()
  o3975["Value"] = o3975.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3975.Value == L0) then
    o3975["Value"] = L0
    CallFunction(o3974, "ProcesseStateChange")
  end
end }
S_o4022 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4022, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4022, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4022, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4022, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4022, "Code5")
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
  if not (o4219.Value == True) then
    if not (False ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o4023.SetStateValue(o4023.GetCalculated())
end, StartCalculate = function()
  o4023["Value"] = o4023.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4023.Value == L0) then
    o4023["Value"] = L0
    CallFunction(o4022, "ProcesseStateChange")
  end
end }
S_o4070 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4070, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4070, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4070, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4070, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4070, "Code5")
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
  if not (o4219.Value == True) then
    if not (False ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o4071.SetStateValue(o4071.GetCalculated())
end, StartCalculate = function()
  o4071["Value"] = o4071.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4071.Value == L0) then
    o4071["Value"] = L0
    CallFunction(o4070, "ProcesseStateChange")
  end
end }
S_o4118 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4118, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4118, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4118, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4118, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4118, "Code5")
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
  if not (o4219.Value == True) then
    if not (False ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o4119.SetStateValue(o4119.GetCalculated())
end, StartCalculate = function()
  o4119["Value"] = o4119.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4119.Value == L0) then
    o4119["Value"] = L0
    CallFunction(o4118, "ProcesseStateChange")
  end
end }
S_o4166 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4166, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4166, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4166, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  PhysicalCharacter_StartAnimation(L0.Node, 0, 0)
  PhysicalCharacter_StartAnimation(L0.Node, 1, 0)
  PhysicalCharacter_StartAnimation(L0.Node, 2, 0)
  Character_StartAnimation(L0.Node, "mouth")
  PhysicalCharacter_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o4166, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    OldOneLib.Goto(L0, "/Scenario_Dynamic/Navigation/Crocell_Path1", 1, "Code9")
  else
    CallFunction(o4166, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o4166, "Code8")
  else
    CallFunction(o4166, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Body_SetKineticShield(L0.Node, 0, 0.8)
  CallFunction(o4166, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    OldOneLib.Goto(L0, "/IngameSequences/Navigation/CrocellPath_C2_1", 1, "Code12")
  else
    CallFunction(o4166, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4166, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1477.Node)
  PhysicalCharacter_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o4166, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    OldOneLib.Goto(L0, "/Scenario_Dynamic/Navigation/Crocell_Path2", 1, "Code16")
  else
    CallFunction(o4166, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o4166, "Code15")
  else
    CallFunction(o4166, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1477.Node)
  PhysicalCharacter_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o4166, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    OldOneLib.Goto(L0, "/Scenario_Dynamic/Navigation/Crocell_Path3", 1, "Code20")
  else
    CallFunction(o4166, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  Body_SetKineticShield(L0.Node, 0, 0.498423)
  CallFunction(o4166, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    OldOneLib.Goto(L0, "/Scenario_Dynamic/Navigation/Crocell_Path4", 1, "Code22")
  else
    CallFunction(o4166, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o4166, "Code21")
  else
    CallFunction(o4166, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
end, SetStateValue_Born = function(L0, L1)
  o4175.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o4176.SetStateValue(L1)
end, SetStateValue_KineticShield50 = function(L0, L1)
  o4178.SetStateValue(L1)
end, SetStateValue_KineticShield25 = function(L0, L1)
  o4179.SetStateValue(L1)
end, SetStateValue_Sonar = function(L0, L1)
  o4180.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4168.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4168 = { [nil] = {}, GetCalculated = function()
  if not (o3441.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4168.SetStateValue(o4168.GetCalculated())
end, StartCalculate = function()
  o4168["Value"] = o4168.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4168.Value == L0) then
    DelayedFunction(14.540189, o4168, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4168.Value == L0) then
    o4168["Value"] = L0
    CallFunction(o4166, "ProcesseStateChange")
  end
end }
o4175 = { [nil] = {}, Start = function()
  o4175["Value"] = False
  o1488.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4175.Value == L0) then
    o4175["Value"] = L0
    o1488.ReCalculate()
  end
end }
o4176 = { [nil] = {}, Start = function()
  o4176["Value"] = False
  o1493.StartCalculate()
  o4595.StartCalculate()
  o4604.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4176.Value == L0) then
    o4176["Value"] = L0
    o1493.ReCalculate()
    o4595.ReCalculate()
    o4604.ReCalculate()
  end
end }
o4178 = { [nil] = {}, Start = function()
  o4178["Value"] = False
  o4556.StartCalculate()
  o4565.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4178.Value == L0) then
    o4178["Value"] = L0
    o4556.ReCalculate()
    o4565.ReCalculate()
  end
end }
o4179 = { [nil] = {}, Start = function()
  o4179["Value"] = False
  o4263.StartCalculate()
  o4570.StartCalculate()
  o4579.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4179.Value == L0) then
    o4179["Value"] = L0
    o4263.ReCalculate()
    o4570.ReCalculate()
    o4579.ReCalculate()
  end
end }
o4180 = { [nil] = {}, Start = function()
  o4180["Value"] = False
  o4182.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4180.Value == L0) then
    o4180["Value"] = L0
    o4182.ReCalculate()
  end
end }
o4182 = { [nil] = {}, GetCalculated = function()
  if not (o4180.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4182.SetStateValue(o4182.GetCalculated())
end, StartCalculate = function()
  o4182["Value"] = o4182.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("crocell is blind")
  PhysicalCharacter_SetHitPropability(o4166.Node, 0.5)
end, SetStateValue = function(L0)
  if not (o4182.Value == L0) then
    o4182["Value"] = L0
    if not (L0 ~= 1) then
      o4182.ChangeTo1()
    end
  end
end }
S_o4211 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4211, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4211, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4211, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  PhysicalCharacter_StartAnimation(L0.Node, 0, 0)
  PhysicalCharacter_StartAnimation(L0.Node, 1, 0)
  PhysicalCharacter_StartAnimation(L0.Node, 2, 0)
  Character_StartAnimation(L0.Node, "mouth")
  PhysicalCharacter_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o4211, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    OldOneLib.Attack(L0, o1477.Node, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "Code9")
  else
    CallFunction(o4211, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_KineticShield25 = function(L0, L1)
  o4219.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4213.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4213 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4213.SetStateValue(o4213.GetCalculated())
end, StartCalculate = function()
  o4213["Value"] = o4213.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4213.Value == L0) then
    DelayedFunction(11.97544, o4213, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4213.Value == L0) then
    o4213["Value"] = L0
    CallFunction(o4211, "ProcesseStateChange")
  end
end }
o4219 = { [nil] = {}, Start = function()
  o4219["Value"] = False
  o3927.StartCalculate()
  o3975.StartCalculate()
  o4023.StartCalculate()
  o4071.StartCalculate()
  o4119.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4219.Value == L0) then
    o4219["Value"] = L0
    o3927.ReCalculate()
    o3975.ReCalculate()
    o4023.ReCalculate()
    o4071.ReCalculate()
    o4119.ReCalculate()
  end
end }
S_o4250 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 99945)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o4166.Node)
  CallFunction(o4250, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4255 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 99945)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o4309.Node)
  CallFunction(o4255, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4260 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4260, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4260, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4260, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearAreaFrom(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_FArea", o2104.Node, 1, 1, "Code4")
  else
    CallFunction(o4260, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Tursas6h3_Path_1", 1, 1 } }("Code5")
  else
    CallFunction(o4260, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o4260, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4263.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4263 = { [nil] = {}, GetCalculated = function()
  if not (o4179.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4263.SetStateValue(o4263.GetCalculated())
end, StartCalculate = function()
  o4263["Value"] = o4263.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4263.Value == L0) then
    DelayedFunction(0.25, o4263, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4263.Value == L0) then
    o4263["Value"] = L0
    CallFunction(o4260, "ProcesseStateChange")
  end
end }
S_o4309 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4309, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4309, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4309, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o4309, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o4309, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/GhostVSBonhamPath_1", 1, 1 } }("Code6")
  else
    CallFunction(o4309, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Vessel_AttackTurrets(L0.Node, "", "wng_bonham", "", "", "")
  CallFunction(o4309, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code8")
  else
    CallFunction(o4309, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4309, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/GhostVSPlayerPath_1", 1, 1 } }("Code10")
  else
    CallFunction(o4309, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  StopAllActiveBehaviours(L0)
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o4309, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/GhostVSPlayerPath_2", 1, 1 } }("Code13")
  else
    CallFunction(o4309, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
end, SetStateValue_Destroyed = function(L0, L1)
  o4317.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4312.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o4313.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4312 = { [nil] = {}, GetCalculated = function()
  if not (o2124.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4312.SetStateValue(o4312.GetCalculated())
end, StartCalculate = function()
  o4312["Value"] = o4312.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4312.Value == L0) then
    o4312["Value"] = L0
    CallFunction(o4309, "ProcesseStateChange")
  end
end }
o4313 = { [nil] = {}, GetCalculated = function()
  if not (o2116.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4313.SetStateValue(o4313.GetCalculated())
end, StartCalculate = function()
  o4313["Value"] = o4313.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4313.Value == L0) then
    o4313["Value"] = L0
    CallFunction(o4309, "ProcesseStateChange")
  end
end }
o4317 = { [nil] = {}, Start = function()
  o4317["Value"] = False
  o1492.StartCalculate()
  o4361.StartCalculate()
  o4409.StartCalculate()
  o4457.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4317.Value == L0) then
    o4317["Value"] = L0
    o1492.ReCalculate()
    o4361.ReCalculate()
    o4409.ReCalculate()
    o4457.ReCalculate()
  end
end }
S_o4360 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4360, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4360, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4360, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Gun_SetSniperBullet(L0.Node, "bul_sizzler_p", 4)
  Gun_SetDogBullet(L0.Node, "bul_lasergatlin_s", 0.5)
  CallFunction(o4360, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/GhostBattle_Area", "/Scenario_Dynamic/Navigation/GhostBattle_Area", "/Scenario_Dynamic/Navigation/GhostBattle_Area", "player", "", "", "", 0.75, "Code6")
  else
    CallFunction(o4360, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o4360, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4362.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o4361.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4361 = { [nil] = {}, GetCalculated = function()
  if not (o4317.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4361.SetStateValue(o4361.GetCalculated())
end, StartCalculate = function()
  o4361["Value"] = o4361.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4361.Value == L0) then
    o4361["Value"] = L0
    CallFunction(o4360, "ProcesseStateChange")
  end
end }
o4362 = { [nil] = {}, GetCalculated = function()
  if not (o4577.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4362.SetStateValue(o4362.GetCalculated())
end, StartCalculate = function()
  o4362["Value"] = o4362.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4362.Value == L0) then
    DelayedFunction(15, o4362, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4362.Value == L0) then
    o4362["Value"] = L0
    CallFunction(o4360, "ProcesseStateChange")
  end
end }
S_o4408 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4408, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4408, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4408, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Gun_SetSniperBullet(L0.Node, "bul_sizzler_p", 4)
  Gun_SetDogBullet(L0.Node, "bul_lasergatlin_s", 0.5)
  CallFunction(o4408, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/GhostBattle_Area", "/Scenario_Dynamic/Navigation/GhostBattle_Area", "/Scenario_Dynamic/Navigation/GhostBattle_Area", "player", "", "", "", 0.75, "Code6")
  else
    CallFunction(o4408, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o4408, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4410.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o4409.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4409 = { [nil] = {}, GetCalculated = function()
  if not (o4317.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4409.SetStateValue(o4409.GetCalculated())
end, StartCalculate = function()
  o4409["Value"] = o4409.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4409.Value == L0) then
    o4409["Value"] = L0
    CallFunction(o4408, "ProcesseStateChange")
  end
end }
o4410 = { [nil] = {}, GetCalculated = function()
  if not (o4577.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4410.SetStateValue(o4410.GetCalculated())
end, StartCalculate = function()
  o4410["Value"] = o4410.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4410.Value == L0) then
    DelayedFunction(15, o4410, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4410.Value == L0) then
    o4410["Value"] = L0
    CallFunction(o4408, "ProcesseStateChange")
  end
end }
S_o4456 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4456, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4456, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4456, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Gun_SetSniperBullet(L0.Node, "bul_sizzler_p", 4)
  Gun_SetDogBullet(L0.Node, "bul_lasergatlin_s", 0.5)
  CallFunction(o4456, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/GhostBattle_Area", "/Scenario_Dynamic/Navigation/GhostBattle_Area", "/Scenario_Dynamic/Navigation/GhostBattle_Area", "player", "", "", "", 0.75, "Code6")
  else
    CallFunction(o4456, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o4456, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4458.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o4457.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4457 = { [nil] = {}, GetCalculated = function()
  if not (o4317.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4457.SetStateValue(o4457.GetCalculated())
end, StartCalculate = function()
  o4457["Value"] = o4457.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4457.Value == L0) then
    o4457["Value"] = L0
    CallFunction(o4456, "ProcesseStateChange")
  end
end }
o4458 = { [nil] = {}, GetCalculated = function()
  if not (o4577.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4458.SetStateValue(o4458.GetCalculated())
end, StartCalculate = function()
  o4458["Value"] = o4458.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4458.Value == L0) then
    DelayedFunction(15, o4458, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4458.Value == L0) then
    o4458["Value"] = L0
    CallFunction(o4456, "ProcesseStateChange")
  end
end }
S_o4504 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o2104.Node)
  CallFunction(o4504, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4509 = { [nil] = {}, Start = function(L0)

end }
S_o4510 = { [nil] = {}, Start = function(L0)

end }
S_o4511 = { [nil] = {}, Start = function(L0)

end }
S_o4512 = { [nil] = {}, Start = function(L0)

end }
S_o4513 = { [nil] = {}, Start = function(L0)

end }
S_o4514 = { [nil] = {}, Start = function(L0)

end }
o4516 = FormationLib.CreateFormation("Triangle", "", "", "", 40, 40)
o4518 = FormationLib.CreateFormation("InverseTriangle", "", "", "", 40, 40)
o4520 = FormationLib.CreateFormation("Row", "", "", "", 40, 40)
o4522 = FormationLib.CreateFormation("Triangle", "", "", "", 40, 40)
o4524 = FormationLib.CreateFormation("Triangle", "", "", "", 40, 40)
S_o4525 = { [nil] = {}, Start = function(L0)

end }
S_o4526 = { [nil] = {}, Start = function(L0)

end }
S_o4527 = { [nil] = {}, Start = function(L0)

end }
S_o4528 = { [nil] = {}, Start = function(L0)

end }
S_o4529 = { [nil] = {}, Start = function(L0)

end }
S_o4530 = { [nil] = {}, Start = function(L0)

end }
S_o4531 = { [nil] = {}, Start = function(L0)

end }
S_o4533 = { [nil] = {}, Start = function(L0)

end }
S_o4534 = { [nil] = {}, Start = function(L0)

end }
S_o4535 = { [nil] = {}, Start = function(L0)

end }
S_o4536 = { [nil] = {}, Start = function(L0)

end }
S_o4537 = { [nil] = {}, Start = function(L0)

end }
S_o4538 = { [nil] = {}, Start = function(L0)

end }
S_o4540 = { [nil] = {}, Start = function(L0)

end }
S_o4541 = { [nil] = {}, Start = function(L0)

end }
S_o4542 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Player_SuppressFF(Node_Find("/Scenario_Dynamic/Object/player1"))
  Director_BeginCutscene(L0.Node)
  FormationLib.PlaceFormationPath(o4515, o4516, "/IngameSequences/Navigation/PlayerPath_1")
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MFMN", 0)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o4542, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o4515, o4516, "/IngameSequences/Navigation/PlayerPath_1", "pos_1", "pos_6", 0.65, 1, "Code9")
  else
    CallFunction(o4542, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Camera_Cut(L0.Node, 1)
  CallFunction(o4542, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.1, "Code11")
  else
    CallFunction(o4542, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_LookAt(L0.Node, "/Scenario_Static/Object/atl_fpowerstation_1", 0, "MFMN", 0)
  CallFunction(o4542, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.9, "Code15")
  else
    CallFunction(o4542, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_3", 4, "MMMN", 0)
  CallFunction(o4542, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code17")
  else
    CallFunction(o4542, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  Camera_Cut(L0.Node, 1)
  CallFunction(o4542, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.1, "Code19")
  else
    CallFunction(o4542, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  o1482.SetStateValue(True)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_4", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MFMN", 0)
  FormationLib.PlaceFormationPath(o4515, o4516, "/IngameSequences/Navigation/PlayerPath_2")
  CallFunction(o4542, "Code24")
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.9, "Code25")
  else
    CallFunction(o4542, "Code25")
  end
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_5", 5, "MMMN", 0)
  CallFunction(o4542, "Code26")
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o4515, o4516, "/IngameSequences/Navigation/PlayerPath_2", "pos_1", "pos_2", 1, 1, "Code27")
  else
    CallFunction(o4542, "Code27")
  end
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  Director_EndCutscene(L0.Node)
  CallFunction(o2053, "Code4")
  CallFunction(o2104, "Code6")
  CallFunction(o2159, "Code7")
  SendRadioMessageTake(o2104.Node, o1477.Node, 1073)
  SendRadioMessageTake(o2104.Node, o1477.Node, 1074)
  SED_SetTaskTextKey(1333, -1, -1)
  Game_SetWayPoint(GetGameNode(), o4504.Node)
  CallFunction(o4542, "Code35")
end, Code35 = function(L0)
  L0["CodeIndex"] = 35
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4549 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4549, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Camera_ShakeHit(L0.Node, 2, 2, 2, 2)
  CallFunction(o4549, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o4550.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4550 = { [nil] = {}, GetCalculated = function()
  if not (o4623.Value ~= True) then
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
    DelayedFunction(0.75, o4550, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4550.Value == L0) then
    o4550["Value"] = L0
    CallFunction(o4549, "ProcesseStateChange")
  end
end }
S_o4552 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.2, "Code1")
  else
    CallFunction(o4552, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o1477.Node, o1477.Node, 1069)
  SendRadioMessageTake(o1477.Node, o1477.Node, 1070)
  SendRadioMessageTake(o1477.Node, o1477.Node, 1071)
  SendRadioMessageTake(o1477.Node, o1477.Node, 1072)
  CallFunction(o4552, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4555 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4555, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SetEnemyMatrixElement(5, 1, F)
  SetEnemyMatrixElement(5, 2, F)
  SetEnemyMatrixElement(0, 5, F)
  Director_BeginCutscene(L0.Node)
  FormationLib.PlaceFormationPath(o4523, o4524, "/IngameSequences/Navigation/CrocellPath_C2_1")
  FormationLib.PlaceFormationPath(o4517, o4518, "/IngameSequences/Navigation/PlayerPath_3")
  FormationLib.PlaceFormationPath(o4519, o4520, "/IngameSequences/Navigation/BonhamPath_C2_1")
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_6", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/old_crocell_1", 0, "MFMN", 0)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o4555, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.75, "Code14")
  else
    CallFunction(o4555, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  CallFunction(o4166, "Code10")
  CallFunction(o2104, "Code11")
  CallFunction(o4555, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o4517, o4518, "/IngameSequences/Navigation/PlayerPath_3", "pos_1", "pos_3", 0.75, 1, "Code17")
  else
    CallFunction(o4555, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 3, "MMMN", 0)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_7", 7, "MMMN", 0)
  CallFunction(o4555, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o4517, o4518, "/IngameSequences/Navigation/PlayerPath_3", "pos_3", "pos_6", 1, 1, "Code20")
  else
    CallFunction(o4555, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o4556.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4556 = { [nil] = {}, GetCalculated = function()
  if not (o4178.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4556.SetStateValue(o4556.GetCalculated())
end, StartCalculate = function()
  o4556["Value"] = o4556.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4556.Value == L0) then
    o4556["Value"] = L0
    CallFunction(o4555, "ProcesseStateChange")
  end
end }
S_o4559 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4559, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/wng_bonham_6h3_1", 2, "MMMN", 0)
  CallFunction(o4559, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4559, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  FormationLib.PlaceFormationPath(o4523, o4524, "/Scenario_Dynamic/Navigation/Crocell_Path2")
  FormationLib.PlaceFormationPath(o4517, o4518, "/IngameSequences/Navigation/PlayerPath_4")
  CallFunction(o4559, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code6")
  else
    CallFunction(o4559, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  CallFunction(o4166, "Code13")
  CallFunction(o2053, "Code7")
  CallFunction(o2159, "Code12")
  Director_EndCutscene(L0.Node)
  SetEnemyMatrixElement(5, 1, E)
  SetEnemyMatrixElement(5, 2, E)
  SetEnemyMatrixElement(0, 5, E)
  CallFunction(o4559, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o4560.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 2) then
    if not (L0.CodeIndex >= 3) then
      if not (o4561.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4560 = { [nil] = {}, GetCalculated = function()
  if not (o4629.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4560.SetStateValue(o4560.GetCalculated())
end, StartCalculate = function()
  o4560["Value"] = o4560.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4560.Value == L0) then
    o4560["Value"] = L0
    CallFunction(o4559, "ProcesseStateChange")
  end
end }
o4561 = { [nil] = {}, GetCalculated = function()
  if not (o1489.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4561.SetStateValue(o4561.GetCalculated())
end, StartCalculate = function()
  o4561["Value"] = o4561.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4561.Value == L0) then
    o4561["Value"] = L0
    CallFunction(o4559, "ProcesseStateChange")
  end
end }
S_o4564 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4564, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 16.25, "Code2")
  else
    CallFunction(o4564, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o1477.Node, o1477.Node, 1081)
  CallFunction(o4564, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4564, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  SendRadioMessageTake(o2104.Node, o1477.Node, 1082)
  CallFunction(o4564, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o4565.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4567.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4565 = { [nil] = {}, GetCalculated = function()
  if not (o4178.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4565.SetStateValue(o4565.GetCalculated())
end, StartCalculate = function()
  o4565["Value"] = o4565.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4565.Value == L0) then
    o4565["Value"] = L0
    CallFunction(o4564, "ProcesseStateChange")
  end
end }
o4567 = { [nil] = {}, GetCalculated = function()
  if not (o4629.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4567.SetStateValue(o4567.GetCalculated())
end, StartCalculate = function()
  o4567["Value"] = o4567.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4567.Value == L0) then
    o4567["Value"] = L0
    CallFunction(o4564, "ProcesseStateChange")
  end
end }
S_o4569 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4569, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SetEnemyMatrixElement(5, 1, F)
  SetEnemyMatrixElement(5, 2, F)
  SetEnemyMatrixElement(0, 5, F)
  SetEnemyMatrixElement(2, 5, F)
  Director_BeginCutscene(L0.Node)
  FormationLib.PlaceFormationPath(o4519, o4520, "/IngameSequences/Navigation/BonhamPath_C3_1")
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_8", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/wng_bonham_6h3_1", 0, "MFMN", 0)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o4569, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.75, "Code13")
  else
    CallFunction(o4569, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  CallFunction(o2104, "Code16")
  CallFunction(o4569, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4569, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_9", 5, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/atl_ghost_1", 7, "MFMN", 0)
  CallFunction(o4569, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4569, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  Camera_Cut(L0.Node, 1)
  FormationLib.PlaceFormationPath(o4521, o4522, "/IngameSequences/Navigation/PlayerPath_5")
  FormationLib.PlaceFormationPath(o4532, o4522, "/Scenario_Dynamic/Navigation/GhostVSPlayerPath_2")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_10", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  o4584.SetStateValue(True)
  CallFunction(o4569, "Code24")
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.75, "Code25")
  else
    CallFunction(o4569, "Code25")
  end
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_11", 8, "MMMN", 0)
  CallFunction(o4569, "Code26")
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o4521, o4522, "/IngameSequences/Navigation/PlayerPath_5", "pos_1", "pos_2", 1, 1, "Code27")
  else
    CallFunction(o4569, "Code27")
  end
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_12", 8, "MMMN", 0)
  CallFunction(o4569, "Code28")
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o4521, o4522, "/IngameSequences/Navigation/PlayerPath_5", "pos_2", "pos_3", 1, 1, "Code29")
  else
    CallFunction(o4569, "Code29")
  end
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  CallFunction(o4309, "Code10")
  CallFunction(o4166, "Code17")
  CallFunction(o2053, "Code9")
  CallFunction(o2159, "Code15")
  Director_EndCutscene(L0.Node)
  Game_SetWayPoint(GetGameNode(), o4309.Node)
  SetEnemyMatrixElement(5, 1, E)
  SetEnemyMatrixElement(5, 2, E)
  SetEnemyMatrixElement(0, 5, E)
  SetEnemyMatrixElement(2, 5, E)
  o4577.SetStateValue(True)
  SED_SetTaskTextKey(1336, -1, -1)
  CallFunction(o4569, "Code41")
end, Code41 = function(L0)
  L0["CodeIndex"] = 41
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o4570.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 14) then
    if not (L0.CodeIndex >= 15) then
      if not (o4572.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 17) then
    if not (L0.CodeIndex >= 18) then
      if not (o4573.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4570 = { [nil] = {}, GetCalculated = function()
  if not (o4179.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4570.SetStateValue(o4570.GetCalculated())
end, StartCalculate = function()
  o4570["Value"] = o4570.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4570.Value == L0) then
    o4570["Value"] = L0
    CallFunction(o4569, "ProcesseStateChange")
  end
end }
o4572 = { [nil] = {}, GetCalculated = function()
  if not (o2124.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4572.SetStateValue(o4572.GetCalculated())
end, StartCalculate = function()
  o4572["Value"] = o4572.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4572.Value == L0) then
    DelayedFunction(2, o4572, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4572.Value == L0) then
    o4572["Value"] = L0
    CallFunction(o4569, "ProcesseStateChange")
  end
end }
o4573 = { [nil] = {}, GetCalculated = function()
  if not (o2116.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4573.SetStateValue(o4573.GetCalculated())
end, StartCalculate = function()
  o4573["Value"] = o4573.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4573.Value == L0) then
    DelayedFunction(15, o4573, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4573.Value == L0) then
    o4573["Value"] = L0
    CallFunction(o4569, "ProcesseStateChange")
  end
end }
o4577 = { [nil] = {}, Start = function()
  o4577["Value"] = False
  o4362.StartCalculate()
  o4410.StartCalculate()
  o4458.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4577.Value == L0) then
    o4577["Value"] = L0
    o4362.ReCalculate()
    o4410.ReCalculate()
    o4458.ReCalculate()
  end
end }
S_o4578 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4578, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.25, "Code2")
  else
    CallFunction(o4578, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o2104.Node, o1477.Node, 1084)
  SendRadioMessageTake(o4309.Node, o1477.Node, 1085)
  SendRadioMessageTake(o2104.Node, o1477.Node, 1117)
  CallFunction(o4578, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4578, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  SendRadioMessageTake(o4309.Node, o1477.Node, 1185)
  SendRadioMessageTake(o2053.Node, o1477.Node, 1086)
  CallFunction(o4578, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4578, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  SendRadioMessageTake(o1477.Node, o1477.Node, 1245)
  CallFunction(o4578, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o4579.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o4581.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o4582.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4579 = { [nil] = {}, GetCalculated = function()
  if not (o4179.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4579.SetStateValue(o4579.GetCalculated())
end, StartCalculate = function()
  o4579["Value"] = o4579.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4579.Value == L0) then
    o4579["Value"] = L0
    CallFunction(o4578, "ProcesseStateChange")
  end
end }
o4581 = { [nil] = {}, GetCalculated = function()
  if not (o2116.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4581.SetStateValue(o4581.GetCalculated())
end, StartCalculate = function()
  o4581["Value"] = o4581.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4581.Value == L0) then
    DelayedFunction(2, o4581, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4581.Value == L0) then
    o4581["Value"] = L0
    CallFunction(o4578, "ProcesseStateChange")
  end
end }
o4582 = { [nil] = {}, GetCalculated = function()
  if not (o4584.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4582.SetStateValue(o4582.GetCalculated())
end, StartCalculate = function()
  o4582["Value"] = o4582.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4582.Value == L0) then
    DelayedFunction(2, o4582, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4582.Value == L0) then
    o4582["Value"] = L0
    CallFunction(o4578, "ProcesseStateChange")
  end
end }
o4584 = { [nil] = {}, Start = function()
  o4584["Value"] = False
  o4582.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4584.Value == L0) then
    o4584["Value"] = L0
    o4582.ReCalculate()
  end
end }
S_o4585 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4585, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_13", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  FormationLib.PlaceFormationPath(o4517, o4518, "/IngameSequences/Navigation/PlayerPath_6")
  CallFunction(o4585, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code9")
  else
    CallFunction(o4585, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o4517, o4518, "/IngameSequences/Navigation/PlayerPath_6", "pos_1", "pos_3", 1, 1, "Code10")
  else
    CallFunction(o4585, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_14", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_1", 0, "MMMN", 0)
  CallFunction(o4585, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4585, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_15", 5, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Object/cra_bomb_1", 3, "MMMN", 0)
  CallFunction(o4585, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4.9, "Code17")
  else
    CallFunction(o4585, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_16", 4, "MMMN", 0)
  CallFunction(o4585, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 9, "Code19")
  else
    CallFunction(o4585, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  FormationLib.PlaceFormationPath(o4517, o4518, "/IngameSequences/Navigation/PlayerPath_7")
  o4596.SetStateValue(True)
  CallFunction(o4585, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.25, "Code22")
  else
    CallFunction(o4585, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  FormationLib.PlaceFormationPath(o4539, o4516, "/IngameSequences/Navigation/TechBomberPath")
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_2", 1.5, "MMMN", 0)
  CallFunction(o4585, "Code24")
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o4517, o4518, "/IngameSequences/Navigation/PlayerPath_7", "pos_1", "pos_3", 1, 1, "Code25")
  else
    CallFunction(o4585, "Code25")
  end
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  Camera_LookAt(L0.Node, "/IngameSequences/Object/atl_techbomber_1", 6, "MMMN", 0)
  CallFunction(o4585, "Code26")
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o4539, o4516, "/IngameSequences/Navigation/TechBomberPath", "pos_1", "pos_2", 1, 1, "Code27")
  else
    CallFunction(o4585, "Code27")
  end
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_17", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_3", 0, "MMMN", 0)
  FormationLib.PlaceFormationPath(o4517, o4518, "/IngameSequences/Navigation/PlayerPath_8")
  CallFunction(o4585, "Code31")
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.75, "Code32")
  else
    CallFunction(o4585, "Code32")
  end
end, Code32 = function(L0)
  L0["CodeIndex"] = 32
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o4517, o4518, "/IngameSequences/Navigation/PlayerPath_8", "pos_1", "pos_3", 1, 1, "Code33")
  else
    CallFunction(o4585, "Code33")
  end
end, Code33 = function(L0)
  L0["CodeIndex"] = 33
  Director_EndCutscene(L0.Node)
  o4597.SetStateValue(True)
  CallFunction(o4585, "Code35")
end, Code35 = function(L0)
  L0["CodeIndex"] = 35
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o4586.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 13) then
    if not (L0.CodeIndex >= 14) then
      if not (o4588.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4586 = { [nil] = {}, GetCalculated = function()
  if not (o4595.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4586.SetStateValue(o4586.GetCalculated())
end, StartCalculate = function()
  o4586["Value"] = o4586.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4586.Value == L0) then
    DelayedFunction(12, o4586, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4586.Value == L0) then
    o4586["Value"] = L0
    CallFunction(o4585, "ProcesseStateChange")
  end
end }
o4588 = { [nil] = {}, GetCalculated = function()
  if not (o4780.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4588.SetStateValue(o4588.GetCalculated())
end, StartCalculate = function()
  o4588["Value"] = o4588.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4588.Value == L0) then
    DelayedFunction(3, o4588, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4588.Value == L0) then
    o4588["Value"] = L0
    CallFunction(o4585, "ProcesseStateChange")
  end
end }
o4594 = { [nil] = {}, GetCalculated = function()
  if not (o1492.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4594.SetStateValue(o4594.GetCalculated())
end, StartCalculate = function()
  o4594["Value"] = o4594.GetCalculated()
  o4595.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4594.Value == L0) then
    DelayedFunction(25, o4594, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4594.Value == L0) then
    o4594["Value"] = L0
    o4595.ReCalculate()
  end
end }
o4595 = { [nil] = {}, GetCalculated = function()
  if not (o4594.Value ~= True) then
    if not (o4176.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o4595.SetStateValue(o4595.GetCalculated())
end, StartCalculate = function()
  o4595["Value"] = o4595.GetCalculated()
  o4586.StartCalculate()
  o4632.StartCalculate()
  o4680.StartCalculate()
  o4728.StartCalculate()
  o4776.StartCalculate()
  o4823.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4595.Value == L0) then
    o4595["Value"] = L0
    o4586.ReCalculate()
    o4632.ReCalculate()
    o4680.ReCalculate()
    o4728.ReCalculate()
    o4776.ReCalculate()
    o4823.ReCalculate()
  end
end }
o4596 = { [nil] = {}, Start = function()
  o4596["Value"] = False
  o4859.StartCalculate()
  o4906.StartCalculate()
  o4953.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4596.Value == L0) then
    o4596["Value"] = L0
    o4859.ReCalculate()
    o4906.ReCalculate()
    o4953.ReCalculate()
  end
end }
o4597 = { [nil] = {}, Start = function()
  o4597["Value"] = False
  o1496.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4597.Value == L0) then
    o4597["Value"] = L0
    o1496.ReCalculate()
  end
end }
S_o4598 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4598, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.5, "Code2")
  else
    CallFunction(o4598, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o1477.Node, o1477.Node, 1089)
  CallFunction(o4598, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 50, "Code4")
  else
    CallFunction(o4598, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  SendRadioMessageTake(o1477.Node, o1477.Node, 1090)
  CallFunction(o4598, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o4599.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4599 = { [nil] = {}, GetCalculated = function()
  if not (o4604.Value ~= True) then
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
    DelayedFunction(12, o4599, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4599.Value == L0) then
    o4599["Value"] = L0
    CallFunction(o4598, "ProcesseStateChange")
  end
end }
o4603 = { [nil] = {}, GetCalculated = function()
  if not (o1492.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4603.SetStateValue(o4603.GetCalculated())
end, StartCalculate = function()
  o4603["Value"] = o4603.GetCalculated()
  o4604.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4603.Value == L0) then
    DelayedFunction(25, o4603, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4603.Value == L0) then
    o4603["Value"] = L0
    o4604.ReCalculate()
  end
end }
o4604 = { [nil] = {}, GetCalculated = function()
  if not (o4603.Value ~= True) then
    if not (o4176.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o4604.SetStateValue(o4604.GetCalculated())
end, StartCalculate = function()
  o4604["Value"] = o4604.GetCalculated()
  o4599.StartCalculate()
  o4607.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4604.Value == L0) then
    o4604["Value"] = L0
    o4599.ReCalculate()
    o4607.ReCalculate()
  end
end }
S_o4606 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4606, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code2")
  else
    CallFunction(o4606, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  Camera_ShakeHit(L0.Node, 3, 3, 3, 3)
  CallFunction(o4606, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 53, "Code4")
  else
    CallFunction(o4606, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_ShakeHit(L0.Node, 3, 3, 3, 3)
  CallFunction(o4606, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o4607.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4607 = { [nil] = {}, GetCalculated = function()
  if not (o4604.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4607.SetStateValue(o4607.GetCalculated())
end, StartCalculate = function()
  o4607["Value"] = o4607.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4607.Value == L0) then
    DelayedFunction(12, o4607, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4607.Value == L0) then
    o4607["Value"] = L0
    CallFunction(o4606, "ProcesseStateChange")
  end
end }
S_o4611 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "atmo")
  CallFunction(o4611, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4611, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  Game_PlayMusic(GetGameNode(), "agressive")
  CallFunction(o4611, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4611, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Game_PlayMusic(GetGameNode(), "track3")
  CallFunction(o4611, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 36, "Code6")
  else
    CallFunction(o4611, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Game_PlayMusic(GetGameNode(), "track4")
  CallFunction(o4611, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4611, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  Game_PlayMusic(GetGameNode(), "track5")
  CallFunction(o4611, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 19, "Code10")
  else
    CallFunction(o4611, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Game_PlayMusic(GetGameNode(), "track4")
  CallFunction(o4611, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4612.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4613.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o4615.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4612 = { [nil] = {}, GetCalculated = function()
  if not (o1484.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4612.SetStateValue(o4612.GetCalculated())
end, StartCalculate = function()
  o4612["Value"] = o4612.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4612.Value == L0) then
    o4612["Value"] = L0
    CallFunction(o4611, "ProcesseStateChange")
  end
end }
o4613 = { [nil] = {}, GetCalculated = function()
  if not (o2124.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4613.SetStateValue(o4613.GetCalculated())
end, StartCalculate = function()
  o4613["Value"] = o4613.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4613.Value == L0) then
    DelayedFunction(2, o4613, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4613.Value == L0) then
    o4613["Value"] = L0
    CallFunction(o4611, "ProcesseStateChange")
  end
end }
o4615 = { [nil] = {}, GetCalculated = function()
  if not (o1492.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4615.SetStateValue(o4615.GetCalculated())
end, StartCalculate = function()
  o4615["Value"] = o4615.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4615.Value == L0) then
    o4615["Value"] = L0
    CallFunction(o4611, "ProcesseStateChange")
  end
end }
S_o4618 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4618, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4618, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4618, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o4618, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4618, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4618, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4623.SetStateValue(L1)
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
o4623 = { [nil] = {}, Start = function()
  o4623["Value"] = False
  o4550.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4623.Value == L0) then
    o4623["Value"] = L0
    o4550.ReCalculate()
  end
end }
S_o4624 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4624, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4624, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4624, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "wng_bonham_6h3_1", "", "", "", False, False, True)
  CallFunction(o4624, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4624, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4624, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4629.SetStateValue(L1)
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
o4629 = { [nil] = {}, Start = function()
  o4629["Value"] = False
  o4560.StartCalculate()
  o4567.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4629.Value == L0) then
    o4629["Value"] = L0
    o4560.ReCalculate()
    o4567.ReCalculate()
  end
end }
S_o4630 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4630, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4630, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4630, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o4630, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/cra_bomber_1_Path", 1, 1 } }("Code5")
  else
    CallFunction(o4630, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o4630, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4632.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4632 = { [nil] = {}, GetCalculated = function()
  if not (o4595.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4632.SetStateValue(o4632.GetCalculated())
end, StartCalculate = function()
  o4632["Value"] = o4632.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4632.Value == L0) then
    DelayedFunction(20, o4632, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4632.Value == L0) then
    o4632["Value"] = L0
    CallFunction(o4630, "ProcesseStateChange")
  end
end }
S_o4678 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4678, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4678, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4678, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o4678, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/cra_scout2v2_1_Path", 1, 1 } }("Code5")
  else
    CallFunction(o4678, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o4678, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4680.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4680 = { [nil] = {}, GetCalculated = function()
  if not (o4595.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4680.SetStateValue(o4680.GetCalculated())
end, StartCalculate = function()
  o4680["Value"] = o4680.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4680.Value == L0) then
    DelayedFunction(20, o4680, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4680.Value == L0) then
    o4680["Value"] = L0
    CallFunction(o4678, "ProcesseStateChange")
  end
end }
S_o4726 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4726, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4726, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4726, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o4726, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/cra_scout2v2_2_Path", 1, 1 } }("Code5")
  else
    CallFunction(o4726, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o4726, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4728.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4728 = { [nil] = {}, GetCalculated = function()
  if not (o4595.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4728.SetStateValue(o4728.GetCalculated())
end, StartCalculate = function()
  o4728["Value"] = o4728.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4728.Value == L0) then
    DelayedFunction(20, o4728, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4728.Value == L0) then
    o4728["Value"] = L0
    CallFunction(o4726, "ProcesseStateChange")
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
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4774, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o4774, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/cra_tursas_1_Path", 1, 1 } }("Code5")
  else
    CallFunction(o4774, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o4774, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DipoledOut = function(L0, L1)
  o4780.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4776.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4776 = { [nil] = {}, GetCalculated = function()
  if not (o4595.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4776.SetStateValue(o4776.GetCalculated())
end, StartCalculate = function()
  o4776["Value"] = o4776.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4776.Value == L0) then
    DelayedFunction(20, o4776, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4776.Value == L0) then
    o4776["Value"] = L0
    CallFunction(o4774, "ProcesseStateChange")
  end
end }
o4780 = { [nil] = {}, Start = function()
  o4780["Value"] = False
  o4588.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4780.Value == L0) then
    o4780["Value"] = L0
    o4588.ReCalculate()
  end
end }
S_o4822 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4822, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4822, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4822, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4823.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4823 = { [nil] = {}, GetCalculated = function()
  if not (o4595.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4823.SetStateValue(o4823.GetCalculated())
end, StartCalculate = function()
  o4823["Value"] = o4823.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4823.Value == L0) then
    DelayedFunction(15, o4823, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4823.Value == L0) then
    o4823["Value"] = L0
    CallFunction(o4822, "ProcesseStateChange")
  end
end }
S_o4858 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4858, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4858, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4858, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4859.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4859 = { [nil] = {}, GetCalculated = function()
  if not (o4596.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4859.SetStateValue(o4859.GetCalculated())
end, StartCalculate = function()
  o4859["Value"] = o4859.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4859.Value == L0) then
    o4859["Value"] = L0
    CallFunction(o4858, "ProcesseStateChange")
  end
end }
S_o4905 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4905, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4905, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4905, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4906.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4906 = { [nil] = {}, GetCalculated = function()
  if not (o4596.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4906.SetStateValue(o4906.GetCalculated())
end, StartCalculate = function()
  o4906["Value"] = o4906.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4906.Value == L0) then
    DelayedFunction(12, o4906, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4906.Value == L0) then
    o4906["Value"] = L0
    CallFunction(o4905, "ProcesseStateChange")
  end
end }
S_o4952 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4952, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4952, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4952, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4953.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4953 = { [nil] = {}, GetCalculated = function()
  if not (o4596.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4953.SetStateValue(o4953.GetCalculated())
end, StartCalculate = function()
  o4953["Value"] = o4953.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4953.Value == L0) then
    DelayedFunction(12, o4953, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4953.Value == L0) then
    o4953["Value"] = L0
    CallFunction(o4952, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 304)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Navigation"), "512'er", S_o30)
  o31 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_fpowerstation_1", S_o31)
  o67 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_industry3_1", S_o67)
  o101 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_industry1_1", S_o101)
  o135 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_1", S_o135)
  o169 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_2", S_o169)
  o203 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_3", S_o203)
  o237 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_4", S_o237)
  o271 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_1", S_o271)
  o305 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3a_02_1", S_o305)
  o339 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3a_04_1", S_o339)
  o373 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_fpowerstation_d_1", S_o373)
  o408 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_med_1/Turm1", S_o408)
  o447 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_med_2/Turm1", S_o447)
  o486 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_med_3/Turm1", S_o486)
  o525 = BindEasy(Node_Find("/Scenario_Static/Object"), "Grav_ctrl_1", S_o525)
  o559 = BindEasy(Node_Find("/Scenario_Static/Object"), "Grav_ctrl_2", S_o559)
  o593 = BindEasy(Node_Find("/Scenario_Static/Object"), "Grav_ctrl_3", S_o593)
  o627 = BindEasy(Node_Find("/Scenario_Static/Object"), "Grav_ctrl_4", S_o627)
  o661 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock3_1", S_o661)
  o695 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3b_03_1", S_o695)
  o729 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_industry2_1", S_o729)
  o763 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3a_04_2", S_o763)
  o797 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big01_1", S_o797)
  o831 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_1", S_o831)
  o865 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_1", S_o865)
  o899 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_2", S_o899)
  o933 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_3", S_o933)
  o967 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_4", S_o967)
  o1001 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tower_1", S_o1001)
  o1035 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml_1", S_o1035)
  o1069 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock3_1", S_o1069)
  o1103 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big03_1", S_o1103)
  o1137 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_chimney1_1", S_o1137)
  o1171 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_chimney1_2", S_o1171)
  o1205 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabolic_1", S_o1205)
  o1239 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_1", S_o1239)
  o1273 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dolphinhab_big_1", S_o1273)
  o1307 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_1", S_o1307)
  o1341 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_2", S_o1341)
  o1375 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_3", S_o1375)
  o1409 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_4", S_o1409)
  o1443 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_big_1", S_o1443)
  o1477 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o1477)
  o1482.Start()
  o1485.Start()
  o1489.Start()
  o1524 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2v2_1", S_o1524)
  o1529.Start()
  o1572 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2v2_2", S_o1572)
  o1577.Start()
  o1620 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2v2_3", S_o1620)
  o1625.Start()
  o1668 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2v1_1", S_o1668)
  o1673.Start()
  o1716 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2v1_2", S_o1716)
  o1721.Start()
  o1764 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2v1_3", S_o1764)
  o1769.Start()
  o1812 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2v1_4", S_o1812)
  o1817.Start()
  o1860 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_bomber_1", S_o1860)
  o1865.Start()
  o1908 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_bomber_2", S_o1908)
  o1913.Start()
  o1956 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_fregatte_1", S_o1956)
  o1961.Start()
  o2004 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tursas_1", S_o2004)
  o2011.Start()
  o2053 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_harper_c6_1", S_o2053)
  o2104 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_bonham_6h3_1", S_o2104)
  o2116.Start()
  o2124.Start()
  o2159 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_chaka_c6_1", S_o2159)
  o2211 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "SG1_schax_head", S_o2211)
  o2217.Start()
  o2260 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_1"), "SG1_schax_booster_1", S_o2260)
  o2309 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_1"), "SG1_schax_seed_1", S_o2309)
  o2358 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_1"), "SG1_schax_seed_2", S_o2358)
  o2407 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_1"), "SG1_schax_seed_3", S_o2407)
  o2456 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_1"), "SG1_schax_lighteater_1", S_o2456)
  o2505 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_1"), "SG1_schax_raider_1", S_o2505)
  o2554 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "SG2_schax_head", S_o2554)
  o2603 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_2"), "SG2_schax_bang_1", S_o2603)
  o2652 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_2"), "SG2_schax_bang_2", S_o2652)
  o2701 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_2"), "SG2_schax_bang_3", S_o2701)
  o2750 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_2"), "SG2_schax_raider_1", S_o2750)
  o2799 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_2"), "SG2_schax_raider_2", S_o2799)
  o2848 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_2"), "SG2_schax_raider_3", S_o2848)
  o2897 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_2"), "SG2_schax_seed_2", S_o2897)
  o2946 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "SG3_schax_head", S_o2946)
  o2995 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_3"), "SG3_schax_bang_1", S_o2995)
  o3044 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_3"), "SG3_schax_bang_2", S_o3044)
  o3093 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_3"), "SG3_schax_booster_1", S_o3093)
  o3142 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_3"), "SG3_schax_booster_2", S_o3142)
  o3191 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_3"), "SG3_schax_raider_1", S_o3191)
  o3240 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_3"), "SG3_schax_raider_2", S_o3240)
  o3289 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_3"), "SG3_schax_seed_1", S_o3289)
  o3338 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_3"), "SG3_schax_seed_2", S_o3338)
  o3387 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_3"), "SG3_schax_seed_3", S_o3387)
  o3436 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "SG4_schax_head", S_o3436)
  o3441.Start()
  o3485 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_4"), "SG4_schax_bang_1", S_o3485)
  o3534 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_4"), "SG4_schax_booster_1", S_o3534)
  o3583 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_4"), "SG4_schax_booster_2", S_o3583)
  o3632 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_4"), "SG4_schax_raider_1", S_o3632)
  o3681 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_4"), "SG4_schax_seed_1", S_o3681)
  o3730 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_4"), "SG4_schax_seed_2", S_o3730)
  o3779 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_4"), "SG4_schax_lighteater_1", S_o3779)
  o3828 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_4"), "SG4_schax_lighteater_2", S_o3828)
  o3877 = BindEasy(Node_Find("/Scenario_Dynamic/Object/SchaxGroup_4"), "SG4_schax_lighteater_3", S_o3877)
  o3926 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_1", S_o3926)
  o3974 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_2", S_o3974)
  o4022 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_1", S_o4022)
  o4070 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_2", S_o4070)
  o4118 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_3", S_o4118)
  o4166 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "old_crocell_1", S_o4166)
  o4175.Start()
  o4176.Start()
  o4178.Start()
  o4179.Start()
  o4180.Start()
  o4211 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "old_marax_1", S_o4211)
  o4219.Start()
  o4250 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_1", S_o4250)
  o4255 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_2", S_o4255)
  o4260 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tursas_6h3_1", S_o4260)
  o4309 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_ghost_1", S_o4309)
  o4317.Start()
  o4360 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "sool_scout2_1", S_o4360)
  o4408 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "sool_scout2_2", S_o4408)
  o4456 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "sool_scout2_3", S_o4456)
  o4504 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_follow_1", S_o4504)
  o4509 = BindEasy(Node_Find("/"), "Camera", S_o4509)
  o4510 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_1", S_o4510)
  o4511 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_2", S_o4511)
  o4512 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_3", S_o4512)
  o4513 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_4", S_o4513)
  o4514 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_5", S_o4514)
  o4525 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_6", S_o4525)
  o4526 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_7", S_o4526)
  o4527 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_8", S_o4527)
  o4528 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_9", S_o4528)
  o4529 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_10", S_o4529)
  o4530 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_11", S_o4530)
  o4531 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_12", S_o4531)
  o4533 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_13", S_o4533)
  o4534 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_14", S_o4534)
  o4535 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_1", S_o4535)
  o4536 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_15", S_o4536)
  o4537 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_16", S_o4537)
  o4538 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_2", S_o4538)
  o4540 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_17", S_o4540)
  o4541 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_3", S_o4541)
  o4577.Start()
  o4584.Start()
  o4596.Start()
  o4597.Start()
  o4618 = BindEasy(Node_Find("/IngameSequences/Trigger"), "TriggerPresenceBox_1", S_o4618)
  o4623.Start()
  o4624 = BindEasy(Node_Find("/IngameSequences/Trigger"), "TriggerPresenceBox_2", S_o4624)
  o4629.Start()
  o4630 = BindEasy(Node_Find("/IngameSequences/Object"), "cra_bomber_1", S_o4630)
  o4678 = BindEasy(Node_Find("/IngameSequences/Object"), "cra_scout2v2_1", S_o4678)
  o4726 = BindEasy(Node_Find("/IngameSequences/Object"), "cra_scout2v2_2", S_o4726)
  o4774 = BindEasy(Node_Find("/IngameSequences/Object"), "cra_tursas_1", S_o4774)
  o4780.Start()
  o4822 = BindEasy(Node_Find("/IngameSequences/Object"), "cra_bomb_1", S_o4822)
  o4858 = BindEasy(Node_Find("/IngameSequences/Object"), "atl_techbomber_1", S_o4858)
  o4905 = BindEasy(Node_Find("/IngameSequences/Object"), "atl_fregatte_1", S_o4905)
  o4952 = BindEasy(Node_Find("/IngameSequences/Object"), "atl_fregatte_2", S_o4952)
  o4542 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_V", S_o4542)
  o4549 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_AddOn_V", S_o4549)
  o4552 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_A", S_o4552)
  o4555 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_Intro_V", S_o4555)
  o4559 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_AddOn_V", S_o4559)
  o4564 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_Intro_A", S_o4564)
  o4569 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter3_Intro_V", S_o4569)
  o4578 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter3_Intro_A", S_o4578)
  o4585 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter3_Extro_V", S_o4585)
  o4598 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter3_Extro_A", S_o4598)
  o4606 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter3_ExtroAddOn_V", S_o4606)
  o4611 = BindEasy(Node_Find("/IngameSequences/Director"), "Music", S_o4611)
  o4515 = { {}, o1477, o2053, o2104, o2159 }()
  o4517 = { {}, o1477, o2159, o2053 }()
  o4519 = { {}, o2104 }()
  o4521 = { {}, o1477 }()
  o4523 = { {}, o4166 }()
  o4532 = { {}, o4309 }()
  o4539 = { {}, o4858 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end